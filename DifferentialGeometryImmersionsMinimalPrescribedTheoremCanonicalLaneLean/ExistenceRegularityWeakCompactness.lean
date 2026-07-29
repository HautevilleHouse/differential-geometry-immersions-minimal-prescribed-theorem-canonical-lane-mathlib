import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure ExistenceRegularityWeakCompactness where
  prescribedCurvatureInvariant : PrescribedCurvatureInvariant
  existenceSolution : Prop
  regularityEstimate : Prop
  weakCompactnessSequence : Prop

structure ExistenceRegularityWeakCompactnessEvidence (E : ExistenceRegularityWeakCompactness) where
  existenceSolutionClosed : E.existenceSolution
  regularityEstimateClosed : E.regularityEstimate
  weakCompactnessSequenceClosed : E.weakCompactnessSequence

def ExistenceRegularityWeakCompactnessClosed (E : ExistenceRegularityWeakCompactness) : Prop :=
  E.existenceSolution ∧ E.regularityEstimate ∧ E.weakCompactnessSequence

theorem existence_regularity_weak_compactness_closed_from_evidence
    (E : ExistenceRegularityWeakCompactness) (Ev : ExistenceRegularityWeakCompactnessEvidence E) :
    ExistenceRegularityWeakCompactnessClosed E := by
  exact And.intro Ev.existenceSolutionClosed
    (And.intro Ev.regularityEstimateClosed Ev.weakCompactnessSequenceClosed)

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse