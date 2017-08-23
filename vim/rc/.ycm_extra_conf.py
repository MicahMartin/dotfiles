import os
import ycm_core

flags = [
  '-Wall',
  '-xc',
  '-isystem/usr/include/',
  'c',
  '-isystem',
  '../llvm/include',
  '-isystem',
  '../llvm/tools/clang/include',
  '-I./driver',
  '-I./debug',
  '-I./include',
  ]

SOURCE_EXTENSIONS = [ '.cpp', '.cxx', '.cc', '.c', ]

def FlagsForFile( filename, **kwargs ):
  return {
  'flags': flags,
  'do_cache': True
  }
