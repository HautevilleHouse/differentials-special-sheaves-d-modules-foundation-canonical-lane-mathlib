import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure DModuleAlgebra where
  baseRing : Type u
  polynomialRing : Type v
  weylAlgebra : Type w
  leftDModule : Type x
  rightDModule : Type y
  baseRingIsCommutative : Prop
  polynomialRingIsNoetherian : Prop
  weylAlgebraIsSimple : Prop
  dModuleStructure : Prop

structure DModuleAlgebraEvidence (A : DModuleAlgebra) where
  baseRingIsCommutativeClosed : A.baseRingIsCommutative
  polynomialRingIsNoetherianClosed : A.polynomialRingIsNoetherian
  weylAlgebraIsSimpleClosed : A.weylAlgebraIsSimple
  dModuleStructureClosed : A.dModuleStructure

def DModuleAlgebraClosed (A : DModuleAlgebra) : Prop :=
  A.baseRingIsCommutative ∧ A.polynomialRingIsNoetherian ∧
  A.weylAlgebraIsSimple ∧ A.dModuleStructure

theorem d_module_algebra_closed_from_evidence (A : DModuleAlgebra) (E : DModuleAlgebraEvidence A) :
    DModuleAlgebraClosed A := by
  exact And.intro E.baseRingIsCommutativeClosed
    (And.intro E.polynomialRingIsNoetherianClosed
      (And.intro E.weylAlgebraIsSimpleClosed E.dModuleStructureClosed))

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse