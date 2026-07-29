import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure YonedaEmbedding (C : Type u) [Category.{v} C] where
  presheafCategory : Type (max u v)
  yonedaFunctor : C ⥤ presheafCategory
  fullyFaithful : FullyFaithful yonedaFunctor

def YonedaEmbeddingClosed (C : Type u) [Category.{v} C] (Y : YonedaEmbedding C) : Prop :=
  Y.fullyFaithful

theorem yoneda_embedding_closed_from_evidence (C : Type u) [Category.{v} C] (Y : YonedaEmbedding C) : YonedaEmbeddingClosed C Y :=
  Y.fullyFaithful

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse