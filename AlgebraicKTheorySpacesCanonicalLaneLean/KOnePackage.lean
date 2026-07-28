import AlgebraicKTheorySpacesCanonicalLaneLean.AlgebraicKTheoryObjects

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure KOnePackage where
  ring : Type u
  generalLinearGroup : Type v
  abelianization : Prop
  whitenheadLemma : Prop
  exactSequence : Prop

structure KOneEvidence (K : KOnePackage) where
  abelianizationClosed : K.abelianization
  whitenheadLemmaClosed : K.whitenheadLemma
  exactSequenceClosed : K.exactSequence

def KOneClosed (K : KOnePackage) : Prop :=
  K.abelianization ∧ K.whitenheadLemma ∧ K.exactSequence

theorem k_one_closed_from_evidence (K : KOnePackage) (E : KOneEvidence K) : KOneClosed K := by
  exact And.intro E.abelianizationClosed (And.intro E.whitenheadLemmaClosed E.exactSequenceClosed)

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse