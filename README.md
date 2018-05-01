Introduction
============

This is a workaround for making _Divinity: Original Sin_ (DOS) run in
Linux distributions with recent MESA versions.

Fundamentally, it is a kludge for a wrong assumption inside DOS around
the OpenGL `glXGetProcAddressARB()` call. What we do is inject a
custom version of `glXGetProcAddressARB()` that allows DOS to run.

This fixed the issue for me in an up-to-date Fedora 27 with an AMD RX570.

Brief instructions
==================

 1. Build our simple DLL with the new `glXGetProcAddressARB()`:<br/>
    `make`
 2. Modify `runner.sh` to point to the location of the generated `divos-hack.so` file
 3. Copy `runner.sh` into the Divinity OS installation folder inside Steam, replacing the original one:<br/>
    `~/.local/share/Steam/steamapps/common/Divinity Original Sin Enhanced Edition`

References
==========

 *  <https://gist.github.com/romanoaugusto88/eb6a2598fb10d1468da6f4497b0fa2de#file-divos-hack-c-L27>
 *  <https://wiki.archlinux.org/index.php/Divinity:_Original_Sin_EE_-_GoG>