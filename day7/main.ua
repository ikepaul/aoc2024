# Experimental!
Input ← &fras "./input.txt"
Test  ← &fras "./test.txt"

SplitOnChars ← ⊜□ ¬ ∈ ⊙.

Parse ← ≡(□ ⊂ ⊃(⋕°□⊢)(≡(⋕ °□) SplitOnChars " " °□ ⊡1)) ↯∞_2 SplitOnChars ":\r\n"

Concat               ← ⋕ ⊂ ∩°⋕
TryOperations        ← ⊢ × >0 /+= ,◌ ≡(⍢(⊙(⊂⨬((/×)|(/+)|(/Concat))) ⊃(↘1)⊢ ⊙⊃(↙ 2)(↘ 2)|>1 ⧻ ◌)) ⊙¤
PartOne              ← /+ ≡(TryOperations ⋯ ⇡ ⁿ :2 -1 ⧻ . ⊃(↘1)⊢ °□)
GenerateCombinations ← ⍥(≡°□ ♭ ⊞(□⊂) [0 1 2]) : [0 1 2] -1

PartTwo ← /+ ≡(TryOperations GenerateCombinations-1 ⧻ . ⊃(↘1)⊢ °□)

Parse Input
PartTwo
