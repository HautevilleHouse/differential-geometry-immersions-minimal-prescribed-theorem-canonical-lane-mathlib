import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure ImmersedManifold where
  carrier : Type
  topology : TopologicalSpace carrier
  smoothStructure : Prop
  dimension : ℕ
  dimensionTwo : dimension = 2

structure PrescribedCurvatureData where
  targetMetric : Type
  prescribedCurvature : Type
  prescribedGaussCurvature : Prop

structure AdmittedImmersionObject where
  source : ImmersedManifold
  target : ImmersedManifold
  immersionMap : carrier source → carrier target
  prescribedData : PrescribedCurvatureData
  isIsometricImmersion : Prop
  gaussianCurvatureMatches : Prop
  conclusion : gaussianCurvatureMatches

structure ImmersionEndgameState where
  object : AdmittedImmersionObject

def ImmersionWitnessClosed (O : AdmittedImmersionObject) : Prop :=
  O.gaussianCurvatureMatches

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse