open OUnit2

let base_suite =
  "base_suite" >:::
    [
      Test_vecmath.suite;
    ]

let _ = run_test_tt_main base_suite
