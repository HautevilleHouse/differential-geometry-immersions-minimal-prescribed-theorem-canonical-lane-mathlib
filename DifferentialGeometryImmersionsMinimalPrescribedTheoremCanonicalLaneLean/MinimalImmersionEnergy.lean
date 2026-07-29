import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure MinimalImmersionEnergyPackage where
  immersionEnergy : Prop
  energyLowerBound : Prop
  prescribedCurvatureCondition : Prop
  admissibleVariation : Prop

structure MinimalImmersionEnergyEvidence (M : MinimalImmersionEnergyPackage) where
  immersionEnergyClosed : M.immersionEnergy
  energyLowerBoundClosed : M.energyLowerBound
  prescribedCurvatureConditionClosed : M.prescribedCurvatureCondition
  admissibleVariationClosed : M.admissibleVariation

def MinimalImmersionEnergyClosed (M : MinimalImmersionEnergyPackage) : Prop :=
  M.immersionEnergy ∧ M.energyLowerBound ∧ M.prescribedCurvatureCondition ∧ M.admissibleVariation

theorem minimal_immersion_energy_closed_from_evidence (M : MinimalImmersionEnergyPackage)
    (E : MinimalImmersionEnergyEvidence M) : MinimalImmersionEnergyClosed M := by
  exact And.intro E.immersionEnergyClosed
    (And.intro E.energyLowerBoundClosed
      (And.intro E.prescribedCurvatureConditionClosed E.admissibleVariationClosed))

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse
