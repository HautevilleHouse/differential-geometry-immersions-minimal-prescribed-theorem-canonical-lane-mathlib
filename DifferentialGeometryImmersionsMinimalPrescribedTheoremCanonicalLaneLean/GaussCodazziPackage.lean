import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean.DifferentialGeometryAdmittedObject

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure GaussCodazziPackage where
  gaussEquation : Prop
  codazziEquation : Prop
  ricciIdentity : Prop

structure GaussCodazziEvidence (G : GaussCodazziPackage) where
  gaussEquationClosed : G.gaussEquation
  codazziEquationClosed : G.codazziEquation
  ricciIdentityClosed : G.ricciIdentity

def GaussCodazziClosed (G : GaussCodazziPackage) : Prop :=
  G.gaussEquation ∧ G.codazziEquation ∧ G.ricciIdentity

theorem gauss_codazzi_closed_from_evidence (G : GaussCodazziPackage) (E : GaussCodazziEvidence G) :
    GaussCodazziClosed G := by
  exact And.intro E.gaussEquationClosed
    (And.intro E.codazziEquationClosed E.ricciIdentityClosed)

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse