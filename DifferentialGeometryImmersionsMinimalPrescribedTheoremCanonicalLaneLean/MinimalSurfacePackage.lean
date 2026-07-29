import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean.DifferentialGeometryAdmittedObject

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure MinimalSurfacePackage where
  meanCurvatureZero : Prop
  weierstrassRepresentation : Prop
  harmonicCoordinate : Prop

structure MinimalSurfaceEvidence (M : MinimalSurfacePackage) where
  meanCurvatureZeroClosed : M.meanCurvatureZero
  weierstrassRepresentationClosed : M.weierstrassRepresentation
  harmonicCoordinateClosed : M.harmonicCoordinate

def MinimalSurfaceClosed (M : MinimalSurfacePackage) : Prop :=
  M.meanCurvatureZero ∧ M.weierstrassRepresentation ∧ M.harmonicCoordinate

theorem minimal_surface_closed_from_evidence (M : MinimalSurfacePackage) (E : MinimalSurfaceEvidence M) :
    MinimalSurfaceClosed M := by
  exact And.intro E.meanCurvatureZeroClosed
    (And.intro E.weierstrassRepresentationClosed E.harmonicCoordinateClosed)

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse