import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure KanExtension (C D E : Type u) [Category.{v} C] [Category.{v} D] [Category.{v} E] (F : C ⥤ E) (K : C ⥤ D) where
  extension : D ⥤ E
  naturalTransformation : F ⟶ K ⋙ extension
  universal : ∀ (G : D ⥤ E) (α : F ⟶ K ⋙ G), extension ⟶ G

def KanExtensionClosed (C D E : Type u) [Category.{v} C] [Category.{v} D] [Category.{v} E] (F : C ⥤ E) (K : C ⥤ D) (KExt : KanExtension C D E F K) : Prop :=
  Nonempty (KExt.universal)

theorem kan_extension_closed_from_evidence (C D E : Type u) [Category.{v} C] [Category.{v} D] [Category.{v} E] (F : C ⥤ E) (K : C ⥤ D) (KExt : KanExtension C D E F K) : KanExtensionClosed C D E F K KExt :=
  KExt.universal

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse