import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure LimitsColimitsPackage where
  smallLimitsExist : Prop
  smallColimitsExist : Prop
  limitUniversal : Prop
  colimitUniversal : Prop
  functorPreservation : Prop

structure LimitsColimitsEvidence (L : LimitsColimitsPackage) where
  smallLimitsExistClosed : L.smallLimitsExist
  smallColimitsExistClosed : L.smallColimitsExist
  limitUniversalClosed : L.limitUniversal
  colimitUniversalClosed : L.colimitUniversal
  functorPreservationClosed : L.functorPreservation

def LimitsColimitsClosed (L : LimitsColimitsPackage) : Prop :=
  L.smallLimitsExist ∧ L.smallColimitsExist ∧
  L.limitUniversal ∧ L.colimitUniversal ∧ L.functorPreservation

theorem limits_colimits_closed_from_evidence (L : LimitsColimitsPackage)
    (E : LimitsColimitsEvidence L) : LimitsColimitsClosed L := by
  exact And.intro E.smallLimitsExistClosed
    (And.intro E.smallColimitsExistClosed
      (And.intro E.limitUniversalClosed
        (And.intro E.colimitUniversalClosed E.functorPreservationClosed)))

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse
