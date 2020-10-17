;;; bbdb-vcard-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "bbdb-vcard" "bbdb-vcard.el" (0 0 0 0))
;;; Generated autoloads from bbdb-vcard.el

(autoload 'bbdb-vcard-import-region "bbdb-vcard" "\
Import the vCards between BEGIN and END into BBDB.
Existing BBDB records may be altered.

\(fn BEGIN END &optional SOURCE-NAME)" t nil)

(autoload 'bbdb-vcard-import-buffer "bbdb-vcard" "\
Import vCards from VCARD-BUFFER into BBDB.
Existing BBDB records may be altered.

\(fn VCARD-BUFFER)" t nil)

(autoload 'bbdb-vcard-import-file "bbdb-vcard" "\
Import vCards from VCARD-FILE into BBDB.
If VCARD-FILE is a wildcard, import each matching file.  Existing BBDB
records may be altered.

\(fn VCARD-FILE)" t nil)

(autoload 'bbdb-vcard-export "bbdb-vcard" "\
From Buffer *BBDB*, write one or more record(s) as vCard(s) to file(s).
\\<bbdb-mode-map>If \"\\[bbdb-apply-next-command-to-all-records]\\[bbdb-vcard-export]\"is used instead of simply \"\\[bbdb-vcard-export]\", then export all records currently
in the *BBDB* buffer.  If used with prefix argument, store records
in individual files.

\(fn FILENAME-OR-DIRECTORY ALL-RECORDS-P ONE-FILE-PER-RECORD-P &optional ALLOW-OVERWRITE)" t nil)

(autoload 'bbdb-vcard-export-to-kill-ring "bbdb-vcard" "\
From Buffer *BBDB*, copy one or more record(s) as vCard(s) to the kill ring.
\\<bbdb-mode-map>If \"\\[bbdb-apply-next-command-to-all-records]\\[bbdb-vcard-export-to-kill-ring]\"is used instead of simply \"\\[bbdb-vcard-export-to-kill-ring]\", then export all records currently in
the *BBDB* buffer.

\(fn ALL-RECORDS-P)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "bbdb-vcard" '("bbdb-")))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; bbdb-vcard-autoloads.el ends here
