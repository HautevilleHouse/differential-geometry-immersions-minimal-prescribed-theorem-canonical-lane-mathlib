import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure ImmersionCurvaturePackage where
  manifoldSource : Type u
  manifoldTarget : Type v
  topologySource : TopologicalSpace manifoldSource
  topologyTarget : TopologicalSpace manifoldTarget
  immersionMap : manifoldSource → manifoldTarget
  firstFundamentalForm : Prop
  secondFundamentalForm : Prop
  meanCurvatureVector : Prop
  sectionalCurvatureImmersion : Prop
  gaussCodazziEquations : Prop

structure ImmersionCurvatureEvidence (I : ImmersionCurvaturePackage) where
  firstFundamentalFormClosed : I.firstFundamentalForm
  secondFundamentalFormClosed : I.secondFundamentalForm
  meanCurvatureVectorClosed : I.meanCurvatureVector
  sectionalCurvatureImmersionClosed : I.sectionalCurvatureImmersion
  gaussCodazziEquationsClosed : I.gaussCodazziEquations

def ImmersionCurvatureClosed (I : ImmersionCurvaturePackage) : Prop :=
  I.firstFundamentalForm ∧ I.secondFundamentalForm ∧ I.meanCurvatureVector ∧ I.sectionalCurvatureImmersion ∧ I.gaussCodazziEquations

theorem immersion_curvature_closed_from_evidence (I : ImmersionCurvaturePackage) (E : ImmersionCurvatureEvidence I) : ImmersionCurvatureClosed I := by
  exact And.intro E.firstFundamentalFormClosed
    (And.intro E.secondFundamentalFormClosed
      (And.intro E.meanCurvatureVectorClosed
        (And.intro E.sectionalCurvatureImmersionClosed E.gaussCodazziEquationsClosed)))

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse