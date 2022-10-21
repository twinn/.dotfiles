;; tw-custom.el --- Custom workflows

;; Author: Tony Winn

(require 'org)

(defun org-sort-parent ()
  (interactive)
  (outline-up-heading 1)
  (org-sort-entries nil ?O)
  (outline-hide-leaves)
)
(spacemacs/set-leader-keys-for-major-mode 'org-mode "S" 'org-sort-parent)

(require 'quickurl)

(defun quickurl-copy-url-ask (lookup)
  "Copy the URL, with `completing-read' prompt, associated with LOOKUP."
  (interactive (list
                (progn
                  (quickurl-load-urls)
                  (completing-read "Browse: " quickurl-urls nil t))))
  (let ((url (quickurl-find-url lookup)))
    (when url
      (kill-new (quickurl-url-url url)))))

(spacemacs/set-leader-keys "atqc" 'quickurl-copy-url-ask)

(provide 'tw-custom)
