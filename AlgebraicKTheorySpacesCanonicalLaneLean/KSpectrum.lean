import AlgebraicKTheorySpacesCanonicalLaneLean.BottPeriodicity

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure KSpectrumPackage {A : AdmissibleClass} {P : PlusConstructionPackage A} {B : BottPeriodicityPackage P} where
  spectrumObjects : ℤ → Type u
  structureMaps : (n : ℤ) → spectrumObjects n → spectrumObjects (n+1)
  deloopingProperty : Prop
  homotopyGroups : Prop
  spectrumStructure : Prop

structure KSpectrumEvidence {A : AdmissibleClass} {P : PlusConstructionPackage A} {B : BottPeriodicityPackage P} (K : KSpectrumPackage B) where
  deloopingPropertyClosed : K.deloopingProperty
  homotopyGroupsClosed : K.homotopyGroups
  spectrumStructureClosed : K.spectrumStructure

def KSpectrumClosed {A : AdmissibleClass} {P : PlusConstructionPackage A} {B : BottPeriodicityPackage P} (K : KSpectrumPackage B) : Prop :=
  K.deloopingProperty ∧ K.homotopyGroups ∧ K.spectrumStructure

theorem k_spectrum_closed_from_evidence
    {A : AdmissibleClass} {P : PlusConstructionPackage A} {B : BottPeriodicityPackage P} (K : KSpectrumPackage B) (E : KSpectrumEvidence K) :
    KSpectrumClosed K := by
  exact And.intro E.deloopingPropertyClosed
    (And.intro E.homotopyGroupsClosed E.spectrumStructureClosed)

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse