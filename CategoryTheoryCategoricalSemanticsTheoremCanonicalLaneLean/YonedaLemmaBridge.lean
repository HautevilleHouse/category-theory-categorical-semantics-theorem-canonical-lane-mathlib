import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean.CategoryObjects

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure YonedaEmbedding where
  category : CategoryObject
  presheafCategory : CategoryObject
  embeddingFunctor : FunctorObject
  fullyFaithful : Prop
  fullyFaithfulTerm : fullyFaithful

structure YonedaLemmaStatement where
  category : CategoryObject
  presheaf : FunctorObject
  object : category.carrier
  bijection : Prop
  naturality : Prop
  bijectionTerm : bijection
  naturalityTerm : naturality

def YonedaClosed (Y : YonedaLemmaStatement) : Prop :=
  Y.bijection ∧ Y.naturality

theorem yoneda_closed_from_evidence (Y : YonedaLemmaStatement) (E : Y.bijectionTerm ∧ Y.naturalityTerm) : YonedaClosed Y :=
  E

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse