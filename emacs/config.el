(defvar *emacs-load-start* (current-time))
(defun anarcat/time-to-ms (time)
  (+ (* (+ (* (car time) (expt 2 16)) (car (cdr time))) 1000000) (car (cdr (cdr time)))))
(defun anarcat/display-timing ()
  (message ".emacs loaded in %fms" (/ (- (anarcat/time-to-ms (current-time)) (anarcat/time-to-ms *emacs-load-start*)) 1000000.0)))
(add-hook 'after-init-hook 'anarcat/display-timing t)

(setq inhibit-startup-echo-area-message "llaw")

(fset 'yes-or-no-p 'y-or-n-p)

(setq show-paren-mode t)
(setq show-paren-delay 0)
(setq show-paren-highlight-openparen t)
(setq show-paren-when-point-in-periphery t)
(setq show-paren-when-point-inside-paren t)

(use-package company
  :ensure t
  :delight
  :config
  ;; (add-hook 'after-init-hook 'global-company-mode))
  (setq company-idle-delay 0.1)
  (add-hook 'python-mode-hook 'company-mode)
  )

(setq truncate-lines t)

(use-package zenburn-theme
  :ensure t)

(use-package color-theme-sanityinc-tomorrow
  :ensure t
  :config
  (load-theme 'sanityinc-tomorrow-night t)
  )

(server-start)
