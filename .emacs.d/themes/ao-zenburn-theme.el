;;; ao-zenburn-theme.el --- An higher contrast version of the Zenburn theme.

;; Copyright (C)2014 Nantas Nardelli

;; Author: Nantas Nardelli <nantas.nardelli@gmail.com>
;; URL: https:github.com/edran/ao-zenburn-emacs
;; Version 2.1

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; An higher contrast version of the Zenburn theme

;;; Credits:

;; Bozhidar Batsov <bozhidar@batsov.com> created the Zenburn theme
;; for emacs, which was a port of the vim theme made by Jani Nurminen.
;; His repository can be found at: https://github.com/bbatsov/zenburn-emacs


;;; Code:

(deftheme ao-zenburn "An higher constrast Zenburn color theme")

;;; Color Palette

(defvar ao-zenburn-colors-alist
  '(("ao-zenburn-fg+1"     . "#FFFFEF")
    ("ao-zenburn-fg"       . "#DCDCCC")
    ("ao-zenburn-fg-1"     . "#70705E")
    ("ao-zenburn-bg-2"     . "#000000")
    ("ao-zenburn-bg-1"     . "#202020")
    ("ao-zenburn-bg-05"    . "#2D2D2D")
    ("ao-zenburn-bg"       . "#313131")
    ("ao-zenburn-bg+05"    . "#383838")
    ("ao-zenburn-bg+1"     . "#3E3E3E")
    ("ao-zenburn-bg+2"     . "#4E4E4E")
    ("ao-zenburn-bg+3"     . "#5E5E5E")
    ("ao-zenburn-red+1"    . "#E9B0B0")
    ("ao-zenburn-red"      . "#D9A0A0")
    ("ao-zenburn-red-1"    . "#C99090")
    ("ao-zenburn-red-2"    . "#B98080")
    ("ao-zenburn-red-3"    . "#A97070")
    ("ao-zenburn-red-4"    . "#996060")
    ("ao-zenburn-orange"   . "#ECBC9C")
    ("ao-zenburn-yellow"   . "#FDECBC")
    ("ao-zenburn-yellow-1" . "#EDDCAC")
    ("ao-zenburn-yellow-2" . "#DDCC9C")
    ("ao-zenburn-green-1"  . "#6C8C6C")
    ("ao-zenburn-green"    . "#8CAC8C")
    ("ao-zenburn-green+1"  . "#9CBF9C")
    ("ao-zenburn-green+2"  . "#ACD2AC")
    ("ao-zenburn-green+3"  . "#BCE5BC")
    ("ao-zenburn-green+4"  . "#CCF8CC")
    ("ao-zenburn-cyan"     . "#A0EDF0")
    ("ao-zenburn-blue+1"   . "#9CC7FB")
    ("ao-zenburn-blue"     . "#99DDE0")
    ("ao-zenburn-blue-1"   . "#89C5C8")
    ("ao-zenburn-blue-2"   . "#79ADB0")
    ("ao-zenburn-blue-3"   . "#699598")
    ("ao-zenburn-blue-4"   . "#597D80")
    ("ao-zenburn-blue-5"   . "#436D6D")
    ("ao-zenburn-magenta"  . "#E090C7"))
  "List of Hc-Zenburn colors.
Each element has the form (NAME . HEX).

`+N' suffixes indicate a color is lighter.
`-N' suffixes indicate a color is darker.")

(defmacro ao-zenburn-with-color-variables (&rest body)
  "`let' bind all colors defined in `ao-zenburn-colors-alist' around BODY.
Also bind `class' to ((class color) (min-colors 89))."
  (declare (indent 0))
  `(let ((class '((class color) (min-colors 89)))
         ,@(mapcar (lambda (cons)
                     (list (intern (car cons)) (cdr cons)))
                   ao-zenburn-colors-alist))
     ,@body))

;;; Theme Faces
(ao-zenburn-with-color-variables
  (custom-theme-set-faces
   'ao-zenburn
;;;; Built-in
;;;;; basic coloring
   '(button ((t (:underline t))))
   `(link ((t (:foreground ,ao-zenburn-yellow :underline t :weight bold))))
   `(link-visited ((t (:foreground ,ao-zenburn-yellow-2 :underline t :weight normal))))
   `(default ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-bg))))
   `(cursor ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-fg+1))))
   `(escape-glyph ((t (:foreground ,ao-zenburn-yellow :bold t))))
   `(fringe ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-bg+1))))
   `(header-line ((t (:foreground ,ao-zenburn-yellow
                                  :background ,ao-zenburn-bg-1
                                  :box (:line-width -1 :style released-button)))))
   `(highlight ((t (:background ,ao-zenburn-bg-05))))
   `(success ((t (:foreground ,ao-zenburn-green :weight bold))))
   `(warning ((t (:foreground ,ao-zenburn-orange :weight bold))))
;;;;; compilation
   `(compilation-column-face ((t (:foreground ,ao-zenburn-yellow))))
   `(compilation-enter-directory-face ((t (:foreground ,ao-zenburn-green))))
   `(compilation-error-face ((t (:foreground ,ao-zenburn-red-1 :weight bold :underline t))))
   `(compilation-face ((t (:foreground ,ao-zenburn-fg))))
   `(compilation-info-face ((t (:foreground ,ao-zenburn-blue))))
   `(compilation-info ((t (:foreground ,ao-zenburn-green+4 :underline t))))
   `(compilation-leave-directory-face ((t (:foreground ,ao-zenburn-green))))
   `(compilation-line-face ((t (:foreground ,ao-zenburn-yellow))))
   `(compilation-line-number ((t (:foreground ,ao-zenburn-yellow))))
   `(compilation-message-face ((t (:foreground ,ao-zenburn-blue))))
   `(compilation-warning-face ((t (:foreground ,ao-zenburn-orange :weight bold :underline t))))
   `(compilation-mode-line-exit ((t (:foreground ,ao-zenburn-green+2 :weight bold))))
   `(compilation-mode-line-fail ((t (:foreground ,ao-zenburn-red :weight bold))))
   `(compilation-mode-line-run ((t (:foreground ,ao-zenburn-yellow :weight bold))))
;;;;; grep
   `(grep-context-face ((t (:foreground ,ao-zenburn-fg))))
   `(grep-error-face ((t (:foreground ,ao-zenburn-red-1 :weight bold :underline t))))
   `(grep-hit-face ((t (:foreground ,ao-zenburn-blue))))
   `(grep-match-face ((t (:foreground ,ao-zenburn-orange :weight bold))))
   `(match ((t (:background ,ao-zenburn-bg-1 :foreground ,ao-zenburn-orange :weight bold))))
;;;;; isearch
   `(isearch ((t (:foreground ,ao-zenburn-yellow-2 :weight bold :background ,ao-zenburn-bg+2))))
   `(isearch-fail ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-red-4))))
   `(lazy-highlight ((t (:foreground ,ao-zenburn-yellow-2 :weight bold :background ,ao-zenburn-bg-05))))

   `(menu ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-bg))))
   `(minibuffer-prompt ((t (:foreground ,ao-zenburn-yellow))))
   `(mode-line
     ((,class (:foreground ,ao-zenburn-green+1
                           :background ,ao-zenburn-bg-1
                           :box (:line-width -1 :style released-button)))
      (t :inverse-video t)))
   `(mode-line-buffer-id ((t (:foreground ,ao-zenburn-yellow :weight bold))))
   `(mode-line-inactive
     ((t (:foreground ,ao-zenburn-green-1
                      :background ,ao-zenburn-bg-05
                      :box (:line-width -1 :style released-button)))))
   `(region ((,class (:background ,ao-zenburn-bg-1))
             (t :inverse-video t)))
   `(secondary-selection ((t (:background ,ao-zenburn-bg+2))))
   `(trailing-whitespace ((t (:background ,ao-zenburn-red))))
   `(vertical-border ((t (:foreground ,ao-zenburn-fg))))
;;;;; font lock
   `(font-lock-builtin-face ((t (:foreground ,ao-zenburn-fg :weight bold))))
   `(font-lock-comment-face ((t (:foreground ,ao-zenburn-green))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,ao-zenburn-green-1))))
   `(font-lock-constant-face ((t (:foreground ,ao-zenburn-green+4))))
   `(font-lock-doc-face ((t (:foreground ,ao-zenburn-green+2))))
   `(font-lock-function-name-face ((t (:foreground ,ao-zenburn-cyan))))
   `(font-lock-keyword-face ((t (:foreground ,ao-zenburn-yellow :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,ao-zenburn-yellow :weight bold))))
   `(font-lock-preprocessor-face ((t (:foreground ,ao-zenburn-blue+1))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,ao-zenburn-yellow :weight bold))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,ao-zenburn-green :weight bold))))
   `(font-lock-string-face ((t (:foreground ,ao-zenburn-red))))
   `(font-lock-type-face ((t (:foreground ,ao-zenburn-blue-1))))
   `(font-lock-variable-name-face ((t (:foreground ,ao-zenburn-orange))))
   `(font-lock-warning-face ((t (:foreground ,ao-zenburn-yellow-2 :weight bold))))

   `(c-annotation-face ((t (:inherit font-lock-constant-face))))
;;;;; newsticker
   `(newsticker-date-face ((t (:foreground ,ao-zenburn-fg))))
   `(newsticker-default-face ((t (:foreground ,ao-zenburn-fg))))
   `(newsticker-enclosure-face ((t (:foreground ,ao-zenburn-green+3))))
   `(newsticker-extra-face ((t (:foreground ,ao-zenburn-bg+2 :height 0.8))))
   `(newsticker-feed-face ((t (:foreground ,ao-zenburn-fg))))
   `(newsticker-immortal-item-face ((t (:foreground ,ao-zenburn-green))))
   `(newsticker-new-item-face ((t (:foreground ,ao-zenburn-blue))))
   `(newsticker-obsolete-item-face ((t (:foreground ,ao-zenburn-red))))
   `(newsticker-old-item-face ((t (:foreground ,ao-zenburn-bg+3))))
   `(newsticker-statistics-face ((t (:foreground ,ao-zenburn-fg))))
   `(newsticker-treeview-face ((t (:foreground ,ao-zenburn-fg))))
   `(newsticker-treeview-immortal-face ((t (:foreground ,ao-zenburn-green))))
   `(newsticker-treeview-listwindow-face ((t (:foreground ,ao-zenburn-fg))))
   `(newsticker-treeview-new-face ((t (:foreground ,ao-zenburn-blue :weight bold))))
   `(newsticker-treeview-obsolete-face ((t (:foreground ,ao-zenburn-red))))
   `(newsticker-treeview-old-face ((t (:foreground ,ao-zenburn-bg+3))))
   `(newsticker-treeview-selection-face ((t (:background ,ao-zenburn-bg-1 :foreground ,ao-zenburn-yellow))))
;;;; Third-party
;;;;; ace-jump
   `(ace-jump-face-background
     ((t (:foreground ,ao-zenburn-fg-1 :background ,ao-zenburn-bg :inverse-video nil))))
   `(ace-jump-face-foreground
     ((t (:foreground ,ao-zenburn-green+2 :background ,ao-zenburn-bg :inverse-video nil))))
;;;;; android mode
   `(android-mode-debug-face ((t (:foreground ,ao-zenburn-green+1))))
   `(android-mode-error-face ((t (:foreground ,ao-zenburn-orange :weight bold))))
   `(android-mode-info-face ((t (:foreground ,ao-zenburn-fg))))
   `(android-mode-verbose-face ((t (:foreground ,ao-zenburn-green))))
   `(android-mode-warning-face ((t (:foreground ,ao-zenburn-yellow))))
;;;;; anzu
   `(anzu-mode-line ((t (:foreground ,ao-zenburn-cyan :weight bold))))
;;;;; auctex
   `(font-latex-bold-face ((t (:inherit bold))))
   `(font-latex-warning-face ((t (:foreground nil :inherit font-lock-warning-face))))
   `(font-latex-sectioning-5-face ((t (:foreground ,ao-zenburn-red :weight bold ))))
   `(font-latex-sedate-face ((t (:foreground ,ao-zenburn-yellow))))
   `(font-latex-italic-face ((t (:foreground ,ao-zenburn-cyan :slant italic))))
   `(font-latex-string-face ((t (:inherit ,font-lock-string-face))))
   `(font-latex-math-face ((t (:foreground ,ao-zenburn-orange))))
;;;;; auto-complete
   `(ac-candidate-face ((t (:background ,ao-zenburn-bg+3 :foreground ,ao-zenburn-bg-2))))
   `(ac-selection-face ((t (:background ,ao-zenburn-blue-4 :foreground ,ao-zenburn-fg))))
   `(popup-tip-face ((t (:background ,ao-zenburn-yellow-2 :foreground ,ao-zenburn-bg-2))))
   `(popup-scroll-bar-foreground-face ((t (:background ,ao-zenburn-blue-5))))
   `(popup-scroll-bar-background-face ((t (:background ,ao-zenburn-bg-1))))
   `(popup-isearch-match ((t (:background ,ao-zenburn-bg :foreground ,ao-zenburn-fg))))
;;;;; company-mode
   `(company-tooltip ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-bg+1))))
   `(company-tooltip-annotation ((t (:foreground ,ao-zenburn-orange :background ,ao-zenburn-bg+1))))
   `(company-tooltip-selection ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-bg-1))))
   `(company-tooltip-mouse ((t (:background ,ao-zenburn-bg-1))))
   `(company-tooltip-common ((t (:foreground ,ao-zenburn-green+2))))
   `(company-tooltip-common-selection ((t (:foreground ,ao-zenburn-green+2))))
   `(company-scrollbar-fg ((t (:background ,ao-zenburn-bg-1))))
   `(company-scrollbar-bg ((t (:background ,ao-zenburn-bg+2))))
   `(company-preview ((t (:background ,ao-zenburn-green+2))))
   `(company-preview-common ((t (:foreground ,ao-zenburn-green+2 :background ,ao-zenburn-bg-1))))
;;;;; bm
   `(bm-face ((t (:background ,ao-zenburn-yellow-1 :foreground ,ao-zenburn-bg))))
   `(bm-fringe-face ((t (:background ,ao-zenburn-yellow-1 :foreground ,ao-zenburn-bg))))
   `(bm-fringe-persistent-face ((t (:background ,ao-zenburn-green-1 :foreground ,ao-zenburn-bg))))
   `(bm-persistent-face ((t (:background ,ao-zenburn-green-1 :foreground ,ao-zenburn-bg))))
;;;;; clojure-test-mode
   `(clojure-test-failure-face ((t (:foreground ,ao-zenburn-orange :weight bold :underline t))))
   `(clojure-test-error-face ((t (:foreground ,ao-zenburn-red :weight bold :underline t))))
   `(clojure-test-success-face ((t (:foreground ,ao-zenburn-green+1 :weight bold :underline t))))
;;;;; coq
   `(coq-solve-tactics-face ((t (:foreground nil :inherit font-lock-constant-face))))
;;;;; ctable
   `(ctbl:face-cell-select ((t (:background ,ao-zenburn-blue :foreground ,ao-zenburn-bg))))
   `(ctbl:face-continue-bar ((t (:background ,ao-zenburn-bg-05 :foreground ,ao-zenburn-bg))))
   `(ctbl:face-row-select ((t (:background ,ao-zenburn-cyan :foreground ,ao-zenburn-bg))))
;;;;; diff
   `(diff-added ((,class (:foreground ,ao-zenburn-green+4 :background nil))
                 (t (:foreground ,ao-zenburn-green-1 :background nil))))
   `(diff-changed ((t (:foreground ,ao-zenburn-yellow))))
   `(diff-removed ((,class (:foreground ,ao-zenburn-red :background nil))
                   (t (:foreground ,ao-zenburn-red-3 :background nil))))
   `(diff-refine-added ((t (:inherit diff-added :weight bold))))
   `(diff-refine-change ((t (:inherit diff-changed :weight bold))))
   `(diff-refine-removed ((t (:inherit diff-removed :weight bold))))
   `(diff-header ((,class (:background ,ao-zenburn-bg+2))
                  (t (:background ,ao-zenburn-fg :foreground ,ao-zenburn-bg))))
   `(diff-file-header
     ((,class (:background ,ao-zenburn-bg+2 :foreground ,ao-zenburn-fg :bold t))
      (t (:background ,ao-zenburn-fg :foreground ,ao-zenburn-bg :bold t))))
;;;;; diff-hl
   `(diff-hl-change ((,class (:foreground ,ao-zenburn-blue-2 :background ,ao-zenburn-bg-05))))
   `(diff-hl-delete ((,class (:foreground ,ao-zenburn-red+1 :background ,ao-zenburn-bg-05))))
   `(diff-hl-insert ((,class (:foreground ,ao-zenburn-green+1 :background ,ao-zenburn-bg-05))))
   `(diff-hl-unknown ((,class (:foreground ,ao-zenburn-yellow :background ,ao-zenburn-bg-05))))
;;;;; dim-autoload
   `(dim-autoload-cookie-line ((t :foreground ,ao-zenburn-bg+1)))
;;;;; dired+
   `(diredp-display-msg ((t (:foreground ,ao-zenburn-blue))))
   `(diredp-compressed-file-suffix ((t (:foreground ,ao-zenburn-orange))))
   `(diredp-date-time ((t (:foreground ,ao-zenburn-magenta))))
   `(diredp-deletion ((t (:foreground ,ao-zenburn-yellow))))
   `(diredp-deletion-file-name ((t (:foreground ,ao-zenburn-red))))
   `(diredp-dir-heading ((t (:foreground ,ao-zenburn-blue :background ,ao-zenburn-bg-1))))
   `(diredp-dir-priv ((t (:foreground ,ao-zenburn-cyan))))
   `(diredp-exec-priv ((t (:foreground ,ao-zenburn-red))))
   `(diredp-executable-tag ((t (:foreground ,ao-zenburn-green+1))))
   `(diredp-file-name ((t (:foreground ,ao-zenburn-blue))))
   `(diredp-file-suffix ((t (:foreground ,ao-zenburn-green))))
   `(diredp-flag-mark ((t (:foreground ,ao-zenburn-yellow))))
   `(diredp-flag-mark-line ((t (:foreground ,ao-zenburn-orange))))
   `(diredp-ignored-file-name ((t (:foreground ,ao-zenburn-red))))
   `(diredp-link-priv ((t (:foreground ,ao-zenburn-yellow))))
   `(diredp-mode-line-flagged ((t (:foreground ,ao-zenburn-yellow))))
   `(diredp-mode-line-marked ((t (:foreground ,ao-zenburn-orange))))
   `(diredp-no-priv ((t (:foreground ,ao-zenburn-fg))))
   `(diredp-number ((t (:foreground ,ao-zenburn-green+1))))
   `(diredp-other-priv ((t (:foreground ,ao-zenburn-yellow-1))))
   `(diredp-rare-priv ((t (:foreground ,ao-zenburn-red-1))))
   `(diredp-read-priv ((t (:foreground ,ao-zenburn-green-1))))
   `(diredp-symlink ((t (:foreground ,ao-zenburn-yellow))))
   `(diredp-write-priv ((t (:foreground ,ao-zenburn-magenta))))
;;;;; ediff
   `(ediff-current-diff-A ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-red-4))))
   `(ediff-current-diff-Ancestor ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-red-4))))
   `(ediff-current-diff-B ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-green-1))))
   `(ediff-current-diff-C ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-blue-5))))
   `(ediff-even-diff-A ((t (:background ,ao-zenburn-bg+1))))
   `(ediff-even-diff-Ancestor ((t (:background ,ao-zenburn-bg+1))))
   `(ediff-even-diff-B ((t (:background ,ao-zenburn-bg+1))))
   `(ediff-even-diff-C ((t (:background ,ao-zenburn-bg+1))))
   `(ediff-fine-diff-A ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-red-2 :weight bold))))
   `(ediff-fine-diff-Ancestor ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-red-2 weight bold))))
   `(ediff-fine-diff-B ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-green :weight bold))))
   `(ediff-fine-diff-C ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-blue-3 :weight bold ))))
   `(ediff-odd-diff-A ((t (:background ,ao-zenburn-bg+2))))
   `(ediff-odd-diff-Ancestor ((t (:background ,ao-zenburn-bg+2))))
   `(ediff-odd-diff-B ((t (:background ,ao-zenburn-bg+2))))
   `(ediff-odd-diff-C ((t (:background ,ao-zenburn-bg+2))))
;;;;; egg
   `(egg-text-base ((t (:foreground ,ao-zenburn-fg))))
   `(egg-help-header-1 ((t (:foreground ,ao-zenburn-yellow))))
   `(egg-help-header-2 ((t (:foreground ,ao-zenburn-green+3))))
   `(egg-branch ((t (:foreground ,ao-zenburn-yellow))))
   `(egg-branch-mono ((t (:foreground ,ao-zenburn-yellow))))
   `(egg-term ((t (:foreground ,ao-zenburn-yellow))))
   `(egg-diff-add ((t (:foreground ,ao-zenburn-green+4))))
   `(egg-diff-del ((t (:foreground ,ao-zenburn-red+1))))
   `(egg-diff-file-header ((t (:foreground ,ao-zenburn-yellow-2))))
   `(egg-section-title ((t (:foreground ,ao-zenburn-yellow))))
   `(egg-stash-mono ((t (:foreground ,ao-zenburn-green+4))))
;;;;; elfeed
   `(elfeed-search-date-face ((t (:foreground ,ao-zenburn-yellow-1 :underline t
                                              :weight bold))))
   `(elfeed-search-tag-face ((t (:foreground ,ao-zenburn-green))))
   `(elfeed-search-feed-face ((t (:foreground ,ao-zenburn-cyan))))
;;;;; emacs-w3m
   `(w3m-anchor ((t (:foreground ,ao-zenburn-yellow :underline t
                                 :weight bold))))
   `(w3m-arrived-anchor ((t (:foreground ,ao-zenburn-yellow-2
                                         :underline t :weight normal))))
   `(w3m-form ((t (:foreground ,ao-zenburn-red-1 :underline t))))
   `(w3m-header-line-location-title ((t (:foreground ,ao-zenburn-yellow
                                                     :underline t :weight bold))))
   '(w3m-history-current-url ((t (:inherit match))))
   `(w3m-lnum ((t (:foreground ,ao-zenburn-green+2 :background ,ao-zenburn-bg))))
   `(w3m-lnum-match ((t (:background ,ao-zenburn-bg-1
                                     :foreground ,ao-zenburn-orange
                                     :weight bold))))
   `(w3m-lnum-minibuffer-prompt ((t (:foreground ,ao-zenburn-yellow))))
;;;;; erc
   `(erc-action-face ((t (:inherit erc-default-face))))
   `(erc-bold-face ((t (:weight bold))))
   `(erc-current-nick-face ((t (:foreground ,ao-zenburn-blue :weight bold))))
   `(erc-dangerous-host-face ((t (:inherit font-lock-warning-face))))
   `(erc-default-face ((t (:foreground ,ao-zenburn-fg))))
   `(erc-direct-msg-face ((t (:inherit erc-default))))
   `(erc-error-face ((t (:inherit font-lock-warning-face))))
   `(erc-fool-face ((t (:inherit erc-default))))
   `(erc-highlight-face ((t (:inherit hover-highlight))))
   `(erc-input-face ((t (:foreground ,ao-zenburn-yellow))))
   `(erc-keyword-face ((t (:foreground ,ao-zenburn-blue :weight bold))))
   `(erc-nick-default-face ((t (:foreground ,ao-zenburn-yellow :weight bold))))
   `(erc-my-nick-face ((t (:foreground ,ao-zenburn-red :weight bold))))
   `(erc-nick-msg-face ((t (:inherit erc-default))))
   `(erc-notice-face ((t (:foreground ,ao-zenburn-green))))
   `(erc-pal-face ((t (:foreground ,ao-zenburn-orange :weight bold))))
   `(erc-prompt-face ((t (:foreground ,ao-zenburn-orange :background ,ao-zenburn-bg :weight bold))))
   `(erc-timestamp-face ((t (:foreground ,ao-zenburn-green+4))))
   `(erc-underline-face ((t (:underline t))))
;;;;; ert
   `(ert-test-result-expected ((t (:foreground ,ao-zenburn-green+4 :background ,ao-zenburn-bg))))
   `(ert-test-result-unexpected ((t (:foreground ,ao-zenburn-red :background ,ao-zenburn-bg))))
;;;;; eshell
   `(eshell-prompt ((t (:foreground ,ao-zenburn-yellow :weight bold))))
   `(eshell-ls-archive ((t (:foreground ,ao-zenburn-red-1 :weight bold))))
   `(eshell-ls-backup ((t (:inherit font-lock-comment-face))))
   `(eshell-ls-clutter ((t (:inherit font-lock-comment-face))))
   `(eshell-ls-directory ((t (:foreground ,ao-zenburn-blue+1 :weight bold))))
   `(eshell-ls-executable ((t (:foreground ,ao-zenburn-red+1 :weight bold))))
   `(eshell-ls-unreadable ((t (:foreground ,ao-zenburn-fg))))
   `(eshell-ls-missing ((t (:inherit font-lock-warning-face))))
   `(eshell-ls-product ((t (:inherit font-lock-doc-face))))
   `(eshell-ls-special ((t (:foreground ,ao-zenburn-yellow :weight bold))))
   `(eshell-ls-symlink ((t (:foreground ,ao-zenburn-cyan :weight bold))))
;;;;; flx
   `(flx-highlight-face ((t (:foreground ,ao-zenburn-green+2 :weight bold))))
;;;;; flycheck
   `(flycheck-error
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,ao-zenburn-red-1) :inherit unspecified))
      (t (:foreground ,ao-zenburn-red-1 :weight bold :underline t))))
   `(flycheck-warning
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,ao-zenburn-yellow) :inherit unspecified))
      (t (:foreground ,ao-zenburn-yellow :weight bold :underline t))))
   `(flycheck-info
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,ao-zenburn-cyan) :inherit unspecified))
      (t (:foreground ,ao-zenburn-cyan :weight bold :underline t))))
   `(flycheck-fringe-error ((t (:foreground ,ao-zenburn-red-1 :weight bold))))
   `(flycheck-fringe-warning ((t (:foreground ,ao-zenburn-yellow :weight bold))))
   `(flycheck-fringe-info ((t (:foreground ,ao-zenburn-cyan :weight bold))))
;;;;; flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,ao-zenburn-red)
                   :inherit unspecified :foreground unspecified :background unspecified))
      (t (:foreground ,ao-zenburn-red-1 :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,ao-zenburn-orange)
                   :inherit unspecified :foreground unspecified :background unspecified))
      (t (:foreground ,ao-zenburn-orange :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,ao-zenburn-green)
                   :inherit unspecified :foreground unspecified :background unspecified))
      (t (:foreground ,ao-zenburn-green-1 :weight bold :underline t))))
;;;;; flyspell
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,ao-zenburn-orange) :inherit unspecified))
      (t (:foreground ,ao-zenburn-orange :weight bold :underline t))))
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,ao-zenburn-red) :inherit unspecified))
      (t (:foreground ,ao-zenburn-red-1 :weight bold :underline t))))
;;;;; full-ack
   `(ack-separator ((t (:foreground ,ao-zenburn-fg))))
   `(ack-file ((t (:foreground ,ao-zenburn-blue))))
   `(ack-line ((t (:foreground ,ao-zenburn-yellow))))
   `(ack-match ((t (:foreground ,ao-zenburn-orange :background ,ao-zenburn-bg-1 :weight bold))))
;;;;; git-gutter
   `(git-gutter:added ((t (:foreground ,ao-zenburn-green :weight bold :inverse-video t))))
   `(git-gutter:deleted ((t (:foreground ,ao-zenburn-red :weight bold :inverse-video t))))
   `(git-gutter:modified ((t (:foreground ,ao-zenburn-magenta :weight bold :inverse-video t))))
   `(git-gutter:unchanged ((t (:foreground ,ao-zenburn-fg :weight bold :inverse-video t))))
;;;;; git-gutter-fr
   `(git-gutter-fr:added ((t (:foreground ,ao-zenburn-green  :weight bold))))
   `(git-gutter-fr:deleted ((t (:foreground ,ao-zenburn-red :weight bold))))
   `(git-gutter-fr:modified ((t (:foreground ,ao-zenburn-magenta :weight bold))))
;;;;; git-rebase-mode
   `(git-rebase-hash ((t (:foreground, ao-zenburn-orange))))
;;;;; gnus
   `(gnus-group-mail-1 ((t (:bold t :inherit gnus-group-mail-1-empty))))
   `(gnus-group-mail-1-empty ((t (:inherit gnus-group-news-1-empty))))
   `(gnus-group-mail-2 ((t (:bold t :inherit gnus-group-mail-2-empty))))
   `(gnus-group-mail-2-empty ((t (:inherit gnus-group-news-2-empty))))
   `(gnus-group-mail-3 ((t (:bold t :inherit gnus-group-mail-3-empty))))
   `(gnus-group-mail-3-empty ((t (:inherit gnus-group-news-3-empty))))
   `(gnus-group-mail-4 ((t (:bold t :inherit gnus-group-mail-4-empty))))
   `(gnus-group-mail-4-empty ((t (:inherit gnus-group-news-4-empty))))
   `(gnus-group-mail-5 ((t (:bold t :inherit gnus-group-mail-5-empty))))
   `(gnus-group-mail-5-empty ((t (:inherit gnus-group-news-5-empty))))
   `(gnus-group-mail-6 ((t (:bold t :inherit gnus-group-mail-6-empty))))
   `(gnus-group-mail-6-empty ((t (:inherit gnus-group-news-6-empty))))
   `(gnus-group-mail-low ((t (:bold t :inherit gnus-group-mail-low-empty))))
   `(gnus-group-mail-low-empty ((t (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-1 ((t (:bold t :inherit gnus-group-news-1-empty))))
   `(gnus-group-news-2 ((t (:bold t :inherit gnus-group-news-2-empty))))
   `(gnus-group-news-3 ((t (:bold t :inherit gnus-group-news-3-empty))))
   `(gnus-group-news-4 ((t (:bold t :inherit gnus-group-news-4-empty))))
   `(gnus-group-news-5 ((t (:bold t :inherit gnus-group-news-5-empty))))
   `(gnus-group-news-6 ((t (:bold t :inherit gnus-group-news-6-empty))))
   `(gnus-group-news-low ((t (:bold t :inherit gnus-group-news-low-empty))))
   `(gnus-header-content ((t (:inherit message-header-other))))
   `(gnus-header-from ((t (:inherit message-header-from))))
   `(gnus-header-name ((t (:inherit message-header-name))))
   `(gnus-header-newsgroups ((t (:inherit message-header-other))))
   `(gnus-header-subject ((t (:inherit message-header-subject))))
   `(gnus-summary-cancelled ((t (:foreground ,ao-zenburn-orange))))
   `(gnus-summary-high-ancient ((t (:foreground ,ao-zenburn-blue))))
   `(gnus-summary-high-read ((t (:foreground ,ao-zenburn-green :weight bold))))
   `(gnus-summary-high-ticked ((t (:foreground ,ao-zenburn-orange :weight bold))))
   `(gnus-summary-high-unread ((t (:foreground ,ao-zenburn-fg :weight bold))))
   `(gnus-summary-low-ancient ((t (:foreground ,ao-zenburn-blue))))
   `(gnus-summary-low-read ((t (:foreground ,ao-zenburn-green))))
   `(gnus-summary-low-ticked ((t (:foreground ,ao-zenburn-orange :weight bold))))
   `(gnus-summary-low-unread ((t (:foreground ,ao-zenburn-fg))))
   `(gnus-summary-normal-ancient ((t (:foreground ,ao-zenburn-blue))))
   `(gnus-summary-normal-read ((t (:foreground ,ao-zenburn-green))))
   `(gnus-summary-normal-ticked ((t (:foreground ,ao-zenburn-orange :weight bold))))
   `(gnus-summary-normal-unread ((t (:foreground ,ao-zenburn-fg))))
   `(gnus-summary-selected ((t (:foreground ,ao-zenburn-yellow :weight bold))))
   `(gnus-cite-1 ((t (:foreground ,ao-zenburn-blue))))
   `(gnus-cite-10 ((t (:foreground ,ao-zenburn-yellow-1))))
   `(gnus-cite-11 ((t (:foreground ,ao-zenburn-yellow))))
   `(gnus-cite-2 ((t (:foreground ,ao-zenburn-blue-1))))
   `(gnus-cite-3 ((t (:foreground ,ao-zenburn-blue-2))))
   `(gnus-cite-4 ((t (:foreground ,ao-zenburn-green+2))))
   `(gnus-cite-5 ((t (:foreground ,ao-zenburn-green+1))))
   `(gnus-cite-6 ((t (:foreground ,ao-zenburn-green))))
   `(gnus-cite-7 ((t (:foreground ,ao-zenburn-red))))
   `(gnus-cite-8 ((t (:foreground ,ao-zenburn-red-1))))
   `(gnus-cite-9 ((t (:foreground ,ao-zenburn-red-2))))
   `(gnus-group-news-1-empty ((t (:foreground ,ao-zenburn-yellow))))
   `(gnus-group-news-2-empty ((t (:foreground ,ao-zenburn-green+3))))
   `(gnus-group-news-3-empty ((t (:foreground ,ao-zenburn-green+1))))
   `(gnus-group-news-4-empty ((t (:foreground ,ao-zenburn-blue-2))))
   `(gnus-group-news-5-empty ((t (:foreground ,ao-zenburn-blue-3))))
   `(gnus-group-news-6-empty ((t (:foreground ,ao-zenburn-bg+2))))
   `(gnus-group-news-low-empty ((t (:foreground ,ao-zenburn-bg+2))))
   `(gnus-signature ((t (:foreground ,ao-zenburn-yellow))))
   `(gnus-x ((t (:background ,ao-zenburn-fg :foreground ,ao-zenburn-bg))))
;;;;; guide-key
   `(guide-key/highlight-command-face ((t (:foreground ,ao-zenburn-blue))))
   `(guide-key/key-face ((t (:foreground ,ao-zenburn-green))))
   `(guide-key/prefix-command-face ((t (:foreground ,ao-zenburn-green+1))))
;;;;; helm
   `(helm-header
     ((t (:foreground ,ao-zenburn-green
                      :background ,ao-zenburn-bg
                      :underline nil
                      :box nil))))
   `(helm-source-header
     ((t (:foreground ,ao-zenburn-yellow
                      :background ,ao-zenburn-bg-1
                      :underline nil
                      :weight bold
                      :box (:line-width -1 :style released-button)))))
   `(helm-selection ((t (:background ,ao-zenburn-bg+1 :underline nil))))
   `(helm-selection-line ((t (:background ,ao-zenburn-bg+1))))
   `(helm-visible-mark ((t (:foreground ,ao-zenburn-bg :background ,ao-zenburn-yellow-2))))
   `(helm-candidate-number ((t (:foreground ,ao-zenburn-green+4 :background ,ao-zenburn-bg-1))))
   `(helm-separator ((t (:foreground ,ao-zenburn-red :background ,ao-zenburn-bg))))
   `(helm-time-zone-current ((t (:foreground ,ao-zenburn-green+2 :background ,ao-zenburn-bg))))
   `(helm-time-zone-home ((t (:foreground ,ao-zenburn-red :background ,ao-zenburn-bg))))
   `(helm-bookmark-addressbook ((t (:foreground ,ao-zenburn-orange :background ,ao-zenburn-bg))))
   `(helm-bookmark-directory ((t (:foreground nil :background nil :inherit helm-ff-directory))))
   `(helm-bookmark-file ((t (:foreground nil :background nil :inherit helm-ff-file))))
   `(helm-bookmark-gnus ((t (:foreground ,ao-zenburn-magenta :background ,ao-zenburn-bg))))
   `(helm-bookmark-info ((t (:foreground ,ao-zenburn-green+2 :background ,ao-zenburn-bg))))
   `(helm-bookmark-man ((t (:foreground ,ao-zenburn-yellow :background ,ao-zenburn-bg))))
   `(helm-bookmark-w3m ((t (:foreground ,ao-zenburn-magenta :background ,ao-zenburn-bg))))
   `(helm-buffer-not-saved ((t (:foreground ,ao-zenburn-red :background ,ao-zenburn-bg))))
   `(helm-buffer-process ((t (:foreground ,ao-zenburn-cyan :background ,ao-zenburn-bg))))
   `(helm-buffer-saved-out ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-bg))))
   `(helm-buffer-size ((t (:foreground ,ao-zenburn-fg-1 :background ,ao-zenburn-bg))))
   `(helm-ff-directory ((t (:foreground ,ao-zenburn-cyan :background ,ao-zenburn-bg :weight bold))))
   `(helm-ff-file ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-bg :weight normal))))
   `(helm-ff-executable ((t (:foreground ,ao-zenburn-green+2 :background ,ao-zenburn-bg :weight normal))))
   `(helm-ff-invalid-symlink ((t (:foreground ,ao-zenburn-red :background ,ao-zenburn-bg :weight bold))))
   `(helm-ff-symlink ((t (:foreground ,ao-zenburn-yellow :background ,ao-zenburn-bg :weight bold))))
   `(helm-ff-prefix ((t (:foreground ,ao-zenburn-bg :background ,ao-zenburn-yellow :weight normal))))
   `(helm-grep-cmd-line ((t (:foreground ,ao-zenburn-cyan :background ,ao-zenburn-bg))))
   `(helm-grep-file ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-bg))))
   `(helm-grep-finish ((t (:foreground ,ao-zenburn-green+2 :background ,ao-zenburn-bg))))
   `(helm-grep-lineno ((t (:foreground ,ao-zenburn-fg-1 :background ,ao-zenburn-bg))))
   `(helm-grep-match ((t (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((t (:foreground ,ao-zenburn-red :background ,ao-zenburn-bg))))
   `(helm-moccur-buffer ((t (:foreground ,ao-zenburn-cyan :background ,ao-zenburn-bg))))
   `(helm-mu-contacts-address-face ((t (:foreground ,ao-zenburn-fg-1 :background ,ao-zenburn-bg))))
   `(helm-mu-contacts-name-face ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-bg))))
;;;;; hl-line-mode
   `(hl-line-face ((,class (:background ,ao-zenburn-bg-05))
                   (t :weight bold)))
   `(hl-line ((,class (:background ,ao-zenburn-bg-05)) ; old emacsen
              (t :weight bold)))
;;;;; hl-sexp
   `(hl-sexp-face ((,class (:background ,ao-zenburn-bg+1))
                   (t :weight bold)))
;;;;; ido-mode
   `(ido-first-match ((t (:foreground ,ao-zenburn-yellow :weight bold))))
   `(ido-only-match ((t (:foreground ,ao-zenburn-orange :weight bold))))
   `(ido-subdir ((t (:foreground ,ao-zenburn-yellow))))
   `(ido-indicator ((t (:foreground ,ao-zenburn-yellow :background ,ao-zenburn-red-4))))
;;;;; iedit-mode
   `(iedit-occurrence ((t (:background ,ao-zenburn-bg+2 :weight bold))))
;;;;; jabber-mode
   `(jabber-roster-user-away ((t (:foreground ,ao-zenburn-green+2))))
   `(jabber-roster-user-online ((t (:foreground ,ao-zenburn-blue-1))))
   `(jabber-roster-user-dnd ((t (:foreground ,ao-zenburn-red+1))))
   `(jabber-rare-time-face ((t (:foreground ,ao-zenburn-green+1))))
   `(jabber-chat-prompt-local ((t (:foreground ,ao-zenburn-blue-1))))
   `(jabber-chat-prompt-foreign ((t (:foreground ,ao-zenburn-red+1))))
   `(jabber-activity-face((t (:foreground ,ao-zenburn-red+1))))
   `(jabber-activity-personal-face ((t (:foreground ,ao-zenburn-blue+1))))
   `(jabber-title-small ((t (:height 1.1 :weight bold))))
   `(jabber-title-medium ((t (:height 1.2 :weight bold))))
   `(jabber-title-large ((t (:height 1.3 :weight bold))))
;;;;; js2-mode
   `(js2-warning ((t (:underline ,ao-zenburn-orange))))
   `(js2-error ((t (:foreground ,ao-zenburn-red :weight bold))))
   `(js2-jsdoc-tag ((t (:foreground ,ao-zenburn-green-1))))
   `(js2-jsdoc-type ((t (:foreground ,ao-zenburn-green+2))))
   `(js2-jsdoc-value ((t (:foreground ,ao-zenburn-green+3))))
   `(js2-function-param ((t (:foreground, ao-zenburn-green+3))))
   `(js2-external-variable ((t (:foreground ,ao-zenburn-orange))))
;;;;; ledger-mode
   `(ledger-font-payee-uncleared-face ((t (:foreground ,ao-zenburn-red-1 :weight bold))))
   `(ledger-font-payee-cleared-face ((t (:foreground ,ao-zenburn-fg :weight normal))))
   `(ledger-font-xact-highlight-face ((t (:background ,ao-zenburn-bg+1))))
   `(ledger-font-pending-face ((t (:foreground ,ao-zenburn-orange weight: normal))))
   `(ledger-font-other-face ((t (:foreground ,ao-zenburn-fg))))
   `(ledger-font-posting-account-face ((t (:foreground ,ao-zenburn-blue-1))))
   `(ledger-font-posting-account-cleared-face ((t (:foreground ,ao-zenburn-fg))))
   `(ledger-font-posting-account-pending-face ((t (:foreground ,ao-zenburn-orange))))
   `(ledger-font-posting-amount-face ((t (:foreground ,ao-zenburn-orange))))
   `(ledger-font-posting-account-pending-face ((t (:foreground ,ao-zenburn-orange))))
   `(ledger-occur-narrowed-face ((t (:foreground ,ao-zenburn-fg-1 :invisible t))))
   `(ledger-occur-xact-face ((t (:background ,ao-zenburn-bg+1))))
   `(ledger-font-comment-face ((t (:foreground ,ao-zenburn-green))))
   `(ledger-font-reconciler-uncleared-face ((t (:foreground ,ao-zenburn-red-1 :weight bold))))
   `(ledger-font-reconciler-cleared-face ((t (:foreground ,ao-zenburn-fg :weight normal))))
   `(ledger-font-reconciler-pending-face ((t (:foreground ,ao-zenburn-orange :weight normal))))
   `(ledger-font-report-clickable-face ((t (:foreground ,ao-zenburn-orange :weight normal))))
;;;;; linum-mode
   `(linum ((t (:foreground ,ao-zenburn-green+2 :background ,ao-zenburn-bg))))
;;;;; macrostep
   `(macrostep-gensym-1
     ((t (:foreground ,ao-zenburn-green+2 :background ,ao-zenburn-bg-1))))
   `(macrostep-gensym-2
     ((t (:foreground ,ao-zenburn-red+1 :background ,ao-zenburn-bg-1))))
   `(macrostep-gensym-3
     ((t (:foreground ,ao-zenburn-blue+1 :background ,ao-zenburn-bg-1))))
   `(macrostep-gensym-4
     ((t (:foreground ,ao-zenburn-magenta :background ,ao-zenburn-bg-1))))
   `(macrostep-gensym-5
     ((t (:foreground ,ao-zenburn-yellow :background ,ao-zenburn-bg-1))))
   `(macrostep-expansion-highlight-face
     ((t (:inherit highlight))))
   `(macrostep-macro-face
     ((t (:underline t))))
;;;;; magit
   `(magit-item-highlight ((t (:background ,ao-zenburn-bg+05))))
   `(magit-section-title ((t (:foreground ,ao-zenburn-yellow :weight bold))))
   `(magit-process-ok ((t (:foreground ,ao-zenburn-green :weight bold))))
   `(magit-process-ng ((t (:foreground ,ao-zenburn-red :weight bold))))
   `(magit-branch ((t (:foreground ,ao-zenburn-blue :weight bold))))
   `(magit-log-author ((t (:foreground ,ao-zenburn-orange))))
   `(magit-log-sha1 ((t (:foreground, ao-zenburn-orange))))
;;;;; message-mode
   `(message-cited-text ((t (:inherit font-lock-comment-face))))
   `(message-header-name ((t (:foreground ,ao-zenburn-green+1))))
   `(message-header-other ((t (:foreground ,ao-zenburn-green))))
   `(message-header-to ((t (:foreground ,ao-zenburn-yellow :weight bold))))
   `(message-header-from ((t (:foreground ,ao-zenburn-yellow :weight bold))))
   `(message-header-cc ((t (:foreground ,ao-zenburn-yellow :weight bold))))
   `(message-header-newsgroups ((t (:foreground ,ao-zenburn-yellow :weight bold))))
   `(message-header-subject ((t (:foreground ,ao-zenburn-orange :weight bold))))
   `(message-header-xheader ((t (:foreground ,ao-zenburn-green))))
   `(message-mml ((t (:foreground ,ao-zenburn-yellow :weight bold))))
   `(message-separator ((t (:inherit font-lock-comment-face))))
;;;;; mew
   `(mew-face-header-subject ((t (:foreground ,ao-zenburn-orange))))
   `(mew-face-header-from ((t (:foreground ,ao-zenburn-yellow))))
   `(mew-face-header-date ((t (:foreground ,ao-zenburn-green))))
   `(mew-face-header-to ((t (:foreground ,ao-zenburn-red))))
   `(mew-face-header-key ((t (:foreground ,ao-zenburn-green))))
   `(mew-face-header-private ((t (:foreground ,ao-zenburn-green))))
   `(mew-face-header-important ((t (:foreground ,ao-zenburn-blue))))
   `(mew-face-header-marginal ((t (:foreground ,ao-zenburn-fg :weight bold))))
   `(mew-face-header-warning ((t (:foreground ,ao-zenburn-red))))
   `(mew-face-header-xmew ((t (:foreground ,ao-zenburn-green))))
   `(mew-face-header-xmew-bad ((t (:foreground ,ao-zenburn-red))))
   `(mew-face-body-url ((t (:foreground ,ao-zenburn-orange))))
   `(mew-face-body-comment ((t (:foreground ,ao-zenburn-fg :slant italic))))
   `(mew-face-body-cite1 ((t (:foreground ,ao-zenburn-green))))
   `(mew-face-body-cite2 ((t (:foreground ,ao-zenburn-blue))))
   `(mew-face-body-cite3 ((t (:foreground ,ao-zenburn-orange))))
   `(mew-face-body-cite4 ((t (:foreground ,ao-zenburn-yellow))))
   `(mew-face-body-cite5 ((t (:foreground ,ao-zenburn-red))))
   `(mew-face-mark-review ((t (:foreground ,ao-zenburn-blue))))
   `(mew-face-mark-escape ((t (:foreground ,ao-zenburn-green))))
   `(mew-face-mark-delete ((t (:foreground ,ao-zenburn-red))))
   `(mew-face-mark-unlink ((t (:foreground ,ao-zenburn-yellow))))
   `(mew-face-mark-refile ((t (:foreground ,ao-zenburn-green))))
   `(mew-face-mark-unread ((t (:foreground ,ao-zenburn-red-2))))
   `(mew-face-eof-message ((t (:foreground ,ao-zenburn-green))))
   `(mew-face-eof-part ((t (:foreground ,ao-zenburn-yellow))))
;;;;; mic-paren
   `(paren-face-match ((t (:foreground ,ao-zenburn-cyan :background ,ao-zenburn-bg :weight bold))))
   `(paren-face-mismatch ((t (:foreground ,ao-zenburn-bg :background ,ao-zenburn-magenta :weight bold))))
   `(paren-face-no-match ((t (:foreground ,ao-zenburn-bg :background ,ao-zenburn-red :weight bold))))
;;;;; mingus
   `(mingus-directory-face ((t (:foreground ,ao-zenburn-blue))))
   `(mingus-pausing-face ((t (:foreground ,ao-zenburn-magenta))))
   `(mingus-playing-face ((t (:foreground ,ao-zenburn-cyan))))
   `(mingus-playlist-face ((t (:foreground ,ao-zenburn-cyan ))))
   `(mingus-song-file-face ((t (:foreground ,ao-zenburn-yellow))))
   `(mingus-stopped-face ((t (:foreground ,ao-zenburn-red))))
;;;;; nav
   `(nav-face-heading ((t (:foreground ,ao-zenburn-yellow))))
   `(nav-face-button-num ((t (:foreground ,ao-zenburn-cyan))))
   `(nav-face-dir ((t (:foreground ,ao-zenburn-green))))
   `(nav-face-hdir ((t (:foreground ,ao-zenburn-red))))
   `(nav-face-file ((t (:foreground ,ao-zenburn-fg))))
   `(nav-face-hfile ((t (:foreground ,ao-zenburn-red-4))))
;;;;; mu4e
   `(mu4e-cited-1-face ((t (:foreground ,ao-zenburn-blue    :slant italic))))
   `(mu4e-cited-2-face ((t (:foreground ,ao-zenburn-green+2 :slant italic))))
   `(mu4e-cited-3-face ((t (:foreground ,ao-zenburn-blue-2  :slant italic))))
   `(mu4e-cited-4-face ((t (:foreground ,ao-zenburn-green   :slant italic))))
   `(mu4e-cited-5-face ((t (:foreground ,ao-zenburn-blue-4  :slant italic))))
   `(mu4e-cited-6-face ((t (:foreground ,ao-zenburn-green-1 :slant italic))))
   `(mu4e-cited-7-face ((t (:foreground ,ao-zenburn-blue    :slant italic))))
   `(mu4e-replied-face ((t (:foreground ,ao-zenburn-bg+3))))
   `(mu4e-trashed-face ((t (:foreground ,ao-zenburn-bg+3 :strike-through t))))
;;;;; mumamo
   `(mumamo-background-chunk-major ((t (:background nil))))
   `(mumamo-background-chunk-submode1 ((t (:background ,ao-zenburn-bg-1))))
   `(mumamo-background-chunk-submode2 ((t (:background ,ao-zenburn-bg+2))))
   `(mumamo-background-chunk-submode3 ((t (:background ,ao-zenburn-bg+3))))
   `(mumamo-background-chunk-submode4 ((t (:background ,ao-zenburn-bg+1))))
;;;;; org-mode
   `(org-agenda-date-today
     ((t (:foreground ,ao-zenburn-fg+1 :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((t (:inherit font-lock-comment-face))))
   `(org-archived ((t (:foreground ,ao-zenburn-fg :weight bold))))
   `(org-checkbox ((t (:background ,ao-zenburn-bg+2 :foreground ,ao-zenburn-fg+1
                                   :box (:line-width 1 :style released-button)))))
   `(org-date ((t (:foreground ,ao-zenburn-blue :underline t))))
   `(org-deadline-announce ((t (:foreground ,ao-zenburn-red-1))))
   `(org-done ((t (:bold t :weight bold :foreground ,ao-zenburn-green+3))))
   `(org-formula ((t (:foreground ,ao-zenburn-yellow-2))))
   `(org-headline-done ((t (:foreground ,ao-zenburn-green+3))))
   `(org-hide ((t (:foreground ,ao-zenburn-bg-1))))
   `(org-level-1 ((t (:foreground ,ao-zenburn-orange))))
   `(org-level-2 ((t (:foreground ,ao-zenburn-green+4))))
   `(org-level-3 ((t (:foreground ,ao-zenburn-blue-1))))
   `(org-level-4 ((t (:foreground ,ao-zenburn-yellow-2))))
   `(org-level-5 ((t (:foreground ,ao-zenburn-cyan))))
   `(org-level-6 ((t (:foreground ,ao-zenburn-green+2))))
   `(org-level-7 ((t (:foreground ,ao-zenburn-red-4))))
   `(org-level-8 ((t (:foreground ,ao-zenburn-blue-4))))
   `(org-link ((t (:foreground ,ao-zenburn-yellow-2 :underline t))))
   `(org-scheduled ((t (:foreground ,ao-zenburn-green+4))))
   `(org-scheduled-previously ((t (:foreground ,ao-zenburn-red))))
   `(org-scheduled-today ((t (:foreground ,ao-zenburn-blue+1))))
   `(org-sexp-date ((t (:foreground ,ao-zenburn-blue+1 :underline t))))
   `(org-special-keyword ((t (:inherit font-lock-comment-face))))
   `(org-table ((t (:foreground ,ao-zenburn-green+2))))
   `(org-tag ((t (:bold t :weight bold))))
   `(org-time-grid ((t (:foreground ,ao-zenburn-orange))))
   `(org-todo ((t (:bold t :foreground ,ao-zenburn-red :weight bold))))
   `(org-upcoming-deadline ((t (:inherit font-lock-keyword-face))))
   `(org-warning ((t (:bold t :foreground ,ao-zenburn-red :weight bold :underline nil))))
   `(org-column ((t (:background ,ao-zenburn-bg-1))))
   `(org-column-title ((t (:background ,ao-zenburn-bg-1 :underline t :weight bold))))
   `(org-mode-line-clock ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-bg-1))))
   `(org-mode-line-clock-overrun ((t (:foreground ,ao-zenburn-bg :background ,ao-zenburn-red-1))))
   `(org-ellipsis ((t (:foreground ,ao-zenburn-yellow-1 :underline t))))
   `(org-footnote ((t (:foreground ,ao-zenburn-cyan :underline t))))
;;;;; outline
   `(outline-1 ((t (:foreground ,ao-zenburn-orange))))
   `(outline-2 ((t (:foreground ,ao-zenburn-green+4))))
   `(outline-3 ((t (:foreground ,ao-zenburn-blue-1))))
   `(outline-4 ((t (:foreground ,ao-zenburn-yellow-2))))
   `(outline-5 ((t (:foreground ,ao-zenburn-cyan))))
   `(outline-6 ((t (:foreground ,ao-zenburn-green+2))))
   `(outline-7 ((t (:foreground ,ao-zenburn-red-4))))
   `(outline-8 ((t (:foreground ,ao-zenburn-blue-4))))
;;;;; p4
   `(p4-depot-added-face ((t :inherit diff-added)))
   `(p4-depot-branch-op-face ((t :inherit diff-changed)))
   `(p4-depot-deleted-face ((t :inherit diff-removed)))
   `(p4-depot-unmapped-face ((t :inherit diff-changed)))
   `(p4-diff-change-face ((t :inherit diff-changed)))
   `(p4-diff-del-face ((t :inherit diff-removed)))
   `(p4-diff-file-face ((t :inherit diff-file-header)))
   `(p4-diff-head-face ((t :inherit diff-header)))
   `(p4-diff-ins-face ((t :inherit diff-added)))
;;;;; perspective
   `(persp-selected-face ((t (:foreground ,ao-zenburn-yellow-2 :inherit mode-line))))
;;;;; powerline
   `(powerline-active1 ((t (:background ,ao-zenburn-bg-05 :inherit mode-line))))
   `(powerline-active2 ((t (:background ,ao-zenburn-bg+2 :inherit mode-line))))
   `(powerline-inactive1 ((t (:background ,ao-zenburn-bg+1 :inherit mode-line-inactive))))
   `(powerline-inactive2 ((t (:background ,ao-zenburn-bg+3 :inherit mode-line-inactive))))
;;;;; proofgeneral
   `(proof-active-area-face ((t (:underline t))))
   `(proof-boring-face ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-bg+2))))
   `(proof-command-mouse-highlight-face ((t (:inherit proof-mouse-highlight-face))))
   `(proof-debug-message-face ((t (:inherit proof-boring-face))))
   `(proof-declaration-name-face ((t (:inherit font-lock-keyword-face :foreground nil))))
   `(proof-eager-annotation-face ((t (:foreground ,ao-zenburn-bg :background ,ao-zenburn-orange))))
   `(proof-error-face ((t (:foreground ,ao-zenburn-fg :background ,ao-zenburn-red-4))))
   `(proof-highlight-dependency-face ((t (:foreground ,ao-zenburn-bg :background ,ao-zenburn-yellow-1))))
   `(proof-highlight-dependent-face ((t (:foreground ,ao-zenburn-bg :background ,ao-zenburn-orange))))
   `(proof-locked-face ((t (:background ,ao-zenburn-blue-5))))
   `(proof-mouse-highlight-face ((t (:foreground ,ao-zenburn-bg :background ,ao-zenburn-orange))))
   `(proof-queue-face ((t (:background ,ao-zenburn-red-4))))
   `(proof-region-mouse-highlight-face ((t (:inherit proof-mouse-highlight-face))))
   `(proof-script-highlight-error-face ((t (:background ,ao-zenburn-red-2))))
   `(proof-tacticals-name-face ((t (:inherit font-lock-constant-face :foreground nil :background ,ao-zenburn-bg))))
   `(proof-tactics-name-face ((t (:inherit font-lock-constant-face :foreground nil :background ,ao-zenburn-bg))))
   `(proof-warning-face ((t (:foreground ,ao-zenburn-bg :background ,ao-zenburn-yellow-1))))
;;;;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,ao-zenburn-fg))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,ao-zenburn-green+4))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,ao-zenburn-yellow-2))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,ao-zenburn-cyan))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,ao-zenburn-green+2))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,ao-zenburn-blue+1))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,ao-zenburn-yellow-1))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,ao-zenburn-green+1))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,ao-zenburn-blue-2))))
   `(rainbow-delimiters-depth-10-face ((t (:foreground ,ao-zenburn-orange))))
   `(rainbow-delimiters-depth-11-face ((t (:foreground ,ao-zenburn-green))))
   `(rainbow-delimiters-depth-12-face ((t (:foreground ,ao-zenburn-blue-5))))
;;;;; rcirc
   `(rcirc-my-nick ((t (:foreground ,ao-zenburn-blue))))
   `(rcirc-other-nick ((t (:foreground ,ao-zenburn-orange))))
   `(rcirc-bright-nick ((t (:foreground ,ao-zenburn-blue+1))))
   `(rcirc-dim-nick ((t (:foreground ,ao-zenburn-blue-2))))
   `(rcirc-server ((t (:foreground ,ao-zenburn-green))))
   `(rcirc-server-prefix ((t (:foreground ,ao-zenburn-green+1))))
   `(rcirc-timestamp ((t (:foreground ,ao-zenburn-green+2))))
   `(rcirc-nick-in-message ((t (:foreground ,ao-zenburn-yellow))))
   `(rcirc-nick-in-message-full-line ((t (:bold t))))
   `(rcirc-prompt ((t (:foreground ,ao-zenburn-yellow :bold t))))
   `(rcirc-track-nick ((t (:inverse-video t))))
   `(rcirc-track-keyword ((t (:bold t))))
   `(rcirc-url ((t (:bold t))))
   `(rcirc-keyword ((t (:foreground ,ao-zenburn-yellow :bold t))))
;;;;; rpm-mode
   `(rpm-spec-dir-face ((t (:foreground ,ao-zenburn-green))))
   `(rpm-spec-doc-face ((t (:foreground ,ao-zenburn-green))))
   `(rpm-spec-ghost-face ((t (:foreground ,ao-zenburn-red))))
   `(rpm-spec-macro-face ((t (:foreground ,ao-zenburn-yellow))))
   `(rpm-spec-obsolete-tag-face ((t (:foreground ,ao-zenburn-red))))
   `(rpm-spec-package-face ((t (:foreground ,ao-zenburn-red))))
   `(rpm-spec-section-face ((t (:foreground ,ao-zenburn-yellow))))
   `(rpm-spec-tag-face ((t (:foreground ,ao-zenburn-blue))))
   `(rpm-spec-var-face ((t (:foreground ,ao-zenburn-red))))
;;;;; rst-mode
   `(rst-level-1-face ((t (:foreground ,ao-zenburn-orange))))
   `(rst-level-2-face ((t (:foreground ,ao-zenburn-green+1))))
   `(rst-level-3-face ((t (:foreground ,ao-zenburn-blue-1))))
   `(rst-level-4-face ((t (:foreground ,ao-zenburn-yellow-2))))
   `(rst-level-5-face ((t (:foreground ,ao-zenburn-cyan))))
   `(rst-level-6-face ((t (:foreground ,ao-zenburn-green-1))))
;;;;; sh-mode
   `(sh-heredoc     ((t (:foreground ,ao-zenburn-yellow :bold t))))
   `(sh-quoted-exec ((t (:foreground ,ao-zenburn-red))))
;;;;; show-paren
   `(show-paren-mismatch ((t (:foreground ,ao-zenburn-red+1 :background ,ao-zenburn-bg+3 :weight bold))))
   `(show-paren-match ((t (:background ,ao-zenburn-bg+3 :weight bold))))
;;;;; smartparens
   `(sp-show-pair-mismatch-face ((t (:foreground ,ao-zenburn-red+1 :background ,ao-zenburn-bg+3 :weight bold))))
   `(sp-show-pair-match-face ((t (:background ,ao-zenburn-bg+3 :weight bold))))
;;;;; sml-mode-line
   '(sml-modeline-end-face ((t :inherit default :width condensed)))
;;;;; SLIME
   `(slime-repl-output-face ((t (:foreground ,ao-zenburn-red))))
   `(slime-repl-inputed-output-face ((t (:foreground ,ao-zenburn-green))))
   `(slime-error-face
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,ao-zenburn-red)))
      (t
       (:underline ,ao-zenburn-red))))
   `(slime-warning-face
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,ao-zenburn-orange)))
      (t
       (:underline ,ao-zenburn-orange))))
   `(slime-style-warning-face
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,ao-zenburn-yellow)))
      (t
       (:underline ,ao-zenburn-yellow))))
   `(slime-note-face
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,ao-zenburn-green)))
      (t
       (:underline ,ao-zenburn-green))))
   `(slime-highlight-face ((t (:inherit highlight))))
;;;;; speedbar
   `(speedbar-button-face ((t (:foreground ,ao-zenburn-green+2))))
   `(speedbar-directory-face ((t (:foreground ,ao-zenburn-cyan))))
   `(speedbar-file-face ((t (:foreground ,ao-zenburn-fg))))
   `(speedbar-highlight-face ((t (:foreground ,ao-zenburn-bg :background ,ao-zenburn-green+2))))
   `(speedbar-selected-face ((t (:foreground ,ao-zenburn-red))))
   `(speedbar-separator-face ((t (:foreground ,ao-zenburn-bg :background ,ao-zenburn-blue-1))))
   `(speedbar-tag-face ((t (:foreground ,ao-zenburn-yellow))))
;;;;; tabbar
   `(tabbar-button ((t (:foreground ,ao-zenburn-fg
                                    :background ,ao-zenburn-bg))))
   `(tabbar-selected ((t (:foreground ,ao-zenburn-fg
                                      :background ,ao-zenburn-bg
                                      :box (:line-width -1 :style pressed-button)))))
   `(tabbar-unselected ((t (:foreground ,ao-zenburn-fg
                                        :background ,ao-zenburn-bg+1
                                        :box (:line-width -1 :style released-button)))))
;;;;; term
   `(term-color-black ((t (:foreground ,ao-zenburn-bg
                                       :background ,ao-zenburn-bg-1))))
   `(term-color-red ((t (:foreground ,ao-zenburn-red-2
                                       :background ,ao-zenburn-red-4))))
   `(term-color-green ((t (:foreground ,ao-zenburn-green
                                       :background ,ao-zenburn-green+2))))
   `(term-color-yellow ((t (:foreground ,ao-zenburn-orange
                                       :background ,ao-zenburn-yellow))))
   `(term-color-blue ((t (:foreground ,ao-zenburn-blue-1
                                      :background ,ao-zenburn-blue-4))))
   `(term-color-magenta ((t (:foreground ,ao-zenburn-magenta
                                         :background ,ao-zenburn-red))))
   `(term-color-cyan ((t (:foreground ,ao-zenburn-cyan
                                       :background ,ao-zenburn-blue))))
   `(term-color-white ((t (:foreground ,ao-zenburn-fg
                                       :background ,ao-zenburn-fg-1))))
   '(term-default-fg-color ((t (:inherit term-color-white))))
   '(term-default-bg-color ((t (:inherit term-color-black))))
