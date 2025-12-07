uint64_t AllowsHitTestingResponder.__allocating_init(inputs:viewSubgraph:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = *(a1 + 48);
  v8[2] = *(a1 + 32);
  v8[3] = v5;
  v8[4] = *(a1 + 64);
  v9 = *(a1 + 80);
  v6 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v6;
  *(v4 + 216) = 1;
  return DefaultLayoutViewResponder.init(inputs:viewSubgraph:)(v8, a2);
}

double key path setter for _GraphInputs.allowsHitTestingAccessibilityProvider : _GraphInputs(uint64_t *a1, Swift::UInt *a2)
{
  v3 = *a1;
  v4 = a1[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(a2, v3, v4);

  return result;
}

double _GraphInputs.allowsHitTestingAccessibilityProvider.setter(uint64_t a1, uint64_t a2)
{

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(v2, a1, a2);

  return result;
}

uint64_t (*_GraphInputs.allowsHitTestingAccessibilityProvider.modify(uint64_t **a1))()
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
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _GraphInputs.allowsHitTestingAccessibilityProvider.modify;
}

double protocol witness for static PropertyKey.defaultValue.getter in conformance _GraphInputs.AllowsHitTestingAccessibilityProviderKey@<D0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&static _GraphInputs.AllowsHitTestingAccessibilityProviderKey.defaultValue;
  *a1 = static _GraphInputs.AllowsHitTestingAccessibilityProviderKey.defaultValue;
  return result;
}

uint64_t (*_ViewInputs.allowsHitTestingAccessibilityProvider.modify(uint64_t **a1))()
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
  v3[4] = v1;
  v5 = *v1;
  v4[5] = *v1;
  v6 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(v5);
  v4[6] = 0;
  *v4 = v6;
  v4[1] = v7;
  return _ViewInputs.allowsHitTestingAccessibilityProvider.modify;
}

void _GraphInputs.allowsHitTestingAccessibilityProvider.modify(Swift::UInt ***a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE037AllowsHitTestingAccessibilityProviderF033_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLV_Tt2g5(v1[4], v3, v2);

  free(v1);
}

void EnvironmentValues.defaultRenderingMode.getter(char *a1@<X8>)
{
  v3 = *v1;
  if (*(v1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020DefaultRenderingModeI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, a1);
  }

  else
  {
    v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020DefaultRenderingModeS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v1);
    if (v4)
    {
      v5 = *(v4 + 72);
    }

    else
    {
      v5 = 1;
    }

    *a1 = v5;
  }
}

void EnvironmentValues.defaultBaselineOffset.getter(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v3 = *v2;
  if (v2[1])
  {

    a1(v3);
  }

  else
  {
    a2(v3);
  }
}

void key path getter for EnvironmentValues.textSizing : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010TextSizingI033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt1g5(v3, v7);

    v4 = v7[0];
    v5 = v8;
  }

  else
  {
    v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010TextSizingS033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt0g5(*a1);
    if (v6)
    {
      v4 = *(v6 + 72);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v4 = static TextSizingKey.defaultValue;
    }
  }

  *a2 = v4;
  *(a2 + 8) = v5;
}

double key path setter for EnvironmentValues.textSizing : EnvironmentValues(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *a1;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA010TextSizingF033_22747AAF70EE5063D02F299CE90A18BELLVG_Tt2B5(a2, v5, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA010TextSizingK033_22747AAF70EE5063D02F299CE90A18BELLVG_Ttg5(v4, *a2);
  }

  return result;
}

void key path getter for EnvironmentValues.fontModifiers : EnvironmentValues(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA013FontModifiersI033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA013FontModifiersS033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.fontModifiers : EnvironmentValues(unint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013FontModifiersF033_25811D44B7BE5E768C1CBA33158F398BLLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013FontModifiersK033_25811D44B7BE5E768C1CBA33158F398BLLVG_Ttg5(v4, *a2);
  }

  return result;
}

uint64_t EnvironmentValues.allowsVibrantBlending.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021AllowsVibrantBlendingI0VG_Tt1g5(v1);
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021AllowsVibrantBlendingS0VG_Tt0g5(v1);
    if (!v3)
    {
      v4 = 1;
      return v4 & 1;
    }

    v2 = *(v3 + 72);
  }

  v4 = (v2 == 2) | v2;
  return v4 & 1;
}

uint64_t EnvironmentValues.fallbackFont.getter()
{
  v1 = *v0;
  if (v0[1])
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV012FallbackFontJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

    return v2;
  }

  else
  {
    v4 = *v0;

    return _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA0D6ValuesV012FallbackFontF033_1B17C64D9E901A0054B49B69A4A2439DLLV_Tt1g5(v4);
  }
}

unint64_t static DisplayGamut.deviceDefault.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = _CUIDefaultDisplayGamut(a1, a2);
  if (result > 1)
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
  }

  return result;
}

Swift::Int Image.Scale.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

SwiftUI::DisplayGamut_optional __swiftcall DisplayGamut.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

double View.adjustsTextFrameForOversizedCharacters(_:)(char a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  if (a1)
  {
    if (one-time initialization token for adjustsForOversizedCharacters != -1)
    {
      swift_once();
    }

    v7 = &static Text.Sizing.adjustsForOversizedCharacters;
  }

  else
  {
    if (one-time initialization token for standard != -1)
    {
      swift_once();
    }

    v7 = &static Text.Sizing.standard;
  }

  v8 = *(v7 + 1);
  v10[0] = *v7;
  v11 = v8;

  View.environment<A>(_:_:)(KeyPath, v10, a2, a3);

  return result;
}

double View.fontWidth(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  KeyPath = swift_getKeyPath();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.fontWidth(_:), v6, a2);

  return result;
}

void closure #1 in View.fontWidth(_:)(unint64_t *a1, uint64_t a2, char a3, __n128 a4)
{
  if (a3)
  {
    v5 = *a1;
    v25 = *a1 >> 62;
    v6 = *a1 & 0xFFFFFFFFFFFFFF8;
    if (v25)
    {
      goto LABEL_70;
    }

    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (v7 == v8)
      {
        if (v25)
        {
          v8 = __CocoaSet.count.getter();
        }

        else
        {
          v8 = *(v6 + 16);
        }

        goto LABEL_27;
      }

      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193AC03C0](v8, v5);
      }

      else
      {
        if (v8 >= *(v6 + 16))
        {
          goto LABEL_63;
        }
      }

      _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WidthModifier>, lazy protocol witness table accessor for type Font.WidthModifier and conformance Font.WidthModifier, &type metadata for Font.WidthModifier, type metadata accessor for AnyDynamicFontModifier);
      v9 = swift_dynamicCastClass();

      v10 = __OFADD__(v8, 1);
      if (v9)
      {
        break;
      }

      ++v8;
      if (v10)
      {
        goto LABEL_64;
      }
    }

    if (!v10)
    {
      if (v25)
      {
        v12 = __CocoaSet.count.getter();
      }

      else
      {
        v12 = *(v6 + 16);
      }

      if (v8 + 1 != v12)
      {
        v14 = v8 + 5;
        do
        {
          v15 = v14 - 4;
          if ((v5 & 0xC000000000000001) != 0)
          {
            MEMORY[0x193AC03C0](v14 - 4, v5);
          }

          else
          {
            if ((v15 & 0x8000000000000000) != 0)
            {
              goto LABEL_65;
            }

            if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_66;
            }
          }

          v16 = swift_dynamicCastClass();

          if (!v16)
          {
            if (v15 != v8)
            {
              if ((v5 & 0xC000000000000001) != 0)
              {
                v17 = MEMORY[0x193AC03C0](v8, v5);
                v18 = MEMORY[0x193AC03C0](v14 - 4, v5);
              }

              else
              {
                if (v8 < 0)
                {
                  goto LABEL_73;
                }

                v19 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v8 >= v19)
                {
                  goto LABEL_74;
                }

                if (v15 >= v19)
                {
                  goto LABEL_75;
                }

                v17 = *(v5 + 8 * v8 + 32);
                v18 = *(v5 + 8 * v14);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
              {
                v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
                v20 = (v5 >> 62) & 1;
              }

              else
              {
                LODWORD(v20) = 0;
              }

              v6 = v5 & 0xFFFFFFFFFFFFFF8;
              *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v18;

              if ((v5 & 0x8000000000000000) != 0 || v20)
              {
                v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
                v6 = v5 & 0xFFFFFFFFFFFFFF8;
                if ((v15 & 0x8000000000000000) != 0)
                {
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  __break(1u);
LABEL_66:
                  __break(1u);
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
LABEL_69:
                  __break(1u);
LABEL_70:
                  v7 = __CocoaSet.count.getter();
                  goto LABEL_4;
                }
              }

              else if ((v15 & 0x8000000000000000) != 0)
              {
                goto LABEL_62;
              }

              if (v15 >= *(v6 + 16))
              {
                goto LABEL_69;
              }

              *(v6 + 8 * v14) = v17;

              *a1 = v5;
            }

            v21 = __OFADD__(v8++, 1);
            if (v21)
            {
              goto LABEL_68;
            }
          }

          v21 = __OFADD__(v15, 1);
          v22 = v14 - 3;
          if (v21)
          {
            goto LABEL_67;
          }

          if (v5 >> 62)
          {
            v23 = __CocoaSet.count.getter();
          }

          else
          {
            v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v14;
        }

        while (v22 != v23);
      }

LABEL_27:
      if (v5 >> 62)
      {
        v13 = __CocoaSet.count.getter();
        if (v13 >= v8)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13 >= v8)
        {
LABEL_29:
          specialized Array.replaceSubrange<A>(_:with:)(v8, v13, a4);
          return;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.WidthModifier>, lazy protocol witness table accessor for type Font.WidthModifier and conformance Font.WidthModifier, &type metadata for Font.WidthModifier, type metadata accessor for AnyDynamicFontModifier);
    *(swift_allocObject() + 16) = a2;
    MEMORY[0x193ABF170]();
    if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }
}

void closure #1 in View.monospaced(_:)(unint64_t *a1, char a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  if (a2)
  {
    a3();
    MEMORY[0x193ABF170]();
    if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_69;
    }

    goto LABEL_3;
  }

  v10 = *a1;
  v28 = *a1 >> 62;
  if (v28)
  {
    v11 = __CocoaSet.count.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  while (1)
  {
    if (v11 == v12)
    {
      if (v28)
      {
        v12 = __CocoaSet.count.getter();
      }

      else
      {
        v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      goto LABEL_26;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      MEMORY[0x193AC03C0](v12, v10, a3);
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }
    }

    type metadata accessor for AnyStaticFontModifier<Font.ItalicModifier>(0, a4, a5, a6);
    v13 = swift_dynamicCastClass();

    v14 = v12 + 1;
    v15 = __OFADD__(v12, 1);
    if (v13)
    {
      break;
    }

    ++v12;
    if (v15)
    {
      goto LABEL_63;
    }
  }

  if (v15)
  {
    goto LABEL_76;
  }

  if (v28)
  {
    if (v14 != __CocoaSet.count.getter())
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  if (v14 == *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_26:
    if (v10 >> 62)
    {
      v16 = __CocoaSet.count.getter();
      if (v16 >= v12)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16 >= v12)
      {
LABEL_28:
        specialized Array.replaceSubrange<A>(_:with:)(v12, v16, a7);
        return;
      }
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    return;
  }

LABEL_29:
  v17 = v12 + 5;
  while (2)
  {
    v18 = v17 - 4;
    if ((v10 & 0xC000000000000001) != 0)
    {
      MEMORY[0x193AC03C0](v17 - 4, v10);
    }

    else
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_64;
      }

      if (v18 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }
    }

    v19 = swift_dynamicCastClass();

    if (v19)
    {
      goto LABEL_53;
    }

    if (v18 == v12)
    {
      goto LABEL_52;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x193AC03C0](v12, v10);
      v21 = MEMORY[0x193AC03C0](v17 - 4, v10);
    }

    else
    {
      if (v12 < 0)
      {
        goto LABEL_73;
      }

      v22 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12 >= v22)
      {
        goto LABEL_74;
      }

      if (v18 >= v22)
      {
        goto LABEL_75;
      }

      v20 = *(v10 + 8 * v12 + 32);
      v21 = *(v10 + 8 * v17);
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v10 & 0x8000000000000000) != 0 || (v10 & 0x4000000000000000) != 0)
    {
      v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
      v23 = (v10 >> 62) & 1;
    }

    else
    {
      LODWORD(v23) = 0;
    }

    v24 = v10 & 0xFFFFFFFFFFFFFF8;
    *((v10 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20) = v21;

    if ((v10 & 0x8000000000000000) == 0 && !v23)
    {
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_61;
      }

LABEL_50:
      if (v18 >= *(v24 + 16))
      {
        goto LABEL_68;
      }

      *(v24 + 8 * v17) = v20;

      *a1 = v10;
LABEL_52:
      if (__OFADD__(v12++, 1))
      {
        goto LABEL_67;
      }

LABEL_53:
      v26 = v17 - 3;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_66;
      }

      if (v10 >> 62)
      {
        v27 = __CocoaSet.count.getter();
      }

      else
      {
        v27 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v17;
      if (v26 == v27)
      {
        goto LABEL_26;
      }

      continue;
    }

    break;
  }

  v10 = specialized _ArrayBuffer._consumeAndCreateNew()(v10);
  v24 = v10 & 0xFFFFFFFFFFFFFF8;
  if ((v18 & 0x8000000000000000) == 0)
  {
    goto LABEL_50;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
LABEL_3:
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

void closure #1 in View.fontDesign(_:)(unint64_t *a1, char a2, __n128 a3)
{
  if (a2 == 4)
  {
    v4 = *a1;
    v24 = *a1 >> 62;
    v5 = *a1 & 0xFFFFFFFFFFFFFF8;
    if (v24)
    {
      goto LABEL_70;
    }

    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (v6 == v7)
      {
        if (v24)
        {
          v7 = __CocoaSet.count.getter();
        }

        else
        {
          v7 = *(v5 + 16);
        }

        goto LABEL_27;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        MEMORY[0x193AC03C0](v7, v4);
      }

      else
      {
        if (v7 >= *(v5 + 16))
        {
          goto LABEL_63;
        }
      }

      _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.DesignModifier>, lazy protocol witness table accessor for type Font.DesignModifier and conformance Font.DesignModifier, &type metadata for Font.DesignModifier, type metadata accessor for AnyDynamicFontModifier);
      v8 = swift_dynamicCastClass();

      v9 = __OFADD__(v7, 1);
      if (v8)
      {
        break;
      }

      ++v7;
      if (v9)
      {
        goto LABEL_64;
      }
    }

    if (!v9)
    {
      if (v24)
      {
        v11 = __CocoaSet.count.getter();
      }

      else
      {
        v11 = *(v5 + 16);
      }

      if (v7 + 1 != v11)
      {
        v13 = v7 + 5;
        do
        {
          v14 = v13 - 4;
          if ((v4 & 0xC000000000000001) != 0)
          {
            MEMORY[0x193AC03C0](v13 - 4, v4);
          }

          else
          {
            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_65;
            }

            if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_66;
            }
          }

          v15 = swift_dynamicCastClass();

          if (!v15)
          {
            if (v14 != v7)
            {
              if ((v4 & 0xC000000000000001) != 0)
              {
                v16 = MEMORY[0x193AC03C0](v7, v4);
                v17 = MEMORY[0x193AC03C0](v13 - 4, v4);
              }

              else
              {
                if (v7 < 0)
                {
                  goto LABEL_73;
                }

                v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v7 >= v18)
                {
                  goto LABEL_74;
                }

                if (v14 >= v18)
                {
                  goto LABEL_75;
                }

                v16 = *(v4 + 8 * v7 + 32);
                v17 = *(v4 + 8 * v13);
              }

              if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
              {
                v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
                v19 = (v4 >> 62) & 1;
              }

              else
              {
                LODWORD(v19) = 0;
              }

              v5 = v4 & 0xFFFFFFFFFFFFFF8;
              *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v17;

              if ((v4 & 0x8000000000000000) != 0 || v19)
              {
                v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
                v5 = v4 & 0xFFFFFFFFFFFFFF8;
                if ((v14 & 0x8000000000000000) != 0)
                {
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  __break(1u);
LABEL_66:
                  __break(1u);
LABEL_67:
                  __break(1u);
LABEL_68:
                  __break(1u);
LABEL_69:
                  __break(1u);
LABEL_70:
                  v6 = __CocoaSet.count.getter();
                  goto LABEL_4;
                }
              }

              else if ((v14 & 0x8000000000000000) != 0)
              {
                goto LABEL_62;
              }

              if (v14 >= *(v5 + 16))
              {
                goto LABEL_69;
              }

              *(v5 + 8 * v13) = v16;

              *a1 = v4;
            }

            v20 = __OFADD__(v7++, 1);
            if (v20)
            {
              goto LABEL_68;
            }
          }

          v20 = __OFADD__(v14, 1);
          v21 = v13 - 3;
          if (v20)
          {
            goto LABEL_67;
          }

          if (v4 >> 62)
          {
            v22 = __CocoaSet.count.getter();
          }

          else
          {
            v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          ++v13;
        }

        while (v21 != v22);
      }

LABEL_27:
      if (v4 >> 62)
      {
        v12 = __CocoaSet.count.getter();
        if (v12 >= v7)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v12 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v12 >= v7)
        {
LABEL_29:
          specialized Array.replaceSubrange<A>(_:with:)(v7, v12, a3);
          return;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    _s7SwiftUI7FontBoxCyAA0C0VAAE15DefaultProviderVGMaTm_0(0, &lazy cache variable for type metadata for AnyDynamicFontModifier<Font.DesignModifier>, lazy protocol witness table accessor for type Font.DesignModifier and conformance Font.DesignModifier, &type metadata for Font.DesignModifier, type metadata accessor for AnyDynamicFontModifier);
    *(swift_allocObject() + 16) = a2;
    MEMORY[0x193ABF170]();
    if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }
}

void key path getter for EnvironmentValues.defaultKerning : EnvironmentValues(void *a1@<X0>, double (*a2)(uint64_t)@<X3>, double (*a3)(void)@<X4>, double *a4@<X8>, uint64_t a5@<X1>, uint64_t a6@<X2>)
{
  v7 = *a1;
  if (a1[1])
  {

    v9 = a2(v7);
  }

  else
  {
    v9 = (a3)(*a1, a5, a6, a2);
  }

  *a4 = v9;
}

uint64_t EnvironmentValues.configuredForRoot()@<X0>(Swift::UInt *a1@<X8>)
{
  v3 = type metadata accessor for Locale();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18[-v8];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-v11];
  v13 = *v1;
  v14 = v1[1];
  *a1 = *v1;
  a1[1] = v14;

  static Locale.current.getter();
  v15 = *(v4 + 16);
  v15(v9, v12, v3);
  v15(v6, v9, v3);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a1, v6);

  v16 = *(v4 + 8);
  v16(v6, v3);
  if (v14)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v13, *a1);
  }

  v16(v9, v3);
  return (v16)(v12, v3);
}

void (*EnvironmentValues.font.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04FontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04FontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = v4;
  return EnvironmentValues.font.modify;
}

ValueMetadata *EnvironmentValues.fallbackFontProvider.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE031CorePlatfromProvidersDefinitionI033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt1g5(v1);
  }

  else if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesVAAE031CorePlatfromProvidersDefinitionS033_C648E6A51A5817691B7DBFA00A618C21LLVG_Tt0g5(*v0) && one-time initialization token for defaultValue != -1)
  {
    swift_once();
  }

  static CorePlatformProvidersDefinition.providers.getter(v3);
  if (v4)
  {
    return v4;
  }

  else
  {
    return &type metadata for DefaultFallbackFontProvider;
  }
}

uint64_t protocol witness for static DerivedEnvironmentKey.value(in:) in conformance EnvironmentValues.FallbackFontKey@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[1];
  v8 = *a1;
  v9 = v3;
  v4 = EnvironmentValues.fallbackFontProvider.getter();
  v7[0] = v8;
  v7[1] = v3;
  result = (*(v5 + 8))(v7, v4, v5);
  *a2 = result;
  return result;
}

void (*EnvironmentValues.defaultFont.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011DefaultFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011DefaultFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = v4;
  return EnvironmentValues.defaultFont.modify;
}

void (*EnvironmentValues.defaultSymbolFont.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017DefaultSymbolFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017DefaultSymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = v4;
  return EnvironmentValues.defaultSymbolFont.modify;
}

void (*EnvironmentValues.symbolFont.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = *v1;
  if (*(v1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010SymbolFontI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010SymbolFontS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 0;
    }
  }

  *a1 = v4;
  return EnvironmentValues.symbolFont.modify;
}

void EnvironmentValues.font.modify(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  if (a2)
  {

    a3(v4);
  }

  else
  {
    a3(*a1);
  }
}

void (*EnvironmentValues.imageScale.modify(char **a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010ImageScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, (v4 + 40));
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA010ImageScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 1;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.imageScale.modify;
}

void (*EnvironmentValues.isInTouchBar.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA010InTouchBarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA010InTouchBarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = v7 & 1;
  return EnvironmentValues.isInTouchBar.modify;
}

double static DefaultFallbackFontProvider.makeFont(in:)()
{
  if (one-time initialization token for body != -1)
  {
    swift_once();
  }

  return result;
}

void key path setter for EnvironmentValues.defaultKerning : EnvironmentValues(double *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t *, double), void (*a6)(uint64_t, void, __n128))
{
  v9 = *a1;
  v10 = *a2;
  swift_retain_n();
  a5(a2, &v11, v9);

  if (a2[1])
  {
    (a6)(v10, *a2);
  }
}

void (*EnvironmentValues.displayScale.modify(double **a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  *(v3 + 32) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 40) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayScaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayScaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v8)
    {
      v7 = v8[9];
    }

    else
    {
      v7 = 1.0;
    }
  }

  *v4 = v7;
  return EnvironmentValues.displayScale.modify;
}

void EnvironmentValues.displayScale.modify(double **a1)
{
  v1 = *a1;
  v2 = **a1;
  swift_retain_n();
  v3 = *(v1 + 5);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA012DisplayScaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(*(v1 + 3), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA012DisplayScaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(*(v1 + 4), **(v1 + 3));
  }

  free(v1);
}

uint64_t EnvironmentValues.defaultPixelLength.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018DefaultPixelLengthI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);
  }

  else
  {
    v3 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultPixelLengthS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*v0);
    if (v3)
    {
      return v3[9];
    }

    else
    {
      return 0;
    }
  }

  return v2;
}

void key path getter for EnvironmentValues.defaultPixelLength : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018DefaultPixelLengthI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3);
    v6 = v5;
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultPixelLengthS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (v7)
    {
      v4 = v7[9];
      v6 = *(v7 + 80);
    }

    else
    {
      v4 = 0;
      v6 = 1;
    }
  }

  *a2 = v4;
  *(a2 + 8) = v6 & 1;
}

void (*EnvironmentValues.defaultPixelLength.modify(uint64_t **a1))(uint64_t **a1)
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
  v3[4] = v1;
  v5 = *v1;
  v3[5] = *v1;
  v6 = *(v1 + 8);
  v3[6] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018DefaultPixelLengthI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
    v9 = v8;
  }

  else
  {
    v10 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultPixelLengthS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v10)
    {
      v7 = v10[9];
      v9 = *(v10 + 80);
    }

    else
    {
      v7 = 0;
      v9 = 1;
    }
  }

  *v4 = v7;
  *(v4 + 8) = v9 & 1;
  return EnvironmentValues.defaultPixelLength.modify;
}

void EnvironmentValues.defaultPixelLength.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8);
  swift_retain_n();
  v4 = v1[6];
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018DefaultPixelLengthF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v1[4], v2, v3);

  if (v4)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018DefaultPixelLengthK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v1[5], *v1[4]);
  }

  free(v1);
}

double key path setter for EnvironmentValues.dividerThickness : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016DividerThicknessF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(a2, v3, 0);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016DividerThicknessK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v4, *a2);
  }

  return result;
}

double EnvironmentValues.dividerThickness.setter(double a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016DividerThicknessF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v2, *&a1, 0);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016DividerThicknessK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v4, *v2);
  }

  return result;
}

void (*EnvironmentValues.dividerThickness.modify(void *a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[3] = v1;
  v3[4] = *v1;
  v3[5] = v1[1];
  EnvironmentValues.dividerThickness.getter();
  *v4 = v5;
  return EnvironmentValues.dividerThickness.modify;
}

void EnvironmentValues.dividerThickness.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[5];
  v3 = **a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA016DividerThicknessF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v1[3], v3, 0);

  if (v2)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA016DividerThicknessK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v1[4], *v1[3]);
  }

  free(v1);
}

void key path getter for EnvironmentValues.defaultRenderingMode : EnvironmentValues(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020DefaultRenderingModeI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, &v6);

    v4 = v6;
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020DefaultRenderingModeS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 1;
    }
  }

  *a2 = v4;
}

void (*EnvironmentValues.defaultRenderingMode.modify(char **a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA020DefaultRenderingModeI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, (v4 + 40));
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020DefaultRenderingModeS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 1;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.defaultRenderingMode.modify;
}

uint64_t EnvironmentValues.displayCornerRadius.getter()
{
  v1 = *v0;
  if (!v0[1])
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA019DisplayCornerRadiusF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v1);
  }

  v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019DisplayCornerRadiusI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);

  return v2;
}

void key path getter for EnvironmentValues.displayCornerRadius : EnvironmentValues(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019DisplayCornerRadiusI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3);
    v6 = v5;
  }

  else
  {
    v4 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA019DisplayCornerRadiusF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(*a1);
    v6 = v7;
  }

  *a2 = v4;
  *(a2 + 8) = v6 & 1;
}

double key path setter for EnvironmentValues.defaultPixelLength : EnvironmentValues(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t, uint64_t *), void (*a6)(uint64_t, uint64_t))
{
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *a2;
  swift_retain_n();
  a5(a2, v9, v10, &v13);

  if (a2[1])
  {
    a6(v11, *a2);
  }

  return result;
}

void (*EnvironmentValues.displayCornerRadius.modify(uint64_t **a1))(uint64_t **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[4] = v1;
  v5 = *v1;
  v3[5] = *v1;
  v6 = v1[1];
  v3[6] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA019DisplayCornerRadiusI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
    v9 = v8;
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA019DisplayCornerRadiusF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v5);
    v9 = v10;
  }

  v4[7] = 0;
  *v4 = v7;
  *(v4 + 8) = v9 & 1;
  return EnvironmentValues.displayCornerRadius.modify;
}

void EnvironmentValues.displayCornerRadius.modify(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 8);
  swift_retain_n();
  v4 = v1[6];
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA019DisplayCornerRadiusF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v1[4], v2, v3);

  if (v4)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA019DisplayCornerRadiusK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(v1[5], *v1[4]);
  }

  free(v1);
}

void (*EnvironmentValues.legibilityWeight.modify(char **a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA016LegibilityWeightI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, (v4 + 40));
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA016LegibilityWeightS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 2;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.legibilityWeight.modify;
}

void (*EnvironmentValues.locale.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x68uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v1;
  v6 = type metadata accessor for Locale();
  v5[3] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[4] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v5[8] = swift_coroFrameAlloc();
    v5[9] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v7 + 64));
    v5[6] = malloc(v9);
    v5[7] = malloc(v9);
    v5[8] = malloc(v9);
    v5[9] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[10] = v10;
  v12 = *v1;
  v5[11] = *v1;
  v13 = *(v1 + 8);
  v5[12] = v13;
  if (v13)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06LocaleI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v12, v11);
  }

  else
  {
    v14 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA06LocaleS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v12);
    if (v14)
    {
      (*(v8 + 16))(v11, &v14[*(*v14 + 248)], v6);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v15 = __swift_project_value_buffer(v6, static LocaleKey.defaultValue);
      (*(v8 + 16))(v11, v15, v6);
    }
  }

  return EnvironmentValues.locale.modify;
}

void EnvironmentValues.locale.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(v3 + 16);
  if (a2)
  {
    v24 = *(v2 + 96);
    v6 = *(v2 + 48);
    v5 = *(v2 + 56);
    v7 = *(v2 + 40);
    v9 = *(v2 + 16);
    v8 = *(v2 + 24);
    v4(v5, *(v2 + 80), v8);
    v4(v6, v5, v8);
    v4(v7, v6, v8);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v9, v7);

    v10 = *(v3 + 8);
    v10(v7, v8);
    if (v24)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(*(v2 + 88), **(v2 + 16));
    }

    v12 = *(v2 + 72);
    v11 = *(v2 + 80);
    v14 = *(v2 + 56);
    v13 = *(v2 + 64);
    v15 = *(v2 + 48);
    v25 = *(v2 + 40);
    v16 = *(v2 + 24);

    v10(v15, v16);
    v10(v14, v16);
    v10(v11, v16);
  }

  else
  {
    v17 = *(v2 + 96);
    v18 = *(v2 + 72);
    v19 = *(v2 + 64);
    v20 = *(v2 + 16);
    v21 = *(v2 + 24);
    v4(v18, *(v2 + 80), v21);
    v4(v19, v18, v21);
    swift_retain_n();
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA06LocaleF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v20, v19);

    v22 = *(v3 + 8);
    v22(v19, v21);
    if (v17)
    {
      _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA06LocaleK033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Ttg5(*(v2 + 88), **(v2 + 16));
    }

    v12 = *(v2 + 72);
    v11 = *(v2 + 80);
    v14 = *(v2 + 56);
    v13 = *(v2 + 64);
    v15 = *(v2 + 48);
    v25 = *(v2 + 40);
    v23 = *(v2 + 24);

    v22(v12, v23);
    v22(v11, v23);
  }

  free(v11);
  free(v12);
  free(v13);
  free(v14);
  free(v15);
  free(v25);

  free(v2);
}

void (*EnvironmentValues.calendar.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for Calendar();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v5[8] = swift_coroFrameAlloc();
    v5[9] = swift_coroFrameAlloc();
    v5[10] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v5[7] = malloc(v8);
    v5[8] = malloc(v8);
    v5[9] = malloc(v8);
    v5[10] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v5[11] = v9;
  v11 = *v1;
  v5[12] = *v1;
  v12 = *(v1 + 8);
  v5[13] = v12;
  if (v12)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08CalendarI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v11, v10);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08CalendarF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v11, v9);
  }

  v5[14] = 0;
  return EnvironmentValues.calendar.modify;
}

uint64_t key path setter for EnvironmentValues.locale : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(char *))
{
  v8 = a5(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  v16 = *(v9 + 16);
  v16(&v19 - v14, a1, v8, v13);
  (v16)(v11, v15, v8);
  a6(v11);
  v17 = *(v9 + 8);
  v17(v11, v8);
  return (v17)(v15, v8);
}

void (*EnvironmentValues.timeZone.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for TimeZone();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v5[7] = swift_coroFrameAlloc();
    v5[8] = swift_coroFrameAlloc();
    v5[9] = swift_coroFrameAlloc();
    v5[10] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v5[7] = malloc(v8);
    v5[8] = malloc(v8);
    v5[9] = malloc(v8);
    v5[10] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = v9;
  v5[11] = v9;
  v11 = *v1;
  v5[12] = *v1;
  v12 = *(v1 + 8);
  v5[13] = v12;
  if (v12)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA08TimeZoneI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v11, v10);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA08TimeZoneF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v11, v9);
  }

  v5[14] = 0;
  return EnvironmentValues.timeZone.modify;
}

void EnvironmentValues.calendar.modify(uint64_t a1, char a2, void (*a3)(uint64_t, void *, void *, __n128), void (*a4)(void, void))
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(v6 + 16);
  v29 = *(*a1 + 104);
  v8 = *(*a1 + 88);
  if (a2)
  {
    v10 = v5[7];
    v9 = v5[8];
    v11 = v5[6];
    v12 = v5[4];
    v26 = v5[3];
    v7(v9, v8, v12);
    v7(v10, v9, v12);
    v7(v11, v10, v12);
    swift_retain_n();
    v13 = v11;
    (a3)(v26, v11, v5 + 1);

    v14 = *(v6 + 8);
    v14(v13, v12);
    if (v29)
    {
      a4(v5[12], *v5[3]);
    }

    v16 = v5[10];
    v15 = v5[11];
    v17 = v5[8];
    v30 = v5[9];
    v19 = v5[6];
    v18 = v5[7];
    v20 = v5[4];

    v14(v18, v20);
    v21 = v17;
  }

  else
  {
    v23 = v5[9];
    v22 = v5[10];
    v24 = v5[3];
    v25 = v5[4];
    v7(v22, v8, v25);
    v7(v23, v22, v25);
    swift_retain_n();
    (a3)(v24, v23, v5 + 2);

    v14 = *(v6 + 8);
    v14(v23, v25);
    if (v29)
    {
      a4(v5[12], *v5[3]);
    }

    v16 = v5[10];
    v15 = v5[11];
    v17 = v5[8];
    v30 = v5[9];
    v19 = v5[6];
    v18 = v5[7];
    v20 = v5[4];

    v21 = v16;
  }

  v14(v21, v20);
  v14(v15, v20);
  free(v15);
  free(v16);
  free(v30);
  free(v17);
  free(v18);
  free(v19);

  free(v5);
}

void (*EnvironmentValues.displayGamut.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayGamutI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 0;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.displayGamut.modify;
}

void EnvironmentValues.defaultRenderingMode.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void *, __n128), void (*a4)(void, void, __n128))
{
  v7 = *a1;
  v8 = *(*a1 + 40);
  swift_retain_n();
  if (a2)
  {
    v9 = v7[4];
    v10 = v7[2];
    v11 = v8;
    v12 = v7;
  }

  else
  {
    v9 = v7[4];
    v10 = v7[2];
    v12 = v7 + 1;
    v11 = v8;
  }

  (a3)(v10, v11, v12);

  if (v9)
  {
    (a4)(v7[3], *v7[2]);
  }

  free(v7);
}

void (*EnvironmentValues.horizontalSizeClass.modify(char **a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA032HorizontalUserInterfaceSizeClassI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, (v4 + 40));
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA032HorizontalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 2;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.horizontalSizeClass.modify;
}

uint64_t (*EnvironmentValues.realHorizontalSizeClass.modify(char **a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA032HorizontalUserInterfaceSizeClassI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, (v4 + 40));
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA032HorizontalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 2;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.realHorizontalSizeClass.modify;
}

void (*EnvironmentValues.verticalSizeClass.modify(char **a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA030VerticalUserInterfaceSizeClassI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, (v4 + 40));
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA030VerticalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 2;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.verticalSizeClass.modify;
}

uint64_t (*EnvironmentValues.realVerticalSizeClass.modify(char **a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *v1;
  *(v3 + 24) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 32) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA030VerticalUserInterfaceSizeClassI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5, (v4 + 40));
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA030VerticalUserInterfaceSizeClassS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(v5);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 2;
    }

    *(v4 + 40) = v8;
  }

  return EnvironmentValues.realVerticalSizeClass.modify;
}

void EnvironmentValues.imageScale.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void *, __n128), void (*a4)(void, void, __n128))
{
  v7 = *a1;
  v8 = *(*a1 + 40);
  swift_retain_n();
  if (a2)
  {
    v9 = v7[4];
    v10 = v7[2];
    v11 = v8;
    v12 = v7;
  }

  else
  {
    v9 = v7[4];
    v10 = v7[2];
    v12 = v7 + 1;
    v11 = v8;
  }

  (a3)(v10, v11, v12);

  if (v9)
  {
    (a4)(v7[3], *v7[2]);
  }

  free(v7);
}

double key path setter for EnvironmentValues.allowsVibrantBlending : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021AllowsVibrantBlendingF0VG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA021AllowsVibrantBlendingK0VG_Ttg5(v4, *a2);
  }

  return result;
}

double EnvironmentValues.allowsVibrantBlending.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021AllowsVibrantBlendingF0VG_Tt2g5(v2, a1 & 1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA021AllowsVibrantBlendingK0VG_Ttg5(v4, *v2);
  }

  return result;
}

void (*EnvironmentValues.allowsVibrantBlending.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021AllowsVibrantBlendingI0VG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA021AllowsVibrantBlendingS0VG_Tt0g5(v5);
    if (!v8)
    {
      v9 = 1;
      goto LABEL_9;
    }

    v7 = *(v8 + 72);
  }

  v9 = (v7 == 2) | v7;
LABEL_9:
  *(v4 + 40) = v9 & 1;
  return EnvironmentValues.allowsVibrantBlending.modify;
}

void EnvironmentValues.allowsVibrantBlending.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021AllowsVibrantBlendingF0VG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA021AllowsVibrantBlendingK0VG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

void (*EnvironmentValues.defaultKerning.modify(double **a1))(double **a1, uint64_t a2)
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
  *(v3 + 24) = v1;
  v5 = *v1;
  *(v3 + 32) = *v1;
  v6 = v1[1];
  *(v3 + 40) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014DefaultKerningI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014DefaultKerningF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v5);
  }

  v4[6] = 0.0;
  *v4 = v7;
  return EnvironmentValues.defaultKerning.modify;
}

void (*EnvironmentValues.defaultTracking.modify(double **a1))(double **a1, uint64_t a2)
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
  *(v3 + 24) = v1;
  v5 = *v1;
  *(v3 + 32) = *v1;
  v6 = v1[1];
  *(v3 + 40) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DefaultTrackingI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA015DefaultTrackingF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v5);
  }

  v4[6] = 0.0;
  *v4 = v7;
  return EnvironmentValues.defaultTracking.modify;
}

void (*EnvironmentValues.defaultBaselineOffset.modify(double **a1))(double **a1, uint64_t a2)
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
  *(v3 + 24) = v1;
  v5 = *v1;
  *(v3 + 32) = *v1;
  v6 = v1[1];
  *(v3 + 40) = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021DefaultBaselineOffsetI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021DefaultBaselineOffsetF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v5);
  }

  v4[6] = 0.0;
  *v4 = v7;
  return EnvironmentValues.defaultBaselineOffset.modify;
}

void EnvironmentValues.defaultKerning.modify(double **a1, char a2, void (*a3)(void, void *, double), void (*a4)(void, void, __n128))
{
  v7 = *a1;
  v8 = **a1;
  swift_retain_n();
  v9 = *(v7 + 5);
  if (a2)
  {
    v10 = v7 + 1;
  }

  else
  {
    v10 = v7 + 2;
  }

  a3(*(v7 + 3), v10, v8);

  if (v9)
  {
    (a4)(*(v7 + 4), **(v7 + 3));
  }

  free(v7);
}

uint64_t one-time initialization function for horizontalSizeClass()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.horizontalSizeClass = result;
  return result;
}

uint64_t one-time initialization function for verticalSizeClass()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.verticalSizeClass = result;
  return result;
}

uint64_t one-time initialization function for isContainedInPlatter()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.isContainedInPlatter = result;
  return result;
}

uint64_t _GraphInputs.verticalSizeClass.getter(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v8 = a2;
    swift_once();
    a2 = v8;
  }

  v5 = *a2;
  swift_beginAccess();
  v6 = specialized CachedEnvironment.attribute<A>(id:_:)(v5, a3, 0);
  swift_endAccess();
  return v6;
}

double specialized implicit closure #1 in _GraphInputs.horizontalSizeClass.getter@<D0>(uint64_t *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, char *a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v11[0] = v8;
  v11[1] = v7;

  key path getter for EnvironmentValues.legibilityWeight : EnvironmentValues(v11, a2, a3, a4, v9, 0);

  return result;
}

uint64_t one-time initialization function for defaultValue(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4();
}

uint64_t protocol witness for static EnvironmentKey.defaultValue.getter in conformance LocaleKey@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

SwiftUI::CodableDisplayGamut::CodingKind_optional __swiftcall CodableDisplayGamut.CodingKind.init(rawValue:)(SwiftUI::CodableDisplayGamut::CodingKind_optional rawValue)
{
  if (rawValue.value == SwiftUI_CodableDisplayGamut_CodingKind_displayP3)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue.value == SwiftUI_CodableDisplayGamut_CodingKind_sRGB)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t CodableDisplayGamut.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v5 = v2;
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  lazy protocol witness table accessor for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind();
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t CodableDisplayGamut.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    lazy protocol witness table accessor for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    __swift_destroy_boxed_opaque_existential_1(v7);
    *a2 = v6;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double EnvironmentValues.readableWidth.getter()
{
  v1 = *v0;
  if (v0[1])
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesVAAE013ReadableWidthJ033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v1);
  }

  else
  {
    v4[0] = *v0;
    v4[1] = 0;

    v2 = specialized static EnvironmentValues.ReadableWidthKey.value(in:)(v4);
  }

  return v2;
}

unint64_t one-time initialization function for cache()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI15DynamicTypeSizeO_12CoreGraphics7CGFloatVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  static EnvironmentValues.ReadableWidthKey.cache = 0;
  qword_1EAB0BE60 = result;
  return result;
}

void _s7SwiftUI17EnvironmentValuesVAAE16ReadableWidthKey33_1B17C64D9E901A0054B49B69A4A2439DLLV5value2in12CoreGraphics7CGFloatVAC_tFZAKSgSDyAA15DynamicTypeSizeOAKGzYuYTXEfU_(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a3)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(a2, &v14);
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(a2);
    if (v7)
    {
      v8 = *(v7 + 72);
    }

    else
    {
      v8 = 3;
    }

    v14 = v8;
  }

  v9 = *a1;
  if (*(*a1 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(), (v11 & 1) != 0))
  {
    v12 = 0;
    v13 = *(*(v9 + 56) + 8 * v10);
  }

  else
  {
    v13 = 0;
    v12 = 1;
  }

  *a4 = v13;
  *(a4 + 8) = v12;
}

uint64_t EnvironmentValues.isInTouchBar.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  if (!v2[1])
  {
    return a2(v3) & 1;
  }

  v5 = a1(v3);

  return v5 & 1;
}

void key path getter for EnvironmentValues.isInTouchBar : EnvironmentValues(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X3>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t (*)(uint64_t))@<X4>, _BYTE *a4@<X8>, uint64_t a5@<X1>, uint64_t a6@<X2>)
{
  v7 = *a1;
  if (a1[1])
  {

    v9 = a2(v7);
  }

  else
  {
    v9 = a3(*a1, a5, a6, a2);
  }

  *a4 = v9 & 1;
}

double key path setter for EnvironmentValues.isInTouchBar : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t, uint64_t *), void (*a6)(uint64_t, uint64_t))
{
  v9 = *a1;
  v10 = *a2;
  swift_retain_n();
  a5(a2, v9, &v12);

  if (a2[1])
  {
    a6(v10, *a2);
  }

  return result;
}

void (*EnvironmentValues.isLowPowerModeEnabled.modify(void *a1))(uint64_t a1, uint64_t a2)
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
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    IsLowPowerModeEnabledI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021IsLowPowerModeEnabledI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v5);
  }

  else
  {
    IsLowPowerModeEnabledI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021IsLowPowerModeEnabledF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = IsLowPowerModeEnabledI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5 & 1;
  return EnvironmentValues.isLowPowerModeEnabled.modify;
}

void EnvironmentValues.isInTouchBar.modify(uint64_t a1, char a2, void (*a3)(uint64_t, uint64_t, void *, __n128), void (*a4)(void, void, __n128))
{
  v7 = *a1;
  v8 = *(*a1 + 48);
  swift_retain_n();
  if (a2)
  {
    v9 = v7[4];
    v10 = v7[2];
    v11 = v8;
    v12 = v7;
  }

  else
  {
    v9 = v7[4];
    v10 = v7[2];
    v12 = v7 + 1;
    v11 = v8;
  }

  (a3)(v10, v11, v12);

  if (v9)
  {
    (a4)(v7[3], *v7[2]);
  }

  free(v7);
}

void lazy protocol witness table accessor for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind()
{
  if (!lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableDisplayGamut.CodingKind, &type metadata for CodableDisplayGamut.CodingKind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableDisplayGamut.CodingKind, &type metadata for CodableDisplayGamut.CodingKind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableDisplayGamut.CodingKind, &type metadata for CodableDisplayGamut.CodingKind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind);
  }
}

{
  if (!lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind)
  {
    swift_getWitnessTable(protocol conformance descriptor for CodableDisplayGamut.CodingKind, &type metadata for CodableDisplayGamut.CodingKind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type CodableDisplayGamut.CodingKind and conformance CodableDisplayGamut.CodingKind);
  }
}

double specialized static EnvironmentValues.ReadableWidthKey.value(in:)(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static EnvironmentValues.ReadableWidthKey.cache);
  _s7SwiftUI17EnvironmentValuesVAAE16ReadableWidthKey33_1B17C64D9E901A0054B49B69A4A2439DLLV5value2in12CoreGraphics7CGFloatVAC_tFZAKSgSDyAA15DynamicTypeSizeOAKGzYuYTXEfU_(&qword_1EAB0BE60, v2, v1, v35);
  os_unfair_lock_unlock(&static EnvironmentValues.ReadableWidthKey.cache);
  if ((BYTE8(v35[0]) & 1) == 0)
  {
    return *v35;
  }

  if (one-time initialization token for body != -1)
  {
    swift_once();
  }

  v3 = static Font.body;
  if (v1)
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5(v2, &v32);
  }

  else
  {
    v35[0] = v2;

    static EnvironmentValues.FontContextKey.value(in:)(v35, &v32);
  }

  v26[0] = v32;
  v26[1] = v33;
  v26[2] = v34;
  outlined init with copy of Font.Context(v26, v35);

  v27[0] = v32;
  v27[1] = v33;
  v5 = MEMORY[0x1E69E7CC0];
  *&v28 = v34;
  *(&v28 + 1) = MEMORY[0x1E69E7CC0];
  v35[1] = v32;
  v35[2] = v33;
  v35[3] = v28;
  *&v35[0] = v3;
  *(&v35[0] + 1) = MEMORY[0x1E69E7CC0];

  outlined init with copy of Font.Context(v27, v29);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  specialized ObjectCache.subscript.getter(v35);
  v7 = v6;
  outlined destroy of Font.FontCache.Key(v35);
  v29[0] = v32;
  v29[1] = v33;
  v30 = v34;
  v31 = v5;
  outlined destroy of Font.Context(v29);
  outlined destroy of Font.Context(v26);
  v8._countAndFlagsBits = 77;
  v8._object = 0xE100000000000000;
  v9 = String.init(repeating:count:)(v8, 62);
  type metadata accessor for _ContiguousArrayStorage<(NSAttributedStringKey, Any)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(NSAttributedStringKey, Any)>, type metadata accessor for (NSAttributedStringKey, Any), MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDA6EB0;
  v11 = *MEMORY[0x1E69DB648];
  *(inited + 32) = *MEMORY[0x1E69DB648];
  type metadata accessor for CTFontRef(0);
  *(inited + 64) = v12;
  *(inited + 40) = v7;
  v13 = v11;
  v14 = v7;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (NSAttributedStringKey, Any)(inited + 32);
  v15 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
  v16 = MEMORY[0x193ABEC20](v9._countAndFlagsBits, v9._object);

  type metadata accessor for NSAttributedStringKey(0);
  lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = [v15 initWithString:v16 attributes:isa];

  v19 = CTLineCreateWithAttributedString(v18);
  v4 = ceil(CTLineGetTypographicBounds(v19, 0, 0, 0) * 0.125) * 8.0;
  os_unfair_lock_lock(&static EnvironmentValues.ReadableWidthKey.cache);
  if (v1)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA015DynamicTypeSizeI033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt1g5(v2, &v25);

    v20 = v25;
  }

  else
  {
    v21 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA015DynamicTypeSizeS033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt0g5(v2);
    if (v21)
    {
      v20 = *(v21 + 72);
    }

    else
    {
      v20 = 3;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v24 = qword_1EAB0BE60;
  qword_1EAB0BE60 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v20, isUniquelyReferenced_nonNull_native, v4);
  qword_1EAB0BE60 = v24;

  os_unfair_lock_unlock(&static EnvironmentValues.ReadableWidthKey.cache);

  return v4;
}

void lazy protocol witness table accessor for type Image.TemplateRenderingMode and conformance Image.TemplateRenderingMode()
{
  if (!lazy protocol witness table cache variable for type Image.TemplateRenderingMode and conformance Image.TemplateRenderingMode)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.TemplateRenderingMode, &type metadata for Image.TemplateRenderingMode, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.TemplateRenderingMode and conformance Image.TemplateRenderingMode);
  }
}

void lazy protocol witness table accessor for type Image.Scale and conformance Image.Scale()
{
  if (!lazy protocol witness table cache variable for type Image.Scale and conformance Image.Scale)
  {
    swift_getWitnessTable(protocol conformance descriptor for Image.Scale, &type metadata for Image.Scale, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Image.Scale and conformance Image.Scale);
  }
}

void lazy protocol witness table accessor for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass()
{
  if (!lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass)
  {
    swift_getWitnessTable(protocol conformance descriptor for UserInterfaceSizeClass, &type metadata for UserInterfaceSizeClass, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type UserInterfaceSizeClass and conformance UserInterfaceSizeClass);
  }
}

void lazy protocol witness table accessor for type DisplayGamut and conformance DisplayGamut()
{
  if (!lazy protocol witness table cache variable for type DisplayGamut and conformance DisplayGamut)
  {
    swift_getWitnessTable(protocol conformance descriptor for DisplayGamut, &type metadata for DisplayGamut, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DisplayGamut and conformance DisplayGamut);
  }
}

void lazy protocol witness table accessor for type ControlActiveState and conformance ControlActiveState()
{
  if (!lazy protocol witness table cache variable for type ControlActiveState and conformance ControlActiveState)
  {
    swift_getWitnessTable(protocol conformance descriptor for ControlActiveState, &type metadata for ControlActiveState, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ControlActiveState and conformance ControlActiveState);
  }
}

void lazy protocol witness table accessor for type [ControlActiveState] and conformance [A]()
{
  if (!lazy protocol witness table cache variable for type [ControlActiveState] and conformance [A])
  {
    type metadata accessor for [ControlActiveState](255, &lazy cache variable for type metadata for [ControlActiveState], &type metadata for ControlActiveState, MEMORY[0x1E69E62F8]);
    swift_getWitnessTable(MEMORY[0x1E69E6340], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type [ControlActiveState] and conformance [A]);
  }
}

void lazy protocol witness table accessor for type LegibilityWeight and conformance LegibilityWeight()
{
  if (!lazy protocol witness table cache variable for type LegibilityWeight and conformance LegibilityWeight)
  {
    swift_getWitnessTable(protocol conformance descriptor for LegibilityWeight, &type metadata for LegibilityWeight, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type LegibilityWeight and conformance LegibilityWeight);
  }
}

void instantiation function for generic protocol witness table for CodableDisplayGamut(uint64_t a1)
{
  lazy protocol witness table accessor for type CodableDisplayGamut and conformance CodableDisplayGamut();
  *(a1 + 8) = v2;
  lazy protocol witness table accessor for type CodableDisplayGamut and conformance CodableDisplayGamut();
  *(a1 + 16) = v3;
}

double get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA5ImageV5ScaleOGGAaBHPxAaBHD1__AkA0cI0HPyHCHCTm(uint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for [ControlActiveState](255, a2, a3, type metadata accessor for _EnvironmentKeyWritingModifier);
  v7 = type metadata accessor for ModifiedContent(255, v3, v5, v6);
  v9[0] = v4;
  v9[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v9);
}

void type metadata accessor for [ControlActiveState](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t outlined destroy of (NSAttributedStringKey, Any)(uint64_t a1)
{
  type metadata accessor for (NSAttributedStringKey, Any)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for AnyStaticFontModifier<Font.ItalicModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for AnyStaticFontModifier(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t static PlatformItemsDefinition.for (system:)(_BYTE *a1)
{
  if (*a1 == 1)
  {
    v1 = &static PlatformItemsDefinition.appKit;
  }

  else
  {
    v1 = &static PlatformItemsDefinition.uiKit;
  }

  swift_beginAccess();
  return *v1;
}

uint64_t PlatformItemsDefinition.MakePlatformImage.image.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v3 = v1[7];
  v25 = v1[8];
  v26 = v2;
  v4 = v1[9];
  v27[0] = v1[10];
  *(v27 + 11) = *(v1 + 171);
  v5 = v1[5];
  v7 = v1[3];
  v21 = v1[4];
  v6 = v21;
  v22 = v5;
  v8 = v1[5];
  v9 = v1[7];
  v23 = v1[6];
  v10 = v23;
  v24 = v9;
  v11 = v1[1];
  v18[0] = *v1;
  v18[1] = v11;
  v12 = v1[3];
  v14 = *v1;
  v13 = v1[1];
  v19 = v1[2];
  v15 = v19;
  v20 = v12;
  a1[8] = v25;
  a1[9] = v4;
  a1[10] = v1[10];
  *(a1 + 171) = *(v1 + 171);
  a1[4] = v6;
  a1[5] = v8;
  a1[6] = v10;
  a1[7] = v3;
  *a1 = v14;
  a1[1] = v13;
  a1[2] = v15;
  a1[3] = v7;
  return outlined init with copy of Image.Resolved(v18, &v17);
}

__n128 PlatformItemsDefinition.MakePlatformImage.image.setter(uint64_t a1)
{
  v3 = v1[9];
  v14[8] = v1[8];
  v14[9] = v3;
  v15[0] = v1[10];
  *(v15 + 11) = *(v1 + 171);
  v4 = v1[5];
  v14[4] = v1[4];
  v14[5] = v4;
  v5 = v1[7];
  v14[6] = v1[6];
  v14[7] = v5;
  v6 = v1[1];
  v14[0] = *v1;
  v14[1] = v6;
  v7 = v1[3];
  v14[2] = v1[2];
  v14[3] = v7;
  outlined destroy of Image.Resolved(v14);
  v8 = *(a1 + 144);
  v1[8] = *(a1 + 128);
  v1[9] = v8;
  v1[10] = *(a1 + 160);
  *(v1 + 171) = *(a1 + 171);
  v9 = *(a1 + 80);
  v1[4] = *(a1 + 64);
  v1[5] = v9;
  v10 = *(a1 + 112);
  v1[6] = *(a1 + 96);
  v1[7] = v10;
  v11 = *(a1 + 16);
  *v1 = *a1;
  v1[1] = v11;
  result = *(a1 + 32);
  v13 = *(a1 + 48);
  v1[2] = result;
  v1[3] = v13;
  return result;
}

uint64_t PlatformItemsDefinition.MakePlatformImage.content.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[23];
  v3 = v1[25];
  v35 = v1[24];
  v36 = v3;
  v4 = v1[25];
  v37 = v1[26];
  v5 = v1[19];
  v6 = v1[21];
  v31 = v1[20];
  v7 = v31;
  v32 = v6;
  v8 = v1[21];
  v9 = v1[23];
  v33 = v1[22];
  v10 = v33;
  v34 = v9;
  v11 = v1[15];
  v12 = v1[17];
  v27 = v1[16];
  v13 = v27;
  v28 = v12;
  v14 = v1[17];
  v15 = v1[19];
  v29 = v1[18];
  v16 = v29;
  v30 = v15;
  v17 = v1[13];
  v24[0] = v1[12];
  v24[1] = v17;
  v18 = v1[15];
  v20 = v1[12];
  v19 = v1[13];
  v25 = v1[14];
  v21 = v25;
  v26 = v18;
  a1[12] = v35;
  a1[13] = v4;
  a1[14] = v1[26];
  a1[8] = v7;
  a1[9] = v8;
  a1[10] = v10;
  a1[11] = v2;
  a1[4] = v13;
  a1[5] = v14;
  a1[6] = v16;
  a1[7] = v5;
  *a1 = v20;
  a1[1] = v19;
  a1[2] = v21;
  a1[3] = v11;
  return outlined init with copy of PlatformItem.PrimaryContent?(v24, &v23);
}

__n128 PlatformItemsDefinition.MakePlatformImage.content.setter(uint64_t a1)
{
  v3 = v1[25];
  v17[12] = v1[24];
  v17[13] = v3;
  v17[14] = v1[26];
  v4 = v1[21];
  v17[8] = v1[20];
  v17[9] = v4;
  v5 = v1[23];
  v17[10] = v1[22];
  v17[11] = v5;
  v6 = v1[17];
  v17[4] = v1[16];
  v17[5] = v6;
  v7 = v1[19];
  v17[6] = v1[18];
  v17[7] = v7;
  v8 = v1[13];
  v17[0] = v1[12];
  v17[1] = v8;
  v9 = v1[15];
  v17[2] = v1[14];
  v17[3] = v9;
  outlined destroy of PlatformItem.PrimaryContent?(v17);
  v10 = *(a1 + 208);
  v1[24] = *(a1 + 192);
  v1[25] = v10;
  v1[26] = *(a1 + 224);
  v11 = *(a1 + 144);
  v1[20] = *(a1 + 128);
  v1[21] = v11;
  v12 = *(a1 + 176);
  v1[22] = *(a1 + 160);
  v1[23] = v12;
  v13 = *(a1 + 80);
  v1[16] = *(a1 + 64);
  v1[17] = v13;
  v14 = *(a1 + 112);
  v1[18] = *(a1 + 96);
  v1[19] = v14;
  v15 = *(a1 + 16);
  v1[12] = *a1;
  v1[13] = v15;
  result = *(a1 + 48);
  v1[14] = *(a1 + 32);
  v1[15] = result;
  return result;
}

void static PlatformItemsDefinition.setDefinition(_:system:)(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v3 = &static PlatformItemsDefinition.appKit;
  }

  else
  {
    if (*a2)
    {
      return;
    }

    v3 = &static PlatformItemsDefinition.uiKit;
  }

  swift_beginAccess();
  if (!*v3)
  {
    *v3 = a1;
  }
}

uint64_t outlined init with copy of PlatformItem.PrimaryContent?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PlatformItem.PrimaryContent?();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double destroy for PlatformItemsDefinition.CombineAccessibilityProperties(void *a1)
{

  v2 = a1[11];
  if (v2)
  {
    if (v2 == 1)
    {
      goto LABEL_5;
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 8);
  }

LABEL_5:
  if (a1[30] != 1)
  {
  }

  v3 = a1[47];
  if (v3)
  {
    if (v3 == 1)
    {
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 44);
  }

LABEL_11:
  if (a1[66] != 1)
  {
  }

  v4 = a1[83];
  if (v4)
  {
    if (v4 == 1)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1(a1 + 80);
  }

LABEL_17:
  if (a1[102] != 1)
  {
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItemsDefinition.CombineAccessibilityProperties(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 88);

  if (v5)
  {
    if (v5 == 1)
    {
      v6 = *(a2 + 80);
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 80) = v6;
      *(a1 + 96) = *(a2 + 96);
      goto LABEL_7;
    }

    v8 = *(a2 + 96);
    *(a1 + 88) = v5;
    *(a1 + 96) = v8;
    (**(v5 - 8))(a1 + 64, a2 + 64, v5);
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
  }

  *(a1 + 104) = *(a2 + 104);

LABEL_7:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  v9 = *(a2 + 240);
  if (v9 == 1)
  {
    v10 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v10;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v11 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v11;
    v12 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v12;
    v13 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v13;
  }

  else
  {
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    v14 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v14;
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = v9;
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 272) = *(a2 + 272);
  }

  v15 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v15;
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 328) = *(a2 + 328);
  v16 = *(a2 + 376);

  if (v16)
  {
    if (v16 == 1)
    {
      v17 = *(a2 + 368);
      *(a1 + 352) = *(a2 + 352);
      *(a1 + 368) = v17;
      *(a1 + 384) = *(a2 + 384);
      goto LABEL_16;
    }

    v19 = *(a2 + 384);
    *(a1 + 376) = v16;
    *(a1 + 384) = v19;
    (**(v16 - 8))(a1 + 352, a2 + 352, v16);
  }

  else
  {
    v18 = *(a2 + 368);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 368) = v18;
    *(a1 + 384) = *(a2 + 384);
  }

  *(a1 + 392) = *(a2 + 392);

LABEL_16:
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);
  v20 = *(a2 + 528);
  if (v20 == 1)
  {
    v21 = *(a2 + 528);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 528) = v21;
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 560) = *(a2 + 560);
    v22 = *(a2 + 464);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 464) = v22;
    v23 = *(a2 + 496);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 496) = v23;
    v24 = *(a2 + 432);
    *(a1 + 416) = *(a2 + 416);
    *(a1 + 432) = v24;
  }

  else
  {
    *(a1 + 416) = *(a2 + 416);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 432) = *(a2 + 432);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 441) = *(a2 + 441);
    *(a1 + 443) = *(a2 + 443);
    *(a1 + 444) = *(a2 + 444);
    v25 = *(a2 + 464);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 464) = v25;
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 496) = *(a2 + 496);
    v26 = *(a2 + 512);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 512) = v26;
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 528) = v20;
    *(a1 + 536) = *(a2 + 536);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 560) = *(a2 + 560);
  }

  *(a1 + 568) = *(a2 + 568);
  *(a1 + 576) = *(a2 + 576);
  *(a1 + 584) = *(a2 + 584);
  *(a1 + 592) = *(a2 + 592);
  *(a1 + 600) = *(a2 + 600);
  *(a1 + 608) = *(a2 + 608);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 616) = *(a2 + 616);
  v27 = (a1 + 640);
  v28 = (a2 + 640);
  v29 = *(a2 + 664);

  if (v29)
  {
    if (v29 == 1)
    {
      v30 = *(a2 + 656);
      *v27 = *v28;
      *(a1 + 656) = v30;
      *(a1 + 672) = *(a2 + 672);
      goto LABEL_25;
    }

    *(a1 + 664) = v29;
    *(a1 + 672) = *(a2 + 672);
    (**(v29 - 8))(a1 + 640, a2 + 640, v29);
  }

  else
  {
    v31 = *(a2 + 656);
    *v27 = *v28;
    *(a1 + 656) = v31;
    *(a1 + 672) = *(a2 + 672);
  }

  *(a1 + 680) = *(a2 + 680);

LABEL_25:
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 696) = *(a2 + 696);
  v32 = (a1 + 704);
  v33 = (a2 + 704);
  v34 = *(a2 + 816);
  if (v34 == 1)
  {
    v35 = *(a2 + 816);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 816) = v35;
    *(a1 + 832) = *(a2 + 832);
    *(a1 + 848) = *(a2 + 848);
    v36 = *(a2 + 752);
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 752) = v36;
    v37 = *(a2 + 784);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 784) = v37;
    v38 = *(a2 + 720);
    *v32 = *v33;
    *(a1 + 720) = v38;
  }

  else
  {
    *v32 = *v33;
    *(a1 + 712) = *(a2 + 712);
    *(a1 + 720) = *(a2 + 720);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 729) = *(a2 + 729);
    *(a1 + 731) = *(a2 + 731);
    *(a1 + 732) = *(a2 + 732);
    v39 = *(a2 + 752);
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 752) = v39;
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 784) = *(a2 + 784);
    *(a1 + 792) = *(a2 + 792);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 808) = *(a2 + 808);
    *(a1 + 816) = v34;
    *(a1 + 824) = *(a2 + 824);
    *(a1 + 840) = *(a2 + 840);
    *(a1 + 848) = *(a2 + 848);
  }

  *(a1 + 856) = *(a2 + 856);

  return a1;
}

uint64_t assignWithCopy for PlatformItemsDefinition.CombineAccessibilityProperties(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v4;
  v5 = *(a1 + 88);
  v6 = *(a2 + 88);
  if (v5 == 1)
  {
    if (v6)
    {
      if (v6 == 1)
      {
        v7 = *(a2 + 64);
        v8 = *(a2 + 96);
        *(a1 + 80) = *(a2 + 80);
        *(a1 + 96) = v8;
        *(a1 + 64) = v7;
        goto LABEL_18;
      }

      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v12 = *(a2 + 64);
      v13 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v12;
      *(a1 + 80) = v13;
    }

    *(a1 + 104) = *(a2 + 104);
  }

  else if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
    v10 = *(a2 + 80);
    v9 = *(a2 + 96);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v10;
    *(a1 + 96) = v9;
  }

  else
  {
    if (v5)
    {
      v11 = (a1 + 64);
      if (v6)
      {
        __swift_assign_boxed_opaque_existential_1(v11, (a2 + 64), v4);
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(v11);
        v14 = *(a2 + 96);
        v15 = *(a2 + 80);
        *(a1 + 64) = *(a2 + 64);
        *(a1 + 80) = v15;
        *(a1 + 96) = v14;
      }
    }

    else if (v6)
    {
      *(a1 + 88) = v6;
      *(a1 + 96) = *(a2 + 96);
      (**(v6 - 8))(a1 + 64, a2 + 64);
    }

    else
    {
      v16 = *(a2 + 64);
      v17 = *(a2 + 80);
      *(a1 + 96) = *(a2 + 96);
      *(a1 + 64) = v16;
      *(a1 + 80) = v17;
    }

    *(a1 + 104) = *(a2 + 104);
  }

LABEL_18:
  v18 = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 112) = v18;
  v19 = *(a2 + 240);
  if (*(a1 + 240) == 1)
  {
    if (v19 == 1)
    {
      v20 = *(a2 + 144);
      *(a1 + 128) = *(a2 + 128);
      *(a1 + 144) = v20;
      v21 = *(a2 + 160);
      v22 = *(a2 + 176);
      v23 = *(a2 + 208);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 208) = v23;
      *(a1 + 160) = v21;
      *(a1 + 176) = v22;
      v24 = *(a2 + 224);
      v25 = *(a2 + 240);
      v26 = *(a2 + 256);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 240) = v25;
      *(a1 + 256) = v26;
      *(a1 + 224) = v24;
    }

    else
    {
      v34 = *(a2 + 128);
      *(a1 + 136) = *(a2 + 136);
      *(a1 + 128) = v34;
      v35 = *(a2 + 144);
      *(a1 + 152) = *(a2 + 152);
      *(a1 + 144) = v35;
      *(a1 + 153) = *(a2 + 153);
      *(a1 + 154) = *(a2 + 154);
      *(a1 + 155) = *(a2 + 155);
      *(a1 + 156) = *(a2 + 156);
      *(a1 + 160) = *(a2 + 160);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 184) = *(a2 + 184);
      *(a1 + 192) = *(a2 + 192);
      *(a1 + 200) = *(a2 + 200);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 209) = *(a2 + 209);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 224) = *(a2 + 224);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      v36 = *(a2 + 248);
      *(a1 + 264) = *(a2 + 264);
      *(a1 + 248) = v36;
      *(a1 + 272) = *(a2 + 272);
    }
  }

  else if (v19 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
    v27 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v27;
    v28 = *(a2 + 208);
    v30 = *(a2 + 160);
    v29 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v28;
    *(a1 + 160) = v30;
    *(a1 + 176) = v29;
    v32 = *(a2 + 240);
    v31 = *(a2 + 256);
    v33 = *(a2 + 224);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 240) = v32;
    *(a1 + 256) = v31;
    *(a1 + 224) = v33;
  }

  else
  {
    v37 = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 128) = v37;
    v38 = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 144) = v38;
    *(a1 + 153) = *(a2 + 153);
    *(a1 + 154) = *(a2 + 154);
    *(a1 + 155) = *(a2 + 155);
    *(a1 + 156) = *(a2 + 156);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 208) = *(a2 + 208);
    *(a1 + 209) = *(a2 + 209);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 240) = *(a2 + 240);

    v39 = *(a2 + 248);
    *(a1 + 264) = *(a2 + 264);
    *(a1 + 248) = v39;
    *(a1 + 272) = *(a2 + 272);
  }

  *(a1 + 280) = *(a2 + 280);

  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = *(a2 + 296);

  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);

  *(a1 + 320) = *(a2 + 320);
  v40 = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 328) = v40;
  v41 = *(a1 + 376);
  v42 = *(a2 + 376);
  if (v41 == 1)
  {
    if (v42)
    {
      if (v42 == 1)
      {
        v43 = *(a2 + 352);
        v44 = *(a2 + 384);
        *(a1 + 368) = *(a2 + 368);
        *(a1 + 384) = v44;
        *(a1 + 352) = v43;
        goto LABEL_42;
      }

      *(a1 + 376) = v42;
      *(a1 + 384) = *(a2 + 384);
      (**(v42 - 8))(a1 + 352, a2 + 352);
    }

    else
    {
      v48 = *(a2 + 352);
      v49 = *(a2 + 368);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 352) = v48;
      *(a1 + 368) = v49;
    }

    *(a1 + 392) = *(a2 + 392);
  }

  else if (v42 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 352);
    v46 = *(a2 + 368);
    v45 = *(a2 + 384);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 368) = v46;
    *(a1 + 384) = v45;
  }

  else
  {
    if (v41)
    {
      v47 = (a1 + 352);
      if (v42)
      {
        __swift_assign_boxed_opaque_existential_1(v47, (a2 + 352), v40);
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(v47);
        v50 = *(a2 + 384);
        v51 = *(a2 + 368);
        *(a1 + 352) = *(a2 + 352);
        *(a1 + 368) = v51;
        *(a1 + 384) = v50;
      }
    }

    else if (v42)
    {
      *(a1 + 376) = v42;
      *(a1 + 384) = *(a2 + 384);
      (**(v42 - 8))(a1 + 352, a2 + 352);
    }

    else
    {
      v52 = *(a2 + 352);
      v53 = *(a2 + 368);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 352) = v52;
      *(a1 + 368) = v53;
    }

    *(a1 + 392) = *(a2 + 392);
  }

LABEL_42:
  v54 = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);
  *(a1 + 400) = v54;
  v55 = *(a2 + 528);
  if (*(a1 + 528) == 1)
  {
    if (v55 == 1)
    {
      v56 = *(a2 + 432);
      *(a1 + 416) = *(a2 + 416);
      *(a1 + 432) = v56;
      v57 = *(a2 + 448);
      v58 = *(a2 + 464);
      v59 = *(a2 + 496);
      *(a1 + 480) = *(a2 + 480);
      *(a1 + 496) = v59;
      *(a1 + 448) = v57;
      *(a1 + 464) = v58;
      v60 = *(a2 + 512);
      v61 = *(a2 + 528);
      v62 = *(a2 + 544);
      *(a1 + 560) = *(a2 + 560);
      *(a1 + 528) = v61;
      *(a1 + 544) = v62;
      *(a1 + 512) = v60;
    }

    else
    {
      v70 = *(a2 + 416);
      *(a1 + 424) = *(a2 + 424);
      *(a1 + 416) = v70;
      v71 = *(a2 + 432);
      *(a1 + 440) = *(a2 + 440);
      *(a1 + 432) = v71;
      *(a1 + 441) = *(a2 + 441);
      *(a1 + 442) = *(a2 + 442);
      *(a1 + 443) = *(a2 + 443);
      *(a1 + 444) = *(a2 + 444);
      *(a1 + 448) = *(a2 + 448);
      *(a1 + 456) = *(a2 + 456);
      *(a1 + 464) = *(a2 + 464);
      *(a1 + 472) = *(a2 + 472);
      *(a1 + 480) = *(a2 + 480);
      *(a1 + 488) = *(a2 + 488);
      *(a1 + 496) = *(a2 + 496);
      *(a1 + 497) = *(a2 + 497);
      *(a1 + 504) = *(a2 + 504);
      *(a1 + 512) = *(a2 + 512);
      *(a1 + 520) = *(a2 + 520);
      *(a1 + 528) = *(a2 + 528);
      v72 = *(a2 + 536);
      *(a1 + 552) = *(a2 + 552);
      *(a1 + 536) = v72;
      *(a1 + 560) = *(a2 + 560);
    }
  }

  else if (v55 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 416);
    v63 = *(a2 + 432);
    *(a1 + 416) = *(a2 + 416);
    *(a1 + 432) = v63;
    v64 = *(a2 + 496);
    v66 = *(a2 + 448);
    v65 = *(a2 + 464);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 496) = v64;
    *(a1 + 448) = v66;
    *(a1 + 464) = v65;
    v68 = *(a2 + 528);
    v67 = *(a2 + 544);
    v69 = *(a2 + 512);
    *(a1 + 560) = *(a2 + 560);
    *(a1 + 528) = v68;
    *(a1 + 544) = v67;
    *(a1 + 512) = v69;
  }

  else
  {
    v73 = *(a2 + 416);
    *(a1 + 424) = *(a2 + 424);
    *(a1 + 416) = v73;
    v74 = *(a2 + 432);
    *(a1 + 440) = *(a2 + 440);
    *(a1 + 432) = v74;
    *(a1 + 441) = *(a2 + 441);
    *(a1 + 442) = *(a2 + 442);
    *(a1 + 443) = *(a2 + 443);
    *(a1 + 444) = *(a2 + 444);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 456) = *(a2 + 456);
    *(a1 + 464) = *(a2 + 464);
    *(a1 + 472) = *(a2 + 472);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 488) = *(a2 + 488);
    *(a1 + 496) = *(a2 + 496);
    *(a1 + 497) = *(a2 + 497);
    *(a1 + 504) = *(a2 + 504);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 520) = *(a2 + 520);
    *(a1 + 528) = *(a2 + 528);

    v75 = *(a2 + 536);
    *(a1 + 552) = *(a2 + 552);
    *(a1 + 536) = v75;
    *(a1 + 560) = *(a2 + 560);
  }

  *(a1 + 568) = *(a2 + 568);

  *(a1 + 576) = *(a2 + 576);
  *(a1 + 584) = *(a2 + 584);

  *(a1 + 592) = *(a2 + 592);
  *(a1 + 600) = *(a2 + 600);

  *(a1 + 608) = *(a2 + 608);
  v76 = *(a2 + 616);
  *(a1 + 632) = *(a2 + 632);
  *(a1 + 616) = v76;
  v77 = (a1 + 640);
  v78 = (a2 + 640);
  v79 = *(a1 + 664);
  v80 = *(a2 + 664);
  if (v79 == 1)
  {
    if (v80)
    {
      if (v80 == 1)
      {
        v81 = *v78;
        v82 = *(a2 + 672);
        *(a1 + 656) = *(a2 + 656);
        *(a1 + 672) = v82;
        *v77 = v81;
        goto LABEL_66;
      }

      *(a1 + 664) = v80;
      *(a1 + 672) = *(a2 + 672);
      (**(v80 - 8))(a1 + 640, a2 + 640);
    }

    else
    {
      v85 = *v78;
      v86 = *(a2 + 656);
      *(a1 + 672) = *(a2 + 672);
      *v77 = v85;
      *(a1 + 656) = v86;
    }

    *(a1 + 680) = *(a2 + 680);
  }

  else if (v80 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 640);
    v84 = *(a2 + 656);
    v83 = *(a2 + 672);
    *v77 = *v78;
    *(a1 + 656) = v84;
    *(a1 + 672) = v83;
  }

  else
  {
    if (v79)
    {
      if (v80)
      {
        __swift_assign_boxed_opaque_existential_1((a1 + 640), (a2 + 640), v76);
      }

      else
      {
        outlined destroy of AnyAccessibilityValue(a1 + 640);
        v87 = *(a2 + 672);
        v88 = *(a2 + 656);
        *v77 = *v78;
        *(a1 + 656) = v88;
        *(a1 + 672) = v87;
      }
    }

    else if (v80)
    {
      *(a1 + 664) = v80;
      *(a1 + 672) = *(a2 + 672);
      (**(v80 - 8))(a1 + 640, a2 + 640);
    }

    else
    {
      v89 = *v78;
      v90 = *(a2 + 656);
      *(a1 + 672) = *(a2 + 672);
      *v77 = v89;
      *(a1 + 656) = v90;
    }

    *(a1 + 680) = *(a2 + 680);
  }

LABEL_66:
  v91 = *(a2 + 688);
  *(a1 + 696) = *(a2 + 696);
  *(a1 + 688) = v91;
  v92 = (a1 + 704);
  v93 = (a2 + 704);
  v94 = *(a2 + 816);
  if (*(a1 + 816) == 1)
  {
    if (v94 == 1)
    {
      v95 = *(a2 + 720);
      *v92 = *v93;
      *(a1 + 720) = v95;
      v96 = *(a2 + 736);
      v97 = *(a2 + 752);
      v98 = *(a2 + 784);
      *(a1 + 768) = *(a2 + 768);
      *(a1 + 784) = v98;
      *(a1 + 736) = v96;
      *(a1 + 752) = v97;
      v99 = *(a2 + 800);
      v100 = *(a2 + 816);
      v101 = *(a2 + 832);
      *(a1 + 848) = *(a2 + 848);
      *(a1 + 816) = v100;
      *(a1 + 832) = v101;
      *(a1 + 800) = v99;
    }

    else
    {
      v109 = *v93;
      *(a1 + 712) = *(a2 + 712);
      *v92 = v109;
      v110 = *(a2 + 720);
      *(a1 + 728) = *(a2 + 728);
      *(a1 + 720) = v110;
      *(a1 + 729) = *(a2 + 729);
      *(a1 + 730) = *(a2 + 730);
      *(a1 + 731) = *(a2 + 731);
      *(a1 + 732) = *(a2 + 732);
      *(a1 + 736) = *(a2 + 736);
      *(a1 + 744) = *(a2 + 744);
      *(a1 + 752) = *(a2 + 752);
      *(a1 + 760) = *(a2 + 760);
      *(a1 + 768) = *(a2 + 768);
      *(a1 + 776) = *(a2 + 776);
      *(a1 + 784) = *(a2 + 784);
      *(a1 + 785) = *(a2 + 785);
      *(a1 + 792) = *(a2 + 792);
      *(a1 + 800) = *(a2 + 800);
      *(a1 + 808) = *(a2 + 808);
      *(a1 + 816) = *(a2 + 816);
      v111 = *(a2 + 824);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 824) = v111;
      *(a1 + 848) = *(a2 + 848);
    }
  }

  else if (v94 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 704);
    v102 = *(a2 + 720);
    *v92 = *v93;
    *(a1 + 720) = v102;
    v103 = *(a2 + 784);
    v105 = *(a2 + 736);
    v104 = *(a2 + 752);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 784) = v103;
    *(a1 + 736) = v105;
    *(a1 + 752) = v104;
    v107 = *(a2 + 816);
    v106 = *(a2 + 832);
    v108 = *(a2 + 800);
    *(a1 + 848) = *(a2 + 848);
    *(a1 + 816) = v107;
    *(a1 + 832) = v106;
    *(a1 + 800) = v108;
  }

  else
  {
    v112 = *v93;
    *(a1 + 712) = *(a2 + 712);
    *v92 = v112;
    v113 = *(a2 + 720);
    *(a1 + 728) = *(a2 + 728);
    *(a1 + 720) = v113;
    *(a1 + 729) = *(a2 + 729);
    *(a1 + 730) = *(a2 + 730);
    *(a1 + 731) = *(a2 + 731);
    *(a1 + 732) = *(a2 + 732);
    *(a1 + 736) = *(a2 + 736);
    *(a1 + 744) = *(a2 + 744);
    *(a1 + 752) = *(a2 + 752);
    *(a1 + 760) = *(a2 + 760);
    *(a1 + 768) = *(a2 + 768);
    *(a1 + 776) = *(a2 + 776);
    *(a1 + 784) = *(a2 + 784);
    *(a1 + 785) = *(a2 + 785);
    *(a1 + 792) = *(a2 + 792);
    *(a1 + 800) = *(a2 + 800);
    *(a1 + 808) = *(a2 + 808);
    *(a1 + 816) = *(a2 + 816);

    v114 = *(a2 + 824);
    *(a1 + 840) = *(a2 + 840);
    *(a1 + 824) = v114;
    *(a1 + 848) = *(a2 + 848);
  }

  *(a1 + 856) = *(a2 + 856);

  return a1;
}

uint64_t assignWithTake for PlatformItemsDefinition.CombineAccessibilityProperties(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a1 + 88);
  if (v5 == 1)
  {
    goto LABEL_4;
  }

  v6 = *(a2 + 88);
  if (v6 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 64);
LABEL_4:
    v7 = *(a2 + 80);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 80) = v7;
    *(a1 + 96) = *(a2 + 96);
    goto LABEL_10;
  }

  if (v5)
  {
    v8 = (a1 + 64);
    if (v6)
    {
      __swift_destroy_boxed_opaque_existential_1(v8);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v8);
    }
  }

  v9 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v9;
  v10 = *(a2 + 104);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 104) = v10;

LABEL_10:
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  if (*(a1 + 240) == 1)
  {
LABEL_13:
    v12 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v12;
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    v13 = *(a2 + 176);
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = v13;
    v14 = *(a2 + 208);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 208) = v14;
    v15 = *(a2 + 144);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 144) = v15;
    goto LABEL_15;
  }

  v11 = *(a2 + 240);
  if (v11 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 128);
    goto LABEL_13;
  }

  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 153) = *(a2 + 153);
  *(a1 + 155) = *(a2 + 155);
  *(a1 + 156) = *(a2 + 156);
  v16 = *(a2 + 176);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 176) = v16;
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 209) = *(a2 + 209);
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = v11;

  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
LABEL_15:
  *(a1 + 280) = *(a2 + 280);

  v17 = *(a2 + 296);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 296) = v17;

  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);

  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  v18 = *(a1 + 376);
  if (v18 == 1)
  {
LABEL_18:
    v20 = *(a2 + 368);
    *(a1 + 352) = *(a2 + 352);
    *(a1 + 368) = v20;
    *(a1 + 384) = *(a2 + 384);
    goto LABEL_24;
  }

  v19 = *(a2 + 376);
  if (v19 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 352);
    goto LABEL_18;
  }

  if (v18)
  {
    v21 = (a1 + 352);
    if (v19)
    {
      __swift_destroy_boxed_opaque_existential_1(v21);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v21);
    }
  }

  v22 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v22;
  v23 = *(a2 + 392);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 392) = v23;

LABEL_24:
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 408) = *(a2 + 408);
  if (*(a1 + 528) == 1)
  {
LABEL_27:
    v25 = *(a2 + 528);
    *(a1 + 512) = *(a2 + 512);
    *(a1 + 528) = v25;
    *(a1 + 544) = *(a2 + 544);
    *(a1 + 560) = *(a2 + 560);
    v26 = *(a2 + 464);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 464) = v26;
    v27 = *(a2 + 496);
    *(a1 + 480) = *(a2 + 480);
    *(a1 + 496) = v27;
    v28 = *(a2 + 432);
    *(a1 + 416) = *(a2 + 416);
    *(a1 + 432) = v28;
    goto LABEL_29;
  }

  v24 = *(a2 + 528);
  if (v24 == 1)
  {
    outlined destroy of AccessibilityTextLayoutProperties(a1 + 416);
    goto LABEL_27;
  }

  *(a1 + 416) = *(a2 + 416);
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a1 + 440) = *(a2 + 440);
  *(a1 + 441) = *(a2 + 441);
  *(a1 + 443) = *(a2 + 443);
  *(a1 + 444) = *(a2 + 444);
  v29 = *(a2 + 464);
  *(a1 + 448) = *(a2 + 448);
  *(a1 + 464) = v29;
  *(a1 + 480) = *(a2 + 480);
  *(a1 + 496) = *(a2 + 496);
  *(a1 + 497) = *(a2 + 497);
  *&v29 = *(a2 + 512);
  *(a1 + 504) = *(a2 + 504);
  *(a1 + 512) = v29;
  *(a1 + 520) = *(a2 + 520);
  *(a1 + 528) = v24;

  *(a1 + 536) = *(a2 + 536);
  *(a1 + 552) = *(a2 + 552);
  *(a1 + 560) = *(a2 + 560);
LABEL_29:
  *(a1 + 568) = *(a2 + 568);

  *(a1 + 576) = *(a2 + 576);
  *(a1 + 584) = *(a2 + 584);

  *(a1 + 592) = *(a2 + 592);
  *(a1 + 600) = *(a2 + 600);

  *(a1 + 608) = *(a2 + 608);
  *(a1 + 616) = *(a2 + 616);
  *(a1 + 632) = *(a2 + 632);
  v30 = (a1 + 640);
  v31 = (a2 + 640);
  v32 = *(a1 + 664);
  if (v32 == 1)
  {
LABEL_32:
    v34 = *(a2 + 656);
    *v30 = *v31;
    *(a1 + 656) = v34;
    *(a1 + 672) = *(a2 + 672);
    goto LABEL_38;
  }

  v33 = *(a2 + 664);
  if (v33 == 1)
  {
    outlined destroy of AccessibilityValueStorage(a1 + 640);
    goto LABEL_32;
  }

  if (v32)
  {
    v35 = (a1 + 640);
    if (v33)
    {
      __swift_destroy_boxed_opaque_existential_1(v35);
    }

    else
    {
      outlined destroy of AnyAccessibilityValue(v35);
    }
  }

  v36 = *(a2 + 656);
  *v30 = *v31;
  *(a1 + 656) = v36;
  *(a1 + 672) = *(a2 + 672);
  *(a1 + 680) = *(a2 + 680);

LABEL_38:
  *(a1 + 688) = *(a2 + 688);
  *(a1 + 696) = *(a2 + 696);
  v37 = (a1 + 704);
  v38 = (a2 + 704);
  if (*(a1 + 816) != 1)
  {
    v39 = *(a2 + 816);
    if (v39 != 1)
    {
      *v37 = *v38;
      *(a1 + 712) = *(a2 + 712);
      *(a1 + 720) = *(a2 + 720);
      *(a1 + 728) = *(a2 + 728);
      *(a1 + 729) = *(a2 + 729);
      *(a1 + 731) = *(a2 + 731);
      *(a1 + 732) = *(a2 + 732);
      v44 = *(a2 + 752);
      *(a1 + 736) = *(a2 + 736);
      *(a1 + 752) = v44;
      *(a1 + 768) = *(a2 + 768);
      *(a1 + 784) = *(a2 + 784);
      *(a1 + 785) = *(a2 + 785);
      *(a1 + 792) = *(a2 + 792);
      *(a1 + 800) = *(a2 + 800);
      *(a1 + 808) = *(a2 + 808);
      *(a1 + 816) = v39;

      *(a1 + 824) = *(a2 + 824);
      *(a1 + 840) = *(a2 + 840);
      *(a1 + 848) = *(a2 + 848);
      goto LABEL_43;
    }

    outlined destroy of AccessibilityTextLayoutProperties(a1 + 704);
  }

  v40 = *(a2 + 816);
  *(a1 + 800) = *(a2 + 800);
  *(a1 + 816) = v40;
  *(a1 + 832) = *(a2 + 832);
  *(a1 + 848) = *(a2 + 848);
  v41 = *(a2 + 752);
  *(a1 + 736) = *(a2 + 736);
  *(a1 + 752) = v41;
  v42 = *(a2 + 784);
  *(a1 + 768) = *(a2 + 768);
  *(a1 + 784) = v42;
  v43 = *(a2 + 720);
  *v37 = *v38;
  *(a1 + 720) = v43;
LABEL_43:
  *(a1 + 856) = *(a2 + 856);

  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItemsDefinition.CombineAccessibilityProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 864))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 280);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformItemsDefinition.CombineAccessibilityProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 856) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 864) = 1;
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
      *(result + 280) = (a2 - 1);
      return result;
    }

    *(result + 864) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double destroy for PlatformItemsDefinition.MakePlatformImage(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 != 255)
  {
    outlined consume of GraphicsImage.Contents(*a1, v2);
  }

  v3 = *(a1 + 128);
  if (v3 >> 1 != 0xFFFFFFFF)
  {
    outlined consume of AccessibilityImageLabel(*(a1 + 112), *(a1 + 120), v3, *(a1 + 136));
  }

  swift_unknownObjectRelease();

  v5 = *(a1 + 192);
  if (v5 != 1)
  {

    v6 = *(a1 + 344);
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFCLL)
    {
      v7 = *(a1 + 224);
      if (v7 != 255)
      {
        outlined consume of GraphicsImage.Contents(*(a1 + 216), v7);
      }

      if ((v6 & 0xFFFFFFFFFFFFFFFELL) != 0x1FFFFFFFELL)
      {
        outlined consume of AccessibilityImageLabel(*(a1 + 328), *(a1 + 336), v6, *(a1 + 352));
      }

      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t initializeWithCopy for PlatformItemsDefinition.MakePlatformImage(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  if (v4 == 255)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    *a1 = v5;
    *(a1 + 8) = v4;
  }

  *(a1 + 16) = a2[2];
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 104) = *(a2 + 52);
  *(a1 + 106) = *(a2 + 106);
  v6 = a2[16];
  *(a1 + 107) = *(a2 + 107);
  if (v6 >> 1 == 0xFFFFFFFF)
  {
    v7 = *(a2 + 8);
    *(a1 + 112) = *(a2 + 7);
    *(a1 + 128) = v7;
  }

  else
  {
    v8 = a2[14];
    v9 = a2[15];
    v10 = a2[17];
    outlined copy of AccessibilityImageLabel(v8, v9, v6, v10);
    *(a1 + 112) = v8;
    *(a1 + 120) = v9;
    *(a1 + 128) = v6;
    *(a1 + 136) = v10;
  }

  v11 = a2[24];
  v12 = a2[19];
  *(a1 + 144) = a2[18];
  *(a1 + 152) = v12;
  *(a1 + 160) = *(a2 + 80);
  *(a1 + 164) = *(a2 + 41);
  *(a1 + 168) = *(a2 + 168);
  v13 = a2[22];
  *(a1 + 176) = v13;
  *(a1 + 184) = *(a2 + 92);
  *(a1 + 186) = *(a2 + 186);
  swift_unknownObjectRetain();

  v14 = v13;
  if (v11 == 1)
  {
    v15 = *(a2 + 25);
    *(a1 + 384) = *(a2 + 24);
    *(a1 + 400) = v15;
    *(a1 + 416) = *(a2 + 26);
    v16 = *(a2 + 21);
    *(a1 + 320) = *(a2 + 20);
    *(a1 + 336) = v16;
    v17 = *(a2 + 23);
    *(a1 + 352) = *(a2 + 22);
    *(a1 + 368) = v17;
    v18 = *(a2 + 17);
    *(a1 + 256) = *(a2 + 16);
    *(a1 + 272) = v18;
    v19 = *(a2 + 19);
    *(a1 + 288) = *(a2 + 18);
    *(a1 + 304) = v19;
    v20 = *(a2 + 13);
    *(a1 + 192) = *(a2 + 12);
    *(a1 + 208) = v20;
    v21 = *(a2 + 15);
    *(a1 + 224) = *(a2 + 14);
    *(a1 + 240) = v21;
  }

  else
  {
    v22 = a2[25];
    v23 = a2[26];
    *(a1 + 192) = v11;
    *(a1 + 200) = v22;
    *(a1 + 208) = v23;
    v24 = (a1 + 216);
    v25 = a2 + 27;
    v26 = a2[43];
    v27 = v11;
    v28 = v22;
    v29 = v23;
    if (v26 >> 1 == 4294967294)
    {
      v30 = *(a2 + 45);
      *(a1 + 344) = *(a2 + 43);
      *(a1 + 360) = v30;
      *(a1 + 376) = *(a2 + 47);
      *(a1 + 387) = *(a2 + 387);
      v31 = *(a2 + 37);
      *(a1 + 280) = *(a2 + 35);
      *(a1 + 296) = v31;
      v32 = *(a2 + 41);
      *(a1 + 312) = *(a2 + 39);
      *(a1 + 328) = v32;
      v33 = *(a2 + 29);
      *v24 = *v25;
      *(a1 + 232) = v33;
      v34 = *(a2 + 33);
      *(a1 + 248) = *(a2 + 31);
      *(a1 + 264) = v34;
    }

    else
    {
      v35 = *(a2 + 224);
      if (v35 == 255)
      {
        *v24 = *v25;
        *(a1 + 224) = *(a2 + 224);
      }

      else
      {
        v36 = a2[27];
        outlined copy of GraphicsImage.Contents(v36, *(a2 + 224));
        *(a1 + 216) = v36;
        *(a1 + 224) = v35;
        v26 = a2[43];
      }

      *(a1 + 232) = a2[29];
      *(a1 + 240) = *(a2 + 15);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 260) = *(a2 + 260);
      *(a1 + 273) = *(a2 + 273);
      v37 = *(a2 + 19);
      *(a1 + 288) = *(a2 + 18);
      *(a1 + 304) = v37;
      *(a1 + 320) = *(a2 + 160);
      *(a1 + 322) = *(a2 + 322);
      *(a1 + 323) = *(a2 + 323);
      if (v26 >> 1 == 0xFFFFFFFF)
      {
        v38 = *(a2 + 43);
        *(a1 + 328) = *(a2 + 41);
        *(a1 + 344) = v38;
      }

      else
      {
        v39 = a2[41];
        v40 = a2[42];
        v41 = a2[44];
        outlined copy of AccessibilityImageLabel(v39, v40, v26, v41);
        *(a1 + 328) = v39;
        *(a1 + 336) = v40;
        *(a1 + 344) = v26;
        *(a1 + 352) = v41;
      }

      v42 = a2[46];
      *(a1 + 360) = a2[45];
      *(a1 + 368) = v42;
      *(a1 + 376) = *(a2 + 188);
      *(a1 + 380) = *(a2 + 95);
      *(a1 + 384) = *(a2 + 384);
      v43 = a2[49];
      *(a1 + 392) = v43;
      *(a1 + 400) = *(a2 + 200);
      *(a1 + 402) = *(a2 + 402);
      swift_unknownObjectRetain();

      v44 = v43;
    }

    *(a1 + 408) = a2[51];
    *(a1 + 416) = *(a2 + 416);
    *(a1 + 424) = a2[53];
  }

  return a1;
}

uint64_t assignWithCopy for PlatformItemsDefinition.MakePlatformImage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (*(a1 + 8) == 255)
  {
    if (v4 == 255)
    {
      v10 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *a1 = v10;
    }

    else
    {
      v8 = *a2;
      outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
      *a1 = v8;
      *(a1 + 8) = v4;
    }
  }

  else if (v4 == 255)
  {
    outlined destroy of GraphicsImage.Contents(a1);
    v9 = *(a2 + 8);
    *a1 = *a2;
    *(a1 + 8) = v9;
  }

  else
  {
    v5 = *a2;
    outlined copy of GraphicsImage.Contents(*a2, *(a2 + 8));
    v6 = *a1;
    *a1 = v5;
    v7 = *(a1 + 8);
    *(a1 + 8) = v4;
    outlined consume of GraphicsImage.Contents(v6, v7);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  v11 = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 44) = v11;
  v12 = *(a2 + 72);
  v13 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v13;
  *(a1 + 72) = v12;
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 106) = *(a2 + 106);
  *(a1 + 107) = *(a2 + 107);
  v14 = *(a2 + 128);
  v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
  if (*(a1 + 128) >> 1 == 0xFFFFFFFFLL)
  {
    if (v15 == 0x1FFFFFFFELL)
    {
      v16 = *(a2 + 128);
      *(a1 + 112) = *(a2 + 112);
      *(a1 + 128) = v16;
    }

    else
    {
      v18 = *(a2 + 112);
      v19 = *(a2 + 120);
      v20 = *(a2 + 136);
      outlined copy of AccessibilityImageLabel(v18, v19, *(a2 + 128), v20);
      *(a1 + 112) = v18;
      *(a1 + 120) = v19;
      *(a1 + 128) = v14;
      *(a1 + 136) = v20;
    }
  }

  else if (v15 == 0x1FFFFFFFELL)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 112);
    v17 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v17;
  }

  else
  {
    v21 = *(a2 + 112);
    v22 = *(a2 + 120);
    v23 = *(a2 + 136);
    outlined copy of AccessibilityImageLabel(v21, v22, *(a2 + 128), v23);
    v24 = *(a1 + 112);
    v25 = *(a1 + 120);
    v26 = *(a1 + 128);
    v27 = *(a1 + 136);
    *(a1 + 112) = v21;
    *(a1 + 120) = v22;
    *(a1 + 128) = v14;
    *(a1 + 136) = v23;
    outlined consume of AccessibilityImageLabel(v24, v25, v26, v27);
  }

  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  v28 = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 164) = v28;
  v29 = *(a1 + 176);
  v30 = *(a2 + 176);
  *(a1 + 176) = v30;
  v31 = v30;

  v32 = (a1 + 192);
  v33 = *(a1 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 186) = *(a2 + 186);
  v35 = (a2 + 192);
  v34 = *(a2 + 192);
  if (v33 == 1)
  {
    if (v34 == 1)
    {
      v36 = *v35;
      v37 = *(a2 + 224);
      *(a1 + 208) = *(a2 + 208);
      *(a1 + 224) = v37;
      *v32 = v36;
      v38 = *(a2 + 240);
      v39 = *(a2 + 256);
      v40 = *(a2 + 288);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 288) = v40;
      *(a1 + 240) = v38;
      *(a1 + 256) = v39;
      v41 = *(a2 + 304);
      v42 = *(a2 + 320);
      v43 = *(a2 + 352);
      *(a1 + 336) = *(a2 + 336);
      *(a1 + 352) = v43;
      *(a1 + 304) = v41;
      *(a1 + 320) = v42;
      v44 = *(a2 + 368);
      v45 = *(a2 + 384);
      v46 = *(a2 + 416);
      *(a1 + 400) = *(a2 + 400);
      *(a1 + 416) = v46;
      *(a1 + 368) = v44;
      *(a1 + 384) = v45;
    }

    else
    {
      *(a1 + 192) = v34;
      v58 = *(a2 + 200);
      *(a1 + 200) = v58;
      v59 = *(a2 + 208);
      *(a1 + 208) = v59;
      v60 = (a1 + 216);
      v61 = (a2 + 216);
      v62 = *(a2 + 344);
      v63 = v34;
      v64 = v58;
      v65 = v59;
      if (v62 >> 1 == 4294967294)
      {
        v66 = *v61;
        v67 = *(a2 + 232);
        v68 = *(a2 + 264);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 264) = v68;
        *v60 = v66;
        *(a1 + 232) = v67;
        v69 = *(a2 + 280);
        v70 = *(a2 + 296);
        v71 = *(a2 + 328);
        *(a1 + 312) = *(a2 + 312);
        *(a1 + 328) = v71;
        *(a1 + 280) = v69;
        *(a1 + 296) = v70;
        v72 = *(a2 + 344);
        v73 = *(a2 + 360);
        v74 = *(a2 + 376);
        *(a1 + 387) = *(a2 + 387);
        *(a1 + 360) = v73;
        *(a1 + 376) = v74;
        *(a1 + 344) = v72;
      }

      else
      {
        v94 = *(a2 + 224);
        if (v94 == 255)
        {
          v111 = *v61;
          *(a1 + 224) = *(a2 + 224);
          *v60 = v111;
        }

        else
        {
          v95 = *v61;
          outlined copy of GraphicsImage.Contents(*v61, *(a2 + 224));
          *(a1 + 216) = v95;
          *(a1 + 224) = v94;
        }

        *(a1 + 232) = *(a2 + 232);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 256) = *(a2 + 256);
        v112 = *(a2 + 260);
        *(a1 + 273) = *(a2 + 273);
        *(a1 + 260) = v112;
        v113 = *(a2 + 288);
        v114 = *(a2 + 304);
        *(a1 + 320) = *(a2 + 320);
        *(a1 + 288) = v113;
        *(a1 + 304) = v114;
        *(a1 + 321) = *(a2 + 321);
        *(a1 + 322) = *(a2 + 322);
        *(a1 + 323) = *(a2 + 323);
        v115 = *(a2 + 344);
        if (v115 >> 1 == 0xFFFFFFFF)
        {
          v116 = *(a2 + 344);
          *(a1 + 328) = *(a2 + 328);
          *(a1 + 344) = v116;
        }

        else
        {
          v117 = *(a2 + 328);
          v118 = *(a2 + 336);
          v119 = *(a2 + 352);
          outlined copy of AccessibilityImageLabel(v117, v118, *(a2 + 344), v119);
          *(a1 + 328) = v117;
          *(a1 + 336) = v118;
          *(a1 + 344) = v115;
          *(a1 + 352) = v119;
        }

        *(a1 + 360) = *(a2 + 360);
        *(a1 + 368) = *(a2 + 368);
        *(a1 + 376) = *(a2 + 376);
        *(a1 + 377) = *(a2 + 377);
        v120 = *(a2 + 380);
        *(a1 + 384) = *(a2 + 384);
        *(a1 + 380) = v120;
        v121 = *(a2 + 392);
        *(a1 + 392) = v121;
        *(a1 + 400) = *(a2 + 400);
        *(a1 + 402) = *(a2 + 402);
        swift_unknownObjectRetain();

        v122 = v121;
      }

      *(a1 + 408) = *(a2 + 408);
      *(a1 + 416) = *(a2 + 416);
      *(a1 + 424) = *(a2 + 424);
    }
  }

  else if (v34 == 1)
  {
    outlined destroy of PlatformItem.PrimaryContent(a1 + 192);
    v48 = *(a2 + 208);
    v47 = *(a2 + 224);
    *v32 = *v35;
    *(a1 + 208) = v48;
    *(a1 + 224) = v47;
    v49 = *(a2 + 288);
    v51 = *(a2 + 240);
    v50 = *(a2 + 256);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v49;
    *(a1 + 240) = v51;
    *(a1 + 256) = v50;
    v52 = *(a2 + 352);
    v54 = *(a2 + 304);
    v53 = *(a2 + 320);
    *(a1 + 336) = *(a2 + 336);
    *(a1 + 352) = v52;
    *(a1 + 304) = v54;
    *(a1 + 320) = v53;
    v55 = *(a2 + 416);
    v57 = *(a2 + 368);
    v56 = *(a2 + 384);
    *(a1 + 400) = *(a2 + 400);
    *(a1 + 416) = v55;
    *(a1 + 368) = v57;
    *(a1 + 384) = v56;
  }

  else
  {
    *(a1 + 192) = v34;
    v75 = v34;

    v76 = *(a1 + 200);
    v77 = *(a2 + 200);
    *(a1 + 200) = v77;
    v78 = v77;

    v79 = *(a1 + 208);
    v80 = *(a2 + 208);
    *(a1 + 208) = v80;
    v81 = v80;

    v82 = (a1 + 216);
    v83 = (a2 + 216);
    v84 = *(a2 + 344) & 0xFFFFFFFFFFFFFFFELL;
    if (*(a1 + 344) >> 1 == 4294967294)
    {
      if (v84 == 0x1FFFFFFFCLL)
      {
        v85 = *v83;
        v86 = *(a2 + 232);
        v87 = *(a2 + 264);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 264) = v87;
        *v82 = v85;
        *(a1 + 232) = v86;
        v88 = *(a2 + 280);
        v89 = *(a2 + 296);
        v90 = *(a2 + 328);
        *(a1 + 312) = *(a2 + 312);
        *(a1 + 328) = v90;
        *(a1 + 280) = v88;
        *(a1 + 296) = v89;
        v91 = *(a2 + 344);
        v92 = *(a2 + 360);
        v93 = *(a2 + 376);
        *(a1 + 387) = *(a2 + 387);
        *(a1 + 360) = v92;
        *(a1 + 376) = v93;
        *(a1 + 344) = v91;
      }

      else
      {
        v105 = *(a2 + 224);
        if (v105 == 255)
        {
          v123 = *v83;
          *(a1 + 224) = *(a2 + 224);
          *v82 = v123;
        }

        else
        {
          v106 = *v83;
          outlined copy of GraphicsImage.Contents(*v83, *(a2 + 224));
          *(a1 + 216) = v106;
          *(a1 + 224) = v105;
        }

        *(a1 + 232) = *(a2 + 232);
        *(a1 + 240) = *(a2 + 240);
        *(a1 + 256) = *(a2 + 256);
        v124 = *(a2 + 260);
        *(a1 + 273) = *(a2 + 273);
        *(a1 + 260) = v124;
        v125 = *(a2 + 288);
        v126 = *(a2 + 304);
        *(a1 + 320) = *(a2 + 320);
        *(a1 + 288) = v125;
        *(a1 + 304) = v126;
        *(a1 + 321) = *(a2 + 321);
        *(a1 + 322) = *(a2 + 322);
        *(a1 + 323) = *(a2 + 323);
        v127 = *(a2 + 344);
        if (v127 >> 1 == 0xFFFFFFFF)
        {
          v128 = *(a2 + 344);
          *(a1 + 328) = *(a2 + 328);
          *(a1 + 344) = v128;
        }

        else
        {
          v129 = *(a2 + 328);
          v130 = *(a2 + 336);
          v131 = *(a2 + 352);
          outlined copy of AccessibilityImageLabel(v129, v130, *(a2 + 344), v131);
          *(a1 + 328) = v129;
          *(a1 + 336) = v130;
          *(a1 + 344) = v127;
          *(a1 + 352) = v131;
        }

        *(a1 + 360) = *(a2 + 360);
        *(a1 + 368) = *(a2 + 368);
        *(a1 + 376) = *(a2 + 376);
        *(a1 + 377) = *(a2 + 377);
        v132 = *(a2 + 380);
        *(a1 + 384) = *(a2 + 384);
        *(a1 + 380) = v132;
        v133 = *(a2 + 392);
        *(a1 + 392) = v133;
        *(a1 + 400) = *(a2 + 400);
        *(a1 + 402) = *(a2 + 402);
        swift_unknownObjectRetain();

        v134 = v133;
      }
    }

    else if (v84 == 0x1FFFFFFFCLL)
    {
      outlined destroy of Image.Resolved(a1 + 216);
      v96 = *(a2 + 264);
      v98 = *v83;
      v97 = *(a2 + 232);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v96;
      *v82 = v98;
      *(a1 + 232) = v97;
      v99 = *(a2 + 328);
      v101 = *(a2 + 280);
      v100 = *(a2 + 296);
      *(a1 + 312) = *(a2 + 312);
      *(a1 + 328) = v99;
      *(a1 + 280) = v101;
      *(a1 + 296) = v100;
      v103 = *(a2 + 360);
      v102 = *(a2 + 376);
      v104 = *(a2 + 344);
      *(a1 + 387) = *(a2 + 387);
      *(a1 + 360) = v103;
      *(a1 + 376) = v102;
      *(a1 + 344) = v104;
    }

    else
    {
      v107 = *(a2 + 224);
      if (*(a1 + 224) == 255)
      {
        if (v107 == 255)
        {
          v137 = *v83;
          *(a1 + 224) = *(a2 + 224);
          *v82 = v137;
        }

        else
        {
          v135 = *v83;
          outlined copy of GraphicsImage.Contents(*v83, *(a2 + 224));
          *(a1 + 216) = v135;
          *(a1 + 224) = v107;
        }
      }

      else if (v107 == 255)
      {
        outlined destroy of GraphicsImage.Contents(a1 + 216);
        v136 = *(a2 + 224);
        *v82 = *v83;
        *(a1 + 224) = v136;
      }

      else
      {
        v108 = *v83;
        outlined copy of GraphicsImage.Contents(*v83, *(a2 + 224));
        v109 = *(a1 + 216);
        *(a1 + 216) = v108;
        v110 = *(a1 + 224);
        *(a1 + 224) = v107;
        outlined consume of GraphicsImage.Contents(v109, v110);
      }

      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = *(a2 + 240);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      v138 = *(a2 + 260);
      *(a1 + 273) = *(a2 + 273);
      *(a1 + 260) = v138;
      v139 = *(a2 + 288);
      v140 = *(a2 + 304);
      *(a1 + 320) = *(a2 + 320);
      *(a1 + 288) = v139;
      *(a1 + 304) = v140;
      *(a1 + 321) = *(a2 + 321);
      *(a1 + 322) = *(a2 + 322);
      *(a1 + 323) = *(a2 + 323);
      v141 = (a1 + 328);
      v142 = (a2 + 328);
      v143 = *(a2 + 344);
      v144 = v143 & 0xFFFFFFFFFFFFFFFELL;
      if (*(a1 + 344) >> 1 == 0xFFFFFFFFLL)
      {
        if (v144 == 0x1FFFFFFFELL)
        {
          v145 = *(a2 + 344);
          *v141 = *v142;
          *(a1 + 344) = v145;
        }

        else
        {
          v147 = *(a2 + 328);
          v148 = *(a2 + 336);
          v149 = *(a2 + 352);
          outlined copy of AccessibilityImageLabel(v147, v148, *(a2 + 344), v149);
          *(a1 + 328) = v147;
          *(a1 + 336) = v148;
          *(a1 + 344) = v143;
          *(a1 + 352) = v149;
        }
      }

      else if (v144 == 0x1FFFFFFFELL)
      {
        outlined destroy of AccessibilityImageLabel(a1 + 328);
        v146 = *(a2 + 344);
        *v141 = *v142;
        *(a1 + 344) = v146;
      }

      else
      {
        v150 = *(a2 + 328);
        v151 = *(a2 + 336);
        v152 = *(a2 + 352);
        outlined copy of AccessibilityImageLabel(v150, v151, *(a2 + 344), v152);
        v153 = *(a1 + 328);
        v154 = *(a1 + 336);
        v155 = *(a1 + 344);
        v156 = *(a1 + 352);
        *(a1 + 328) = v150;
        *(a1 + 336) = v151;
        *(a1 + 344) = v143;
        *(a1 + 352) = v152;
        outlined consume of AccessibilityImageLabel(v153, v154, v155, v156);
      }

      *(a1 + 360) = *(a2 + 360);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *(a1 + 368) = *(a2 + 368);

      *(a1 + 376) = *(a2 + 376);
      *(a1 + 377) = *(a2 + 377);
      v157 = *(a2 + 380);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 380) = v157;
      v158 = *(a1 + 392);
      v159 = *(a2 + 392);
      *(a1 + 392) = v159;
      v160 = v159;

      *(a1 + 400) = *(a2 + 400);
      *(a1 + 402) = *(a2 + 402);
    }

    *(a1 + 408) = *(a2 + 408);

    *(a1 + 416) = *(a2 + 416);
    *(a1 + 424) = *(a2 + 424);
  }

  return a1;
}

uint64_t assignWithTake for PlatformItemsDefinition.MakePlatformImage(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  if (v4 != 255)
  {
    v5 = *(a2 + 8);
    if (v5 != 255)
    {
      v6 = *a1;
      *a1 = *a2;
      *(a1 + 8) = v5;
      outlined consume of GraphicsImage.Contents(v6, v4);
      goto LABEL_6;
    }

    outlined destroy of GraphicsImage.Contents(a1);
  }

  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
LABEL_6:
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 105) = *(a2 + 105);
  v7 = *(a1 + 128);
  *(a1 + 106) = *(a2 + 106);
  if (v7 >> 1 == 0xFFFFFFFF)
  {
LABEL_9:
    v9 = *(a2 + 128);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 128) = v9;
    goto LABEL_11;
  }

  v8 = *(a2 + 128);
  if (v8 >> 1 == 0xFFFFFFFF)
  {
    outlined destroy of AccessibilityImageLabel(a1 + 112);
    goto LABEL_9;
  }

  v10 = *(a2 + 136);
  v11 = *(a1 + 112);
  v12 = *(a1 + 120);
  v13 = *(a1 + 136);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v8;
  *(a1 + 136) = v10;
  outlined consume of AccessibilityImageLabel(v11, v12, v7, v13);
LABEL_11:
  *(a1 + 144) = *(a2 + 144);
  swift_unknownObjectRelease();
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 160) = *(a2 + 160);
  *(a1 + 161) = *(a2 + 161);
  *(a1 + 164) = *(a2 + 164);
  *(a1 + 168) = *(a2 + 168);
  v14 = *(a1 + 176);
  *(a1 + 176) = *(a2 + 176);

  v15 = *(a2 + 192);
  v16 = *(a1 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 186) = *(a2 + 186);
  if (v16 != 1)
  {
    if (v15 == 1)
    {
      outlined destroy of PlatformItem.PrimaryContent(a1 + 192);
      goto LABEL_14;
    }

    *(a1 + 192) = v15;

    v24 = *(a1 + 200);
    *(a1 + 200) = *(a2 + 200);

    v25 = *(a1 + 208);
    *(a1 + 208) = *(a2 + 208);

    v26 = (a1 + 216);
    v27 = (a2 + 216);
    if (*(a1 + 344) >> 1 == 4294967294)
    {
      goto LABEL_18;
    }

    if (*(a2 + 344) >> 1 == 4294967294)
    {
      outlined destroy of Image.Resolved(a1 + 216);
LABEL_18:
      v28 = *(a2 + 360);
      *(a1 + 344) = *(a2 + 344);
      *(a1 + 360) = v28;
      *(a1 + 376) = *(a2 + 376);
      *(a1 + 387) = *(a2 + 387);
      v29 = *(a2 + 296);
      *(a1 + 280) = *(a2 + 280);
      *(a1 + 296) = v29;
      v30 = *(a2 + 328);
      *(a1 + 312) = *(a2 + 312);
      *(a1 + 328) = v30;
      v31 = *(a2 + 232);
      *v26 = *v27;
      *(a1 + 232) = v31;
      v32 = *(a2 + 264);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v32;
LABEL_30:
      *(a1 + 408) = *(a2 + 408);

      *(a1 + 416) = *(a2 + 416);
      *(a1 + 424) = *(a2 + 424);

      return a1;
    }

    v33 = *(a1 + 224);
    if (v33 != 255)
    {
      v34 = *(a2 + 224);
      if (v34 != 255)
      {
        v35 = *(a1 + 216);
        *(a1 + 216) = *v27;
        *(a1 + 224) = v34;
        outlined consume of GraphicsImage.Contents(v35, v33);
        goto LABEL_24;
      }

      outlined destroy of GraphicsImage.Contents(a1 + 216);
    }

    *v26 = *v27;
    *(a1 + 224) = *(a2 + 224);
LABEL_24:
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 248) = *(a2 + 248);
    *(a1 + 256) = *(a2 + 256);
    *(a1 + 260) = *(a2 + 260);
    *(a1 + 273) = *(a2 + 273);
    v36 = *(a2 + 304);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = v36;
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 321) = *(a2 + 321);
    v37 = *(a1 + 344);
    v38 = (a1 + 328);
    *(a1 + 322) = *(a2 + 322);
    if (v37 >> 1 != 0xFFFFFFFF)
    {
      v39 = *(a2 + 344);
      if (v39 >> 1 != 0xFFFFFFFF)
      {
        v41 = *(a2 + 352);
        v42 = *(a1 + 328);
        v43 = *(a1 + 336);
        v44 = *(a1 + 352);
        *v38 = *(a2 + 328);
        *(a1 + 344) = v39;
        *(a1 + 352) = v41;
        outlined consume of AccessibilityImageLabel(v42, v43, v37, v44);
        goto LABEL_29;
      }

      outlined destroy of AccessibilityImageLabel(a1 + 328);
    }

    v40 = *(a2 + 344);
    *v38 = *(a2 + 328);
    *(a1 + 344) = v40;
LABEL_29:
    *(a1 + 360) = *(a2 + 360);
    swift_unknownObjectRelease();
    *(a1 + 368) = *(a2 + 368);

    *(a1 + 376) = *(a2 + 376);
    *(a1 + 377) = *(a2 + 377);
    *(a1 + 380) = *(a2 + 380);
    *(a1 + 384) = *(a2 + 384);
    v45 = *(a1 + 392);
    *(a1 + 392) = *(a2 + 392);

    *(a1 + 400) = *(a2 + 400);
    *(a1 + 402) = *(a2 + 402);
    goto LABEL_30;
  }

LABEL_14:
  v17 = *(a2 + 400);
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 400) = v17;
  *(a1 + 416) = *(a2 + 416);
  v18 = *(a2 + 336);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 336) = v18;
  v19 = *(a2 + 368);
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = v19;
  v20 = *(a2 + 272);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 272) = v20;
  v21 = *(a2 + 304);
  *(a1 + 288) = *(a2 + 288);
  *(a1 + 304) = v21;
  v22 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v22;
  v23 = *(a2 + 240);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = v23;
  return a1;
}

uint64_t getEnumTagSinglePayload for PlatformItemsDefinition.MakePlatformImage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 432))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 128) >> 1;
  v4 = -2 - v3;
  if (-2 - v3 < 0)
  {
    v4 = -1;
  }

  if (v3 <= 0x80000000)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlatformItemsDefinition.MakePlatformImage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 424) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 432) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 432) = 0;
    }

    if (a2)
    {
      *(result + 112) = 0;
      *(result + 120) = 0;
      *(result + 128) = 2 * ~a2;
      *(result + 136) = 0;
    }
  }

  return result;
}

uint64_t WeakUncheckedSendable.init(_:)()
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

Swift::Int UncheckedSendable<A>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance <A> UncheckedSendable<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  UncheckedSendable<A>.hash(into:)(v6, a2, v4);
  return Hasher._finalize()();
}

uint64_t key path getter for WeakUncheckedSendable.value : <A>WeakUncheckedSendable<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = type metadata accessor for WeakUncheckedSendable(0, *(a2 + a3 - 8), a3, a4);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v11, a1, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  result = (*(v8 + 8))(v11, v7);
  *a5 = Strong;
  return result;
}

uint64_t WeakUncheckedSendable.value.setter(uint64_t a1)
{
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t (*WeakUncheckedSendable.value.modify(uint64_t *a1))(void *a1)
{
  a1[1] = v1;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return WeakBox.base.modify;
}

void TransactionID.init(graph:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  Counter = AGGraphGetCounter();

  *a2 = Counter;
}

void TransactionID.init(context:)(uint64_t *a2@<X8>)
{
  v3 = AGGraphGetAttributeGraph();
  Counter = AGGraphGetCounter();

  *a2 = Counter;
}

Swift::Int TransactionID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

void lazy protocol witness table accessor for type TransactionID and conformance TransactionID()
{
  if (!lazy protocol witness table cache variable for type TransactionID and conformance TransactionID)
  {
    swift_getWitnessTable(protocol conformance descriptor for TransactionID, &type metadata for TransactionID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TransactionID and conformance TransactionID);
  }
}

Swift::Int Gradient.ColorSpace.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t Gradient.colorSpace(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for GradientBox<ColorSpaceGradientProvider>(0);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = 0;
  *(v4 + 25) = v3;

  return v4;
}

void type metadata accessor for GradientBox<ColorSpaceGradientProvider>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GradientBox<ColorSpaceGradientProvider>)
  {
    lazy protocol witness table accessor for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider();
    v4 = type metadata accessor for GradientBox(a1, &type metadata for ColorSpaceGradientProvider, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for GradientBox<ColorSpaceGradientProvider>);
    }
  }
}

void lazy protocol witness table accessor for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider()
{
  if (!lazy protocol witness table cache variable for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ColorSpaceGradientProvider, &type metadata for ColorSpaceGradientProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ColorSpaceGradientProvider, &type metadata for ColorSpaceGradientProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for ColorSpaceGradientProvider, &type metadata for ColorSpaceGradientProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ColorSpaceGradientProvider and conformance ColorSpaceGradientProvider);
  }
}

uint64_t AnyGradient.colorSpace(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for GradientBox<ColorSpaceGradientProvider>(0);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = 1;
  *(v4 + 25) = v3;

  return v4;
}

void lazy protocol witness table accessor for type Gradient.ColorSpace and conformance Gradient.ColorSpace()
{
  if (!lazy protocol witness table cache variable for type Gradient.ColorSpace and conformance Gradient.ColorSpace)
  {
    swift_getWitnessTable(protocol conformance descriptor for Gradient.ColorSpace, &type metadata for Gradient.ColorSpace, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Gradient.ColorSpace and conformance Gradient.ColorSpace);
  }
}

uint64_t initializeBufferWithCopyOfBuffer for ColorSpaceGradientProvider(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of EitherGradient(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t assignWithCopy for ColorSpaceGradientProvider(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  outlined copy of EitherGradient(*a2, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of EitherGradient(v6, v7);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t assignWithTake for ColorSpaceGradientProvider(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v4;
  *(a1 + 8) = v5;
  outlined consume of EitherGradient(v6, v7);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

void protocol witness for GradientProvider.resolve(in:) in conformance ColorSpaceGradientProvider(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = *v2;
  v6 = *(v2 + 9);
  if (*(v2 + 8))
  {
    *&v7 = *a1;
    *(&v7 + 1) = v4;
    (*(*v5 + 112))(&v7);
  }

  else
  {
    *&v7 = *a1;
    *(&v7 + 1) = v4;
    Gradient.resolve(in:)(&v7, v5, a2);
  }

  *(a2 + 8) = v6;
}

uint64_t protocol witness for GradientProvider.fallbackColor(in:) in conformance ColorSpaceGradientProvider(__int128 *a1)
{
  if (*(v1 + 8) != 1)
  {
    return 0;
  }

  v2 = *v1;
  v4 = *a1;
  return (*(*v2 + 120))(&v4);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ColorSpaceGradientProvider()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x193AC11A0](1);
    (*(*v1 + 128))(v5);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(v5, v1);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance ColorSpaceGradientProvider(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 9);
  if (*(v1 + 8))
  {
    MEMORY[0x193AC11A0](1);
    (*(*v3 + 128))(a1);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(a1, v3);
  }

  Hasher._combine(_:)(v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ColorSpaceGradientProvider(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 9);
  Hasher.init(_seed:)();
  if (v3)
  {
    MEMORY[0x193AC11A0](1);
    (*(*v2 + 128))(v6);
  }

  else
  {
    MEMORY[0x193AC11A0](0);
    specialized Array<A>.hash(into:)(v6, v2);
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t specialized static ColorSpaceGradientProvider.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 9);
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 9);
  v8 = *a1;
  v9 = *(a1 + 8);
  v7 = *a2;
  outlined copy of EitherGradient(*a1, v9);
  outlined copy of EitherGradient(v3, v4);
  LOBYTE(v3) = static EitherGradient.== infix(_:_:)();
  outlined consume of EitherGradient(v7, v4);
  outlined consume of EitherGradient(v8, v9);
  return v3 & (v2 == v5);
}

unint64_t _ViewInputs.updateGlassMaterialContext(context:material:updateSeed:)(int a1, int a2, int a3)
{
  swift_beginAccess();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectContextState and conformance GlassEffectContextState();
  v4 = Attribute.init<A>(body:value:flags:update:)();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type GlassEffectContextUpdatedMaterial and conformance GlassEffectContextUpdatedMaterial();
  v5 = Attribute.init<A>(body:value:flags:update:)();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectContextEnvironment and conformance GlassEffectContextEnvironment();
  v6 = Attribute.init<A>(body:value:flags:update:)();
  _GraphInputs.environment.setter(v6);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassEffectContextTransaction and conformance GlassEffectContextTransaction();
  *(v3 + 28) = Attribute.init<A>(body:value:flags:update:)();
  return v4 | (v5 << 32);
}

BOOL GlassMaterialContext.updateState(material:environment:transaction:updateSeed:)(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v6 = v5;
  v8 = a1[1];
  if (v8 == 1)
  {
    v10 = *a1;
    v11 = *a2;
    v12 = a2[1];
    if ((*(**a1 + 120))())
    {
      v43 = 0;
      v44 = 1;
      v45 = 0;
      v46 = 0;
      v42[0] = v11;
      v42[1] = v12;
      outlined copy of Material?(v10, v8);
      outlined copy of Material?(v10, v8);

      WeakValue = AGGraphGetWeakValue();
      if (WeakValue)
      {
        v14 = *WeakValue;
      }

      else
      {
        v14 = NAN;
      }

      v20 = AGGraphGetWeakValue();
      if (v20)
      {
        v21 = *v20;

        if (v14 == v21)
        {

          v22 = AGGraphGetWeakValue();
          if (v22)
          {
            v23 = *v22;
          }

          else
          {
            v23 = 2143289344;
          }

          v43 = v23;
          v44 = 0;
        }
      }

      else
      {
      }

      v40 = *(v5 + 32);
      v24 = *(*v10 + 128);

      v24(&v41, &v40, v42);

      v25 = v41;
      v26 = *(v5 + 32);
      if (v41)
      {
        if (v26)
        {
          if (v41 != v26)
          {
            v39 = *(*v41 + 88);
            swift_retain_n();
            swift_retain_n();
            v27 = v39(v26);

            if ((v27 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

LABEL_20:
          v28 = *(v6 + 40);
          if (v28 != 1)
          {
            outlined copy of GlassMaterialContext.State?(v28, *(v6 + 48), *(v6 + 56));
            outlined consume of Material?(v10, v8);
            outlined consume of Material?(v10, v8);

            outlined consume of GlassMaterialContext.State?(v28);

            return 0;
          }

          v29 = *(v6 + 32);

          v31 = a3(v30);
          v32 = (a3)();
          outlined consume of Material?(v10, v8);
          outlined consume of Material?(v10, v8);

          v33 = *(v6 + 40);
          *(v6 + 40) = v29;
          *(v6 + 48) = v31;
          *(v6 + 56) = v32;
          *(v6 + 64) = 0;
          goto LABEL_24;
        }
      }

      else if (!v26)
      {
        goto LABEL_20;
      }

LABEL_23:
      *(v6 + 32) = v25;

      v34 = v45;
      v35 = v46;

      v37 = a5(v36);
      outlined consume of Material?(v10, v8);
      outlined consume of Material?(v10, v8);

      v33 = *(v6 + 40);
      *(v6 + 40) = v25;
      *(v6 + 48) = v34;
      *(v6 + 56) = v35;
      *(v6 + 64) = v37;
LABEL_24:
      outlined consume of GlassMaterialContext.State?(v33);
      return 1;
    }
  }

  v15 = *(v5 + 32) != 0;
  *(v5 + 32) = 0;

  v17 = a3(v16);
  v18 = (a3)();
  v19 = *(v5 + 40);
  *(v5 + 40) = 0;
  *(v5 + 48) = v17;
  *(v5 + 56) = v18;
  *(v5 + 64) = 0;
  outlined consume of GlassMaterialContext.State?(v19);
  return v15;
}

double GlassMaterialContext.__deallocating_deinit()
{

  outlined consume of GlassMaterialContext.State?(*(v0 + 40));

  swift_deallocClassInstance();
  return result;
}

Swift::Void __swiftcall GlassEffectBackdropObserver.luminanceDidChange(_:)(Swift::Float_optional *a1)
{
  if (swift_weakLoadStrong())
  {
    v3 = *(v1 + 24);
    if ((a1 & 0x100000000) != 0)
    {
      v4 = NAN;
    }

    else
    {
      v4 = *&a1;
    }

    v5 = _threadTransactionID();
    specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v5, v3, 0, 1, 1, v4);
  }
}

void *specialized static GlassMaterialEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = a3;
  v99 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *(a2 + 48);
  v93 = *(a2 + 32);
  v94 = v7;
  v95 = *(a2 + 64);
  v96 = *(a2 + 80);
  v8 = *(a2 + 16);
  v91 = *a2;
  v92 = v8;
  *v97 = v91;
  *&v97[16] = v8;
  v98 = v93;
  v9 = v91;
  outlined init with copy of _GraphInputs(v97, &v85);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(v9, &v85);
  Strong = swift_weakLoadStrong();
  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_3(&v85, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox);
  if (!Strong)
  {
    outlined destroy of _GraphInputs(v97);
    return specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v91, a4);
  }

  v58 = v4;
  v57 = a4;
  v53 = v6;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v56 = AGGraphCreateOffsetAttribute2();
  v12 = AGGraphCreateOffsetAttribute2();
  type metadata accessor for GlassMaterialContext();
  v13 = swift_allocObject();
  *(v13 + 32) = xmmword_18DD85550;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 16) = *(Strong + 120);
  v87 = v93;
  v88 = v94;
  v89 = v95;
  v90 = v96;
  v85 = v91;
  v86 = v92;

  _ViewInputs.materialSubstrate.getter(&v76);
  *(v13 + 24) = v76;
  v14 = *(Strong + 120);
  v55 = v12;
  LODWORD(v85) = v12;
  *(&v85 + 1) = v13;
  v86 = v14;
  LODWORD(v87) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassMaterialContextData.Init and conformance GlassMaterialContextData.Init();

  v15 = Attribute.init<A>(body:value:flags:update:)();

  v16 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v59 = *(v16 + 64);

  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
  v17 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(v9, v85);
  if (v17 && *(v17 + 72) == 1)
  {
    v18 = &static PlatformGlassDefinition.appKit;
  }

  else
  {
    v18 = &static PlatformGlassDefinition.uiKit;
  }

  swift_beginAccess();
  v19 = *v18;
  v20 = *&v97[16];
  swift_beginAccess();
  *&v85 = __PAIR64__(*(v20 + 16), OffsetAttribute2);
  v52 = *&v97[28];
  DWORD2(v85) = *&v97[28];
  *&v86 = Strong;
  *(&v86 + 1) = v19;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type GlassEffectMaterial and conformance GlassEffectMaterial();

  v21 = Attribute.init<A>(body:value:flags:update:)();

  v78 = v93;
  v79 = v94;
  v80 = v95;
  v81 = v96;
  v76 = v91;
  v77 = v92;
  v87 = v93;
  v88 = v94;
  v89 = v95;
  v90 = v96;
  v85 = v91;
  v86 = v92;
  swift_beginAccess();
  outlined init with copy of _ViewInputs(&v91, &v70);
  LODWORD(v19) = CachedEnvironment.animatedPosition(for:)(&v85);
  swift_endAccess();
  DWORD1(v80) = v19;
  v22 = v79;
  *&v85 = v79;
  v23 = PreferenceKeys._index(of:)(&type metadata for GlassMaterialShapeKey);

  v24 = *(v22 + 2);
  if (v23 != v24)
  {
    if (v23 >= v24)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (*&v22[16 * v23 + 32] == &type metadata for GlassMaterialShapeKey)
    {
      goto LABEL_14;
    }
  }

  if (v24 < v23)
  {
    __break(1u);
    goto LABEL_28;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v24 >= *(v22 + 3) >> 1)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v24 + 1, 1, v22);
    *&v79 = v22;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v23, v23, 1, &type metadata for GlassMaterialShapeKey, &protocol witness table for GlassMaterialShapeKey);
  *&v79 = v22;
LABEL_14:
  LODWORD(v24) = v15;
  v26 = v15;
  v27 = v59;
  v21 = _ViewInputs.updateGlassMaterialContext(context:material:updateSeed:)(v26, v21, v59);
  v87 = v78;
  v88 = v79;
  v89 = v80;
  v90 = v81;
  v85 = v76;
  v86 = v77;
  outlined init with copy of _ViewInputs(&v85, &v70);
  specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:)(&v85, v62);
  outlined destroy of _ViewInputs(&v85);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v94))
  {
    LODWORD(v22) = lastIdentity + 1;
    lastIdentity = v22;
    v58 = v22;
    if ((BYTE5(v98) & 1) == 0)
    {
      v28 = *MEMORY[0x1E698D3F8];
LABEL_17:
      v60 = v28;
      v29 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA018GlassMaterialShapeI033_62A32D59B8A902A88963544196023CF7LLV_TtB5(v62[0]);
      if ((v29 & 0x100000000) != 0)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      *&v70 = __PAIR64__(v30, v53);
      *(&v70 + 1) = Strong;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type GlassEffectShapeSet and conformance GlassEffectShapeSet();

      v31 = Attribute.init<A>(body:value:flags:update:)();

      LODWORD(v70) = v31;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type _ShapeSet.Wrapper.Init and conformance _ShapeSet.Wrapper.Init();
      v51 = Attribute.init<A>(body:value:flags:update:)();
      v69[0] = *v97;
      *(v69 + 12) = *&v97[12];
      v61 = v98;
      *&v70 = __PAIR64__(v21, v52);
      *(&v70 + 1) = __PAIR64__(v24, v27);
      LOBYTE(v71) = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type GlassEffectContextTransaction and conformance GlassEffectContextTransaction();
      v54 = Attribute.init<A>(body:value:flags:update:)();
      LODWORD(v70) = HIDWORD(v21);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type GlassEffectContextUnwrappedMaterial and conformance GlassEffectContextUnwrappedMaterial();
      v32 = Attribute.init<A>(body:value:flags:update:)();
      *v82 = v69[0];
      *&v82[12] = *(v69 + 12);
      v83 = v54;
      v84 = v61;
      LODWORD(v70) = v32;
      _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA19GlassContainerCacheC17UnwrappedMaterialV_Tt1B5(&v70, v82);
      v33 = v70;
      v72 = v93;
      v73 = v94;
      v74 = v95;
      v75 = v96;
      v70 = v91;
      v71 = v92;
      swift_beginAccess();
      v34 = CachedEnvironment.animatedPosition(for:)(&v70);
      v72 = v93;
      v73 = v94;
      v74 = v95;
      v75 = v96;
      v70 = v91;
      v71 = v92;
      v35 = CachedEnvironment.animatedCGSize(for:)(&v70);
      v72 = v93;
      v73 = v94;
      v74 = v95;
      v75 = v96;
      v70 = v91;
      v71 = v92;
      v36 = CachedEnvironment.animatedSize(for:)(&v70);
      swift_endAccess();
      v37 = HIDWORD(v94);
      v38 = *(v20 + 16);
      v72 = v93;
      v73 = v94;
      v74 = v95;
      v39 = HIDWORD(v95);
      v75 = v96;
      v70 = v91;
      v71 = v92;
      _ViewInputs.materialSubstrate.getter(&v68 + 8);
      *v66 = v33;
      *&v66[4] = v56;
      *&v66[8] = v55;
      *&v66[12] = v51;
      *&v66[16] = v34;
      *&v66[20] = v35;
      *&v66[24] = v36;
      v67 = v37;
      *&v68 = __PAIR64__(v38, v39);
      HIDWORD(v68) = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for Material?(0, &lazy cache variable for type metadata for GlassEffectContextResolvedData.Data?, &unk_1F00B3620, MEMORY[0x1E69E6720]);
      lazy protocol witness table accessor for type GlassEffectContextResolvedData and conformance GlassEffectContextResolvedData();
      v40 = Attribute.init<A>(body:value:flags:update:)();
      v41 = *(v20 + 16);
      v42 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v62[0]);
      v43 = v60;
      if ((v42 & 0x100000000) == 0)
      {
        v43 = v42;
      }

      v44 = *(Strong + 120);
      *&v63 = __PAIR64__(v40, v58);
      *(&v63 + 1) = __PAIR64__(v35, v34);
      *&v64 = __PAIR64__(v41, DWORD1(v95));
      DWORD2(v64) = v43;
      v65 = v44;
      v70 = v63;
      v71 = v64;
      v72 = v44;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type GlassEffectContextDisplayList and conformance GlassEffectContextDisplayList();

      v45 = Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of MaterialEffectDisplayList(&v63);
      LOBYTE(v70) = 0;
      PreferencesOutputs.subscript.setter(v45, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);

      *v66 = v69[0];
      *&v66[12] = *(v69 + 12);
      v67 = v54;
      v68 = v61;
      v46 = v66;
      goto LABEL_25;
    }

LABEL_29:
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v9, &v70);
    result = AGWeakAttributeGetAttribute();
    if (result == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
      return result;
    }

    v48 = *MEMORY[0x1E698D3F8];
    *v82 = v22;
    v49 = Attribute<A>.subscript.modify(&v70, result);
    v50 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v82);
    (v49)(&v70, 0, v50);
    v27 = v59;
    v28 = v48;
    goto LABEL_17;
  }

  v46 = v97;
LABEL_25:
  outlined destroy of _GraphInputs(v46);
  v72 = v78;
  v73 = v79;
  v74 = v80;
  v75 = v81;
  v70 = v76;
  v71 = v77;
  result = outlined destroy of _ViewInputs(&v70);
  *v57 = v62[0];
  v57[1] = v62[1];
  return result;
}

uint64_t static GlassMaterialEffect._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v98 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = *(a2 + 48);
  v94 = *(a2 + 32);
  v95 = v7;
  v96 = *(a2 + 64);
  v97 = *(a2 + 80);
  v8 = *(a2 + 16);
  *v93 = *a2;
  *&v93[16] = v8;
  v9 = *v93;
  outlined init with copy of _GraphInputs(v93, &v84);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE019GlassContainerCacheF033_7521D6231838360D8883796B4320212FLLV_Tt2g5(v9, &v84);
  Strong = swift_weakLoadStrong();
  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_3(&v84, &lazy cache variable for type metadata for WeakBox<GlassContainerCache>, type metadata accessor for GlassContainerCache, type metadata accessor for WeakBox);
  if (!Strong)
  {
    v47 = outlined destroy of _GraphInputs(v93);
    v86 = v94;
    v87 = v95;
    v88 = v96;
    v89 = v97;
    v84 = *v93;
    v85 = *&v93[16];
    return a3(v47, &v84);
  }

  v57 = a4;
  v58 = a3;
  v53 = v6;
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  v56 = AGGraphCreateOffsetAttribute2();
  v12 = AGGraphCreateOffsetAttribute2();
  type metadata accessor for GlassMaterialContext();
  v13 = swift_allocObject();
  *(v13 + 32) = xmmword_18DD85550;
  *(v13 + 48) = 0;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 16) = *(Strong + 120);
  v86 = v94;
  v87 = v95;
  v88 = v96;
  v89 = v97;
  v84 = *v93;
  v85 = *&v93[16];

  _ViewInputs.materialSubstrate.getter(&v78);
  *(v13 + 24) = v78;
  v14 = *(Strong + 120);
  v55 = v12;
  LODWORD(v84) = v12;
  *(&v84 + 1) = v13;
  v85 = v14;
  LODWORD(v86) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type GlassMaterialContextData.Init and conformance GlassMaterialContextData.Init();

  v15 = Attribute.init<A>(body:value:flags:update:)();

  v16 = specialized static GraphHost.currentHost.getter();
  swift_beginAccess();
  v59 = *(v16 + 64);

  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PlatformSystemKey);
  v17 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE014PlatformSystemV033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt0B5(v9, v84);
  if (v17 && *(v17 + 72) == 1)
  {
    v18 = &static PlatformGlassDefinition.appKit;
  }

  else
  {
    v18 = &static PlatformGlassDefinition.uiKit;
  }

  swift_beginAccess();
  v19 = *v18;
  v20 = *&v93[16];
  swift_beginAccess();
  *&v84 = __PAIR64__(*(v20 + 16), OffsetAttribute2);
  v52 = *&v93[28];
  DWORD2(v84) = *&v93[28];
  *&v85 = Strong;
  *(&v85 + 1) = v19;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  lazy protocol witness table accessor for type GlassEffectMaterial and conformance GlassEffectMaterial();

  v21 = Attribute.init<A>(body:value:flags:update:)();

  v86 = v94;
  v87 = v95;
  v88 = v96;
  v89 = v97;
  v84 = *v93;
  v85 = *&v93[16];
  v80 = v94;
  v81 = v95;
  v82 = v96;
  v83 = v97;
  v78 = *v93;
  v79 = *&v93[16];
  swift_beginAccess();
  outlined init with copy of _ViewInputs(v93, v76);
  LODWORD(v19) = CachedEnvironment.animatedPosition(for:)(&v78);
  swift_endAccess();
  DWORD1(v88) = v19;
  v22 = v87;
  *&v78 = v87;
  v23 = &type metadata for GlassMaterialShapeKey;
  v24 = PreferenceKeys._index(of:)(&type metadata for GlassMaterialShapeKey);

  v25 = *(v22 + 2);
  if (v24 != v25)
  {
    if (v24 >= v25)
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (*&v22[16 * v24 + 32] == &type metadata for GlassMaterialShapeKey)
    {
      goto LABEL_14;
    }
  }

  if (v25 < v24)
  {
    __break(1u);
    goto LABEL_28;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v25 >= *(v22 + 3) >> 1)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v25 + 1, 1, v22);
    *&v87 = v22;
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v24, v24, 1, &type metadata for GlassMaterialShapeKey, &protocol witness table for GlassMaterialShapeKey);
  *&v87 = v22;
LABEL_14:
  LODWORD(v23) = v15;
  v21 = _ViewInputs.updateGlassMaterialContext(context:material:updateSeed:)(v15, v21, v59);
  v76[2] = v86;
  v76[3] = v87;
  v76[4] = v88;
  v77 = v89;
  v76[0] = v84;
  v76[1] = v85;
  v72 = v86;
  v73 = v87;
  v74 = v88;
  v75 = v89;
  v70 = v84;
  v71 = v85;
  v27 = outlined init with copy of _ViewInputs(v76, &v78);
  (v58)(v62, v27, &v70);
  v80 = v72;
  v81 = v73;
  v82 = v74;
  v83 = v75;
  v78 = v70;
  v79 = v71;
  outlined destroy of _ViewInputs(&v78);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v95))
  {
    LODWORD(v25) = lastIdentity + 1;
    lastIdentity = v25;
    LODWORD(v58) = v25;
    if ((BYTE5(v94) & 1) == 0)
    {
      v28 = *MEMORY[0x1E698D3F8];
LABEL_17:
      v51 = v28;
      v29 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA018GlassMaterialShapeI033_62A32D59B8A902A88963544196023CF7LLV_TtB5(v62[0]);
      if ((v29 & 0x100000000) != 0)
      {
        v30 = v28;
      }

      else
      {
        v30 = v29;
      }

      *&v70 = __PAIR64__(v30, v53);
      *(&v70 + 1) = Strong;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type GlassEffectShapeSet and conformance GlassEffectShapeSet();

      v31 = Attribute.init<A>(body:value:flags:update:)();

      LODWORD(v70) = v31;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type _ShapeSet.Wrapper.Init and conformance _ShapeSet.Wrapper.Init();
      v54 = Attribute.init<A>(body:value:flags:update:)();
      v69[0] = *v93;
      *(v69 + 12) = *&v93[12];
      v61 = v94;
      *&v70 = __PAIR64__(v21, v52);
      *(&v70 + 1) = __PAIR64__(v23, v59);
      LOBYTE(v71) = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type GlassEffectContextTransaction and conformance GlassEffectContextTransaction();
      v60 = Attribute.init<A>(body:value:flags:update:)();
      LODWORD(v70) = HIDWORD(v21);
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type GlassEffectContextUnwrappedMaterial and conformance GlassEffectContextUnwrappedMaterial();
      v32 = Attribute.init<A>(body:value:flags:update:)();
      *v90 = v69[0];
      *&v90[12] = *(v69 + 12);
      v91 = v60;
      v92 = v61;
      LODWORD(v70) = v32;
      _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA19GlassContainerCacheC17UnwrappedMaterialV_Tt1B5(&v70, v90);
      v33 = v70;
      v72 = v94;
      v73 = v95;
      v74 = v96;
      v75 = v97;
      v70 = *v93;
      v71 = *&v93[16];
      swift_beginAccess();
      v34 = CachedEnvironment.animatedPosition(for:)(&v70);
      v72 = v94;
      v73 = v95;
      v74 = v96;
      v75 = v97;
      v70 = *v93;
      v71 = *&v93[16];
      v35 = CachedEnvironment.animatedCGSize(for:)(&v70);
      v72 = v94;
      v73 = v95;
      v74 = v96;
      v75 = v97;
      v70 = *v93;
      v71 = *&v93[16];
      v36 = CachedEnvironment.animatedSize(for:)(&v70);
      swift_endAccess();
      v37 = HIDWORD(v95);
      v38 = *(v20 + 16);
      v72 = v94;
      v73 = v95;
      v74 = v96;
      v39 = HIDWORD(v96);
      v75 = v97;
      v70 = *v93;
      v71 = *&v93[16];
      _ViewInputs.materialSubstrate.getter(&v68 + 8);
      *v66 = v33;
      *&v66[4] = v56;
      *&v66[8] = v55;
      *&v66[12] = v54;
      *&v66[16] = v34;
      *&v66[20] = v35;
      *&v66[24] = v36;
      v67 = v37;
      *&v68 = __PAIR64__(v38, v39);
      HIDWORD(v68) = 0;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for Material?(0, &lazy cache variable for type metadata for GlassEffectContextResolvedData.Data?, &unk_1F00B3620, MEMORY[0x1E69E6720]);
      lazy protocol witness table accessor for type GlassEffectContextResolvedData and conformance GlassEffectContextResolvedData();
      v40 = Attribute.init<A>(body:value:flags:update:)();
      v41 = *(v20 + 16);
      v42 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(v62[0]);
      v43 = v51;
      if ((v42 & 0x100000000) == 0)
      {
        v43 = v42;
      }

      v44 = *(Strong + 120);
      *&v63 = __PAIR64__(v40, v58);
      *(&v63 + 1) = __PAIR64__(v35, v34);
      *&v64 = __PAIR64__(v41, DWORD1(v96));
      DWORD2(v64) = v43;
      v65 = v44;
      v70 = v63;
      v71 = v64;
      v72 = v44;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      lazy protocol witness table accessor for type GlassEffectContextDisplayList and conformance GlassEffectContextDisplayList();

      v45 = Attribute.init<A>(body:value:flags:update:)();
      outlined destroy of MaterialEffectDisplayList(&v63);
      LOBYTE(v70) = 0;
      PreferencesOutputs.subscript.setter(v45, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);

      *v66 = v69[0];
      *&v66[12] = *(v69 + 12);
      v67 = v60;
      v68 = v61;
      v46 = v66;
      goto LABEL_25;
    }

LABEL_29:
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(v9, &v70);
    result = AGWeakAttributeGetAttribute();
    v28 = *MEMORY[0x1E698D3F8];
    if (result == *MEMORY[0x1E698D3F8])
    {
      __break(1u);
      return result;
    }

    *v90 = v25;
    v49 = Attribute<A>.subscript.modify(&v70, result);
    v50 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v90);
    (v49)(&v70, 0, v50);
    goto LABEL_17;
  }

  v46 = v93;
LABEL_25:
  outlined destroy of _GraphInputs(v46);
  v72 = v86;
  v73 = v87;
  v74 = v88;
  v75 = v89;
  v70 = v84;
  v71 = v85;
  result = outlined destroy of _ViewInputs(&v70);
  *v57 = v62[0];
  v57[1] = v62[1];
  return result;
}

Swift::Void __swiftcall GlassMaterialContextData.Init.updateValue()()
{
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_5(0, &lazy cache variable for type metadata for GlassEffectBackdropObserver?, v0, type metadata accessor for GlassEffectBackdropObserver, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  if (*Value)
  {
    v3 = *Value;
    v4 = *(v1 + 24);
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v3 = *(v1 + 16);

    v4 = *(v1 + 24);
    if (!v4)
    {
LABEL_7:
      *(*(v1 + 8) + 16) = v3;

      ++*(v1 + 32);
      goto LABEL_8;
    }
  }

  if (v3 != v4)
  {
    goto LABEL_7;
  }

LABEL_8:
  AGGraphSetOutputValue();

  *(v1 + 24) = v3;
}

uint64_t GlassEffectMaterial.updateValue()(__n128 a1)
{
  v2 = v1;
  v80 = *MEMORY[0x1E69E9840];
  v3 = *(v1 + 24);
  if (!v3)
  {
    *__dst = xmmword_18DDA6AB0;
    type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
    return AGGraphSetOutputValue();
  }

  v4 = *(v2 + 16);
  AGGraphRegisterDependency();
  Value = AGGraphGetValue();
  v6 = *(Value + 48);
  v8 = *Value;
  v7 = *(Value + 16);
  *&v70[16] = *(Value + 32);
  v71 = v6;
  v69 = v8;
  *v70 = v7;
  v9 = *(Value + 112);
  v11 = *(Value + 64);
  v10 = *(Value + 80);
  v74 = *(Value + 96);
  v75 = v9;
  v72 = v11;
  v73 = v10;
  v13 = *(Value + 144);
  v12 = *(Value + 160);
  v14 = *(Value + 128);
  v79 = *(Value + 176);
  v77 = v13;
  v78 = v12;
  v76 = v14;
  outlined init with copy of GlassContainer.DisplayMaterial(&v69, __dst);
  v15 = AGGraphGetValue();
  if (*(&v74 + 1) == 1 && *(&v77 + 1) == 1 && v79 == 1 && v4[25] <= 0)
  {
    v29 = *(v15 + 192);
    v30 = *(v29 + 16);
    if (v30)
    {
      v59 = v3;

      swift_beginAccess();
      if (*(v29 + 16))
      {
        v31 = 0;
        v32 = v30 - 1;
        v33 = 32;
        __asm { FMOV            V0.2D, #1.0 }

        v62 = _Q0;
        v60 = v32;
        v61 = v29;
        do
        {
          memcpy(__dst, (v29 + v33), sizeof(__dst));
          v39 = *&__dst[328];
          v40 = v4[14];
          if (!AGSubgraphIsValid())
          {
            goto LABEL_36;
          }

          if (*(v4[19] + 16))
          {
            specialized __RawDictionaryStorage.find<A>(_:)(v39);
            if (v41)
            {
              outlined init with copy of GlassContainer.Entry(__dst, &v63);
              goto LABEL_35;
            }

            v40 = v4[14];
          }

          outlined init with copy of GlassContainer.Entry(__dst, &v63);
          v42 = v40;
          AGGraphClearUpdate();
          v43 = AGSubgraphGetCurrent();
          AGSubgraphSetCurrent();
          v63 = v62;
          v64 = 0;
          v65 = 0;
          v66 = 0;
          v44 = Attribute.init<A>(body:value:flags:update:)();
          AGSubgraphSetCurrent();

          AGGraphSetUpdate();
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v67[0] = v4[19];
          v46 = v67[0];
          v4[19] = 0x8000000000000000;
          v48 = specialized __RawDictionaryStorage.find<A>(_:)(v39);
          v49 = *(v46 + 16);
          v50 = (v47 & 1) == 0;
          v51 = v49 + v50;
          if (__OFADD__(v49, v50))
          {
            __break(1u);
LABEL_43:
            __break(1u);
          }

          v52 = v47;
          if (*(v46 + 24) >= v51)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v55 = v67[0];
              if ((v47 & 1) == 0)
              {
                goto LABEL_32;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              v55 = v67[0];
              if ((v52 & 1) == 0)
              {
                goto LABEL_32;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v51, isUniquelyReferenced_nonNull_native);
            v53 = specialized __RawDictionaryStorage.find<A>(_:)(v39);
            if ((v52 & 1) != (v54 & 1))
            {
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            v48 = v53;
            v55 = v67[0];
            if ((v52 & 1) == 0)
            {
LABEL_32:
              v55[(v48 >> 6) + 8] |= 1 << v48;
              *(v55[6] + 8 * v48) = v39;
              *(v55[7] + 4 * v48) = v44;
              v56 = v55[2];
              _VF = __OFADD__(v56, 1);
              v57 = v56 + 1;
              if (_VF)
              {
                goto LABEL_43;
              }

              v55[2] = v57;
              goto LABEL_34;
            }
          }

          *(v55[7] + 4 * v48) = v44;
LABEL_34:
          v32 = v60;
          v29 = v61;
          v4[19] = v55;
          swift_endAccess();
LABEL_35:
          v58 = *(AGGraphGetValue() + 32);
          outlined destroy of GlassContainer.Entry(__dst);
          if (v58 == 1)
          {

            v3 = v59;
            goto LABEL_6;
          }

LABEL_36:
          if (v32 == v31)
          {
            goto LABEL_39;
          }

          ++v31;
          v33 += 344;
        }

        while (v31 < *(v29 + 16));
      }

      __break(1u);
LABEL_39:

      v3 = v59;
    }

    v16 = *(&v69 + 1);
    v17 = v70[0];
    v19 = *&v70[8];
    v18 = v70[24];
    goto LABEL_7;
  }

LABEL_6:
  v16 = *(&v69 + 1);
  v17 = v70[0];
  v18 = 1;
  v19 = *&v70[8];
LABEL_7:
  v20 = v69;
  *__dst = v69;
  *&__dst[8] = v16;
  __dst[16] = v17;
  *&__dst[24] = v19;
  __dst[40] = v18;
  outlined copy of _Glass.Variant.Role(v69, v16);

  v21 = AGGraphGetValue();
  v23 = *v21;
  v22 = v21[1];
  v67[0] = v23;
  v67[1] = v22;
  v24 = *(v3 + 88);

  v24(&v63, __dst, v67);

  v25 = v63;
  v26 = BYTE8(v63);
  if (BYTE8(v63) == 255)
  {
    v27 = 0;
  }

  else
  {
    v27 = v63;
  }

  if (BYTE8(v63) != 255)
  {
    v26 = *(&v63 + 1) & 0xFFFFFFFF000000FFLL;
  }

  *__dst = v27;
  *&__dst[8] = v26;
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  outlined copy of Material?(v25, BYTE8(v25));
  AGGraphSetOutputValue();
  outlined consume of _Glass.Variant.Role(v20, v16);

  outlined destroy of GlassContainer.DisplayMaterial(&v69);
  outlined consume of Material?(v25, BYTE8(v25));
  return outlined consume of Material?(v25, BYTE8(v25));
}

uint64_t GlassEffectShapeSet.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  Value = AGGraphGetValue();
  v26[0] = *Value;
  v7 = *(Value + 64);
  v9 = *(Value + 16);
  v8 = *(Value + 32);
  v26[3] = *(Value + 48);
  v26[4] = v7;
  v26[1] = v9;
  v26[2] = v8;
  v10 = *(Value + 128);
  v12 = *(Value + 80);
  v11 = *(Value + 96);
  v28 = *(Value + 112);
  v29 = v10;
  v26[5] = v12;
  v27 = v11;
  v14 = *(Value + 160);
  v13 = *(Value + 176);
  v15 = *(Value + 144);
  v33 = *(Value + 192);
  v31 = v14;
  v32 = v13;
  v30 = v15;
  v16 = *(&v13 + 1);
  v25 = *(&v13 + 1);
  v17 = *&v26[0];
  v18 = DWORD2(v26[0]);
  v23 = v26[0];
  v24 = MEMORY[0x1E69E7CC0];
  v22 = xmmword_18DDAA050;
  outlined init with copy of GlassContainer.Effect(v26, v21);
  outlined init with copy of GlassContainer.DisplayMaterial(v26, v21);
  outlined copy of _Glass.Variant.Role(v17, v18);
  LOBYTE(v17) = specialized static _Glass.Variant.== infix(_:_:)(&v23, &v22);
  outlined consume of _Glass.Variant.Role(v22, DWORD2(v22));
  outlined consume of _Glass.Variant.Role(v23, DWORD2(v23));
  if (v17 & 1) != 0 && *(&v27 + 1) == 1 && *(&v30 + 1) == 1 && (v32)
  {
    outlined destroy of GlassContainer.DisplayMaterial(v26);
    result = outlined destroy of GlassContainer.Effect(v26);
    v20 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    GlassEffectShapeSet.updateShapeSet(_:)(&v24, a1, a2);
    outlined destroy of GlassContainer.DisplayMaterial(v26);
    result = outlined destroy of GlassContainer.Effect(v26);
    v20 = v24;
    v16 = v25;
  }

  *a3 = v20;
  a3[1] = v16;
  return result;
}

void GlassEffectShapeSet.updateShapeSet(_:)(char **a1, unint64_t a2, uint64_t a3)
{
  v85 = *MEMORY[0x1E69E9840];
  v4 = HIDWORD(a2);
  Value = AGGraphGetValue();
  v6 = *(Value + 232);
  v71 = *(Value + 216);
  v72 = v6;
  v73 = *(Value + 248);
  v74 = *(Value + 264);
  if (*MEMORY[0x1E698D3F8] == v4)
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v8)
    {
LABEL_3:
      swift_beginAccess();
      if (!*(v7 + 16))
      {
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
      }

      v9 = 0;
      v10 = v8 - 1;
      v11 = 32;
      v61 = v10;
      while (1)
      {
        memcpy(__dst, (v7 + v11), sizeof(__dst));
        if (__dst[136] == 1 && (__dst[137] & 1) == 0)
        {
          break;
        }

LABEL_38:
        if (v10 == v9)
        {

          return;
        }

        ++v9;
        v11 += 360;
        if (v9 >= *(v7 + 16))
        {
          goto LABEL_48;
        }
      }

      v12 = *&__dst[352];
      v65 = *&__dst[328];
      v13 = *(a3 + 112);
      if (!AGSubgraphIsValid())
      {
        outlined init with copy of GlassMaterialShape(__dst, &v78);
        outlined init with copy of GlassContainer.Entry(__dst, &v78);

        goto LABEL_25;
      }

      if (*(*(a3 + 160) + 16))
      {
        specialized __RawDictionaryStorage.find<A>(_:)(v65);
        if (v14)
        {
          outlined init with copy of GlassMaterialShape(__dst, &v78);
          outlined init with copy of GlassContainer.Entry(__dst, &v78);

          goto LABEL_23;
        }

        v13 = *(a3 + 112);
      }

      outlined init with copy of GlassMaterialShape(__dst, &v78);
      outlined init with copy of GlassContainer.Entry(__dst, &v78);

      v15 = v13;
      AGGraphClearUpdate();
      v16 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      LOBYTE(v78) = 0;
      v17 = Attribute.init<A>(body:value:flags:update:)();
      AGSubgraphSetCurrent();

      AGGraphSetUpdate();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75[0] = *(a3 + 160);
      v19 = v75[0];
      *(a3 + 160) = 0x8000000000000000;
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v65);
      v22 = *(v19 + 16);
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_49;
      }

      v25 = v20;
      if (*(v19 + 24) < v24)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
        v26 = specialized __RawDictionaryStorage.find<A>(_:)(v65);
        if ((v25 & 1) != (v27 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return;
        }

        v21 = v26;
        v28 = v75[0];
        if ((v25 & 1) == 0)
        {
          goto LABEL_17;
        }

LABEL_21:
        *(v28[7] + 4 * v21) = v17;
LABEL_22:
        *(a3 + 160) = v28;
        swift_endAccess();
LABEL_23:
        if (*AGGraphGetValue())
        {

          outlined destroy of GlassContainer.Entry(__dst);
          outlined destroy of GlassMaterialShape(__dst);
LABEL_37:
          v10 = v61;
          goto LABEL_38;
        }

LABEL_25:
        specialized static Update.begin()();
        v78 = v71;
        v79 = v72;
        v80 = v73;
        v81 = v74;
        v32 = GeometryProxy.placementContext.getter(v76);
        if (v77)
        {
          (*(*v12 + 88))(&v78, v32);
          v33 = v78;
          v34 = v79;
        }

        else
        {
          InputValue = AGGraphGetInputValue();
          v36 = *InputValue;
          v37 = *(InputValue + 8);
          v38 = *(InputValue + 16);
          v39 = *(InputValue + 24);
          v40 = *(InputValue + 32);
          v41 = *(InputValue + 40);
          type metadata accessor for CGPoint(0);

          v42 = AGGraphGetInputValue();
          v43 = *v42;
          v44 = *(v42 + 8);
          v45 = v40 - (*v42 - v38);
          v75[0] = v36;
          v75[1] = v37;
          *&v75[2] = v43;
          *&v75[3] = v44;
          *&v75[4] = v45;
          *&v75[5] = v41 - (v44 - v39);
          (*(*v12 + 96))(v66, v75);

          v33 = v66[0];
          v34 = v66[1];
        }

        v63 = v34;
        v62 = v33;
        v46 = *&__dst[344];
        v83[0] = *__dst;
        v83[1] = *&__dst[16];
        v84 = __dst[32];
        static Update.end()();
        type metadata accessor for _AnyShapeBox<_SizedShape<OffsetShape<AnyShape>>>(0);
        v47 = swift_allocObject();
        *(v47 + 16) = v46;
        *(v47 + 40) = v63;
        *(v47 + 24) = v62;
        type metadata accessor for _SizedShape<OffsetShape<AnyShape>>(0);
        swift_beginAccess();
        v48 = *(a3 + 184);
        v49 = *(v48 + 16);

        if (v49 && (v50 = specialized __RawDictionaryStorage.find<A>(_:)(v83), (v51 & 1) != 0))
        {
          v52 = *(v48 + 56) + 32 * v50;
          v53 = *v52;
          v54 = *(v52 + 24);
          v55 = *(a3 + 192);
          v67 = *v52;
          v68 = *(v52 + 8);
          v69 = v54;
          v70 = v55;
          v56 = swift_isUniquelyReferenced_nonNull_native();
          v75[0] = *(a3 + 184);
          *(a3 + 184) = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v67, v83, v56);
          *(a3 + 184) = v75[0];
          swift_endAccess();
        }

        else
        {
          swift_endAccess();
          v53 = 0;
        }

        v57 = *a1;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
        }

        v59 = *(v57 + 2);
        v58 = *(v57 + 3);
        if (v59 >= v58 >> 1)
        {
          v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v57);
        }

        outlined destroy of GlassContainer.Entry(__dst);
        outlined destroy of GlassMaterialShape(__dst);
        *(v57 + 2) = v59 + 1;
        v60 = &v57[32 * v59];
        *(v60 + 4) = v47;
        *(v60 + 5) = v65;
        *(v60 + 6) = v53;
        v60[56] = 0;
        *(v60 + 15) = 0;
        *a1 = v57;
        goto LABEL_37;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v28 = v75[0];
        if (v20)
        {
          goto LABEL_21;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        v28 = v75[0];
        if (v25)
        {
          goto LABEL_21;
        }
      }

LABEL_17:
      v28[(v21 >> 6) + 8] |= 1 << v21;
      *(v28[6] + 8 * v21) = v65;
      *(v28[7] + 4 * v21) = v17;
      v29 = v28[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_50;
      }

      v28[2] = v31;
      goto LABEL_22;
    }
  }

  else
  {
    type metadata accessor for Material?(0, &lazy cache variable for type metadata for [GlassMaterialShape], &type metadata for GlassMaterialShape, MEMORY[0x1E69E62F8]);
    v7 = *AGGraphGetValue();

    v8 = *(v7 + 16);
    if (v8)
    {
      goto LABEL_3;
    }
  }
}

uint64_t GlassEffectContextEnvironment.updateValue()()
{
  v11 = *MEMORY[0x1E69E9840];
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v1 = Value[1];
  if (*(Value + 8) == 0xFF)
  {
    *v10 = *AGGraphGetValue();
    return AGGraphSetOutputValue();
  }

  else
  {
    v3 = *Value;
    v4 = Value[1];
    outlined copy of Material.ID(*Value, v1);
    v5 = AGGraphGetValue();
    v6 = *v5;
    v7 = v5[1];
    v10[0] = *v5;
    v10[1] = v7;

    AGGraphGetValue();
    if (v4 == 1)
    {
      *&v9 = v3;
      BYTE8(v9) = 1;
      HIDWORD(v9) = HIDWORD(v1);
      v8 = *(*v3 + 112);
      outlined copy of Material.ID(v3, 1u);
      v8(v10, &v9);
      outlined consume of Material?(v3, v1);
    }

    else
    {
      outlined copy of Material?(v3, v1);

      outlined copy of Material?(v3, v1);

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(v10, v3, v1 & 0xFFFFFFFF000000FFLL);

      outlined consume of Material?(v3, v1);
      if (v7)
      {
        _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v6, v10[0]);
      }

      outlined consume of Material?(v3, v1);
    }

    v9 = *v10;

    AGGraphSetOutputValue();
    outlined consume of Material?(v3, v1);
  }
}

uint64_t GlassEffectContextState.updateValue()()
{
  v55 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v44[-v7];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44[-v9];
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_5(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, 255, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v47 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v44[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v44[-v17];
  if (one-time initialization token for _current != -1)
  {
    swift_once();
  }

  v19 = static ObservationCenter._current;
  swift_beginAccess();
  v20 = pthread_getspecific(v19[2]);
  if (!v20)
  {
    v21 = swift_slowAlloc();
    pthread_setspecific(v19[2], v21);
    v54 = type metadata accessor for ObservationCenter();
    v52 = v19[3];
    outlined init with take of Any(&v52, v21);

    v20 = v21;
  }

  outlined init with copy of Any(v20, &v52);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v22 = v51;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_22:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15[2] + 1, 1, v15);
    *(v22 + 24) = v15;
    goto LABEL_9;
  }

  v1 = CurrentAttribute;
  v49 = v18;
  swift_beginAccess();
  v46 = *(v22 + 24);
  *(v22 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v25 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  closure #1 in GlassEffectContextState.updateValue()(v50, &v52);
  *(StatusReg + 848) = v25;
  v45 = v52;
  v26 = v15;
  v27 = v49;
  outlined init with take of ObservationTracking._AccessList?(v26, v49);
  v28 = v47;
  outlined init with copy of ObservationTracking._AccessList?(v27, v47);
  if ((*(v3 + 48))(v28, 1, v2) == 1)
  {
    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_3(v27, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
    v29 = v28;
    goto LABEL_12;
  }

  v0 = v10;
  v47 = *(v3 + 32);
  (v47)(v10, v28, v2);
  (*(v3 + 16))(v48, v10, v2);
  v15 = *(v22 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v22 + 24) = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_9:
  v32 = v15[2];
  v31 = v15[3];
  if (v32 >= v31 >> 1)
  {
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v15);
  }

  v15[2] = v32 + 1;
  (v47)(v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v32, v48, v2);
  *(v22 + 24) = v15;
  (*(v3 + 8))(v0, v2);
  v29 = v49;
LABEL_12:
  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_3(v29, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v33 = *(v22 + 24);
  v34 = *(v33 + 16);
  if (v34)
  {
    v37 = *(v3 + 16);
    v35 = v3 + 16;
    v36 = v37;
    v38 = v33 + ((*(v35 + 64) + 32) & ~*(v35 + 64));
    v39 = *(v35 + 56);
    v49 = *(v22 + 24);

    do
    {
      v36(v5, v38, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v1, v5);
      (*(v35 - 8))(v5, v2);
      v38 += v39;
      --v34;
    }

    while (v34);

    v33 = *(v22 + 24);
  }

  *(v22 + 24) = v46;

  if ((v45 & 1) != 0 || (result = AGGraphGetOutputValue()) == 0)
  {
    Value = AGGraphGetValue();
    v42 = *Value;
    if (*(*Value + 40) == 1)
    {
      __break(1u);
      result = _s11Observation0A8TrackingV11_AccessListVSgWOhTm_3(v33, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
      __break(1u);
    }

    else
    {
      v43 = *(v42 + 64);
      v52 = *(*Value + 40);
      v53 = *(v42 + 48);
      LODWORD(v54) = v43;
      return AGGraphSetOutputValue();
    }
  }

  return result;
}

uint64_t closure #1 in GlassEffectContextState.updateValue()@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  AGGraphGetValue();
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);

  Value = AGGraphGetValue();
  v5 = Value[1];
  v13 = *Value;
  v14 = v5;
  outlined copy of Material?(v13, v5);
  v6 = AGGraphGetValue();
  v8 = *v6;
  v7 = v6[1];
  v12[0] = v8;
  v12[1] = v7;
  v11 = a1;

  LOBYTE(a1) = GlassMaterialContext.updateState(material:environment:transaction:updateSeed:)(&v13, v12, partial apply for closure #1 in closure #1 in GlassEffectContextState.updateValue(), v10, partial apply for closure #2 in closure #1 in GlassEffectContextState.updateValue());

  result = outlined consume of Material?(v13, v14);
  *a2 = a1 & 1;
  return result;
}

void GlassEffectContextUpdatedMaterial.value.getter(uint64_t *a3@<X8>)
{
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v5 = Value[1];
  if (*(Value + 8) == 0xFF)
  {
    v6 = AGGraphGetValue();
    v8 = *v6;
    v7 = v6[1];
    *a3 = *v6;
    a3[1] = v7;

    outlined copy of Material?(v8, v7);
  }

  else
  {
    v9 = *Value;
    v10 = Value[1];
    v11 = HIDWORD(v5);
    outlined copy of Material.ID(*Value, v5);
    AGGraphGetValue();
    v12 = AGGraphGetValue();
    if (v10 == 1)
    {
      v13 = *v12;
      if ((*(*v9 + 120))())
      {
        v15 = v13;
        v14 = *(*v9 + 136);

        swift_retain_n();

        v14(&v16, &v15);
        outlined consume of Material?(v9, v5);

        v9 = v16;
        LOBYTE(v5) = v17;
        v11 = v18;
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }

    *a3 = v9;
    a3[1] = v5 | (v11 << 32);
  }
}

double GlassContainerCache.UnwrappedMaterial.animatableData.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  if (v3 == 255)
  {
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, a1);
  }

  else
  {
    if (v3 == 1 && (v5 = *v1, v6 = *(*v5 + 144), v7 = , v6(v9, v7), outlined consume of Material?(v5, v3), *&v9[0]))
    {
      v11 = v9[0];
      v12 = v9[1];
      v13 = v10;
    }

    else
    {
      if (one-time initialization token for empty != -1)
      {
        swift_once();
      }

      outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, &v11);
    }

    result = *&v11;
    v8 = v12;
    *a1 = v11;
    *(a1 + 16) = v8;
    *(a1 + 32) = v13;
  }

  return result;
}

uint64_t GlassContainerCache.UnwrappedMaterial.animatableData.setter(void *a1)
{
  if (v1[8] == 0xFF)
  {

    return outlined destroy of _AnyAnimatableData(a1);
  }

  else
  {
    outlined init with copy of _AnyAnimatableData(a1, v8);
    if (v1[8] == 1)
    {
      v4 = *v1;
      v5 = *(**v1 + 152);

      v6 = v1;
      v7 = v5(v8);
      outlined consume of Material.ID(v4, 1u);
      outlined destroy of _AnyAnimatableData(a1);
      outlined destroy of _AnyAnimatableData(v8);
      result = outlined consume of Material.ID(*v6, v6[8]);
      *v6 = v7;
      v6[8] = 1;
    }

    else
    {
      outlined destroy of _AnyAnimatableData(a1);
      return outlined destroy of _AnyAnimatableData(v8);
    }
  }

  return result;
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance GlassContainerCache.UnwrappedMaterial(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = v1[1];
  if (v5 == 255)
  {
    *(v3 + 72) = 0;
    *(v3 + 56) = 0u;
    *(v3 + 40) = 0u;
    if (one-time initialization token for empty != -1)
    {
      swift_once();
    }

    outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, v4);
    if (*(v4 + 40))
    {
      outlined destroy of _AnyAnimatableData?(v4 + 40);
    }
  }

  else
  {
    if (v5 == 1 && (v6 = *v1, v7 = *(*v6 + 144), v8 = outlined copy of Material.ID(v6, 1u), v7(v12, v8), outlined consume of Material?(v6, v5), *&v12[0]))
    {
      v9 = v12[1];
      *(v4 + 40) = v12[0];
      *(v4 + 56) = v9;
      *(v4 + 72) = v13;
    }

    else
    {
      if (one-time initialization token for empty != -1)
      {
        swift_once();
      }

      outlined init with copy of _AnyAnimatableData(&static _AnyAnimatableData.empty, (v4 + 40));
    }

    v10 = *(v4 + 56);
    *v4 = *(v4 + 40);
    *(v4 + 16) = v10;
    *(v4 + 32) = *(v4 + 72);
  }

  return protocol witness for Animatable.animatableData.modify in conformance GlassContainerCache.UnwrappedMaterial;
}

void protocol witness for Animatable.animatableData.modify in conformance GlassContainerCache.UnwrappedMaterial(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[10];
  if (a2)
  {
    outlined init with copy of _AnyAnimatableData(*a1, v2 + 5);
    GlassContainerCache.UnwrappedMaterial.animatableData.setter(v2 + 5);
  }

  else if (*(v3 + 8) != 0xFF)
  {
    outlined init with copy of _AnyAnimatableData(*a1, v2 + 5);
    if (*(v3 + 8) == 1)
    {
      v4 = v2[10];
      v5 = *v4;
      v6 = *(**v4 + 152);

      v7 = v6(v2 + 5);
      outlined consume of Material.ID(v5, 1u);
      outlined destroy of _AnyAnimatableData((v2 + 5));
      outlined destroy of _AnyAnimatableData(v2);
      outlined consume of Material.ID(*v4, *(v4 + 8));
      *v4 = v7;
      *(v4 + 8) = 1;
      goto LABEL_8;
    }

    outlined destroy of _AnyAnimatableData((v2 + 5));
  }

  outlined destroy of _AnyAnimatableData(v2);
LABEL_8:

  free(v2);
}

uint64_t protocol witness for Rule.value.getter in conformance GlassEffectContextUnwrappedMaterial@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for Material?, &type metadata for Material, MEMORY[0x1E69E6720]);
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = *Value;
  a1[1] = v3;

  return outlined copy of Material?(v4, v3);
}

void *GlassEffectContextTransaction.value.getter(unint64_t a1, unint64_t a2, char a3)
{
  v4 = *AGGraphGetValue();

  AGGraphGetValue();
  Value = AGGraphGetValue();
  v6 = *(Value + 8);
  v7 = *(Value + 16);
  v8 = *(Value + 24);

  if (*AGGraphGetValue() != v8)
  {
LABEL_12:

    return v4;
  }

  if (a3)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4)
  {
    if (v9)
    {
      if (v4[3])
      {
        _s7SwiftUI12TypedElement33_D64CE6C88E7413721C59A34C0C940F2CLLCyAA8EmptyKeyACLLVGMaTm_1(0, &lazy cache variable for type metadata for TypedElement<EmptyKey>, &type metadata for EmptyKey, &protocol witness table for EmptyKey, type metadata accessor for TypedElement);
        swift_allocObject();
        swift_retain_n();

        v10.value = PropertyList.Element.init(keyType:before:after:)(&type metadata for EmptyKey, v9, v4).value;
      }

      else
      {
        v11 = v4[4];
        v12 = *(*v4 + 216);

        v10.value = v12(v13, v11);
      }

      v4 = v10.value;
    }

    goto LABEL_12;
  }

  return v9;
}

void *protocol witness for Rule.value.getter in conformance GlassEffectContextTransaction@<X0>(void *a1@<X8>)
{
  result = GlassEffectContextTransaction.value.getter(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  return result;
}

void GlassEffectContextResolvedData.updateValue()()
{
  v96 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v72 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v72 - v10);
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_5(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, 255, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v72 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v72 - v19;
  Value = AGGraphGetValue();
  v22 = Value[1];
  if (*(Value + 8) == 0xFF)
  {
    type metadata accessor for Material?(0, &lazy cache variable for type metadata for GlassEffectContextResolvedData.Data?, &unk_1F00B3620, MEMORY[0x1E69E6720]);
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    AGGraphSetOutputValue();
    return;
  }

  v82 = v14;
  v84 = v20;
  v23 = *Value;
  LODWORD(v85) = *(v0 + 44) + 1;
  *(v0 + 44) = v85;
  if (AGGraphGetCurrentAttribute() == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    LODWORD(v81) = *MEMORY[0x1E698D3F8];
    v73 = v17;
    v74 = v8;
    v75 = v11;
    v83 = v3;
    v86 = v23;
    v87 = v22;
    outlined copy of Material?(v23, v22);
    v24 = AGCreateWeakAttribute();
    v25 = v24;
    v79 = HIDWORD(v24);
    v26 = AGCreateWeakAttribute();
    v88 = v0;
    v27 = v26;
    v78 = HIDWORD(v26);
    v28 = AGCreateWeakAttribute();
    v29 = v28;
    v77 = HIDWORD(v28);
    v30 = AGCreateWeakAttribute();
    v31 = v30;
    v76 = HIDWORD(v30);
    v8 = AGCreateWeakAttribute();
    v32 = AGCreateWeakAttribute();
    v33 = v32;
    v34 = HIDWORD(v32);
    v80 = _threadGeometryProxyData();
    *&v92 = __PAIR64__(v79, v25);
    *(&v92 + 1) = __PAIR64__(v78, v27);
    v22 = v88;
    *&v93 = __PAIR64__(v77, v29);
    *(&v93 + 1) = __PAIR64__(v76, v31);
    *&v94 = v8;
    *(&v94 + 1) = __PAIR64__(v34, v33);
    v95 = v85;
    _setThreadGeometryProxyData();
    v35 = AGGraphGetValue();
    v36 = v35[1];
    v89 = *v35;
    v90 = v36;
    type metadata accessor for CGSize(0);
    v11 = v37;

    v38 = AGGraphGetValue();
    _ShapeSet.Wrapper.pathSet(in:)(v91, *v38, v38[1]);

    _setThreadGeometryProxyData();
    v85 = v91[0];
    v1 = *&v91[1];
    if (one-time initialization token for _current == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v39 = static ObservationCenter._current;
  swift_beginAccess();
  v40 = pthread_getspecific(v39[2]);
  v41 = v83;
  if (!v40)
  {
    v42 = swift_slowAlloc();
    pthread_setspecific(v39[2], v42);
    *(&v93 + 1) = type metadata accessor for ObservationCenter();
    v39 = v39[3];
    *&v92 = v39;
    outlined init with take of Any(&v92, v42);

    v40 = v42;
  }

  outlined init with copy of Any(v40, &v92);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v43 = v89;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == v81)
  {
    __break(1u);
    goto LABEL_22;
  }

  v8 = CurrentAttribute;
  swift_beginAccess();
  v78 = *(v43 + 24);
  *(v43 + 24) = MEMORY[0x1E69E7CC0];
  v45 = v73;
  (*(v41 + 56))(v73, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v47 = *(StatusReg + 848);
  *(StatusReg + 848) = v45;
  closure #2 in GlassEffectContextResolvedData.updateValue()(v86, v87 & 0xFFFFFFFF000000FFLL, v22, v85, &v92, v1);
  *(StatusReg + 848) = v47;
  v80 = v92;
  v81 = BYTE8(v92);
  v48 = HIDWORD(v92);
  v49 = v84;
  outlined init with take of ObservationTracking._AccessList?(v45, v84);
  v50 = v82;
  outlined init with copy of ObservationTracking._AccessList?(v49, v82);
  v51 = (*(v41 + 48))(v50, 1, v2);
  v79 = v48;
  if (v51 != 1)
  {
    v53 = v50;
    v39 = *(v41 + 32);
    v54 = v75;
    (v39)(v75, v53, v2);
    (*(v41 + 16))(v74, v54, v2);
    v11 = *(v43 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v43 + 24) = v11;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_11:
      v57 = v11[2];
      v56 = v11[3];
      if (v57 >= v56 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v11);
      }

      v11[2] = v57 + 1;
      v58 = v83;
      (v39)(v11 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v83 + 72) * v57, v74, v2);
      v41 = v58;
      *(v43 + 24) = v11;
      (*(v58 + 8))(v75, v2);
      v52 = v84;
      goto LABEL_14;
    }

LABEL_22:
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11[2] + 1, 1, v11);
    *(v43 + 24) = v11;
    goto LABEL_11;
  }

  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_3(v49, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v52 = v50;
LABEL_14:
  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_3(v52, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v59 = *(v43 + 24);
  v60 = *(v59 + 16);
  if (v60)
  {
    v63 = *(v41 + 16);
    v62 = v41 + 16;
    v61 = v63;
    v64 = v59 + ((*(v62 + 64) + 32) & ~*(v62 + 64));
    v65 = *(v62 + 56);
    v84 = *(v43 + 24);

    do
    {
      v61(v5, v64, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v8, v5);
      (*(v62 - 8))(v5, v2);
      v64 += v65;
      --v60;
    }

    while (v60);
  }

  *(v43 + 24) = v78;

  v66 = MEMORY[0x1E69E6720];
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for MaterialBackdropProxy?, &type metadata for MaterialBackdropProxy, MEMORY[0x1E69E6720]);
  v67 = v80;
  v68 = v81;
  outlined copy of Material.ID(v80, v81);
  v69 = *AGGraphGetValue();
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_5(0, &lazy cache variable for type metadata for GlassEffectBackdropObserver?, v70, type metadata accessor for GlassEffectBackdropObserver, MEMORY[0x1E69E6720]);

  v71 = *AGGraphGetValue();
  *&v92 = v85;
  *(&v92 + 1) = v1;
  *&v93 = v67;
  *(&v93 + 1) = v68 | (v79 << 32);
  *&v94 = v69;
  *(&v94 + 1) = v71;
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for GlassEffectContextResolvedData.Data?, &unk_1F00B3620, v66);

  AGGraphSetOutputValue();
  outlined consume of Material?(v86, v87);
  outlined consume of Material.ID(v67, v68);

  outlined consume of Material.ID(v67, v68);
}

void closure #2 in GlassEffectContextResolvedData.updateValue()(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v9 = a2;
  v12 = HIDWORD(a2);
  Value = AGGraphGetValue();
  v14 = *Value;
  v15 = Value[1];
  v16 = *(a3 + 40);
  *&v39 = *Value;
  *(&v39 + 1) = v15;
  *&v37[0] = a1;
  BYTE8(v37[0]) = v9;
  HIDWORD(v37[0]) = v12;

  v17 = EnvironmentValues.materialProvider(for:)(v37);
  if (v17)
  {
    v18 = v17;
    *&v37[0] = a4;
    *(v37 + 1) = a6;
    outlined copy of Material.ID(a1, v9);

    Material.ShapeMetrics.init(_:)(v37, &v39);
    v19 = v39;
    v20 = v40;
    if (*&v39 > v40)
    {
      __break(1u);
    }

    else
    {
      v25 = *(&v39 + 1);
      v32 = 0;
      v31 = 0;
      *&v33 = v14;
      *(&v33 + 1) = v15;
      LOBYTE(v34) = 3;
      v21 = v16;
      BYTE1(v34) = v16;
      *(&v34 + 1) = v39;
      *&v35 = v40;
      BYTE8(v35) = 0;
      *v36 = v39;
      *&v36[16] = v40;
      v36[24] = 0;
      v28 = v35;
      v29[0] = v39;
      *(v29 + 9) = *&v36[9];
      v26 = v33;
      v27 = v34;
      v22 = *(*v18 + 80);
      outlined init with copy of Material.Context(&v33, &v39);
      v22(&v30, &v26);

      v37[2] = v28;
      v38[0] = v29[0];
      *(v38 + 9) = *(v29 + 9);
      v37[0] = v26;
      v37[1] = v27;
      outlined destroy of Material.Context(v37);
      *&v39 = v14;
      *(&v39 + 1) = v15;
      LOBYTE(v40) = 3;
      BYTE1(v40) = v21;
      v41 = v19;
      v42 = v20;
      v43 = 0;
      v44 = v19;
      v45 = v25;
      v46 = v20;
      v47 = 0;
      outlined destroy of Material.Context(&v39);
      v23 = v30;
      outlined consume of Material.ID(a1, v9);
      *a5 = v23;
      *(a5 + 8) = 2;
      *(a5 + 12) = v12;
      outlined copy of Material.ID(v23, 2u);
      outlined consume of Material.ID(v23, 2u);
    }
  }

  else
  {
    *&v39 = v14;
    *(&v39 + 1) = v15;
    v24 = specialized Material.ResolvedMaterial.Flags.init(environment:)(&v39);
    *a5 = a1;
    *(a5 + 8) = v9;
    *(a5 + 12) = v24 | v12;
    outlined copy of Material.ID(a1, v9);
  }
}

