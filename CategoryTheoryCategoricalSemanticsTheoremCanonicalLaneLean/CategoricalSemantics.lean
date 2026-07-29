import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure CategoricalSemanticsPackage where
  theory : Type u
  category : Type v
  model : theory → category
  soundness : Prop
  completeness : Prop
  interpretation : Prop

structure CategoricalSemanticsEvidence (C : CategoricalSemanticsPackage) where
  soundnessClosed : C.soundness
  completenessClosed : C.completeness
  interpretationClosed : C.interpretation

def CategoricalSemanticsClosed (C : CategoricalSemanticsPackage) : Prop :=
  C.soundness ∧ C.completeness ∧ C.interpretation

theorem categorical_semantics_closed_from_evidence (C : CategoricalSemanticsPackage) (E : CategoricalSemanticsEvidence C) :
    CategoricalSemanticsClosed C := by
  exact And.intro E.soundnessClosed (And.intro E.completenessClosed E.interpretationClosed)

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse