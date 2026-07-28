import AlgebraicKTheorySpacesCanonicalLaneLean.AlgebraicKTheoryObjects
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure KZeroPackage where
  ring : Type u
  projectiveModules : Type v
  grothendieckGroup : Prop
  splitExactSequence : Prop
  additivity : Prop

structure KZeroEvidence (K : KZeroPackage) where
  grothendieckGroupClosed : K.grothendieckGroup
  splitExactSequenceClosed : K.splitExactSequence
  additivityClosed : K.additivity

def KZeroClosed (K : KZeroPackage) : Prop :=
  K.grothendieckGroup ∧ K.splitExactSequence ∧ K.additivity

theorem k_zero_closed_from_evidence (K : KZeroPackage) (E : KZeroEvidence K) : KZeroClosed K := by
  exact And.intro E.grothendieckGroupClosed (And.intro E.splitExactSequenceClosed E.additivityClosed)

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse