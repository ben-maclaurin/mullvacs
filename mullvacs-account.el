(require 'mullvacs)

(defgroup mullvacs-account nil
  "Manage your Mullvad account"
  :group 'mullvacs)

(defcustom mullvacs-account-number nil
  "Replace the number string with your Mullvad account number."
  :group 'mullvacs
  :type 'string)

(defun mullvacs--account-login ()
  "Set your Mullvacs account"
  (async-shell-command (concat "mullvad account login " mullvacs-account-number)))

;;;###autoload
(defun mullvacs-account-get ()
  (interactive)
  "This will show your account number, device name and the expiration date of your account."
  (mullvacs--async-mullvacs-command "account get"))

(defun mullvacs-account-list-devices ()
  (interactive)
  "List device names in the account"
  (mullvacs--async-mullvacs-command "account list-devices"))

(provide 'mullvacs-account)
