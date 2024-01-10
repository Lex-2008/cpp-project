# SPDX-FileCopyrightText: Copyright 2023 Mikhail Svetkin
# SPDX-License-Identifier: MIT

add_p1_module(m1)

target_sources(${p1_module_target} PRIVATE
  include/p1/m1/h1.hpp
  src/h1.cpp)
