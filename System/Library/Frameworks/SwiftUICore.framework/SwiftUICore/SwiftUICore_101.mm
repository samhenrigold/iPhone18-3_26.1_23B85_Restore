void storeEnumTagSinglePayload for ViewStatePredicate(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v8 - 1;
  v10 = *(v6 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(*(a4 + 24) - 8) + 64);
  if (v8 - 1 >= a3)
  {
    v12 = 0;
LABEL_16:
    if (v9 >= a2)
    {
      goto LABEL_26;
    }

    goto LABEL_17;
  }

  v12 = 1;
  if (v11 > 3)
  {
    goto LABEL_16;
  }

  v13 = (((1 << (8 * v11)) + a3 - v8) >> (8 * v11)) + 1;
  if (HIWORD(v13))
  {
    v12 = 4;
    if (v9 >= a2)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v12 = v14;
    }

    else
    {
      v12 = 0;
    }

    if (v9 >= a2)
    {
LABEL_26:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *&a1[v11] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *&a1[v11] = 0;
      }

      else if (v12)
      {
        a1[v11] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v7 & 0x80000000) != 0)
      {
        v19 = *(v6 + 56);
        v20 = a2 + 1;

        v19((v18 + v10 + 8) & ~v10, v20);
      }

      else if (((a2 + 1) & 0x80000000) != 0)
      {
        *v18 = a2 - 0x7FFFFFFF;
      }

      else
      {
        *v18 = a2;
      }

      return;
    }
  }

LABEL_17:
  v15 = a2 - v8;
  if (v11 >= 4)
  {
    bzero(a1, v11);
    *a1 = v15;
    v16 = 1;
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v16 = (v15 >> (8 * v11)) + 1;
  if (!v11)
  {
LABEL_43:
    if (v12 > 1)
    {
      goto LABEL_47;
    }

    goto LABEL_44;
  }

  v17 = v15 & ~(-1 << (8 * v11));
  bzero(a1, v11);
  if (v11 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    goto LABEL_43;
  }

  if (v11 == 2)
  {
    *a1 = v17;
    if (v12 > 1)
    {
LABEL_47:
      if (v12 == 2)
      {
        *&a1[v11] = v16;
      }

      else
      {
        *&a1[v11] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v12 > 1)
    {
      goto LABEL_47;
    }
  }

LABEL_44:
  if (v12)
  {
    a1[v11] = v16;
  }
}

uint64_t _SymbolEffect.Trigger.activates(after:)(uint64_t *a1)
{
  v2 = *a1;
  if ((~*a1 & 0xF000000000000006) == 0)
  {
    goto LABEL_11;
  }

  v3 = *v1;
  if (v2 < 0)
  {
    if (v3 < 0)
    {
      outlined consume of _SymbolEffect.Trigger(*a1);
      outlined consume of _SymbolEffect.Trigger(v3);
      v5 = (v2 ^ 1) & v3;
      return v5 & 1;
    }
  }

  else
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      if (v2 != v3)
      {
        v7 = *(*v2 + 88);
        outlined copy of _SymbolEffect.Trigger?(*a1);
        outlined copy of _SymbolEffect.Trigger?(v2);
        outlined copy of _SymbolEffect.Trigger(v3);
        outlined copy of _SymbolEffect.Trigger?(v2);
        v8 = outlined copy of _SymbolEffect.Trigger(v3);
        v9 = v7(v3, v8);
        outlined consume of _SymbolEffect.Trigger(v2);
        outlined consume of _SymbolEffect.Trigger(v3);
        outlined consume of _SymbolEffect.Trigger?(v2);
        outlined consume of _SymbolEffect.Trigger(v3);
        outlined consume of _SymbolEffect.Trigger?(v2);
        v5 = v9 ^ 1;
        return v5 & 1;
      }

      outlined copy of _SymbolEffect.Trigger?(*a1);
      outlined copy of _SymbolEffect.Trigger(v2);
      outlined consume of _SymbolEffect.Trigger(v2);
      v4 = v2;
      goto LABEL_10;
    }

    outlined copy of _SymbolEffect.Trigger?(*a1);
  }

  outlined consume of _SymbolEffect.Trigger(v2);
  v4 = v3;
LABEL_10:
  outlined consume of _SymbolEffect.Trigger(v4);
LABEL_11:
  v5 = 0;
  return v5 & 1;
}

uint64_t _SymbolEffect.Options.repeatCount.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

uint64_t _SymbolEffect.Options.repeatDelay.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result) & 1;
  return result;
}

void __swiftcall _SymbolEffect.Options.init()(SwiftUI::_SymbolEffect::Options *__return_ptr retstr)
{
  *&retstr->speed = 1065353216;
  retstr->repeatCount.is_nil = 1;
  retstr->repeatDelay.value = 0.0;
  retstr->repeatDelay.is_nil = 1;
}

double _SymbolEffect.storage.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  v5 = *(v1 + 24);
  *(a1 + 24) = v5;
  return outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
}

__n128 _SymbolEffect.storage.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u16[4];
  outlined consume of _SymbolEffect.Storage(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
  result = v5;
  *v1 = v5;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

float _SymbolEffect.options.getter@<S0>(uint64_t a1@<X8>)
{
  result = *(v1 + 28);
  v3 = *(v1 + 32);
  v4 = *(v1 + 36);
  v5 = *(v1 + 40);
  v6 = *(v1 + 44);
  *a1 = result;
  *(a1 + 4) = v3;
  *(a1 + 8) = v4;
  *(a1 + 12) = v5;
  *(a1 + 16) = v6;
  return result;
}

float _SymbolEffect.options.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 8);
  v5 = *(a1 + 12);
  v6 = *(a1 + 16);
  *(v1 + 28) = *a1;
  *(v1 + 32) = v3;
  *(v1 + 36) = v4;
  *(v1 + 40) = v5;
  *(v1 + 44) = v6;
  return result;
}

float _SymbolEffect.init(_:options:)@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = *a2;
  v6 = *(a2 + 4);
  v7 = *(a2 + 8);
  v8 = *(a2 + 12);
  v9 = *(a2 + 16);
  *a3 = *a1;
  *(a3 + 16) = v3;
  *(a3 + 24) = v4;
  *(a3 + 28) = result;
  *(a3 + 32) = v6;
  *(a3 + 36) = v7;
  *(a3 + 40) = v8;
  *(a3 + 44) = v9;
  return result;
}

double _SymbolEffect.PulseConfiguration.trigger.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

void _SymbolEffect.PulseConfiguration.trigger.setter(uint64_t *a1)
{
  v2 = *a1;
  outlined consume of _SymbolEffect.Trigger?(*v1);
  *v1 = v2;
}

double _SymbolEffect.BounceConfiguration.trigger.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

void _SymbolEffect.BounceConfiguration.trigger.setter(uint64_t *a1)
{
  v2 = *a1;
  outlined consume of _SymbolEffect.Trigger?(*v1);
  *v1 = v2;
}

void _SymbolEffect.BounceConfiguration.init()(uint64_t a1@<X8>)
{
  *a1 = 0xF000000000000006;
  *(a1 + 8) = 0;
  *(a1 + 12) = 1;
}

double _SymbolEffect.WiggleConfiguration.trigger.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

void _SymbolEffect.WiggleConfiguration.trigger.setter(uint64_t *a1)
{
  v2 = *a1;
  outlined consume of _SymbolEffect.Trigger?(*v1);
  *v1 = v2;
}

uint64_t _SymbolEffect.WiggleConfiguration.angle.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

double _SymbolEffect.WiggleConfiguration.init()@<D0>(uint64_t a1@<X8>)
{
  result = -3.10503618e231;
  *a1 = xmmword_18DDC4DA0;
  *(a1 + 16) = 1;
  *(a1 + 20) = 0;
  *(a1 + 24) = 1;
  return result;
}

double _SymbolEffect.VariableColorConfiguration.trigger.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return outlined copy of _SymbolEffect.Trigger?(v2);
}

void _SymbolEffect.VariableColorConfiguration.trigger.setter(uint64_t *a1)
{
  v2 = *a1;
  outlined consume of _SymbolEffect.Trigger?(*v1);
  *v1 = v2;
}

uint64_t static _SymbolEffect.ScaleConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 4) ^ *(a1 + 4) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _SymbolEffect.ScaleConfiguration(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return (*(a2 + 4) ^ *(a1 + 4) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

void _SymbolEffect.HiddenConfiguration.kind.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t _SymbolEffect.HiddenConfiguration.kind.setter(uint64_t result)
{
  v2 = *(result + 4);
  *v1 = *result;
  *(v1 + 4) = v2;
  return result;
}

void _SymbolEffect.HiddenConfiguration.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  *(a1 + 5) = 1;
}

uint64_t _SymbolEffect.HiddenConfiguration.transitionFlags.getter()
{
  v1 = *(v0 + 5);
  if ((v0[1] & 1) == 0)
  {
    result = *v0;
    if ((v1 | ((*v0 & 0x10) >> 4)))
    {
      return result;
    }

    return result | 0x10;
  }

  result = 0;
  if ((v1 & 1) == 0)
  {
    return result | 0x10;
  }

  return result;
}

void _SymbolEffect.ReplaceConfiguration.init()(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 4) = 1;
  *(a1 + 8) = 1065353216;
}

uint64_t _SymbolEffect.ReplaceConfiguration.transitionFlags.getter()
{
  if (v0[4])
  {
    return *v0;
  }

  else
  {
    return *v0 | 0x10u;
  }
}

BOOL static _SymbolEffect.ReplaceConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 4) ^ *(a2 + 4)) & 1) == 0)
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance _SymbolEffect.ReplaceConfiguration(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 4) ^ *(a2 + 4)) & 1) == 0)
  {
    return *(a1 + 8) == *(a2 + 8);
  }

  return result;
}

uint64_t _SymbolEffect.Identified.effect.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[2];
  v6 = v1[1];
  v7[0] = v2;
  *(v7 + 13) = *(v1 + 45);
  v3 = *(v7 + 13);
  *a1 = v6;
  a1[1] = v2;
  *(a1 + 29) = v3;
  return outlined init with copy of _SymbolEffect(&v6, &v5);
}

__n128 _SymbolEffect.Identified.effect.setter(uint64_t a1)
{
  v3 = v1[2];
  v6 = v1[1];
  v7[0] = v3;
  *(v7 + 13) = *(v1 + 45);
  outlined destroy of _SymbolEffect(&v6);
  v4 = *(a1 + 16);
  v1[1] = *a1;
  v1[2] = v4;
  result = *(a1 + 29);
  *(v1 + 45) = result;
  return result;
}

__n128 _SymbolEffect.Identified.init(identifier:serial:effect:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  v4 = *(a3 + 16);
  *(a4 + 16) = *a3;
  *(a4 + 32) = v4;
  result = *(a3 + 29);
  *(a4 + 45) = result;
  return result;
}

void _SymbolEffect.applyLayoutDirection(from:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if ((v2 & 0xF000) != 0x3000)
  {
    return;
  }

  v3 = *v1;
  if ((*(v1 + 24) & 0x100) == 0)
  {
    outlined copy of _SymbolEffect.Trigger?(*v1);
    goto LABEL_13;
  }

  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *v1;
  if (v5)
  {
    outlined copy of _SymbolEffect.Storage(v8, *(v1 + 8), *(v1 + 16), *(v1 + 24));

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesV015LayoutDirectionI0VG_Tt1g5(v4, &v13);

    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  outlined copy of _SymbolEffect.Trigger?(v8);
  v9 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV015LayoutDirectionS0VG_Tt0g5(v4);
  if (v9 && *(v9 + 72) == 1)
  {
LABEL_9:
    v10 = HIDWORD(v7) & 0xFFFFFF0F;
    v11 = BYTE4(v7) & 0xF0;
    if ((v7 & 0xF000000000) == 0)
    {
      goto LABEL_12;
    }

    if (v11 == 32)
    {
      v10 = v10 | 0x10;
      goto LABEL_17;
    }

    if (v11 == 16)
    {
LABEL_12:
      v10 = v10 | 0x20;
    }

LABEL_17:
    v12 = v7 & 1 | (v10 << 32);
    outlined consume of _SymbolEffect.Storage(*v1, *(v1 + 8), *(v1 + 16), *(v1 + 24));
    *v1 = v3;
    *(v1 + 8) = v6;
    *(v1 + 16) = v12;
    *(v1 + 24) = v2 & 0x3001;
    return;
  }

LABEL_13:

  outlined consume of _SymbolEffect.Trigger?(v3);
}

void EnvironmentValues.symbolEffects.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE013SymbolEffectsI033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt1g5(v1);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(v1);
  }
}

void key path getter for EnvironmentValues.symbolEffects : EnvironmentValues(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE013SymbolEffectsI033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt1g5(v3);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(*a1);
    v4 = v5;
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.symbolEffects : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE013SymbolEffectsK033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Ttg5(v4, *a2);
  }

  return result;
}

double EnvironmentValues.symbolEffects.setter(uint64_t a1)
{
  v3 = *v1;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(v1, a1);

  if (v1[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE013SymbolEffectsK033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Ttg5(v3, *v1);
  }

  return result;
}

void (*EnvironmentValues.symbolEffects.modify(uint64_t **a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v5 = *v1;
  v3[4] = *v1;
  v6 = *(v1 + 8);
  v3[5] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE013SymbolEffectsI033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt1g5(v5);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(v5);
    v7 = v8;
  }

  v4[6] = 0;
  *v4 = v7;
  return EnvironmentValues.symbolEffects.modify;
}

void EnvironmentValues.symbolEffects.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;

  v5 = v3[5];
  v6 = v3[3];
  if (a2)
  {
    swift_bridgeObjectRetain_n();

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(v6, v4);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE013SymbolEffectsK033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Ttg5(v3[4], *v3[3]);
    }
  }

  else
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(v6, v4);

    if (v5)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE013SymbolEffectsK033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Ttg5(v3[4], *v3[3]);
    }
  }

  free(v3);
}

uint64_t EnvironmentValues.appendSymbolEffect(_:for:)(__int128 *a1, uint64_t a2)
{
  v4 = a1[1];
  v19 = *a1;
  v20[0] = v4;
  *(v20 + 13) = *(a1 + 29);
  v17 = v19;
  v18[0] = v4;
  *(v18 + 13) = *(v20 + 13);
  v5 = *v2;
  v6 = v2[1];
  *&v21 = *v2;
  *(&v21 + 1) = v6;
  outlined init with copy of _SymbolEffect(&v19, &v23);

  _SymbolEffect.applyLayoutDirection(from:)(&v21);

  v21 = v17;
  v22[0] = v18[0];
  *(v22 + 13) = *(v18 + 13);
  v23 = v17;
  v24[0] = v18[0];
  *(v24 + 13) = *(v18 + 13);
  outlined init with copy of _SymbolEffect(&v21, &v15);
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE013SymbolEffectsI033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt1g5(v5);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(v5);
    v7 = v8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
  }

  v10 = *(v7 + 16);
  v9 = *(v7 + 24);
  if (v10 >= v9 >> 1)
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v7);
  }

  *(v7 + 16) = v10 + 1;
  v11 = v7 + (v10 << 6);
  *(v11 + 32) = a2;
  *(v11 + 40) = 0;
  v12 = v23;
  v13 = v24[0];
  *(v11 + 77) = *(v24 + 13);
  *(v11 + 48) = v12;
  *(v11 + 64) = v13;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(v2, v7);

  if (v6)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA0L6ValuesVAAE013SymbolEffectsK033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Ttg5(v5, *v2);
  }

  v15 = v17;
  v16[0] = v18[0];
  *(v16 + 13) = *(v18 + 13);
  return outlined destroy of _SymbolEffect(&v15);
}

uint64_t _SymbolEffect.Storage.matchesType(of:)(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = v9 >> 12;
  if (v9 >> 12 <= 3)
  {
    if (v9 >> 12 > 1)
    {
      v11 = v5 & 0xF000;
      if (v10 == 2)
      {
        outlined copy of _SymbolEffect.Trigger?(v6);
        if (v11 != 0x2000)
        {
          goto LABEL_31;
        }
      }

      else
      {
        outlined copy of _SymbolEffect.Trigger?(v6);
        if (v11 != 12288)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_29;
    }

    if (v10)
    {
      outlined copy of _SymbolEffect.Trigger?(v6);
      if ((v5 & 0xF000) != 0x1000)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    outlined copy of _SymbolEffect.Trigger?(*v1);
    if (v5 < 0x1000)
    {
      goto LABEL_29;
    }

LABEL_31:
    v14 = 0;
    goto LABEL_32;
  }

  if (v9 >> 12 <= 5)
  {
    v12 = v5 & 0xF000;
    if (v10 == 4)
    {
      outlined copy of _SymbolEffect.Trigger?(v6);
      if (v12 != 0x4000)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }

    outlined copy of _SymbolEffect.Trigger?(v6);
    if (v12 == 20480)
    {
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (v10 == 6)
  {
    if ((v5 & 0xF000) != 0x6000)
    {
      goto LABEL_31;
    }
  }

  else if (v10 == 7)
  {
    if ((v5 & 0xF000) != 0x7000)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v13 = (v5 & 0xF000) == 0x8000 && (v3 | v2 | v4) == 0;
    if (!v13 || v5 != 0x8000)
    {
      goto LABEL_31;
    }
  }

LABEL_29:
  v14 = 1;
LABEL_32:
  outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
  outlined consume of _SymbolEffect.Storage(v6, v7, v8, v9);
  outlined consume of _SymbolEffect.Storage(v2, v3, v4, v5);
  return v14;
}

double _SymbolEffect.Storage.trigger.setter(uint64_t *a1)
{
  v2 = *a1;
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v6 >> 12;
  if (v6 >> 12 <= 3)
  {
    v11 = *v1;
    if (v6 >> 12 > 1)
    {
      if (v7 == 2)
      {
        outlined copy of _SymbolEffect.Trigger?(v11);
        outlined consume of _SymbolEffect.Storage(v4, v3, v5, v6);
        outlined consume of _SymbolEffect.Trigger?(v4);
        v9 = 0;
        v3 &= 0x1FFFFFFFFuLL;
        v10 = 0x2000;
      }

      else
      {
        outlined copy of _SymbolEffect.Trigger?(v11);
        outlined consume of _SymbolEffect.Storage(v4, v3, v5, v6);
        outlined consume of _SymbolEffect.Trigger?(v4);
        v9 = v5 & 0xFFFFFFFF00000001;
        v10 = v6 & 0x101 | 0x3000;
      }
    }

    else if (v7)
    {
      outlined copy of _SymbolEffect.Trigger?(v11);
      outlined consume of _SymbolEffect.Storage(v4, v3, v5, v6);
      outlined consume of _SymbolEffect.Trigger?(v4);
      v9 = 0;
      v3 &= 0x1FFFFFFFFuLL;
      v10 = 4096;
    }

    else
    {
      outlined copy of _SymbolEffect.Trigger?(v11);
      outlined consume of _SymbolEffect.Storage(v4, v3, v5, v6);
      outlined consume of _SymbolEffect.Trigger?(v4);
      v9 = 0;
      v10 = 0;
      v3 &= 1u;
    }
  }

  else
  {
    if (v7 - 6 < 3)
    {
      goto LABEL_14;
    }

    v8 = *v1;
    if (v7 == 4)
    {
      outlined copy of _SymbolEffect.Trigger?(v8);
      outlined consume of _SymbolEffect.Storage(v4, v3, v5, v6);
      outlined consume of _SymbolEffect.Trigger?(v4);
      v9 = 0;
      v3 &= 0x1FFFFFFFFuLL;
      v10 = 0x4000;
    }

    else
    {
      outlined copy of _SymbolEffect.Trigger?(v8);
      outlined consume of _SymbolEffect.Storage(v4, v3, v5, v6);
      outlined consume of _SymbolEffect.Trigger?(v4);
      v9 = 0;
      v3 = v3;
      v10 = 20480;
    }
  }

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v9;
  *(v1 + 24) = v10;
  outlined copy of _SymbolEffect.Trigger?(v2);
LABEL_14:

  return outlined consume of _SymbolEffect.Trigger?(v2);
}

double closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 17;
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;

  static Update.enqueueAction(reason:_:)(&v8, partial apply for closure #1 in closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:), v6);

  return result;
}

uint64_t closure #1 in closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    result = (*(*result + 96))();
  }

  if (a2)
  {
    return (*(*a2 + 96))(result);
  }

  return result;
}

double thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned UInt32) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

void _SymbolEffect.encode(to:)()
{
  v2 = *(v0 + 28);
  v3 = *(v0 + 32);
  v4 = *(v0 + 36);
  v5 = *(v0 + 40);
  v6 = *(v0 + 44);
  specialized ProtobufEncoder.messageField<A>(_:_:)(1, *v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  if (!v1 && ((v2 == 1.0) & v4 & v6) != 1)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    specialized ProtobufEncoder.encodeMessage<A>(_:)(v3, v4 | (v5 << 32), v6, v2);
  }
}

void _SymbolEffect.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = 1;
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
LABEL_56:
    a1[3] = 0;
    goto LABEL_57;
  }

  v46 = 0;
  v47 = 0;
  v49 = 0;
  v50 = 0;
  v6 = 2;
  v7 = 1.0;
  v48 = 1;
  v8 = 4294967294;
  v9 = 1;
  while (1)
  {
    v10 = a1[3];
    if (v10)
    {
      v11 = a1[4];
      if (v4 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v4)
      {
        goto LABEL_58;
      }

      a1[3] = 0;
    }

    v10 = ProtobufDecoder.decodeVarint()(v10);
    if (v2)
    {
      goto LABEL_60;
    }

    if (v10 < 8)
    {
LABEL_58:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      v33 = v49;
      v34 = v50;
      v35 = v8;
LABEL_59:
      outlined consume of _SymbolEffect.Storage?(v33, v34, v35, v6);
      return;
    }

LABEL_11:
    if (v10 >> 3 == 2)
    {
      break;
    }

    if (v10 >> 3 == 1)
    {
      if ((v10 & 7) != 2)
      {
        goto LABEL_58;
      }

      v12 = v8;
      v13 = a1[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
        v13 = isUniquelyReferenced_nonNull_native;
      }

      v6 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v6 >= v15 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v6 + 1, 1, v13);
        v13 = isUniquelyReferenced_nonNull_native;
      }

      *(v13 + 16) = v6 + 1;
      *(v13 + 8 * v6 + 32) = v5;
      a1[5] = v13;
      v16 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v2)
      {
        v36 = v49;
        v37 = v50;
        v38 = v12;
        v39 = v8;
LABEL_65:
        outlined consume of _SymbolEffect.Storage?(v36, v37, v38, v39);
        return;
      }

      if (v16 < 0)
      {
        goto LABEL_72;
      }

      LOWORD(v6) = v8;
      v17 = a1[1] + v16;
      if (v5 < v17)
      {
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        v33 = v49;
        v34 = v50;
        v35 = v12;
        goto LABEL_59;
      }

      a1[2] = v17;
      _SymbolEffect.Storage.init(from:)(a1, &v51);
      v8 = v12;
      v18 = a1[5];
      if (!*(v18 + 2))
      {
        goto LABEL_74;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v19 = *(v18 + 2);
        if (!v19)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
        v19 = *(v18 + 2);
        if (!v19)
        {
          goto LABEL_75;
        }
      }

      v20 = v19 - 1;
      v5 = *&v18[8 * v20 + 32];
      *(v18 + 2) = v20;
      outlined consume of _SymbolEffect.Storage?(v49, v50, v12, v6);
      a1[5] = v18;
      a1[2] = v5;
      v49 = v51;
      v50 = v52;
      v8 = v53;
      v6 = v54;
      goto LABEL_4;
    }

    v30 = v10 & 7;
    if (v30 > 1)
    {
      if (v30 == 2)
      {
        v32 = ProtobufDecoder.decodeVarint()(v10);
        if (v2)
        {
          goto LABEL_60;
        }

        if (v32 < 0)
        {
          goto LABEL_76;
        }

        v31 = a1[1] + v32;
        if (v5 < v31)
        {
          goto LABEL_58;
        }
      }

      else
      {
        if (v30 != 5)
        {
          goto LABEL_58;
        }

        v31 = a1[1] + 4;
        if (v5 < v31)
        {
          goto LABEL_58;
        }
      }
    }

    else
    {
      if ((v10 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v10);
        if (v2)
        {
          goto LABEL_60;
        }

        goto LABEL_4;
      }

      if (v30 != 1)
      {
        goto LABEL_58;
      }

      v31 = a1[1] + 8;
      if (v5 < v31)
      {
        goto LABEL_58;
      }
    }

    a1[1] = v31;
LABEL_4:
    v4 = a1[1];
    if (v4 >= v5)
    {
      v56 = v9 & 1;
      v55 = v48 & 1;
      a1[3] = 0;
      if ((~v8 & 0xFFFFFFFE) != 0 || (v6 & 0xFEFE) != 2)
      {
        v40 = v56;
        v41 = v55;
        *a2 = v49;
        *(a2 + 8) = v50;
        *(a2 + 16) = v8;
        *(a2 + 24) = v6;
        *(a2 + 28) = v7;
        *(a2 + 32) = v47;
        *(a2 + 36) = v40;
        *(a2 + 40) = v46;
        *(a2 + 44) = v41;
        return;
      }

LABEL_57:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      return;
    }
  }

  if ((v10 & 7) != 2)
  {
    goto LABEL_58;
  }

  v21 = a1[5];
  v22 = swift_isUniquelyReferenced_nonNull_native();
  if ((v22 & 1) == 0)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
    v21 = v22;
  }

  v24 = *(v21 + 16);
  v23 = *(v21 + 24);
  if (v24 >= v23 >> 1)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
    v21 = v22;
  }

  *(v21 + 16) = v24 + 1;
  *(v21 + 8 * v24 + 32) = v5;
  a1[5] = v21;
  v25 = ProtobufDecoder.decodeVarint()(v22);
  if (v2)
  {
LABEL_60:
    v36 = v49;
    v37 = v50;
    v38 = v8;
    v39 = v6;
    goto LABEL_65;
  }

  if ((v25 & 0x8000000000000000) == 0)
  {
    v26 = a1[1] + v25;
    if (v5 < v26)
    {
      goto LABEL_58;
    }

    a1[2] = v26;
    _SymbolEffect.Options.init(from:)(a1, &v51);
    v27 = a1[5];
    if (!*(v27 + 2))
    {
      goto LABEL_73;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v28 = *(v27 + 2);
      if (!v28)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v27 = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
      v28 = *(v27 + 2);
      if (!v28)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    v29 = v28 - 1;
    v5 = *&v27[8 * v29 + 32];
    *(v27 + 2) = v29;
    a1[5] = v27;
    a1[2] = v5;
    v7 = *&v51;
    v9 = v52;
    v46 = HIDWORD(v52);
    v47 = HIDWORD(v51);
    v48 = v53;
    goto LABEL_4;
  }

  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  __break(1u);
  do
  {
    __break(1u);
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    v42 = *(v9 + 16);
    if (v42)
    {
      goto LABEL_70;
    }

    __break(1u);
    v9 = a1[5];
  }

  while (!*(v9 + 16));
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v42 = *(v9 + 16);
    if (v42)
    {
LABEL_70:
      v43 = v42 - 1;
      v44 = *(v9 + 8 * v43 + 32);
      *(v9 + 16) = v43;
      outlined consume of _SymbolEffect.Storage?(v49, v50, v8, v6);
      a1[5] = v9;
      a1[2] = v44;
      return;
    }
  }

  else
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    v42 = *(v9 + 16);
    if (v42)
    {
      goto LABEL_70;
    }
  }

  __break(1u);
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance _SymbolEffect()
{
  v2 = *(v0 + 28);
  v3 = *(v0 + 32);
  v4 = *(v0 + 36);
  v5 = *(v0 + 40);
  v6 = *(v0 + 44);
  specialized ProtobufEncoder.messageField<A>(_:_:)(1, *v0, *(v0 + 8), *(v0 + 16), *(v0 + 24));
  if (!v1 && ((v2 == 1.0) & v4 & v6) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    specialized ProtobufEncoder.encodeMessage<A>(_:)(v3, v4 | (v5 << 32), v6, v2);
  }
}

void _SymbolEffect.Storage.encode(to:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24) >> 12;
  if (v3 <= 3)
  {
    if (*(v0 + 24) >> 12 > 1u)
    {
      if (v3 == 2)
      {
        specialized ProtobufEncoder.messageField<A>(_:_:)(2, v1, v2 & 0x1FFFFFFFFLL);
      }

      else
      {
        specialized ProtobufEncoder.messageField<A>(_:_:)(3);
      }
    }

    else if (v3)
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(8, v1, v2 & 0x1FFFFFFFFLL);
    }

    else
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(1, v1, v2 & 1);
    }
  }

  else if (*(v0 + 24) >> 12 <= 5u)
  {
    if (v3 == 4)
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(4, v1, v2 & 0x1FFFFFFFFLL);
    }

    else
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(5, v1, v2);
    }
  }

  else if (v3 == 6)
  {
    v5 = *v0;
    ProtobufEncoder.encodeVarint(_:)(0x32uLL);
    specialized ProtobufEncoder.encodeMessage<A>(_:)(v5 & 0x1FFFFFFFFLL);
  }

  else if (v3 == 7)
  {
    v4 = *v0;
    ProtobufEncoder.encodeVarint(_:)(0x3AuLL);
    specialized ProtobufEncoder.encodeMessage<A>(_:)(v4 & 0x10100FFFFFFFFLL | ((HIDWORD(v4) & 1) << 32));
  }
}

void _SymbolEffect.Storage.init(from:)(void *result@<X0>, uint64_t *a2@<X8>)
{
  v108 = a2;
  v5 = result[1];
  v6 = result[2];
  if (v5 >= v6)
  {
LABEL_167:
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0x8000;
LABEL_168:
    result[3] = 0;
    v98 = v108;
    *v108 = v7;
    v98[1] = v8;
    v98[2] = v9;
    *(v98 + 12) = v10;
    return;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0x8000;
  while (1)
  {
    v11 = result[3];
    if (v11)
    {
      v12 = result[4];
      if (v5 < v12)
      {
        goto LABEL_9;
      }

      if (v12 < v5)
      {
        goto LABEL_169;
      }

      result[3] = 0;
    }

    v11 = ProtobufDecoder.decodeVarint()(v11);
    if (v2)
    {
      goto LABEL_170;
    }

    if (v11 < 8)
    {
      goto LABEL_169;
    }

LABEL_9:
    v13 = v11 >> 3;
    if (v11 >> 3 <= 4)
    {
      if (v11 >> 3 > 2)
      {
        if (v13 == 3)
        {
          if ((v11 & 7) != 2)
          {
            goto LABEL_169;
          }

          v72 = result[5];
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72 + 16) + 1, 1, v72);
            v72 = isUniquelyReferenced_nonNull_native;
          }

          v3 = *(v72 + 16);
          v74 = *(v72 + 24);
          v75 = v3 + 1;
          if (v3 >= v74 >> 1)
          {
            isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v3 + 1, 1, v72);
            v75 = v3 + 1;
            v72 = isUniquelyReferenced_nonNull_native;
          }

          *(v72 + 16) = v75;
          *(v72 + 8 * v3 + 32) = v6;
          result[5] = v72;
          v76 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
          if (v2)
          {
            goto LABEL_170;
          }

          if (v76 < 0)
          {
            goto LABEL_200;
          }

          v77 = result[1] + v76;
          if (v6 < v77)
          {
LABEL_169:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
            return;
          }

          result[2] = v77;
          _SymbolEffect.WiggleConfiguration.init(from:)(result, &v102);
          v78 = result[5];
          if (!*(v78 + 2))
          {
            goto LABEL_202;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v79 = *(v78 + 2);
            if (!v79)
            {
              goto LABEL_212;
            }
          }

          else
          {
            v78 = specialized _ArrayBuffer._consumeAndCreateNew()(v78);
            v79 = *(v78 + 2);
            if (!v79)
            {
              goto LABEL_212;
            }
          }

          v80 = v79 - 1;
          v6 = *&v78[8 * v80 + 32];
          *(v78 + 2) = v80;
          outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
          result[5] = v78;
          result[2] = v6;
          v7 = v102;
          v8 = v103;
          v9 = v104 | (v105 << 32);
          if (v107)
          {
            v81 = 256;
          }

          else
          {
            v81 = 0;
          }

          v10 = v81 | v106 | 0x3000;
          goto LABEL_133;
        }

        if (v13 == 4)
        {
          if ((v11 & 7) != 2)
          {
            goto LABEL_169;
          }

          v34 = result[5];
          v35 = swift_isUniquelyReferenced_nonNull_native();
          if ((v35 & 1) == 0)
          {
            v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 16) + 1, 1, v34);
            v34 = v35;
          }

          v3 = *(v34 + 16);
          v36 = *(v34 + 24);
          v37 = v3 + 1;
          if (v3 >= v36 >> 1)
          {
            v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v3 + 1, 1, v34);
            v37 = v3 + 1;
            v34 = v35;
          }

          *(v34 + 16) = v37;
          *(v34 + 8 * v3 + 32) = v6;
          result[5] = v34;
          v38 = ProtobufDecoder.decodeVarint()(v35);
          if (v2)
          {
            goto LABEL_170;
          }

          if (v38 < 0)
          {
            goto LABEL_199;
          }

          v39 = result[1] + v38;
          if (v6 < v39)
          {
            goto LABEL_169;
          }

          result[2] = v39;
          _SymbolEffect.BounceConfiguration.init(from:)(result, &v102);
          v40 = result[5];
          if (!*(v40 + 2))
          {
            goto LABEL_207;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v41 = *(v40 + 2);
            if (!v41)
            {
              goto LABEL_215;
            }
          }

          else
          {
            v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
            v41 = *(v40 + 2);
            if (!v41)
            {
              goto LABEL_215;
            }
          }

          v42 = v41 - 1;
          v6 = *&v40[8 * v42 + 32];
          *(v40 + 2) = v42;
          outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
          v9 = 0;
          result[5] = v40;
          result[2] = v6;
          v7 = v102;
          v43 = 0x100000000;
          if (!BYTE4(v103))
          {
            v43 = 0;
          }

          v8 = v43 | v103;
          v10 = 0x4000;
          goto LABEL_133;
        }
      }

      else
      {
        if (v13 == 1)
        {
          if ((v11 & 7) != 2)
          {
            goto LABEL_169;
          }

          v54 = result[5];
          v55 = swift_isUniquelyReferenced_nonNull_native();
          if ((v55 & 1) == 0)
          {
            v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v54 + 16) + 1, 1, v54);
            v54 = v55;
          }

          v3 = *(v54 + 16);
          v56 = *(v54 + 24);
          v57 = v3 + 1;
          if (v3 >= v56 >> 1)
          {
            v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v3 + 1, 1, v54);
            v57 = v3 + 1;
            v54 = v55;
          }

          *(v54 + 16) = v57;
          *(v54 + 8 * v3 + 32) = v6;
          result[5] = v54;
          v58 = ProtobufDecoder.decodeVarint()(v55);
          if (v2)
          {
            goto LABEL_170;
          }

          if (v58 < 0)
          {
            goto LABEL_197;
          }

          v59 = result[1] + v58;
          if (v6 < v59)
          {
            goto LABEL_169;
          }

          result[2] = v59;
          _SymbolEffect.PulseConfiguration.init(from:)(result, &v102);
          v60 = result[5];
          if (!*(v60 + 2))
          {
            goto LABEL_204;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v61 = *(v60 + 2);
            if (!v61)
            {
              goto LABEL_211;
            }
          }

          else
          {
            v60 = specialized _ArrayBuffer._consumeAndCreateNew()(v60);
            v61 = *(v60 + 2);
            if (!v61)
            {
              goto LABEL_211;
            }
          }

          v62 = v61 - 1;
          v6 = *&v60[8 * v62 + 32];
          *(v60 + 2) = v62;
          outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
          v9 = 0;
          v10 = 0;
          result[5] = v60;
          result[2] = v6;
          v7 = v102;
          v8 = v103;
          goto LABEL_133;
        }

        if (v13 == 2)
        {
          if ((v11 & 7) != 2)
          {
            goto LABEL_169;
          }

          v14 = result[5];
          v15 = swift_isUniquelyReferenced_nonNull_native();
          if ((v15 & 1) == 0)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
            v14 = v15;
          }

          v3 = *(v14 + 16);
          v16 = *(v14 + 24);
          v17 = v3 + 1;
          if (v3 >= v16 >> 1)
          {
            v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v3 + 1, 1, v14);
            v17 = v3 + 1;
            v14 = v15;
          }

          *(v14 + 16) = v17;
          *(v14 + 8 * v3 + 32) = v6;
          result[5] = v14;
          v18 = ProtobufDecoder.decodeVarint()(v15);
          if (v2)
          {
            goto LABEL_170;
          }

          if (v18 < 0)
          {
            goto LABEL_198;
          }

          v19 = result[1] + v18;
          if (v6 < v19)
          {
            goto LABEL_169;
          }

          result[2] = v19;
          _SymbolEffect.BounceConfiguration.init(from:)(result, &v102);
          v20 = result[5];
          if (!*(v20 + 2))
          {
            goto LABEL_201;
          }

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v21 = *(v20 + 2);
            if (!v21)
            {
              goto LABEL_210;
            }
          }

          else
          {
            v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
            v21 = *(v20 + 2);
            if (!v21)
            {
              goto LABEL_210;
            }
          }

          v22 = v21 - 1;
          v6 = *&v20[8 * v22 + 32];
          *(v20 + 2) = v22;
          outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
          v9 = 0;
          result[5] = v20;
          result[2] = v6;
          v7 = v102;
          v23 = 0x100000000;
          if (!BYTE4(v103))
          {
            v23 = 0;
          }

          v8 = v23 | v103;
          v10 = 0x2000;
          goto LABEL_133;
        }
      }

      goto LABEL_136;
    }

    if (v11 >> 3 > 6)
    {
      if (v13 == 7)
      {
        if ((v11 & 7) != 2)
        {
          goto LABEL_169;
        }

        v82 = result[5];
        v83 = swift_isUniquelyReferenced_nonNull_native();
        if ((v83 & 1) == 0)
        {
          v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v82 + 16) + 1, 1, v82);
          v82 = v83;
        }

        v3 = *(v82 + 16);
        v84 = *(v82 + 24);
        v85 = v3 + 1;
        if (v3 >= v84 >> 1)
        {
          v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v3 + 1, 1, v82);
          v85 = v3 + 1;
          v82 = v83;
        }

        *(v82 + 16) = v85;
        *(v82 + 8 * v3 + 32) = v6;
        result[5] = v82;
        v86 = ProtobufDecoder.decodeVarint()(v83);
        if (v2)
        {
LABEL_170:
          outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
          return;
        }

        if (v86 < 0)
        {
          goto LABEL_194;
        }

        v87 = result[1] + v86;
        if (v6 < v87)
        {
          goto LABEL_169;
        }

        result[2] = v87;
        _SymbolEffect.HiddenConfiguration.init(from:)(result, &v102);
        v88 = result[5];
        if (!*(v88 + 2))
        {
          goto LABEL_206;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v89 = *(v88 + 2);
          if (!v89)
          {
            goto LABEL_209;
          }
        }

        else
        {
          v88 = specialized _ArrayBuffer._consumeAndCreateNew()(v88);
          v89 = *(v88 + 2);
          if (!v89)
          {
            goto LABEL_209;
          }
        }

        v90 = v89 - 1;
        v6 = *&v88[8 * v90 + 32];
        *(v88 + 2) = v90;
        outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
        v8 = 0;
        v9 = 0;
        result[5] = v88;
        v91 = 0x100000000;
        if (!BYTE4(v102))
        {
          v91 = 0;
        }

        v92 = v91 | v102;
        v93 = 0x10000000000;
        if (!BYTE5(v102))
        {
          v93 = 0;
        }

        v94 = 0x1000000000000;
        if (!BYTE6(v102))
        {
          v94 = 0;
        }

        result[2] = v6;
        v7 = v92 | v93 | v94;
        v10 = 28672;
        goto LABEL_133;
      }

      if (v13 == 8)
      {
        if ((v11 & 7) != 2)
        {
          goto LABEL_169;
        }

        v44 = result[5];
        v45 = swift_isUniquelyReferenced_nonNull_native();
        if ((v45 & 1) == 0)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 16) + 1, 1, v44);
          v44 = v45;
        }

        v3 = *(v44 + 16);
        v46 = *(v44 + 24);
        v47 = v3 + 1;
        if (v3 >= v46 >> 1)
        {
          v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v3 + 1, 1, v44);
          v47 = v3 + 1;
          v44 = v45;
        }

        *(v44 + 16) = v47;
        *(v44 + 8 * v3 + 32) = v6;
        result[5] = v44;
        v48 = ProtobufDecoder.decodeVarint()(v45);
        if (v2)
        {
          goto LABEL_170;
        }

        if (v48 < 0)
        {
          goto LABEL_196;
        }

        v49 = result[1] + v48;
        if (v6 < v49)
        {
          goto LABEL_169;
        }

        result[2] = v49;
        _SymbolEffect.BreatheConfiguration.init(from:)(result, &v102);
        v50 = result[5];
        if (!*(v50 + 2))
        {
          goto LABEL_208;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v51 = *(v50 + 2);
          if (!v51)
          {
            goto LABEL_166;
          }
        }

        else
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew()(v50);
          v51 = *(v50 + 2);
          if (!v51)
          {
LABEL_166:
            __break(1u);
            goto LABEL_167;
          }
        }

        v52 = v51 - 1;
        v6 = *&v50[8 * v52 + 32];
        *(v50 + 2) = v52;
        outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
        v9 = 0;
        result[5] = v50;
        result[2] = v6;
        v7 = v102;
        v53 = 0x100000000;
        if (!BYTE4(v103))
        {
          v53 = 0;
        }

        v8 = v53 | v103;
        v10 = 4096;
        goto LABEL_133;
      }

      goto LABEL_136;
    }

    if (v13 == 5)
    {
      if ((v11 & 7) != 2)
      {
        goto LABEL_169;
      }

      v63 = result[5];
      v64 = swift_isUniquelyReferenced_nonNull_native();
      if ((v64 & 1) == 0)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v63 + 16) + 1, 1, v63);
        v63 = v64;
      }

      v3 = *(v63 + 16);
      v65 = *(v63 + 24);
      v66 = v3 + 1;
      if (v3 >= v65 >> 1)
      {
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v65 > 1), v3 + 1, 1, v63);
        v66 = v3 + 1;
        v63 = v64;
      }

      *(v63 + 16) = v66;
      *(v63 + 8 * v3 + 32) = v6;
      result[5] = v63;
      v67 = ProtobufDecoder.decodeVarint()(v64);
      if (v2)
      {
        goto LABEL_170;
      }

      if (v67 < 0)
      {
        goto LABEL_195;
      }

      v68 = result[1] + v67;
      if (v6 < v68)
      {
        goto LABEL_169;
      }

      result[2] = v68;
      _SymbolEffect.VariableColorConfiguration.init(from:)(result, &v102);
      v69 = result[5];
      if (!*(v69 + 2))
      {
        goto LABEL_203;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v70 = *(v69 + 2);
        if (!v70)
        {
          goto LABEL_214;
        }
      }

      else
      {
        v69 = specialized _ArrayBuffer._consumeAndCreateNew()(v69);
        v70 = *(v69 + 2);
        if (!v70)
        {
          goto LABEL_214;
        }
      }

      v71 = v70 - 1;
      v6 = *&v69[8 * v71 + 32];
      *(v69 + 2) = v71;
      outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
      v9 = 0;
      result[5] = v69;
      result[2] = v6;
      v7 = v102;
      v10 = 20480;
      v8 = v103;
      goto LABEL_133;
    }

    if (v13 == 6)
    {
      break;
    }

LABEL_136:
    v95 = v11 & 7;
    if (v95 > 1)
    {
      if (v95 == 2)
      {
        v97 = ProtobufDecoder.decodeVarint()(v11);
        if (v2)
        {
          goto LABEL_170;
        }

        if (v97 < 0)
        {
          goto LABEL_216;
        }

        v96 = result[1] + v97;
        if (v6 < v96)
        {
          goto LABEL_169;
        }
      }

      else
      {
        if (v95 != 5)
        {
          goto LABEL_169;
        }

        v96 = result[1] + 4;
        if (v6 < v96)
        {
          goto LABEL_169;
        }
      }

      goto LABEL_150;
    }

    if ((v11 & 7) != 0)
    {
      if (v95 != 1)
      {
        goto LABEL_169;
      }

      v96 = result[1] + 8;
      if (v6 < v96)
      {
        goto LABEL_169;
      }

LABEL_150:
      result[1] = v96;
      goto LABEL_134;
    }

    ProtobufDecoder.decodeVarint()(v11);
    if (v2)
    {
      goto LABEL_170;
    }

LABEL_134:
    v5 = result[1];
    if (v5 >= v6)
    {
      goto LABEL_168;
    }
  }

  if ((v11 & 7) != 2)
  {
    goto LABEL_169;
  }

  v24 = result[5];
  v25 = swift_isUniquelyReferenced_nonNull_native();
  if ((v25 & 1) == 0)
  {
    v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24);
    v24 = v25;
  }

  v3 = *(v24 + 16);
  v26 = *(v24 + 24);
  v27 = v3 + 1;
  if (v3 >= v26 >> 1)
  {
    v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v3 + 1, 1, v24);
    v27 = v3 + 1;
    v24 = v25;
  }

  *(v24 + 16) = v27;
  *(v24 + 8 * v3 + 32) = v6;
  result[5] = v24;
  v28 = ProtobufDecoder.decodeVarint()(v25);
  if (v2)
  {
    goto LABEL_170;
  }

  if ((v28 & 0x8000000000000000) == 0)
  {
    v29 = result[1] + v28;
    if (v6 < v29)
    {
      goto LABEL_169;
    }

    result[2] = v29;
    _SymbolEffect.ScaleConfiguration.init(from:)(result, &v102);
    v30 = result[5];
    if (!*(v30 + 2))
    {
      goto LABEL_205;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v31 = *(v30 + 2);
      if (!v31)
      {
        goto LABEL_213;
      }
    }

    else
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
      v31 = *(v30 + 2);
      if (!v31)
      {
        goto LABEL_213;
      }
    }

    v32 = v31 - 1;
    v6 = *&v30[8 * v32 + 32];
    *(v30 + 2) = v32;
    outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
    v8 = 0;
    v9 = 0;
    result[5] = v30;
    result[2] = v6;
    v33 = 0x100000000;
    if (!BYTE4(v102))
    {
      v33 = 0;
    }

    v7 = v33 | v102;
    v10 = 24576;
LABEL_133:
    v2 = 0;
    goto LABEL_134;
  }

  __break(1u);
LABEL_194:
  __break(1u);
LABEL_195:
  __break(1u);
LABEL_196:
  __break(1u);
LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  __break(1u);
LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
LABEL_214:
  __break(1u);
LABEL_215:
  __break(1u);
LABEL_216:
  __break(1u);
  __break(1u);
LABEL_217:
  __break(1u);
LABEL_218:
  __break(1u);
LABEL_219:
  __break(1u);
LABEL_220:
  __break(1u);
LABEL_221:
  __break(1u);
LABEL_222:
  __break(1u);
  do
  {
    __break(1u);
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v99 = *(v3 + 16);
    if (v99)
    {
      goto LABEL_192;
    }

    __break(1u);
    v3 = result[5];
    if (!*(v3 + 16))
    {
      goto LABEL_217;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v99 = *(v3 + 16);
      if (v99)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v99 = *(v3 + 16);
      if (v99)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
    v3 = result[5];
    if (!*(v3 + 16))
    {
      goto LABEL_218;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v99 = *(v3 + 16);
      if (v99)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v99 = *(v3 + 16);
      if (v99)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
    v3 = result[5];
    if (!*(v3 + 16))
    {
      goto LABEL_219;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v99 = *(v3 + 16);
      if (v99)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v99 = *(v3 + 16);
      if (v99)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
    v3 = result[5];
    if (!*(v3 + 16))
    {
      goto LABEL_220;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v99 = *(v3 + 16);
      if (v99)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v99 = *(v3 + 16);
      if (v99)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
    v3 = result[5];
    if (!*(v3 + 16))
    {
      goto LABEL_221;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v99 = *(v3 + 16);
      if (v99)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v99 = *(v3 + 16);
      if (v99)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
    v3 = result[5];
    if (!*(v3 + 16))
    {
      goto LABEL_222;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v99 = *(v3 + 16);
      if (v99)
      {
        goto LABEL_192;
      }
    }

    else
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      v99 = *(v3 + 16);
      if (v99)
      {
        goto LABEL_192;
      }
    }

    __break(1u);
    v3 = result[5];
  }

  while (!*(v3 + 16));
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v99 = *(v3 + 16);
    if (v99)
    {
LABEL_192:
      v100 = v99 - 1;
      v101 = *(v3 + 8 * v100 + 32);
      *(v3 + 16) = v100;
      outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
      result[5] = v3;
      result[2] = v101;
      return;
    }
  }

  else
  {
    v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v99 = *(v3 + 16);
    if (v99)
    {
      goto LABEL_192;
    }
  }

  __break(1u);
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance _SymbolEffect.Storage()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24) >> 12;
  if (v3 <= 3)
  {
    if (*(v0 + 24) >> 12 > 1u)
    {
      if (v3 == 2)
      {
        specialized ProtobufEncoder.messageField<A>(_:_:)(2, v1, v2 & 0x1FFFFFFFFLL);
      }

      else
      {
        specialized ProtobufEncoder.messageField<A>(_:_:)(3);
      }
    }

    else if (v3)
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(8, v1, v2 & 0x1FFFFFFFFLL);
    }

    else
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(1, v1, v2 & 1);
    }
  }

  else if (*(v0 + 24) >> 12 <= 5u)
  {
    if (v3 == 4)
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(4, v1, v2 & 0x1FFFFFFFFLL);
    }

    else
    {
      specialized ProtobufEncoder.messageField<A>(_:_:)(5, v1, v2);
    }
  }

  else if (v3 == 6)
  {
    v5 = *v0;
    ProtobufEncoder.encodeVarint(_:)(0x32uLL);
    specialized ProtobufEncoder.encodeMessage<A>(_:)(v5 & 0x1FFFFFFFFLL);
  }

  else if (v3 == 7)
  {
    v4 = *v0;
    ProtobufEncoder.encodeVarint(_:)(0x3AuLL);
    specialized ProtobufEncoder.encodeMessage<A>(_:)(v4 & 0x10100FFFFFFFFLL | ((HIDWORD(v4) & 1) << 32));
  }
}

float *_SymbolEffect.Options.encode(to:)(float *result)
{
  v2 = v1;
  v3 = result;
  v5 = *v2;
  v4 = *(v2 + 4);
  v6 = *(v2 + 8);
  v7 = *(v2 + 12);
  v8 = *(v2 + 16);
  if (*v2 != 1.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0xDuLL);
    v9 = *(v3 + 1);
    result = (v9 + 4);
    if (__OFADD__(v9, 4))
    {
      __break(1u);
    }

    else if (*(v3 + 2) >= result)
    {
      *(v3 + 1) = result;
      *(*v3 + v9) = v5;
      goto LABEL_5;
    }

    result = ProtobufEncoder.growBufferSlow(to:)(result);
    *result = v5;
  }

LABEL_5:
  if (v4 == 0.0)
  {
    v10 = 1;
  }

  else
  {
    v10 = v6;
  }

  if (v10)
  {
    goto LABEL_13;
  }

  ProtobufEncoder.encodeVarint(_:)(0x15uLL);
  v11 = *(v3 + 1);
  v12 = v11 + 4;
  if (__OFADD__(v11, 4))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (*(v3 + 2) < v12)
  {
    goto LABEL_24;
  }

  *(v3 + 1) = v12;
  for (result = (*v3 + v11); ; result = ProtobufEncoder.growBufferSlow(to:)(v12))
  {
    *result = v4;
LABEL_13:
    v13 = v7 == 0.0 ? 1 : v8;
    if (v13)
    {
      break;
    }

    ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
    v14 = *(v3 + 1);
    v12 = v14 + 4;
    if (!__OFADD__(v14, 4))
    {
      if (*(v3 + 2) < v12)
      {
        result = ProtobufEncoder.growBufferSlow(to:)(v12);
      }

      else
      {
        *(v3 + 1) = v12;
        result = (*v3 + v14);
      }

      *result = v7;
      return result;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  return result;
}

unint64_t _SymbolEffect.Options.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 1.0;
    v11 = 1;
    v10 = 1;
LABEL_57:
    v3[3] = 0;
    *a2 = v9;
    *(a2 + 4) = v7;
    *(a2 + 8) = v10 & 1;
    *(a2 + 12) = v8;
    *(a2 + 16) = v11 & 1;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 1.0;
  v10 = 1;
  v11 = 1;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v12 = v3[4];
      if (v5 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v5)
      {
        goto LABEL_55;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_55:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v13 = result >> 3;
    v14 = result & 7;
    if (result >> 3 == 3)
    {
      if (v14 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_60;
        }

        v17 = v3[1];
        if (v6 < v17 + result)
        {
          goto LABEL_55;
        }

        v3[3] = 29;
        v3[4] = v17 + result;
      }

      else
      {
        if (v14 != 5)
        {
          goto LABEL_55;
        }

        v17 = v3[1];
      }

      v5 = (v17 + 1);
      if (v6 < (v17 + 1))
      {
        goto LABEL_55;
      }

      v11 = 0;
      v8 = *v17;
      v3[1] = v5;
      goto LABEL_4;
    }

    if (v13 == 2)
    {
      break;
    }

    if (v13 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v14 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_62;
          }

          v5 = v3[1] + result;
          if (v6 < v5)
          {
            goto LABEL_55;
          }
        }

        else
        {
          if (v14 != 5)
          {
            goto LABEL_55;
          }

          v5 = v3[1] + 4;
          if (v6 < v5)
          {
            goto LABEL_55;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          v5 = v3[1];
          goto LABEL_4;
        }

        if (v14 != 1)
        {
          goto LABEL_55;
        }

        v5 = v3[1] + 8;
        if (v6 < v5)
        {
          goto LABEL_55;
        }
      }

      v3[1] = v5;
      goto LABEL_4;
    }

    if (v14 == 2)
    {
      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

      v15 = v3[1];
      if (v6 < v15 + result)
      {
        goto LABEL_55;
      }

      v3[3] = 13;
      v3[4] = v15 + result;
    }

    else
    {
      if (v14 != 5)
      {
        goto LABEL_55;
      }

      v15 = v3[1];
    }

    v5 = (v15 + 1);
    if (v6 < (v15 + 1))
    {
      goto LABEL_55;
    }

    v9 = *v15;
    v3[1] = v5;
LABEL_4:
    if (v5 >= v6)
    {
      goto LABEL_57;
    }
  }

  if (v14 != 2)
  {
    if (v14 != 5)
    {
      goto LABEL_55;
    }

    v16 = v3[1];
LABEL_36:
    v5 = (v16 + 1);
    if (v6 < (v16 + 1))
    {
      goto LABEL_55;
    }

    v10 = 0;
    v7 = *v16;
    v3[1] = v5;
    goto LABEL_4;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v16 = v3[1];
    if (v6 < v16 + result)
    {
      goto LABEL_55;
    }

    v3[3] = 21;
    v3[4] = v16 + result;
    goto LABEL_36;
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

void _SymbolEffect.Trigger.encode(to:)(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for UUID();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (v7 < 0)
  {
    if (v7)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(1uLL);
    }
  }

  else
  {
    (*(*v7 + 96))(&v19, v4);
    if (v23)
    {
      UUID.init()();
      _s7SwiftUI10StrongHashV2ofACx_tcAA16StronglyHashableRzlufC10Foundation4UUIDV_Tt1g5(v6, v18);
      v8 = v18[0];
      v9 = v18[1];
      v10 = v18[2];
      v11 = v18[3];
      v12 = v18[4];
    }

    else
    {
      v11 = v21;
      v12 = v22;
      v9 = HIDWORD(v19);
      v10 = v20;
      v8 = v19;
    }

    ProtobufEncoder.encodeVarint(_:)(0xAuLL);
    v19 = __PAIR64__(v9, v8);
    v20 = v10;
    v21 = v11;
    v22 = v12;
    v13 = a1[1];
    v14 = a1[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    *&v14[8 * v16 + 32] = v13;
    a1[3] = v14;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
    }

    a1[1] = v13 + 1;
    StrongHash.encode(to:)(a1);
    ProtobufEncoder.endLengthDelimited()();
  }
}

void _SymbolEffect.Trigger.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = 0x8000000000000000;
  while (1)
  {
    if (v5 >= v6)
    {
      goto LABEL_52;
    }

    v8 = a1[3];
    if (v8)
    {
      v9 = a1[4];
      if (v5 < v9)
      {
        goto LABEL_9;
      }

      if (v9 < v5)
      {
        goto LABEL_53;
      }

      a1[3] = 0;
    }

    v8 = ProtobufDecoder.decodeVarint()(v8);
    if (v2)
    {
      goto LABEL_54;
    }

    if (v8 < 8)
    {
      goto LABEL_53;
    }

LABEL_9:
    if (v8 >> 3 == 2)
    {
      if ((v8 & 7) != 0)
      {
        if ((v8 & 7) != 2)
        {
          goto LABEL_53;
        }

        v8 = ProtobufDecoder.decodeVarint()(v8);
        if (v2)
        {
LABEL_54:
          outlined consume of _SymbolEffect.Trigger(v7);
          return;
        }

        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        v21 = a1[1] + v8;
        if (v6 < v21)
        {
LABEL_53:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          outlined consume of _SymbolEffect.Trigger(v7);
          return;
        }

        a1[3] = 16;
        a1[4] = v21;
      }

      v22 = ProtobufDecoder.decodeVarint()(v8);
      v17 = v2;
      if (v2)
      {
        goto LABEL_54;
      }

      v23 = v22;
      outlined consume of _SymbolEffect.Trigger(v7);
      if (v23)
      {
        v7 = 0x8000000000000001;
      }

      else
      {
        v7 = 0x8000000000000000;
      }

      goto LABEL_33;
    }

    if (v8 >> 3 == 1)
    {
      break;
    }

    v24 = v8 & 7;
    if (v24 > 1)
    {
      if (v24 == 2)
      {
        v25 = ProtobufDecoder.decodeVarint()(v8);
        if (v2)
        {
          goto LABEL_54;
        }

        if (v25 < 0)
        {
          goto LABEL_60;
        }

        v5 = a1[1] + v25;
        if (v6 < v5)
        {
          goto LABEL_53;
        }

        a1[1] = v5;
      }

      else
      {
        if (v24 != 5)
        {
          goto LABEL_53;
        }

        v5 = a1[1] + 4;
        if (v6 < v5)
        {
          goto LABEL_53;
        }

        a1[1] = v5;
      }
    }

    else if ((v8 & 7) != 0)
    {
      if (v24 != 1)
      {
        goto LABEL_53;
      }

      v5 = a1[1] + 8;
      if (v6 < v5)
      {
        goto LABEL_53;
      }

      a1[1] = v5;
    }

    else
    {
      ProtobufDecoder.decodeVarint()(v8);
      if (v2)
      {
        goto LABEL_54;
      }

LABEL_34:
      v5 = a1[1];
    }
  }

  if ((v8 & 7) != 2)
  {
    goto LABEL_53;
  }

  v10 = a1[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v10);
    v10 = isUniquelyReferenced_nonNull_native;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + 8 * v13 + 32) = v6;
  a1[5] = v10;
  v14 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    goto LABEL_54;
  }

  if ((v14 & 0x8000000000000000) == 0)
  {
    v15 = a1[1] + v14;
    if (v6 < v15)
    {
      goto LABEL_53;
    }

    a1[2] = v15;
    StrongHash.init(from:)(a1, &v30);
    v16 = a1[5];
    if (!*(v16 + 2))
    {
      goto LABEL_58;
    }

    v17 = 0;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = *(v16 + 2);
      if (!v18)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      v18 = *(v16 + 2);
      if (!v18)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        a1[3] = 0;
        *a2 = v7;
        return;
      }
    }

    v19 = v18 - 1;
    v6 = *&v16[8 * v19 + 32];
    *(v16 + 2) = v19;
    outlined consume of _SymbolEffect.Trigger(v7);
    a1[5] = v16;
    a1[2] = v6;
    v20 = v31;
    type metadata accessor for HashEquatableBox();
    v7 = swift_allocObject();
    *(v7 + 16) = v30;
    *(v7 + 32) = v20;
LABEL_33:
    v2 = v17;
    goto LABEL_34;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  __break(1u);
  v28 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v29 = *(v28 + 2);
  if (v29)
  {
    v26 = v29 - 1;
    v27 = *&v28[8 * v26 + 32];
    *(v28 + 2) = v26;
    outlined consume of _SymbolEffect.Trigger(v7);
    a1[5] = v28;
    a1[2] = v27;
  }

  else
  {
    __break(1u);
  }
}

void _SymbolEffect.PulseConfiguration.encode(to:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  if ((~*v0 & 0xF000000000000006) != 0)
  {
    v4 = outlined copy of _SymbolEffect.Trigger(v2);
    specialized ProtobufEncoder.messageField<A>(_:_:)(3, v2, v4);
    outlined consume of _SymbolEffect.Trigger?(v2);
    if ((v1 != 0) | v3 & 1)
    {
      return;
    }

    goto LABEL_5;
  }

  if ((*(v0 + 8) & 1) == 0)
  {
LABEL_5:
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }
}

void _SymbolEffect.PulseConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0xF000000000000006;
  v6 = 1;
  v31 = 1;
  v7 = a1[1];
  v8 = a1[2];
  if (v7 >= v8)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v9 = a1[3];
    if (v9)
    {
      v10 = a1[4];
      if (v7 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v7)
      {
        goto LABEL_50;
      }

      a1[3] = 0;
    }

    v9 = ProtobufDecoder.decodeVarint()(v9);
    if (v2)
    {
      goto LABEL_51;
    }

    if (v9 <= 7)
    {
      goto LABEL_50;
    }

LABEL_11:
    if (v9 >> 3 == 2)
    {
      if ((v9 & 7) != 0)
      {
        if ((v9 & 7) != 2)
        {
          goto LABEL_50;
        }

        v9 = ProtobufDecoder.decodeVarint()(v9);
        if (v2)
        {
          goto LABEL_51;
        }

        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_57;
        }

        v21 = a1[1] + v9;
        if (v8 < v21)
        {
          goto LABEL_50;
        }

        a1[3] = 16;
        a1[4] = v21;
      }

      v22 = ProtobufDecoder.decodeVarint()(v9);
      if (v2)
      {
        goto LABEL_51;
      }

      v31 = v22 != 0;
      goto LABEL_4;
    }

    if (v9 >> 3 == 3)
    {
      break;
    }

    v23 = v9 & 7;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = ProtobufDecoder.decodeVarint()(v9);
        if (v2)
        {
          goto LABEL_51;
        }

        if (v25 < 0)
        {
          goto LABEL_58;
        }

        v24 = a1[1] + v25;
        if (v8 < v24)
        {
          goto LABEL_50;
        }
      }

      else
      {
        if (v23 != 5)
        {
          goto LABEL_50;
        }

        v24 = a1[1] + 4;
        if (v8 < v24)
        {
          goto LABEL_50;
        }
      }
    }

    else
    {
      if ((v9 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v9);
        if (v2)
        {
          goto LABEL_51;
        }

        goto LABEL_4;
      }

      if (v23 != 1)
      {
        goto LABEL_50;
      }

      v24 = a1[1] + 8;
      if (v8 < v24)
      {
        goto LABEL_50;
      }
    }

    a1[1] = v24;
LABEL_4:
    v7 = a1[1];
    if (v7 >= v8)
    {
      v6 = v31;
LABEL_53:
      a1[3] = 0;
      *a2 = v5;
      *(a2 + 8) = v6;
      return;
    }
  }

  if ((v9 & 7) != 2)
  {
    goto LABEL_50;
  }

  v11 = a1[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  *(v11 + 16) = v14 + 1;
  *(v11 + 8 * v14 + 32) = v8;
  a1[5] = v11;
  v15 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    goto LABEL_51;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = a1[1] + v15;
    if (v8 < v16)
    {
      goto LABEL_50;
    }

    a1[2] = v16;
    _SymbolEffect.Trigger.init(from:)(a1, &v30);
    v17 = a1[5];
    if (!*(v17 + 2))
    {
      goto LABEL_56;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = *(v17 + 2);
      if (!v18)
      {
        goto LABEL_49;
      }

      goto LABEL_24;
    }

    v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
    v18 = *(v17 + 2);
    if (v18)
    {
LABEL_24:
      v19 = v18 - 1;
      v8 = *&v17[8 * v19 + 32];
      *(v17 + 2) = v19;
      a1[5] = v17;
      a1[2] = v8;
      v20 = v30;
      outlined consume of _SymbolEffect.Trigger?(v5);
      v5 = v20;
      goto LABEL_4;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
LABEL_51:
    outlined consume of _SymbolEffect.Trigger?(v5);
    return;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  __break(1u);
  v28 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v29 = *(v28 + 2);
  if (v29)
  {
    v26 = v29 - 1;
    v27 = *&v28[8 * v26 + 32];
    *(v28 + 2) = v26;
    a1[5] = v28;
    a1[2] = v27;
    goto LABEL_51;
  }

  __break(1u);
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance _SymbolEffect.PulseConfiguration()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  if ((~*v0 & 0xF000000000000006) != 0)
  {
    v4 = outlined copy of _SymbolEffect.Trigger(v2);
    specialized ProtobufEncoder.messageField<A>(_:_:)(3, v2, v4);
    outlined consume of _SymbolEffect.Trigger?(v2);
    if ((v1 != 0) | v3 & 1)
    {
      return;
    }

    goto LABEL_5;
  }

  if ((*(v0 + 8) & 1) == 0)
  {
LABEL_5:
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }
}

void _SymbolEffect.BreatheConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0xF000000000000006;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
LABEL_59:
    LODWORD(v8) = 0;
    LOBYTE(v9) = 1;
LABEL_60:
    a1[3] = 0;
    *a2 = v5;
    *(a2 + 8) = v8;
    *(a2 + 12) = v9 & 1;
    return;
  }

  v8 = 0;
  v9 = 1;
  while (1)
  {
    v10 = a1[3];
    if (v10)
    {
      v11 = a1[4];
      if (v6 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v6)
      {
        goto LABEL_61;
      }

      a1[3] = 0;
    }

    v10 = ProtobufDecoder.decodeVarint()(v10);
    if (v2)
    {
      goto LABEL_62;
    }

    if (v10 <= 7)
    {
      goto LABEL_61;
    }

LABEL_11:
    v12 = v10 >> 3;
    if (v10 >> 3 != 3)
    {
      break;
    }

    if ((v10 & 7) != 0)
    {
      if ((v10 & 7) != 2)
      {
        goto LABEL_61;
      }

      v10 = ProtobufDecoder.decodeVarint()(v10);
      if (v2)
      {
        goto LABEL_62;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }

      v26 = a1[1] + v10;
      if (v7 < v26)
      {
LABEL_61:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
LABEL_62:
        outlined consume of _SymbolEffect.Trigger?(v5);
        return;
      }

      a1[3] = 24;
      a1[4] = v26;
    }

    v27 = ProtobufDecoder.decodeVarint()(v10);
    if (v2)
    {
      goto LABEL_62;
    }

    v9 = v27 != 0;
LABEL_4:
    v6 = a1[1];
    if (v6 >= v7)
    {
      goto LABEL_60;
    }
  }

  if (v12 == 2)
  {
    if ((v10 & 7) != 0)
    {
      if ((v10 & 7) != 2)
      {
        goto LABEL_61;
      }

      v10 = ProtobufDecoder.decodeVarint()(v10);
      if (v2)
      {
        goto LABEL_62;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_66;
      }

      v24 = a1[1] + v10;
      if (v7 < v24)
      {
        goto LABEL_61;
      }

      a1[3] = 16;
      a1[4] = v24;
    }

    v25 = ProtobufDecoder.decodeVarint()(v10);
    if (v2)
    {
      goto LABEL_62;
    }

    v8 = v25;
    goto LABEL_4;
  }

  if (v12 != 1)
  {
    v28 = v10 & 7;
    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v30 = ProtobufDecoder.decodeVarint()(v10);
        if (v2)
        {
          goto LABEL_62;
        }

        if (v30 < 0)
        {
          goto LABEL_68;
        }

        v29 = a1[1] + v30;
        if (v7 < v29)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v28 != 5)
        {
          goto LABEL_61;
        }

        v29 = a1[1] + 4;
        if (v7 < v29)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      if ((v10 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v10);
        if (v2)
        {
          goto LABEL_62;
        }

        goto LABEL_4;
      }

      if (v28 != 1)
      {
        goto LABEL_61;
      }

      v29 = a1[1] + 8;
      if (v7 < v29)
      {
        goto LABEL_61;
      }
    }

    a1[1] = v29;
    goto LABEL_4;
  }

  if ((v10 & 7) != 2)
  {
    goto LABEL_61;
  }

  v35 = v8;
  v13 = a2;
  v14 = a1[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
    v14 = isUniquelyReferenced_nonNull_native;
  }

  v17 = *(v14 + 16);
  v16 = *(v14 + 24);
  if (v17 >= v16 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
    v14 = isUniquelyReferenced_nonNull_native;
  }

  *(v14 + 16) = v17 + 1;
  *(v14 + 8 * v17 + 32) = v7;
  a1[5] = v14;
  v18 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    goto LABEL_62;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v19 = a1[1] + v18;
    if (v7 < v19)
    {
      goto LABEL_61;
    }

    a1[2] = v19;
    _SymbolEffect.Trigger.init(from:)(a1, &v36);
    v20 = a1[5];
    if (!*(v20 + 2))
    {
      goto LABEL_65;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = *(v20 + 2);
      if (!v21)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      v21 = *(v20 + 2);
      if (!v21)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    v22 = v21 - 1;
    v7 = *&v20[8 * v22 + 32];
    *(v20 + 2) = v22;
    a1[5] = v20;
    a1[2] = v7;
    v23 = v36;
    outlined consume of _SymbolEffect.Trigger?(v5);
    v5 = v23;
    v9 = a2;
    a2 = v13;
    v8 = v35;
    goto LABEL_4;
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  __break(1u);
  v33 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v34 = *(v33 + 2);
  if (v34)
  {
    v31 = v34 - 1;
    v32 = *&v33[8 * v31 + 32];
    *(v33 + 2) = v31;
    a1[5] = v33;
    a1[2] = v32;
    goto LABEL_62;
  }

  __break(1u);
}

void _SymbolEffect.BounceConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  _SymbolEffect.BounceConfiguration.init(from:)(a1, a2);
}

{
  v5 = 0xF000000000000006;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
LABEL_59:
    LODWORD(v8) = 0;
    LOBYTE(v9) = 1;
LABEL_60:
    a1[3] = 0;
    *a2 = v5;
    *(a2 + 8) = v8;
    *(a2 + 12) = v9 & 1;
    return;
  }

  v8 = 0;
  v9 = 1;
  while (1)
  {
    v10 = a1[3];
    if (v10)
    {
      v11 = a1[4];
      if (v6 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v6)
      {
        goto LABEL_61;
      }

      a1[3] = 0;
    }

    v10 = ProtobufDecoder.decodeVarint()(v10);
    if (v2)
    {
      goto LABEL_62;
    }

    if (v10 <= 7)
    {
      goto LABEL_61;
    }

LABEL_11:
    v12 = v10 >> 3;
    if (v10 >> 3 != 2)
    {
      break;
    }

    if ((v10 & 7) != 0)
    {
      if ((v10 & 7) != 2)
      {
        goto LABEL_61;
      }

      v10 = ProtobufDecoder.decodeVarint()(v10);
      if (v2)
      {
        goto LABEL_62;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_67;
      }

      v26 = a1[1] + v10;
      if (v7 < v26)
      {
LABEL_61:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
LABEL_62:
        outlined consume of _SymbolEffect.Trigger?(v5);
        return;
      }

      a1[3] = 16;
      a1[4] = v26;
    }

    v27 = ProtobufDecoder.decodeVarint()(v10);
    if (v2)
    {
      goto LABEL_62;
    }

    v8 = v27;
LABEL_4:
    v6 = a1[1];
    if (v6 >= v7)
    {
      goto LABEL_60;
    }
  }

  if (v12 == 3)
  {
    if ((v10 & 7) != 0)
    {
      if ((v10 & 7) != 2)
      {
        goto LABEL_61;
      }

      v10 = ProtobufDecoder.decodeVarint()(v10);
      if (v2)
      {
        goto LABEL_62;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_66;
      }

      v24 = a1[1] + v10;
      if (v7 < v24)
      {
        goto LABEL_61;
      }

      a1[3] = 24;
      a1[4] = v24;
    }

    v25 = ProtobufDecoder.decodeVarint()(v10);
    if (v2)
    {
      goto LABEL_62;
    }

    v9 = v25 != 0;
    goto LABEL_4;
  }

  if (v12 != 4)
  {
    v28 = v10 & 7;
    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v30 = ProtobufDecoder.decodeVarint()(v10);
        if (v2)
        {
          goto LABEL_62;
        }

        if (v30 < 0)
        {
          goto LABEL_68;
        }

        v29 = a1[1] + v30;
        if (v7 < v29)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v28 != 5)
        {
          goto LABEL_61;
        }

        v29 = a1[1] + 4;
        if (v7 < v29)
        {
          goto LABEL_61;
        }
      }
    }

    else
    {
      if ((v10 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v10);
        if (v2)
        {
          goto LABEL_62;
        }

        goto LABEL_4;
      }

      if (v28 != 1)
      {
        goto LABEL_61;
      }

      v29 = a1[1] + 8;
      if (v7 < v29)
      {
        goto LABEL_61;
      }
    }

    a1[1] = v29;
    goto LABEL_4;
  }

  if ((v10 & 7) != 2)
  {
    goto LABEL_61;
  }

  v35 = v8;
  v13 = a2;
  v14 = a1[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  a2 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
    v14 = isUniquelyReferenced_nonNull_native;
  }

  v17 = *(v14 + 16);
  v16 = *(v14 + 24);
  if (v17 >= v16 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
    v14 = isUniquelyReferenced_nonNull_native;
  }

  *(v14 + 16) = v17 + 1;
  *(v14 + 8 * v17 + 32) = v7;
  a1[5] = v14;
  v18 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    goto LABEL_62;
  }

  if ((v18 & 0x8000000000000000) == 0)
  {
    v19 = a1[1] + v18;
    if (v7 < v19)
    {
      goto LABEL_61;
    }

    a1[2] = v19;
    _SymbolEffect.Trigger.init(from:)(a1, &v36);
    v20 = a1[5];
    if (!*(v20 + 2))
    {
      goto LABEL_65;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = *(v20 + 2);
      if (!v21)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
      v21 = *(v20 + 2);
      if (!v21)
      {
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }
    }

    v22 = v21 - 1;
    v7 = *&v20[8 * v22 + 32];
    *(v20 + 2) = v22;
    a1[5] = v20;
    a1[2] = v7;
    v23 = v36;
    outlined consume of _SymbolEffect.Trigger?(v5);
    v5 = v23;
    v9 = a2;
    a2 = v13;
    v8 = v35;
    goto LABEL_4;
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
  __break(1u);
  v33 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v34 = *(v33 + 2);
  if (v34)
  {
    v31 = v34 - 1;
    v32 = *&v33[8 * v31 + 32];
    *(v33 + 2) = v31;
    a1[5] = v33;
    a1[2] = v32;
    goto LABEL_62;
  }

  __break(1u);
}

void _SymbolEffect.WiggleConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 20);
  v9 = *(v3 + 24);
  v10 = *(v3 + 25);
  if ((~*v3 & 0xF000000000000006) != 0)
  {
    v11 = outlined copy of _SymbolEffect.Trigger(v5);
    specialized ProtobufEncoder.messageField<A>(_:_:)(5, v5, v11);
    outlined consume of _SymbolEffect.Trigger?(v5);
    if (v2)
    {
      return;
    }
  }

  if (v6 == 0.0)
  {
    v12 = 1;
  }

  else
  {
    v12 = v7;
  }

  if ((v12 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x11uLL);
    v13 = a1[1];
    v14 = v13 + 8;
    if (__OFADD__(v13, 8))
    {
      __break(1u);
    }

    else if (a1[2] >= v14)
    {
      a1[1] = v14;
      v15 = (*a1 + v13);
LABEL_10:
      *v15 = v6;
      goto LABEL_11;
    }

    v15 = ProtobufEncoder.growBufferSlow(to:)(v14);
    goto LABEL_10;
  }

LABEL_11:
  if (v8)
  {
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(v8);
  }

  if ((v9 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x20uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }

  if (v10)
  {
    ProtobufEncoder.encodeVarint(_:)(0x30uLL);
    ProtobufEncoder.encodeVarint(_:)(1uLL);
  }
}

void _SymbolEffect.WiggleConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0xF000000000000006;
  v6 = 1;
  v48 = 1;
  v47 = 1;
  v7 = a1[1];
  v8 = a1[2];
  if (v7 >= v8)
  {
    LOBYTE(v9) = 0;
    LODWORD(v10) = 0;
    v11 = 0.0;
    v12 = 1;
LABEL_4:
    a1[3] = 0;
    *a2 = v5;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 20) = v10;
    *(a2 + 24) = v6;
    *(a2 + 25) = v9;
    return;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0.0;
  while (1)
  {
    v13 = a1[3];
    if (v13)
    {
      v14 = a1[4];
      if (v7 < v14)
      {
        goto LABEL_13;
      }

      if (v14 < v7)
      {
        goto LABEL_84;
      }

      a1[3] = 0;
    }

    v13 = ProtobufDecoder.decodeVarint()(v13);
    if (v2)
    {
      goto LABEL_85;
    }

    if (v13 <= 7)
    {
      goto LABEL_84;
    }

LABEL_13:
    v15 = v13 >> 3;
    if (v13 >> 3 <= 3)
    {
      if (v15 == 2)
      {
        v33 = v13 & 7;
        if (v33 == 5)
        {
          v38 = a1[1];
          if (v8 < (v38 + 1))
          {
            goto LABEL_84;
          }

          v39 = *v38;
          a1[1] = v38 + 1;
          v11 = v39;
          v48 = 0;
        }

        else
        {
          if (v33 == 2)
          {
            v37 = ProtobufDecoder.decodeVarint()(v13);
            if (v2)
            {
              goto LABEL_85;
            }

            if (v37 < 0)
            {
              goto LABEL_93;
            }

            v34 = a1[1];
            if (v8 < v34 + v37)
            {
              goto LABEL_84;
            }

            a1[3] = 17;
            a1[4] = v34 + v37;
          }

          else
          {
            if (v33 != 1)
            {
              goto LABEL_84;
            }

            v34 = a1[1];
          }

          if (v8 < (v34 + 1))
          {
            goto LABEL_84;
          }

          v11 = *v34;
          a1[1] = v34 + 1;
          v48 = 0;
        }

        goto LABEL_6;
      }

      if (v15 == 3)
      {
        if ((v13 & 7) != 0)
        {
          if ((v13 & 7) != 2)
          {
            goto LABEL_84;
          }

          v13 = ProtobufDecoder.decodeVarint()(v13);
          if (v2)
          {
            goto LABEL_85;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_90;
          }

          v27 = a1[1] + v13;
          if (v8 < v27)
          {
            goto LABEL_84;
          }

          a1[3] = 24;
          a1[4] = v27;
        }

        v28 = ProtobufDecoder.decodeVarint()(v13);
        if (v2)
        {
          goto LABEL_85;
        }

        v10 = v28;
        goto LABEL_6;
      }

      goto LABEL_59;
    }

    if (v15 == 4)
    {
      if ((v13 & 7) != 0)
      {
        if ((v13 & 7) != 2)
        {
          goto LABEL_84;
        }

        v13 = ProtobufDecoder.decodeVarint()(v13);
        if (v2)
        {
          goto LABEL_85;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_91;
        }

        v29 = a1[1] + v13;
        if (v8 < v29)
        {
          goto LABEL_84;
        }

        a1[3] = 32;
        a1[4] = v29;
      }

      v30 = ProtobufDecoder.decodeVarint()(v13);
      if (v2)
      {
        goto LABEL_85;
      }

      v47 = v30 != 0;
      goto LABEL_6;
    }

    if (v15 == 6)
    {
      if ((v13 & 7) != 0)
      {
        if ((v13 & 7) != 2)
        {
          goto LABEL_84;
        }

        v13 = ProtobufDecoder.decodeVarint()(v13);
        if (v2)
        {
          goto LABEL_85;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_92;
        }

        v31 = a1[1] + v13;
        if (v8 < v31)
        {
          goto LABEL_84;
        }

        a1[3] = 48;
        a1[4] = v31;
      }

      v32 = ProtobufDecoder.decodeVarint()(v13);
      if (v2)
      {
        goto LABEL_85;
      }

      v9 = v32 != 0;
      goto LABEL_6;
    }

    if (v15 == 5)
    {
      break;
    }

LABEL_59:
    v35 = v13 & 7;
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v40 = ProtobufDecoder.decodeVarint()(v13);
        if (v2)
        {
          goto LABEL_85;
        }

        if (v40 < 0)
        {
          goto LABEL_94;
        }

        v36 = a1[1] + v40;
        if (v8 < v36)
        {
          goto LABEL_84;
        }
      }

      else
      {
        if (v35 != 5)
        {
          goto LABEL_84;
        }

        v36 = a1[1] + 4;
        if (v8 < v36)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
      if ((v13 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v13);
        if (v2)
        {
          goto LABEL_85;
        }

        goto LABEL_6;
      }

      if (v35 != 1)
      {
        goto LABEL_84;
      }

      v36 = a1[1] + 8;
      if (v8 < v36)
      {
        goto LABEL_84;
      }
    }

    a1[1] = v36;
LABEL_6:
    v7 = a1[1];
    if (v7 >= v8)
    {
      v12 = v48;
      v6 = v47;
      goto LABEL_4;
    }
  }

  if ((v13 & 7) != 2)
  {
    goto LABEL_84;
  }

  v16 = a1[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = v10;
  v18 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
    v16 = isUniquelyReferenced_nonNull_native;
  }

  v20 = *(v16 + 16);
  v19 = *(v16 + 24);
  if (v20 >= v19 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v16);
    v16 = isUniquelyReferenced_nonNull_native;
  }

  *(v16 + 16) = v20 + 1;
  *(v16 + 8 * v20 + 32) = v8;
  a1[5] = v16;
  v21 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    goto LABEL_85;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = a1[1] + v21;
    if (v8 < v22)
    {
      goto LABEL_84;
    }

    a1[2] = v22;
    _SymbolEffect.Trigger.init(from:)(a1, &v46);
    v23 = a1[5];
    if (!*(v23 + 2))
    {
      goto LABEL_89;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v24 = *(v23 + 2);
      if (!v24)
      {
        goto LABEL_83;
      }

      goto LABEL_28;
    }

    v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
    v24 = *(v23 + 2);
    if (v24)
    {
LABEL_28:
      v25 = v24 - 1;
      v8 = *&v23[8 * v25 + 32];
      *(v23 + 2) = v25;
      a1[5] = v23;
      a1[2] = v8;
      v26 = v46;
      outlined consume of _SymbolEffect.Trigger?(v5);
      v5 = v26;
      v9 = v18;
      v10 = v45;
      goto LABEL_6;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
LABEL_85:
    outlined consume of _SymbolEffect.Trigger?(v5);
    return;
  }

  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
  __break(1u);
  v43 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v44 = *(v43 + 2);
  if (v44)
  {
    v41 = v44 - 1;
    v42 = *&v43[8 * v41 + 32];
    *(v43 + 2) = v41;
    a1[5] = v43;
    a1[2] = v42;
    goto LABEL_85;
  }

  __break(1u);
}

void _SymbolEffect.BreatheConfiguration.encode(to:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *(v2 + 8);
  v6 = *(v2 + 12);
  if ((~*v2 & 0xF000000000000006) == 0 || (v8 = outlined copy of _SymbolEffect.Trigger(v4), specialized ProtobufEncoder.messageField<A>(_:_:)(a2, v4, v8), outlined consume of _SymbolEffect.Trigger?(v4), !v3))
  {
    if (v5)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(v5);
    }

    if ((v6 & 1) == 0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x18uLL);
      ProtobufEncoder.encodeVarint(_:)(0);
    }
  }
}

void _SymbolEffect.VariableColorConfiguration.encode(to:)()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  if ((~*v0 & 0xF000000000000006) == 0)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_3;
  }

  v4 = outlined copy of _SymbolEffect.Trigger(v2);
  specialized ProtobufEncoder.messageField<A>(_:_:)(3, v2, v4);
  outlined consume of _SymbolEffect.Trigger?(v2);
  if (v1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
LABEL_3:
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(v3);
  }
}

void _SymbolEffect.VariableColorConfiguration.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0xF000000000000006;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
LABEL_50:
    v8 = 0;
LABEL_51:
    a1[3] = 0;
    *a2 = v5;
    *(a2 + 8) = v8;
    return;
  }

  v8 = 0;
  while (1)
  {
    v9 = a1[3];
    if (v9)
    {
      v10 = a1[4];
      if (v6 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v6)
      {
        goto LABEL_52;
      }

      a1[3] = 0;
    }

    v9 = ProtobufDecoder.decodeVarint()(v9);
    if (v2)
    {
      goto LABEL_53;
    }

    if (v9 <= 7)
    {
      goto LABEL_52;
    }

LABEL_11:
    if (v9 >> 3 != 2)
    {
      break;
    }

    if ((v9 & 7) != 0)
    {
      if ((v9 & 7) != 2)
      {
        goto LABEL_52;
      }

      v9 = ProtobufDecoder.decodeVarint()(v9);
      if (v2)
      {
        goto LABEL_53;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_57;
      }

      v21 = a1[1] + v9;
      if (v7 < v21)
      {
LABEL_52:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
LABEL_53:
        outlined consume of _SymbolEffect.Trigger?(v5);
        return;
      }

      a1[3] = 16;
      a1[4] = v21;
    }

    v22 = ProtobufDecoder.decodeVarint()(v9);
    if (v2)
    {
      goto LABEL_53;
    }

    v8 = v22;
LABEL_4:
    v6 = a1[1];
    if (v6 >= v7)
    {
      goto LABEL_51;
    }
  }

  if (v9 >> 3 != 3)
  {
    v23 = v9 & 7;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = ProtobufDecoder.decodeVarint()(v9);
        if (v2)
        {
          goto LABEL_53;
        }

        if (v25 < 0)
        {
          goto LABEL_58;
        }

        v24 = a1[1] + v25;
        if (v7 < v24)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (v23 != 5)
        {
          goto LABEL_52;
        }

        v24 = a1[1] + 4;
        if (v7 < v24)
        {
          goto LABEL_52;
        }
      }
    }

    else
    {
      if ((v9 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v9);
        if (v2)
        {
          goto LABEL_53;
        }

        goto LABEL_4;
      }

      if (v23 != 1)
      {
        goto LABEL_52;
      }

      v24 = a1[1] + 8;
      if (v7 < v24)
      {
        goto LABEL_52;
      }
    }

    a1[1] = v24;
    goto LABEL_4;
  }

  if ((v9 & 7) != 2)
  {
    goto LABEL_52;
  }

  v11 = a1[5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 16) + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v11);
    v11 = isUniquelyReferenced_nonNull_native;
  }

  *(v11 + 16) = v14 + 1;
  *(v11 + 8 * v14 + 32) = v7;
  a1[5] = v11;
  v15 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
  if (v2)
  {
    goto LABEL_53;
  }

  if ((v15 & 0x8000000000000000) == 0)
  {
    v16 = a1[1] + v15;
    if (v7 < v16)
    {
      goto LABEL_52;
    }

    a1[2] = v16;
    _SymbolEffect.Trigger.init(from:)(a1, &v30);
    v17 = a1[5];
    if (!*(v17 + 2))
    {
      goto LABEL_56;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v18 = *(v17 + 2);
      if (!v18)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
      v18 = *(v17 + 2);
      if (!v18)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    v19 = v18 - 1;
    v7 = *&v17[8 * v19 + 32];
    *(v17 + 2) = v19;
    a1[5] = v17;
    a1[2] = v7;
    v20 = v30;
    outlined consume of _SymbolEffect.Trigger?(v5);
    v5 = v20;
    goto LABEL_4;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  __break(1u);
  v28 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v29 = *(v28 + 2);
  if (v29)
  {
    v26 = v29 - 1;
    v27 = *&v28[8 * v26 + 32];
    *(v28 + 2) = v26;
    a1[5] = v28;
    a1[2] = v27;
    goto LABEL_53;
  }

  __break(1u);
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance _SymbolEffect.VariableColorConfiguration()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  if ((~*v0 & 0xF000000000000006) == 0)
  {
    if (!v3)
    {
      return;
    }

    goto LABEL_3;
  }

  v4 = outlined copy of _SymbolEffect.Trigger(v2);
  specialized ProtobufEncoder.messageField<A>(_:_:)(3, v2, v4);
  outlined consume of _SymbolEffect.Trigger?(v2);
  if (v1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
LABEL_3:
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(v3);
  }
}

void _SymbolEffect.ScaleConfiguration.encode(to:)()
{
  v1 = *v0;
  if ((v1 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 4);
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v1);
    if (v2 != 1)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(0);
    }
  }
}

unint64_t _SymbolEffect.ScaleConfiguration.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 1;
LABEL_47:
    v3[3] = 0;
    *a2 = v7;
    *(a2 + 4) = v8;
    return result;
  }

  v7 = 0;
  v8 = 1;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v9 = v3[4];
      if (v5 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v5)
      {
        goto LABEL_45;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_45:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v10 = result & 7;
    if (result >> 3 == 2)
    {
      if ((result & 7) != 0)
      {
        if (v10 != 2)
        {
          goto LABEL_45;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_50;
        }

        v12 = v3[1] + result;
        if (v6 < v12)
        {
          goto LABEL_45;
        }

        v3[3] = 16;
        v3[4] = v12;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      v8 = result != 0;
      goto LABEL_4;
    }

    if (result >> 3 == 1)
    {
      break;
    }

    if ((result & 7) > 1)
    {
      if (v10 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }

        v13 = v3[1] + result;
        if (v6 < v13)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v10 != 5)
        {
          goto LABEL_45;
        }

        v13 = v3[1] + 4;
        if (v6 < v13)
        {
          goto LABEL_45;
        }
      }

      goto LABEL_3;
    }

    if ((result & 7) != 0)
    {
      if (v10 != 1)
      {
        goto LABEL_45;
      }

      v13 = v3[1] + 8;
      if (v6 < v13)
      {
        goto LABEL_45;
      }

LABEL_3:
      v3[1] = v13;
      goto LABEL_4;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_47;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_19:
    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result >> 31)
    {
      v7 = 0;
    }

    else
    {
      v7 = result;
    }

    goto LABEL_4;
  }

  if (v10 != 2)
  {
    goto LABEL_45;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v11 = v3[1] + result;
    if (v6 < v11)
    {
      goto LABEL_45;
    }

    v3[3] = 8;
    v3[4] = v11;
    goto LABEL_19;
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance _SymbolEffect.ScaleConfiguration()
{
  v1 = *v0;
  if ((v1 & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 4);
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v1);
    if ((v2 & 1) == 0)
    {
      ProtobufEncoder.encodeVarint(_:)(0x10uLL);
      ProtobufEncoder.encodeVarint(_:)(0);
    }
  }
}

void _SymbolEffect.HiddenConfiguration.encode(to:)()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = v0[5];
  if ((v0[6] & 1) == 0)
  {
    if (v0[5])
    {
      goto LABEL_3;
    }

LABEL_6:
    ProtobufEncoder.encodeVarint(_:)(0x18uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
    if (v2)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  ProtobufEncoder.encodeVarint(_:)(8uLL);
  ProtobufEncoder.encodeVarint(_:)(1uLL);
  if ((v3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v2)
  {
LABEL_4:
    v4 = 32;
    goto LABEL_9;
  }

LABEL_7:
  if (!v1)
  {
    return;
  }

  v4 = 16;
LABEL_9:
  ProtobufEncoder.encodeVarint(_:)(v4);
  ProtobufEncoder.encodeVarint(_:)(v1);
}

unint64_t _SymbolEffect.HiddenConfiguration.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 1;
LABEL_4:
    v3[3] = 0;
    *a2 = v9;
    *(a2 + 4) = v8 & 1;
    *(a2 + 5) = v10;
    *(a2 + 6) = v7;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 1;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v11 = v3[4];
      if (v5 < v11)
      {
        goto LABEL_13;
      }

      if (v11 < v5)
      {
        goto LABEL_64;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_64:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_13:
    v12 = result >> 3;
    v13 = result & 7;
    if (result >> 3 <= 2)
    {
      break;
    }

    if (v12 == 3)
    {
      if ((result & 7) != 0)
      {
        if (v13 != 2)
        {
          goto LABEL_64;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_69;
        }

        v18 = v3[1] + result;
        if (v6 < v18)
        {
          goto LABEL_64;
        }

        v3[3] = 24;
        v3[4] = v18;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      v10 = result != 0;
      goto LABEL_6;
    }

    if (v12 == 4)
    {
      if ((result & 7) != 0)
      {
        if (v13 != 2)
        {
          goto LABEL_64;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_67;
        }

        v15 = v3[1] + result;
        if (v6 < v15)
        {
          goto LABEL_64;
        }

        v3[3] = 32;
        v3[4] = v15;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      v8 = 1;
      v9 = result;
      goto LABEL_6;
    }

LABEL_34:
    if ((result & 7) > 1)
    {
      if (v13 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_70;
        }

        v16 = v3[1] + result;
        if (v6 < v16)
        {
          goto LABEL_64;
        }
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_64;
        }

        v16 = v3[1] + 4;
        if (v6 < v16)
        {
          goto LABEL_64;
        }
      }

      goto LABEL_5;
    }

    if ((result & 7) != 0)
    {
      if (v13 != 1)
      {
        goto LABEL_64;
      }

      v16 = v3[1] + 8;
      if (v6 < v16)
      {
        goto LABEL_64;
      }

LABEL_5:
      v3[1] = v16;
      goto LABEL_6;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

LABEL_6:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (v12 == 1)
  {
    if ((result & 7) != 0)
    {
      if (v13 != 2)
      {
        goto LABEL_64;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_68;
      }

      v17 = v3[1] + result;
      if (v6 < v17)
      {
        goto LABEL_64;
      }

      v3[3] = 8;
      v3[4] = v17;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    v7 = result != 0;
    goto LABEL_6;
  }

  if (v12 != 2)
  {
    goto LABEL_34;
  }

  if ((result & 7) == 0)
  {
LABEL_22:
    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    v9 = result;
    v8 = 0;
    goto LABEL_6;
  }

  if (v13 != 2)
  {
    goto LABEL_64;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v14 = v3[1] + result;
    if (v6 < v14)
    {
      goto LABEL_64;
    }

    v3[3] = 16;
    v3[4] = v14;
    goto LABEL_22;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

void _SymbolEffect.ReplaceConfiguration.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 4);
  v6 = *(v2 + 2);
  if (v4)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v4);
  }

  if ((v5 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }

  if (v6 != 1.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
    v7 = a1[1];
    v8 = v7 + 4;
    if (__OFADD__(v7, 4))
    {
      __break(1u);
    }

    else if (a1[2] >= v8)
    {
      a1[1] = v8;
      *(*a1 + v7) = v6;
      return;
    }

    *ProtobufEncoder.growBufferSlow(to:)(v8) = v6;
  }
}

unint64_t _SymbolEffect.ReplaceConfiguration.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 1.0;
    v9 = 1;
LABEL_55:
    v3[3] = 0;
    *a2 = v7;
    *(a2 + 4) = v9;
    *(a2 + 8) = v8;
    return result;
  }

  v7 = 0;
  v8 = 1.0;
  v9 = 1;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v10 = v3[4];
      if (v5 < v10)
      {
        goto LABEL_11;
      }

      if (v10 < v5)
      {
        goto LABEL_53;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_53:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v11 = result >> 3;
    v12 = result & 7;
    if (result >> 3 == 3)
    {
      if (v12 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_58;
        }

        v15 = v3[1];
        if (v6 < v15 + result)
        {
          goto LABEL_53;
        }

        v3[3] = 29;
        v3[4] = v15 + result;
      }

      else
      {
        if (v12 != 5)
        {
          goto LABEL_53;
        }

        v15 = v3[1];
      }

      if (v6 < (v15 + 1))
      {
        goto LABEL_53;
      }

      v8 = *v15;
      v3[1] = v15 + 1;
      goto LABEL_4;
    }

    if (v11 == 2)
    {
      break;
    }

    if (v11 == 1)
    {
      if ((result & 7) != 0)
      {
        if (v12 != 2)
        {
          goto LABEL_53;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        v13 = v3[1] + result;
        if (v6 < v13)
        {
          goto LABEL_53;
        }

        v3[3] = 8;
        v3[4] = v13;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      v7 = result;
    }

    else
    {
      if ((result & 7) > 1)
      {
        if (v12 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_60;
          }

          v16 = v3[1] + result;
          if (v6 < v16)
          {
            goto LABEL_53;
          }
        }

        else
        {
          if (v12 != 5)
          {
            goto LABEL_53;
          }

          v16 = v3[1] + 4;
          if (v6 < v16)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_3;
      }

      if ((result & 7) != 0)
      {
        if (v12 != 1)
        {
          goto LABEL_53;
        }

        v16 = v3[1] + 8;
        if (v6 < v16)
        {
          goto LABEL_53;
        }

LABEL_3:
        v3[1] = v16;
        goto LABEL_4;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_55;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_28:
    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    v9 = result != 0;
    goto LABEL_4;
  }

  if (v12 != 2)
  {
    goto LABEL_53;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v14 = v3[1] + result;
    if (v6 < v14)
    {
      goto LABEL_53;
    }

    v3[3] = 16;
    v3[4] = v14;
    goto LABEL_28;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

void protocol witness for ProtobufEncodableMessage.encode(to:) in conformance _SymbolEffect.ReplaceConfiguration(void *a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = *(v2 + 4);
  v6 = *(v2 + 2);
  if (v4)
  {
    ProtobufEncoder.encodeVarint(_:)(8uLL);
    ProtobufEncoder.encodeVarint(_:)(v4);
  }

  if ((v5 & 1) == 0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x10uLL);
    ProtobufEncoder.encodeVarint(_:)(0);
  }

  if (v6 != 1.0)
  {
    ProtobufEncoder.encodeVarint(_:)(0x1DuLL);
    v7 = a1[1];
    v8 = v7 + 4;
    if (__OFADD__(v7, 4))
    {
      __break(1u);
    }

    else if (a1[2] >= v8)
    {
      a1[1] = v8;
      v9 = (*a1 + v7);
LABEL_9:
      *v9 = v6;
      return;
    }

    v9 = ProtobufEncoder.growBufferSlow(to:)(v8);
    goto LABEL_9;
  }
}

BOOL _SymbolEffect.isIndefinite.getter()
{
  if ((*(v0 + 36) & 1) == 0)
  {
    return (~*(v0 + 32) & 0x7F800000) == 0;
  }

  return (~*v0 & 0xF000000000000006) == 0 || *(v0 + 24) >> 12 > 5u;
}

BOOL specialized static _SymbolEffect.Options.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  v3 = *(a2 + 16);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 4) != *(a2 + 4))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    if (*(a1 + 12) != *(a2 + 12))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }

  return (*(a2 + 16) & 1) != 0;
}

uint64_t specialized static _SymbolEffect.HiddenConfiguration.== infix(_:_:)(int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 6);
  result = 0;
  if (v3)
  {
    if ((*(a2 + 4) & 1) == 0)
    {
      return result;
    }
  }

  else if (*(a2 + 4))
  {
    return result;
  }

  if (v2 == *a2 && ((v4 ^ *(a2 + 5)) & 1) == 0)
  {
    return v5 ^ *(a2 + 6) ^ 1u;
  }

  return result;
}

uint64_t specialized static _SymbolEffect.Phase.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  v7 = *(a1 + 28);
  v8 = *(a1 + 32);
  v39 = *(a1 + 36);
  v40 = *(a1 + 40);
  v38 = *(a1 + 41);
  v36 = *(a1 + 42);
  v34 = *(a1 + 44);
  v30 = *(a1 + 48);
  v33 = *(a1 + 52);
  v27 = *(a1 + 56);
  v28 = *(a1 + 61);
  v9 = *(a2 + 8);
  v10 = *(a2 + 12);
  v12 = *(a2 + 16);
  v11 = *(a2 + 20);
  v13 = *(a2 + 24);
  v14 = *(a2 + 28);
  v15 = *(a2 + 32);
  v16 = *(a2 + 36);
  v17 = *(a2 + 40);
  v37 = *(a2 + 41);
  v35 = *(a2 + 42);
  v19 = *(a2 + 44);
  v18 = *(a2 + 48);
  v31 = *(a1 + 60);
  v32 = *(a2 + 52);
  v25 = *(a2 + 56);
  v29 = *(a2 + 60);
  v26 = *(a2 + 61);
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI13_SymbolEffectV5Added33_2975F89CBD28662DFA5DA6D958CBE343LLV_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  result = 0;
  if (v2 == v9 && ((v3 ^ v10) & 1) == 0 && v4 == v12)
  {
    if (v6)
    {
      if (!v13)
      {
        return 0;
      }
    }

    else
    {
      if (v5 == v11)
      {
        v21 = v13;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        return 0;
      }
    }

    if (v8)
    {
      if (!v15)
      {
        return 0;
      }
    }

    else
    {
      if (v7 == v14)
      {
        v22 = v15;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        return 0;
      }
    }

    if (v40)
    {
      result = 0;
      if ((v17 & 1) == 0)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (v17)
      {
        return result;
      }
    }

    if (v39 == v16 && ((v38 ^ v37) & 1) == 0 && ((v36 ^ v35) & 1) == 0 && v34 == v19)
    {
      if (v33)
      {
        if (!v32)
        {
          return 0;
        }
      }

      else
      {
        v23 = v32;
        if (v30 != v18)
        {
          v23 = 1;
        }

        if (v23)
        {
          return 0;
        }
      }

      if ((v31 & 1) == 0)
      {
        v24 = v29;
        if (v27 != v25)
        {
          v24 = 1;
        }

        if (v24)
        {
          return 0;
        }

        return v28 ^ v26 ^ 1u;
      }

      if (v29)
      {
        return v28 ^ v26 ^ 1u;
      }

      return 0;
    }
  }

  return result;
}

uint64_t specialized static _SymbolEffect.Added.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v28 = v5;
  v29 = v4;
  v30 = v2;
  v31 = v3;
  v8 = *(a2 + 48);
  v9 = *(a1 + 48);
  v10 = *(a2 + 44);
  v12 = *(a2 + 24);
  v11 = *(a2 + 32);
  v13 = *(a2 + 16);
  v14 = *(a1 + 44);
  v16 = *(a1 + 24);
  v15 = *(a1 + 32);
  v17 = *(a1 + 40);
  v18 = *(a2 + 40);
  v24 = *(a1 + 16);
  v25 = v16;
  v26 = v15;
  v27 = v17;
  v20 = v13;
  v21 = v12;
  v22 = v11;
  v23 = v18;
  outlined copy of _SymbolEffect.Storage(v24, v16, v15, v17);
  outlined copy of _SymbolEffect.Storage(v13, v12, v11, v18);
  v19 = specialized static _SymbolEffect.Storage.== infix(_:_:)(&v24, &v20);
  outlined consume of _SymbolEffect.Storage(v20, v21, v22, v23);
  outlined consume of _SymbolEffect.Storage(v24, v25, v26, v27);
  if (v9 == v8)
  {
    return v19 & (v14 == v10);
  }

  else
  {
    return 0;
  }
}

BOOL specialized static _SymbolEffect.VariableColorConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *a2;
  v5 = *(a2 + 8);
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    v9 = *a1;
    if ((~v4 & 0xF000000000000006) != 0)
    {
      v8 = v4;
      outlined copy of _SymbolEffect.Trigger?(v2);
      outlined copy of _SymbolEffect.Trigger?(v4);
      outlined copy of _SymbolEffect.Trigger?(v2);
      v7 = specialized static PlaybackMode.== infix(_:_:)(&v9, &v8);
      outlined consume of _SymbolEffect.Trigger(v8);
      outlined consume of _SymbolEffect.Trigger(v9);
      outlined consume of _SymbolEffect.Trigger?(v2);
      if (v7)
      {
        return v3 == v5;
      }

      return 0;
    }

    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined copy of _SymbolEffect.Trigger?(v4);
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger(v2);
LABEL_6:
    outlined consume of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger?(v4);
    return 0;
  }

  outlined copy of _SymbolEffect.Trigger?(*a1);
  outlined copy of _SymbolEffect.Trigger?(v4);
  if ((~v4 & 0xF000000000000006) != 0)
  {
    goto LABEL_6;
  }

  outlined consume of _SymbolEffect.Trigger?(v2);
  return v3 == v5;
}

uint64_t specialized static _SymbolEffect.WiggleConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 20);
  v6 = *(a1 + 24);
  v7 = *(a1 + 25);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 20);
  v12 = *(a2 + 24);
  v13 = *(a2 + 25);
  if ((~*a1 & 0xF000000000000006) == 0)
  {
    v20 = *(a2 + 16);
    v14 = *(a1 + 16);
    v15 = *(a2 + 20);
    v16 = *(a1 + 20);
    v17 = *(a2 + 24);
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined copy of _SymbolEffect.Trigger?(v8);
    if ((~v8 & 0xF000000000000006) == 0)
    {
      outlined consume of _SymbolEffect.Trigger?(v2);
      v12 = v17;
      v5 = v16;
      v11 = v15;
      v4 = v14;
      v10 = v20;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v22 = *a1;
  if ((~v8 & 0xF000000000000006) == 0)
  {
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined copy of _SymbolEffect.Trigger?(v8);
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger(v2);
LABEL_6:
    outlined consume of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger?(v8);
    return 0;
  }

  v21 = v8;
  outlined copy of _SymbolEffect.Trigger?(v2);
  outlined copy of _SymbolEffect.Trigger?(v8);
  outlined copy of _SymbolEffect.Trigger?(v2);
  v19 = specialized static PlaybackMode.== infix(_:_:)(&v22, &v21);
  outlined consume of _SymbolEffect.Trigger(v21);
  outlined consume of _SymbolEffect.Trigger(v22);
  outlined consume of _SymbolEffect.Trigger?(v2);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  result = 0;
  if (v4)
  {
    if (!v10)
    {
      return result;
    }
  }

  else if ((v10 & 1) != 0 || v3 != v9)
  {
    return result;
  }

  if (v5 == v11 && ((v6 ^ v12) & 1) == 0)
  {
    return v7 ^ v13 ^ 1u;
  }

  return result;
}

uint64_t specialized static _SymbolEffect.RotateConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  v4 = *(a1 + 12);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 12);
  if ((~*a1 & 0xF000000000000006) == 0)
  {
    outlined copy of _SymbolEffect.Trigger?(*a1);
    outlined copy of _SymbolEffect.Trigger?(v5);
    if ((~v5 & 0xF000000000000006) == 0)
    {
      outlined consume of _SymbolEffect.Trigger?(v2);
      if (v3 == v6)
      {
        return v4 ^ v7 ^ 1u;
      }

      return 0;
    }

LABEL_7:
    outlined consume of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger?(v5);
    return 0;
  }

  v11 = *a1;
  if ((~v5 & 0xF000000000000006) == 0)
  {
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined copy of _SymbolEffect.Trigger?(v5);
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger(v2);
    goto LABEL_7;
  }

  v10 = v5;
  outlined copy of _SymbolEffect.Trigger?(v2);
  outlined copy of _SymbolEffect.Trigger?(v5);
  outlined copy of _SymbolEffect.Trigger?(v2);
  v9 = specialized static PlaybackMode.== infix(_:_:)(&v11, &v10);
  outlined consume of _SymbolEffect.Trigger(v10);
  outlined consume of _SymbolEffect.Trigger(v11);
  outlined consume of _SymbolEffect.Trigger?(v2);
  result = 0;
  if ((v9 & 1) != 0 && v3 == v6)
  {
    return v4 ^ v7 ^ 1u;
  }

  return result;
}

uint64_t specialized static _SymbolEffect.PulseConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    v9 = *a1;
    if ((~v4 & 0xF000000000000006) != 0)
    {
      v8 = v4;
      outlined copy of _SymbolEffect.Trigger?(v2);
      outlined copy of _SymbolEffect.Trigger?(v4);
      outlined copy of _SymbolEffect.Trigger?(v2);
      v7 = specialized static PlaybackMode.== infix(_:_:)(&v9, &v8);
      outlined consume of _SymbolEffect.Trigger(v8);
      outlined consume of _SymbolEffect.Trigger(v9);
      outlined consume of _SymbolEffect.Trigger?(v2);
      if (v7)
      {
        return v3 ^ v5 ^ 1u;
      }

      return 0;
    }

    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined copy of _SymbolEffect.Trigger?(v4);
    outlined copy of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger(v2);
LABEL_6:
    outlined consume of _SymbolEffect.Trigger?(v2);
    outlined consume of _SymbolEffect.Trigger?(v4);
    return 0;
  }

  outlined copy of _SymbolEffect.Trigger?(*a1);
  outlined copy of _SymbolEffect.Trigger?(v4);
  if ((~v4 & 0xF000000000000006) != 0)
  {
    goto LABEL_6;
  }

  outlined consume of _SymbolEffect.Trigger?(v2);
  return v3 ^ v5 ^ 1u;
}

uint64_t specialized static _SymbolEffect.Storage.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v24[0] = *a1;
  v24[1] = v3;
  v24[2] = v4;
  v25 = v5;
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v10 = v5 >> 12;
  v29 = v9;
  if (v5 >> 12 <= 3)
  {
    if (v5 >> 12 > 1)
    {
      if (v10 != 2)
      {
        if ((v9 & 0xF000) == 0x3000)
        {
          v19 = v2;
          v20 = v3;
          v21 = v4 & 1;
          v22 = HIDWORD(v4);
          v23 = v5 & 0x101;
          v14 = v6;
          v15 = v7;
          v16 = v8 & 1;
          v17 = HIDWORD(v8);
          v18 = v9 & 0x101;
          outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
          outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
          outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
          outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
          v11 = specialized static _SymbolEffect.WiggleConfiguration.== infix(_:_:)(&v19, &v14);
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      if ((v9 & 0xF000) != 0x2000)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (!v10)
      {
        if (v9 < 0x1000)
        {
          v19 = v2;
          LOBYTE(v20) = v3 & 1;
          v14 = v6;
          LOBYTE(v15) = v7 & 1;
          outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
          outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
          outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
          outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
          v11 = specialized static _SymbolEffect.PulseConfiguration.== infix(_:_:)(&v19, &v14);
LABEL_36:
          v12 = v11;
          outlined destroy of (_SymbolEffect.Storage, _SymbolEffect.Storage)(v24);
          outlined consume of _SymbolEffect.Storage(v6, v7, v8, v9);
          outlined consume of _SymbolEffect.Storage(v2, v3, v4, v5);
          return v12 & 1;
        }

        goto LABEL_37;
      }

      if ((v9 & 0xF000) != 0x1000)
      {
        goto LABEL_37;
      }
    }

LABEL_27:
    v19 = v2;
    LODWORD(v20) = v3;
    BYTE4(v20) = BYTE4(v3) & 1;
    v14 = v6;
    LODWORD(v15) = v7;
    BYTE4(v15) = BYTE4(v7) & 1;
    outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
    outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
    outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
    outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
    v11 = specialized static _SymbolEffect.RotateConfiguration.== infix(_:_:)(&v19, &v14);
    goto LABEL_36;
  }

  if (v5 >> 12 <= 5)
  {
    if (v10 == 4)
    {
      if ((v9 & 0xF000) != 0x4000)
      {
        goto LABEL_37;
      }

      goto LABEL_27;
    }

    if ((v9 & 0xF000) == 0x5000)
    {
      v19 = v2;
      LODWORD(v20) = v3;
      v14 = v6;
      LODWORD(v15) = v7;
      outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
      outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
      outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
      outlined copy of _SymbolEffect.Storage(v2, v3, v4, v5);
      v11 = specialized static _SymbolEffect.VariableColorConfiguration.== infix(_:_:)(&v19, &v14);
      goto LABEL_36;
    }

LABEL_37:
    outlined copy of _SymbolEffect.Trigger?(v2);
    goto LABEL_38;
  }

  if (v10 == 6)
  {
    if ((v9 & 0xF000) != 0x6000)
    {
      goto LABEL_38;
    }

    outlined destroy of (_SymbolEffect.Storage, _SymbolEffect.Storage)(v24);
    if (v2 == v6)
    {
      v12 = BYTE4(v2) & 1 ^ ((v6 & 0x100000000) == 0);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    if (v10 == 7)
    {
      if ((v9 & 0xF000) == 0x7000)
      {
        outlined destroy of (_SymbolEffect.Storage, _SymbolEffect.Storage)(v24);
        if ((v2 & 0x100000000) != 0)
        {
          if ((v6 & 0x100000000) == 0 || v2 != v6 || ((v2 >> 40) & 1) != ((v6 >> 40) & 1) || (HIWORD(v2) & 1) != (HIWORD(v6) & 1))
          {
            goto LABEL_39;
          }
        }

        else if ((v6 & 0x100000000) != 0 || v2 != v6 || ((v2 >> 40) & 1) != ((v6 >> 40) & 1) || (HIWORD(v2) & 1) != (HIWORD(v6) & 1))
        {
          goto LABEL_39;
        }

        v12 = 1;
        return v12 & 1;
      }

LABEL_38:
      outlined copy of _SymbolEffect.Storage(v6, v7, v8, v9);
      outlined destroy of (_SymbolEffect.Storage, _SymbolEffect.Storage)(v24);
LABEL_39:
      v12 = 0;
      return v12 & 1;
    }

    if ((v9 & 0xF000) != 0x8000 || v7 | v6 | v8 || v9 != 0x8000)
    {
      goto LABEL_38;
    }

    outlined destroy of (_SymbolEffect.Storage, _SymbolEffect.Storage)(v24);
    v12 = 1;
  }

  return v12 & 1;
}

double outlined copy of _SymbolEffect.Trigger?(uint64_t a1)
{
  if ((~a1 & 0xF000000000000006) != 0)
  {
    return outlined copy of _SymbolEffect.Trigger(a1);
  }

  return result;
}

double outlined copy of _SymbolEffect.Storage(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if ((a4 >> 12) <= 5u)
  {
    return outlined copy of _SymbolEffect.Trigger?(a1);
  }

  return result;
}

uint64_t specialized static _SymbolEffect.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v5 = *(a1 + 28);
  v4 = *(a1 + 32);
  v6 = *(a1 + 36);
  v7 = *(a1 + 40);
  v8 = *(a1 + 44);
  v9 = *a2;
  v10 = *(a2 + 8);
  v11 = *(a2 + 16);
  v13 = *(a2 + 28);
  v12 = *(a2 + 32);
  v14 = *(a2 + 36);
  v15 = *(a2 + 40);
  v16 = *(a2 + 44);
  v17 = *(a1 + 24);
  v18 = *(a2 + 24);
  v26 = *a1;
  v27 = v2;
  v28 = v3;
  v29 = v17;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  v25 = v18;
  outlined copy of _SymbolEffect.Storage(v26, v2, v3, v17);
  outlined copy of _SymbolEffect.Storage(v9, v10, v11, v18);
  LOBYTE(v9) = specialized static _SymbolEffect.Storage.== infix(_:_:)(&v26, &v22);
  outlined consume of _SymbolEffect.Storage(v22, v23, v24, v25);
  outlined consume of _SymbolEffect.Storage(v26, v27, v28, v29);
  result = 0;
  if ((v9 & 1) != 0 && v5 == v13)
  {
    if (v6)
    {
      if (!v14)
      {
        return 0;
      }
    }

    else
    {
      if (v4 == v12)
      {
        v20 = v14;
      }

      else
      {
        v20 = 1;
      }

      if (v20)
      {
        return 0;
      }
    }

    if (v8)
    {
      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v7 == v15)
      {
        v21 = v16;
      }

      else
      {
        v21 = 1;
      }

      if (v21)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t outlined init with copy of _SymbolEffect(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  outlined copy of _SymbolEffect.Storage(*a1, v5, v6, v7);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  v8 = *(a1 + 28);
  *(a2 + 44) = *(a1 + 44);
  *(a2 + 28) = v8;
  return a2;
}

uint64_t specialized static _SymbolEffect.Identified.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = 0;
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 2);
  v20 = *(a1 + 1);
  v21[0] = v5;
  *(v21 + 13) = *(a1 + 45);
  v7 = *a2;
  v6 = a2[1];
  v8 = *(a2 + 2);
  v22 = *(a2 + 1);
  v23[0] = v8;
  *(v23 + 13) = *(a2 + 45);
  if (__PAIR128__(v3, v4) == __PAIR128__(v6, v7))
  {
    v9 = *(a1 + 2);
    v14 = *(a1 + 1);
    v15[0] = v9;
    *(v15 + 13) = *(a1 + 45);
    v10 = *(a2 + 2);
    v12 = *(a2 + 1);
    v13[0] = v10;
    *(v13 + 13) = *(a2 + 45);
    outlined init with copy of _SymbolEffect(&v20, &v18);
    outlined init with copy of _SymbolEffect(&v22, &v18);
    v2 = specialized static _SymbolEffect.== infix(_:_:)(&v14, &v12);
    v16 = v12;
    v17[0] = v13[0];
    *(v17 + 13) = *(v13 + 13);
    outlined destroy of _SymbolEffect(&v16);
    v18 = v14;
    v19[0] = v15[0];
    *(v19 + 13) = *(v15 + 13);
    outlined destroy of _SymbolEffect(&v18);
  }

  return v2 & 1;
}

double outlined consume of _SymbolEffect.Storage?(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if ((~a3 & 0xFFFFFFFE) != 0 || (a4 & 0xFEFE) != 2)
  {
    return outlined consume of _SymbolEffect.Storage(result, a2, a3, a4);
  }

  return v4;
}

uint64_t initializeWithCopy for _SymbolEffect(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of _SymbolEffect.Storage(*a2, v5, v6, v7);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t assignWithCopy for _SymbolEffect(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  outlined copy of _SymbolEffect.Storage(*a2, v5, v6, v7);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  v11 = *(a1 + 24);
  *(a1 + 24) = v7;
  outlined consume of _SymbolEffect.Storage(v8, v9, v10, v11);
  *(a1 + 28) = *(a2 + 28);
  v12 = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 32) = v12;
  v13 = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 40) = v13;
  return a1;
}

__n128 __swift_memcpy45_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 29) = *(a2 + 29);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t assignWithTake for _SymbolEffect(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v9 = *(a1 + 24);
  *(a1 + 24) = v5;
  outlined consume of _SymbolEffect.Storage(v6, v7, v8, v9);
  *(a1 + 28) = *(a2 + 28);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 45))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 1) & 0x7FFFFFFF | ((*(a1 + 24) >> 1) << 31);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 45) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (-2 * a2);
      *(result + 24) = 2;
      return result;
    }

    *(result + 45) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for _SymbolEffect.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of _SymbolEffect.Storage(*a2, v4, v5, v6);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return a1;
}

uint64_t assignWithCopy for _SymbolEffect.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  outlined copy of _SymbolEffect.Storage(*a2, v4, v5, v6);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  v10 = *(a1 + 24);
  *(a1 + 24) = v6;
  outlined consume of _SymbolEffect.Storage(v7, v8, v9, v10);
  return a1;
}

uint64_t assignWithTake for _SymbolEffect.Storage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  v5 = *a1;
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v8 = *(a1 + 24);
  *(a1 + 24) = v4;
  outlined consume of _SymbolEffect.Storage(v5, v7, v6, v8);
  return a1;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.Storage(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 16) >> 1) & 0x7FFFFFFF | ((*(a1 + 24) >> 1) << 31);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect.Storage(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (-2 * a2);
      *(result + 24) = 2;
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTag for _SymbolEffect.Storage(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1;
  v3 = v1 >> 12;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 8);
  }
}

uint64_t destructiveInjectEnumTag for _SymbolEffect.Storage(uint64_t result, unsigned int a2)
{
  if (a2 < 8)
  {
    v2 = *(result + 24) & 0x101 | (a2 << 12);
    *(result + 16) &= 0xFFFFFFFF00000001;
    *(result + 24) = v2;
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 8;
    *(result + 24) = 0x8000;
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _SymbolEffect.PulseConfiguration(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if ((~*a2 & 0xF000000000000006) != 0)
  {
    v4 = result;
    outlined copy of _SymbolEffect.Trigger(*a2);
    result = v4;
  }

  *result = v3;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for _SymbolEffect.PulseConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a2 & 0xF000000000000006;
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    if (v5 == 0xF000000000000006)
    {
      outlined destroy of _SymbolEffect.Trigger(a1);
      *a1 = *a2;
    }

    else
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
      v6 = *a1;
      *a1 = v4;
      outlined consume of _SymbolEffect.Trigger(v6);
    }
  }

  else
  {
    if (v5 != 0xF000000000000006)
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
    }

    *a1 = v4;
  }

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t *assignWithTake for _SymbolEffect.PulseConfiguration(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if ((~*result & 0xF000000000000006) != 0)
  {
    if ((~v4 & 0xF000000000000006) != 0)
    {
      *result = v4;
      v6 = result;
      outlined consume of _SymbolEffect.Trigger(v3);
      result = v6;
    }

    else
    {
      v5 = result;
      outlined destroy of _SymbolEffect.Trigger(result);
      result = v5;
      *v5 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t initializeWithCopy for _SymbolEffect.WiggleConfiguration(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if ((~*a2 & 0xF000000000000006) != 0)
  {
    v4 = result;
    outlined copy of _SymbolEffect.Trigger(*a2);
    result = v4;
  }

  v5 = *(a2 + 8);
  *result = v3;
  *(result + 8) = v5;
  *(result + 16) = *(a2 + 16);
  *(result + 20) = *(a2 + 20);
  *(result + 24) = *(a2 + 24);
  return result;
}

uint64_t assignWithCopy for _SymbolEffect.WiggleConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a2 & 0xF000000000000006;
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    if (v5 == 0xF000000000000006)
    {
      outlined destroy of _SymbolEffect.Trigger(a1);
      *a1 = *a2;
    }

    else
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
      v6 = *a1;
      *a1 = v4;
      outlined consume of _SymbolEffect.Trigger(v6);
    }
  }

  else
  {
    if (v5 != 0xF000000000000006)
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
    }

    *a1 = v4;
  }

  v7 = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 8) = v7;
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 25) = *(a2 + 25);
  return a1;
}

uint64_t *assignWithTake for _SymbolEffect.WiggleConfiguration(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if ((~*result & 0xF000000000000006) != 0)
  {
    if ((~v4 & 0xF000000000000006) != 0)
    {
      *result = v4;
      v6 = result;
      outlined consume of _SymbolEffect.Trigger(v3);
      result = v6;
    }

    else
    {
      v5 = result;
      outlined destroy of _SymbolEffect.Trigger(result);
      result = v5;
      *v5 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  result[1] = a2[1];
  *(result + 16) = *(a2 + 16);
  *(result + 5) = *(a2 + 5);
  *(result + 24) = *(a2 + 24);
  *(result + 25) = *(a2 + 25);
  return result;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.WiggleConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 26))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect.WiggleConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _SymbolEffect.BreatheConfiguration(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if ((~*a2 & 0xF000000000000006) != 0)
  {
    v4 = result;
    outlined copy of _SymbolEffect.Trigger(*a2);
    result = v4;
  }

  *result = v3;
  *(result + 8) = *(a2 + 8);
  *(result + 12) = *(a2 + 12);
  return result;
}

uint64_t assignWithCopy for _SymbolEffect.BreatheConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a2 & 0xF000000000000006;
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    if (v5 == 0xF000000000000006)
    {
      outlined destroy of _SymbolEffect.Trigger(a1);
      *a1 = *a2;
    }

    else
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
      v6 = *a1;
      *a1 = v4;
      outlined consume of _SymbolEffect.Trigger(v6);
    }
  }

  else
  {
    if (v5 != 0xF000000000000006)
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
    }

    *a1 = v4;
  }

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  return a1;
}

uint64_t *assignWithTake for _SymbolEffect.BreatheConfiguration(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if ((~*result & 0xF000000000000006) != 0)
  {
    if ((~v4 & 0xF000000000000006) != 0)
    {
      *result = v4;
      v6 = result;
      outlined consume of _SymbolEffect.Trigger(v3);
      result = v6;
    }

    else
    {
      v5 = result;
      outlined destroy of _SymbolEffect.Trigger(result);
      result = v5;
      *v5 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  *(result + 2) = *(a2 + 2);
  *(result + 12) = *(a2 + 12);
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for _SymbolEffect.VariableColorConfiguration(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if ((~*a2 & 0xF000000000000006) != 0)
  {
    v4 = result;
    outlined copy of _SymbolEffect.Trigger(*a2);
    result = v4;
  }

  *result = v3;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for _SymbolEffect.VariableColorConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a2 & 0xF000000000000006;
  if ((~*a1 & 0xF000000000000006) != 0)
  {
    if (v5 == 0xF000000000000006)
    {
      outlined destroy of _SymbolEffect.Trigger(a1);
      *a1 = *a2;
    }

    else
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
      v6 = *a1;
      *a1 = v4;
      outlined consume of _SymbolEffect.Trigger(v6);
    }
  }

  else
  {
    if (v5 != 0xF000000000000006)
    {
      outlined copy of _SymbolEffect.Trigger(*a2);
    }

    *a1 = v4;
  }

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t *assignWithTake for _SymbolEffect.VariableColorConfiguration(uint64_t *result, uint64_t *a2)
{
  v3 = *result;
  v4 = *a2;
  if ((~*result & 0xF000000000000006) != 0)
  {
    if ((~v4 & 0xF000000000000006) != 0)
    {
      *result = v4;
      v6 = result;
      outlined consume of _SymbolEffect.Trigger(v3);
      result = v6;
    }

    else
    {
      v5 = result;
      outlined destroy of _SymbolEffect.Trigger(result);
      result = v5;
      *v5 = v4;
    }
  }

  else
  {
    *result = v4;
  }

  *(result + 2) = *(a2 + 2);
  return result;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.VariableColorConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3E && *(a1 + 12))
  {
    return (*a1 + 62);
  }

  v3 = *a1 >> 58;
  v4 = *a1 & 6 | (8 * ((v3 >> 2) & 7));
  v5 = 62 - (v4 | (v3 >> 5));
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect.VariableColorConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3D)
  {
    *(result + 8) = 0;
    *result = a2 - 62;
    if (a3 >= 0x3E)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3E)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      v3 = (32 * (a2 ^ 0x3F)) | ((a2 ^ 0x3F) >> 1);
      *result = ((v3 << 58) | (2 * v3)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.ScaleConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect.ScaleConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.HiddenConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 7))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect.HiddenConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.ReplaceConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 12))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect.ReplaceConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeWithCopy for _SymbolEffect.Identified(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  outlined copy of _SymbolEffect.Storage(v4, v5, v6, v7);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 60) = *(a2 + 60);
  return a1;
}

uint64_t assignWithCopy for _SymbolEffect.Identified(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  outlined copy of _SymbolEffect.Storage(v4, v5, v6, v7);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v11 = *(a1 + 40);
  *(a1 + 40) = v7;
  outlined consume of _SymbolEffect.Storage(v8, v9, v10, v11);
  *(a1 + 44) = *(a2 + 44);
  v12 = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 48) = v12;
  v13 = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = v13;
  return a1;
}

uint64_t assignWithTake for _SymbolEffect.Identified(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = v4;
  v10 = *(a1 + 40);
  *(a1 + 40) = v5;
  outlined consume of _SymbolEffect.Storage(v6, v7, v8, v10);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  return a1;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.Identified(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 61))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 1) & 0x7FFFFFFF | ((*(a1 + 40) >> 1) << 31);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect.Identified(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 61) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = (-2 * a2);
      *(result + 40) = 2;
      return result;
    }

    *(result + 61) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for _SymbolEffect.Phase(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 1);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 9);
  *(a1 + 39) = *(a2 + 39);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 61) = *(a2 + 61);

  return a1;
}

uint64_t *assignWithCopy for _SymbolEffect.Phase(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 4) = *(a2 + 4);
  v4 = *(a2 + 5);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 5) = v4;
  v5 = *(a2 + 7);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 7) = v5;
  v6 = *(a2 + 9);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 9) = v6;
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 11) = *(a2 + 11);
  v7 = *(a2 + 12);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 12) = v7;
  v8 = *(a2 + 14);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 14) = v8;
  *(a1 + 61) = *(a2 + 61);
  return a1;
}

__n128 __swift_memcpy62_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t *assignWithTake for _SymbolEffect.Phase(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 9) = *(a2 + 9);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 11) = *(a2 + 11);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 52) = *(a2 + 52);
  *(a1 + 14) = *(a2 + 14);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 61) = *(a2 + 61);
  return a1;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.Phase(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 62))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect.Phase(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 62) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *result = (a2 - 1);
      return result;
    }

    *(result + 62) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t initializeWithCopy for _SymbolEffect.Added(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  outlined copy of _SymbolEffect.Storage(v4, v5, v6, v7);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 44) = *(a2 + 44);
  return a1;
}

uint64_t assignWithCopy for _SymbolEffect.Added(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 32);
  v7 = *(a2 + 40);
  outlined copy of _SymbolEffect.Storage(v4, v5, v6, v7);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  v11 = *(a1 + 40);
  *(a1 + 40) = v7;
  outlined consume of _SymbolEffect.Storage(v8, v9, v10, v11);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t assignWithTake for _SymbolEffect.Added(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v9;
  *(a1 + 32) = v4;
  v10 = *(a1 + 40);
  *(a1 + 40) = v5;
  outlined consume of _SymbolEffect.Storage(v6, v7, v8, v10);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);
  return a1;
}

uint64_t getEnumTagSinglePayload for _SymbolEffect.Added(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 52))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 1) & 0x7FFFFFFF | ((*(a1 + 40) >> 1) << 31);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for _SymbolEffect.Added(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 52) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 32) = (-2 * a2);
      *(result + 40) = 2;
      return result;
    }

    *(result + 52) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t type metadata accessor for RBAnimation()
{
  result = lazy cache variable for type metadata for RBAnimation;
  if (!lazy cache variable for type metadata for RBAnimation)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for RBAnimation);
  }

  return result;
}

uint64_t outlined destroy of (_SymbolEffect.Storage, _SymbolEffect.Storage)(uint64_t a1)
{
  type metadata accessor for (_SymbolEffect.Storage, _SymbolEffect.Storage)();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for (_SymbolEffect.Storage, _SymbolEffect.Storage)()
{
  if (!lazy cache variable for type metadata for (_SymbolEffect.Storage, _SymbolEffect.Storage))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (_SymbolEffect.Storage, _SymbolEffect.Storage));
    }
  }
}

__n128 RepresentableContextValues.init(preferenceBridge:transaction:environmentStorage:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a3[1].n128_u8[0];
  a4->n128_u64[0] = a1;
  a4->n128_u64[1] = a2;
  result = *a3;
  a4[1] = *a3;
  a4[2].n128_u8[0] = v4;
  return result;
}

double RepresentableContextValues.environmentStorage.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return outlined copy of RepresentableContextValues.EnvironmentStorage(v2, v3, v4);
}

uint64_t RepresentableContextValues.environmentStorage.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = outlined consume of RepresentableContextValues.EnvironmentStorage(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t static RepresentableContextValues.current.setter(uint64_t a1)
{
  v2 = *(a1 + 32);
  swift_beginAccess();
  v3 = static RepresentableContextValues.current;
  v4 = qword_1ED527ED0;
  v5 = qword_1ED527ED8;
  v6 = *(a1 + 16);
  static RepresentableContextValues.current = *a1;
  *&qword_1ED527ED0 = v6;
  v7 = byte_1ED527EE0;
  byte_1ED527EE0 = v2;
  return outlined consume of RepresentableContextValues?(v3, *(&v3 + 1), v4, v5, v7);
}

double key path getter for static RepresentableContextValues.current : RepresentableContextValues.Type@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v2 = static RepresentableContextValues.current;
  v3 = qword_1ED527ED0;
  v4 = qword_1ED527ED8;
  *a1 = static RepresentableContextValues.current;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  v5 = byte_1ED527EE0;
  *(a1 + 32) = byte_1ED527EE0;
  return outlined copy of RepresentableContextValues?(v2, *(&v2 + 1), v3, v4, v5);
}

uint64_t key path setter for static RepresentableContextValues.current : RepresentableContextValues.Type(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  swift_beginAccess();
  v6 = *(&static RepresentableContextValues.current + 1);
  v11 = static RepresentableContextValues.current;
  v7 = qword_1ED527ED0;
  v8 = qword_1ED527ED8;
  *&static RepresentableContextValues.current = v1;
  *(&static RepresentableContextValues.current + 1) = v2;
  qword_1ED527ED0 = v3;
  qword_1ED527ED8 = v4;
  v9 = byte_1ED527EE0;
  byte_1ED527EE0 = v5;
  outlined copy of RepresentableContextValues?(v1, v2, v3, v4, v5);
  return outlined consume of RepresentableContextValues?(v11, v6, v7, v8, v9);
}

uint64_t destroy for RepresentableContextValues(uint64_t a1)
{

  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);

  return outlined consume of RepresentableContextValues.EnvironmentStorage(v2, v3, v4);
}

uint64_t initializeWithCopy for RepresentableContextValues(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = a2[2];
  v5 = a2[3];
  v6 = *(a2 + 32);

  outlined copy of RepresentableContextValues.EnvironmentStorage(v4, v5, v6);
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return a1;
}

uint64_t *assignWithCopy for RepresentableContextValues(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  *a1 = *a2;

  a1[1] = v2[1];

  v4 = v2[2];
  v5 = v2[3];
  LOBYTE(v2) = *(v2 + 32);
  outlined copy of RepresentableContextValues.EnvironmentStorage(v4, v5, v2);
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 32);
  a1[2] = v4;
  a1[3] = v5;
  *(a1 + 32) = v2;
  outlined consume of RepresentableContextValues.EnvironmentStorage(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for RepresentableContextValues(uint64_t a1, uint64_t a2)
{

  *a1 = *a2;

  v4 = *(a2 + 32);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  outlined consume of RepresentableContextValues.EnvironmentStorage(v5, v6, v7);
  return a1;
}

uint64_t getEnumTagSinglePayload for RepresentableContextValues(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for RepresentableContextValues(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for RepresentableContextValues.EnvironmentStorage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of RepresentableContextValues.EnvironmentStorage(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for RepresentableContextValues.EnvironmentStorage(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of RepresentableContextValues.EnvironmentStorage(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  outlined consume of RepresentableContextValues.EnvironmentStorage(v6, v7, v8);
  return a1;
}

uint64_t assignWithTake for RepresentableContextValues.EnvironmentStorage(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  outlined consume of RepresentableContextValues.EnvironmentStorage(v4, v5, v6);
  return a1;
}

void NSDateFormatter.configure(in:)(uint64_t *a1)
{
  v2 = type metadata accessor for TimeZone();
  v21 = *(v2 - 8);
  v22 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Calendar();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Locale();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v13, v12);
  }

  else
  {
    v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (v15)
    {
      (*(v10 + 16))(v12, &v15[*(*v15 + 248)], v9);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v16 = __swift_project_value_buffer(v9, static LocaleKey.defaultValue);
      (*(v10 + 16))(v12, v16, v9);
    }
  }

  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v10 + 8))(v12, v9);
  v18 = v23;
  [v23 setLocale_];

  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v13, v8);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v13, v8);
  }

  v19 = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v6 + 8))(v8, v5);
  [v18 setCalendar_];

  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v13, v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v13, v4);
  }

  v20 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v21 + 8))(v4, v22);
  [v18 setTimeZone_];
}

void protocol witness for EnvironmentConfigurableFormatter.configure(in:) in conformance NSISO8601DateFormatter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TimeZone();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v11[-v7];
  v9 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v9, v8);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v9, &v11[-v7]);
  }

  isa = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v8, v4);
  [v2 setTimeZone_];
}

void protocol witness for EnvironmentConfigurableFormatter.configure(in:) in conformance NSDateComponentsFormatter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Calendar();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v11[-v7];
  v9 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v9, v8);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v9, &v11[-v7]);
  }

  isa = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v8, v4);
  [v2 setCalendar_];
}

void NSDateIntervalFormatter.configure(in:)(uint64_t a1)
{
  v2 = type metadata accessor for TimeZone();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Locale();
  v5 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Calendar();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = &v22 - v11;
  v13 = *a1;
  v14 = *(a1 + 8);
  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v13, v12);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(*a1, &v22 - v11);
  }

  isa = Calendar._bridgeToObjectiveC()().super.isa;
  (*(v9 + 8))(v12, v8);
  v16 = v26;
  [v26 setCalendar_];

  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v13, v7);

    v17 = v23;
  }

  else
  {
    v18 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v13);
    v17 = v23;
    if (v18)
    {
      (*(v5 + 16))(v7, &v18[*(*v18 + 248)], v23);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v19 = __swift_project_value_buffer(v17, static LocaleKey.defaultValue);
      (*(v5 + 16))(v7, v19, v17);
    }
  }

  v20 = Locale._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v17);
  [v16 setLocale_];

  if (v14)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v13, v4);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v13, v4);
  }

  v21 = TimeZone._bridgeToObjectiveC()().super.isa;
  (*(v24 + 8))(v4, v25);
  [v16 setTimeZone_];
}

void NSNumberFormatter.configure(in:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v8, v7);
  }

  else
  {
    v9 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v8);
    if (v9)
    {
      (*(v5 + 16))(v7, &v9[*(*v9 + 248)], v4);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v10 = __swift_project_value_buffer(v4, static LocaleKey.defaultValue);
      (*(v5 + 16))(v7, v10, v4);
    }
  }

  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v5 + 8))(v7, v4);
  [v2 setLocale_];
}

void NSMeasurementFormatter.configure(in:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v12 = *a1;
  v11 = a1[1];
  if (v11)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v12, v10);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (v13)
    {
      (*(v5 + 16))(v10, &v13[*(*v13 + 248)], v4);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(v4, static LocaleKey.defaultValue);
      (*(v5 + 16))(v10, v14, v4);
    }
  }

  isa = Locale._bridgeToObjectiveC()().super.isa;
  v16 = *(v5 + 8);
  v16(v10, v4);
  [v2 setLocale_];

  v17 = [v2 numberFormatter];
  if (v17)
  {
    v18 = v17;
    if (v11)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v12, v7);
    }

    else
    {
      v19 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v12);
      if (v19)
      {
        (*(v5 + 16))(v7, &v19[*(*v19 + 248)], v4);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v20 = __swift_project_value_buffer(v4, static LocaleKey.defaultValue);
        (*(v5 + 16))(v7, v20, v4);
      }
    }

    v21 = Locale._bridgeToObjectiveC()().super.isa;
    v16(v7, v4);
    [v18 setLocale_];
  }

  else
  {
    __break(1u);
  }
}

void NSMassFormatter.configure(in:)(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v11 = [v2 numberFormatter];
  if (v11)
  {
    v12 = v11;
    if (v9)
    {

      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v10, v8);
    }

    else
    {
      v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v10);
      if (v13)
      {
        (*(v5 + 16))(v8, &v13[*(*v13 + 248)], v4);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v14 = __swift_project_value_buffer(v4, static LocaleKey.defaultValue);
        (*(v5 + 16))(v8, v14, v4);
      }
    }

    isa = Locale._bridgeToObjectiveC()().super.isa;
    (*(v5 + 8))(v8, v4);
    [v12 setLocale_];
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in variable initialization expression of static ExperimentalGlassMaterialProvider.sdfLayer(unint64_t *a1@<X8>)
{
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer.SDFLayer.GroupLayer>, &type metadata for Material.Layer.SDFLayer.GroupLayer);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_18DDAB4C0;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18DDC5680;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0x3FF0000000000000;
  *(v1 + 32) = v2 | 0x5000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1065353216;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 76) = 0x7F8000003F800000;
  type metadata accessor for _ContiguousArrayStorage<SIMD4<Float>>(0);
  v3 = swift_allocObject();
  v3[1] = xmmword_18DDAF080;
  v3[2] = xmmword_18DDC5690;
  if (one-time initialization token for linear != -1)
  {
    swift_once();
  }

  v4 = static SIMD4<>.linear;
  v3[3] = static SIMD4<>.linear;
  v3[4] = v4;
  v86 = v4;
  v122 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 5, 0);
  v5 = v122;
  v7 = *(v122 + 16);
  v6 = *(v122 + 24);
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
    v5 = v122;
    v6 = *(v122 + 24);
    v8 = v6 >> 1;
  }

  *(v5 + 16) = v9;
  v10 = v5 + 20 * v7;
  *(v10 + 32) = xmmword_18DDC56A0;
  *(v10 + 48) = 2143289344;
  v11 = v7 + 2;
  if (v8 <= v9)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v11, 1);
    v5 = v122;
  }

  *(v5 + 16) = v11;
  v12 = v5 + 20 * v9;
  *(v12 + 32) = xmmword_18DDC56B0;
  *(v12 + 48) = 2143289344;
  v14 = *(v5 + 16);
  v13 = *(v5 + 24);
  v15 = v14 + 1;
  if (v14 >= v13 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
  }

  v16 = v122;
  *(v122 + 16) = v15;
  v17 = v16 + 20 * v14;
  *(v17 + 32) = xmmword_18DDC56C0;
  *(v17 + 48) = 2143289344;
  v18 = *(v16 + 24);
  v19 = v14 + 2;
  if (v15 >= v18 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19, 1);
    v16 = v122;
  }

  *(v16 + 16) = v19;
  v20 = v16 + 20 * v15;
  __asm { FMOV            V0.4S, #1.0 }

  v90 = _Q0;
  *(v20 + 32) = _Q0;
  *(v20 + 48) = 2143289344;
  v27 = *(v16 + 16);
  v26 = *(v16 + 24);
  if (v27 >= v26 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
    v16 = v122;
  }

  v28 = swift_allocObject();
  *(v16 + 16) = v27 + 1;
  v29 = v16 + 20 * v27;
  *(v29 + 32) = v90;
  *(v29 + 48) = 2143289344;
  *(v28 + 16) = v16;
  *(v28 + 24) = &outlined read-only object #1 of closure #1 in variable initialization expression of static ExperimentalGlassMaterialProvider.sdfLayer;
  *(v28 + 32) = v3;
  *(v1 + 88) = v28 | 0x2000000000000000;
  *(v1 + 96) = 0;
  *(v1 + 104) = 1065353216;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 132) = 0x7F8000003F800000;
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer.Filter>, &type metadata for Material.Layer.Filter);
  v30 = swift_allocObject();
  v30[1] = xmmword_18DDAB4C0;
  memset(v103, 0, sizeof(v103));
  v104 = 0;
  v105 = 0x80000000;
  outlined destroy of VariableBlurStyle.Mask(v103);
  *&v108 = 0x4050800000000000;
  WORD4(v108) = 1;
  *(&v108 + 10) = v106;
  HIWORD(v108) = v107;
  v109 = xmmword_18DD85500;
  *(&v111 + 1) = 0;
  *&v113 = 0;
  *&v114[24] = 0x40000000;
  _s7SwiftUI14GraphicsFilterOWOi0_(&v108);
  v31 = v113;
  v30[6] = v112;
  v30[7] = v31;
  v30[8] = *v114;
  *(v30 + 140) = *&v114[12];
  v32 = v109;
  v30[2] = v108;
  v30[3] = v32;
  v33 = v111;
  v30[4] = v110;
  v30[5] = v33;
  *(&v119 + 1) = 0;
  *&v118 = 0;
  *&v116 = 0;
  v115 = 0x4040800000000000uLL;
  *&v121[16] = 0x40000000;
  _s7SwiftUI14GraphicsFilterOWOi1_(&v115);
  v34 = v120;
  v30[14] = v119;
  v30[15] = v34;
  v30[16] = *v121;
  *(v30 + 268) = *&v121[12];
  v35 = v116;
  v30[10] = v115;
  v30[11] = v35;
  v36 = v118;
  v30[12] = v117;
  v30[13] = v36;
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_18DDC56D0;
  *(v37 + 32) = 0x80;
  *(v37 + 40) = v1;
  *(v37 + 48) = v30;
  v89 = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = 0;
  *(v38 + 36) = 0x7FC000003DCCCCCDLL;
  *(v38 + 48) = xmmword_18DDC56E0;
  *(v38 + 64) = 0x400A666666666666;
  *(v38 + 72) = 1;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_18DDA6EB0;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_18DDC56F0;
  *(v40 + 40) = 0;
  *(v40 + 48) = 0;
  *(v40 + 32) = 0x3FF0000000000000;
  *(v39 + 32) = v40 | 0x5000000000000000;
  *(v39 + 40) = 0;
  *(v39 + 48) = 1065353216;
  *(v39 + 56) = 0;
  *(v39 + 64) = 0;
  *(v39 + 72) = 0;
  *(v39 + 76) = 0x7F8000003F800000;
  v41 = swift_allocObject();
  v41[1] = xmmword_18DDAF080;
  *(&v96 + 1) = 0;
  *&v95 = 0;
  *&v93 = 0;
  v92 = 0x4060A00000000000uLL;
  *&v98[16] = 0x40000000;
  _s7SwiftUI14GraphicsFilterOWOi1_(&v92);
  v42 = v97;
  v41[6] = v96;
  v41[7] = v42;
  v41[8] = *v98;
  *(v41 + 140) = *&v98[12];
  v43 = v93;
  v41[2] = v92;
  v41[3] = v43;
  v44 = v95;
  v41[4] = v94;
  v41[5] = v44;
  *&v99[0] = 0x4040800000000000;
  WORD4(v99[0]) = 0;
  _s7SwiftUI14GraphicsFilterOWOi_(v99);
  v45 = v99[5];
  v41[14] = v99[4];
  v41[15] = v45;
  v41[16] = *v100;
  *(v41 + 268) = *&v100[12];
  v46 = v99[1];
  v41[10] = v99[0];
  v41[11] = v46;
  v47 = v99[3];
  v41[12] = v99[2];
  v41[13] = v47;
  *&v101[0] = 0x4008000000000000;
  _s7SwiftUI14GraphicsFilterOWOi9_(v101);
  v48 = v101[5];
  v41[22] = v101[4];
  v41[23] = v48;
  v41[24] = v102[0];
  *(v41 + 396) = *(v102 + 12);
  v49 = v101[1];
  v41[18] = v101[0];
  v41[19] = v49;
  v50 = v101[3];
  v41[20] = v101[2];
  v41[21] = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_18DDC56D0;
  *(v51 + 32) = 0x80;
  *(v51 + 40) = v39;
  *(v51 + 48) = v41;
  v52 = swift_allocObject();
  v52[1] = xmmword_18DDAF080;
  v52[2] = xmmword_18DDC5700;
  v52[3] = v86;
  v52[4] = v86;
  v53 = MEMORY[0x1E69E7CC0];
  v91 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 3, 0);
  v54 = v91;
  v56 = *(v91 + 16);
  v55 = *(v91 + 24);
  v57 = v55 >> 1;
  v58 = v56 + 1;
  if (v55 >> 1 <= v56)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
    v54 = v91;
    v55 = *(v91 + 24);
    v57 = v55 >> 1;
  }

  *(v54 + 16) = v58;
  v59 = v54 + 20 * v56;
  *(v59 + 32) = xmmword_18DDC5710;
  *(v59 + 48) = 2143289344;
  v60 = v56 + 2;
  v61 = v90;
  if (v57 <= v58)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v60, 1);
    v61 = v90;
    v54 = v91;
  }

  *(v54 + 16) = v60;
  v62 = v54 + 20 * v58;
  *(v62 + 32) = v61;
  *(v62 + 48) = 2143289344;
  v64 = *(v54 + 16);
  v63 = *(v54 + 24);
  if (v64 >= v63 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1);
  }

  v65 = swift_allocObject();
  *(v91 + 16) = v64 + 1;
  v66 = v91 + 20 * v64;
  *(v66 + 32) = v90;
  *(v66 + 48) = 2143289344;
  *(v65 + 16) = v91;
  *(v65 + 24) = &outlined read-only object #3 of closure #1 in variable initialization expression of static ExperimentalGlassMaterialProvider.sdfLayer;
  *(v65 + 32) = v52;
  v67 = v65 | 0x2000000000000000;
  v68 = swift_allocObject();
  *(v68 + 16) = v51 | 0x8000000000000000;
  *(v68 + 24) = v67;
  v87 = v68 | 0x9000000000000000;
  v69 = swift_allocObject();
  *(v69 + 16) = xmmword_18DDA6EB0;
  v70 = swift_allocObject();
  *(v70 + 16) = 0;
  *(v70 + 24) = v90;
  *(v70 + 40) = 2143289344;
  v71 = swift_allocObject();
  if (one-time initialization token for faceEffectMatrix != -1)
  {
    v84 = v71;
    swift_once();
    v71 = v84;
  }

  v72 = unk_1EAB1C920;
  *(v71 + 48) = xmmword_1EAB1C910;
  *(v71 + 64) = v72;
  *(v71 + 80) = xmmword_1EAB1C930;
  v73 = unk_1EAB1C900;
  *(v71 + 16) = static _ColorMatrix.faceEffectMatrix;
  *(v71 + 32) = v73;
  *(v69 + 32) = v70;
  *(v69 + 40) = v71 | 0x4000000000000000;
  *(v69 + 48) = 1065353216;
  *(v69 + 56) = 0;
  *(v69 + 64) = 0;
  *(v69 + 72) = 0;
  *(v69 + 76) = 0x7F8000003F800000;
  v74 = swift_allocObject();
  *(v74 + 16) = 0;
  *(v74 + 24) = 0;
  *(v74 + 32) = 0x80;
  v85 = v74 | 0x8000000000000000;
  *(v74 + 40) = v69;
  *(v74 + 48) = v53;
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_18DDC5720;
  *(v75 + 32) = v90;
  *(v75 + 48) = 2143289344;
  v76 = swift_allocObject();
  *(v76 + 16) = 0;
  *(v76 + 24) = xmmword_18DDC5730;
  *(v76 + 40) = 2143289344;
  *(v76 + 48) = xmmword_18DDC5740;
  *(v76 + 64) = xmmword_18DDC5750;
  *(v76 + 80) = 0x3FB999999999999ALL;
  *(v76 + 88) = 0;
  v77 = swift_allocObject();
  *(v77 + 16) = 0;
  *(v77 + 24) = xmmword_18DDC5760;
  *(v77 + 40) = 2143289344;
  *(v77 + 48) = xmmword_18DDC5770;
  *(v77 + 64) = xmmword_18DDC5780;
  *(v77 + 80) = 0x3FD0000000000000;
  *(v77 + 88) = 0;
  v78 = swift_allocObject();
  *(v78 + 16) = xmmword_18DDACAA0;
  *(v78 + 32) = v89 | 0x8000000000000000;
  *(v78 + 40) = 0;
  *(v78 + 48) = 1065353216;
  *(v78 + 56) = 0;
  *(v78 + 64) = 0;
  *(v78 + 72) = 0;
  *(v78 + 76) = 0x7F8000003F800000;
  *(v78 + 88) = v38 | 0x3000000000000000;
  *(v78 + 96) = 0;
  *(v78 + 104) = 1065353216;
  *(v78 + 112) = 0;
  *(v78 + 120) = 0;
  *(v78 + 128) = 0;
  *(v78 + 132) = 0x7F8000003F800000;
  *(v78 + 144) = v87;
  *(v78 + 152) = 0;
  *(v78 + 160) = 1051931443;
  *(v78 + 168) = 0;
  *(v78 + 176) = 0;
  *(v78 + 184) = 0;
  *(v78 + 188) = 0x7F8000003F800000;
  *(v78 + 200) = v85;
  *(v78 + 208) = 0;
  *(v78 + 216) = 1065353216;
  *(v78 + 240) = 0;
  *(v78 + 224) = 0;
  *(v78 + 232) = 0;
  *(v78 + 244) = 0x7F8000003F800000;
  v79 = swift_allocObject();
  v80 = one-time initialization token for thinSolidEdgeMatrix;

  if (v80 != -1)
  {
    swift_once();
  }

  v81 = unk_1EAB1C970;
  *(v79 + 48) = xmmword_1EAB1C960;
  *(v79 + 64) = v81;
  *(v79 + 80) = xmmword_1EAB1C980;
  v82 = *algn_1EAB1C950;
  *(v79 + 16) = static _ColorMatrix.thinSolidEdgeMatrix;
  *(v79 + 32) = v82;
  *(v78 + 256) = v75 | 0x1000000000000000;
  *(v78 + 264) = v79 | 0x4000000000000000;
  *(v78 + 272) = 1065353216;
  *(v78 + 280) = 0;
  *(v78 + 288) = 0;
  *(v78 + 296) = 0;
  *(v78 + 300) = 0x7F8000003F800000;
  *(v78 + 312) = v76 | 0x6000000000000000;
  *(v78 + 320) = 0;
  *(v78 + 328) = 1065353216;
  *(v78 + 336) = 0;
  *(v78 + 344) = 0;
  *(v78 + 352) = 0;
  *(v78 + 356) = 0x7F8000003F800000;
  *(v78 + 368) = v77 | 0x6000000000000000;
  *(v78 + 376) = 0;
  *(v78 + 384) = 1065353216;
  *(v78 + 408) = 0;
  *(v78 + 392) = 0;
  *(v78 + 400) = 0;
  *(v78 + 412) = 0x7F8000003F800000;

  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  *(v83 + 24) = 0;
  *(v83 + 32) = 0x80;
  *(v83 + 40) = v78;
  *(v83 + 48) = MEMORY[0x1E69E7CC0];
  *a1 = v83 | 0x8000000000000000;
  a1[1] = 0;
}

uint64_t ExperimentalGlassMaterialProvider.resolveLayers(in:)()
{
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer>, &type metadata for Material.Layer);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18DDA6EB0;
  if (one-time initialization token for sdfLayer != -1)
  {
    swift_once();
  }

  v1 = static ExperimentalGlassMaterialProvider.sdfLayer;
  v2 = unk_1EABBFCC0;
  *(v0 + 68) = 1065353216;
  v3 = one-time initialization token for normal;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = static GraphicsBlendMode.normal;
  v5 = byte_1ED52F818;
  *(v0 + 72) = static GraphicsBlendMode.normal;
  *(v0 + 80) = v5;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 2;
  outlined copy of GraphicsBlendMode(v4, v5);
  return v0;
}

uint64_t protocol witness for MaterialProvider.resolveLayers(in:) in conformance ExperimentalGlassMaterialProvider()
{
  type metadata accessor for _ContiguousArrayStorage<LayoutProxyAttributes>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Material.Layer>, &type metadata for Material.Layer);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_18DDA6EB0;
  if (one-time initialization token for sdfLayer != -1)
  {
    swift_once();
  }

  v1 = static ExperimentalGlassMaterialProvider.sdfLayer;
  v2 = unk_1EABBFCC0;
  *(v0 + 68) = 1065353216;
  v3 = one-time initialization token for normal;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = static GraphicsBlendMode.normal;
  v5 = byte_1ED52F818;
  *(v0 + 72) = static GraphicsBlendMode.normal;
  *(v0 + 80) = v5;
  *(v0 + 32) = v1;
  *(v0 + 40) = v2;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 2;
  outlined copy of GraphicsBlendMode(v4, v5);
  return v0;
}

uint64_t static Material.experimentalGlassMaterial.getter@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for MaterialProviderBox<ExperimentalGlassMaterialProvider>(0, &lazy cache variable for type metadata for MaterialProviderBox<ExperimentalGlassMaterialProvider>, lazy protocol witness table accessor for type ExperimentalGlassMaterialProvider and conformance ExperimentalGlassMaterialProvider, &type metadata for ExperimentalGlassMaterialProvider, type metadata accessor for MaterialProviderBox);
  result = swift_allocObject();
  *a1 = result;
  *(a1 + 8) = 1;
  *(a1 + 12) = 0;
  return result;
}

double one-time initialization function for faceEffectMatrix()
{
  static _ColorMatrix.faceEffectMatrix = xmmword_18DDC5790;
  unk_1EAB1C900 = xmmword_18DDC57A0;
  xmmword_1EAB1C910 = xmmword_18DDC57B0;
  unk_1EAB1C920 = xmmword_18DDC57C0;
  result = 0.0;
  xmmword_1EAB1C930 = xmmword_18DDC57D0;
  return result;
}