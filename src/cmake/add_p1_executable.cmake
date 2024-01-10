# SPDX-FileCopyrightText: Copyright 2023 Mikhail Svetkin
# SPDX-License-Identifier: MIT

include_guard(GLOBAL)

include(set_p1_target_properties)

# sets all nessary default things
function(add_p1_executable executable_name)
  set(executable_target p1-${executable_name})

  add_executable(${executable_target} ${ARGN})
  set_p1_target_properties(${executable_target} PRIVATE)

  if (TARGET p1)
    install(TARGETS ${executable_target} EXPORT p1-targets)
  endif()

  set(p1_executable_target
      ${executable_target}
      PARENT_SCOPE
  )
endfunction()
