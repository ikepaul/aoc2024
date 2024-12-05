# Experimental!
Input ← &fras "./input.txt"
Test  ← &fras "./test.txt"

SplitOnChars ← ⊜□ ¬ ∈ ⊙.

Rules ← ⊜(⊜⋕ ¬ ∈ "|" .) ¬ ∈ "\r\n" . °□ ⊢
Pages ← ⊜(□ ⊜⋕ ¬ ∈ "," .) ¬ ∈ "\r\n" . °□ ⊣
Parse ← ⊃Pages (¤ ⍉ Rules) ⊜□ ¬ ⦷ "\n\n" .

Collisions         ← ≡(/+∈⊃(▽ = ⊙⊃⊢⊣ ⊡)(↙))⊙⊙¤ ⇡ ⊃⧻¤
IsValid            ← =0 /+ Collisions
CreateValidityMask ← ≡(IsValid°□)
GetMiddleElement   ← ⊡⌊ ÷2⧻.

PartOne ← /+≡(GetMiddleElement°□) ▽ : ⊙CreateValidityMask .

GetInvalids ← ▽ : ⊙(¬ CreateValidityMask) .

# FixOrdering: Do-loop that only ends once page is valid
# Would run forever if it encounters a page that cannot be ordered
TryOrder    ← ⊏⍖ ⊃Collisions∘
FixOrdering ← ⊙◌ ⍢(: ⊙(TryOrder) ,|>0 /+ Collisions)
PartTwo     ← /+≡(GetMiddleElement°□) ≡(□ FixOrdering °□) : ⊙(GetInvalids) ,

⊃PartOne PartTwo Parse Test
