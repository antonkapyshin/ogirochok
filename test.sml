(* Testing with ints *)
val test_assertEqual_1_and_1 = Ogirochok.assertEqual("1 and 1", 1, 1) = true

val test_assertNotEqual_1_and_2 = Ogirochok.assertNotEqual("1 and 2", 1, 2) = true
val test_assertNotEqual_2_and_1 = Ogirochok.assertNotEqual("2 and 1", 2, 1) = true

(* Testing with strings *)

val test_assertEqual_'some'_and_'some' = Ogirochok.assertEqual("'some' and 'some'", "some", "some") = true

val test_assertNotEqual_'some'_and_'another' = Ogirochok.assertNotEqual("'some' and 'another'", "some", "another") = true
val test_assertNotEqual_'another'_and_'some' = Ogirochok.assertNotEqual("'another' and 'some'", "another", "some") = true

(* Testing with int lists and empty lists *)

val test_assertEqual_empty_list_and_empty_list = Ogirochok.assertEqual("[] and []", [], []) = true
val test_assertEqual_int_list_and_int_list = Ogirochok.assertEqual("[1, 2] and [1, 2]", [1, 2], [1, 2]) = true

val test_assertNotEqual_empty_list_and_int_list = Ogirochok.assertNotEqual("[] and [1, 2]", [], [1, 2]) = true
val test_assertNotEqual_int_list_and_empty_list = Ogirochok.assertNotEqual("[1, 2] and []", [1, 2], []) = true
val test_assertNotEqual_int_list_and_particular_same_int_list1 = Ogirochok.assertNotEqual("[1, 2] and [1, 3]", [1, 2], [1, 3]) = true
val test_assertNotEqual_int_list_and_particular_same_int_list2 = Ogirochok.assertNotEqual("[1, 2] and [1, 2, 3]", [1, 2], [1, 2, 3]) = true
val test_assertNotEqual_int_list_and_int_list = Ogirochok.assertNotEqual("[1, 2] and [3, 4]", [1, 2], [3, 4]) = true