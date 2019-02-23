#|

Manoel Vilela & Lucas Vieira © 2019 MIT

Main usage should be defined as:

(ql:dist-apropos search-str)
(ql:subscribe dist-name)
(ql:unsubscribe dist-name)
(ql:purge dist-name)

|#

(in-package #:ql-meta)


(defparameter *dists*
  '((cl-bodge (:url "http://bodge.borodust.org/dist/org.borodust.bodge.txt"
               :replace t))
    (cl21     (:url "http://dists.cl21.org/cl21.txt")))
  "*DISTS* it's PLIST of distributions available in QL-META")


(defun get-dists-urls (&optional (dists *dists*))
  "GET-DISTS-URLS return the urls defined in *DISTS*"
  (loop for (key plist) in dists
        collect (getf plist :url)))


(defun get-dists-names (&optional (dists *dists*))
  "GET-DISTS-NAMES return the urls defined in *DISTS*"
  (loop for (key plist) in dists
        collect key))
