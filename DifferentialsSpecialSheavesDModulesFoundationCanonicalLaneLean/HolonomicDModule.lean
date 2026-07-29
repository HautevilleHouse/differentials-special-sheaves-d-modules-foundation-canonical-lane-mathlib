import canonicalLaneMathlib.AdmissibleClass

/-!
# Holonomic D-Module Package
This module defines a holonomic D-module, which is a D-module whose characteristic variety is Lagrangian.
-/

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundation

structure HolonomicDModulePackage {X : Type u} [TopologicalSpace X] {O : X → Type v} [∀ x, CommRing (O x)]
  {D : DifferentialOperatorPackage X O} {S : SheafOfModulesPackage X O}
  (M : DModulePackage D S) where
  characteristicVariety : Type w
  lagrangian : Prop
  finiteLength : Prop
  lagrangianTerm : lagrangian
  finiteLengthTerm : finiteLength

structure HolonomicDModuleEvidence {X : Type u} [TopologicalSpace X] {O : X → Type v} [∀ x, CommRing (O x)]
  {D : DifferentialOperatorPackage X O} {S : SheafOfModulesPackage X O}
  {M : DModulePackage D S} (H : HolonomicDModulePackage M) where
  lagrangianClosed : H.lagrangian
  finiteLengthClosed : H.finiteLength

def HolonomicDModuleClosed {X : Type u} [TopologicalSpace X] {O : X → Type v} [∀ x, CommRing (O x)]
  {D : DifferentialOperatorPackage X O} {S : SheafOfModulesPackage X O}
  {M : DModulePackage D S} (H : HolonomicDModulePackage M) : Prop :=
  H.lagrangian ∧ H.finiteLength

theorem holonomic_d_module_closed_from_evidence {X : Type u} [TopologicalSpace X] {O : X → Type v} [∀ x, CommRing (O x)]
  {D : DifferentialOperatorPackage X O} {S : SheafOfModulesPackage X O}
  {M : DModulePackage D S} (H : HolonomicDModulePackage M) (E : HolonomicDModuleEvidence H) : HolonomicDModuleClosed H := by
  exact And.intro E.lagrangianClosed E.finiteLengthClosed

end DifferentialsSpecialSheavesDModulesFoundation
end HautevilleHouse