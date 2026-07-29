import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure MinimalSubmanifoldDeformationPackage where
  variationVectorField : Prop
  firstVariationFormula : Prop
  secondVariationFormula : Prop
  stabilityCondition : Prop

structure MinimalSubmanifoldDeformationEvidence (D : MinimalSubmanifoldDeformationPackage) where
  variationVectorFieldClosed : D.variationVectorField
  firstVariationFormulaClosed : D.firstVariationFormula
  secondVariationFormulaClosed : D.secondVariationFormula
  stabilityConditionClosed : D.stabilityCondition

def MinimalSubmanifoldDeformationClosed (D : MinimalSubmanifoldDeformationPackage) : Prop :=
  D.variationVectorField ∧ D.firstVariationFormula ∧ D.secondVariationFormula ∧ D.stabilityCondition

theorem minimal_submanifold_deformation_closed_from_evidence (D : MinimalSubmanifoldDeformationPackage)
    (E : MinimalSubmanifoldDeformationEvidence D) : MinimalSubmanifoldDeformationClosed D := by
  exact And.intro E.variationVectorFieldClosed
    (And.intro E.firstVariationFormulaClosed
      (And.intro E.secondVariationFormulaClosed E.stabilityConditionClosed))

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse
