import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure PrescribedCurvatureTensorPackage where
  prescribedRicci : Prop
  targetCurvatureFlat : Prop
  immersionSecondFundamentalForm : Prop
  gaussEquationSatisfied : Prop

structure PrescribedCurvatureTensorEvidence (P : PrescribedCurvatureTensorPackage) where
  prescribedRicciClosed : P.prescribedRicci
  targetCurvatureFlatClosed : P.targetCurvatureFlat
  immersionSecondFundamentalFormClosed : P.immersionSecondFundamentalForm
  gaussEquationSatisfiedClosed : P.gaussEquationSatisfied

def PrescribedCurvatureTensorClosed (P : PrescribedCurvatureTensorPackage) : Prop :=
  P.prescribedRicci ∧ P.targetCurvatureFlat ∧ P.immersionSecondFundamentalForm ∧ P.gaussEquationSatisfied

theorem prescribed_curvature_tensor_closed_from_evidence (P : PrescribedCurvatureTensorPackage)
    (E : PrescribedCurvatureTensorEvidence P) : PrescribedCurvatureTensorClosed P := by
  exact And.intro E.prescribedRicciClosed
    (And.intro E.targetCurvatureFlatClosed
      (And.intro E.immersionSecondFundamentalFormClosed E.gaussEquationSatisfiedClosed))

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse
