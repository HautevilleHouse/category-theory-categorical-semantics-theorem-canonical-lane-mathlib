import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean

structure MonadStructurePackage where
  category : Type u
  endofunctor : Type v
  unit : Prop
  multiplication : Prop
  associativity : Prop
  unitLaw : Prop

structure MonadStructureEvidence (M : MonadStructurePackage) where
  associativityClosed : M.associativity
  unitLawClosed : M.unitLaw

def MonadStructureClosed (M : MonadStructurePackage) : Prop :=
  M.associativity ∧ M.unitLaw

theorem monad_structure_closed_from_evidence (M : MonadStructurePackage) (E : MonadStructureEvidence M) : MonadStructureClosed M := by
  exact And.intro E.associativityClosed E.unitLawClosed

end CategoryTheoryCategoricalSemanticsTheoremCanonicalLaneLean
end HautevilleHouse