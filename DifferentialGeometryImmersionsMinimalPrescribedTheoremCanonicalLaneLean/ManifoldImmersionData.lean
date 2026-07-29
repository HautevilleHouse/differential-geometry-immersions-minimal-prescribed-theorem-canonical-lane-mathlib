import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure ImmersionData where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  immersionMap : sourceManifold → targetManifold
  smoothImmersion : Prop
  dimensionCondition : Prop

structure ImmersionDataEvidence (D : ImmersionData) where
  smoothImmersionClosed : D.smoothImmersion
  dimensionConditionClosed : D.dimensionCondition

def ImmersionDataClosed (D : ImmersionData) : Prop :=
  D.smoothImmersion ∧ D.dimensionCondition

theorem immersion_data_closed_from_evidence (D : ImmersionData)
    (E : ImmersionDataEvidence D) : ImmersionDataClosed D := by
  exact And.intro E.smoothImmersionClosed E.dimensionConditionClosed

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse