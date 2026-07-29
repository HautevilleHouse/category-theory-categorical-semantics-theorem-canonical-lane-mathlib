import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure AdjointPair (C D : Type u) [Category.{v} C] [Category.{v} D] where
  leftAdjoint : C ⥤ D
  rightAdjoint : D ⥤ C
  unit : 𝟭 C ⟶ leftAdjoint ⋙ rightAdjoint
  counit : rightAdjoint ⋙ leftAdjoint ⟶ 𝟭 D
  triangleLeft : (unit ▷ leftAdjoint) ≫ (leftAdjoint ◁ counit) = 𝟙 leftAdjoint
  triangleRight : (counit ▷ rightAdjoint) ≫ (rightAdjoint ◁ unit) = 𝟙 rightAdjoint

def AdjointFunctorClosed (C D : Type u) [Category.{v} C] [Category.{v} D] (A : AdjointPair C D) : Prop :=
  A.triangleLeft ∧ A.triangleRight

theorem adjoint_functor_closed_from_evidence (C D : Type u) [Category.{v} C] [Category.{v} D] (A : AdjointPair C D) : AdjointFunctorClosed C D A :=
  And.intro A.triangleLeft A.triangleRight

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse