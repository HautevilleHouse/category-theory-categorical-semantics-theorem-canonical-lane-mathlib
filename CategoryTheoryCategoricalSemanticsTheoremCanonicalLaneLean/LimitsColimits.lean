import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure LimitsColimitsPackage where
  diagramCategory : Type u
  targetCategory : Type v
  limitExists : Prop
  colimitExists : Prop
  universalProperty : Prop

structure LimitsColimitsEvidence (L : LimitsColimitsPackage) where
  limitExistsClosed : L.limitExists
  colimitExistsClosed : L.colimitExists
  universalPropertyClosed : L.universalProperty

def LimitsColimitsClosed (L : LimitsColimitsPackage) : Prop :=
  L.limitExists ∧ L.colimitExists ∧ L.universalProperty

theorem limits_colimits_closed_from_evidence (L : LimitsColimitsPackage) (E : LimitsColimitsEvidence L) : LimitsColimitsClosed L := by
  exact And.intro E.limitExistsClosed (And.intro E.colimitExistsClosed E.universalPropertyClosed)

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse