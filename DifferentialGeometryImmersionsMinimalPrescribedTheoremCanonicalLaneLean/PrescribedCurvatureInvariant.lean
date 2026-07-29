import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure PrescribedCurvatureInvariant where
  minimalImmersionCondition : MinimalImmersionCondition
  prescribedGaussCurvature : Prop
  prescribedMeanCurvature : Prop
  prescribedScalarCurvature : Prop
  compatibilityWithSecondFundamentalForm : Prop

structure PrescribedCurvatureInvariantEvidence (P : PrescribedCurvatureInvariant) where
  prescribedGaussCurvatureClosed : P.prescribedGaussCurvature
  prescribedMeanCurvatureClosed : P.prescribedMeanCurvature
  prescribedScalarCurvatureClosed : P.prescribedScalarCurvature
  compatibilityWithSecondFundamentalFormClosed : P.compatibilityWithSecondFundamentalForm

def PrescribedCurvatureInvariantClosed (P : PrescribedCurvatureInvariant) : Prop :=
  P.prescribedGaussCurvature ∧ P.prescribedMeanCurvature ∧
  P.prescribedScalarCurvature ∧ P.compatibilityWithSecondFundamentalForm

theorem prescribed_curvature_invariant_closed_from_evidence
    (P : PrescribedCurvatureInvariant) (E : PrescribedCurvatureInvariantEvidence P) :
    PrescribedCurvatureInvariantClosed P := by
  exact And.intro E.prescribedGaussCurvatureClosed
    (And.intro E.prescribedMeanCurvatureClosed
      (And.intro E.prescribedScalarCurvatureClosed
        E.compatibilityWithSecondFundamentalFormClosed))

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse