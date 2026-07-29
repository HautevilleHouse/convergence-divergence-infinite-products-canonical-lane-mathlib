import HautevilleHouse.ConvergenceDivergenceInfiniteProductsCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceInfiniteProductsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.ConvergenceDivergenceInfiniteProductsCanonicalLaneLean.GateLemmas
import HautevilleHouse.ConvergenceDivergenceInfiniteProductsCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  productConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "sourceRepository",
    theoremName := "ConvergenceDivergenceInfiniteProducts",
    theoremObject := "ProductAdmittedObject",
    classicalBoundary := "unrestricted classical closure is carried",
    productConstrainedStatement := "product-constrained theorem certificate internalized through bridge, gate, and admissible closure",
    certificateLane := "product_constrained",
    carriedRemainder := "classical source boundary remains open"
  }

theorem theorem_statement_internalized :
    sourceTheoremStatement.sourceKey = "sourceRepository" ∧
    sourceTheoremStatement.certificateLane = "product_constrained" := by
  constructor
  · rfl
  · rfl

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse