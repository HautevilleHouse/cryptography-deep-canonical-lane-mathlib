import CryptographyDeepCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CryptographyDeepCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CryptographicObject where
  primeField : Type
  groupOrder : ℕ
  discreteLogHardness : Prop
  rsaModulus : ℕ
  factorizationUnknown : Prop
  latticeDimension : ℕ
  shortestVectorProblemHard : Prop
  conclusion : discreteLogHardness ∧ rsaModulus > 0 ∧ shortestVectorProblemHard

structure CryptoEndgameState where
  object : CryptographicObject

def CryptoWitnessClosed (O : CryptographicObject) : Prop :=
  O.discreteLogHardness ∧ O.rsaModulus > 0 ∧ O.shortestVectorProblemHard

end CryptographyDeepCanonicalLaneLean
end HautevilleHouse