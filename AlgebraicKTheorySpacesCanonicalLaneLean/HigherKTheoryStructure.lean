import AlgebraicKTheorySpacesCanonicalLaneLean.KTheoryUniversalProperty

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure HigherKTheoryPackage {A : AdmissibleClass} (U : UniversalPropertyPackage A) where
  nSkeleton : ℕ → Type
  QConstruction : ℕ → Type
  WaldhausenStructure : Prop
  QConstructionQuillenEquivalent : ∀ n, QConstruction n ≃ A.object.kTheoryGroup n

structure HigherKTheoryEvidence {A : AdmissibleClass} {U : UniversalPropertyPackage A} (H : HigherKTheoryPackage U) where
  QConstructionQuillenEquivalentClosed : ∀ n, H.QConstructionQuillenEquivalent n
  WaldhausenStructureClosed : H.WaldhausenStructure

def HigherKTheoryClosed {A : AdmissibleClass} {U : UniversalPropertyPackage A} (H : HigherKTheoryPackage U) : Prop :=
  H.WaldhausenStructure ∧ ∀ n, A.object.kTheoryGroup n ≃ H.QConstruction n

theorem higher_k_theory_closed_from_evidence {A : AdmissibleClass} {U : UniversalPropertyPackage A} (H : HigherKTheoryPackage U) (E : HigherKTheoryEvidence H) :
    HigherKTheoryClosed H := by
  refine And.intro E.WaldhausenStructureClosed ?_
  intro n
  exact (E.QConstructionQuillenEquivalentClosed n).symm

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse