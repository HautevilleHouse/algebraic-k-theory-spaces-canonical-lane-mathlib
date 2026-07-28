import AlgebraicKTheorySpacesCanonicalLaneLean.AlgebraicKTheoryObjects

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure HigherKTheoryPackage where
  ring : Type u
  quillenQConstruction : Prop
  plusConstruction : Prop
  spectralSequence : Prop
  higherKGroupDefined : Prop

structure HigherKTheoryEvidence (H : HigherKTheoryPackage) where
  quillenQConstructionClosed : H.quillenQConstruction
  plusConstructionClosed : H.plusConstruction
  spectralSequenceClosed : H.spectralSequence
  higherKGroupDefinedClosed : H.higherKGroupDefined

def HigherKTheoryClosed (H : HigherKTheoryPackage) : Prop :=
  H.quillenQConstruction ∧ H.plusConstruction ∧ H.spectralSequence ∧ H.higherKGroupDefined

theorem higher_k_theory_closed_from_evidence (H : HigherKTheoryPackage) (E : HigherKTheoryEvidence H) : HigherKTheoryClosed H := by
  exact And.intro E.quillenQConstructionClosed (And.intro E.plusConstructionClosed (And.intro E.spectralSequenceClosed E.higherKGroupDefinedClosed))

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse