import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure RiemannianManifoldPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  smoothStructure : Prop
  metricSmooth : Prop

structure ImmersionPackage (M : RiemannianManifoldPackage) where
  sourceManifold : Type u
  sourceTopology : TopologicalSpace sourceManifold
  immersionMap : sourceManifold → M.manifold
  immersionRankCondition : Prop
  immersionClosed : Prop

structure MinimalSubmanifoldPackage (M : RiemannianManifoldPackage) where
  submanifold : Type u
  subTopology : TopologicalSpace submanifold
  inclusionMap : submanifold → M.manifold
  meanCurvatureVanishes : Prop
  minimalConditionClosed : Prop

structure PrescribedCurvaturePackage (M : RiemannianManifoldPackage) where
  prescribedCurvature : Type w
  curvatureMatchingCondition : Prop
  existenceCondition : Prop

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse