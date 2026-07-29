import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure ImmersionCondition where
  rankCondition : Prop
  injectiveDifferential : Prop
  topologicalEmbedding : Prop
  rankConditionTerm : rankCondition
  injectiveDifferentialTerm : injectiveDifferential
  topologicalEmbeddingTerm : topologicalEmbedding

structure ImmersionPackage where
  sourceManifold : Type u
  targetManifold : Type v
  sourceTopology : TopologicalSpace sourceManifold
  targetTopology : TopologicalSpace targetManifold
  map : sourceManifold → targetManifold
  immersionCondition : ImmersionCondition

structure ImmersionEvidence (I : ImmersionPackage) where
  rankConditionClosed : I.immersionCondition.rankCondition
  injectiveDifferentialClosed : I.immersionCondition.injectiveDifferential
  topologicalEmbeddingClosed : I.immersionCondition.topologicalEmbedding

def ImmersionClosed (I : ImmersionPackage) : Prop :=
  I.immersionCondition.rankCondition ∧ I.immersionCondition.injectiveDifferential ∧ I.immersionCondition.topologicalEmbedding

theorem immersion_closed_from_evidence (I : ImmersionPackage) (E : ImmersionEvidence I) : ImmersionClosed I := by
  exact And.intro E.rankConditionClosed (And.intro E.injectiveDifferentialClosed E.topologicalEmbeddingClosed)

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse