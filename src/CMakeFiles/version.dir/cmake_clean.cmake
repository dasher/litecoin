FILE(REMOVE_RECURSE
  "build.h"
  "CMakeFiles/version.dir/version.cpp.o"
  "../lib/libversion.pdb"
  "../lib/libversion.a"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang CXX)
  INCLUDE(CMakeFiles/version.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
