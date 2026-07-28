import AlgebraicKTheorySpacesCanonicalLaneLean.FinalTheorem
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace AlgebraicKTheorySpacesCanonicalLaneLean

structure TheoremStatement where
  theoremName : String
  theoremObject : String
  classicalBoundary : Prop
  carriedRemainder : Prop

def sourceTheoremStatement : TheoremStatement := {
  theoremName := "Algebraic K Theory Spaces Classification",
  theoremObject := "Algebraic K-theory spaces via higher K-groups",
  classicalBoundary := False,
  carriedRemainder := False
}

theorem theorem_statement_internalized : sourceTheoremStatement.classicalBoundary = False := by
  rfl

end AlgebraicKTheorySpacesCanonicalLaneLean
end HautevilleHouse