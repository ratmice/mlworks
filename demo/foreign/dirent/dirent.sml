(* Copyright 2013 Ravenbrook Limited <http://www.ravenbrook.com/>.
 * All rights reserved.
 * 
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are
 * met:
 * 
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
 * IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
 * TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 * This file should be generated by a stub-generator from <dirent.h>
 * The current version has been written by hand.
 *
 * Revision Log
 * ------------
 * $Log: dirent.sml,v $
 * Revision 1.2  1997/07/03 10:11:09  stephenb
 * Automatic checkin:
 * changed attribute _comment to ' *  '
 *
 *)

require "$.basis.__word";


signature DIRENT =
  sig

    type DIR 
    type struct'dirent 

    eqtype off_t
    eqtype c_char
    eqtype c_int
    eqtype c_ushort
    eqtype c_long
    eqtype c_ulong
    eqtype 'a c_ptr

    val DIR'size' : Word.word
    val DIR'addr' : DIR -> DIR c_ptr

    (* timespec field addresses *)

    val DIR'dd_fd'addr : DIR -> c_int c_ptr

    val DIR'dd_loc'addr : DIR -> c_long c_ptr 

    val DIR'dd_size'addr : DIR -> c_long c_ptr

    val DIR'dd_bsize'addr : DIR -> c_long c_ptr 

    val DIR'dd_off'addr : DIR -> c_long c_ptr 

    val DIR'dd_buff'addr : DIR -> c_char c_ptr c_ptr 


    (* DIR field values *)

    val DIR'dd_fd : DIR -> c_int 
    
    val DIR'dd_loc : DIR -> c_long 

    val DIR'dd_size : DIR -> c_long 

    val DIR'dd_bsize : DIR -> c_long 

    val DIR'dd_off : DIR -> c_long

    val DIR'dd_buff : DIR -> c_char c_ptr 


    val struct'dirent'size' : Word.word
    val struct'dirent'addr' : struct'dirent -> struct'dirent c_ptr

    val struct'dirent'd_off'addr : struct'dirent -> off_t c_ptr

    val struct'dirent'd_fileno'addr : struct'dirent -> c_ulong c_ptr

    val struct'dirent'd_reclen'addr : struct'dirent -> c_ushort c_ptr

    val struct'dirent'd_namlen'addr : struct'dirent -> c_ushort c_ptr

    val struct'dirent'd_name'addr : struct'dirent -> c_char c_ptr

    val struct'dirent'd_off : struct'dirent -> c_long

    val struct'dirent'd_fileno : struct'dirent -> c_ulong

    val struct'dirent'd_reclen : struct'dirent -> c_ushort

    val struct'dirent'd_namlen : struct'dirent -> c_ushort

    val struct'dirent'd_name : struct'dirent -> c_char c_ptr

    val opendir : c_char c_ptr -> DIR c_ptr

    val readdir : DIR c_ptr -> struct'dirent c_ptr

    val telldir : DIR c_ptr -> c_long

    val seekdir : DIR c_ptr * c_long -> unit

    val rewinddir : DIR c_ptr -> unit

    val closedir : DIR c_ptr -> unit

  end
