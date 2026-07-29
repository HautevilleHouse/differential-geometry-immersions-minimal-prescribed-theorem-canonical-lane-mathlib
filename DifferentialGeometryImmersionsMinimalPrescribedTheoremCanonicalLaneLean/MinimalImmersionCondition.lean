import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure MinimalImmersionCondition where
  secondFundamentalForm : SecondFundamentalForm
  meanCurvatureZero : Prop
  divergenceFreeEnergy : Prop
  willmoreFunctional : Prop

structure MinimalImmersionConditionEvidence (M : MinimalImmersionCondition) where
  meanCurvatureZeroClosed : M.meanCurvatureZero
  divergenceFreeEnergyClosed : M.divergenceFreeEnergy
  willmoreFunctionalClosed : M.willmoreFunctional

def MinimalImmersionConditionClosed (M : MinimalImmersionCondition) : Prop :=
  M.meanCurvatureZero ∧ M.divergenceFreeEnergy ∧ M.willmoreFunctional

theorem minimal_immersion_condition_closed_from_evidence
    (M : MinimalImmersionCondition) (E : MinimalImmersionConditionEvidence M) :
    MinimalImmersionConditionClosed M := by
  exact And.intro E.meanCurvatureZeroClosed
    (And.intro E.divergenceFreeEnergyClosed E.willmoreFunctionalClosed)

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse