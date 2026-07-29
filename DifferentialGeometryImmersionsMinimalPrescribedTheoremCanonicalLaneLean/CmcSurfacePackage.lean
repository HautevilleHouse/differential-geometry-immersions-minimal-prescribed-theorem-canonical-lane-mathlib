import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean.DifferentialGeometryAdmittedObject

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure CmcSurfacePackage where
  meanCurvatureConstant : Prop
  hamiltonJacobiEquation : Prop
  stabilityCondition : Prop

structure CmcSurfaceEvidence (C : CmcSurfacePackage) where
  meanCurvatureConstantClosed : C.meanCurvatureConstant
  hamiltonJacobiEquationClosed : C.hamiltonJacobiEquation
  stabilityConditionClosed : C.stabilityCondition

def CmcSurfaceClosed (C : CmcSurfacePackage) : Prop :=
  C.meanCurvatureConstant ∧ C.hamiltonJacobiEquation ∧ C.stabilityCondition

theorem cmc_surface_closed_from_evidence (C : CmcSurfacePackage) (E : CmcSurfaceEvidence C) :
    CmcSurfaceClosed C := by
  exact And.intro E.meanCurvatureConstantClosed
    (And.intro E.hamiltonJacobiEquationClosed E.stabilityConditionClosed)

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse