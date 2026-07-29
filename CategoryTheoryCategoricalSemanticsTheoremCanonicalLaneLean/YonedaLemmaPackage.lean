import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure YonedaLemmaPackage where
  yonedaEmbedding : Type u → Type v
  naturalBijection : Prop
  fullFaithfulness : Prop
  representablePresheaf : Prop

structure YonedaLemmaEvidence (Y : YonedaLemmaPackage) where
  naturalBijectionClosed : Y.naturalBijection
  fullFaithfulnessClosed : Y.fullFaithfulness
  representablePresheafClosed : Y.representablePresheaf

def YonedaLemmaClosed (Y : YonedaLemmaPackage) : Prop :=
  Y.naturalBijection ∧ Y.fullFaithfulness ∧ Y.representablePresheaf

theorem yoneda_lemma_closed_from_evidence (Y : YonedaLemmaPackage)
    (E : YonedaLemmaEvidence Y) : YonedaLemmaClosed Y := by
  exact And.intro E.naturalBijectionClosed
    (And.intro E.fullFaithfulnessClosed E.representablePresheafClosed)

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse
