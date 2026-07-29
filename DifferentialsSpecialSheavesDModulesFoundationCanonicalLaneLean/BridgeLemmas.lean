import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DModuleWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialsSpecialSheavesDModulesFoundationCanonicalLaneLean
end HautevilleHouse
