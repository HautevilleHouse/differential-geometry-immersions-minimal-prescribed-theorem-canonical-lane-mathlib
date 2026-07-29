import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure MinimalSurfaceEquationPackage where
  immersionMap : Type u → Type v
  meanCurvatureFormula : Prop
  eulerLagrangeDerivation : Prop
  regularityTheory : Prop

structure MinimalSurfaceEquationEvidence (E : MinimalSurfaceEquationPackage) where
  meanCurvatureFormulaClosed : E.meanCurvatureFormula
  eulerLagrangeDerivationClosed : E.eulerLagrangeDerivation
  regularityTheoryClosed : E.regularityTheory

def MinimalSurfaceEquationClosed (E : MinimalSurfaceEquationPackage) : Prop :=
  E.meanCurvatureFormula ∧ E.eulerLagrangeDerivation ∧ E.regularityTheory

theorem minimal_surface_equation_closed_from_evidence
    (E : MinimalSurfaceEquationPackage) (Ev : MinimalSurfaceEquationEvidence E) :
    MinimalSurfaceEquationClosed E := by
  exact And.intro Ev.meanCurvatureFormulaClosed
    (And.intro Ev.eulerLagrangeDerivationClosed Ev.regularityTheoryClosed)

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse