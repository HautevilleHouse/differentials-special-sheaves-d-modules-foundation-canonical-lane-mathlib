import DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure ConnectionCurvaturePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  vectorBundle : Type v
  connection : Type w
  curvature : Type x
  connectionDefined : Prop
  curvatureComputed : Prop
  compatibilityRiemann : Prop

structure ConnectionCurvatureEvidence (P : ConnectionCurvaturePackage) where
  connectionDefinedClosed : P.connectionDefined
  curvatureComputedClosed : P.curvatureComputed
  compatibilityRiemannClosed : P.compatibilityRiemann

def ConnectionCurvatureClosed (P : ConnectionCurvaturePackage) : Prop :=
  P.connectionDefined ∧ P.curvatureComputed ∧ P.compatibilityRiemann

theorem connection_curvature_closed_from_evidence (P : ConnectionCurvaturePackage) (E : ConnectionCurvatureEvidence P) :
    ConnectionCurvatureClosed P := by
  exact And.intro E.connectionDefinedClosed (And.intro E.curvatureComputedClosed E.compatibilityRiemannClosed)

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse
