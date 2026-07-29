import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure YonedaLemmaPackage where
  category : Type u
  homFunctor : Type v
  naturalBijection : Prop
  fullFaithfulness : Prop

structure YonedaLemmaEvidence (Y : YonedaLemmaPackage) where
  naturalBijectionClosed : Y.naturalBijection
  fullFaithfulnessClosed : Y.fullFaithfulness

def YonedaLemmaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.naturalBijection ∧ Y.fullFaithfulness

theorem yoneda_lemma_closed_from_evidence (Y : YonedaLemmaPackage) (E : YonedaLemmaEvidence Y) : YonedaLemmaClosed Y := by
  exact And.intro E.naturalBijectionClosed E.fullFaithfulnessClosed

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse