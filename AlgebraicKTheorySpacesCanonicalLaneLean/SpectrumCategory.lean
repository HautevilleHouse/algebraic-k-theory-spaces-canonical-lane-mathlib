import Mathlib.CategoryTheory.Category.Basic

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure SpectrumCategoryPackage where
  spectrum : Type u
  morphisms : Type v
  category : Category theory.Category
  loopFunctor : spectrum → spectrum
  suspensionFunctor : spectrum → spectrum
  stableHomotopyGroups : Prop
  omegaSpectrumProperty : Prop

structure SpectrumCategoryEvidence (P : SpectrumCategoryPackage) where
  stableHomotopyGroupsClosed : P.stableHomotopyGroups
  omegaSpectrumPropertyClosed : P.omegaSpectrumProperty

def SpectrumCategoryClosed (P : SpectrumCategoryPackage) : Prop :=
  P.stableHomotopyGroups ∧ P.omegaSpectrumProperty

theorem spectrum_category_closed_from_evidence (P : SpectrumCategoryPackage)
    (E : SpectrumCategoryEvidence P) : SpectrumCategoryClosed P := by
  exact And.intro E.stableHomotopyGroupsClosed E.omegaSpectrumPropertyClosed

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse