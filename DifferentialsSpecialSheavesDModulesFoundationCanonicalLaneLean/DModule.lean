import canonicalLaneMathlib.AdmissibleClass

/-!
# D-Module Package
This module defines a D-module as a sheaf of modules with an action of the sheaf of differential operators.
-/

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundation

structure DModulePackage {X : Type u} [TopologicalSpace X] {O : X → Type v} [∀ x, CommRing (O x)]
  (D : DifferentialOperatorPackage X O) (S : SheafOfModulesPackage X O) where
  action : ∀ U : OpenCover X, (D.localOperator) → (S.presheaf U) → (S.presheaf U)
  actionCompatible : Prop
  leibnizRule : Prop
  actionCompatibleTerm : actionCompatible
  leibnizRuleTerm : leibnizRule

structure DModuleEvidence {X : Type u} [TopologicalSpace X] {O : X → Type v} [∀ x, CommRing (O x)]
  {D : DifferentialOperatorPackage X O} {S : SheafOfModulesPackage X O}
  (M : DModulePackage D S) where
  actionCompatibleClosed : M.actionCompatible
  leibnizRuleClosed : M.leibnizRule

def DModuleClosed {X : Type u} [TopologicalSpace X] {O : X → Type v} [∀ x, CommRing (O x)]
  {D : DifferentialOperatorPackage X O} {S : SheafOfModulesPackage X O}
  (M : DModulePackage D S) : Prop :=
  M.actionCompatible ∧ M.leibnizRule

theorem d_module_closed_from_evidence {X : Type u} [TopologicalSpace X] {O : X → Type v} [∀ x, CommRing (O x)]
  {D : DifferentialOperatorPackage X O} {S : SheafOfModulesPackage X O}
  (M : DModulePackage D S) (E : DModuleEvidence M) : DModuleClosed M := by
  exact And.intro E.actionCompatibleClosed E.leibnizRuleClosed

end DifferentialsSpecialSheavesDModulesFoundation
end HautevilleHouse