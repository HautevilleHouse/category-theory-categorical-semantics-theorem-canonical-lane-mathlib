import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure MonoidalCategoryPackage where
  category : Type u
  tensorProduct : category → category → category
  unitObject : category
  associator : Prop
  leftUnitor : Prop
  rightUnitor : Prop
  pentagonIdentity : Prop
  triangleIdentity : Prop

structure MonoidalCategoryEvidence (M : MonoidalCategoryPackage) where
  associatorClosed : M.associator
  leftUnitorClosed : M.leftUnitor
  rightUnitorClosed : M.rightUnitor
  pentagonIdentityClosed : M.pentagonIdentity
  triangleIdentityClosed : M.triangleIdentity

def MonoidalCategoryClosed (M : MonoidalCategoryPackage) : Prop :=
  M.associator ∧ M.leftUnitor ∧ M.rightUnitor ∧ M.pentagonIdentity ∧ M.triangleIdentity

theorem monoidal_category_closed_from_evidence (M : MonoidalCategoryPackage) (E : MonoidalCategoryEvidence M) :
    MonoidalCategoryClosed M := by
  exact And.intro E.associatorClosed (And.intro E.leftUnitorClosed (And.intro E.rightUnitorClosed (And.intro E.pentagonIdentityClosed E.triangleIdentityClosed)))

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse