import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean.PrescribedCurvature

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

def immersionBridgeClosed (A : AdmissibleClass) : Prop :=
  PrescribedCurvatureClosed (A.object)

theorem bridge_from_admissible_class (A : AdmissibleClass) : immersionBridgeClosed A := by
  -- A.object is a PrescribedCurvaturePackage, we need to extract evidence
  sorry

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse