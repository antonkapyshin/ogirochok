## What is this?

This is very tiny testing framework in SML.

## Examples

In REPL:

```sml
Standard ML of New Jersey v110.78 [built: Thu Jul 23 11:21:58 2015]
[opening ogirochok.sml]
ogirochok.sml:30.39-30.41 Warning: calling polyEqual
ogirochok.sml:26.39 Warning: calling polyEqual
signature OGIROCHOK =
  sig
    val assertEqual : string * ''a * ''a -> bool
    val assertNotEqual : string * ''a * ''a -> bool
  end
structure Ogirochok : OGIROCHOK
- Ogirochok.assertEqual("two is equal to two", 2, 2);
OK: two is equal to two
val it = true : bool
- Ogirochok.assertEqual("two is equal to one", 2, 1);
FAIL: two is equal to one
val it = false : bool
```

In source code:

```sml
val test_assertNotEqual_1_and_2 = Ogirochok.assertNotEqual("1 and 2", 1, 2)
val test_assertNotEqual_2_and_1 = Ogirochok.assertNotEqual("2 and 1", 2, 1)
```