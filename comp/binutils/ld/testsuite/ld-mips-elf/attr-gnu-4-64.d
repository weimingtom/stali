#source: attr-gnu-4-6.s
#source: attr-gnu-4-4.s -W -mips32r2
#ld: -r
#error: \A[^\n]*: Warning: .* uses -mgp32 -mfp64 \(set by .*\), .* uses -mips32r2 -mfp64 \(12 callee-saved\)\n
#error:   [^\n]*: [^\n]* linking -mfp64 module with previous -mfp32 modules\n
#error:   [^\n]*: failed to merge target specific data of file [^\n]*\.o\Z
