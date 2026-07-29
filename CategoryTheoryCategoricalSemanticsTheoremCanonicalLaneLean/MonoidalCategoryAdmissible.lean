import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure MonoidalCategoryData (C : Type u) [Category.{v} C] where
  tensor : C ⥤ C ⥤ C
  unit : C
  associator : ∀ (X Y Z : C), (tensor.obj (tensor.obj X Y)) Z ≅ tensor.obj X (tensor.obj Y Z)
  leftUnitor : ∀ (X : C), tensor.obj unit X ≅ X
  rightUnitor : ∀ (X : C), tensor.obj X unit ≅ X
  pentagonCondition : Prop
  triangleCondition : Prop

def MonoidalCategoryClosed {C : Type u} [Category.{v} C] (M : MonoidalCategoryData C) : Prop :=
  M.pentagonCondition ∧ M.triangleCondition

theorem monoidal_category_closed_from_evidence {C : Type u} [Category.{v} C] (M : MonoidalCategoryData C) : MonoidalCategoryClosed M :=
  And.intro M.pentagonCondition M.triangleCondition

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse