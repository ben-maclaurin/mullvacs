(require 'transient)

(defgroup mullvacs ()
  "Lightweight Mullvad porcelain for VPN management."
  :group 'applications)

(defun mullvacs--async-mullvacs-command (command)
  "Execute STRING Mullvad command asynchronously in background"
  (mullvacs--account-login)
  (async-shell-command (concat "mullvad " command)))

(provide 'mullvacs)
