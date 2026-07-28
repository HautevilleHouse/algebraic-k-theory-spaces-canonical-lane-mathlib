import AlgebraicKTheorySpacesCanonicalLaneLean.PlusConstruction

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure BottPeriodicityPackage {S : SpectrumCategoryPackage}
    {P : PlusConstructionPackage S} where
  periodicityIsomorphism : Type u
  kTheoryGroupPeriodicity : Prop
  geometricModel : Prop

structure BottPeriodicityEvidence {S : SpectrumCategoryPackage}
    {P : PlusConstructionPackage S} (B : BottPeriodicityPackage S P) where
  kTheoryGroupPeriodicityClosed : B.kTheoryGroupPeriodicity
  geometricModelClosed : B.geometricModel

def BottPeriodicityClosed {S : SpectrumCategoryPackage}
    {P : PlusConstructionPackage S} (B : BottPeriodicityPackage S P) : Prop :=
  B.kTheoryGroupPeriodicity ∧ B.geometricModel

theorem bott_periodicity_closed_from_evidence {S : SpectrumCategoryPackage}
    {P : PlusConstructionPackage S} (B : BottPeriodicityPackage S P)
    (E : BottPeriodicityEvidence B) : BottPeriodicityClosed B := by
  exact And.intro E.kTheoryGroupPeriodicityClosed E.geometricModelClosed

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse