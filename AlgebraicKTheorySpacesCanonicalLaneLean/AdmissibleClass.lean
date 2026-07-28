import Mathlib.CategoryTheory.Category.Basic

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure AdmissibleClass where
  spaceType : Type u
  category : CategoryTheory.Category spaceType
  plusConstructionApplied : Prop
  plusConstructionClosed : plusConstructionApplied
  remainderRecorded : Prop
  gateWitness : plusConstructionApplied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.plusConstructionClosed ∧ (A.plusConstructionApplied ∨ A.remainderRecorded)

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse