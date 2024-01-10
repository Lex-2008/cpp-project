# SPDX-FileCopyrightText: Copyright 2023 Mikhail Svetkin
# SPDX-License-Identifier: MIT

add_p1_executable(cli)

target_sources(${p1_executable_target} PRIVATE src/main.cpp)

target_link_libraries(${p1_executable_target}
  PRIVATE
    p1::m1
)
