import AlgebraicKTheorySpacesCanonicalLaneLean.ExactSequences

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure WaldhausenAdditivityPackage {A : AdmissibleClass} {P : PlusConstructionPackage A} {B : BottPeriodicityPackage P} {K : KSpectrumPackage B} {E : ExactSequencesPackage K} where
  waldhausenCategory : Type u
  cofibrations : Prop
  weakEquivalences : Prop
  additivityTheorem : Prop
  kTheoryEquivalence : Prop

structure WaldhausenAdditivityEvidence {A : AdmissibleClass} {P : PlusConstructionPackage A} {B : BottPeriodicityPackage P} {K : KSpectrumPackage B} {E : ExactSequencesPackage K} (W : WaldhausenAdditivityPackage E) where
  additivityTheoremClosed : W.additivityTheorem
  kTheoryEquivalenceClosed : W.kTheoryEquivalence

def WaldhausenAdditivityClosed {A : AdmissibleClass} {P : PlusConstructionPackage A} {B : BottPeriodicityPackage P} {K : KSpectrumPackage B} {E : ExactSequencesPackage K} (W : WaldhausenAdditivityPackage E) : Prop :=
  W.additivityTheorem ∧ W.kTheoryEquivalence

theorem waldhausen_additivity_closed_from_evidence
    {A : AdmissibleClass} {P : PlusConstructionPackage A} {B : BottPeriodicityPackage P} {K : KSpectrumPackage B} {E : ExactSequencesPackage K} (W : WaldhausenAdditivityPackage E) (Ev : WaldhausenAdditivityEvidence W) :
    WaldhausenAdditivityClosed W := by
  exact And.intro Ev.additivityTheoremClosed Ev.kTheoryEquivalenceClosed

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse