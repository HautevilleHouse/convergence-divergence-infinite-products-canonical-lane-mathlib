import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ConvergenceDivergenceInfiniteProductsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.remainderRecorded

end ConvergenceDivergenceInfiniteProductsCanonicalLaneLean
end HautevilleHouse
