import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure DModuleCategory where
  baseSpace : Type u
  sheaf : Type v
  dModule : Type w
  finiteType : Prop
  coherent : Prop

def DModuleCategoryClosed (M : DModuleCategory) : Prop :=
  M.finiteType ∧ M.coherent

theorem d_module_category_closed_from_props (M : DModuleCategory)
    (hf : M.finiteType) (hc : M.coherent) : DModuleCategoryClosed M := by
  exact And.intro hf hc

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse
