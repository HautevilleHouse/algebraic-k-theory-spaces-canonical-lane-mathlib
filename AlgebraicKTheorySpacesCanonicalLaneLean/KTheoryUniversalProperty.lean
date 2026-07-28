import AlgebraicKTheorySpacesCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure UniversalPropertyPackage (A : AdmissibleClass) where
  targetCategory : Type u
  universalMap : A.object.space.carrier → targetCategory
  universalPropertyHolds : ∀ (f : A.object.space.carrier → targetCategory), ∃! h : targetCategory → targetCategory, h ∘ universalMap = f

structure UniversalPropertyEvidence {A : AdmissibleClass} (U : UniversalPropertyPackage A) where
  universalPropertyHoldsClosed : U.universalPropertyHolds

def UniversalPropertyClosed {A : AdmissibleClass} (U : UniversalPropertyPackage A) : Prop :=
  U.universalPropertyHolds

theorem universal_property_closed_from_evidence {A : AdmissibleClass} (U : UniversalPropertyPackage A) (E : UniversalPropertyEvidence U) :
    UniversalPropertyClosed U := by
  exact E.universalPropertyHoldsClosed

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse