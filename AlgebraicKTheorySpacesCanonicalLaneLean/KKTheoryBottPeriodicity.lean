import AlgebraicKTheorySpacesCanonicalLaneLean.HigherKTheoryStructure

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure BottPeriodicityPackage {A : AdmissibleClass} {U : UniversalPropertyPackage A} (H : HigherKTheoryPackage U) where
  bottMap : A.object.kTheoryGroup 0 → A.object.kTheoryGroup 2
  periodicityIsomorphism : ℤ → (λ n : ℤ, A.object.kTheoryGroup (n+2) ≃ A.object.kTheoryGroup n)
  periodicityHolds : ∀ n : ℤ, (periodicityIsomorphism n).toFun ∘ (periodicityIsomorphism (n+2)).invFun = id

structure BottPeriodicityEvidence {A : AdmissibleClass} {U : UniversalPropertyPackage A} {H : HigherKTheoryPackage U} (B : BottPeriodicityPackage H) where
  periodicityHoldsClosed : B.periodicityHolds

def BottPeriodicityClosed {A : AdmissibleClass} {U : UniversalPropertyPackage A} {H : HigherKTheoryPackage U} (B : BottPeriodicityPackage H) : Prop :=
  B.periodicityHolds

theorem bott_periodicity_closed_from_evidence {A : AdmissibleClass} {U : UniversalPropertyPackage A} {H : HigherKTheoryPackage U} (B : BottPeriodicityPackage H) (E : BottPeriodicityEvidence B) :
    BottPeriodicityClosed B := by
  exact E.periodicityHoldsClosed

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse