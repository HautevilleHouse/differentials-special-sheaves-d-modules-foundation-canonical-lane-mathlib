import canonicalLaneMathlib.AdmissibleClass
import Mathlib.AlgebraicGeometry.RiemannHilbert

/-!
# Riemann–Hilbert Correspondence Package
-/

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure RiemannHilbertCorrespondencePackage where
  dModule : DModuleSheafPackage
  perverseSheaf : Prop
  deRhamFunctor : Type u
  solutionFunctor : Type v
  equivalenceOfCategories : Prop

def RiemannHilbertCorrespondencePackageClosed (P : RiemannHilbertCorrespondencePackage) : Prop :=
  P.equivalenceOfCategories

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse