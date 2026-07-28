import AlgebraicKTheorySpacesCanonicalLaneLean.AdmissibleClass
import AlgebraicKTheorySpacesCanonicalLaneLean.PlusConstruction
import AlgebraicKTheorySpacesCanonicalLaneLean.QConstruction

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.plusConstructionClosed

def gateClosed (A : AdmissibleClass) : Prop :=
  A.plusConstructionApplied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.plusConstructionClosed

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedKTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ktheory_endgame (A : AdmissibleClass) : ConstrainedKTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse