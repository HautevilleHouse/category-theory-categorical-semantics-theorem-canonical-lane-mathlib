import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean.AdjointFunctorBridge
import HautevilleHouse.CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean.YonedaLemmaBridge
import HautevilleHouse.CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean.LimitsColimitsPackage

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CategoryWitnessClosed A.object

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

def ConstrainedCategoricalSemanticsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem categorical_semantics_endgame (A : AdmissibleClass) : ConstrainedCategoricalSemanticsClosure A :=
  And.intro (A.object.conclusion) (A.gateWitness)

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse