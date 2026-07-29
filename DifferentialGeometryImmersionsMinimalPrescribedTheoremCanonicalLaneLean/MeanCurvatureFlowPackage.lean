import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure MeanCurvatureFlowPackage where
  timeDomain : Type u
  flowMap : timeDomain → (Type v → Type w)
  evolutionEquation : Prop
  shortTimeExistence : Prop

structure MeanCurvatureFlowEvidence (M : MeanCurvatureFlowPackage) where
  evolutionEquationClosed : M.evolutionEquation
  shortTimeExistenceClosed : M.shortTimeExistence

def MeanCurvatureFlowClosed (M : MeanCurvatureFlowPackage) : Prop :=
  M.evolutionEquation ∧ M.shortTimeExistence

theorem mean_curvature_flow_closed_from_evidence
    (M : MeanCurvatureFlowPackage) (E : MeanCurvatureFlowEvidence M) :
    MeanCurvatureFlowClosed M := by
  exact And.intro E.evolutionEquationClosed E.shortTimeExistenceClosed

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse