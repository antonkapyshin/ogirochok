val () = Ogirochok.main([
    Ogirochok.assertEqual("1 and 1", 1, 1),
    Ogirochok.assertNotEqual("1 and 2", 1, 2),
    Ogirochok.assertNotEqual("2 and 1", 2, 1),
    Ogirochok.assertEqual("'some' and 'some'", "some", "some"),
    Ogirochok.assertNotEqual("'some' and 'another'", "some", "another"),
    Ogirochok.assertNotEqual("'another' and 'some'", "another", "some"),
    Ogirochok.assertEqual("[] and []", [], []),
    Ogirochok.assertEqual("[1, 2] and [1, 2]", [1, 2], [1, 2]),
    Ogirochok.assertNotEqual("[] and [1, 2]", [], [1, 2]),
    Ogirochok.assertNotEqual("[1, 2] and []", [1, 2], []),
    Ogirochok.assertNotEqual("[1, 2] and [1, 3]", [1, 2], [1, 3]),
    Ogirochok.assertNotEqual("[1, 2] and [1, 2, 3]", [1, 2], [1, 2, 3]),
    Ogirochok.assertNotEqual("[1, 2] and [3, 4]", [1, 2], [3, 4])
])
