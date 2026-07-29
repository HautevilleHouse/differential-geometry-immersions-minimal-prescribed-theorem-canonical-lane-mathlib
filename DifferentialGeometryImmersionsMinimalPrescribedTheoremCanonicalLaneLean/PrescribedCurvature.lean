import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean.MinimalSubmanifold

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure PrescribedCurvaturePackage {V W : Type u} [TopologicalSpace V] [TopologicalSpace W] {I : ImmersionPackage V W} {M : MinimalSubmanifoldPackage I} where
  prescribedGaussCurvature : Prop
  prescribedMeanCurvature : Prop
  compatibilityCondition : Prop

structure PrescribedCurvatureEvidence {V W : Type u} [TopologicalSpace V] [TopologicalSpace W] {I : ImmersionPackage V W} {M : MinimalSubmanifoldPackage I} (P : PrescribedCurvaturePackage M) where
  prescribedGaussCurvatureClosed : P.prescribedGaussCurvature
  prescribedMeanCurvatureClosed : P.prescribedMeanCurvature
  compatibilityConditionClosed : P.compatibilityCondition

def PrescribedCurvatureClosed {V W : Type u} [TopologicalSpace V] [TopologicalSpace W] {I : ImmersionPackage V W} {M : MinimalSubmanifoldPackage I} (P : PrescribedCurvaturePackage M) : Prop :=
  P.prescribedGaussCurvature ∧ P.prescribedMeanCurvature ∧ P.compatibilityCondition

theorem prescribed_curvature_closed_from_evidence {V W : Type u} [TopologicalSpace V] [TopologicalSpace W] {I : ImmersionPackage V W} {M : MinimalSubmanifoldPackage I} (P : PrescribedCurvaturePackage M) (E : PrescribedCurvatureEvidence P) : PrescribedCurvatureClosed P := by
  exact And.intro E.prescribedGaussCurvatureClosed (And.intro E.prescribedMeanCurvatureClosed E.compatibilityConditionClosed)

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse