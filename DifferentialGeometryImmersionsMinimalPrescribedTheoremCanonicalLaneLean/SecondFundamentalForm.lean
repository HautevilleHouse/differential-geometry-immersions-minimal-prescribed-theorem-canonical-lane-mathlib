import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean

structure SecondFundamentalForm where
  immersionData : ImmersionData
  tangentBundle : Type u
  normalBundle : Type v
  shapeOperator : Type w
  secondFundamentalTensor : Type z
  symmetricProperty : Prop
  paraCompactGaussEquation : Prop

structure SecondFundamentalFormEvidence (B : SecondFundamentalForm) where
  symmetricPropertyClosed : B.symmetricProperty
  paraCompactGaussEquationClosed : B.paraCompactGaussEquation

def SecondFundamentalFormClosed (B : SecondFundamentalForm) : Prop :=
  B.symmetricProperty ∧ B.paraCompactGaussEquation

theorem second_fundamental_form_closed_from_evidence (B : SecondFundamentalForm)
    (E : SecondFundamentalFormEvidence B) : SecondFundamentalFormClosed B := by
  exact And.intro E.symmetricPropertyClosed E.paraCompactGaussEquationClosed

end DifferentialGeometryImmersionsMinimalPrescribedTheoremCanonicalLaneLean
end HautevilleHouse