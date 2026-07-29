import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Algebra.Category.ModuleCat.Basic
import Mathlib.CategoryTheory.Sites.Sheaf

/-!
# D-Module Sheaf Package
-/

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure DModuleSheafPackage where
  baseScheme : Type u
  sheafOfRings : Type v
  dModuleStructure : Type w
  sheafOfDifferentialOperators : Type x
  coherentDModule : Prop
  holonomicDModule : Prop
  regularSingular : Prop

def DModuleSheafPackageClosed (P : DModuleSheafPackage) : Prop :=
  P.coherentDModule ∧ P.holonomicDModule ∧ P.regularSingular

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse