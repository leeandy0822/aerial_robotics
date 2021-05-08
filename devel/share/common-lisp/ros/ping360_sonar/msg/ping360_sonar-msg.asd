
(cl:in-package :asdf)

(defsystem "ping360_sonar-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "SonarEcho" :depends-on ("_package_SonarEcho"))
    (:file "_package_SonarEcho" :depends-on ("_package"))
  ))