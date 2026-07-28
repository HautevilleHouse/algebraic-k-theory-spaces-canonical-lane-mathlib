import HautevilleHouse.AlgebraicKTheorySpacesCanonicalLaneLean.AdmissibleClass
import Mathlib.AlgebraicKTheory.KTheory

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure KTheorySpace where
  carrier : Type
  ringStructure : Ring carrier

structure KTheoryAdmittedObject where
  space : KTheorySpace
  K0Closed : Prop
  K1Closed : Prop
  conclusion : K0Closed ∧ K1Closed

def KTheoryWitnessClosed (O : KTheoryAdmittedObject) : Prop :=
  O.K0Closed ∧ O.K1Closed

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse