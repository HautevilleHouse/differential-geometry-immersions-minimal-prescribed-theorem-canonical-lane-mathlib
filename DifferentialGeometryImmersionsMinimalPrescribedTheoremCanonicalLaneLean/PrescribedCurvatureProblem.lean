import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean.MinimalSurfaceEquation

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure PrescribedCurvatureProblemPackage {I : ImmersionCurvaturePackage} where
  targetCurvatureFunction : Type u
  prescribedGaussianCurvature : Prop
  prescribedMeanCurvature : Prop
  prescribedPrincipalCurvatures : Prop
  curvatureMatchingCondition : Prop

structure PrescribedCurvatureProblemEvidence {I : ImmersionCurvaturePackage} (P : PrescribedCurvatureProblemPackage I) where
  prescribedGaussianCurvatureClosed : P.prescribedGaussianCurvature
  prescribedMeanCurvatureClosed : P.prescribedMeanCurvature
  prescribedPrincipalCurvaturesClosed : P.prescribedPrincipalCurvatures
  curvatureMatchingConditionClosed : P.curvatureMatchingCondition

def PrescribedCurvatureProblemClosed {I : ImmersionCurvaturePackage} (P : PrescribedCurvatureProblemPackage I) : Prop :=
  P.prescribedGaussianCurvature ∧ P.prescribedMeanCurvature ∧ P.prescribedPrincipalCurvatures ∧ P.curvatureMatchingCondition

theorem prescribed_curvature_problem_closed_from_evidence {I : ImmersionCurvaturePackage} (P : PrescribedCurvatureProblemPackage I) (E : PrescribedCurvatureProblemEvidence P) : PrescribedCurvatureProblemClosed P := by
  exact And.intro E.prescribedGaussianCurvatureClosed
    (And.intro E.prescribedMeanCurvatureClosed
      (And.intro E.prescribedPrincipalCurvaturesClosed E.curvatureMatchingConditionClosed))

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse