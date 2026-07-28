import AlgebraicKTheorySpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure PlusConstructionPackage (A : AdmissibleClass) where
  originalSpace : A.spaceType
  plusSpace : Type u
  plusMap : originalSpace → plusSpace
  homologyEquivalence : Prop
  fundamentalGroupAbelianization : Prop
  plusConstructionClosed : homologyEquivalence ∧ fundamentalGroupAbelianization

structure PlusConstructionEvidence (A : AdmissibleClass) (P : PlusConstructionPackage A) where
  homologyEquivalenceClosed : P.homologyEquivalence
  fundamentalGroupAbelianizationClosed : P.fundamentalGroupAbelianization

def PlusConstructionClosed (A : AdmissibleClass) (P : PlusConstructionPackage A) : Prop :=
  P.homologyEquivalence ∧ P.fundamentalGroupAbelianization

theorem plus_construction_closed_from_evidence (A : AdmissibleClass) (P : PlusConstructionPackage A)
    (E : PlusConstructionEvidence A P) : PlusConstructionClosed A P := by
  exact And.intro E.homologyEquivalenceClosed E.fundamentalGroupAbelianizationClosed

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse