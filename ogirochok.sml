signature OGIROCHOK =
sig
    val assertEqual: string * ''a * ''a -> bool
    val assertNotEqual: string * ''a * ''a -> bool
end


structure Ogirochok :> OGIROCHOK =
struct
    fun testSomething(description, result) =
        (print((if result then "OK: " else "FAIL: ") ^ description ^ "\n");
        result)

    fun assertEqual(description, got, expected) =
        testSomething(description, got = expected)

    fun assertNotEqual(description, got, expected) =
        testSomething(description, got <> expected)
end