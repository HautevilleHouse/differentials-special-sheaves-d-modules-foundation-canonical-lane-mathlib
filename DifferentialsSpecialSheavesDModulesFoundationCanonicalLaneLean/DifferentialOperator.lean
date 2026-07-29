import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

structure DifferentialOperatorPackage where
  operator : Type u
  symbol : Type v
  ellipticity : Prop
  formalAdjoint : Prop
  parametrices : Prop

def DifferentialOperatorClosed (D : DifferentialOperatorPackage) : Prop :=
  D.ellipticity ∧ D.formalAdjoint ∧ D.parametrices

theorem differential_operator_closed_from_props (D : DifferentialOperatorPackage)
    (he : D.ellipticity) (hf : D.formalAdjoint) (hp : D.parametrices) : DifferentialOperatorClosed D := by
  exact And.intro he (And.intro hf hp)

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse
