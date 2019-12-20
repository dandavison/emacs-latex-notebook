;; -*- lexical-binding: t -*-

(ert-deftest xenops-util-first-index ()
  (should (equal (xenops-util-first-index '(nil))
                 nil))
  (should (equal (xenops-util-first-index '(nil))
                 nil))
  (should (equal (xenops-util-first-index '(1))
                 0))
  (should (equal (xenops-util-first-index '(nil 1))
                 1))
  (should (equal (xenops-util-first-index '(1 nil))
                 0))
  (should (equal (xenops-util-first-index '(nil nil 0 t))
                 2)))

(ert-deftest xenops-util-svg-resize ()
  (should (equal (xenops-util-svg-resize
                  "
<?xml version='1.0' encoding='UTF-8'?>
<!-- This file was generated by dvisvgm 2.3.5 -->
<svg height='1.5pt' version='1.1' viewBox='193.768781 -16.31816 198.93387 32.409891' width='2.5pt' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'>
</svg>" 2)
                 "
<?xml version='1.0' encoding='UTF-8'?>
<!-- This file was generated by dvisvgm 2.3.5 -->
<svg height='3.000000pt' version='1.1' viewBox='193.768781 -16.31816 198.93387 32.409891' width='5.000000pt' xmlns='http://www.w3.org/2000/svg' xmlns:xlink='http://www.w3.org/1999/xlink'>
</svg>")))

(ert-deftest xenops-util-svg-parse-length-or-percent ()
  (should (equal (xenops-util-svg-parse-length-or-percent "1.2pt")
                 '(1.2 . "pt")))
  (should (equal (xenops-util-svg-parse-length-or-percent "1.2%")
                 '(1.2 . "%")))
  (should (equal (xenops-util-svg-parse-length-or-percent "1pt")
                 '(1 . "pt")))
  (should (equal (xenops-util-svg-parse-length-or-percent "1%")
                 '(1 . "%"))))