void GlassEffectContextDisplayList.updateValue()()
{
  v1 = v0;
  v112 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E7CC0];
  if (v0[6] == *MEMORY[0x1E698D3F8])
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    Value = AGGraphGetValue();
    v2 = *Value;
    v3 = *(Value + 8);
    v4 = *(Value + 12);
  }

  v100 = v2;
  v101 = v3;
  v102 = v4;
  type metadata accessor for CGPoint(0);
  v6 = AGGraphGetValue();
  v7 = *v6;
  v8 = v6[1];
  v9 = AGGraphGetValue();
  v10 = v7 - *v9;
  v11 = v8 - v9[1];
  v12 = ++static DisplayList.Version.lastValue;
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for GlassEffectContextResolvedData.Data?, &unk_1F00B3620, MEMORY[0x1E69E6720]);
  v13 = AGGraphGetValue();
  v92 = *v13;
  if (!*v13)
  {
    *&__src[0] = v12;
    DisplayList.translate(by:version:)(__PAIR128__(*&v11, *&v10), __src);
    *&__src[0] = v100;
    WORD4(__src[0]) = v101;
    HIDWORD(__src[0]) = v102;
    AGGraphSetOutputValue();
LABEL_53:

    return;
  }

  v93 = v4;
  v15 = v13[1];
  v14 = v13[2];
  v16 = v13[3];
  v17 = v13[4];
  v18 = v13[5];
  v88 = v15;
  v89 = v17;
  v90 = v16;
  v91 = v14;
  if (v16 != 2)
  {
LABEL_8:
    v20 = HIDWORD(v16);
    *&v110[72] = 0x20000000;
    v111 = 0;
    memset(v110, 0, 72);
    v21 = v16;
    v22 = v14;
    type metadata accessor for CGSize(0);
    v23 = v92;
    outlined copy of GlassEffectContextResolvedData.Data?(v92, v15, v22, v21, v17, v18);

    v24 = AGGraphGetValue();
    if (v12)
    {
      v25 = (2 * ((33 * (v12 >> 16)) ^ v12)) | 1;
    }

    else
    {
      LOWORD(v25) = 0;
    }

    v26 = MEMORY[0x1E69E7CC0];
    v27 = *v24;
    v28 = v24[1];
    v29 = *v0;
    v30 = v0[5];
    *&__src[9] = 0;
    DWORD2(__src[9]) = 0;
    v31 = v91;
    if (one-time initialization token for normal != -1)
    {
      swift_once();
      v31 = v91;
    }

    v32 = static GraphicsBlendMode.normal;
    v33 = byte_1ED52F818;
    *(&__src[15] + 1) = static GraphicsBlendMode.normal;
    LOBYTE(__src[16]) = byte_1ED52F818;
    DWORD1(__src[16]) = 1065353216;
    BYTE8(__src[16]) = 0;
    *&__src[0] = v92;
    *(&__src[0] + 1) = v88;
    *&__src[4] = 0;
    DWORD2(__src[6]) = 0x20000000;
    WORD6(__src[6]) = v25;
    *&__src[7] = v10;
    *(&__src[7] + 1) = v11;
    *&__src[8] = v27;
    *(&__src[8] + 1) = v28;
    *&__src[10] = v10;
    *(&__src[10] + 1) = v11;
    *&__src[11] = v27;
    *(&__src[11] + 1) = v28;
    __src[12] = v12;
    __src[13] = 0uLL;
    *&__src[14] = 3221225472;
    DWORD2(__src[14]) = v29;
    BYTE12(__src[14]) = 0;
    LODWORD(__src[15]) = v30;
    v96 = v26;
    *&__dst[0] = v31;
    BYTE8(__dst[0]) = v90;
    HIDWORD(__dst[0]) = v20;
    BYTE5(__dst[5]) = 3;
    DWORD2(__dst[5]) = 1065353216;
    *&__dst[6] = 0;
    BYTE8(__dst[6]) = -1;
    *&__dst[7] = v26;
    LOBYTE(v104) = 0;
    outlined copy of Material.ID(v31, v90);
    outlined copy of GraphicsBlendMode(v32, v33);
    _ShapeStyle_Pack.subscript.setter(__dst, &v104, 0);
    LOBYTE(__dst[0]) = 0;
    specialized _ShapeStyle_RenderedShape.renderItem(name:styles:layers:)(__dst, v110, __src, &v96);
    LOBYTE(__dst[0]) = 0;
    _ShapeStyle_RenderedLayers.commit(shape:options:)(__src, __dst, &v97);
    *&__dst[0] = v12;
    DisplayList.translate(by:version:)(__PAIR128__(*&v11, *&v10), __dst);
    v34 = *(v100 + 16);
    if (v34)
    {
      v35 = 0;
      v94 = v100 + 32;
      v36 = v97;
      while (1)
      {
        v38 = (v94 + 80 * v35);
        v39 = *(v38 + 60);
        v40 = v38[3];
        v41 = v38[1];
        __dst[2] = v38[2];
        __dst[3] = v40;
        *(&__dst[3] + 12) = v39;
        __dst[0] = *v38;
        __dst[1] = v41;
        v42 = *(&__dst[2] + 1);
        v44 = v40;
        v43 = v39 >> 32;
        v45 = DWORD1(v39) >> 30;
        if (DWORD1(v39) >> 30 == 3 && !(*&__dst[3] | *(&__dst[2] + 1) | *(&__dst[3] + 1)) && *&__dst[4] == 3221225472)
        {
          goto LABEL_18;
        }

        outlined init with copy of DisplayList.Item(__dst, &v104);
        outlined init with copy of DisplayList.Item(__dst, &v104);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
        }

        v47 = *(v36 + 2);
        v46 = *(v36 + 3);
        if (v47 >= v46 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v36);
        }

        *(v36 + 2) = v47 + 1;
        v48 = &v36[80 * v47];
        *(v48 + 2) = __dst[0];
        v49 = __dst[1];
        v50 = __dst[2];
        v51 = __dst[3];
        *(v48 + 92) = *(&__dst[3] + 12);
        *(v48 + 4) = v50;
        *(v48 + 5) = v51;
        *(v48 + 3) = v49;
        v105 = __dst[1];
        v106 = __dst[2];
        v107[0] = __dst[3];
        *(v107 + 12) = *(&__dst[3] + 12);
        v104 = __dst[0];
        DisplayList.Item.features.getter(&v95);
        v98 |= v95;
        if (v45 > 1)
        {
          if (v45 == 2)
          {
            v52 = *(v42 + 16);
            if (v52)
            {
              if (v52 > 7)
              {
                v53 = v52 & 0x7FFFFFFFFFFFFFF8;
                v55 = (v42 + 188);
                v56 = 0uLL;
                v57 = v52 & 0x7FFFFFFFFFFFFFF8;
                v58 = 0uLL;
                do
                {
                  v59.i32[0] = *(v55 - 30);
                  v59.i32[1] = *(v55 - 20);
                  v59.i32[2] = *(v55 - 10);
                  v59.i32[3] = *v55;
                  v60.i32[0] = v55[10];
                  v60.i32[1] = v55[20];
                  v60.i32[2] = v55[30];
                  v60.i32[3] = v55[40];
                  v56 = vorrq_s8(v59, v56);
                  v58 = vorrq_s8(v60, v58);
                  v55 += 80;
                  v57 -= 8;
                }

                while (v57);
                v61 = vorrq_s8(v58, v56);
                v62 = vorr_s8(*v61.i8, *&vextq_s8(v61, v61, 8uLL));
                v37 = v62.i32[0] | v62.i32[1];
                if (v52 == v53)
                {
                  goto LABEL_45;
                }
              }

              else
              {
                v37 = 0;
                v53 = 0;
              }

              v63 = v52 - v53;
              v64 = (v42 + 40 * v53 + 68);
              do
              {
                v65 = *v64;
                v64 += 10;
                v37 |= v65;
                --v63;
              }

              while (v63);
            }

            else
            {
              v37 = 0;
            }

LABEL_45:
            outlined destroy of DisplayList.Item(__dst);
            goto LABEL_17;
          }
        }

        else
        {
          if (v45)
          {
            switch(BYTE4(v44))
            {
              case 2u:

                v54 = v42;
                break;
              case 7u:
                v54 = *(v42 + 28);
                outlined init with copy of DisplayList.Item(__dst, &v104);
                outlined consume of DisplayList.Effect(v42, v44, 7);

                outlined destroy of DisplayList.Item(__dst);
                break;
              case 0x12u:
                (*(*v42 + 120))(&v95);
                outlined init with copy of DisplayList.Item(__dst, &v104);
                outlined consume of DisplayList.Effect(v42, v44, 18);

                outlined destroy of DisplayList.Item(__dst);
                v54 = v95;
                break;
              default:
                outlined copy of DisplayList.Effect(v42, v44, SBYTE4(v44));

                outlined consume of DisplayList.Effect(v42, v44, SBYTE4(v44));

                outlined destroy of DisplayList.Item(__dst);
                v54 = 0;
                break;
            }

            v37 = v54 | HIDWORD(v43);
            goto LABEL_17;
          }

          if (v42 >> 60 == 6 || v42 >> 60 == 11)
          {
            v37 = *((v42 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            goto LABEL_45;
          }
        }

        outlined destroy of DisplayList.Item(__dst);
        v37 = 0;
LABEL_17:
        v99 |= v37;
LABEL_18:
        if (++v35 == v34)
        {
          v97 = v36;

          v23 = v92;
          goto LABEL_52;
        }
      }
    }

    v36 = v97;
LABEL_52:
    *&v104 = v36;
    WORD4(v104) = v98;
    HIDWORD(v104) = v99;
    AGGraphSetOutputValue();
    outlined consume of GlassEffectContextResolvedData.Data?(v23, v88, v91, v90);
    memcpy(__dst, __src, 0x109uLL);
    outlined destroy of _ShapeStyle_RenderedShape(__dst);

    v106 = *&v110[32];
    v107[0] = *&v110[48];
    v107[1] = *&v110[64];
    v108 = v111;
    v104 = *v110;
    v105 = *&v110[16];
    outlined destroy of _ShapeStyle_RenderedLayers(&v104);
    goto LABEL_53;
  }

  *&__dst[0] = v13[2];
  Material.Layers.singletonSDFLayer.getter(__src);
  v19 = *&__src[0];
  if ((~*&__src[0] & 0xF000000000000007) == 0)
  {
    v17 = v89;
    v16 = v90;
    v14 = v91;
    goto LABEL_8;
  }

  v66 = 0.5;
  if ((BYTE8(__src[0]) & 1) == 0)
  {
    v66 = 0.0;
  }

  if (*(__src + 3) == 0.0)
  {
    v67 = v66;
  }

  else
  {
    v67 = *(__src + 3);
  }

  v87 = DWORD2(__src[0]);
  if (v89)
  {
    v68 = v18;
    outlined copy of GlassEffectContextResolvedData.Data?(v92, v15, v91, v90, v89, v18);

    outlined copy of Material.Layer.SDFLayer?(v19);
    v69 = v89;
    if (v18)
    {
LABEL_61:
      v70 = v68;
      goto LABEL_70;
    }
  }

  else
  {
    outlined copy of GlassEffectContextResolvedData.Data?(v92, v15, v91, v90, 0, v18);

    outlined copy of Material.Layer.SDFLayer?(v19);
    v71 = AGGraphGetValue();
    v72 = *v71;
    if (*(v71 + 8))
    {

      swift_retain_n();
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE021MaterialBackdropProxyI033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt1g5(v72, __src);

      v69 = *&__src[0];
    }

    else
    {
      _s7SwiftUI12TypedElement33_D64CE6C88E7413721C59A34C0C940F2CLLCyAA8EmptyKeyACLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.MaterialBackdropProxyKey>, &type metadata for EnvironmentValues.MaterialBackdropProxyKey, &protocol witness table for EnvironmentValues.MaterialBackdropProxyKey, type metadata accessor for EnvironmentPropertyKey);
      BloomFilter.init(hashValue:)(v73);
      v74 = *&__src[0];

      v76 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE021MaterialBackdropProxyV033_DEF3755CDC6B87C0368876C9F497EC3DLLVG_Tt0B5(v75, v74);
      if (v76)
      {
        v69 = v76[9];
      }

      else
      {
        v69 = 0;
      }
    }

    v68 = v18;
    if (v18)
    {
      goto LABEL_61;
    }
  }

  v70 = *(v1 + 4);

LABEL_70:
  v77 = *(v1 + 5);
  if (v69)
  {

    if (v77)
    {

      v78 = v69;
      if (v69 == v77)
      {
        goto LABEL_81;
      }

LABEL_78:
      *(v1 + 5) = v69;

      if (v69)
      {

        os_unfair_lock_lock((v78 + 16));
        v79 = *(v78 + 24);
        v80 = *(v78 + 28);
        os_unfair_lock_unlock((v78 + 16));
        LOBYTE(__src[0]) = v80;
        GlassEffectBackdropObserver.luminanceDidChange(_:)((v79 | (v80 << 32)));
      }

      goto LABEL_81;
    }

    v78 = v69;
LABEL_77:

    goto LABEL_78;
  }

  if (v77)
  {

    v78 = 0;
    goto LABEL_77;
  }

LABEL_81:
  if (*(v1 + 5))
  {
    v81 = 0;
  }

  else
  {

    v81 = v70;
  }

  v82 = swift_allocObject();
  v104 = 0uLL;
  *&v105 = v92;
  *(&v105 + 1) = v88;
  *&v106 = v19;
  *(&v106 + 1) = __PAIR64__(v87, LODWORD(v67));
  *&v107[0] = v81;
  *(v82 + 64) = v81;
  v83 = v105;
  *(v82 + 16) = v104;
  *(v82 + 32) = v83;
  *(v82 + 48) = v106;
  type metadata accessor for CGSize(0);
  outlined init with copy of SDFShape(&v104, __src);
  v84 = AGGraphGetValue();
  v85 = *v1;
  v86 = *v84;
  *__src = v10;
  *(__src + 1) = v11;
  __src[1] = v86;
  *&__src[2] = v12;
  *(&__src[2] + 1) = v82;
  *&__src[3] = 0x800000000;
  *(&__src[3] + 1) = v2;
  *&__src[4] = v3 | (v93 << 32) | 0x40000000;
  DWORD2(__src[4]) = v85;
  __dst[2] = __src[2];
  __dst[3] = __src[3];
  *(&__dst[3] + 12) = *(&__src[3] + 12);
  __dst[0] = __src[0];
  __dst[1] = v86;
  outlined init with copy of DisplayList.Item(__src, v110);
  DisplayList.init(_:)(__dst, v110);
  *&__dst[0] = *v110;
  WORD4(__dst[0]) = *&v110[8];
  HIDWORD(__dst[0]) = *&v110[12];
  AGGraphSetOutputValue();
  outlined consume of GlassEffectContextResolvedData.Data?(v92, v88, v91, v90);
  outlined destroy of DisplayList.Item(__src);

  outlined consume of SDFStyle?(v19);

  __dst[0] = 0uLL;
  *&__dst[1] = v92;
  *(&__dst[1] + 1) = v88;
  *&__dst[2] = v19;
  *(&__dst[2] + 1) = __PAIR64__(v87, LODWORD(v67));
  *&__dst[3] = v81;
  outlined destroy of SDFShape(__dst);
}

void GlassEffectShapeModifier.animatableData.setter(void *a1)
{
  v2 = v1;
  outlined init with copy of _AnyAnimatableData(a1, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v1 + 120);
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(v8, v7);
    (*(*v5 + 104))(v7);
    outlined destroy of _AnyAnimatableData(a1);
    outlined destroy of _AnyAnimatableData(v8);
  }

  else
  {
    v6 = (*(*v5 + 120))(v8);
    outlined destroy of _AnyAnimatableData(a1);
    outlined destroy of _AnyAnimatableData(v8);

    *(v2 + 120) = v6;
  }
}

double closure #1 in GlassEffectShapeModifier.body(content:)@<D0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<GlassMaterialShape>, &type metadata for GlassMaterialShape, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  v7 = a2[4];
  v8 = a2[6];
  *(v6 + 112) = a2[5];
  *(v6 + 128) = v8;
  v9 = *a2;
  v10 = a2[1];
  *(v6 + 16) = xmmword_18DDA6EB0;
  *(v6 + 32) = v9;
  v11 = a2[2];
  v12 = a2[3];
  *(v6 + 48) = v10;
  *(v6 + 64) = v11;
  v14 = *(a2 + 14);
  v23 = *(a2 + 15);
  v13 = v23;
  *(v6 + 80) = v12;
  *(v6 + 96) = v7;
  *(v6 + 144) = v14;
  *(v6 + 152) = v13;
  *(v6 + 368) = *(a2 + 84);
  v15 = a2[20];
  *(v6 + 336) = a2[19];
  *(v6 + 352) = v15;
  v16 = a2[18];
  *(v6 + 304) = a2[17];
  *(v6 + 320) = v16;
  v17 = a2[16];
  *(v6 + 272) = a2[15];
  *(v6 + 288) = v17;
  v18 = a2[14];
  *(v6 + 240) = a2[13];
  *(v6 + 256) = v18;
  v19 = a2[12];
  *(v6 + 208) = a2[11];
  *(v6 + 224) = v19;
  v20 = a2[10];
  *(v6 + 176) = a2[9];
  *(v6 + 192) = v20;
  *(v6 + 160) = a2[8];
  *(v6 + 376) = v13;
  *(v6 + 384) = a1;
  *a3 = v6;
  outlined init with copy of GlassEffectShapeModifier(a2, v22);
  outlined init with copy of AnyShape(&v23, v22);

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance GlassEffectShapeModifier@<X0>(uint64_t *a1@<X8>)
{
  memcpy(__dst, v1, 0x154uLL);
  if (one-time initialization token for one != -1)
  {
    swift_once();
  }

  _s7SwiftUI12TypedElement33_D64CE6C88E7413721C59A34C0C940F2CLLCyAA8EmptyKeyACLLVGMaTm_1(0, &lazy cache variable for type metadata for AnchorBox<UnitRect>, &type metadata for UnitRect, &protocol witness table for UnitRect, type metadata accessor for AnchorBox);
  v3 = swift_allocObject();
  v4 = xmmword_1ED52E568;
  *(v3 + 16) = static UnitRect.one;
  *(v3 + 32) = v4;
  v5 = swift_allocObject();
  memcpy((v5 + 16), v1, 0x154uLL);
  *a1 = v3;
  a1[1] = partial apply for closure #1 in GlassEffectShapeModifier.body(content:);
  a1[2] = v5;
  return outlined init with copy of GlassEffectShapeModifier(__dst, v7);
}

uint64_t (*protocol witness for Animatable.animatableData.modify in conformance GlassEffectShapeModifier(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  (*(**(v1 + 120) + 96))();
  return protocol witness for Animatable.animatableData.modify in conformance GlassEffectShapeModifier;
}

void protocol witness for Animatable.animatableData.modify in conformance GlassEffectShapeModifier(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    outlined init with copy of _AnyAnimatableData(*a1, v2 + 5);
    GlassEffectShapeModifier.animatableData.setter(v2 + 5);
    outlined destroy of _AnyAnimatableData(v2);
  }

  else
  {
    GlassEffectShapeModifier.animatableData.setter(*a1);
  }

  free(v2);
}

void lazy protocol witness table accessor for type GlassEffectContextState and conformance GlassEffectContextState()
{
  if (!lazy protocol witness table cache variable for type GlassEffectContextState and conformance GlassEffectContextState)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectContextState, &unk_1F00B3238, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectContextState and conformance GlassEffectContextState);
  }
}

void lazy protocol witness table accessor for type GlassEffectContextUpdatedMaterial and conformance GlassEffectContextUpdatedMaterial()
{
  if (!lazy protocol witness table cache variable for type GlassEffectContextUpdatedMaterial and conformance GlassEffectContextUpdatedMaterial)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectContextUpdatedMaterial, &unk_1F00B31B0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectContextUpdatedMaterial and conformance GlassEffectContextUpdatedMaterial);
  }
}

void lazy protocol witness table accessor for type GlassEffectContextEnvironment and conformance GlassEffectContextEnvironment()
{
  if (!lazy protocol witness table cache variable for type GlassEffectContextEnvironment and conformance GlassEffectContextEnvironment)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectContextEnvironment, &unk_1F00B3128, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectContextEnvironment and conformance GlassEffectContextEnvironment);
  }
}

void lazy protocol witness table accessor for type GlassEffectContextTransaction and conformance GlassEffectContextTransaction()
{
  if (!lazy protocol witness table cache variable for type GlassEffectContextTransaction and conformance GlassEffectContextTransaction)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectContextTransaction, &unk_1F00B3098, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectContextTransaction and conformance GlassEffectContextTransaction);
  }
}

double partial apply for closure #1 in closure #1 in GlassEffectContextState.updateValue()()
{
  AGGraphGetValue();

  return result;
}

double outlined consume of GlassMaterialContext.State?(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

double outlined copy of GlassMaterialContext.State?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != 1)
  {
  }

  return result;
}

double destroy for GlassMaterialContextData.Init()
{

  return result;
}

uint64_t initializeWithCopy for GlassMaterialContextData.Init(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for GlassMaterialContextData.Init(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t assignWithTake for GlassMaterialContextData.Init(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void lazy protocol witness table accessor for type GlassEffectMaterial and conformance GlassEffectMaterial()
{
  if (!lazy protocol witness table cache variable for type GlassEffectMaterial and conformance GlassEffectMaterial)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectMaterial, &unk_1F00B37F8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectMaterial and conformance GlassEffectMaterial);
  }
}

void lazy protocol witness table accessor for type GlassEffectShapeSet and conformance GlassEffectShapeSet()
{
  if (!lazy protocol witness table cache variable for type GlassEffectShapeSet and conformance GlassEffectShapeSet)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectShapeSet, &unk_1F00B3750, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectShapeSet and conformance GlassEffectShapeSet);
  }
}

void lazy protocol witness table accessor for type GlassEffectContextUnwrappedMaterial and conformance GlassEffectContextUnwrappedMaterial()
{
  if (!lazy protocol witness table cache variable for type GlassEffectContextUnwrappedMaterial and conformance GlassEffectContextUnwrappedMaterial)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectContextUnwrappedMaterial, &unk_1F00B3650, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectContextUnwrappedMaterial and conformance GlassEffectContextUnwrappedMaterial);
  }
}

void lazy protocol witness table accessor for type GlassEffectContextResolvedData and conformance GlassEffectContextResolvedData()
{
  if (!lazy protocol witness table cache variable for type GlassEffectContextResolvedData and conformance GlassEffectContextResolvedData)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectContextResolvedData, &unk_1F00B3578, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectContextResolvedData and conformance GlassEffectContextResolvedData);
  }
}

void lazy protocol witness table accessor for type GlassEffectContextDisplayList and conformance GlassEffectContextDisplayList()
{
  if (!lazy protocol witness table cache variable for type GlassEffectContextDisplayList and conformance GlassEffectContextDisplayList)
  {
    swift_getWitnessTable(protocol conformance descriptor for GlassEffectContextDisplayList, &unk_1F00B34D8, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type GlassEffectContextDisplayList and conformance GlassEffectContextDisplayList);
  }
}

double outlined copy of GlassEffectContextResolvedData.Data?(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {

    outlined copy of Material.ID(a3, a4);
  }

  return result;
}

double outlined consume of GlassEffectContextResolvedData.Data?(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a1)
  {

    outlined consume of Material.ID(a3, a4);
  }

  return result;
}

uint64_t outlined destroy of _AnyAnimatableData?(uint64_t a1)
{
  type metadata accessor for Material?(0, &lazy cache variable for type metadata for _AnyAnimatableData?, &type metadata for _AnyAnimatableData, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void lazy protocol witness table accessor for type _SizedShape<OffsetShape<AnyShape>> and conformance _SizedShape<A>()
{
  if (!lazy protocol witness table cache variable for type _SizedShape<OffsetShape<AnyShape>> and conformance _SizedShape<A>)
  {
    type metadata accessor for _SizedShape<OffsetShape<AnyShape>>(255);
    swift_getWitnessTable(protocol conformance descriptor for _SizedShape<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type _SizedShape<OffsetShape<AnyShape>> and conformance _SizedShape<A>);
  }
}

double destroy for GlassMaterialShape(uint64_t a1)
{
  outlined consume of GlassContainer.Entry.ModelID(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  outlined consume of _Glass.Variant.Role(*(a1 + 40), *(a1 + 48));

  outlined consume of _Glass.Variant.Role(*(a1 + 144), *(a1 + 152));

  if (*(a1 + 248) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 224), *(a1 + 232));
  }

  if (*(a1 + 296) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(a1 + 272), *(a1 + 280));
  }

  return result;
}

uint64_t initializeWithCopy for GlassMaterialShape(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of GlassContainer.Entry.ModelID(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  outlined copy of _Glass.Variant.Role(v9, v10);
  *(a1 + 40) = v9;
  *(a1 + 48) = v10;
  *(a1 + 56) = *(a2 + 56);
  v11 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v11;
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  v12 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v12;
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 137) = *(a2 + 137);
  v13 = *(a2 + 144);
  v14 = *(a2 + 152);

  outlined copy of _Glass.Variant.Role(v13, v14);
  *(a1 + 144) = v13;
  *(a1 + 152) = v14;
  *(a1 + 160) = *(a2 + 160);
  v15 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v15;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  v16 = *(a2 + 216);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = v16;
  v17 = *(a2 + 248);

  if (v17 == 1)
  {
    v18 = *(a2 + 240);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 240) = v18;
    *(a1 + 249) = *(a2 + 249);
  }

  else
  {
    v19 = *(a2 + 224);
    v20 = *(a2 + 232);
    outlined copy of _Glass.Variant.Role(v19, v20);
    *(a1 + 224) = v19;
    *(a1 + 232) = v20;
    *(a1 + 240) = *(a2 + 240);
    v21 = *(a2 + 256);
    *(a1 + 248) = v17;
    *(a1 + 256) = v21;
    *(a1 + 264) = *(a2 + 264);
  }

  v22 = *(a2 + 296);
  if (v22 == 1)
  {
    v23 = *(a2 + 288);
    *(a1 + 272) = *(a2 + 272);
    *(a1 + 288) = v23;
    *(a1 + 297) = *(a2 + 297);
  }

  else
  {
    v24 = *(a2 + 272);
    v25 = *(a2 + 280);
    outlined copy of _Glass.Variant.Role(v24, v25);
    *(a1 + 272) = v24;
    *(a1 + 280) = v25;
    *(a1 + 288) = *(a2 + 288);
    v26 = *(a2 + 304);
    *(a1 + 296) = v22;
    *(a1 + 304) = v26;
    *(a1 + 312) = *(a2 + 312);
  }

  *(a1 + 316) = *(a2 + 316);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  v27 = *(a2 + 344);
  v28 = *(a2 + 352);
  *(a1 + 344) = v27;
  *(a1 + 352) = v28;

  return a1;
}