(* In all assert functions:
 *  - description is a string that is printed after status
 *  - status is OK or FAIL
 *  - got is compared to expected
 *  - types of got and expected are the same *)


signature OGIROCHOK =
sig
    val assertEqual: string * ''a * ''a -> bool
    val assertNotEqual: string * ''a * ''a -> bool
    val assertTrue: string * bool -> bool
    val assert: string * bool -> bool
    val assertFalse: string * bool -> bool
    val main: bool list -> unit
end


structure Ogirochok :> OGIROCHOK =
struct
    fun reportResult(description, result) =
        let val msg = (if result then "OK: " else "FAIL: ") ^ description
        in
            print(msg ^ "\n");
            result
        end

    (* Check that got and expected are equal. *)
    fun assertEqual(description, got, expected) =
        reportResult("equal: " ^ description, got = expected)

    (* Check that got and expected are not equal. *)
    fun assertNotEqual(description, got, expected) =
        reportResult("not equal: " ^ description, got <> expected)

    fun assertTrue(description, got) =
        reportResult("true: " ^ description, got)

    (* Just an alias to assertTrue function. *)
    fun assert(description, got) =
        assertTrue(description, got)

    fun assertFalse(description, got) =
        reportResult("false: " ^ description, not (got))

    fun main [] = OS.Process.exit OS.Process.failure    (* No cases is strange. *)
      | main (results: bool list) =
        if List.exists (fn res => not res) results then
            OS.Process.exit OS.Process.failure
        else
            OS.Process.exit OS.Process.success    (* Success. *)
end
