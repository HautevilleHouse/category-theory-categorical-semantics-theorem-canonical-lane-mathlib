import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure AdjointFunctorPackage where
  categoryLeft : Type u
  categoryRight : Type u
  leftAdjoint : Type v
  rightAdjoint : Type v
  adjunctionIso : Prop
  unitCounit : Prop

structure AdjointFunctorEvidence (A : AdjointFunctorPackage) where
  adjunctionIsoClosed : A.adjunctionIso
  unitCounitClosed : A.unitCounit

def AdjointFunctorClosed (A : AdjointFunctorPackage) : Prop :=
  A.adjunctionIso ∧ A.unitCounit

theorem adjoint_functor_closed_from_evidence (A : AdjointFunctorPackage) (E : AdjointFunctorEvidence A) : AdjointFunctorClosed A := by
  exact And.intro E.adjunctionIsoClosed E.unitCounitClosed

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse