;;; packages.el --- unscroll Layer packages File for Spacemacs
;;
;; Copyright (c) 2012-2014 Sylvain Benner
;; Copyright (c) 2014-2015 Sylvain Benner & Contributors
;;
;; Author: Adam Olsen <arolsen@gmail.com>
;; URL: https://github.com/synic/dotfiles
;;
;; NOTE: This layer was created using Chaper 2 of
;; "Writing GNU Emacs Extensions" from O'Reilly
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq unscroll-packages
    '(
      ;; package names go here
      ))

;; List of packages to exclude.
(setq unscroll-excluded-packages '())

(defvar unscroll-point (make-marker)
  "Cursor position for next call to `unscroll'.")
(defvar unscroll-window-start (make-marker)
  "Window start for next call to `unscroll'.")
(defvar unscroll-hscroll nil
  "Hscroll for next call to `unscroll'.")

;; Add the `unscrollable' property to the scroll functions
(put 'scroll-up 'unscrollable t)
(put 'scroll-down 'unscrollable t)
(put 'scroll-left 'unscrollable t)
(put 'scroll-right 'unscrollable t)

;; evil scrolling
(put 'evil-scroll-page-down 'unscrollable t)
(put 'evil-scroll-page-up 'unscrollable t)
(put 'evil-scroll-down 'unscrollable t)
(put 'evil-scroll-up 'unscrollable t)
(put 'evil-scroll-right 'unscrollable t)
(put 'evil-scroll-left 'unscrollable t)
(put 'evil-scroll-bottom-line-to-top 'unscrollable t)
(put 'evil-scroll-column-left 'unscrollable t)
(put 'evil-scroll-column-right 'unscrollable t)
(put 'evil-scroll-line-to-center 'unscrollable t)
(put 'evil-scroll-line-to-top 'unscrollable t)
(put 'evil-scroll-line-to-bottom 'unscrollable t)

(put 'evil-goto-line 'unscrollable t)
(put 'evil-goto-mark 'unscrollable t)
(put 'evil-goto-mark-line 'unscrollable t)
(put 'evil-goto-first-line 'unscrollable t)
(put 'mac-mwheel-scroll 'unscrollable t)

(defun unscroll/maybe-remember ()
  "Save window scroll position for `unscroll'."
  (if (not (get last-command 'unscrollable))
      (progn
        (set-marker unscroll-point (point))
        (set-marker unscroll-window-start (window-start))
        (setq unscroll-hscroll (window-hscroll)))))

(defun unscroll/unscroll ()
  "Revert to `unscroll-point' and `unscroll-window-start'."
  (interactive)
  (goto-char unscroll-point)
  (set-window-start nil unscroll-window-start)
  (set-window-hscroll nil unscroll-hscroll))

(defadvice scroll-up (before remember-for-unscroll
                                activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice scroll-down (before remember-for-unscroll
                                activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice scroll-right (before remember-for-unscroll
                                activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice scroll-left (before remember-for-unscroll
                             activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice evil-scroll-page-down (before remember-for-unscroll
                               activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice evil-scroll-page-up (before remember-for-unscroll
                               activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice evil-scroll-down (before remember-for-unscroll
                               activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice evil-scroll-up (before remember-for-unscroll
                               activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice evil-scroll-right (before remember-for-unscroll
                               activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice evil-scroll-left (before remember-for-unscroll
                               activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice evil-scroll-bottom-line-to-top (before remember-for-unscroll
                               activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice evil-scroll-column-left (before remember-for-unscroll
                               activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice evil-scroll-column-right (before remember-for-unscroll
                               activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice evil-scroll-line-to-center (before remember-for-unscroll
                               activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice evil-scroll-line-to-top (before remember-for-unscroll
                               activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice evil-scroll-line-to-bottom (before remember-for-unscroll
                               activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice evil-goto-line (before remember-for-unscroll
                                              activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice evil-goto-mark (before remember-for-unscroll
                                              activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice evil-goto-mark-line (before remember-for-unscroll
                                              activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice evil-goto-first-line (before remember-for-unscroll
                                              activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defadvice mac-mwheel-scroll (before remember-for-unscroll
                                              activate compile)
  "Remember where we started from, for `unscroll'."
  (unscroll/maybe-remember))

(defun unscroll/init-unscroll()
  )
