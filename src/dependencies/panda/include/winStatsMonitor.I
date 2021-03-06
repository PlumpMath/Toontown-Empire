// Filename: winStatsMonitor.I
// Created by:  drose (09Jan04)
//
////////////////////////////////////////////////////////////////////
//
// PANDA 3D SOFTWARE
// Copyright (c) Carnegie Mellon University.  All rights reserved.
//
// All use of this software is subject to the terms of the revised BSD
// license.  You should have received a copy of this license along
// with this source code in a file named "LICENSE."
//
////////////////////////////////////////////////////////////////////


////////////////////////////////////////////////////////////////////
//     Function: WinStatsMonitor::MenuDef::Constructor
//       Access: Public
//  Description:
////////////////////////////////////////////////////////////////////
WinStatsMonitor::MenuDef::
MenuDef(int thread_index, int collector_index, bool show_level) :
  _thread_index(thread_index),
  _collector_index(collector_index),
  _show_level(show_level)
{
}

////////////////////////////////////////////////////////////////////
//     Function: WinStatsMonitor::MenuDef::operator <
//       Access: Public
//  Description:
////////////////////////////////////////////////////////////////////
bool WinStatsMonitor::MenuDef::
operator < (const MenuDef &other) const {
  if (_thread_index != other._thread_index) {
    return _thread_index < other._thread_index;
  }
  if (_collector_index != other._collector_index) {
    return _collector_index < other._collector_index;
  }
  return (int)_show_level < (int)other._show_level;
}
