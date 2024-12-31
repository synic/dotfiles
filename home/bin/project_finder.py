#!/usr/bin/env python3
import os
import subprocess
import sys
from pathlib import Path

projects_dir = Path.home() / "Projects"
bookmarks = {
    "jump": projects_dir / "jump/api",
}


def find_projects(search_term):

    try:
        directories = [d for d in projects_dir.iterdir() if d.is_dir()]
    except FileNotFoundError:
        print(f"Error: {projects_dir} does not exist", file=sys.stderr)
        sys.exit(1)

    if not directories:
        print("No project directories found", file=sys.stderr)
        sys.exit(1)

    if not search_term:
        return directories

    search_term = search_term.lower()

    if search_term in bookmarks:
        return bookmarks[search_term]

    exact_match = [d for d in directories if d.name.lower() == search_term]
    if exact_match:
        return exact_match[0]

    matches = [d for d in directories if search_term in d.name.lower()]

    if not matches:
        print(f"No matches found for '{search_term}'", file=sys.stderr)
        sys.exit(1)

    if len(matches) == 1:
        return matches[0]

    # Sort matches: starts-with matches first, then the rest
    starts_with = [d for d in matches if d.name.lower().startswith(search_term)]
    contains = [d for d in matches if not d.name.lower().startswith(search_term)]
    sorted_matches = starts_with + contains

    try:
        dirs_str = "\n".join(str(d) for d in sorted_matches)
        result = subprocess.run(
            ["fzf", "--height", "40%", "--reverse"],
            input=dirs_str,
            capture_output=True,
            text=True,
        )

        if result.returncode != 0:
            sys.exit(1)

        return Path(result.stdout.strip())

    except FileNotFoundError:
        print("Error: fzf is not installed", file=sys.stderr)
        sys.exit(1)


if __name__ == "__main__":
    search_term = sys.argv[1] if len(sys.argv) > 1 else ""
    result = find_projects(search_term)
    print(result)
