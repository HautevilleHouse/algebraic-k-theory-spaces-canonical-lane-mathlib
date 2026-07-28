import AlgebraicKTheorySpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  KTheoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse