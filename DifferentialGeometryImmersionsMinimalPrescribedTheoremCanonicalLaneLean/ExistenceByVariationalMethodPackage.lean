import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure VariationalFunctionalPackage where
  areaFunctional : Type u
  firstVariationFormula : Prop
  secondVariationStability : Prop

structure PlateauProblemPackage where
  boundaryData : Type v
  solutionExistence : Prop
  regularityResult : Prop

structure ExistenceByVariationalEvidence
    (V : VariationalFunctionalPackage) (P : PlateauProblemPackage) where
  firstVariationClosed : V.firstVariationFormula
  secondVariationClosed : V.secondVariationStability
  solutionExistenceClosed : P.solutionExistence
  regularityClosed : P.regularityResult

def ExistenceByVariationalClosed
    (V : VariationalFunctionalPackage) (P : PlateauProblemPackage) : Prop :=
  V.firstVariationFormula ∧ V.secondVariationStability ∧
  P.solutionExistence ∧ P.regularityResult

theorem existence_by_variational_closed_from_evidence
    (V : VariationalFunctionalPackage) (P : PlateauProblemPackage)
    (E : ExistenceByVariationalEvidence V P) : ExistenceByVariationalClosed V P := by
  exact And.intro E.firstVariationClosed
    (And.intro E.secondVariationClosed
      (And.intro E.solutionExistenceClosed E.regularityClosed))

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse