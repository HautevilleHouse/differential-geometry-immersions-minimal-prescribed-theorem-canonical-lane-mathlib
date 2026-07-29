import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean.EmbeddingPackage

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure MinimalSubmanifoldPackage {V : Type u} {W : Type v} [TopologicalSpace V] [TopologicalSpace W] (I : ImmersionPackage V W) where
  meanCurvatureZero : Prop
  extremalArea : Prop
  eulerLagrangeSatisfied : Prop

structure MinimalSubmanifoldEvidence {V W : Type u} [TopologicalSpace V] [TopologicalSpace W] {I : ImmersionPackage V W} (M : MinimalSubmanifoldPackage I) where
  meanCurvatureZeroClosed : M.meanCurvatureZero
  extremalAreaClosed : M.extremalArea
  eulerLagrangeSatisfiedClosed : M.eulerLagrangeSatisfied

def MinimalSubmanifoldClosed {V W : Type u} [TopologicalSpace V] [TopologicalSpace W] {I : ImmersionPackage V W} (M : MinimalSubmanifoldPackage I) : Prop :=
  M.meanCurvatureZero ∧ M.extremalArea ∧ M.eulerLagrangeSatisfied

theorem minimal_submanifold_closed_from_evidence {V W : Type u} [TopologicalSpace V] [TopologicalSpace W] {I : ImmersionPackage V W} (M : MinimalSubmanifoldPackage I) (E : MinimalSubmanifoldEvidence M) : MinimalSubmanifoldClosed M := by
  exact And.intro E.meanCurvatureZeroClosed (And.intro E.extremalAreaClosed E.eulerLagrangeSatisfiedClosed)

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse