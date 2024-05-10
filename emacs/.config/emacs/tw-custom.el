;; tw-custom.el --- Custom workflows

;; Author: Tony Winn

(require 'org)
(require 'dash)

(defun org-sort-parent ()
  "Sort entries by reverse todo state > priority > scheduled time"
  (interactive)
  (outline-up-heading 1)
  (org-sort-entries nil ?s)
  (org-sort-entries nil ?p)
  (org-sort-entries nil ?O)
  (outline-hide-leaves)
)
(spacemacs/set-leader-keys-for-major-mode 'org-mode "S" 'org-sort-parent)

(spacemacs/set-leader-keys-for-major-mode 'elixir-mode "tt" 'exunit-verify-single)
(spacemacs/set-leader-keys-for-major-mode 'elixir-mode "tr" 'exunit-rerun)
(spacemacs/set-leader-keys-for-major-mode 'elixir-mode "ta" 'exunit-verify-all)
(spacemacs/set-leader-keys-for-major-mode 'elixir-mode "tb" 'exunit-verify)
(provide 'tw-custom)
