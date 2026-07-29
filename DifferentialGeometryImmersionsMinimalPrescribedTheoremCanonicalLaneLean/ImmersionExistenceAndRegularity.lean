import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure ImmersionExistenceAndRegularityPackage where
  existenceOfImmersion : Prop
  regularityOfImmersion : Prop
  boundaryConditions : Prop
  uniquenessUnderPrescription : Prop

structure ImmersionExistenceAndRegularityEvidence (I : ImmersionExistenceAndRegularityPackage) where
  existenceOfImmersionClosed : I.existenceOfImmersion
  regularityOfImmersionClosed : I.regularityOfImmersion
  boundaryConditionsClosed : I.boundaryConditions
  uniquenessUnderPrescriptionClosed : I.uniquenessUnderPrescription

def ImmersionExistenceAndRegularityClosed (I : ImmersionExistenceAndRegularityPackage) : Prop :=
  I.existenceOfImmersion ∧ I.regularityOfImmersion ∧ I.boundaryConditions ∧ I.uniquenessUnderPrescription

theorem immersion_existence_and_regularity_closed_from_evidence
    (I : ImmersionExistenceAndRegularityPackage)
    (E : ImmersionExistenceAndRegularityEvidence I) : ImmersionExistenceAndRegularityClosed I := by
  exact And.intro E.existenceOfImmersionClosed
    (And.intro E.regularityOfImmersionClosed
      (And.intro E.boundaryConditionsClosed E.uniquenessUnderPrescriptionClosed))

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse
