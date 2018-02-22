open OUnit2
open Vector2f

let test_vector2f_length test_ctxt =
  assert_equal 5. (length {x = 3.; y = 4.});
  assert_equal 13. (length {x = 5.; y = 12.})

let test_vector2f_normalised test_ctxt =
  assert_equal {x = 1.; y = 0.} (normalised {x = 2.; y = 0.});
  assert_equal {x = 0.; y = 1.} (normalised {x = 0.; y = 2.})

let suite =
  "test_vecmath" >:::
    [
      "test_vector2f" >:::
      [
        "test_vector2f_length" >:: test_vector2f_length;
        "test_vector2f_normalised" >:: test_vector2f_normalised;
      ]
    ]
