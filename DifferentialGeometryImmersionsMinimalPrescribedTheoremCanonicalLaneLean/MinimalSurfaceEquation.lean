import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean.ImmersionCurvature

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure MinimalSurfaceEquationPackage {I : ImmersionCurvaturePackage} where
  meanCurvatureZero : Prop
  eulerLagrangeEquation : Prop
  weierstrassRepresentation : Prop
  conformalParameterization : Prop

structure MinimalSurfaceEquationEvidence {I : ImmersionCurvaturePackage} (M : MinimalSurfaceEquationPackage I) where
  meanCurvatureZeroClosed : M.meanCurvatureZero
  eulerLagrangeEquationClosed : M.eulerLagrangeEquation
  weierstrassRepresentationClosed : M.weierstrassRepresentation
  conformalParameterizationClosed : M.conformalParameterization

def MinimalSurfaceEquationClosed {I : ImmersionCurvaturePackage} (M : MinimalSurfaceEquationPackage I) : Prop :=
  M.meanCurvatureZero ∧ M.eulerLagrangeEquation ∧ M.weierstrassRepresentation ∧ M.conformalParameterization

theorem minimal_surface_equation_closed_from_evidence {I : ImmersionCurvaturePackage} (M : MinimalSurfaceEquationPackage I) (E : MinimalSurfaceEquationEvidence M) : MinimalSurfaceEquationClosed M := by
  exact And.intro E.meanCurvatureZeroClosed
    (And.intro E.eulerLagrangeEquationClosed
      (And.intro E.weierstrassRepresentationClosed E.conformalParameterizationClosed))

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse