import HautevilleHouse.AlgebraicKTheorySpacesCanonicalLaneLean.ExactSequences

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure LocalizationPackage (G : KGroupPackage) where
  multiplicativeSet : Prop
  localizationSequence : Prop
  exactnessAtK0Localization : Prop
  exactnessAtK1Localization : Prop
  reducedKTheory : Prop

structure LocalizationEvidence {G : KGroupPackage} (L : LocalizationPackage G) where
  multiplicativeSetClosed : L.multiplicativeSet
  localizationSequenceClosed : L.localizationSequence
  exactnessAtK0LocalizationClosed : L.exactnessAtK0Localization
  exactnessAtK1LocalizationClosed : L.exactnessAtK1Localization
  reducedKTheoryClosed : L.reducedKTheory

def LocalizationClosed {G : KGroupPackage} (L : LocalizationPackage G) : Prop :=
  L.multiplicativeSet ∧ L.localizationSequence ∧ L.exactnessAtK0Localization ∧ L.exactnessAtK1Localization ∧ L.reducedKTheory

theorem localization_closed_from_evidence {G : KGroupPackage} (L : LocalizationPackage G) (Ev : LocalizationEvidence L) : LocalizationClosed L := by
  exact And.intro Ev.multiplicativeSetClosed (And.intro Ev.localizationSequenceClosed (And.intro Ev.exactnessAtK0LocalizationClosed (And.intro Ev.exactnessAtK1LocalizationClosed Ev.reducedKTheoryClosed)))

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse