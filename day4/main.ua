# Experimental!
Input ← &fras "./input.txt"
Test  ← &fras "./test.txt"

SplitOnChars ← ⊜□ ¬ ∈ ⊙.

Parse ← SplitOnChars "\r\n"

CaseNtoS   ← ≡≡(≍ "XMAS") ∵(⊂⊂⊂) ⊃⊃⊃∘(⬚@ ↻1)(⬚@ ↻2)(⬚@ ↻3)
CaseStoN   ← ≡≡(≍ "XMAS") ∵(⊂⊂⊂) ⊃⊃⊃∘(⬚@ ↻¯ 1)(⬚@ ↻¯ 2)(⬚@ ↻¯ 3)
CaseWtoE   ← ≡≡(≍ "XMAS") ∵(⊂⊂⊂) ⊃⊃⊃∘(≡⬚@ ↻1)(≡⬚@ ↻2)(≡⬚@ ↻3)
CaseEtoW   ← ≡≡(≍ "XMAS") ∵(⊂⊂⊂) ⊃⊃⊃∘(≡⬚@ ↻¯ 1)(≡⬚@ ↻¯ 2)(≡⬚@ ↻¯ 3)
CaseNWtoSE ← ≡≡(≍ "XMAS") ∵(⊂⊂⊂) ⊃⊃⊃∘(≡⬚@ ↻1 ⬚@ ↻1)(≡⬚@ ↻2 ⬚@ ↻2)(≡⬚@ ↻3 ⬚@ ↻3)
CaseSEtoNW ← ≡≡(≍ "XMAS") ∵(⊂⊂⊂) ⊃⊃⊃∘(≡⬚@ ↻¯ 1 ⬚@ ↻¯ 1)(≡⬚@ ↻¯ 2 ⬚@ ↻¯ 2)(≡⬚@ ↻¯ 3 ⬚@ ↻¯ 3)
CaseNEtoSW ← ≡≡(≍ "XMAS") ∵(⊂⊂⊂) ⊃⊃⊃∘(≡⬚@ ↻¯ 1 ⬚@ ↻1)(≡⬚@ ↻¯ 2 ⬚@ ↻2)(≡⬚@ ↻¯ 3 ⬚@ ↻3)
CaseSWtoNE ← ≡≡(≍ "XMAS") ∵(⊂⊂⊂) ⊃⊃⊃∘(≡⬚@ ↻1 ⬚@ ↻¯ 1)(≡⬚@ ↻2 ⬚@ ↻¯ 2)(≡⬚@ ↻3 ⬚@ ↻¯ 3)

PartOne ← /+ /+ /+ [⊃⊃⊃⊃⊃⊃⊃⊃CaseNtoS CaseStoN CaseWtoE CaseEtoW CaseNWtoSE CaseSEtoNW CaseNEtoSW CaseSWtoNE]

XSEtoNW ← ≡≡(≍ "MAS") ∵(⊂⊂) ⊃⊃(≡⬚@ ↻1 ⬚@ ↻1)∘(≡⬚@ ↻¯ 1 ⬚@ ↻¯ 1)
XNWtoSE ← ≡≡(≍ "MAS") ∵(⊂⊂) ⊃⊃(≡⬚@ ↻¯ 1 ⬚@ ↻¯ 1)∘(≡⬚@ ↻1 ⬚@ ↻ 1)
XSWtoNE ← ≡≡(≍ "MAS") ∵(⊂⊂) ⊃⊃(≡⬚@ ↻¯ 1 ⬚@ ↻1)∘(≡⬚@ ↻1 ⬚@ ↻¯ 1)
XNEtoSW ← ≡≡(≍ "MAS") ∵(⊂⊂) ⊃⊃(≡⬚@ ↻1 ⬚@ ↻¯ 1)∘(≡⬚@ ↻¯ 1 ⬚@ ↻1)

PartTwo ← /+ /+ =2/+ [⊃⊃⊃XSWtoNE XSEtoNW XNEtoSW XNWtoSE]

≡°□ Parse Test

⊃PartOne PartTwo
