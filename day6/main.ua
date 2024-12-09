# Experimental!
Input ← &fras "./input.txt"
Test  ← &fras "./test.txt"

SplitOnChars ← ⊜□ ¬ ∈ ⊙.

CoordMap        ← ≡(≡(□ ⊂) ⊙¤) ↯ ⊃⟜(⇡ ⊡ 1)(⇡ ⊡ 0) △
CoordsOf        ← ≡°□ ▽∩♭ = ⊙⟜CoordMap
Dir             ← [0 ¯1]
ChangeDir       ← × ⊃(⨬(1)(¯ 1) =1 ⌵ ⊡1)(↻1)
Parse           ← ⊃(∩CoordsOf @^ , @#)△ ⊜∘ ¬ ∈ ⊙. "\r\n"
IsInbound       ← × /× ≥ 0 ⊙(/× >) .
IsInObstruction ← >0 /+ ≡(≍) ¤
PartOne         ← ⊙⋅⋅◌ ⧻ ◴ ↘1 ⍢(⊂ ⨬(∘)(⊙⊙ChangeDir - : ⊙,) ◡(IsInObstruction ⊙⋅⋅∘) + ⊙, ⊢ .|IsInbound ⊙◌ ⊙◌ ⊢) ⊙Dir

PartTwo ← .

PartOne Parse Input
# ⊃PartOne PartTwo