;;;;; undo-tree
   `(undo-tree-visualizer-active-branch-face ((t (:foreground ,ao-zenburn-fg+1 :weight bold))))
   `(undo-tree-visualizer-current-face ((t (:foreground ,ao-zenburn-red-1 :weight bold))))
   `(undo-tree-visualizer-default-face ((t (:foreground ,ao-zenburn-fg))))
   `(undo-tree-visualizer-register-face ((t (:foreground ,ao-zenburn-yellow))))
   `(undo-tree-visualizer-unmodified-face ((t (:foreground ,ao-zenburn-cyan))))
;;;;; volatile-highlights
   `(vhl/default-face ((t (:background ,ao-zenburn-bg-05))))
;;;;; web-mode
   `(web-mode-builtin-face ((t (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face ((t (:inherit ,font-lock-comment-face))))
   `(web-mode-constant-face ((t (:inherit ,font-lock-constant-face))))
   `(web-mode-css-at-rule-face ((t (:foreground ,ao-zenburn-orange ))))
   `(web-mode-css-prop-face ((t (:foreground ,ao-zenburn-orange))))
   `(web-mode-css-pseudo-class-face ((t (:foreground ,ao-zenburn-green+3 :weight bold))))
   `(web-mode-css-rule-face ((t (:foreground ,ao-zenburn-blue))))
   `(web-mode-doctype-face ((t (:inherit ,font-lock-comment-face))))
   `(web-mode-folded-face ((t (:underline t))))
   `(web-mode-function-name-face ((t (:foreground ,ao-zenburn-blue))))
   `(web-mode-html-attr-name-face ((t (:foreground ,ao-zenburn-orange))))
   `(web-mode-html-attr-value-face ((t (:inherit ,font-lock-string-face))))
   `(web-mode-html-tag-face ((t (:foreground ,ao-zenburn-cyan))))
   `(web-mode-keyword-face ((t (:inherit ,font-lock-keyword-face))))
   `(web-mode-preprocessor-face ((t (:inherit ,font-lock-preprocessor-face))))
   `(web-mode-string-face ((t (:inherit ,font-lock-string-face))))
   `(web-mode-type-face ((t (:inherit ,font-lock-type-face))))
   `(web-mode-variable-name-face ((t (:inherit ,font-lock-variable-name-face))))
   `(web-mode-server-background-face ((t (:background ,ao-zenburn-bg))))
   `(web-mode-server-comment-face ((t (:inherit web-mode-comment-face))))
   `(web-mode-server-string-face ((t (:inherit web-mode-string-face))))
   `(web-mode-symbol-face ((t (:inherit font-lock-constant-face))))
   `(web-mode-warning-face ((t (:inherit font-lock-warning-face))))
   `(web-mode-whitespaces-face ((t (:background ,ao-zenburn-red))))
;;;;; whitespace-mode
   `(whitespace-space ((t (:background ,ao-zenburn-bg+1 :foreground ,ao-zenburn-bg+1))))
   `(whitespace-hspace ((t (:background ,ao-zenburn-bg+1 :foreground ,ao-zenburn-bg+1))))
   `(whitespace-tab ((t (:background ,ao-zenburn-red-1))))
   `(whitespace-newline ((t (:foreground ,ao-zenburn-bg+1))))
   `(whitespace-trailing ((t (:background ,ao-zenburn-red))))
   `(whitespace-line ((t (:background ,ao-zenburn-bg :foreground ,ao-zenburn-magenta))))
   `(whitespace-space-before-tab ((t (:background ,ao-zenburn-orange :foreground ,ao-zenburn-orange))))
   `(whitespace-indentation ((t (:background ,ao-zenburn-yellow :foreground ,ao-zenburn-red))))
   `(whitespace-empty ((t (:background ,ao-zenburn-yellow))))
   `(whitespace-space-after-tab ((t (:background ,ao-zenburn-yellow :foreground ,ao-zenburn-red))))
;;;;; wanderlust
   `(wl-highlight-folder-few-face ((t (:foreground ,ao-zenburn-red-2))))
   `(wl-highlight-folder-many-face ((t (:foreground ,ao-zenburn-red-1))))
   `(wl-highlight-folder-path-face ((t (:foreground ,ao-zenburn-orange))))
   `(wl-highlight-folder-unread-face ((t (:foreground ,ao-zenburn-blue))))
   `(wl-highlight-folder-zero-face ((t (:foreground ,ao-zenburn-fg))))
   `(wl-highlight-folder-unknown-face ((t (:foreground ,ao-zenburn-blue))))
   `(wl-highlight-message-citation-header ((t (:foreground ,ao-zenburn-red-1))))
   `(wl-highlight-message-cited-text-1 ((t (:foreground ,ao-zenburn-red))))
   `(wl-highlight-message-cited-text-2 ((t (:foreground ,ao-zenburn-green+2))))
   `(wl-highlight-message-cited-text-3 ((t (:foreground ,ao-zenburn-blue))))
   `(wl-highlight-message-cited-text-4 ((t (:foreground ,ao-zenburn-blue+1))))
   `(wl-highlight-message-header-contents-face ((t (:foreground ,ao-zenburn-green))))
   `(wl-highlight-message-headers-face ((t (:foreground ,ao-zenburn-red+1))))
   `(wl-highlight-message-important-header-contents ((t (:foreground ,ao-zenburn-green+2))))
   `(wl-highlight-message-header-contents ((t (:foreground ,ao-zenburn-green+1))))
   `(wl-highlight-message-important-header-contents2 ((t (:foreground ,ao-zenburn-green+2))))
   `(wl-highlight-message-signature ((t (:foreground ,ao-zenburn-green))))
   `(wl-highlight-message-unimportant-header-contents ((t (:foreground ,ao-zenburn-fg))))
   `(wl-highlight-summary-answered-face ((t (:foreground ,ao-zenburn-blue))))
   `(wl-highlight-summary-disposed-face ((t (:foreground ,ao-zenburn-fg
                                                         :slant italic))))
   `(wl-highlight-summary-new-face ((t (:foreground ,ao-zenburn-blue))))
   `(wl-highlight-summary-normal-face ((t (:foreground ,ao-zenburn-fg))))
   `(wl-highlight-summary-thread-top-face ((t (:foreground ,ao-zenburn-yellow))))
   `(wl-highlight-thread-indent-face ((t (:foreground ,ao-zenburn-magenta))))
   `(wl-highlight-summary-refiled-face ((t (:foreground ,ao-zenburn-fg))))
   `(wl-highlight-summary-displaying-face ((t (:underline t :weight bold))))
;;;;; which-func-mode
   `(which-func ((t (:foreground ,ao-zenburn-green+4))))
;;;;; yascroll
   `(yascroll:thumb-text-area ((t (:background ,ao-zenburn-bg-1))))
   `(yascroll:thumb-fringe ((t (:background ,ao-zenburn-bg-1 :foreground ,ao-zenburn-bg-1))))
   ))

;;; Theme Variables
(ao-zenburn-with-color-variables
  (custom-theme-set-variables
   'ao-zenburn
;;;;; ansi-color
   `(ansi-color-names-vector [,ao-zenburn-bg ,ao-zenburn-red ,ao-zenburn-green ,ao-zenburn-yellow
                                          ,ao-zenburn-blue ,ao-zenburn-magenta ,ao-zenburn-cyan ,ao-zenburn-fg])
;;;;; fill-column-indicator
   `(fci-rule-color ,ao-zenburn-bg-05)
;;;;; vc-annotate
   `(vc-annotate-color-map
     '(( 20. . ,ao-zenburn-red-1)
       ( 40. . ,ao-zenburn-red)
       ( 60. . ,ao-zenburn-orange)
       ( 80. . ,ao-zenburn-yellow-2)
       (100. . ,ao-zenburn-yellow-1)
       (120. . ,ao-zenburn-yellow)
       (140. . ,ao-zenburn-green-1)
       (160. . ,ao-zenburn-green)
       (180. . ,ao-zenburn-green+1)
       (200. . ,ao-zenburn-green+2)
       (220. . ,ao-zenburn-green+3)
       (240. . ,ao-zenburn-green+4)
       (260. . ,ao-zenburn-cyan)
       (280. . ,ao-zenburn-blue-2)
       (300. . ,ao-zenburn-blue-1)
       (320. . ,ao-zenburn-blue)
       (340. . ,ao-zenburn-blue+1)
       (360. . ,ao-zenburn-magenta)))
   `(vc-annotate-very-old-color ,ao-zenburn-magenta)
   `(vc-annotate-background ,ao-zenburn-bg-1)
   ))

;;; Rainbow Support

(declare-function rainbow-mode 'rainbow-mode)
(declare-function rainbow-colorize-by-assoc 'rainbow-mode)

(defvar ao-zenburn-add-font-lock-keywords nil
  "Whether to add font-lock keywords for ao-zenburn color names.
In buffers visiting library `ao-zenburn-theme.el' the ao-zenburn
specific keywords are always added.  In all other Emacs-Lisp
buffers this variable controls whether this should be done.
This requires library `rainbow-mode'.")

(defvar ao-zenburn-colors-font-lock-keywords nil)

;; (defadvice rainbow-turn-on (after ao-zenburn activate)
;;   "Maybe also add font-lock keywords for ao-zenburn colors."
;;   (when (and (derived-mode-p 'emacs-lisp-mode)
;;              (or ao-zenburn-add-font-lock-keywords
;;                  (equal (file-name-nondirectory (buffer-file-name))
;;                         "ao-zenburn-theme.el")))
;;     (unless ao-zenburn-colors-font-lock-keywords
;;       (setq ao-zenburn-colors-font-lock-keywords
;;             `((,(regexp-opt (mapcar 'car ao-zenburn-colors-alist) 'words)
;;                (0 (rainbow-colorize-by-assoc ao-zenburn-colors-alist))))))
;;     (font-lock-add-keywords nil ao-zenburn-colors-font-lock-keywords)))

;; (defadvice rainbow-turn-off (after ao-zenburn activate)
;;   "Also remove font-lock keywords for ao-zenburn colors."
;;   (font-lock-remove-keywords nil ao-zenburn-colors-font-lock-keywords))

;;; Footer

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'ao-zenburn)

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (require 'rainbow-mode nil t) (rainbow-mode 1))
;; End:
;;; ao-zenburn-theme.el ends here
