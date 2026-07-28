import AlgebraicKTheorySpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure QConstructionPackage (A : AdmissibleClass) where
  exactCategory : Type u
  shortExactSequences : Type v
  QCategory : Type u
  associatedKTheory : Prop
  classificationTheorem : Prop
  QConstructionClosed : associatedKTheory ∧ classificationTheorem

structure QConstructionEvidence (A : AdmissibleClass) (Q : QConstructionPackage A) where
  associatedKTheoryClosed : Q.associatedKTheory
  classificationTheoremClosed : Q.classificationTheorem

def QConstructionClosed (A : AdmissibleClass) (Q : QConstructionPackage A) : Prop :=
  Q.associatedKTheory ∧ Q.classificationTheorem

theorem q_construction_closed_from_evidence (A : AdmissibleClass) (Q : QConstructionPackage A)
    (E : QConstructionEvidence A Q) : QConstructionClosed A Q := by
  exact And.intro E.associatedKTheoryClosed E.classificationTheoremClosed

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse