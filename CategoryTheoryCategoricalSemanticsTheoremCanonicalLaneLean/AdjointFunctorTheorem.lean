import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure AdjointFunctorPackage where
  categoryLeft : Type u
  categoryRight : Type v
  functorLeft : categoryLeft → categoryRight
  functorRight : categoryRight → categoryLeft
  adjunctionIso : Prop
  unitCounit : Prop
  universalProperty : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  adjunctionIsoClosed : A.adjunctionIso
  unitCounitClosed : A.unitCounit
  universalPropertyClosed : A.universalProperty

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.adjunctionIso ∧ A.unitCounit ∧ A.universalProperty

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage) (E : AdjointFunctorEvidence A) :
    AdjointFunctorClosed A := by
  exact And.intro E.adjunctionIsoClosed (And.intro E.unitCounitClosed E.universalPropertyClosed)

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse