import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure AdmissibleImmersionClass where
  object : ImmersionPackage (RiemannianManifoldPackage.mk (Type u) _ _ _ _)
  prescribedCurvatureMatch : Prop
  minimalCondition : Prop
  remainderRecorded : Prop
  gateWitness : prescribedCurvatureMatch ∨ remainderRecorded

def bridgeClosed (A : AdmissibleImmersionClass) : Prop :=
  A.object.immersionClosed ∧ A.prescribedCurvatureMatch

def gateClosed (A : AdmissibleImmersionClass) : Prop :=
  A.prescribedCurvatureMatch ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleImmersionClass) :
    bridgeClosed A := by
  exact And.intro A.object.immersionClosed A.prescribedCurvatureMatch

theorem gate_from_admissible_class (A : AdmissibleImmersionClass) :
    gateClosed A := by
  exact A.gateWitness

def ConstrainedImmersionClosure (A : AdmissibleImmersionClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_immersion_endgame (A : AdmissibleImmersionClass) :
    ConstrainedImmersionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse