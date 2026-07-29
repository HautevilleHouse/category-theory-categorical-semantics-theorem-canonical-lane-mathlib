import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure CategoricalSemanticsPackage where
  syntacticCategory : Type u
  interpretationFunctor : Type u → Type v
  soundnessTheorem : Prop
  completenessTheorem : Prop
  internalLanguage : Prop

structure CategoricalSemanticsEvidence (C : CategoricalSemanticsPackage) where
  soundnessTheoremClosed : C.soundnessTheorem
  completenessTheoremClosed : C.completenessTheorem
  internalLanguageClosed : C.internalLanguage

def CategoricalSemanticsClosed (C : CategoricalSemanticsPackage) : Prop :=
  C.soundnessTheorem ∧ C.completenessTheorem ∧ C.internalLanguage

theorem categorical_semantics_closed_from_evidence (C : CategoricalSemanticsPackage)
    (E : CategoricalSemanticsEvidence C) : CategoricalSemanticsClosed C := by
  exact And.intro E.soundnessTheoremClosed
    (And.intro E.completenessTheoremClosed E.internalLanguageClosed)

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse
