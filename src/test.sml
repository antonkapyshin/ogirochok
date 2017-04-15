val () = Ogirochok.main([
    Ogirochok.assertEqual("1 = 1", 1, 1),
    Ogirochok.assertNotEqual("1 <> 2", 1, 2),
    Ogirochok.assertNotEqual("2 <> 1", 2, 1),
    Ogirochok.assertEqual("'some' = 'some'", "some", "some"),
    Ogirochok.assertNotEqual("'some' <> 'another'", "some", "another"),
    Ogirochok.assertNotEqual("'another' <> 'some'", "another", "some"),
    Ogirochok.assertEqual("[] = []", [], []),
    Ogirochok.assertEqual("[1, 2] = [1, 2]", [1, 2], [1, 2]),
    Ogirochok.assertNotEqual("[] <> [1, 2]", [], [1, 2]),
    Ogirochok.assertNotEqual("[1, 2] <> []", [1, 2], []),
    Ogirochok.assertNotEqual("[1, 2] <> [1, 3]", [1, 2], [1, 3]),
    Ogirochok.assertNotEqual("[1, 2] <> [1, 2, 3]", [1, 2], [1, 2, 3]),
    Ogirochok.assertNotEqual("[1, 2] <> [3, 4]", [1, 2], [3, 4])
])
