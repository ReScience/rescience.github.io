---
layout: page
menutitle: PLATFORM 
permalink: /platform/
---

# Provide platform information

Submissions to ReScience come with code. We ask information about the platform that was used
to run the code, the detail depending on the tools and programming languages used.

This information will be included in the file `code/README.md` of the submission. Consider
the whole execution pipeline for your results for possible additional tools (e.g. Bash,
random number generator, etc).

## Version information for Python

For Python, NumPy, SciPy and matplotlib (common Python dependencies), the
following script will provide detailed information on your platform.
```py
from __future__ import print_function
import sys
import numpy as np
import scipy
import matplotlib
import platform

print("Platform:", sys.platform)
print("Python:", sys.version)
print("Machine and architecture", platform.machine(), *platform.architecture())
print("NumPy:", np.version.version)
print("SciPy:", scipy.version.version)
print("matplotlib:", matplotlib.__version__)
```

The output, for instance

```
Platform: linux
Python: 3.5.2+ (default, Sep 22 2016, 12:18:14) 
[GCC 6.2.0 20160914]
Machine and architecture x86_64 64bit ELF
NumPy: 1.12.0
SciPy: 0.18.1
matplotlib: 2.0.0
```

The version of any library that is not part of Python's standard library should also be
given.

## Version information for compiled languages

For compiled languages, the important information consists in the platform, the
compiler, its version, and the compiler flags.

Platform information:
```sh
uname -mosv
```

```
Linux #1 SMP Debian 3.16.7-ckt9-3 (2015-04-23) x86_64 GNU/Linux
```

Hardware information:
```sh
grep -E '(^model name|^vendor_id|^flags)' /proc/cpuinfo  | sort | uniq
```

```
flags           : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx rdtscp lm constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc aperfmperf eagerfpu pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm ida arat epb xsaveopt pln pts dtherm tpr_shadow vnmi flexpriority ept vpid fsgsbase smep erms
model name      : Intel(R) Core(TM) i5-3230M CPU @ 2.60GHz
vendor_id       : GenuineIntel
```

Compiler information for C:
```sh
gcc --version
```

```
gcc (Debian 6.2.0-5) 6.2.0 20160927
Copyright (C) 2016 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
```

with compilation flags ```-O3 -std=c99```.

The information is similar for C++, Fortran, etc.
