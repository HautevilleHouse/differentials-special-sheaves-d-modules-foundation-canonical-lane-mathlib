import DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean.ConnectionCurvature

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure DModuleStructure where
  sheaf : Type u
  ringOfDifferentialOperators : Type v
  moduleStructure : Prop
  coherence : Prop
  finitePresentation : Prop

def DModuleStructureClosed (M : DModuleStructure) : Prop :=
  M.moduleStructure ∧ M.coherence ∧ M.finitePresentation

structure DModuleEvidence (M : DModuleStructure) where
  moduleStructureClosed : M.moduleStructure
  coherenceClosed : M.coherence
  finitePresentationClosed : M.finitePresentation

theorem dmodule_structure_closed_from_evidence (M : DModuleStructure) (E : DModuleEvidence M) :
    DModuleStructureClosed M := by
  exact And.intro E.moduleStructureClosed (And.intro E.coherenceClosed E.finitePresentationClosed)

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse
