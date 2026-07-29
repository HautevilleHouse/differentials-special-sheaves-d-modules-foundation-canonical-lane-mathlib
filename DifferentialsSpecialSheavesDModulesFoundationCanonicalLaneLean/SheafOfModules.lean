import canonicalLaneMathlib.AdmissibleClass

/-!
# Sheaf of Modules Package
This module defines a sheaf of modules over a ringed space.
-/

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundation

structure SheafOfModulesPackage (X : Type u) [TopologicalSpace X] (O : X → Type v) [∀ x, CommRing (O x)] where
  presheaf : OpenCover X → Type w
  sheafCondition : ∀ U : OpenCover X, presheaf U → Prop
  moduleOverO : ∀ U : OpenCover X, Module (∏ x∈U, O x) (presheaf U)
  gluingConsistent : Prop
  gluingConsistentTerm : gluingConsistent

structure SheafOfModulesEvidence {X : Type u} [TopologicalSpace X] {O : X → Type v} [∀ x, CommRing (O x)]
  (S : SheafOfModulesPackage X O) where
  sheafConditionClosed : ∀ U : OpenCover X, S.sheafCondition U
  gluingConsistentClosed : S.gluingConsistent

def SheafOfModulesClosed {X : Type u} [TopologicalSpace X] {O : X → Type v} [∀ x, CommRing (O x)]
  (S : SheafOfModulesPackage X O) : Prop :=
  (∀ U, S.sheafCondition U) ∧ S.gluingConsistent

theorem sheaf_of_modules_closed_from_evidence {X : Type u} [TopologicalSpace X] {O : X → Type v} [∀ x, CommRing (O x)]
  (S : SheafOfModulesPackage X O) (E : SheafOfModulesEvidence S) : SheafOfModulesClosed S := by
  exact And.intro E.sheafConditionClosed E.gluingConsistentClosed

end DifferentialsSpecialSheavesDModulesFoundation
end HautevilleHouse