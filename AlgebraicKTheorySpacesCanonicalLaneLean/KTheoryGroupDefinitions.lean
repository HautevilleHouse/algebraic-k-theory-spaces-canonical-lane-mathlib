import HautevilleHouse.AlgebraicKTheorySpacesCanonicalLaneLean.AdmissibleClass
import Mathlib.AlgebraicKTheory.KTheory

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure KGroupPackage where
  ringType : Type u
  K0Group : Type v
  K1Group : Type w
  K0Defined : Prop
  K1Defined : Prop
  K0Relation : Prop
  K1Relation : Prop

structure KGroupEvidence (G : KGroupPackage) where
  K0DefinedClosed : G.K0Defined
  K1DefinedClosed : G.K1Defined
  K0RelationClosed : G.K0Relation
  K1RelationClosed : G.K1Relation

def KGroupClosed (G : KGroupPackage) : Prop :=
  G.K0Defined ∧ G.K1Defined ∧ G.K0Relation ∧ G.K1Relation

theorem k_group_closed_from_evidence (G : KGroupPackage) (E : KGroupEvidence G) : KGroupClosed G := by
  exact And.intro E.K0DefinedClosed (And.intro E.K1DefinedClosed (And.intro E.K0RelationClosed E.K1RelationClosed))

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse