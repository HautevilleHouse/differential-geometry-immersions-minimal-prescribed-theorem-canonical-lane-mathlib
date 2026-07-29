import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean.PrescribedCurvatureProblem

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure ExistenceTheoremPackage {I : ImmersionCurvaturePackage} {M : MinimalSurfaceEquationPackage I} {P : PrescribedCurvatureProblemPackage I} where
  existenceOfImmersion : Prop
  regularityOfImmersion : Prop
  uniquenessUnderConditions : Prop
  compactnessProperties : Prop
  boundaryBehavior : Prop

structure ExistenceTheoremEvidence {I : ImmersionCurvaturePackage} {M : MinimalSurfaceEquationPackage I} {P : PrescribedCurvatureProblemPackage I} (E : ExistenceTheoremPackage M P) where
  existenceOfImmersionClosed : E.existenceOfImmersion
  regularityOfImmersionClosed : E.regularityOfImmersion
  uniquenessUnderConditionsClosed : E.uniquenessUnderConditions
  compactnessPropertiesClosed : E.compactnessProperties
  boundaryBehaviorClosed : E.boundaryBehavior

def ExistenceTheoremClosed {I : ImmersionCurvaturePackage} {M : MinimalSurfaceEquationPackage I} {P : PrescribedCurvatureProblemPackage I} (E : ExistenceTheoremPackage M P) : Prop :=
  E.existenceOfImmersion ∧ E.regularityOfImmersion ∧ E.uniquenessUnderConditions ∧ E.compactnessProperties ∧ E.boundaryBehavior

theorem existence_theorem_closed_from_evidence {I : ImmersionCurvaturePackage} {M : MinimalSurfaceEquationPackage I} {P : PrescribedCurvatureProblemPackage I} (E : ExistenceTheoremPackage M P) (Ev : ExistenceTheoremEvidence E) : ExistenceTheoremClosed E := by
  exact And.intro Ev.existenceOfImmersionClosed
    (And.intro Ev.regularityOfImmersionClosed
      (And.intro Ev.uniquenessUnderConditionsClosed
        (And.intro Ev.compactnessPropertiesClosed Ev.boundaryBehaviorClosed)))

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse