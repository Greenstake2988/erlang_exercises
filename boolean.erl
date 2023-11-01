-module(boolean).
-compile(export_all).


b_not(false) -> true;
b_not(true) -> false.

b_and(false, true) -> false;
b_and(true, false) -> false;
b_and(false, false) -> false;
b_and(true, true) -> true.



