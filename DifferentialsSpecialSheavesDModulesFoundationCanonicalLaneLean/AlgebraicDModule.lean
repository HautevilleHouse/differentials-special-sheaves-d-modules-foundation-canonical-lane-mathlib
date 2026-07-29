import canonicalLaneMathlib.AdmissibleClass

/-!
# Algebraic D-Module Package
-/

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure AlgebraicDModulePackage where
  baseVariety : Type u
  sheafOfDifferentialOperators : Type v
  quasiCoherentDModule : Prop
  coherence : Prop
  goodFiltration : Prop
  characteristicCycle : Prop

def AlgebraicDModulePackageClosed (P : AlgebraicDModulePackage) : Prop :=
  P.quasiCoherentDModule ∧ P.coherence ∧ P.goodFiltration ∧ P.characteristicCycle

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse