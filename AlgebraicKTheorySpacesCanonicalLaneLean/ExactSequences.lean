import HautevilleHouse.AlgebraicKTheorySpacesCanonicalLaneLean.KTheoryGroupDefinitions

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure ExactSequencePackage (G : KGroupPackage) where
  shortExactSeq : Prop
  longExactSeq : Prop
  connectingMap : Prop
  exactnessAtK0 : Prop
  exactnessAtK1 : Prop

structure ExactSequenceEvidence {G : KGroupPackage} (E : ExactSequencePackage G) where
  shortExactSeqClosed : E.shortExactSeq
  longExactSeqClosed : E.longExactSeq
  connectingMapClosed : E.connectingMap
  exactnessAtK0Closed : E.exactnessAtK0
  exactnessAtK1Closed : E.exactnessAtK1

def ExactSequenceClosed {G : KGroupPackage} (E : ExactSequencePackage G) : Prop :=
  E.shortExactSeq ∧ E.longExactSeq ∧ E.connectingMap ∧ E.exactnessAtK0 ∧ E.exactnessAtK1

theorem exact_sequence_closed_from_evidence {G : KGroupPackage} (E : ExactSequencePackage G) (Ev : ExactSequenceEvidence E) : ExactSequenceClosed E := by
  exact And.intro Ev.shortExactSeqClosed (And.intro Ev.longExactSeqClosed (And.intro Ev.connectingMapClosed (And.intro Ev.exactnessAtK0Closed Ev.exactnessAtK1Closed)))

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse