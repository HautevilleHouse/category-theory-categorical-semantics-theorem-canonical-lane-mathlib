import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure EnrichedCategoryPackage where
  baseMonoidal : Type u
  enrichedCategory : Type v
  homObject : enrichedCategory → enrichedCategory → baseMonoidal
  composition : Prop
  identities : Prop
  associativity : Prop
  unitarity : Prop

structure EnrichedCategoryEvidence (E : EnrichedCategoryPackage) where
  compositionClosed : E.composition
  identitiesClosed : E.identities
  associativityClosed : E.associativity
  unitarityClosed : E.unitarity

def EnrichedCategoryClosed (E : EnrichedCategoryPackage) : Prop :=
  E.composition ∧ E.identities ∧ E.associativity ∧ E.unitarity

theorem enriched_category_closed_from_evidence (E : EnrichedCategoryPackage) (Ev : EnrichedCategoryEvidence E) :
    EnrichedCategoryClosed E := by
  exact And.intro Ev.compositionClosed (And.intro Ev.identitiesClosed (And.intro Ev.associativityClosed Ev.unitarityClosed))

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse