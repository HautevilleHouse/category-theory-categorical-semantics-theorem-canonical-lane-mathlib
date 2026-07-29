import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean.CategoryObjects

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure MonoidalStructure where
  tensorProduct : FunctorObject
  unitObject : CategoryObject.carrier
  associator : NaturalTransformationObject
  leftUnitor : NaturalTransformationObject
  rightUnitor : NaturalTransformationObject
  pentagonIdentity : Prop
  triangleIdentity : Prop
  pentagonIdentityTerm : pentagonIdentity
  triangleIdentityTerm : triangleIdentity

def MonoidalClosed (M : MonoidalStructure) : Prop :=
  M.pentagonIdentity ∧ M.triangleIdentity

theorem monoidal_closed_from_evidence (M : MonoidalStructure) : MonoidalClosed M :=
  And.intro M.pentagonIdentityTerm M.triangleIdentityTerm

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse