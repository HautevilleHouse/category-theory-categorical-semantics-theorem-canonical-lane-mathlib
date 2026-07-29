import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure LimitCone (J C : Type u) [Category.{v} J] [Category.{v} C] (F : J ⥤ C) where
  apex : C
  cone : (F ⋙ (Functor.const J).obj apex) ⟶ F
  universal : ∀ (s : Cone F), s.pt → apex

def LimitClosed (J C : Type u) [Category.{v} J] [Category.{v} C] (F : J ⥤ J) (L : LimitCone J C F) : Prop :=
  Nonempty (L.universal)

structure ColimitCocone (J C : Type u) [Category.{v} J] [Category.{v} C] (F : J ⥤ C) where
  apex : C
  cocone : F ⟶ (Functor.const J).obj apex
  universal : ∀ (s : Cocone F), apex → s.pt

def ColimitClosed (J C : Type u) [Category.{v} J] [Category.{v} C] (F : J ⥤ J) (L : ColimitCocone J C F) : Prop :=
  Nonempty (L.universal)

theorem limit_colimit_closed_from_evidence (J C : Type u) [Category.{v} J] [Category.{v} C] (F : J ⥤ C) (L : LimitCone J C F) : LimitClosed J C F L :=
  L.universal

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse