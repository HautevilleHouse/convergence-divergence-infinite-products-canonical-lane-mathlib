import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ConvergenceDivergenceInfiniteProductsCanonicalLaneLean.InfiniteProductSpace

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ProductWitnessClosed (A.object : ProductAdmittedObject)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact (A.object : ProductAdmittedObject).conclusion

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse
