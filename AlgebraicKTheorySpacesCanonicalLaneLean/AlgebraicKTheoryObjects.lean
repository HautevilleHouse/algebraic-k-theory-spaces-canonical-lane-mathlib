import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure KTheorySpace where
  carrier : Type u
  topology : TopologicalSpace carrier

structure KAdmittedObject where
  space : KTheorySpace
  isRingSpace : Prop
  k0Group : Prop
  k1Group : Prop
  higherKTheory : Prop
  conclusion : isRingSpace ∧ k0Group ∧ k1Group ∧ higherKTheory

def KWitnessClosed (O : KAdmittedObject) : Prop :=
  O.conclusion

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse