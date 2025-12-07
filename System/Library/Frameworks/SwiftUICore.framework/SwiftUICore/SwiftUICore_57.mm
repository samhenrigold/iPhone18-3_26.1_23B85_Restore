unint64_t ContentTransition.NumericTextConfiguration.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = result;
  v50 = 0;
  v6 = *(result + 8);
  v7 = *(result + 16);
  if (v6 >= v7)
  {
    v38 = 0;
    v8 = 0;
    v39 = 19;
    v11 = 32;
    v40 = 51;
    v9 = 18;
    v41 = 2;
    v10 = 2;
LABEL_145:
    v4[3] = 0;
    *a2 = v8;
    *(a2 + 4) = v38;
    *(a2 + 5) = v41;
    *(a2 + 6) = v10;
    *(a2 + 7) = v9;
    *(a2 + 8) = v40;
    *(a2 + 9) = v11;
    *(a2 + 10) = v39;
    return result;
  }

  v8 = 0;
  v46 = 19;
  v47 = 0;
  v9 = 18;
  v44 = 51;
  v45 = 2;
  v10 = 2;
  v11 = 32;
  v12 = 2;
  while (1)
  {
    result = v4[3];
    if (result)
    {
      v13 = v4[4];
      if (v6 < v13)
      {
        goto LABEL_11;
      }

      if (v13 < v6)
      {
        goto LABEL_146;
      }

      v4[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v3)
    {
      return result;
    }

    if (result <= 7)
    {
LABEL_146:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v14 = result >> 3;
    v15 = result & 7;
    if (result >> 3 <= 4)
    {
      if (result >> 3 > 2)
      {
        if (v14 == 3)
        {
          if ((result & 7) != 0)
          {
            if (v15 != 2)
            {
              goto LABEL_146;
            }

            result = ProtobufDecoder.decodeVarint()(result);
            if (v3)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_153;
            }

            v21 = v4[1] + result;
            if (v7 < v21)
            {
              goto LABEL_146;
            }

            v4[3] = 24;
            v4[4] = v21;
          }

          result = ProtobufDecoder.decodeVarint()(result);
          if (v3)
          {
            return result;
          }

          v45 = result != 0;
          goto LABEL_4;
        }

        if (v14 == 4)
        {
          if ((result & 7) != 0)
          {
            if (v15 != 2)
            {
              goto LABEL_146;
            }

            result = ProtobufDecoder.decodeVarint()(result);
            if (v3)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_155;
            }

            v18 = v4[1] + result;
            if (v7 < v18)
            {
              goto LABEL_146;
            }

            v4[3] = 32;
            v4[4] = v18;
          }

          result = ProtobufDecoder.decodeVarint()(result);
          if (v3)
          {
            return result;
          }

          if (result)
          {
            v10 = v12 | 1;
            v12 |= 1u;
          }

          else
          {
            v10 = v12 & 0xFE;
            v12 &= 0xFEu;
          }

          goto LABEL_4;
        }
      }

      else
      {
        if (v14 == 1)
        {
          if ((result & 7) != 0)
          {
            if (v15 != 2)
            {
              goto LABEL_146;
            }

            result = ProtobufDecoder.decodeVarint()(result);
            if (v3)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_152;
            }

            v20 = v4[1] + result;
            if (v7 < v20)
            {
              goto LABEL_146;
            }

            v4[3] = 8;
            v4[4] = v20;
          }

          result = ProtobufDecoder.decodeVarint()(result);
          if (v3)
          {
            return result;
          }

          v47 = 0;
          v8 = result == 0;
          goto LABEL_4;
        }

        if (v14 == 2)
        {
          if (v15 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v3)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_154;
            }

            v17 = v4[1];
            if (v7 < v17 + result)
            {
              goto LABEL_146;
            }

            v4[3] = 21;
            v4[4] = v17 + result;
          }

          else
          {
            if (v15 != 5)
            {
              goto LABEL_146;
            }

            v17 = v4[1];
          }

          if (v7 < (v17 + 1))
          {
            goto LABEL_146;
          }

          v8 = *v17;
          v4[1] = v17 + 1;
          v47 = 1;
          goto LABEL_4;
        }
      }

      goto LABEL_66;
    }

    if (result >> 3 <= 6)
    {
      if (v14 == 5)
      {
        if (v15 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v3)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_156;
          }

          v23 = v4[1];
          if (v7 < v23 + result)
          {
            goto LABEL_146;
          }

          v4[3] = 45;
          v4[4] = v23 + result;
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_146;
          }

          v23 = v4[1];
        }

        if (v7 < (v23 + 1))
        {
          goto LABEL_146;
        }

        v26 = v3;
        v32 = *v23;
        v4[1] = v23 + 1;
        v33 = v32 * 120.0;
        if (v33 < 0.0)
        {
          v33 = 0.0;
        }

        if (v33 > 255.0)
        {
          v33 = 255.0;
        }

        result = _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5UInt8V_SfTt1g5(&v48, v33);
        if ((v48 & 0x100) != 0)
        {
          goto LABEL_160;
        }

        v9 = v48;
        goto LABEL_3;
      }

      if (v14 == 6)
      {
        if (v15 == 2)
        {
          result = ProtobufDecoder.decodeVarint()(result);
          if (v3)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_157;
          }

          v19 = v4[1];
          if (v7 < v19 + result)
          {
            goto LABEL_146;
          }

          v4[3] = 53;
          v4[4] = v19 + result;
        }

        else
        {
          if (v15 != 5)
          {
            goto LABEL_146;
          }

          v19 = v4[1];
        }

        if (v7 < (v19 + 1))
        {
          goto LABEL_146;
        }

        v26 = v3;
        v27 = *v19;
        v4[1] = v19 + 1;
        v28 = v27 * 128.0;
        if (v28 < 0.0)
        {
          v28 = 0.0;
        }

        if (v28 > 255.0)
        {
          v28 = 255.0;
        }

        result = _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5UInt8V_SfTt1g5(&v48, v28);
        if ((v48 & 0x100) != 0)
        {
          goto LABEL_160;
        }

        v44 = v48;
        goto LABEL_3;
      }

      goto LABEL_66;
    }

    if (v14 == 7)
    {
      if (v15 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v3)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          v48 = 0;
          v49 = 0xE000000000000000;
          _StringGuts.grow(_:)(80);
          MEMORY[0x193ABEDD0](0x74616F6C46, 0xE500000000000000);
          MEMORY[0x193ABEDD0](0xD00000000000001ELL, 0x800000018DD829B0);
          v42 = 947154505;
          v43 = 0xE400000000000000;
          goto LABEL_161;
        }

        v22 = v4[1];
        if (v7 < v22 + result)
        {
          goto LABEL_146;
        }

        v4[3] = 61;
        v4[4] = v22 + result;
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_146;
        }

        v22 = v4[1];
      }

      if (v7 < (v22 + 1))
      {
        goto LABEL_146;
      }

      v26 = v3;
      v29 = *v22;
      v4[1] = v22 + 1;
      v30 = v29 * 4.0;
      if (v30 < 0.0)
      {
        v30 = 0.0;
      }

      if (v30 > 255.0)
      {
        v30 = 255.0;
      }

      result = _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5UInt8V_SfTt1g5(&v48, v30);
      if ((v48 & 0x100) != 0)
      {
        goto LABEL_160;
      }

      v11 = v48;
      v31 = (v12 & 2) == 0;
      v12 &= 0xFDu;
      if (!v31)
      {
        v10 = v12;
      }

      goto LABEL_3;
    }

    if (v14 == 8)
    {
      if (v15 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v3)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_150;
        }

        v24 = v4[1];
        if (v7 < v24 + result)
        {
          goto LABEL_146;
        }

        v4[3] = 69;
        v4[4] = v24 + result;
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_146;
        }

        v24 = v4[1];
      }

      if (v7 < (v24 + 1))
      {
        goto LABEL_146;
      }

      v26 = v3;
      v36 = *v24;
      v4[1] = v24 + 1;
      v37 = fmaxf(v36 * 32.0, -128.0);
      if (v37 > 127.0)
      {
        v37 = 127.0;
      }

      result = _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs4Int8V_SfTt1g5(&v48, v37);
      if ((v48 & 0x100) != 0)
      {
        goto LABEL_159;
      }

      v46 = v48;
      goto LABEL_3;
    }

    if (v14 == 9)
    {
      break;
    }

LABEL_66:
    if ((result & 7) > 1)
    {
      if (v15 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v3)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_158;
        }

        v25 = v4[1] + result;
        if (v7 < v25)
        {
          goto LABEL_146;
        }
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_146;
        }

        v25 = v4[1] + 4;
        if (v7 < v25)
        {
          goto LABEL_146;
        }
      }
    }

    else
    {
      if ((result & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v3)
        {
          return result;
        }

        goto LABEL_4;
      }

      if (v15 != 1)
      {
        goto LABEL_146;
      }

      v25 = v4[1] + 8;
      if (v7 < v25)
      {
        goto LABEL_146;
      }
    }

    v4[1] = v25;
LABEL_4:
    v6 = v4[1];
    if (v6 >= v7)
    {
      v39 = v46;
      v38 = v47 & 1;
      v50 = v47 & 1;
      v40 = v44;
      v41 = v45;
      goto LABEL_145;
    }
  }

  if (v15 == 2)
  {
    result = ProtobufDecoder.decodeVarint()(result);
    if (v3)
    {
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_151;
    }

    v16 = v4[1];
    if (v7 < v16 + result)
    {
      goto LABEL_146;
    }

    v4[3] = 77;
    v4[4] = v16 + result;
  }

  else
  {
    if (v15 != 5)
    {
      goto LABEL_146;
    }

    v16 = v4[1];
  }

  if (v7 < (v16 + 1))
  {
    goto LABEL_146;
  }

  v26 = v3;
  v34 = *v16;
  v4[1] = v16 + 1;
  v35 = v34 * 128.0;
  if (v35 < 0.0)
  {
    v35 = 0.0;
  }

  if (v35 > 255.0)
  {
    v35 = 255.0;
  }

  result = _ss17FixedWidthIntegerPsE8_convert4fromxSg5value_Sb5exacttqd___tSBRd__lFZs5UInt8V_SfTt1g5(&v48, v35);
  if ((v48 & 0x100) == 0)
  {
    v11 = v48;
    if ((v12 & 2) == 0)
    {
      v10 = v12 | 2;
      v12 |= 2u;
    }

LABEL_3:
    v3 = v26;
    goto LABEL_4;
  }

LABEL_160:
  v48 = 0;
  v49 = 0xE000000000000000;
  _StringGuts.grow(_:)(80);
  MEMORY[0x193ABEDD0](0x74616F6C46, 0xE500000000000000);
  MEMORY[0x193ABEDD0](0xD00000000000001ELL, 0x800000018DD829B0);
  v42 = 0x38746E4955;
  v43 = 0xE500000000000000;
LABEL_161:
  MEMORY[0x193ABEDD0](v42, v43);
  MEMORY[0x193ABEDD0](0xD00000000000002ELL, 0x800000018DD829D0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

double key path setter for EnvironmentValues.fontDefinition : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014FontDefinitionF0019_C17A136ED11B3E0D21O11D182F3B80B2LLVG_Tt2g5(a2, v3, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA014FontDefinitionK0019_C17A136ED11B3E0D21T11D182F3B80B2LLVG_Ttg5(v5, *a2);
  }

  return result;
}

void DisplayList.UnaryInterpolatorGroup.apply(to:)(uint64_t a1)
{
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  v10[0] = 0uLL;
  v10[1] = *(a1 + 16);
  v11 = v7;
  v12 = v6;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = 0;
  outlined copy of DisplayList.Item.Value(v6, v3, v4, v5);

  DisplayList.init(_:)(v10, &v17);
  v8 = v17;
  v9 = v18 | (v19 << 32) | 0x40000000;
  outlined consume of DisplayList.Item.Value(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  *(a1 + 40) = v1;
  *(a1 + 48) = 0x1200000000;
  *(a1 + 56) = v8;
  *(a1 + 64) = v9;
}

double EnvironmentValues.accessibilityEnabled.setter(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA020AccessibilityEnabledF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(v2, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA020AccessibilityEnabledK033_1E80A5D8CD82563C298D64AC1337E839LLVG_Ttg5(v4, *v2);
  }

  return result;
}

uint64_t protocol witness for static PropertyKey.defaultValue.getter in conformance ArchivedViewInput@<X0>(_WORD *a1@<X8>)
{
  if (one-time initialization token for defaultValue != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static ArchivedViewInput.defaultValue;
  return result;
}

void key path getter for EnvironmentValues.fontDefinition : EnvironmentValues(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014FontDefinitionI0019_C17A136ED11B3E0D21R11D182F3B80B2LLVG_Tt1g5(v3);
    v6 = v5;
  }

  else
  {
    v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014FontDefinitionS033_C17A136ED11B3E0D21D21D182F3B80B2LLVG_Tt0g5(*a1);
    if (v7)
    {
      v8 = (v7 + 9);
      v9 = v7 + 10;
    }

    else
    {
      v8 = &static FontDefinitionKey.defaultValue;
      v9 = &static FontDefinitionKey.defaultValue + 1;
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }
    }

    v6 = *v9;
    v4 = *v8;
  }

  *a2 = v4;
  a2[1] = v6;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014FontDefinitionF0019_C17A136ED11B3E0D21O11D182F3B80B2LLVG_Tt2g5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA014FontDefinitionS033_C17A136ED11B3E0D21D21D182F3B80B2LLVG_Tt0g5(*a1);
  if (!v6 || v6[9] != a2)
  {
    v7 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<FontDefinitionKey>>(0);
    v8 = swift_allocObject();
    *(v8 + 72) = a2;
    *(v8 + 80) = a3;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontDefinitionKey>, &type metadata for FontDefinitionKey, &protocol witness table for FontDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v10 = v9;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v10, 0, v7);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<FontDefinitionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<FontDefinitionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontDefinitionKey>, &type metadata for FontDefinitionKey, &protocol witness table for FontDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<FontDefinitionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<FontDefinitionKey>>);
    }
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA020AccessibilityEnabledF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(uint64_t *a1, char a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA020AccessibilityEnabledS0020_1E80A5D8CD82563C298D10AC1337E839LLVG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityEnabledKey>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityEnabledKey>, &type metadata for AccessibilityEnabledKey, &protocol witness table for AccessibilityEnabledKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<AccessibilityEnabledKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityEnabledKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityEnabledKey>, &type metadata for AccessibilityEnabledKey, &protocol witness table for AccessibilityEnabledKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityEnabledKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<AccessibilityEnabledKey>>);
    }
  }
}

Swift::Void __swiftcall DisplayList.InterpolatorLayer.invalidateContentsScale()()
{
  swift_unknownObjectRelease();
  *(v0 + 32) = 0;
  v1 = *(v0 + 56);
  v2 = *(v1 + 2);
  if (v2)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_11:
      v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    }

    v3 = 0;
    v4 = (v1 + 88);
    do
    {
      if (v3 >= *(v1 + 2))
      {
        __break(1u);
LABEL_10:
        __break(1u);
        goto LABEL_11;
      }

      *(v4 - 3) = 0;
      swift_unknownObjectRelease();
      if (v3 >= *(v1 + 2))
      {
        goto LABEL_10;
      }

      ++v3;
      v5 = *v4;
      *v4 = 0;
      v4 += 14;
    }

    while (v2 != v3);
    *(v0 + 56) = v1;
  }

  *(v0 + 83) = 1;
}

double ObjectLocation.set(_:transaction:)(uint64_t a1, void *a2)
{
  v2 = Transaction.current.getter(a2);
  specialized closure #1 in withTransaction<A>(_:_:)(v2, partial apply for closure #1 in ObjectLocation.set(_:transaction:));

  return result;
}

void *static SystemContainerShapeModifier._makeView(modifier:inputs:body:)(int *a1, __int128 *a2, void (*a3)(uint64_t, __int128 *), uint64_t a4, ValueMetadata *a5, uint64_t a6)
{
  v9 = a2[3];
  v10 = a2[1];
  v35 = a2[2];
  v36 = v9;
  v11 = a2[3];
  v37 = a2[4];
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  v29 = v35;
  v30 = v11;
  v31 = a2[4];
  v13 = *a1;
  v38 = *(a2 + 20);
  v32 = *(a2 + 20);
  v27 = v33;
  v28 = v10;
  LODWORD(v40[0]) = v13;
  outlined init with copy of _ViewInputs(&v33, &v44);
  v15 = type metadata accessor for SystemContainerShapeModifier(255, a5, a6, v14);
  type metadata accessor for _GraphValue(0, v15, v16, v17);
  _GraphValue.subscript.getter(partial apply for closure #1 in static SystemContainerShapeModifier._makeView(modifier:inputs:body:), a5, &v21);
  v44 = v33;
  v45 = v34;
  v46 = v35;
  outlined init with copy of _GraphInputs(&v33, v42);
  v18 = static Animatable.makeAnimatable(value:inputs:)(&v21, &v44, a5, *(*(a6 + 8) + 8));
  v39[0] = v44;
  v39[1] = v45;
  v39[2] = v46;
  outlined destroy of _GraphInputs(v39);
  _ViewInputs.setContainerShape<A>(_:isSystemShape:)(v18, 1, a5, a6);
  v40[2] = v29;
  v40[3] = v30;
  v40[4] = v31;
  v41 = v32;
  v40[0] = v27;
  v40[1] = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  v26 = v32;
  v21 = v27;
  v22 = v28;
  v19 = outlined init with copy of _ViewInputs(v40, &v44);
  a3(v19, &v21);
  v42[2] = v23;
  v42[3] = v24;
  v42[4] = v25;
  v43 = v26;
  v42[0] = v21;
  v42[1] = v22;
  outlined destroy of _ViewInputs(v42);
  v46 = v29;
  v47 = v30;
  v48 = v31;
  v49 = v32;
  v44 = v27;
  v45 = v28;
  return outlined destroy of _ViewInputs(&v44);
}

uint64_t closure #1 in static _ContainerShapeModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11[2] = (a4)(0, a2, a3);
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a5, v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

void *specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(uint64_t a1, __int128 *a2, void (*a3)(uint64_t, __int128 *))
{
  v5 = a2[3];
  v24 = a2[2];
  v25 = v5;
  v26 = a2[4];
  v27 = *(a2 + 20);
  v6 = a2[1];
  v22 = *a2;
  v23 = v6;
  type metadata accessor for Date?(0);
  v28 = *a2;
  outlined init with copy of _ViewInputs(a2, v20);
  AGGraphCreateOffsetAttribute2();
  v7 = AGCreateWeakAttribute();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA18ReferenceDateInputV_Tt2g5(&v22, v7);
  outlined destroy of PropertyList(&v28);
  v16[2] = v24;
  v16[3] = v25;
  v16[4] = v26;
  v17 = v27;
  v16[0] = v22;
  v16[1] = v23;
  v12 = v24;
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v10 = v22;
  v11 = v23;
  v8 = outlined init with copy of _ViewInputs(v16, v20);
  a3(v8, &v10);
  v18[2] = v12;
  v18[3] = v13;
  v18[4] = v14;
  v19 = v15;
  v18[0] = v10;
  v18[1] = v11;
  outlined destroy of _ViewInputs(v18);
  v20[2] = v24;
  v20[3] = v25;
  v20[4] = v26;
  v21 = v27;
  v20[0] = v22;
  v20[1] = v23;
  return outlined destroy of _ViewInputs(v20);
}

{
  v4 = *a2;
  v5 = a2[3];
  v25 = a2[2];
  v26 = v5;
  v27 = a2[4];
  v28 = *(a2 + 20);
  v6 = a2[1];
  v23 = *a2;
  v24 = v6;
  outlined init with copy of _ViewInputs(a2, v21);
  v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE031PlatformAccessibilityPreferenceF033_44953956318F41C5365C38B8AC5FF331LLV_Tt2g5(v4);
  if (v7)
  {
    PreferenceKeys.remove(_:)(v7, v8);
  }

  v17[2] = v25;
  v17[3] = v26;
  v17[4] = v27;
  v18 = v28;
  v17[0] = v23;
  v17[1] = v24;
  v13 = v25;
  v14 = v26;
  v15 = v27;
  v16 = v28;
  v11 = v23;
  v12 = v24;
  v9 = outlined init with copy of _ViewInputs(v17, v21);
  a3(v9, &v11);
  v19[2] = v13;
  v19[3] = v14;
  v19[4] = v15;
  v20 = v16;
  v19[0] = v11;
  v19[1] = v12;
  outlined destroy of _ViewInputs(v19);
  v21[2] = v25;
  v21[3] = v26;
  v21[4] = v27;
  v22 = v28;
  v21[0] = v23;
  v21[1] = v24;
  return outlined destroy of _ViewInputs(v21);
}

void *protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance ReferenceDateModifier(unsigned int *a1, uint64_t a2, void (*a3)(uint64_t, __int128 *))
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static ViewInputsModifier._makeView(modifier:inputs:body:)(v3, v7, a3);
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA18ReferenceDateInputV_Tt2g5(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  BloomFilter.init(hashValue:)(&type metadata for ReferenceDateInput);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA18ReferenceDateInputV_Tt0B5(v4, v6) || (type metadata accessor for GlassEffectBackdropObserver?(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]), (static WeakAttribute.== infix(_:_:)() & 1) == 0))
  {
    v5 = *a1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for TypedElement<ReferenceDateInput>, &type metadata for ReferenceDateInput, &protocol witness table for ReferenceDateInput, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(&type metadata for ReferenceDateInput, 0, v5);
  }
}

void type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<ContainerRelativeShape, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type ContainerRelativeShape and conformance ContainerRelativeShape();
    v5[0] = &type metadata for ContainerRelativeShape;
    v5[1] = &type metadata for ForegroundStyle;
    v5[2] = v2;
    v5[3] = &protocol witness table for ForegroundStyle;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<ContainerRelativeShape, ForegroundStyle>);
    }
  }
}

void type metadata accessor for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ContainerRelativeShape>, &type metadata for ContainerRelativeShape, &protocol witness table for ContainerRelativeShape, type metadata accessor for ViewBodyAccessor);
    v3 = v2;
    lazy protocol witness table accessor for type ViewBodyAccessor<ContainerRelativeShape> and conformance ViewBodyAccessor<A>();
    v7[0] = v3;
    v7[1] = &type metadata for MainThreadFlags;
    v7[2] = v4;
    v7[3] = &protocol witness table for MainThreadFlags;
    v5 = type metadata accessor for StaticBody(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<ContainerRelativeShape>, MainThreadFlags>);
    }
  }
}

void key path getter for EnvironmentValues.displayGamut : EnvironmentValues(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA012DisplayGamutI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(v3, &v6);

    v4 = v6;
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA012DisplayGamutS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = *(v5 + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.defaultRenderingMode : EnvironmentValues(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *), void (*a6)(uint64_t, void, __n128))
{
  v9 = *a1;
  v10 = *a2;
  swift_retain_n();
  a5(a2, v9, &v12);

  if (a2[1])
  {
    (a6)(v10, *a2);
  }

  return result;
}

BOOL _s7SwiftUI11PropertyKeyPAASQ5ValueRpzrlE11valuesEqualySbAE_AEtFZAA19InterfaceIdiomInputV_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (a1 | a3) == 0;
  if (a1)
  {
    if (a3)
    {
      return (*(a2 + 16))(a3, a4, a1, a2) & 1;
    }
  }

  return result;
}

unint64_t _ViewOutputs.applyInterpolatorGroup<A>(_:content:inputs:animatesSize:defersRender:)(uint64_t a1, int a2, uint64_t *a3, int a4, int a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v47 = a5;
  v48 = a4;
  v49 = a2;
  v52 = a1;
  v69 = *MEMORY[0x1E69E9840];
  v12 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v42[-v13];
  v46 = a7;
  v16 = type metadata accessor for InterpolatedDisplayList(0, a6, a7, v15);
  v51 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v50 = &v42[-v17];
  v18 = *a3;
  *&v19 = a3[1];
  v54 = v19;
  v20 = a3[2];
  v21 = *(a3 + 6);
  *&v19 = *(a3 + 28);
  v55 = v19;
  v53 = *(a3 + 9);
  LODWORD(v17) = *(a3 + 17);
  v56 = *(a3 + 16);
  v57 = v17;
  v22 = *(a3 + 18);
  v23 = *(a3 + 76);
  result = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA11DisplayListV0I0V_TtB5(*v8);
  if ((result & 0x100000000) == 0)
  {
    v44 = result;
    v45 = v8;
    *&v58 = v18;
    *(&v58 + 1) = v54;
    v59 = v20;
    v60 = v21;
    v61 = v55;
    v62 = v53;
    v63 = *(a3 + 5);
    v64 = a3[7];
    v65 = v56;
    v66 = v57;
    v67 = v22;
    v68 = v23;
    swift_beginAccess();
    v43 = CachedEnvironment.animatedPosition(for:)(&v58);
    swift_endAccess();
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v26 = *(v20 + 16);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v27 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v28 = specialized CachedEnvironment.attribute<A>(id:_:)(v27, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
    swift_endAccess();
    LODWORD(v27) = (v53 >> 10) & 1;
    (*(*(a6 - 8) + 56))(v14, 1, 1, a6);
    *&v58 = 0;
    v38 = v27;
    *&v37 = __PAIR64__(v26, v55);
    *(&v37 + 1) = __PAIR64__(v44, v28);
    v29 = v50;
    v30 = InterpolatedDisplayList.init(group:content:position:animatedPosition:containerPosition:size:phase:time:transaction:environment:pixelLength:list:animatesSize:defersRender:supportsVFD:lastContent:lastSize:resetSeed:contentVersion:)(v52, v49, v56, v43, v57, OffsetAttribute2, v21, v54, v50, 0.0, 0.0, v37, v48 & 1, v47 & 1, v38, v14, 0, &v58, a6, v46);
    v31 = MEMORY[0x1EEE9AC00](v30);
    v40 = v16;
    swift_getWitnessTable(protocol conformance descriptor for InterpolatedDisplayList<A>, v16, v31);
    v41 = v32;
    type metadata accessor for Attribute<DisplayList>();
    v34 = v33;

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v29, closure #1 in Attribute.init<A>(_:)partial apply, &v39, v16, MEMORY[0x1E69E73E0], v34, MEMORY[0x1E69E7410], v35);
    (*(v51 + 8))(v29, v16);
    v36 = v58;
    AGGraphSetFlags();
    LOBYTE(v58) = 0;
    return PreferencesOutputs.subscript.setter(v36, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
  }

  return result;
}

uint64_t DisplayList.ArchiveIDs.init(uuid:stableIDs:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for DisplayList.ArchiveIDs(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

uint64_t InterpolatedDisplayList.init(group:content:position:animatedPosition:containerPosition:size:phase:time:transaction:environment:pixelLength:list:animatesSize:defersRender:supportsVFD:lastContent:lastSize:resetSeed:contentVersion:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, int a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, __int128 a12, char a13, char a14, char a15, uint64_t a16, int a17, uint64_t *a18, uint64_t a19, uint64_t a20)
{
  v23 = *a18;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 12) = a3;
  *(a9 + 16) = a4;
  *(a9 + 20) = a5;
  *(a9 + 24) = a6;
  *(a9 + 28) = a7;
  *(a9 + 32) = a8;
  *(a9 + 36) = a12;
  *(a9 + 52) = a13;
  *(a9 + 53) = a14;
  *(a9 + 54) = a15;
  v24 = type metadata accessor for InterpolatedDisplayList(0, a19, a20, a4);
  v25 = v24[23];
  v26 = type metadata accessor for Optional();
  result = (*(*(v26 - 8) + 32))(a9 + v25, a16, v26);
  v28 = (a9 + v24[24]);
  *v28 = a10;
  v28[1] = a11;
  *(a9 + v24[25]) = a17;
  *(a9 + v24[26]) = v23;
  return result;
}

uint64_t TextLayoutQuery.value.getter(uint64_t a1, uint64_t a2)
{
  v3 = HIDWORD(a1);
  type metadata accessor for ResolvedStyledText();
  v4 = *AGGraphGetValue();
  type metadata accessor for CGSize(0);

  Value = AGGraphGetValue();
  v6 = *Value;
  v7 = Value[1];
  v8 = AGGraphGetValue();
  v9.n128_u64[0] = *v8;
  v10.n128_u64[0] = v8[1];
  (*(*v4 + 304))(v20, 0, 0.0, 0.0, v6, v7, v9, v10);

  v11 = *v20;
  if (!*v20)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v12 = v21;
  v13 = v20[8];
  v14 = *AGGraphGetValue() * 0.0;
  *v20 = v3;
  *&v20[4] = a2;
  v15 = CGPoint.prepare(geometry:)(v20, v14);
  v17 = v16;
  _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_1(0, &lazy cache variable for type metadata for AnchorValueBox<UnitPoint>, &type metadata for UnitPoint, &protocol witness table for UnitPoint, type metadata accessor for AnchorValueBox);
  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  _sypSgMaTm_5(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Text.LayoutKey.AnchoredLayout>, &type metadata for Text.LayoutKey.AnchoredLayout, MEMORY[0x1E69E6F90]);
  result = swift_allocObject();
  *(result + 16) = xmmword_18DDA6EB0;
  *(result + 32) = v18;
  *(result + 40) = v11;
  *(result + 48) = v13 & 1;
  *(result + 56) = v12;
  return result;
}

uint64_t initializeWithCopy for Text.LayoutKey.AnchoredLayout(uint64_t a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = a2[3];

  return a1;
}

uint64_t specialized static Text.LayoutKey.AnchoredLayout.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  if ((*(**a1 + 112))(*a2))
  {
    return _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV6LayoutV4LineV_Tt1g5(v2, v5) & ~(v3 ^ v6) & (v4 == v7);
  }

  else
  {
    return 0;
  }
}

double destroy for Text.LayoutKey.AnchoredLayout(void *a1)
{

  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

char *Text.Layout.Line.clusters(for:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, MEMORY[0x1E69E7BE0]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - v9;
  v11 = v3[1];
  v12 = *(v3 + 16);
  v13 = v3[3];
  v14 = v3[4];
  v15 = *(v3 + 10);
  v23 = *v3;
  v24 = v11;
  v25 = v12;
  v26 = v13;
  v27 = v14;
  v28 = v15;
  v18[0] = v23;
  v18[1] = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  Text.Layout.Line.characterRanges(runIndices:)(a1, a2);
  v16 = Text.Layout.Line.clusters(for:)();
  (*(v8 + 8))(v10, v7);
  return v16;
}

void type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void Text.Layout.Line.characterRanges(runIndices:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex();
  RangeSet.init()();
  if (a1 != a2)
  {
    if (a2 >= a1)
    {
      goto LABEL_6;
    }

    __break(1u);
    while (a2 != ++a1)
    {
LABEL_6:
      if (a1 >= a2)
      {
        __break(1u);
LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      if (v7)
      {
        v8 = v5;

        v9 = _NSTextLineFragmentGetCTLine(v8);

        if (!v9)
        {
          goto LABEL_20;
        }
      }

      else
      {
        outlined copy of Text.Layout.Line.Line(v5, v6);
        v9 = v5;
      }

      v10 = CTLineGetRunAtIndex();
      StringRange = CTRunGetStringRange(v10);

      v12 = StringRange.location + StringRange.length;
      if (__OFADD__(StringRange.location, StringRange.length))
      {
        goto LABEL_17;
      }

      if (v12 < StringRange.location)
      {
        goto LABEL_18;
      }

      v14[4] = StringRange.location;
      v14[5] = StringRange.location + StringRange.length;
      if (__OFSUB__(v12, StringRange.location))
      {
        goto LABEL_19;
      }

      if (v12 != StringRange.location)
      {
        type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, MEMORY[0x1E69E7BE0]);
        v13 = RangeSet._ranges.modify();
        type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, MEMORY[0x1E69E7BA8]);
        RangeSet.Ranges._insert(contentsOf:)();
        v13(v14, 0);
      }
    }
  }
}

void lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex()
{
  if (!lazy protocol witness table cache variable for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex);
  }
}

{
  if (!lazy protocol witness table cache variable for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex)
  {
    swift_getWitnessTable(protocol conformance descriptor for Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex);
  }
}

char *Text.Layout.Line.clusters(for:)()
{
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, MEMORY[0x1E69E7BA8]);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v38 - v4;
  type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v0;
  v43 = *(v0 + 8);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v13 = *(v0 + 32);
  v42 = *(v0 + 40);
  type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(0, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, MEMORY[0x1E69E7BE0]);
  RangeSet.ranges.getter();
  (*(v3 + 16))(v9, v5, v2);
  v14 = *(v7 + 44);
  lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges();
  dispatch thunk of Collection.startIndex.getter();
  (*(v3 + 8))(v5, v2);
  v45 = MEMORY[0x1E69E7CC0];
  v44 = v11;
  while (1)
  {
LABEL_3:
    dispatch thunk of Collection.endIndex.getter();
    if (*&v9[v14] == v46[0])
    {
      outlined destroy of (NSAttributedStringKey, CGColorRef)(v9, type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
      return v45;
    }

    v15 = dispatch thunk of Collection.subscript.read();
    v18 = *v16;
    v17 = v16[1];
    v15(v46, 0);
    dispatch thunk of Collection.formIndex(after:)();
    if ((v11 & 1) == 0)
    {
      break;
    }

    v19 = v10;
    v20 = _NSTextLineFragmentGetCTLine(v19);

    if (v20)
    {
      goto LABEL_8;
    }
  }

  outlined copy of Text.Layout.Line.Line(v10, v43);

  v20 = v10;
LABEL_8:
  v21 = v18;
LABEL_9:
  v22 = v21;
  while (1)
  {
    if (v22 >= v17 || (result = CTLineGetRangeOfCharacterClusterAtIndex(), result == -1))
    {

      LOBYTE(v11) = v44;
      goto LABEL_3;
    }

    v25 = &result[v24];
    if (__OFADD__(result, v24))
    {
      break;
    }

    if (v25 < result)
    {
      goto LABEL_35;
    }

    if (v17 >= result)
    {
      v26 = result;
    }

    else
    {
      v26 = v17;
    }

    if (result >= v18)
    {
      v22 = v26;
    }

    else
    {
      v22 = v18;
    }

    if (v25 <= v18)
    {
      v27 = v18;
    }

    else
    {
      v27 = v25;
    }

    if (v17 >= v25)
    {
      v21 = v27;
    }

    else
    {
      v21 = v17;
    }

    if (__OFSUB__(v21, v22))
    {
      goto LABEL_36;
    }

    if (v21 != v22)
    {
      v46[0] = v10;
      v46[1] = v43;
      v47 = v44;
      v48 = v12;
      v49 = v13;
      v50 = v42;
      v41 = v22;
      Text.Layout.Line.slices(for:)(v22, v21);
      v29 = v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
      }

      v32 = *(v45 + 2);
      v31 = *(v45 + 3);
      v33 = v32 + 1;
      v34 = v41;
      if (v32 >= v31 >> 1)
      {
        v39 = v32 + 1;
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v45);
        v33 = v39;
        v34 = v41;
        v45 = v37;
      }

      v35 = v45;
      *(v45 + 2) = v33;
      v36 = &v35[24 * v32];
      *(v36 + 4) = v34;
      *(v36 + 5) = v21;
      *(v36 + 6) = v40;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void type metadata accessor for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, MEMORY[0x1E69E7BA8]);
    lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges();
    v1 = type metadata accessor for IndexingIterator();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for IndexingIterator<RangeSet<Text.Layout.CharacterIndex>.Ranges>);
    }
  }
}

void lazy protocol witness table accessor for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges()
{
  if (!lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges)
  {
    type metadata accessor for RangeSet<Text.Layout.CharacterIndex>(255, &lazy cache variable for type metadata for RangeSet<Text.Layout.CharacterIndex>.Ranges, lazy protocol witness table accessor for type Text.Layout.CharacterIndex and conformance Text.Layout.CharacterIndex, &type metadata for Text.Layout.CharacterIndex, MEMORY[0x1E69E7BA8]);
    swift_getWitnessTable(MEMORY[0x1E69E7BC8], v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RangeSet<Text.Layout.CharacterIndex>.Ranges and conformance RangeSet<A>.Ranges);
  }
}

void Text.Layout.Line.slices(for:)(CFIndex a1, CFIndex a2)
{
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  v8 = *(v2 + 24);
  v9 = *(v2 + 32);
  v50 = *(v2 + 40);
  v61 = MEMORY[0x1E69E7CC0];
  v60 = v7;
  outlined copy of Text.Layout.Line.Line(v5, v6);
  v10 = 0;
  v52 = a1;
  v11 = __OFSUB__(a2, a1);
  v49 = a2;
  v46 = v5;
  v47 = v11;
  v48 = v7;
  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v12 = v5;
  v13 = _NSTextLineFragmentGetCTLine(v12);

  if (v13)
  {
    while (1)
    {
      RunCount = CTLineGetRunCount();

      if (v10 == RunCount)
      {
        goto LABEL_59;
      }

      if (v7)
      {
        goto LABEL_13;
      }

      outlined copy of Text.Layout.Line.Line(v5, v6);

      outlined copy of Text.Layout.Line.Line(v5, v6);

      outlined copy of Text.Layout.Line.Line(v5, v6);

      v16 = v5;
      v18 = v5;
LABEL_17:
      v19 = CTLineGetRunCount();

LABEL_18:
      if (v10 >= v19)
      {
        __break(1u);
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
        goto LABEL_68;
      }

      v20 = CTLineGetRunAtIndex();
      StringRange = CTRunGetStringRange(v20);

      v22 = StringRange.location + StringRange.length;
      if (__OFADD__(StringRange.location, StringRange.length))
      {
        goto LABEL_61;
      }

      if (v22 < StringRange.location)
      {
        goto LABEL_62;
      }

      if (StringRange.location >= a2 || v22 <= v52)
      {
        goto LABEL_6;
      }

      if (__OFSUB__(v22, StringRange.location))
      {
        goto LABEL_63;
      }

      if (v22 == StringRange.location)
      {
        goto LABEL_6;
      }

      if (v11)
      {
        goto LABEL_66;
      }

      if (a2 == v52)
      {
LABEL_6:

        ++v10;
        if (v7)
        {
          goto LABEL_7;
        }
      }

      else
      {
        v23 = CTLineGetRunAtIndex();
        GlyphCount = CTRunGetGlyphCount(v23);

        if (GlyphCount < 0)
        {
          goto LABEL_67;
        }

        v55[0] = v16;
        v55[1] = v10;
        v55[2] = v8;
        v55[3] = v9;
        v56 = v50;
        v57 = v6;
        v58 = 0;
        v59 = GlyphCount;
        v51 = v16;

        Text.Layout.RunSlice.characterIndices.getter();
        v26 = v25;
        sub_18D36CCC8(v55);
        v27 = *(v26 + 16);
        if (v27)
        {
          v28 = 0;
          v29 = v26 + 32;
          v30 = MEMORY[0x1E69E7CC0];
          while (1)
          {
            v32 = *(v29 + 8 * v28);
            v33 = v28 + 1;
            if (v32 >= v52 && v32 < a2)
            {
              v35 = *(v30 + 2);
              if (v35 && (v36 = v35 - 1, v37 = &v30[16 * v35 - 16], v28 == *(v37 + 5)))
              {
                v28 = *(v37 + 4);
                if (v33 < v28)
                {
                  goto LABEL_64;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
                }

                if (v35 > *(v30 + 2))
                {
                  goto LABEL_65;
                }
              }

              else
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v35 + 1, 1, v30);
                }

                v36 = *(v30 + 2);
                v38 = *(v30 + 3);
                if (v36 >= v38 >> 1)
                {
                  v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v36 + 1, 1, v30);
                }

                *(v30 + 2) = v36 + 1;
              }

              v31 = &v30[16 * v36];
              *(v31 + 4) = v28;
              *(v31 + 5) = v33;
              a2 = v49;
            }

            v28 = v33;
            if (v27 == v33)
            {
              goto LABEL_50;
            }
          }
        }

        v30 = MEMORY[0x1E69E7CC0];
LABEL_50:

        v39 = *(v30 + 2);
        if (v39)
        {
          v54 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0);
          v40 = v54;
          v41 = 32;
          do
          {
            v53 = *&v30[v41];
            v42 = *(v54 + 16);
            v43 = *(v54 + 24);
            v44 = v51;

            if (v42 >= v43 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v42 + 1, 1);
            }

            *(v54 + 16) = v42 + 1;
            v45 = v54 + (v42 << 6);
            *(v45 + 32) = v44;
            *(v45 + 40) = v10;
            *(v45 + 48) = v8;
            *(v45 + 56) = v9;
            *(v45 + 64) = v50;
            *(v45 + 72) = v6;
            v41 += 16;
            *(v45 + 80) = v53;
            --v39;
          }

          while (v39);

          v5 = v46;
          a2 = v49;
        }

        else
        {

          v40 = MEMORY[0x1E69E7CC0];
        }

        specialized Array.append<A>(contentsOf:)(v40);

        ++v10;
        v11 = v47;
        v7 = v48;
        if (v48)
        {
          goto LABEL_7;
        }
      }

LABEL_10:
      outlined copy of Text.Layout.Line.Line(v5, v6);

      v13 = v5;
    }
  }

  if (!v10)
  {
LABEL_59:
    outlined consume of Text.Layout.Line.Line(v5, v6);
    return;
  }

LABEL_13:
  v15 = v5;
  v16 = _NSTextLineFragmentGetCTLine(v15);

  if (v16)
  {
    outlined copy of Text.Layout.Line.Line(v5, v6);

    v17 = v15;
    v18 = _NSTextLineFragmentGetCTLine(v17);

    if (!v18)
    {
      v19 = 0;
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_68:
  __break(1u);
}

void Text.Layout.RunSlice.characterIndices.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v3 = v2 - v1;
  if (__OFSUB__(v2, v1))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = CTLineGetRunAtIndex();
  StringIndicesPtr = CTRunGetStringIndicesPtr(v4);

  if (!StringIndicesPtr)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      if (v3)
      {
        v14 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *(v14 + 16) = v3;
        bzero((v14 + 32), 8 * v3);
      }

      else
      {
        v14 = MEMORY[0x1E69E7CC0];
      }

      v15 = CTLineGetRunAtIndex();
      v16.location = v1;
      v16.length = v2 - v1;
      CTRunGetStringIndices(v15, v16, (v14 + 32));

      return;
    }

    goto LABEL_18;
  }

  v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3 & ~(v3 >> 63), 0, MEMORY[0x1E69E7CC0]);
  v7 = v6;
  if (v2 == v1)
  {
    return;
  }

  if (v2 < v1)
  {
    goto LABEL_19;
  }

  v8 = v2 - v1;
  if (v2 <= v1)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v9 = *(v6 + 2);
  v10 = &StringIndicesPtr[v1];
  do
  {
    v12 = *v10++;
    v11 = v12;
    v13 = *(v7 + 3);
    if (v9 >= v13 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v9 + 1, 1, v7);
    }

    *(v7 + 2) = v9 + 1;
    *&v7[8 * v9++ + 32] = v11;
    --v8;
  }

  while (v8);
}

uint64_t initializeWithCopy for Text.Layout.RunSlice(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  v5 = v3;

  return a1;
}

uint64_t outlined destroy of (NSAttributedStringKey, CGColorRef)(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18D36BB64(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

void *protocol witness for Collection.formIndex(after:) in conformance Text.Layout.Cluster(void *result)
{
  if (*result >= *(*(v1 + 16) + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void Text.Layout.RunSlice.positions.getter()
{
  v1 = v0[1];
  v17 = *v0;
  v18 = v1;
  v2 = v0[3];
  v19 = v0[2];
  v20 = v2;
  v3 = (*&v2.f64[1] - *&v2.f64[0]);
  if (*&v2.f64[1] < *&v2.f64[0])
  {
    __break(1u);
    goto LABEL_12;
  }

  if (__OFSUB__(*&v2.f64[1], *&v2.f64[0]))
  {
LABEL_12:
    __break(1u);
    return;
  }

  v4 = MEMORY[0x1E69E7CC0];
  if (v3 >= 1)
  {
    type metadata accessor for CGPoint(0);
    v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v5 + 16) = v3;
    bzero((v5 + 32), 16 * v3);
    v16[0] = (v5 + 32);
    v16[1] = v3;
    closure #1 in Text.Layout.RunSlice.positions.getter(v16, &v17);
    v6 = *(v5 + 16);
    if (v6)
    {
      v15 = v18;
      v16[0] = v4;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
      v7 = v15;
      v8 = v16[0];
      x = v16[0][1].x;
      v10 = 32;
      do
      {
        v11 = *(v5 + v10);
        v16[0] = v8;
        v12 = *&v8[1].y;
        if (*&x >= v12 >> 1)
        {
          v14 = v11;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), *&x + 1, 1);
          v11 = v14;
          v7 = v15;
          v8 = v16[0];
        }

        *&v13.x = *&vaddq_f64(v7, v11);
        v13.y = vsubq_f64(v7, v11).f64[1];
        *&v8[1].x = *&x + 1;
        v8[*&x + 2] = v13;
        v10 += 16;
        ++*&x;
        --v6;
      }

      while (v6);
    }
  }
}

void closure #1 in Text.Layout.RunSlice.positions.getter(CGPoint **a1, void *a2)
{
  v4 = CTLineGetRunAtIndex();
  PositionsPtr = CTRunGetPositionsPtr(v4);

  if (PositionsPtr)
  {
    v6 = a2[6];
    v7 = a2[7];
    if (v6 != v7)
    {
      if (v7 < v6)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (v6 >= v7)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *a1;
      v9 = a2[6];
      while (!__OFSUB__(v9, v6))
      {
        v8[v9 - v6] = PositionsPtr[v9];
        if (v7 == ++v9)
        {
          return;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  else
  {
    v10 = CTLineGetRunAtIndex();
    v11.location = a2[6];
    v12 = a2[7];
    if (__OFSUB__(v12, v11.location))
    {
      goto LABEL_14;
    }

    if (!*a1)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v13 = v10;
    v11.length = v12 - v11.location;
    CTRunGetPositions(v10, v11, *a1);
  }
}

void Text.Layout.RunSlice.paths.getter()
{
  v1 = v0[1];
  v24[0] = *v0;
  v24[1] = v1;
  v2 = v0[3];
  v24[2] = v0[2];
  v25 = v2;
  v3 = CTLineGetRunAtIndex();
  v4 = CTRunGetFont();

  v5 = (*(&v25 + 1) - v25);
  if (*(&v25 + 1) < v25)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (__OFSUB__(*(&v25 + 1), v25))
  {
LABEL_25:
    __break(1u);
    return;
  }

  if (v5 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v6 + 16) = v5;
    bzero((v6 + 32), 2 * v5);
    v23[0] = (v6 + 32);
    v23[1] = v5;
    closure #1 in Text.Layout.RunSlice.glyphs.getter(v23, v24);
  }

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 32);
    v9 = MEMORY[0x1E69E7CC0];
    do
    {
      while (1)
      {
        v11 = *v8++;
        v12 = v4;
        PathForGlyph = CTFontCreatePathForGlyph(v12, v11, 0);
        if (!PathForGlyph)
        {
          break;
        }

        v14 = PathForGlyph;
        v15 = PathForGlyph;
        if (CGPathIsEmpty(v15))
        {

          v16 = 0;
          v17 = 6;
        }

        else
        {
          type metadata accessor for Path.PathBox();
          v16 = swift_allocObject();
          *(v16 + 32) = 0u;
          *(v16 + 48) = 0u;
          *(v16 + 64) = 0u;
          *(v16 + 80) = 0u;
          *(v16 + 96) = 0u;
          *(v16 + 112) = 0;
          *(v16 + 16) = 0;
          v17 = 5;
          *(v16 + 24) = v14;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
        }

        v22 = v9[2];
        v21 = v9[3];
        if (v22 >= v21 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v9);
        }

        v9[2] = v22 + 1;
        v10 = &v9[5 * v22];
        v10[4] = v16;
        v10[5] = 0;
        v10[6] = 0;
        v10[7] = 0;
        *(v10 + 64) = v17;
        if (!--v7)
        {
          goto LABEL_23;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
      }

      v19 = v9[2];
      v18 = v9[3];
      if (v19 >= v18 >> 1)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v9);
      }

      v9[2] = v19 + 1;
      v20 = &v9[5 * v19];
      *(v20 + 2) = 0u;
      *(v20 + 3) = 0u;
      *(v20 + 64) = -1;
      --v7;
    }

    while (v7);
  }

LABEL_23:
}

void closure #1 in Text.Layout.RunSlice.glyphs.getter(CGGlyph **a1, void *a2)
{
  v4 = CTLineGetRunAtIndex();
  GlyphsPtr = CTRunGetGlyphsPtr(v4);

  if (GlyphsPtr)
  {
    v6 = a2[6];
    v7 = a2[7];
    if (v6 != v7)
    {
      if (v7 < v6)
      {
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (v6 >= v7)
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v8 = *a1;
      v9 = a2[6];
      while (!__OFSUB__(v9, v6))
      {
        v8[v9 - v6] = GlyphsPtr[v9];
        if (v7 == ++v9)
        {
          return;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  else
  {
    v10 = CTLineGetRunAtIndex();
    v11.location = a2[6];
    v12 = a2[7];
    if (__OFSUB__(v12, v11.location))
    {
      goto LABEL_14;
    }

    if (!*a1)
    {
LABEL_17:
      __break(1u);
      return;
    }

    v13 = v10;
    v11.length = v12 - v11.location;
    CTRunGetGlyphs(v10, v11, *a1);
  }
}

void type metadata accessor for _ContiguousArrayStorage<Path?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Path?>)
  {
    type metadata accessor for _ContiguousArrayStorage<DisplayList.Item>(255, &lazy cache variable for type metadata for Path?, &type metadata for Path, MEMORY[0x1E69E6720]);
    v1 = type metadata accessor for _ContiguousArrayStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _ContiguousArrayStorage<Path?>);
    }
  }
}

uint64_t Path.addPath(_:transform:)(uint64_t a1, double *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = *v2;
  v6 = (v2 + 8);
  v7 = *(v2 + 8);
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  if (v10 == 6 && (v7 | *v2 | v8 | v9) == 0)
  {
    result = Path.applying(_:)(a2, &v33);
    v18 = *&v33.c;
    *v2 = *&v33.a;
    *(v2 + 16) = v18;
    *(v2 + 32) = LOBYTE(v33.tx);
    return result;
  }

  result = *a1;
  v13 = *(a1 + 32);
  if (v13 > 2)
  {
    if (v13 == 5)
    {
      v31 = *(a2 + 1);
      v32 = *a2;
      v30 = *(a2 + 2);
      if (*(result + 16))
      {
        v29 = *v2;
        if (*(result + 16) == 1)
        {
        }

        else
        {
          v19 = one-time initialization token for bufferCallbacks;

          if (v19 != -1)
          {
            swift_once();
          }
        }

        v5 = v29;
LABEL_23:
        IsEmpty = RBPathIsEmpty();
        result = outlined destroy of Path(a1);
        if (IsEmpty)
        {
          return result;
        }

        goto LABEL_24;
      }
    }

    else
    {
      if (v13 == 6)
      {
        return result;
      }

      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    if (!*(result + 24))
    {
      __break(1u);
      goto LABEL_45;
    }

    goto LABEL_23;
  }

  v30 = *(a2 + 2);
  v31 = *(a2 + 1);
  v32 = *a2;
  if (v13 >= 2)
  {
    v16 = *(result + 16);
    v17 = *(result + 24);
    v14 = *(result + 32);
    v15 = *(result + 40);
  }

  else
  {
    v14 = *(a1 + 16);
    v15 = *(a1 + 24);
    v16 = result;
    v17 = *(a1 + 8);
  }

  result = CGRectIsNull(*&v16);
  if (result)
  {
    return result;
  }

LABEL_24:
  if (v10 != 5)
  {
    v28 = v2;
    type metadata accessor for Path.PathBox();
    v21 = swift_allocObject();
    *(v21 + 24) = 0u;
    *(v21 + 40) = 0u;
    *(v21 + 56) = 0u;
    *(v21 + 72) = 0u;
    *(v21 + 88) = 0u;
    *(v21 + 104) = 0u;
    *(v21 + 16) = 2;
    RBPathStorageInit();
    v24 = *(v21 + 16);

    if (v24 != 2)
    {
      Path.PathBox.prepareBuffer()();
    }

    v34 = v5;
    v35 = v7;
    v36 = v8;
    v37 = v9;
    v38 = v10;
    Path.append(to:)(v21 + 24);
    v2 = v28;
    goto LABEL_37;
  }

  v21 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    type metadata accessor for Path.PathBox();
    v21 = swift_allocObject();
    *(v21 + 24) = 0u;
    result = v21 + 24;
    *(v21 + 40) = 0u;
    *(v21 + 56) = 0u;
    *(v21 + 72) = 0u;
    *(v21 + 88) = 0u;
    *(v21 + 104) = 0u;
    v22 = *(v5 + 16);
    *(v21 + 16) = v22;
    if (v22)
    {
      if (v22 == 1)
      {

        *(v21 + 24) = RBPathRetain();
        *(v21 + 32) = v23;
      }

      else
      {
        RBPathStorageInit();
      }

      goto LABEL_35;
    }

    v25 = *(v5 + 24);
    if (v25)
    {
      *result = v25;
      v26 = v25;
LABEL_35:

      goto LABEL_36;
    }

LABEL_45:
    __break(1u);
    return result;
  }

LABEL_36:

  v5 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  LOBYTE(v10) = 6;
LABEL_37:

  outlined consume of Path.Storage(v5, v7, v8, v9, v10);
  *v2 = v21;
  v6[1] = 0;
  v6[2] = 0;
  *v6 = 0;
  *(v2 + 32) = 5;
  if (*(v21 + 16) != 2)
  {
    Path.PathBox.prepareBuffer()();
  }

  *&v33.a = v32;
  *&v33.c = v31;
  *&v33.tx = v30;
  if (CGAffineTransformIsIdentity(&v33))
  {
    Path.append(to:)(v21 + 24);
  }

  else
  {
    v27 = *(a2 + 1);
    *&v33.a = *a2;
    *&v33.c = v27;
    *&v33.tx = *(a2 + 2);
    MEMORY[0x193AC35E0](v21 + 24, 17, 0, &v33);
    Path.append(to:)(v21 + 24);
    MEMORY[0x193AC35E0](v21 + 24, 16, 0, 0);
  }
}

double CGPoint.prepare(geometry:)(unsigned int *a1, double a2)
{
  if (one-time initialization token for root != -1)
  {
    swift_once();
  }

  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 8);
  v5 = *(Value + 16);
  v6 = *(Value + 24);
  v7 = *(Value + 32);
  v8 = *(Value + 40);
  type metadata accessor for CGPoint(0);

  v9 = AGGraphGetValue();
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = v7 - (*v9 - v5);
  v15.f64[0] = v3;
  v15.f64[1] = v4;
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v8 - (v11 - v6);
  specialized ApplyViewTransform.convert(to:transform:)(&static CoordinateSpace.root, &v15);
  outlined destroy of ViewTransform(&v15);
  return a2;
}

__n128 protocol witness for Sequence.makeIterator() in conformance Text.Layout.Cluster@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1] = v2;
  return result;
}

uint64_t (*protocol witness for Collection.subscript.read in conformance Text.Layout.Cluster(uint64_t (**a1)(), unint64_t *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0xC0uLL);
  }

  *a1 = result;
  v6 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v2 + 16);
    if (v6 < *(v7 + 16))
    {
      v8 = (v7 + (v6 << 6));
      v9 = v8[2];
      v10 = v8[3];
      v11 = v8[5];
      *(result + 2) = v8[4];
      *(result + 3) = v11;
      *result = v9;
      *(result + 1) = v10;
      v12 = v8[2];
      v13 = v8[3];
      v14 = v8[5];
      *(result + 6) = v8[4];
      *(result + 7) = v14;
      *(result + 4) = v12;
      *(result + 5) = v13;
      outlined init with copy of Text.Layout.RunSlice(result, result + 128);
      return protocol witness for Collection.subscript.read in conformance Text.Layout.Cluster;
    }
  }

  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for Font.FontCache.Key(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Text.ResolvedProperties.Transition(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 15))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 14);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

void Text.Layout.RunSlice.typographicBounds.getter(float64x2_t *a1@<X8>)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
  if (v3 == v4)
  {
    goto LABEL_4;
  }

  v11 = *(v1 + 16);
  v8 = CTLineGetRunAtIndex();
  if (!__OFSUB__(v4, v3))
  {
    v9 = v8;
    v10.location = v3;
    v10.length = v4 - v3;
    specialized Text.Layout.TypographicBounds.init(run:range:)(v8, v10, v12[0].f64);

    v6 = v12[1];
    v7 = v12[2];
    v5 = vaddq_f64(v11, v12[0]);
LABEL_4:
    *a1 = v5;
    a1[1] = v6;
    a1[2] = v7;
    return;
  }

  __break(1u);
}

void protocol witness for Collection.subscript.read in conformance Text.Layout.Cluster(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  *(v1 + 128) = *(*a1 + 64);
  *(v1 + 144) = v2;
  v3 = *(v1 + 112);
  *(v1 + 160) = *(v1 + 96);
  *(v1 + 176) = v3;
  sub_18D36CCC8((v1 + 128));

  free(v1);
}

void protocol witness for Sequence.makeIterator() in conformance Text.Layout(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
}

uint64_t getEnumTagSinglePayload for Text.Layout.Line(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 44))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for Text.Layout.Line(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance Text.Layout(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

uint64_t TextLayoutFragmentRenderer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void Text.Layout.init(fragment:)(void *a1@<X0>, uint64_t isEscapingClosureAtFileLocation@<X8>)
{
  type metadata accessor for TextLayoutFragmentRenderer();
  v38 = swift_allocObject();
  *(v38 + 16) = a1;
  v4 = a1;
  v5 = [v4 textLineFragments];
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextLineFragment, 0x1E69DB830);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
LABEL_21:
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:

    v8 = 0;
    v9 = 0;
    v11 = MEMORY[0x1E69E7CC0];
LABEL_23:

    v33 = *(v11 + 2);
    outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v8, v9);
    *isEscapingClosureAtFileLocation = v11;
    *(isEscapingClosureAtFileLocation + 8) = 0;
    *(isEscapingClosureAtFileLocation + 16) = v33;
    return;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_3:
  if (v7 >= 1)
  {
    v34 = v4;
    v35 = isEscapingClosureAtFileLocation;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v36 = v40;
    v11 = MEMORY[0x1E69E7CC0];
    v37 = v7;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x193AC03C0](v10, v6);
      }

      else
      {
        v12 = *(v6 + 8 * v10 + 32);
      }

      v13 = v12;
      [v12 typographicBounds];
      v15 = v14;
      v17 = v16;
      [v13 glyphOrigin];
      v19 = v18;
      v21 = v20;
      v22 = _NSTextLineFragmentGetCTLine(v13);
      if (v22)
      {
        v4 = v22;
        v23 = _NSTextLineFragmentGetOverridesHandler(v13);
        if (v23)
        {
          v24 = v23;
          v25 = swift_allocObject();
          *(v25 + 16) = v24;

          outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v8, v9);
          v26 = swift_allocObject();
          v8 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned RBDrawingState, @unowned Int) -> ();
          *(v26 + 16) = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned RBDrawingState, @unowned Int) -> ();
          *(v26 + 24) = v25;
          v40[2] = partial apply for thunk for @callee_guaranteed (@unowned Int, @unowned UnsafeMutablePointer<CFRange>) -> (@unowned Unmanaged<CFDictionaryRef>?);
          v40[3] = v26;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          v40[0] = thunk for @escaping @callee_guaranteed (@unowned Int, @unowned UnsafeMutablePointer<CFRange>) -> (@unowned Unmanaged<CFDictionaryRef>?);
          v40[1] = &block_descriptor_23;
          v27 = _Block_copy(aBlock);

          CopyWithAttributeOverrides = CTLineCreateCopyWithAttributeOverrides();
          _Block_release(v27);

          isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

          if (isEscapingClosureAtFileLocation)
          {
            __break(1u);
            goto LABEL_21;
          }

          v9 = v25;
          v4 = CopyWithAttributeOverrides;
        }

        v29 = v4;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        }

        v31 = *(v11 + 2);
        v30 = *(v11 + 3);
        if (v31 >= v30 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v11);
        }

        *(v11 + 2) = v31 + 1;
        v32 = &v11[48 * v31];
        *(v32 + 4) = v4;
        *(v32 + 5) = v38;
        v32[48] = 0;
        *(v32 + 7) = v15 + v19;
        *(v32 + 8) = v17 + v21;
        *(v32 + 18) = 0;
        v7 = v37;
      }

      else
      {
      }

      if (v7 == ++v10)
      {

        v4 = v34;
        isEscapingClosureAtFileLocation = v35;
        goto LABEL_23;
      }
    }
  }

  __break(1u);
}

uint64_t sub_18D36D26C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t getEnumTagSinglePayload for Path(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t Path.offsetBy(dx:dy:)@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>)
{
  if (a2 == 0.0 && a3 == 0.0)
  {
    v9 = *(v3 + 16);
    v5 = *(v3 + 32);
    *&v13.a = *v3;
    v10 = *&v13.a;
    *&v13.c = v9;
    LOBYTE(v13.tx) = *(v3 + 32);
    result = outlined init with copy of Path.Storage(&v13, v11);
    v8 = v9;
    v7 = v10;
  }

  else
  {
    CGAffineTransformMakeTranslation(&v13, a2, a3);
    result = Path.applying(_:)(&v13.a, v11);
    v7 = v11[0];
    v8 = v11[1];
    v5 = v12;
  }

  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v5;
  return result;
}

uint64_t static Path.== infix(_:_:)(uint64_t a1, int8x16_t *a2)
{
  v2 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v2;
  v8 = *(a1 + 32);
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6 = a2[2].i8[0];
  return specialized static Path.Storage.== infix(_:_:)(v7, v5) & 1;
}

uint64_t @objc closure #4 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks(uint64_t a1, uint64_t a2)
{

  v4 = MEMORY[0x193AC3620](a1 + 24, a2 + 24);

  return v4;
}

void closure #1 in ResolvedStyledText.TextLayoutManager.layout(with:in:at:shape:)(void *a1, double *a2)
{
  v3 = [a1 textLineFragments];
  type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSTextLineFragment, 0x1E69DB830);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AC03C0](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = *a2;
      [v7 typographicBounds];
      MaxY = CGRectGetMaxY(v12);

      if (v9 > MaxY)
      {
        v11 = v9;
      }

      else
      {
        v11 = MaxY;
      }

      *a2 = v11;
    }

    while (v5 != v6);
    goto LABEL_13;
  }

  __break(1u);
}

void Color.Resolved.init(colorSpace:red:green:blue:opacity:)(_BYTE *a1, float a2, float a3, float a4)
{
  if (*a1)
  {
    if (*a1 != 1)
    {
      if (a2 <= 0.0)
      {
        v4 = -a2;
      }

      else
      {
        v4 = a2;
      }

      if (v4 > 0.04045 && v4 != 1.0)
      {
        v5 = a3;
        v6 = a4;
        powf((v4 * 0.94787) + 0.052133, 2.4);
        a3 = v5;
        a4 = v6;
      }

      if (a3 <= 0.0)
      {
        v13 = -a3;
      }

      else
      {
        v13 = a3;
      }

      if (v13 > 0.04045 && v13 != 1.0)
      {
        v14 = a4;
        powf((v13 * 0.94787) + 0.052133, 2.4);
        a4 = v14;
      }

      if (a4 <= 0.0)
      {
        v15 = -a4;
      }

      else
      {
        v15 = a4;
      }

      if (v15 > 0.04045 && v15 != 1.0)
      {
        powf((v15 * 0.94787) + 0.052133, 2.4);
      }
    }
  }

  else
  {
    if (a2 <= 0.0)
    {
      v7 = -a2;
    }

    else
    {
      v7 = a2;
    }

    if (v7 > 0.04045 && v7 != 1.0)
    {
      v8 = a3;
      v9 = a4;
      powf((v7 * 0.94787) + 0.052133, 2.4);
      a3 = v8;
      a4 = v9;
    }

    if (a3 <= 0.0)
    {
      v10 = -a3;
    }

    else
    {
      v10 = a3;
    }

    if (v10 > 0.04045 && v10 != 1.0)
    {
      v11 = a4;
      powf((v10 * 0.94787) + 0.052133, 2.4);
      a4 = v11;
    }

    if (a4 <= 0.0)
    {
      v12 = -a4;
    }

    else
    {
      v12 = a4;
    }

    if (v12 > 0.04045 && v12 != 1.0)
    {
      powf((v12 * 0.94787) + 0.052133, 2.4);
    }
  }
}

uint64_t specialized AnimatorState.combine(newAnimation:newInterval:at:in:environment:)(uint64_t a1, void *a2, void *a3, uint64_t a4, double a5)
{
  v6 = v5;
  if (*(v5 + 141))
  {
    goto LABEL_2;
  }

  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v26 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else if (static Semantics.forced < v26)
  {
LABEL_29:
    swift_beginAccess();
    *(v5 + 16) = a1;

    swift_beginAccess();
    outlined assign with copy of _AnyAnimatableData(a2, v5 + 32);
    swift_endAccess();
    goto LABEL_19;
  }

LABEL_2:
  v11 = a5 - *(v5 + 72);
  swift_beginAccess();
  v12 = *(v5 + 24);
  v13 = *(v5 + 160);

  v33[0] = v12;
  v33[1] = AGCreateWeakAttribute();
  v34 = 0;
  v35 = v13;
  v14 = *(v5 + 168);
  if (v14)
  {
    v15 = *(v5 + 176);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for AnimationFinishingDefinitionKey);
    v17 = v16;
    type metadata accessor for AnimationFinishingDefinitionKey<ShaderVectorData>?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>?, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<_AnyAnimatableData>, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData);
    v32[3] = v18;
    v32[0] = v14;
    v32[1] = v15;
    specialized Dictionary.subscript.setter(v32, v17);
  }

  swift_beginAccess();
  v19 = *(v5 + 16);
  v20 = *(v5 + 24);
  swift_beginAccess();
  outlined init with copy of _AnyAnimatableData((v5 + 32), v32);

  specialized AnimatorState.forkListeners(animation:state:interval:)(v19, v20, v32);

  outlined destroy of _AnyAnimatableData(v32);
  *(v5 + 160) = 0;
  outlined init with copy of _AnyAnimatableData((v5 + 32), v32);
  v21 = *(*a1 + 136);
  lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData();
  v23 = v22;

  LOBYTE(v23) = v21(v24, v32, v33, &type metadata for _AnyAnimatableData, v23, v11);

  outlined destroy of _AnyAnimatableData(v32);
  if (v23)
  {
    *(v6 + 24) = v33[0];

    *(v6 + 16) = a1;
  }

  else
  {

    outlined init with copy of _AnyAnimatableData((v6 + 32), v32);
    swift_beginAccess();
    swift_beginAccess();
    specialized combineAnimation<A>(into:state:value:elapsed:newAnimation:newValue:)((v6 + 16), (v6 + 24), v32, a1, a2, v11);
    swift_endAccess();
    swift_endAccess();
    outlined destroy of _AnyAnimatableData(v32);
  }

  swift_beginAccess();
  v25 = *(v6 + 32);
  if (v25 == *a2)
  {
    (*(v25 + 96))(v6 + 40, a2 + 1);
  }

  else if (v25 == type metadata accessor for ZeroVTable())
  {
    outlined destroy of _AnyAnimatableData(v6 + 32);
    outlined init with copy of _AnyAnimatableData(a2, (v6 + 32));
  }

  swift_endAccess();
  *(v6 + 88) = a5;
LABEL_19:
  *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA022AnimationFrameIntervalF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
  if ((v28 & 1) == 0)
  {
    v29 = 0.0;
    if (*&result > 0.0)
    {
      v30 = log2(*&result * 240.0);
      v29 = exp2(floor(v30 + 0.01)) * 0.00416666667;
    }

    if (v29 >= *(v6 + 80))
    {
      v29 = *(v6 + 80);
    }

    *(v6 + 80) = v29;
    if (v29 >= 0.0166666667)
    {
      *&result = 0.0;
      v31 = 1;
    }

    else
    {
      *&result = COERCE_DOUBLE(_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA015AnimationReasonF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a3));
      if ((result & 0x100000000) != 0)
      {
        result = *(v6 + 136);
        v31 = *(v6 + 140);
      }

      else
      {
        v31 = 0;
      }
    }

    *(v6 + 136) = result;
    *(v6 + 140) = v31;
  }

  return result;
}

uint64_t DefaultAnimation.shouldMerge<A>(previous:value:time:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (one-time initialization token for base != -1)
  {
    v9 = a1;
    v10 = a2;
    v11 = a3;
    swift_once();
    a1 = v9;
    a2 = v10;
    a3 = v11;
  }

  v7 = static DefaultAnimation.base;

  return Animation.shouldMerge<A>(previous:value:time:context:)(a1, a2, a3, v7, a4, a5);
}

uint64_t DefaultAnimation.velocity<A>(value:time:context:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  if (one-time initialization token for base != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v12[0] = v6;
  v12[1] = v7;
  v13 = v8;
  v14 = v9;
  return Animation.velocity<A>(value:time:context:)(a1, v12, static DefaultAnimation.base, a3, a4);
}

uint64_t specialized AnimatorState.forkListeners(animation:state:interval:)(uint64_t result, uint64_t a2, void *a3)
{
  if ((*(v3 + 160) & 1) == 0)
  {
    v6 = result;
    swift_beginAccess();
    v7 = *(v3 + 152);
    if (v7 >> 62)
    {
      result = __CocoaSet.count.getter();
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        return result;
      }
    }

    outlined init with copy of _AnyAnimatableData(a3, v19);
    v8 = *(v3 + 152);
    v18[0] = v6;
    v18[1] = a2;
    v20 = *(v3 + 168);
    v21 = v8;
    outlined init with copy of AnimatorState<_AnyAnimatableData>.Fork(v18, v17);
    swift_beginAccess();
    v9 = *(v3 + 184);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 184) = v9;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
      *(v3 + 184) = v9;
    }

    v12 = v9[2];
    v11 = v9[3];
    if (v12 >= v11 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
    }

    v9[2] = v12 + 1;
    v13 = &v9[10 * v12];
    v13[2] = v17[0];
    v14 = v17[1];
    v15 = v17[2];
    v16 = v17[4];
    v13[5] = v17[3];
    v13[6] = v16;
    v13[3] = v14;
    v13[4] = v15;
    *(v3 + 184) = v9;
    swift_endAccess();
    *(v3 + 152) = MEMORY[0x1E69E7CC0];

    return outlined destroy of AnimatableAttributeHelper<GlassEffectShapeModifier>(v18, &lazy cache variable for type metadata for AnimatorState<_AnyAnimatableData>.Fork, lazy protocol witness table accessor for type _AnyAnimatableData and conformance _AnyAnimatableData, &type metadata for _AnyAnimatableData, type metadata accessor for AnimatorState.Fork);
  }

  return result;
}

double View.fontDesign(_:)(char *a1, uint64_t a2)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.fontDesign(_:), v5, a2);

  return result;
}

void _s7SwiftUI10NamedImageO5CacheC13releaseImages33_8E7DCD4CEB1ACDE07B249BFF4CBC75C0LLyyFyAE4DataAGLLVzYuYTXEfU_(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 + 64;

  v3 = _HashTable.startBucket.getter();
  v4 = *(v1 + 36);
  v5 = 1 << *(v1 + 32);
  v39 = 0;
  v38 = 0;
  v37 = 0;
  v29 = v5;
  v24 = v3;
  if (v3 == v5)
  {
LABEL_2:
    v6 = v39;
    v7 = v38;
    v8 = v37;

    outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v24, v4, v6);
    outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v29, v4, v7);
    outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v29, v4, v8);
    return;
  }

  v25 = v1 + 72;
  v9 = v3;
  v10 = v1;
  v27 = v1 + 64;
  v28 = v1;
  while ((v9 & 0x8000000000000000) == 0)
  {
    v11 = v9;
    v9 = 1 << *(v1 + 32);
    if (v11 >= v9)
    {
      break;
    }

    v12 = v11 >> 6;
    v13 = *(v2 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if ((v13 & (1 << v11)) == 0)
    {
      goto LABEL_35;
    }

    if (*(v1 + 36) != v4)
    {
      goto LABEL_36;
    }

    v15 = v13 & (-2 << (v11 & 0x3F));
    if (v15)
    {
      v9 = __clz(__rbit64(v15)) | v11 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v16 = v12 << 6;
      v17 = v12 + 1;
      v18 = (v25 + 8 * v12);
      while (v17 < (v9 + 63) >> 6)
      {
        v20 = *v18++;
        v19 = v20;
        v16 += 64;
        ++v17;
        if (v20)
        {
          v9 = __clz(__rbit64(v19)) + v16;
          break;
        }
      }
    }

    v37 = 0;
    if (v11 >= 1 << *(v10 + 32))
    {
      goto LABEL_37;
    }

    if ((*(v10 + 8 * v12 + 64) & v14) == 0)
    {
      goto LABEL_38;
    }

    if (*(v10 + 36) != v4)
    {
      goto LABEL_39;
    }

    outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(*(v10 + 56) + 96 * v11, &v35, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo, type metadata accessor for NamedImage.VectorInfo?);
    outlined init with copy of NamedImage.WeakOrStrongImageContents(&v35, &v32);
    if (v34 != 1)
    {
      v21 = v32;
      v22 = v33;
      switch(v33)
      {
        case 3u:
          swift_weakInit();
          swift_weakAssign();
          v23 = 2;
          break;
        case 1u:
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          v23 = 1;
          break;
        case 0u:
          swift_unknownObjectWeakInit();
          swift_unknownObjectWeakAssign();
          v23 = 0;
          break;
        default:
          outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v11, v4, 0);
          outlined consume of GraphicsImage.Contents(v21, v22);
LABEL_33:
          v2 = v27;
          v1 = v28;
          goto LABEL_5;
      }

      v31 = v23;
      outlined init with take of GraphicsImage.WeakContents(&v30, &v32);
      outlined destroy of NamedImage.WeakOrStrongImageContents(&v35);
      outlined init with copy of GraphicsImage.WeakContents(&v32, &v35);
      v36 = 1;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = v10;
        specialized _NativeDictionary.copy()();
        v10 = v30;
      }

      if (v11 >= 1 << *(v10 + 32))
      {
        goto LABEL_40;
      }

      if ((*(v10 + 8 * v12 + 64) & v14) == 0)
      {
        goto LABEL_41;
      }

      if (*(v10 + 36) != v4)
      {
        goto LABEL_42;
      }

      outlined assign with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(&v35, *(v10 + 56) + 96 * v11);
      outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v11, v4, 0);
      outlined consume of GraphicsImage.Contents(v21, v22);
      outlined destroy of GraphicsImage.WeakContents(&v32);
      *(a1 + 8) = v10;
      goto LABEL_33;
    }

    outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(v11, v4, 0);
    outlined destroy of NamedImage.WeakOrStrongImageContents(&v32);
LABEL_5:
    _sypSgWOhTm_9(&v35, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo);
    if (v9 == v29)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
}

double ContainerShapeContext.convert(_:to:)(__int128 *a1, double a2, double a3, double a4, double a5)
{
  v11 = *(a1 + 6);
  v12 = *(a1 + 7);
  v13 = *(a1 + 8);
  v14 = *(a1 + 9);
  v15 = *v5;
  if (static WeakAttribute.== infix(_:_:)())
  {
    type metadata accessor for CGPoint(0);
    WeakValue = AGGraphGetWeakValue();
    if (WeakValue)
    {
      v17 = *WeakValue;
      v18 = AGGraphGetWeakValue();
      if (v18)
      {
        return v17 - *v18 + a2;
      }
    }
  }

  v39[0] = v15;
  v40 = 1;
  specialized static Update.begin()();
  *v38 = a2;
  *&v38[1] = a3;
  *&v38[2] = a4;
  *&v38[3] = a5;
  v30 = *a1;
  v31 = *(a1 + 2);
  v32 = v11;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  v36 = *(a1 + 5);
  v37 = *(a1 + 12);
  v20 = GeometryProxy.placementContext.getter(v29);
  MEMORY[0x1EEE9AC00](v20);
  v27[2] = v38;
  v27[3] = v39;
  v28 = v21;
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI30_PositionAwarePlacementContextV_s5NeverOytTB5(partial apply for closure #1 in GeometryProxy.rect(_:in:), v27, v23, v24, v25, v22 | (v21 << 32));
  v19 = *v38;
  static Update.end()();
  outlined destroy of CoordinateSpace(v39);
  return v19;
}

double partial apply for closure #1 in static ContainerShapeType.path(in:proxy:shape:context:)(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  a1.n128_u64[0] = *(v4 + 80);
  a2.n128_u64[0] = *(v4 + 88);
  a3.n128_u64[0] = *(v4 + 96);
  a4.n128_u64[0] = *(v4 + 104);
  return closure #1 in static ContainerShapeType.path(in:proxy:shape:context:)(*(v4 + 32), *(v4 + 40), *(v4 + 48), *(v4 + 56), *(v4 + 64), *(v4 + 72), *(v4 + 112), *(v4 + 16), a1, a2, a3, a4, *(v4 + 24));
}

double protocol witness for static AnyContainerShapeType.path(in:proxy:shape:context:) in conformance ContainerShapeType<A>@<D0>(uint64_t a5@<X8>)
{
  static ContainerShapeType.path(in:proxy:shape:context:)();
  result = *&v7;
  *a5 = v7;
  *(a5 + 16) = v8;
  *(a5 + 32) = v9;
  return result;
}

void specialized GraphicsContext.drawLayer(flags:content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = a5;
  v7 = a1;
  v17 = HIDWORD(a5);
  v8 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v9 = swift_allocObject();
  *(v9 + 32) = xmmword_18DD85500;
  *(v9 + 48) = 1065353216;
  *(v9 + 56) = 0x7FF8000000000000;
  v10 = *(a2 + 16);
  v11 = *(v10 + 64);
  if (v11 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v9 + 16) = v10;
  }

  else
  {
    v16 = RBDrawingStateGetDisplayList();
    v13 = *(a2 + 32);
    v12 = *(a2 + 40);
    v14 = v13;
    v15 = v12;
    if (v13 == 1)
    {
      v14 = *(v10 + 48);
      v15 = *(v10 + 56);
    }

    v19 = v14;
    v20 = v15;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v13, v12);
    *(v9 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v16, &v19);
  }

  *(v9 + 24) = v8;
  *(v9 + 64) = 0;
  if ((v7 & 0x20) != 0)
  {
    *(v9 + 48) = *(a2 + 48);
    *(v9 + 52) = *(a2 + 52);
  }

  v21 = v9;
  v19 = a4;
  LOWORD(v20) = v5;
  HIDWORD(v20) = v17;

  DisplayList.GraphicsRenderer.render(list:in:)(&v19, &v21);

  RBDrawingStateDrawLayer();
}

{
  sub_18D36EE10(a1, a2, a3, a4, a5);
}

uint64_t outlined init with copy of DisplayList.ArchiveIDs?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DisplayList.ArchiveIDs?(0, &lazy cache variable for type metadata for DisplayList.ArchiveIDs?, type metadata accessor for DisplayList.ArchiveIDs, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void GraphicsContext.setTransition(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 2) | ((*(a1 + 6) | (*(a1 + 14) << 16)) << 32);
  GraphicsContext.copyOnWrite()();
  if ((v2 & 0xFF000000000000) == 0x2000000000000)
  {
    v5 = [objc_opt_self() defaultTransition];
    RBDrawingStateSetTransition();
  }

  else
  {
    v5 = ContentTransition.rbTransition.getter();
    RBDrawingStateSetTransition();
    if ((v2 & 0xFF0000000000) == 0 && (v1 & 0xC100000000) == 0x4100000000)
    {
      isa = Float._bridgeToObjectiveC()().super.super.isa;
      RBDrawingStateSetAttribute();
    }
  }
}

void protocol witness for InsettableShape.inset(by:) in conformance RoundedRectangle(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = a2;
}

double outlined consume of Path?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 != 0xFF)
  {
    return outlined consume of Path.Storage(a1, a2, a3, a4, a5);
  }

  return result;
}

uint64_t static ContainerShapeType.path(in:proxy:shape:context:)()
{
  AGWeakAttributeGetAttribute();
  result = AGGraphWithUpdate();
  __break(1u);
  return result;
}

Swift::Void __swiftcall DisplayList.Index.updateArchive(entering:)(Swift::Bool entering)
{
  if (entering)
  {
    *(v1 + 8) = *v1;
    *v1 = 0;
    v2 = *(v1 + 16);
    if ((~v2 & 6) == 0)
    {
      return;
    }

    v3 = v2 | 6;
  }

  else
  {
    *v1 = *(v1 + 8);
    *(v1 + 8) = 0;
    v4 = *(v1 + 16);
    if ((~v4 & 9) == 0)
    {
      return;
    }

    v3 = v4 | 9;
  }

  *(v1 + 16) = v3;
}

void ContentTransition.NumericTextConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 5);
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  v5 = *(v0 + 8);
  v6 = *(v0 + 9);
  v7 = *(v0 + 10);
  if (*(v0 + 4))
  {
    MEMORY[0x193AC11A0](1);
    if ((v1 & 0x7FFFFFFF) != 0)
    {
      v8 = v1;
    }

    else
    {
      v8 = 0;
    }

    Hasher._combine(_:)(v8);
    if (v2 != 2)
    {
      goto LABEL_6;
    }

LABEL_8:
    v9 = 0;
    goto LABEL_9;
  }

  MEMORY[0x193AC11A0](0);
  Hasher._combine(_:)(v1 & 1);
  if (v2 == 2)
  {
    goto LABEL_8;
  }

LABEL_6:
  Hasher._combine(_:)(1u);
  v9 = v2 & 1;
LABEL_9:
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
}

uint64_t destroy for LinkDestination.Configuration(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void LinearGradient._Paint.init(from:)(void *a1@<X0>, void (*a2)(void *)@<X1>, void (*a3)(void)@<X2>, char *a4@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    v69 = a3;
    swift_once();
    a3 = v69;
  }

  v8 = static ResolvedGradient.ColorSpace.default;
  v9 = 1;
  LOBYTE(v74) = 1;
  v87 = 1;
  v10 = a1[1];
  v11 = a1[2];
  if (v10 >= v11)
  {
    v17 = 0;
    v18 = 0;
    v13 = 0;
    v12 = MEMORY[0x1E69E7CC0];
    v14 = 0;
    v15 = 0;
    v16 = 0;
LABEL_6:
    a1[3] = 0;
    *a4 = v12;
    a4[8] = v8;
    *(a4 + 9) = v88;
    a4[11] = v89;
    *(a4 + 3) = v17;
    a4[16] = v9;
    *(a4 + 3) = v13;
    *(a4 + 4) = v14;
    *(a4 + 5) = v15;
    *(a4 + 6) = v16;
    a4[56] = v18;
    return;
  }

  v71 = 0;
  v72 = static ResolvedGradient.ColorSpace.default;
  v70 = a3;
  v73 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v19 = a1[3];
    if (v19)
    {
      v20 = a1[4];
      if (v10 < v20)
      {
        goto LABEL_15;
      }

      if (v20 < v10)
      {
        goto LABEL_87;
      }

      a1[3] = 0;
    }

    v19 = ProtobufDecoder.decodeVarint()(v19);
    if (v4)
    {
      goto LABEL_88;
    }

    if (v19 <= 7)
    {
      goto LABEL_87;
    }

LABEL_15:
    v21 = v19 >> 3;
    if (v19 >> 3 <= 2)
    {
      break;
    }

    if (v21 == 3)
    {
      if ((v19 & 7) != 2)
      {
        goto LABEL_87;
      }

      v51 = a1[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 16) + 1, 1, v51);
        v51 = isUniquelyReferenced_nonNull_native;
      }

      v54 = *(v51 + 16);
      v53 = *(v51 + 24);
      if (v54 >= v53 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1, v51);
        v51 = isUniquelyReferenced_nonNull_native;
      }

      *(v51 + 16) = v54 + 1;
      *(v51 + 8 * v54 + 32) = v11;
      a1[5] = v51;
      v55 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v4)
      {
        goto LABEL_88;
      }

      if (v55 < 0)
      {
        goto LABEL_102;
      }

      v56 = a1[1] + v55;
      if (v11 < v56)
      {
        goto LABEL_87;
      }

      a1[2] = v56;
      a2(a1);
      v59 = a1[5];
      if (!*(v59 + 2))
      {
        goto LABEL_104;
      }

      v60 = v57;
      v61 = v58;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v62 = *(v59 + 2);
        if (!v62)
        {
          goto LABEL_86;
        }
      }

      else
      {
        v59 = specialized _ArrayBuffer._consumeAndCreateNew()(v59);
        v62 = *(v59 + 2);
        if (!v62)
        {
LABEL_86:
          __break(1u);
LABEL_87:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_88:
          v65 = v72;
LABEL_89:
          v74 = v12;
          v75 = v65;
          v76 = v88;
          v77 = v89;
          v78 = v71;
          v79 = v87;
          *v80 = *v86;
          *&v80[3] = *&v86[3];
          v81 = v13;
          v82 = v14;
          v83 = v15;
          v84 = v16;
          v85 = v73;
          v70(&v74);
          return;
        }
      }

      v63 = v62 - 1;
      v11 = *&v59[8 * v63 + 32];
      *(v59 + 2) = v63;
      a1[5] = v59;
      a1[2] = v11;
      v15 = v60;
      v16 = v61;
    }

    else
    {
      if (v21 != 4)
      {
LABEL_42:
        v38 = v19 & 7;
        if (v38 > 1)
        {
          if (v38 == 2)
          {
            v64 = ProtobufDecoder.decodeVarint()(v19);
            if (v4)
            {
              goto LABEL_88;
            }

            if (v64 < 0)
            {
              goto LABEL_110;
            }

            v39 = a1[1] + v64;
            if (v11 < v39)
            {
              goto LABEL_87;
            }
          }

          else
          {
            if (v38 != 5)
            {
              goto LABEL_87;
            }

            v39 = a1[1] + 4;
            if (v11 < v39)
            {
              goto LABEL_87;
            }
          }
        }

        else
        {
          if ((v19 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()(v19);
            if (v4)
            {
              goto LABEL_88;
            }

            goto LABEL_8;
          }

          if (v38 != 1)
          {
            goto LABEL_87;
          }

          v39 = a1[1] + 8;
          if (v11 < v39)
          {
            goto LABEL_87;
          }
        }

        a1[1] = v39;
        goto LABEL_8;
      }

      if ((v19 & 7) != 0)
      {
        if ((v19 & 7) != 2)
        {
          goto LABEL_87;
        }

        v19 = ProtobufDecoder.decodeVarint()(v19);
        if (v4)
        {
          goto LABEL_88;
        }

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_109;
        }

        v35 = a1[1] + v19;
        if (v11 < v35)
        {
          goto LABEL_87;
        }

        a1[3] = 32;
        a1[4] = v35;
      }

      v36 = ProtobufDecoder.decodeVarint()(v19);
      if (v4)
      {
        goto LABEL_88;
      }

      v37 = v36 == 1;
      if (v36 == 2)
      {
        v37 = 2;
      }

      v73 = v37;
    }

LABEL_8:
    v10 = a1[1];
    if (v10 >= v11)
    {
      v9 = v87;
      v8 = v72;
      v18 = v73;
      v17 = v71;
      goto LABEL_6;
    }
  }

  if (v21 == 1)
  {
    if ((v19 & 7) != 2)
    {
      goto LABEL_87;
    }

    v40 = a1[5];
    v41 = swift_isUniquelyReferenced_nonNull_native();
    if ((v41 & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v40 + 16) + 1, 1, v40);
      v40 = v41;
    }

    v43 = *(v40 + 16);
    v42 = *(v40 + 24);
    if (v43 >= v42 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v40);
      v40 = v41;
    }

    *(v40 + 16) = v43 + 1;
    *(v40 + 8 * v43 + 32) = v11;
    a1[5] = v40;
    v44 = ProtobufDecoder.decodeVarint()(v41);
    if (v4)
    {
      goto LABEL_88;
    }

    if (v44 < 0)
    {
      goto LABEL_103;
    }

    v45 = a1[1] + v44;
    if (v11 < v45)
    {
      goto LABEL_87;
    }

    a1[2] = v45;
    ResolvedGradient.init(from:)(a1, &v74);
    v46 = a1[5];
    if (!*(v46 + 2))
    {
      goto LABEL_105;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v47 = *(v46 + 2);
      if (!v47)
      {
        goto LABEL_108;
      }
    }

    else
    {
      v46 = specialized _ArrayBuffer._consumeAndCreateNew()(v46);
      v47 = *(v46 + 2);
      if (!v47)
      {
        goto LABEL_108;
      }
    }

    v48 = v47 - 1;
    v11 = *&v46[8 * v48 + 32];
    *(v46 + 2) = v48;
    a1[5] = v46;
    a1[2] = v11;
    v49 = v74;
    v71 = v78;
    v72 = v75;
    v50 = v79;

    v87 = v50;
    v12 = v49;
    goto LABEL_8;
  }

  if (v21 != 2)
  {
    goto LABEL_42;
  }

  if ((v19 & 7) != 2)
  {
    goto LABEL_87;
  }

  v22 = a1[5];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  if ((v23 & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1, v22);
    v22 = v23;
  }

  v25 = *(v22 + 16);
  v24 = *(v22 + 24);
  if (v25 >= v24 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
    v22 = v23;
  }

  *(v22 + 16) = v25 + 1;
  *(v22 + 8 * v25 + 32) = v11;
  a1[5] = v22;
  v26 = ProtobufDecoder.decodeVarint()(v23);
  if (v4)
  {
    goto LABEL_88;
  }

  if ((v26 & 0x8000000000000000) == 0)
  {
    v27 = a1[1] + v26;
    if (v11 < v27)
    {
      goto LABEL_87;
    }

    a1[2] = v27;
    a2(a1);
    v30 = a1[5];
    if (!*(v30 + 2))
    {
      goto LABEL_106;
    }

    v31 = v28;
    v32 = v29;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v33 = *(v30 + 2);
      if (!v33)
      {
        goto LABEL_107;
      }
    }

    else
    {
      v30 = specialized _ArrayBuffer._consumeAndCreateNew()(v30);
      v33 = *(v30 + 2);
      if (!v33)
      {
        goto LABEL_107;
      }
    }

    v34 = v33 - 1;
    v11 = *&v30[8 * v34 + 32];
    *(v30 + 2) = v34;
    a1[5] = v30;
    a1[2] = v11;
    v13 = v31;
    v14 = v32;
    goto LABEL_8;
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
LABEL_109:
  __break(1u);
LABEL_110:
  __break(1u);
  __break(1u);
LABEL_111:
  __break(1u);
  do
  {
    __break(1u);
    a4 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    v65 = v72;
    v66 = *(a4 + 2);
    if (v66)
    {
      goto LABEL_100;
    }

    __break(1u);
    a4 = a1[5];
    if (!*(a4 + 2))
    {
      goto LABEL_111;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a4 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
    }

    v65 = v72;
    v66 = *(a4 + 2);
    if (v66)
    {
      goto LABEL_100;
    }

    __break(1u);
    a4 = a1[5];
  }

  while (!*(a4 + 2));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a4 = specialized _ArrayBuffer._consumeAndCreateNew()(a4);
  }

  v65 = v72;
  v66 = *(a4 + 2);
  if (v66)
  {
LABEL_100:
    v67 = v66 - 1;
    v68 = *&a4[8 * v67 + 32];
    *(a4 + 2) = v67;
    a1[5] = a4;
    a1[2] = v68;
    goto LABEL_89;
  }

  __break(1u);
}

uint64_t closure #7 in DisplayList.Content.Value.init(from:)@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (one-time initialization token for defaultFlags != -1)
  {
    swift_once();
  }

  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 < v6)
  {
    v52 = a2;
    v7 = 0;
    v53 = static RasterizationOptions.Flags.defaultFlags;
    v57 = 3;
    v58 = 0;
    v8 = -1;
    v9 = 0;
    v10 = 0;
    v11 = 3;
    while (1)
    {
      v13 = *(a1 + 24);
      if (v13)
      {
        v14 = *(a1 + 32);
        if (v5 < v14)
        {
          goto LABEL_15;
        }

        if (v14 < v5)
        {
          goto LABEL_75;
        }

        *(a1 + 24) = 0;
      }

      v13 = ProtobufDecoder.decodeVarint()(v13);
      if (v2)
      {
        return swift_unknownObjectRelease();
      }

      if (v13 < 8)
      {
        goto LABEL_75;
      }

LABEL_15:
      v15 = v13 >> 3;
      if (v13 >> 3 == 3)
      {
        if ((v13 & 7) != 2)
        {
          goto LABEL_75;
        }

        v11 = v2;
        v36 = *(a1 + 40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 16) + 1, 1, v36);
          v36 = isUniquelyReferenced_nonNull_native;
        }

        v39 = *(v36 + 16);
        v38 = *(v36 + 24);
        if (v39 >= v38 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v36);
          v36 = isUniquelyReferenced_nonNull_native;
        }

        *(v36 + 16) = v39 + 1;
        *(v36 + 8 * v39 + 32) = v6;
        *(a1 + 40) = v36;
        v40 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          return swift_unknownObjectRelease();
        }

        if (v40 < 0)
        {
          goto LABEL_88;
        }

        v41 = *(a1 + 8) + v40;
        if (v6 < v41)
        {
          goto LABEL_75;
        }

        *(a1 + 16) = v41;
        RasterizationOptions.init(from:)(a1, &v54);
        v42 = *(a1 + 40);
        if (!*(v42 + 2))
        {
          goto LABEL_90;
        }

        v11 = 0;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v43 = *(v42 + 2);
          if (!v43)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew()(v42);
          v43 = *(v42 + 2);
          if (!v43)
          {
            goto LABEL_93;
          }
        }

        v44 = v43 - 1;
        v6 = *&v42[8 * v44 + 32];
        *(v42 + 2) = v44;
        *(a1 + 40) = v42;
        *(a1 + 16) = v6;
        v8 = v54;
        v57 = BYTE5(v54);
        v58 = BYTE4(v54);
        v53 = v55;
        v11 = v56;
        goto LABEL_8;
      }

      if (v15 == 2)
      {
        if ((v13 & 7) != 2)
        {
          goto LABEL_75;
        }

        v25 = *(a1 + 40);
        v26 = swift_isUniquelyReferenced_nonNull_native();
        if ((v26 & 1) == 0)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 16) + 1, 1, v25);
          v25 = v26;
        }

        v28 = *(v25 + 16);
        v27 = *(v25 + 24);
        if (v28 >= v27 >> 1)
        {
          v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
          v25 = v26;
        }

        *(v25 + 16) = v28 + 1;
        *(v25 + 8 * v28 + 32) = v6;
        *(a1 + 40) = v25;
        v29 = ProtobufDecoder.decodeVarint()(v26);
        if (v2)
        {
          return swift_unknownObjectRelease();
        }

        if (v29 < 0)
        {
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
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
LABEL_95:
          __break(1u);
          do
          {
            __break(1u);
            v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
            v49 = *(v11 + 16);
            if (v49)
            {
              goto LABEL_85;
            }

            __break(1u);
            v11 = *(a1 + 40);
            if (!*(v11 + 16))
            {
              goto LABEL_95;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v49 = *(v11 + 16);
              if (v49)
              {
                goto LABEL_85;
              }
            }

            else
            {
              v11 = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
              v49 = *(v11 + 16);
              if (v49)
              {
                goto LABEL_85;
              }
            }

            __break(1u);
            v11 = *(a1 + 40);
          }

          while (!*(v11 + 16));
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v49 = *(v11 + 16);
            if (v49)
            {
LABEL_85:
              v50 = v49 - 1;
              v51 = *(v11 + 8 * v50 + 32);
              *(v11 + 16) = v50;
              result = swift_unknownObjectRelease();
              *(a1 + 40) = v11;
              *(a1 + 16) = v51;
              return result;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v11);
            v11 = result;
            v49 = *(result + 16);
            if (v49)
            {
              goto LABEL_85;
            }
          }

          __break(1u);
          return result;
        }

        v30 = *(a1 + 8) + v29;
        if (v6 < v30)
        {
          goto LABEL_75;
        }

        *(a1 + 16) = v30;
        specialized CGPoint.init(from:)(a1);
        v33 = *(a1 + 40);
        if (!*(v33 + 2))
        {
          goto LABEL_89;
        }

        v9 = v31;
        v10 = v32;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v34 = *(v33 + 2);
          if (!v34)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v33 = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
          v34 = *(v33 + 2);
          if (!v34)
          {
            goto LABEL_92;
          }
        }

        v35 = v34 - 1;
        v6 = *&v33[8 * v35 + 32];
        *(v33 + 2) = v35;
        *(a1 + 40) = v33;
        *(a1 + 16) = v6;
        goto LABEL_8;
      }

      if (v15 == 1)
      {
        if ((v13 & 7) != 2)
        {
          goto LABEL_75;
        }

        v16 = *(a1 + 40);
        v17 = swift_isUniquelyReferenced_nonNull_native();
        if ((v17 & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
          v16 = v17;
        }

        v19 = *(v16 + 16);
        v18 = *(v16 + 24);
        if (v19 >= v18 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
          v16 = v17;
        }

        *(v16 + 16) = v19 + 1;
        *(v16 + 8 * v19 + 32) = v6;
        *(a1 + 40) = v16;
        v20 = ProtobufDecoder.decodeVarint()(v17);
        if (v2)
        {
          return swift_unknownObjectRelease();
        }

        if (v20 < 0)
        {
          goto LABEL_87;
        }

        v21 = *(a1 + 8) + v20;
        if (v6 < v21)
        {
          goto LABEL_75;
        }

        *(a1 + 16) = v21;
        CodableRBDisplayListContents.init(from:)(a1, &v54);
        v22 = *(a1 + 40);
        if (!*(v22 + 2))
        {
          goto LABEL_91;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v23 = *(v22 + 2);
          if (!v23)
          {
            goto LABEL_74;
          }
        }

        else
        {
          v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
          v23 = *(v22 + 2);
          if (!v23)
          {
LABEL_74:
            __break(1u);
LABEL_75:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            return swift_unknownObjectRelease();
          }
        }

        v24 = v23 - 1;
        v6 = *&v22[8 * v24 + 32];
        *(v22 + 2) = v24;
        swift_unknownObjectRelease();
        *(a1 + 40) = v22;
        *(a1 + 16) = v6;
        v7 = v54;
        goto LABEL_8;
      }

      v45 = v13 & 7;
      if (v45 > 1)
      {
        if (v45 == 2)
        {
          v47 = ProtobufDecoder.decodeVarint()(v13);
          if (v2)
          {
            return swift_unknownObjectRelease();
          }

          if (v47 < 0)
          {
            goto LABEL_94;
          }

          v46 = *(a1 + 8) + v47;
          if (v6 < v46)
          {
            goto LABEL_75;
          }
        }

        else
        {
          if (v45 != 5)
          {
            goto LABEL_75;
          }

          v46 = *(a1 + 8) + 4;
          if (v6 < v46)
          {
            goto LABEL_75;
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
            return swift_unknownObjectRelease();
          }

          goto LABEL_8;
        }

        if (v45 != 1)
        {
          goto LABEL_75;
        }

        v46 = *(a1 + 8) + 8;
        if (v6 < v46)
        {
          goto LABEL_75;
        }
      }

      *(a1 + 8) = v46;
LABEL_8:
      v5 = *(a1 + 8);
      if (v5 >= v6)
      {
        *(a1 + 24) = 0;
        if (!v7)
        {
          goto LABEL_6;
        }

        result = swift_allocObject();
        *(result + 16) = v7;
        *(result + 24) = v9;
        *(result + 32) = v10;
        *(result + 40) = v8;
        v48 = v57;
        *(result + 44) = v58;
        *(result + 45) = v48;
        *(result + 48) = v53;
        *(result + 52) = v11;
        *v52 = result | 0xC000000000000000;
        return result;
      }
    }
  }

  *(a1 + 24) = 0;
LABEL_6:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

uint64_t sub_18D36FF94()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void CodableRBDisplayListContents.init(from:)(__int128 *a1@<X0>, void *a2@<X8>)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  if (v5 >= v6)
  {
    v7 = 0;
    goto LABEL_4;
  }

  v7 = 0;
  do
  {
    v26 = *(a1 + 3);
    if (v26)
    {
      v27 = *(a1 + 4);
      if (v5 < v27)
      {
        goto LABEL_16;
      }

      if (v27 < v5)
      {
        goto LABEL_40;
      }

      *(a1 + 3) = 0;
    }

    v26 = ProtobufDecoder.decodeVarint()(v26);
    if (v2)
    {
      return;
    }

    if (v26 <= 7)
    {
      goto LABEL_40;
    }

LABEL_16:
    v28 = v26 & 7;
    if ((v26 & 0xFFFFFFFFFFFFFFF8) == 8)
    {
      if ((v26 & 7) != 0)
      {
        if (v28 != 2)
        {
          goto LABEL_40;
        }

        v26 = ProtobufDecoder.decodeVarint()(v26);
        if (v2)
        {
          return;
        }

        if ((v26 & 0x8000000000000000) != 0)
        {
          goto LABEL_44;
        }

        v29 = *(a1 + 1) + v26;
        if (v6 < v29)
        {
          goto LABEL_40;
        }

        *(a1 + 3) = 8;
        *(a1 + 4) = v29;
      }

      v30 = ProtobufDecoder.decodeVarint()(v26);
      if (v2)
      {
        return;
      }

      v7 = v30;
      if (v30 < 0)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
      }
    }

    else
    {
      if ((v26 & 7) > 1)
      {
        if (v28 == 2)
        {
          v32 = ProtobufDecoder.decodeVarint()(v26);
          if (v2)
          {
            return;
          }

          if (v32 < 0)
          {
            goto LABEL_45;
          }

          v31 = *(a1 + 1) + v32;
          if (v6 < v31)
          {
            goto LABEL_40;
          }
        }

        else
        {
          if (v28 != 5)
          {
            goto LABEL_40;
          }

          v31 = *(a1 + 1) + 4;
          if (v6 < v31)
          {
            goto LABEL_40;
          }
        }

        goto LABEL_38;
      }

      if ((v26 & 7) != 0)
      {
        if (v28 != 1)
        {
          goto LABEL_40;
        }

        v31 = *(a1 + 1) + 8;
        if (v6 < v31)
        {
          goto LABEL_40;
        }

LABEL_38:
        *(a1 + 1) = v31;
        goto LABEL_9;
      }

      ProtobufDecoder.decodeVarint()(v26);
      if (v2)
      {
        return;
      }
    }

LABEL_9:
    v5 = *(a1 + 1);
  }

  while (v5 < v6);
  v6 = *(a1 + 2);
LABEL_4:
  *(a1 + 3) = 0;
  v8 = *(a1 + 6);
  v39[0] = *a1;
  v39[1] = v5;
  v39[2] = v6;
  v39[3] = 0;
  v40 = a1[2];
  v41 = v8;
  v9 = ProtobufDecoder.archiveReader.getter();
  if (!v9)
  {
    goto LABEL_40;
  }

  if (v7 >= *(v9 + 40))
  {

LABEL_40:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v34 = a2;
  ArchiveReader.subscript.getter(v7);
  v11 = v10;
  v13 = v12;

  v14 = objc_opt_self();
  v37 = v13;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v36 = a1[1];
  v16 = *(a1 + 4);
  v17 = *(a1 + 5);
  v18 = *(a1 + 6);
  v19 = type metadata accessor for RBDisplayListDecoderDelegate();
  v35 = *a1;
  v20 = objc_allocWithZone(v19);
  v21 = &v20[OBJC_IVAR____TtC7SwiftUI28RBDisplayListDecoderDelegate_decoder];
  *v21 = v35;
  *(v21 + 1) = v36;
  *(v21 + 4) = v16;
  *(v21 + 5) = v17;
  *(v21 + 6) = v18;
  v38.receiver = v20;
  v38.super_class = v19;
  v22 = v35;

  v23 = objc_msgSendSuper2(&v38, sel_init);
  v39[0] = 0;
  v24 = [v14 decodedObjectWithData:isa delegate:v23 error:v39];

  if (v24)
  {
    v25 = v39[0];
    outlined consume of Data._Representation(v11, v37);
    *v34 = v24;
  }

  else
  {
    v33 = v39[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v11, v37);
  }
}

uint64_t ProtobufDecoder.archiveReader.getter()
{
  v1 = *(v0 + 48);
  if (one-time initialization token for readerKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static ArchiveReader.readerKey);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v4, v8);
  type metadata accessor for ArchiveReader();
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t RasterizationOptions.init(from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  if (one-time initialization token for defaultFlags != -1)
  {
    result = swift_once();
  }

  v5 = static RasterizationOptions.Flags.defaultFlags;
  v6 = v3[1];
  v7 = v3[2];
  if (v6 >= v7)
  {
    v8 = 0;
    v9 = 3;
    v10 = -1;
    v11 = 3;
LABEL_6:
    v3[3] = 0;
    *a2 = v10;
    *(a2 + 4) = v8;
    *(a2 + 5) = v9;
    *(a2 + 8) = v5;
    *(a2 + 12) = v11;
    return result;
  }

  v8 = 0;
  v9 = 3;
  v10 = -1;
  v11 = 3;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v12 = v3[4];
      if (v6 < v12)
      {
        goto LABEL_15;
      }

      if (v12 < v6)
      {
        goto LABEL_86;
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
LABEL_86:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_15:
    v13 = result >> 3;
    v14 = result & 7;
    if (result >> 3 <= 2)
    {
      if (v13 == 1)
      {
        if ((result & 7) != 0)
        {
          if (v14 != 2)
          {
            goto LABEL_86;
          }

          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if (result < 0)
          {
            goto LABEL_92;
          }

          v19 = v3[1] + result;
          if (v7 < v19)
          {
            goto LABEL_86;
          }

          v3[3] = 8;
          v3[4] = v19;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if (result == 2)
        {
          v8 = 2;
        }

        else
        {
          v8 = result == 1;
        }

        goto LABEL_8;
      }

      if (v13 == 2)
      {
        if ((result & 7) != 0)
        {
          if (v14 != 2)
          {
            goto LABEL_86;
          }

          result = ProtobufDecoder.decodeVarint()(result);
          if (v2)
          {
            return result;
          }

          if (result < 0)
          {
            goto LABEL_91;
          }

          v16 = v3[1] + result;
          if (v7 < v16)
          {
            goto LABEL_86;
          }

          v3[3] = 16;
          v3[4] = v16;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if ((-(result & 1) ^ (result >> 1)) == (-(result & 1) ^ (result >> 1)))
        {
          v10 = -(result & 1) ^ (result >> 1);
        }

        goto LABEL_8;
      }

      goto LABEL_68;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      if ((result & 7) != 0)
      {
        if (v14 != 2)
        {
          goto LABEL_86;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if (result < 0)
        {
          goto LABEL_89;
        }

        v18 = v3[1] + result;
        if (v7 < v18)
        {
          goto LABEL_86;
        }

        v3[3] = 32;
        v3[4] = v18;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      if ((-(result & 1) ^ (result >> 1)) == (-(result & 1) ^ (result >> 1)))
      {
        v11 = -(result & 1) ^ (result >> 1);
      }

      goto LABEL_8;
    }

    if (v13 == 5)
    {
      if ((result & 7) != 0)
      {
        if (v14 != 2)
        {
          goto LABEL_86;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if (result < 0)
        {
          goto LABEL_90;
        }

        v15 = v3[1] + result;
        if (v7 < v15)
        {
          goto LABEL_86;
        }

        v3[3] = 40;
        v3[4] = v15;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      if (result)
      {
        if (result == 1)
        {
          v9 = 1;
        }

        else if (result == 2)
        {
          v9 = 2;
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_8;
    }

LABEL_68:
    if ((result & 7u) > 1uLL)
    {
      if (v14 == 2)
      {
        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

        if (result < 0)
        {
          goto LABEL_93;
        }

        v20 = v3[1] + result;
        if (v7 < v20)
        {
          goto LABEL_86;
        }
      }

      else
      {
        if (v14 != 5)
        {
          goto LABEL_86;
        }

        v20 = v3[1] + 4;
        if (v7 < v20)
        {
          goto LABEL_86;
        }
      }

      goto LABEL_7;
    }

    if ((result & 7) != 0)
    {
      if (v14 != 1)
      {
        goto LABEL_86;
      }

      v20 = v3[1] + 8;
      if (v7 < v20)
      {
        goto LABEL_86;
      }

LABEL_7:
      v3[1] = v20;
      goto LABEL_8;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

LABEL_8:
    v6 = v3[1];
    if (v6 >= v7)
    {
      goto LABEL_6;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_47:
    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    v5 = result;
    goto LABEL_8;
  }

  if (v14 != 2)
  {
    goto LABEL_86;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v17 = v3[1] + result;
    if (v7 < v17)
    {
      goto LABEL_86;
    }

    v3[3] = 24;
    v3[4] = v17;
    goto LABEL_47;
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
  return result;
}

void ResolvedGradient.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = static ResolvedGradient.ColorSpace.default;
  v6 = 1;
  v42 = 1;
  v7 = a1[1];
  v8 = a1[2];
  if (v7 < v8)
  {
    v43 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v10 = a1[3];
      if (v10)
      {
        v11 = a1[4];
        if (v7 < v11)
        {
          goto LABEL_13;
        }

        if (v11 < v7)
        {
          goto LABEL_73;
        }

        a1[3] = 0;
      }

      v10 = ProtobufDecoder.decodeVarint()(v10);
      if (v2)
      {
        goto LABEL_79;
      }

      if (v10 < 8)
      {
        goto LABEL_73;
      }

LABEL_13:
      v12 = v10 >> 3;
      if (v10 >> 3 == 3)
      {
        if ((v10 & 7) == 2)
        {
          v31 = ProtobufDecoder.decodeVarint()(v10);
          if (v2)
          {
            goto LABEL_79;
          }

          if (v31 < 0)
          {
            goto LABEL_84;
          }

          v28 = a1[1];
          if (v8 < v28 + v31)
          {
            goto LABEL_73;
          }

          a1[3] = 29;
          a1[4] = v28 + v31;
        }

        else
        {
          if ((v10 & 7) != 5)
          {
            goto LABEL_73;
          }

          v28 = a1[1];
        }

        if (v8 < (v28 + 1))
        {
          goto LABEL_73;
        }

        v43 = *v28;
        a1[1] = v28 + 1;
        v42 = 0;
      }

      else if (v12 == 2)
      {
        if ((v10 & 7) != 0)
        {
          if ((v10 & 7) != 2)
          {
            goto LABEL_73;
          }

          v10 = ProtobufDecoder.decodeVarint()(v10);
          if (v2)
          {
            goto LABEL_79;
          }

          if ((v10 & 0x8000000000000000) != 0)
          {
            goto LABEL_83;
          }

          v25 = a1[1] + v10;
          if (v8 < v25)
          {
LABEL_73:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
            goto LABEL_79;
          }

          a1[3] = 16;
          a1[4] = v25;
        }

        v26 = ProtobufDecoder.decodeVarint()(v10);
        if (v2)
        {
          goto LABEL_79;
        }

        if (v26 == 2)
        {
          v27 = 2;
        }

        else
        {
          v27 = v26 == 1;
        }

        if (v26 <= 0xFF)
        {
          v5 = v27;
        }

        else
        {
          v5 = 0;
        }
      }

      else if (v12 == 1)
      {
        if ((v10 & 7) != 2)
        {
          goto LABEL_76;
        }

        v13 = a1[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13);
          v13 = isUniquelyReferenced_nonNull_native;
        }

        v16 = *(v13 + 16);
        v15 = *(v13 + 24);
        if (v16 >= v15 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v13);
          v13 = isUniquelyReferenced_nonNull_native;
        }

        *(v13 + 16) = v16 + 1;
        *(v13 + 8 * v16 + 32) = v8;
        a1[5] = v13;
        v17 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          goto LABEL_79;
        }

        if (v17 < 0)
        {
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
          __break(1u);
          v36 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
          v37 = *(v36 + 2);
          if (!v37)
          {
            __break(1u);
            return;
          }

          v34 = v37 - 1;
          v35 = *&v36[8 * v34 + 32];
          *(v36 + 2) = v34;
          a1[5] = v36;
          a1[2] = v35;
LABEL_79:

          return;
        }

        v18 = a1[1] + v17;
        if (v8 < v18)
        {
LABEL_76:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          goto LABEL_79;
        }

        a1[2] = v18;
        ResolvedGradient.Stop.init(from:)(a1, &v40);
        v19 = a1[5];
        if (!*(v19 + 2))
        {
          goto LABEL_81;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v20 = *(v19 + 2);
          if (!v20)
          {
            goto LABEL_82;
          }
        }

        else
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
          v20 = *(v19 + 2);
          if (!v20)
          {
            goto LABEL_82;
          }
        }

        v21 = v20 - 1;
        v8 = *&v19[8 * v21 + 32];
        *(v19 + 2) = v21;
        a1[5] = v19;
        a1[2] = v8;
        v38 = v40;
        *v39 = v41[0];
        *&v39[9] = *(v41 + 9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        }

        v23 = *(v9 + 2);
        v22 = *(v9 + 3);
        if (v23 >= v22 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v9);
        }

        *(v9 + 2) = v23 + 1;
        v24 = &v9[48 * v23];
        *(v24 + 57) = *&v39[9];
        *(v24 + 2) = v38;
        *(v24 + 3) = *v39;
      }

      else
      {
        v29 = v10 & 7;
        if (v29 > 1)
        {
          if (v29 == 2)
          {
            v32 = ProtobufDecoder.decodeVarint()(v10);
            if (v2)
            {
              goto LABEL_79;
            }

            if (v32 < 0)
            {
              goto LABEL_85;
            }

            v30 = a1[1] + v32;
            if (v8 < v30)
            {
              goto LABEL_73;
            }
          }

          else
          {
            if (v29 != 5)
            {
              goto LABEL_73;
            }

            v30 = a1[1] + 4;
            if (v8 < v30)
            {
              goto LABEL_73;
            }
          }

          goto LABEL_5;
        }

        if ((v10 & 7) != 0)
        {
          if (v29 != 1)
          {
            goto LABEL_73;
          }

          v30 = a1[1] + 8;
          if (v8 < v30)
          {
            goto LABEL_73;
          }

LABEL_5:
          a1[1] = v30;
          goto LABEL_6;
        }

        ProtobufDecoder.decodeVarint()(v10);
        if (v2)
        {
          goto LABEL_79;
        }
      }

LABEL_6:
      v7 = a1[1];
      if (v7 >= v8)
      {
        v6 = v42;
        v33 = v43;
        goto LABEL_72;
      }
    }
  }

  v33 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_72:
  a1[3] = 0;
  *a2 = v9;
  *(a2 + 8) = v5;
  *(a2 + 12) = v33;
  *(a2 + 16) = v6;
}

unint64_t ResolvedGradient.Stop.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = 1;
  v47 = 1;
  v6 = *(result + 8);
  v7 = *(result + 16);
  v8 = 0uLL;
  v9 = 0.0;
  v10 = 0;
  if (v6 < v7)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    while (1)
    {
      result = v3[3];
      v45 = v8;
      if (result)
      {
        v14 = v3[4];
        if (v6 < v14)
        {
          goto LABEL_11;
        }

        if (v14 < v6)
        {
          goto LABEL_70;
        }

        v3[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()(result);
      if (v2)
      {
        return result;
      }

      v8 = v45;
      if (result <= 7)
      {
        goto LABEL_70;
      }

LABEL_11:
      v15 = result >> 3;
      if (result >> 3 == 3)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_70;
        }

        v30 = v3[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v30 + 16) + 1, 1, v30);
          v30 = isUniquelyReferenced_nonNull_native;
        }

        v33 = *(v30 + 16);
        v32 = *(v30 + 24);
        if (v33 >= v32 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v30);
          v30 = isUniquelyReferenced_nonNull_native;
        }

        *(v30 + 16) = v33 + 1;
        *(v30 + 8 * v33 + 32) = v7;
        v3[5] = v30;
        result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          __break(1u);
          do
          {
            __break(1u);
            result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
            a2 = result;
            v42 = *(result + 16);
            if (v42)
            {
              goto LABEL_76;
            }

            __break(1u);
            a2 = v3[5];
          }

          while (!*(a2 + 16));
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v42 = *(a2 + 16);
            if (v42)
            {
LABEL_76:
              v43 = v42 - 1;
              v44 = *(a2 + 8 * v43 + 32);
              *(a2 + 16) = v43;
              v3[5] = a2;
              v3[2] = v44;
              return result;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
            a2 = result;
            v42 = *(result + 16);
            if (v42)
            {
              goto LABEL_76;
            }
          }

          __break(1u);
          return result;
        }

        v34 = v3[1] + result;
        if (v7 < v34)
        {
          goto LABEL_70;
        }

        v3[2] = v34;
        BezierTimingFunction<>.init(from:)(v3, &v46);
        v35 = v3[5];
        if (!*(v35 + 16))
        {
          goto LABEL_80;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v36 = *(v35 + 16);
          if (!v36)
          {
            goto LABEL_82;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v35);
          v35 = result;
          v36 = *(result + 16);
          if (!v36)
          {
            goto LABEL_82;
          }
        }

        v37 = v36 - 1;
        v7 = *(v35 + 8 * v37 + 32);
        *(v35 + 16) = v37;
        v3[5] = v35;
        v3[2] = v7;
        v8 = v46;
        v47 = 0;
      }

      else
      {
        if (v15 == 2)
        {
          v28 = result & 7;
          if (v28 != 5)
          {
            if (v28 == 2)
            {
              result = ProtobufDecoder.decodeVarint()(result);
              if (v2)
              {
                return result;
              }

              v8 = v45;
              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_83;
              }

              v29 = v3[1];
              if (v7 < v29 + result)
              {
                goto LABEL_70;
              }

              v3[3] = 17;
              v3[4] = v29 + result;
            }

            else
            {
              if (v28 != 1)
              {
                goto LABEL_70;
              }

              v29 = v3[1];
            }

            if (v7 < (v29 + 1))
            {
              goto LABEL_70;
            }

            v9 = *v29;
            v3[1] = v29 + 1;
            goto LABEL_4;
          }

          v40 = v3[1];
          if (v7 < (v40 + 1))
          {
            goto LABEL_70;
          }

          v41 = *v40;
          v3[1] = v40 + 1;
          v9 = v41;
          goto LABEL_61;
        }

        if (v15 == 1)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_70;
          }

          v16 = v3[5];
          v17 = swift_isUniquelyReferenced_nonNull_native();
          if ((v17 & 1) == 0)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 16) + 1, 1, v16);
            v16 = v17;
          }

          v19 = *(v16 + 16);
          v18 = *(v16 + 24);
          if (v19 >= v18 >> 1)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
            v16 = v17;
          }

          *(v16 + 16) = v19 + 1;
          *(v16 + 8 * v19 + 32) = v7;
          v3[5] = v16;
          result = ProtobufDecoder.decodeVarint()(v17);
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_78;
          }

          v20 = v3[1] + result;
          if (v7 < v20)
          {
LABEL_70:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            return swift_willThrow();
          }

          v3[2] = v20;
          specialized Color.Resolved.init(from:)(v3);
          v25 = v3[5];
          if (!*(v25 + 16))
          {
            goto LABEL_79;
          }

          v10 = v21;
          v11 = v22;
          v12 = v23;
          v13 = v24;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
            v25 = result;
          }

          v26 = *(v25 + 16);
          v8 = v45;
          if (!v26)
          {
            goto LABEL_81;
          }

          v27 = v26 - 1;
          v7 = *(v25 + 8 * v27 + 32);
          *(v25 + 16) = v27;
          v3[5] = v25;
          v3[2] = v7;
          goto LABEL_4;
        }

        v38 = result & 7;
        if (v38 > 1)
        {
          if (v38 == 2)
          {
            result = ProtobufDecoder.decodeVarint()(result);
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_84;
            }

            v39 = v3[1] + result;
            v8 = v45;
            if (v7 < v39)
            {
              goto LABEL_70;
            }
          }

          else
          {
            if (v38 != 5)
            {
              goto LABEL_70;
            }

            v39 = v3[1] + 4;
            if (v7 < v39)
            {
              goto LABEL_70;
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

LABEL_61:
            v8 = v45;
            goto LABEL_4;
          }

          if (v38 != 1)
          {
            goto LABEL_70;
          }

          v39 = v3[1] + 8;
          if (v7 < v39)
          {
            goto LABEL_70;
          }
        }

        v3[1] = v39;
      }

LABEL_4:
      v6 = v3[1];
      if (v6 >= v7)
      {
        v5 = v47;
        goto LABEL_69;
      }
    }
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
LABEL_69:
  v3[3] = 0;
  *a2 = v10;
  *(a2 + 4) = v11;
  *(a2 + 8) = v12;
  *(a2 + 12) = v13;
  *(a2 + 16) = v9;
  *(a2 + 24) = v8;
  *(a2 + 40) = v5;
  return result;
}

void specialized CodableFontTraits.init(from:)(uint64_t a1)
{
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x1E695DF90]) init];
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  if (v7 >= v8)
  {
    *(a1 + 24) = 0;
    return;
  }

  v54 = v5;
  v9 = *MEMORY[0x1E69657D8];
  v10 = *MEMORY[0x1E69658E0];
  v56 = *MEMORY[0x1E6965858];
  v11 = *MEMORY[0x1E69659C8];
  v12 = *MEMORY[0x1E6965970];
  v55 = *MEMORY[0x1E6965870];
  while (1)
  {
    v14 = *(a1 + 24);
    if (v14)
    {
      v15 = *(a1 + 32);
      if (v7 < v15)
      {
        goto LABEL_13;
      }

      if (v15 < v7)
      {
        goto LABEL_92;
      }

      *(a1 + 24) = 0;
    }

    v14 = ProtobufDecoder.decodeVarint()(v14);
    if (v1)
    {
      goto LABEL_93;
    }

    if (v14 < 8)
    {
      goto LABEL_92;
    }

LABEL_13:
    v16 = v14 >> 3;
    v17 = v14 & 7;
    if (v14 >> 3 <= 3)
    {
      switch(v16)
      {
        case 1uLL:
          if ((v14 & 7) != 0)
          {
            if (v17 != 2)
            {
              goto LABEL_92;
            }

            v14 = ProtobufDecoder.decodeVarint()(v14);
            if (v1)
            {
              goto LABEL_93;
            }

            if ((v14 & 0x8000000000000000) != 0)
            {
              goto LABEL_103;
            }

            v20 = *(a1 + 8) + v14;
            if (v8 < v20)
            {
LABEL_92:
              lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
              swift_allocError();
              swift_willThrow();
LABEL_93:

              return;
            }

            *(a1 + 24) = 8;
            *(a1 + 32) = v20;
          }

          ProtobufDecoder.decodeVarint()(v14);
          v21 = v1;
          if (v1)
          {
            goto LABEL_93;
          }

          isa = UInt._bridgeToObjectiveC()().super.super.isa;
          [v6 setObject:isa forKey:v55];
          break;
        case 2uLL:
          if (v17 == 2)
          {
            v42 = ProtobufDecoder.decodeVarint()(v14);
            if (v1)
            {
              goto LABEL_93;
            }

            if (v42 < 0)
            {
              goto LABEL_104;
            }

            v24 = *(a1 + 8);
            if (v8 < v24 + v42)
            {
              goto LABEL_92;
            }

            *(a1 + 24) = 21;
            *(a1 + 32) = v24 + v42;
          }

          else
          {
            if (v17 != 5)
            {
              goto LABEL_92;
            }

            v24 = *(a1 + 8);
          }

          if (v8 < v24 + 4)
          {
            goto LABEL_92;
          }

          *(a1 + 8) = v24 + 4;
          v21 = v1;
          isa = Float._bridgeToObjectiveC()().super.super.isa;
          [v6 setObject:isa forKey:v12];
          break;
        case 3uLL:
          if (v17 == 2)
          {
            v39 = ProtobufDecoder.decodeVarint()(v14);
            if (v1)
            {
              goto LABEL_93;
            }

            if (v39 < 0)
            {
              goto LABEL_100;
            }

            v18 = *(a1 + 8);
            if (v8 < v18 + v39)
            {
              goto LABEL_92;
            }

            *(a1 + 24) = 29;
            *(a1 + 32) = v18 + v39;
          }

          else
          {
            if (v17 != 5)
            {
              goto LABEL_92;
            }

            v18 = *(a1 + 8);
          }

          if (v8 < v18 + 4)
          {
            goto LABEL_92;
          }

          *(a1 + 8) = v18 + 4;
          v21 = v1;
          isa = Float._bridgeToObjectiveC()().super.super.isa;
          [v6 setObject:isa forKey:v11];
          break;
        default:
          goto LABEL_37;
      }

LABEL_5:

      v1 = v21;
      goto LABEL_6;
    }

    if (v16 == 4)
    {
      if (v17 == 2)
      {
        v38 = ProtobufDecoder.decodeVarint()(v14);
        if (v1)
        {
          goto LABEL_93;
        }

        if (v38 < 0)
        {
          goto LABEL_102;
        }

        v22 = *(a1 + 8);
        if (v8 < v22 + v38)
        {
          goto LABEL_92;
        }

        *(a1 + 24) = 37;
        *(a1 + 32) = v22 + v38;
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_92;
        }

        v22 = *(a1 + 8);
      }

      if (v8 < v22 + 4)
      {
        goto LABEL_92;
      }

      *(a1 + 8) = v22 + 4;
      v21 = v1;
      isa = Float._bridgeToObjectiveC()().super.super.isa;
      [v6 setObject:isa forKey:v56];
      goto LABEL_5;
    }

    if (v16 == 5)
    {
      break;
    }

    if (v16 == 6)
    {
      if (v17 == 2)
      {
        v40 = ProtobufDecoder.decodeVarint()(v14);
        if (v1)
        {
          goto LABEL_93;
        }

        if (v40 < 0)
        {
          goto LABEL_101;
        }

        v19 = *(a1 + 8);
        if (v8 < v19 + v40)
        {
          goto LABEL_92;
        }

        *(a1 + 24) = 53;
        *(a1 + 32) = v19 + v40;
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_92;
        }

        v19 = *(a1 + 8);
      }

      if (v8 < v19 + 4)
      {
        goto LABEL_92;
      }

      v21 = v1;
      *(a1 + 8) = v19 + 4;
      v41.super.super.isa = Float._bridgeToObjectiveC()().super.super.isa;
      if (!v9)
      {
        goto LABEL_106;
      }

      isa = v41.super.super.isa;
      [v6 setObject:v41.super.super.isa forKey:v9];
      goto LABEL_5;
    }

LABEL_37:
    if ((v14 & 7) > 1)
    {
      if (v17 == 2)
      {
        v49 = ProtobufDecoder.decodeVarint()(v14);
        if (v1)
        {
          goto LABEL_93;
        }

        if (v49 < 0)
        {
          goto LABEL_105;
        }

        v23 = *(a1 + 8) + v49;
        if (v8 < v23)
        {
          goto LABEL_92;
        }
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_92;
        }

        v23 = *(a1 + 8) + 4;
        if (v8 < v23)
        {
          goto LABEL_92;
        }
      }
    }

    else
    {
      if ((v14 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()(v14);
        if (v1)
        {
          goto LABEL_93;
        }

        goto LABEL_6;
      }

      if (v17 != 1)
      {
        goto LABEL_92;
      }

      v23 = *(a1 + 8) + 8;
      if (v8 < v23)
      {
        goto LABEL_92;
      }
    }

    *(a1 + 8) = v23;
LABEL_6:
    v7 = *(a1 + 8);
    if (v7 >= v8)
    {
      *(a1 + 24) = 0;
      return;
    }
  }

  if (v17 != 2)
  {
    goto LABEL_92;
  }

  v25 = ProtobufDecoder.decodeVarint()(v14);
  if (v1)
  {
    goto LABEL_93;
  }

  v26 = v25;
  if ((v25 & 0x8000000000000000) == 0)
  {
    v27 = v12;
    v28 = v11;
    v29 = v10;
    v30 = *(a1 + 8);
    if (v8 < v30 + v25)
    {
      goto LABEL_92;
    }

    v52 = v9;
    v53 = v6;
    v51 = 0;
    *(a1 + 8) = v30 + v25;
    if (v25)
    {
      v31 = v30 - [*a1 bytes];
      v32 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;
      if (__OFADD__(v31, v26))
      {
        goto LABEL_98;
      }

      if (v31 + v26 < v31)
      {
        goto LABEL_99;
      }

      v35 = v32;
      v26 = Data._Representation.subscript.getter();
      v37 = v36;
      outlined consume of Data._Representation(v35, v34);
    }

    else
    {
      v37 = 0xC000000000000000;
    }

    static String.Encoding.utf8.getter();
    v43 = String.init(data:encoding:)();
    if (!v44)
    {
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();

      outlined consume of Data._Representation(v26, v37);
      return;
    }

    v45 = v43;
    v46 = v44;
    v47 = outlined consume of Data._Representation(v26, v37);
    v48 = MEMORY[0x193ABEC20](v45, v46, v47);

    if (!v29)
    {
      goto LABEL_107;
    }

    v10 = v29;
    v6 = v53;
    [v53 setObject:v48 forKey:v29];

    v1 = v51;
    v9 = v52;
    v11 = v28;
    v12 = v27;
    goto LABEL_6;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
}

void _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo10CGImageRefa_Tt0g503_s7a11UI14Codablel11V4fromAcA15cd30Vz_tKcfcSo0D3Refa10Foundation4K7VKXEfU_Tf1cn_n(uint64_t a1)
{
  v3 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v8 < v9)
  {
    v66 = v4;
    v10 = 0;
    v65 = *MEMORY[0x1E6969028];
    v64 = (v5 + 104);
    while (1)
    {
      v11 = *(a1 + 24);
      if (v11)
      {
        v12 = *(a1 + 32);
        if (v8 < v12)
        {
          goto LABEL_14;
        }

        if (v12 < v8)
        {
          goto LABEL_70;
        }

        *(a1 + 24) = 0;
      }

      v11 = ProtobufDecoder.decodeVarint()(v11);
      if (v1)
      {
        goto LABEL_71;
      }

      if (v11 < 8)
      {
        goto LABEL_70;
      }

LABEL_14:
      v13 = v11 & 7;
      if (v11 >> 3 == 1)
      {
        if ((v11 & 7) != 0)
        {
          if (v13 != 2)
          {
            goto LABEL_70;
          }

          v11 = ProtobufDecoder.decodeVarint()(v11);
          if (v1)
          {
            goto LABEL_71;
          }

          if ((v11 & 0x8000000000000000) != 0)
          {
            goto LABEL_82;
          }

          v26 = *(a1 + 8) + v11;
          if (v9 < v26)
          {
LABEL_70:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
LABEL_71:

            return;
          }

          *(a1 + 24) = 8;
          *(a1 + 32) = v26;
        }

        v27 = ProtobufDecoder.decodeVarint()(v11);
        v17 = v1;
        if (v1)
        {
          goto LABEL_71;
        }

        v28 = v27;
        v29 = *(a1 + 48);
        if (one-time initialization token for readerKey != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for CodingUserInfoKey();
        v31 = __swift_project_value_buffer(v30, static ArchiveReader.readerKey);
        if (*(v29 + 16))
        {
          v32 = specialized __RawDictionaryStorage.find<A>(_:)(v31);
          if (v33)
          {
            outlined init with copy of Any(*(v29 + 56) + 32 * v32, &v68);
            type metadata accessor for ArchiveReader();
            if (swift_dynamicCast())
            {
              v34 = v67;
              if (one-time initialization token for cacheKey != -1)
              {
                swift_once();
              }

              v35 = __swift_project_value_buffer(v30, static ArchiveReader.cacheKey);
              if (*(v29 + 16) && (v36 = specialized __RawDictionaryStorage.find<A>(_:)(v35), (v37 & 1) != 0) && (outlined init with copy of Any(*(v29 + 56) + 32 * v36, &v68), type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], type metadata accessor for MutableBox), (swift_dynamicCast() & 1) != 0))
              {
                if (v28 < 0)
                {
                  goto LABEL_84;
                }

                v38 = v67;
                swift_beginAccess();
                v39 = *(v38 + 16);
                if (!*(v39 + 16) || (v40 = specialized __RawDictionaryStorage.find<A>(_:)(v28), (v41 & 1) == 0))
                {
                  v63 = v38;
                  swift_endAccess();
                  if (!*(v34 + 16))
                  {
                    goto LABEL_87;
                  }

                  v48 = (*(v34 + 32) + 16 * v28);
                  v49 = *v48;
                  if (*v48 < 0)
                  {
                    goto LABEL_85;
                  }

                  v62 = *(v34 + 16);
                  v50 = v48[1];

                  if (v50 < 0)
                  {
                    goto LABEL_86;
                  }

                  v51 = swift_allocObject();
                  *(v51 + 16) = v34;
                  *v7 = OptionalAnchorValueBox.__ivar_destroyer;
                  v7[1] = v51;
                  (*v64)(v7, v65, v66);
                  v52 = specialized Data.init(bytesNoCopy:count:deallocator:)(v62 + v49, v50, v7);
                  v54 = v53;
                  v55 = specialized static CodableCGImage.import(from:)();
                  v62 = 0;
                  v56 = v55;

                  outlined consume of Data._Representation(v52, v54);
                  type metadata accessor for CGImageRef(0);
                  v69 = v57;
                  *&v68 = v56;
                  swift_beginAccess();
                  v58 = v56;
                  specialized Dictionary.subscript.setter(&v68, v28);
                  swift_endAccess();

                  v10 = v56;
                  v1 = v62;
                  goto LABEL_7;
                }

                outlined init with copy of Any(*(v39 + 56) + 32 * v40, &v68);
                swift_endAccess();

                outlined init with take of Any(&v68, &v67);
                type metadata accessor for CGImageRef(0);
                if (swift_dynamicCast())
                {
                  v10 = v70;
                }

                else
                {
                  v10 = 0;
                }
              }

              else
              {
              }
            }
          }
        }

        goto LABEL_6;
      }

      if (v11 >> 3 == 2)
      {
        if (v13 != 2)
        {
          goto LABEL_70;
        }

        v14 = ProtobufDecoder.decodeVarint()(v11);
        if (v1)
        {
          goto LABEL_71;
        }

        v15 = v14;
        if (v14 < 0)
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
          return;
        }

        v16 = *(a1 + 8);
        if (v9 < v16 + v14)
        {
          goto LABEL_70;
        }

        v17 = 0;
        *(a1 + 8) = v16 + v14;
        if (v14)
        {
          v18 = v16 - [*a1 bytes];
          v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;
          if (__OFADD__(v18, v15))
          {
            goto LABEL_80;
          }

          if (v18 + v15 < v18)
          {
            goto LABEL_81;
          }

          v22 = v19;
          v23 = Data._Representation.subscript.getter();
          v25 = v24;
          outlined consume of Data._Representation(v22, v21);
        }

        else
        {
          v23 = 0;
          v25 = 0xC000000000000000;
        }

        isa = Data._bridgeToObjectiveC()().super.isa;
        v44 = CGImageSourceCreateWithData(isa, 0);

        if (!v44)
        {
          lazy protocol witness table accessor for type CodableCGImage.Error and conformance CodableCGImage.Error();
          swift_allocError();
          *v59 = 0;
          swift_willThrow();
LABEL_78:

          outlined consume of Data._Representation(v23, v25);
          return;
        }

        ImageAtIndex = CGImageSourceCreateImageAtIndex(v44, 0, 0);
        if (!ImageAtIndex)
        {
          lazy protocol witness table accessor for type CodableCGImage.Error and conformance CodableCGImage.Error();
          swift_allocError();
          *v60 = 0;
          swift_willThrow();

          goto LABEL_78;
        }

        v46 = ImageAtIndex;

        outlined consume of Data._Representation(v23, v25);
        v10 = v46;
LABEL_6:
        v1 = v17;
        goto LABEL_7;
      }

      if ((v11 & 7) > 1)
      {
        if (v13 == 2)
        {
          v47 = ProtobufDecoder.decodeVarint()(v11);
          if (v1)
          {
            goto LABEL_71;
          }

          if (v47 < 0)
          {
            goto LABEL_83;
          }

          v42 = *(a1 + 8) + v47;
          if (v9 < v42)
          {
            goto LABEL_70;
          }
        }

        else
        {
          if (v13 != 5)
          {
            goto LABEL_70;
          }

          v42 = *(a1 + 8) + 4;
          if (v9 < v42)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
        if ((v11 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v11);
          if (v1)
          {
            goto LABEL_71;
          }

          goto LABEL_7;
        }

        if (v13 != 1)
        {
          goto LABEL_70;
        }

        v42 = *(a1 + 8) + 8;
        if (v9 < v42)
        {
          goto LABEL_70;
        }
      }

      *(a1 + 8) = v42;
LABEL_7:
      v8 = *(a1 + 8);
      if (v8 >= v9)
      {
        *(a1 + 24) = 0;
        if (v10)
        {
          return;
        }

        goto LABEL_4;
      }
    }
  }

  *(a1 + 24) = 0;
LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
}

void GraphicsImage.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NamedImage.Key(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1;
  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  v9 = 1;
  v163 = 1;
  v10 = a1[1];
  v11 = a1[2];
  if (v10 >= v11)
  {
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v116 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0.0;
    v120 = 0;
    v121 = 0;
    v13 = 0;
    v14 = 1.0;
    v15 = 0;
    v122 = 2;
    v123 = 1;
    v124 = 1;
LABEL_215:
    a1[3] = 0;
    *a2 = v112;
    *(a2 + 8) = v8;
    *(a2 + 9) = *v166;
    *(a2 + 12) = *&v166[3];
    *(a2 + 16) = v14;
    *(a2 + 24) = v13;
    *(a2 + 32) = v15;
    *(a2 + 40) = v113;
    *(a2 + 41) = v164;
    *(a2 + 43) = v165;
    *(a2 + 44) = v114;
    *(a2 + 52) = v115;
    *(a2 + 60) = v116;
    *(a2 + 64) = v9;
    *(a2 + 68) = *&v162[3];
    *(a2 + 65) = *v162;
    *(a2 + 72) = v117;
    *(a2 + 80) = v118;
    *(a2 + 88) = v119;
    *(a2 + 96) = v120;
    *(a2 + 104) = v122;
    *(a2 + 105) = v123;
    *(a2 + 106) = v124;
    *(a2 + 107) = v121;
    return;
  }

  v126 = v7;
  v139 = 0;
  v175 = 0;
  v137 = 0;
  v133 = 0;
  v132 = 0;
  v131 = 0;
  v130 = 0;
  v129 = 0.0;
  v128 = 0;
  v138 = 0;
  v12 = 8;
  v135 = 1;
  v13 = 0;
  v14 = 1.0;
  v174 = 255;
  v15 = 0;
  v127 = 2;
  v134 = 1;
  v16 = 0.0;
  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = a1[3];
    if (v19)
    {
      v20 = a1[4];
      if (v10 < v20)
      {
        goto LABEL_11;
      }

      if (v20 < v10)
      {
        goto LABEL_216;
      }

      a1[3] = 0;
    }

    v19 = ProtobufDecoder.decodeVarint()(v19);
    if (v2)
    {
      goto LABEL_217;
    }

    if (v19 <= 7)
    {
      goto LABEL_216;
    }

LABEL_11:
    v21 = v19 >> 3;
    if (v19 >> 3 > 6)
    {
      break;
    }

    if (v19 >> 3 <= 3)
    {
      if (v21 == 1)
      {
        v58 = v19;
        v23 = swift_allocObject();
        if ((v58 & 7) != 2)
        {
          goto LABEL_221;
        }

        v59 = a1[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v59 + 16) + 1, 1, v59);
          v59 = isUniquelyReferenced_nonNull_native;
        }

        v62 = *(v59 + 16);
        v61 = *(v59 + 24);
        if (v62 >= v61 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v61 > 1), v62 + 1, 1, v59);
          v59 = isUniquelyReferenced_nonNull_native;
        }

        *(v59 + 16) = v62 + 1;
        *(v59 + 8 * v62 + 32) = v11;
        a1[5] = v59;
        v63 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
        if (v2)
        {
          v136 = v2;
        }

        else
        {
          if (v63 < 0)
          {
            goto LABEL_230;
          }

          v64 = a1[1] + v63;
          if (v11 >= v64)
          {
            a1[2] = v64;
            specialized Color.ResolvedHDR.init(from:)(a1, &v167);
            v65 = a1[5];
            if (!*(v65 + 2))
            {
              goto LABEL_238;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v66 = *(v65 + 2);
              if (!v66)
              {
                goto LABEL_245;
              }
            }

            else
            {
              v65 = specialized _ArrayBuffer._consumeAndCreateNew()(v65);
              v66 = *(v65 + 2);
              if (!v66)
              {
                goto LABEL_245;
              }
            }

            v67 = v66 - 1;
            v11 = *&v65[8 * v67 + 32];
            *(v65 + 2) = v67;
            a1[5] = v65;
            a1[2] = v11;
            *(v23 + 16) = v167;
            *(v23 + 32) = v168;
            outlined consume of GraphicsImage.Contents?(v139, v174);
            v31 = 4;
LABEL_84:
            v174 = v31;
LABEL_125:
            v139 = v23;
            v2 = 0;
            goto LABEL_195;
          }

LABEL_221:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v136 = swift_allocError();
          swift_willThrow();
        }

        v70 = v138;
        v71 = v137;
        goto LABEL_227;
      }

      if (v21 != 2)
      {
        if (v21 != 3)
        {
          goto LABEL_152;
        }

        v22 = v19;
        v23 = swift_allocObject();
        if ((v22 & 7) != 2)
        {
          goto LABEL_222;
        }

        v24 = a1[5];
        v25 = swift_isUniquelyReferenced_nonNull_native();
        if ((v25 & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24);
          v24 = v25;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v24);
          v24 = v25;
        }

        *(v24 + 16) = v27 + 1;
        *(v24 + 8 * v27 + 32) = v11;
        a1[5] = v24;
        v28 = ProtobufDecoder.decodeVarint()(v25);
        if (v2)
        {
          v136 = v2;
        }

        else
        {
          if (v28 < 0)
          {
            goto LABEL_233;
          }

          v29 = a1[1] + v28;
          if (v11 >= v29)
          {
            a1[2] = v29;
            VectorImageLayer.init(from:)(a1, (v23 + 16));
            if (!*(a1[5] + 16))
            {
              goto LABEL_242;
            }

            v30 = specialized Array._customRemoveLast()();
            if (!v30)
            {
              v30 = specialized Array.remove(at:)(*(a1[5] + 16) - 1);
            }

            v11 = v30;
            a1[2] = v30;
            outlined consume of GraphicsImage.Contents?(v139, v174);
            v31 = 3;
            goto LABEL_84;
          }

LABEL_222:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v136 = swift_allocError();
          swift_willThrow();
        }

        v70 = v138;
        v71 = v137;
LABEL_227:
        swift_deallocUninitializedObject();
LABEL_219:
        v141 = v139;
        LOBYTE(v142) = v174;
        *(&v142 + 1) = *v166;
        HIDWORD(v142) = *&v166[3];
        v143 = v14;
        v144 = v13;
        v145 = v15;
        v146 = v175;
        v147 = v164;
        v148 = v165;
        v149 = v71;
        v150 = v133;
        v151 = v132;
        v152 = v163;
        *v153 = *v162;
        *&v153[3] = *&v162[3];
        v154 = v131;
        v155 = v130;
        v156 = v129;
        v157 = v128;
        v158 = v127;
        v159 = v135;
        v160 = v134;
        v161 = v70;
        outlined destroy of GraphicsImage(&v141);
        return;
      }

      if ((v19 & 7) != 2)
      {
        goto LABEL_216;
      }

      v82 = a1[5];
      v83 = swift_isUniquelyReferenced_nonNull_native();
      if ((v83 & 1) == 0)
      {
        v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v82 + 16) + 1, 1, v82);
        v82 = v83;
      }

      v85 = *(v82 + 16);
      v84 = *(v82 + 24);
      if (v85 >= v84 >> 1)
      {
        v83 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v84 > 1), v85 + 1, 1, v82);
        v82 = v83;
      }

      *(v82 + 16) = v85 + 1;
      *(v82 + 8 * v85 + 32) = v11;
      a1[5] = v82;
      v86 = ProtobufDecoder.decodeVarint()(v83);
      if (v2)
      {
        goto LABEL_217;
      }

      if (v86 < 0)
      {
        goto LABEL_231;
      }

      v87 = a1[1] + v86;
      if (v11 >= v87)
      {
        a1[2] = v87;
        _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFSo10CGImageRefa_Tt0g503_s7a11UI14Codablel11V4fromAcA15cd30Vz_tKcfcSo0D3Refa10Foundation4K7VKXEfU_Tf1cn_n(a1);
        if (!*(a1[5] + 16))
        {
          goto LABEL_239;
        }

        v23 = v88;
        v89 = specialized Array._customRemoveLast()();
        if (!v89)
        {
          v89 = specialized Array.remove(at:)(*(a1[5] + 16) - 1);
        }

        v11 = v89;
        a1[2] = v89;
        outlined consume of GraphicsImage.Contents?(v139, v174);
        v174 = 0;
        goto LABEL_125;
      }

LABEL_216:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      v136 = swift_allocError();
      swift_willThrow();
LABEL_218:
      v70 = v138;
      v71 = v137;
      goto LABEL_219;
    }

    if (v21 != 4)
    {
      if (v21 == 5)
      {
        v99 = v19 & 7;
        if (v99 == 5)
        {
          v109 = a1[1];
          if (v11 < (v109 + 1))
          {
            goto LABEL_216;
          }

          v110 = *v109;
          a1[1] = v109 + 1;
          v14 = v110;
        }

        else
        {
          if (v99 == 2)
          {
            v108 = ProtobufDecoder.decodeVarint()(v19);
            if (v2)
            {
              goto LABEL_217;
            }

            if (v108 < 0)
            {
              goto LABEL_251;
            }

            v100 = a1[1];
            if (v11 < v100 + v108)
            {
              goto LABEL_216;
            }

            a1[3] = 41;
            a1[4] = v100 + v108;
          }

          else
          {
            if (v99 != 1)
            {
              goto LABEL_216;
            }

            v100 = a1[1];
          }

          if (v11 < (v100 + 1))
          {
            goto LABEL_216;
          }

          v14 = *v100;
          a1[1] = v100 + 1;
        }

        goto LABEL_195;
      }

      if (v21 == 6)
      {
        if ((v19 & 7) != 2)
        {
          goto LABEL_216;
        }

        v43 = a1[5];
        v44 = swift_isUniquelyReferenced_nonNull_native();
        if ((v44 & 1) == 0)
        {
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 16) + 1, 1, v43);
          v43 = v44;
        }

        v46 = *(v43 + 16);
        v45 = *(v43 + 24);
        if (v46 >= v45 >> 1)
        {
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v43);
          v43 = v44;
        }

        *(v43 + 16) = v46 + 1;
        *(v43 + 8 * v46 + 32) = v11;
        a1[5] = v43;
        v47 = ProtobufDecoder.decodeVarint()(v44);
        if (v2)
        {
          goto LABEL_217;
        }

        if (v47 < 0)
        {
          goto LABEL_234;
        }

        v48 = a1[1] + v47;
        if (v11 < v48)
        {
          goto LABEL_216;
        }

        a1[2] = v48;
        specialized CGPoint.init(from:)(a1);
        v51 = a1[5];
        if (!*(v51 + 2))
        {
          goto LABEL_237;
        }

        v52 = v49;
        v53 = v50;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v54 = *(v51 + 2);
          if (!v54)
          {
            goto LABEL_243;
          }
        }

        else
        {
          v51 = specialized _ArrayBuffer._consumeAndCreateNew()(v51);
          v54 = *(v51 + 2);
          if (!v54)
          {
            goto LABEL_243;
          }
        }

        v55 = v54 - 1;
        v11 = *&v51[8 * v55 + 32];
        *(v51 + 2) = v55;
        a1[5] = v51;
        a1[2] = v11;
        v13 = v52;
        v15 = v53;
        goto LABEL_195;
      }

LABEL_152:
      v103 = v19 & 7;
      if (v103 > 1)
      {
        if (v103 == 2)
        {
          v111 = ProtobufDecoder.decodeVarint()(v19);
          if (v2)
          {
            goto LABEL_217;
          }

          if (v111 < 0)
          {
            goto LABEL_252;
          }

          v104 = a1[1] + v111;
        }

        else
        {
          if (v103 != 5)
          {
            goto LABEL_216;
          }

          v104 = a1[1] + 4;
        }
      }

      else
      {
        if ((v19 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v19);
          if (v2)
          {
            goto LABEL_217;
          }

          goto LABEL_195;
        }

        if (v103 != 1)
        {
          goto LABEL_216;
        }

        v104 = a1[1] + 8;
      }

      if (v11 < v104)
      {
        goto LABEL_216;
      }

      a1[1] = v104;
LABEL_195:
      if (v12 == 8)
      {
        goto LABEL_4;
      }

      goto LABEL_3;
    }

    if ((v19 & 7) != 2)
    {
      goto LABEL_216;
    }

    ProtobufDecoder.beginMessage()();
    v70 = v138;
    v71 = v137;
    if (v2)
    {
      v136 = v2;
      goto LABEL_219;
    }

    NamedImage.Key.init(from:)(a1, v126);
    v72 = a1[5];
    if (!*(v72 + 2))
    {
      goto LABEL_235;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v73 = *(v72 + 2);
      if (!v73)
      {
        goto LABEL_236;
      }
    }

    else
    {
      v72 = specialized _ArrayBuffer._consumeAndCreateNew()(v72);
      v73 = *(v72 + 2);
      if (!v73)
      {
        goto LABEL_236;
      }
    }

    v74 = v73 - 1;
    v11 = *&v72[8 * v74 + 32];
    *(v72 + 2) = v74;
    a1[5] = v72;
    a1[2] = v11;
    v75 = a1[6];
    if (one-time initialization token for namedImagesKey != -1)
    {
      swift_once();
    }

    v76 = type metadata accessor for CodingUserInfoKey();
    v77 = __swift_project_value_buffer(v76, static ArchiveReader.namedImagesKey);
    if (!*(v75 + 16) || (v78 = specialized __RawDictionaryStorage.find<A>(_:)(v77), (v79 & 1) == 0) || (outlined init with copy of Any(*(v75 + 56) + 32 * v78, v140), type metadata accessor for NamedImage.Cache(), (swift_dynamicCast() & 1) == 0))
    {
      if (one-time initialization token for sharedCache != -1)
      {
        swift_once();
      }
    }

    v105 = v126;
    NamedImage.Cache.decode(_:)(v126, &v141);
    v136 = v2;
    outlined destroy of (GraphicsImage.WeakContents, GraphicsImage.WeakContents)(v105, type metadata accessor for NamedImage.Key);

    v106 = v141;
    v107 = v142;
    v16 = v143;
    v17 = v144;
    v18 = v145;
    v12 = v146;
    outlined consume of GraphicsImage.Contents?(v139, v174);
    v139 = v106;
    v174 = v107;
    v2 = v136;
LABEL_3:
    v14 = v16;
    v13 = v17;
    v15 = v18;
    v175 = v12;
LABEL_4:
    v10 = a1[1];
    if (v10 >= v11)
    {
      v9 = v163;
      v121 = v138;
      v114 = v137;
      v115 = v133;
      v116 = v132;
      v123 = v135;
      v117 = v131;
      v118 = v130;
      v119 = v129;
      v120 = v128;
      v8 = v174;
      v113 = v175;
      v112 = v139;
      v124 = v134;
      v122 = v127;
      goto LABEL_215;
    }
  }

  if (v19 >> 3 > 9)
  {
    if (v21 == 10)
    {
      if ((v19 & 7) != 0)
      {
        if ((v19 & 7) != 2)
        {
          goto LABEL_216;
        }

        v19 = ProtobufDecoder.decodeVarint()(v19);
        if (v2)
        {
          goto LABEL_217;
        }

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_248;
        }

        v80 = a1[1] + v19;
        if (v11 < v80)
        {
          goto LABEL_216;
        }

        a1[3] = 80;
        a1[4] = v80;
      }

      v81 = ProtobufDecoder.decodeVarint()(v19);
      if (v2)
      {
        goto LABEL_217;
      }

      v41 = v81 != 0;
      v42 = &v172;
      goto LABEL_194;
    }

    if (v21 != 11)
    {
      if (v21 != 12)
      {
        goto LABEL_152;
      }

      if ((v19 & 7) != 0)
      {
        if ((v19 & 7) != 2)
        {
          goto LABEL_216;
        }

        v19 = ProtobufDecoder.decodeVarint()(v19);
        if (v2)
        {
          goto LABEL_217;
        }

        if ((v19 & 0x8000000000000000) != 0)
        {
          goto LABEL_249;
        }

        v56 = a1[1] + v19;
        if (v11 < v56)
        {
          goto LABEL_216;
        }

        a1[3] = 96;
        a1[4] = v56;
      }

      v57 = ProtobufDecoder.decodeVarint()(v19);
      if (v2)
      {
        goto LABEL_217;
      }

      v41 = v57 == 1;
      if (v57 == 2)
      {
        v41 = 2;
      }

      v42 = &v173 + 4;
LABEL_194:
      *(v42 - 64) = v41;
      goto LABEL_195;
    }

    if ((v19 & 7) != 0)
    {
      if ((v19 & 7) != 2)
      {
        goto LABEL_216;
      }

      v19 = ProtobufDecoder.decodeVarint()(v19);
      if (v2)
      {
LABEL_217:
        v136 = v2;
        goto LABEL_218;
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_247;
      }

      v101 = a1[1] + v19;
      if (v11 < v101)
      {
        goto LABEL_216;
      }

      a1[3] = 88;
      a1[4] = v101;
    }

    v102 = ProtobufDecoder.decodeVarint()(v19);
    if (v2)
    {
      goto LABEL_217;
    }

    if (v102 > 1)
    {
      if (v102 == 2)
      {
        v41 = 2;
        goto LABEL_193;
      }

      if (v102 == 3)
      {
        v41 = 3;
LABEL_193:
        v42 = &v171;
        goto LABEL_194;
      }
    }

    else if (!v102)
    {
      v134 = 0;
      goto LABEL_195;
    }

    v41 = 1;
    goto LABEL_193;
  }

  if (v21 == 7)
  {
    if ((v19 & 7) != 0)
    {
      if ((v19 & 7) != 2)
      {
        goto LABEL_216;
      }

      v19 = ProtobufDecoder.decodeVarint()(v19);
      if (v2)
      {
        goto LABEL_217;
      }

      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_250;
      }

      v68 = a1[1] + v19;
      if (v11 < v68)
      {
        goto LABEL_216;
      }

      a1[3] = 56;
      a1[4] = v68;
    }

    v69 = ProtobufDecoder.decodeVarint()(v19);
    if (v2)
    {
      goto LABEL_217;
    }

    if (v69 <= 0xFF)
    {
      v175 = 0;
      if (v69 <= 3u)
      {
        switch(v69)
        {
          case 1u:
            v175 = 4;
            break;
          case 2u:
            v175 = 1;
            break;
          case 3u:
            v175 = 5;
            break;
        }
      }

      else if (v69 > 5u)
      {
        if (v69 == 6)
        {
          v175 = 2;
        }

        else if (v69 == 7)
        {
          v175 = 6;
        }
      }

      else if (v69 == 4)
      {
        v175 = 3;
      }

      else if (v69 == 5)
      {
        v175 = 7;
      }
    }

    else
    {
      v175 = 0;
    }

    goto LABEL_195;
  }

  if (v21 != 8)
  {
    if (v21 != 9)
    {
      goto LABEL_152;
    }

    if ((v19 & 7) != 2)
    {
      goto LABEL_216;
    }

    v32 = a1[5];
    v33 = swift_isUniquelyReferenced_nonNull_native();
    if ((v33 & 1) == 0)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 16) + 1, 1, v32);
      v32 = v33;
    }

    v35 = *(v32 + 16);
    v34 = *(v32 + 24);
    if (v35 >= v34 >> 1)
    {
      v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v32);
      v32 = v33;
    }

    *(v32 + 16) = v35 + 1;
    *(v32 + 8 * v35 + 32) = v11;
    a1[5] = v32;
    v36 = ProtobufDecoder.decodeVarint()(v33);
    if (v2)
    {
      goto LABEL_217;
    }

    if (v36 < 0)
    {
      goto LABEL_232;
    }

    v37 = a1[1] + v36;
    if (v11 < v37)
    {
      goto LABEL_216;
    }

    a1[2] = v37;
    Image.ResizingInfo.init(from:)(a1, &v141);
    v38 = a1[5];
    if (!*(v38 + 2))
    {
      goto LABEL_240;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v39 = *(v38 + 2);
      if (!v39)
      {
        goto LABEL_244;
      }
    }

    else
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew()(v38);
      v39 = *(v38 + 2);
      if (!v39)
      {
        goto LABEL_244;
      }
    }

    v40 = v39 - 1;
    v11 = *&v38[8 * v40 + 32];
    *(v38 + 2) = v40;
    a1[5] = v38;
    a1[2] = v11;
    v131 = v141;
    v130 = v142;
    v129 = v143;
    v128 = v144;
    v41 = v145;
    v42 = &v165;
    goto LABEL_194;
  }

  if ((v19 & 7) != 2)
  {
    goto LABEL_216;
  }

  v90 = a1[5];
  v91 = swift_isUniquelyReferenced_nonNull_native();
  if ((v91 & 1) == 0)
  {
    v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v90 + 16) + 1, 1, v90);
    v90 = v91;
  }

  v93 = *(v90 + 16);
  v92 = *(v90 + 24);
  if (v93 >= v92 >> 1)
  {
    v91 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v92 > 1), v93 + 1, 1, v90);
    v90 = v91;
  }

  *(v90 + 16) = v93 + 1;
  *(v90 + 8 * v93 + 32) = v11;
  a1[5] = v90;
  v94 = ProtobufDecoder.decodeVarint()(v91);
  if (v2)
  {
    goto LABEL_217;
  }

  if ((v94 & 0x8000000000000000) == 0)
  {
    v95 = a1[1] + v94;
    if (v11 < v95)
    {
      goto LABEL_216;
    }

    a1[2] = v95;
    specialized Color.ResolvedHDR.init(from:)(a1, v169);
    v96 = a1[5];
    if (!*(v96 + 2))
    {
      goto LABEL_241;
    }

    v137 = v169[0];
    v133 = v169[1];
    v132 = v170;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v97 = *(v96 + 2);
      if (!v97)
      {
        goto LABEL_246;
      }
    }

    else
    {
      v96 = specialized _ArrayBuffer._consumeAndCreateNew()(v96);
      v97 = *(v96 + 2);
      if (!v97)
      {
        goto LABEL_246;
      }
    }

    v98 = v97 - 1;
    v11 = *&v96[8 * v98 + 32];
    *(v96 + 2) = v98;
    a1[5] = v96;
    a1[2] = v11;
    v163 = 0;
    goto LABEL_195;
  }

  __break(1u);
LABEL_230:
  __break(1u);
LABEL_231:
  __break(1u);
LABEL_232:
  __break(1u);
LABEL_233:
  __break(1u);
LABEL_234:
  __break(1u);
LABEL_235:
  __break(1u);
LABEL_236:
  __break(1u);
LABEL_237:
  __break(1u);
LABEL_238:
  __break(1u);
LABEL_239:
  __break(1u);
LABEL_240:
  __break(1u);
LABEL_241:
  __break(1u);
LABEL_242:
  __break(1u);
LABEL_243:
  __break(1u);
LABEL_244:
  __break(1u);
LABEL_245:
  __break(1u);
LABEL_246:
  __break(1u);
LABEL_247:
  __break(1u);
LABEL_248:
  __break(1u);
LABEL_249:
  __break(1u);
LABEL_250:
  __break(1u);
LABEL_251:
  __break(1u);
LABEL_252:
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
}

uint64_t sub_18D373500()
{

  v1 = *(v0 + 24);
  if (v1 >= 3)
  {
  }

  return swift_deallocObject();
}

Class specialized static CodableCGImage.import(from:)()
{
  v0.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = CGImageSourceCreateWithData(v0.super.isa, 0);

  if (v1)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v1, 0, 0);
    if (ImageAtIndex)
    {
      v0.super.isa = ImageAtIndex;
    }

    else
    {
      lazy protocol witness table accessor for type CodableCGImage.Error and conformance CodableCGImage.Error();
      swift_allocError();
      *v4 = 0;
      swift_willThrow();
    }
  }

  else
  {
    lazy protocol witness table accessor for type CodableCGImage.Error and conformance CodableCGImage.Error();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
  }

  return v0.super.isa;
}

uint64_t outlined destroy of LinkDestination.Configuration(uint64_t a1)
{
  v2 = type metadata accessor for LinkDestination.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t FixedRoundedRect.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v43 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v31 = 0;
    v9 = 0uLL;
    v7 = 0;
    v8 = 0;
    v10 = 0uLL;
LABEL_64:
    v3[3] = 0;
    *a2 = v9;
    *(a2 + 16) = v10;
    *(a2 + 32) = v7;
    *(a2 + 40) = v8;
    *(a2 + 48) = v31;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0uLL;
  v10 = 0uLL;
  while (1)
  {
    result = v3[3];
    v35 = v10;
    v37 = v9;
    if (result)
    {
      v12 = v3[4];
      if (v5 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v5)
      {
        goto LABEL_65;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    v10 = v35;
    v9 = v37;
    if (result <= 7)
    {
      goto LABEL_65;
    }

LABEL_11:
    v13 = result >> 3;
    v14 = result & 7;
    if (result >> 3 == 3)
    {
      break;
    }

    if (v13 == 2)
    {
      if (v14 != 2)
      {
        goto LABEL_65;
      }

      v22 = v3[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1, v22);
        v22 = isUniquelyReferenced_nonNull_native;
      }

      v25 = *(v22 + 16);
      v24 = *(v22 + 24);
      if (v25 >= v24 >> 1)
      {
        isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
        v22 = isUniquelyReferenced_nonNull_native;
      }

      *(v22 + 16) = v25 + 1;
      *(v22 + 8 * v25 + 32) = v6;
      v3[5] = v22;
      result = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        __break(1u);
        do
        {
          __break(1u);
          result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
          a2 = result;
          v32 = *(result + 16);
          if (v32)
          {
            goto LABEL_71;
          }

          __break(1u);
          a2 = v3[5];
        }

        while (!*(a2 + 16));
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v32 = *(a2 + 16);
          if (v32)
          {
LABEL_71:
            v33 = v32 - 1;
            v34 = *(a2 + 8 * v33 + 32);
            *(a2 + 16) = v33;
            v3[5] = a2;
            v3[2] = v34;
            return result;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
          a2 = result;
          v32 = *(result + 16);
          if (v32)
          {
            goto LABEL_71;
          }
        }

        __break(1u);
      }

      v26 = v3[1] + result;
      if (v6 < v26)
      {
        goto LABEL_65;
      }

      v3[2] = v26;
      specialized CGPoint.init(from:)(v3);
      v20 = v3[5];
      if (!*(v20 + 16))
      {
        goto LABEL_75;
      }

      v7 = v27;
      v8 = v28;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
        v20 = result;
      }

      v21 = *(v20 + 16);
      v10 = v35;
      v9 = v37;
      if (!v21)
      {
        goto LABEL_77;
      }
    }

    else
    {
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
              goto LABEL_79;
            }

            v30 = v3[1] + result;
            v10 = v35;
            v9 = v37;
            if (v6 < v30)
            {
              goto LABEL_65;
            }
          }

          else
          {
            if (v14 != 5)
            {
              goto LABEL_65;
            }

            v30 = v3[1] + 4;
            if (v6 < v30)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        if ((result & 7) != 0)
        {
          if (v14 != 1)
          {
            goto LABEL_65;
          }

          v30 = v3[1] + 8;
          if (v6 < v30)
          {
            goto LABEL_65;
          }

LABEL_62:
          v3[1] = v30;
          goto LABEL_4;
        }

        result = ProtobufDecoder.decodeVarint()(result);
        if (v2)
        {
          return result;
        }

LABEL_58:
        v10 = v35;
        v9 = v37;
        goto LABEL_4;
      }

      if (v14 != 2)
      {
        goto LABEL_65;
      }

      v15 = v3[5];
      v16 = swift_isUniquelyReferenced_nonNull_native();
      if ((v16 & 1) == 0)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 16) + 1, 1, v15);
        v15 = v16;
      }

      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v15);
        v15 = v16;
      }

      *(v15 + 16) = v18 + 1;
      *(v15 + 8 * v18 + 32) = v6;
      v3[5] = v15;
      result = ProtobufDecoder.decodeVarint()(v16);
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_73;
      }

      v19 = v3[1] + result;
      if (v6 < v19)
      {
        goto LABEL_65;
      }

      v3[2] = v19;
      v41 = 0u;
      v42 = 0u;
      closure #1 in EdgeInsets.init(from:)(&v41, v3, &v40);
      v20 = v3[5];
      if (!*(v20 + 16))
      {
        goto LABEL_74;
      }

      v36 = v42;
      v38 = v41;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
        v20 = result;
      }

      v21 = *(v20 + 16);
      v10 = v36;
      v9 = v38;
      if (!v21)
      {
        goto LABEL_76;
      }
    }

    v2 = 0;
    v11 = v21 - 1;
    v6 = *(v20 + 8 * v11 + 32);
    *(v20 + 16) = v11;
    v3[5] = v20;
    v3[2] = v6;
LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      v31 = v39;
      goto LABEL_64;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_46:
    result = ProtobufDecoder.decodeVarint()(result);
    if (v2)
    {
      return result;
    }

    v39 = result == 1;
    goto LABEL_58;
  }

  if (v14 != 2)
  {
    goto LABEL_65;
  }

  result = ProtobufDecoder.decodeVarint()(result);
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_78;
  }

  v29 = v3[1] + result;
  if (v6 >= v29)
  {
    v3[3] = 24;
    v3[4] = v29;
    goto LABEL_46;
  }

LABEL_65:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

uint64_t LinkDestination.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v21 = type metadata accessor for URL();
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<LinkDestination.Configuration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<LinkDestination.Configuration.CodingKeys>, MEMORY[0x1E69E6F48]);
  v22 = v6;
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for LinkDestination.Configuration(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v11;
  v12 = v19;
  v24 = 0;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FD0]);
  v13 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v17;
  (*(v12 + 32))(v17, v5, v13);
  v23 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v20 + 8))(v8, v22);
  *(v14 + *(v9 + 20)) = v15 & 1;
  outlined init with copy of LinkDestination.Configuration(v14, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of LinkDestination.Configuration(v14);
}

void closure #1 in closure #3 in DisplayList.Item.init(from:)(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v40 = a2;
  v3 = a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
LABEL_55:
    LODWORD(v6) = 0;
    LOWORD(v7) = 0;
    v8 = 0;
    v37 = 0u;
    v9 = MEMORY[0x1E69E7CC0];
LABEL_56:
    v3[3] = 0;
    v33 = v40;
    *v40 = v37;
    *(v33 + 4) = v8;
    *(v33 + 3) = v9;
    *(v33 + 16) = v7;
    *(v33 + 9) = v6;
    return;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v37 = 0u;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v3[3];
    if (v10)
    {
      v11 = v3[4];
      if (v4 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v4)
      {
        goto LABEL_57;
      }

      v3[3] = 0;
    }

    a1 = ProtobufDecoder.decodeVarint()(a1);
    if (v2)
    {
      goto LABEL_59;
    }

    v10 = a1;
    if (a1 < 8)
    {
LABEL_57:

LABEL_58:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      return;
    }

LABEL_11:
    if (v10 >> 3 != 2)
    {
      break;
    }

    if ((v10 & 7) != 2)
    {
      goto LABEL_58;
    }

    v22 = v3[5];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1, v22);
      v22 = isUniquelyReferenced_nonNull_native;
    }

    v25 = *(v22 + 16);
    v24 = *(v22 + 24);
    if (v25 >= v24 >> 1)
    {
      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v22);
      v22 = isUniquelyReferenced_nonNull_native;
    }

    *(v22 + 16) = v25 + 1;
    *(v22 + 8 * v25 + 32) = v5;
    v3[5] = v22;
    v26 = ProtobufDecoder.decodeVarint()(isUniquelyReferenced_nonNull_native);
    if (v2)
    {
      return;
    }

    if (v26 < 0)
    {
      goto LABEL_67;
    }

    v27 = v3[1] + v26;
    if (v5 < v27)
    {
      goto LABEL_58;
    }

    v3[2] = v27;
    DisplayList.init(from:)(v3, &v38);
    v28 = v3[5];
    if (!*(v28 + 16))
    {
      goto LABEL_69;
    }

    a1 = swift_isUniquelyReferenced_nonNull_native();
    if (a1)
    {
      v29 = *(v28 + 16);
      if (!v29)
      {
        goto LABEL_54;
      }
    }

    else
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
      v28 = a1;
      v29 = *(a1 + 16);
      if (!v29)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }

    v30 = v29 - 1;
    v5 = *(v28 + 8 * v30 + 32);
    *(v28 + 16) = v30;
    v3[5] = v28;
    v3[2] = v5;
    v9 = v38;
    v7 = WORD4(v38);
    v6 = HIDWORD(v38);
LABEL_4:
    v4 = v3[1];
    if (v4 >= v5)
    {
      goto LABEL_56;
    }
  }

  if (v10 >> 3 != 1)
  {
    v31 = v10 & 7;
    if (v31 > 1)
    {
      if (v31 == 2)
      {
        a1 = ProtobufDecoder.decodeVarint()(a1);
        if (v2)
        {
          goto LABEL_59;
        }

        if ((a1 & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }

        v32 = v3[1] + a1;
        if (v5 < v32)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v31 != 5)
        {
          goto LABEL_57;
        }

        v32 = v3[1] + 4;
        if (v5 < v32)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
      if ((v10 & 7) == 0)
      {
        a1 = ProtobufDecoder.decodeVarint()(a1);
        if (v2)
        {
          goto LABEL_59;
        }

        goto LABEL_4;
      }

      if (v31 != 1)
      {
        goto LABEL_57;
      }

      v32 = v3[1] + 8;
      if (v5 < v32)
      {
        goto LABEL_57;
      }
    }

    v3[1] = v32;
    goto LABEL_4;
  }

  if ((v10 & 7) != 2)
  {
    goto LABEL_57;
  }

  v12 = v3[5];
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v14 = v6;
  if ((v13 & 1) == 0)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 16) + 1, 1, v12);
    v12 = v13;
  }

  v16 = *(v12 + 16);
  v15 = *(v12 + 24);
  if (v16 >= v15 >> 1)
  {
    v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v12);
    v12 = v13;
  }

  *(v12 + 16) = v16 + 1;
  *(v12 + 8 * v16 + 32) = v5;
  v3[5] = v12;
  v17 = ProtobufDecoder.decodeVarint()(v13);
  if (v2)
  {
LABEL_59:

    return;
  }

  if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = v3[1] + v17;
    if (v5 < v18)
    {
      goto LABEL_57;
    }

    v3[2] = v18;
    StrongHash.init(from:)(v3, &v38);
    v19 = v3[5];
    if (!*(v19 + 16))
    {
      goto LABEL_68;
    }

    a1 = swift_isUniquelyReferenced_nonNull_native();
    if ((a1 & 1) == 0)
    {
      a1 = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v19 = a1;
    }

    v6 = v14;
    v20 = *(v19 + 16);
    if (!v20)
    {
      goto LABEL_70;
    }

    v21 = v20 - 1;
    v5 = *(v19 + 8 * v21 + 32);
    *(v19 + 16) = v21;
    v3[5] = v19;
    v3[2] = v5;
    v37 = v38;
    v8 = v39;
    goto LABEL_4;
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
LABEL_71:
  __break(1u);
  __break(1u);
  do
  {
    __break(1u);
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v34 = *(v7 + 16);
    if (v34)
    {
      goto LABEL_64;
    }

    __break(1u);
    v7 = v3[5];
  }

  while (!*(v7 + 16));
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v34 = *(v7 + 16);
    if (v34)
    {
LABEL_64:
      v35 = v34 - 1;
      v36 = *(v7 + 8 * v35 + 32);
      *(v7 + 16) = v35;
      v3[5] = v7;
      v3[2] = v36;
      return;
    }
  }

  else
  {
    v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v34 = *(v7 + 16);
    if (v34)
    {
      goto LABEL_64;
    }
  }

  __break(1u);
}

void closure #3 in DisplayList.Item.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = MEMORY[0x1E69E7CC0];
  if (v5 >= v6)
  {
LABEL_45:
    a1[3] = 0;
    *a2 = v7;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0x80000000;
    return;
  }

  while (1)
  {
    v8 = a1[3];
    if (v8)
    {
      v9 = a1[4];
      if (v5 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v5)
      {
        goto LABEL_46;
      }

      a1[3] = 0;
    }

    v8 = ProtobufDecoder.decodeVarint()(v8);
    if (v2)
    {
      goto LABEL_47;
    }

    if (v8 < 8)
    {
LABEL_46:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();

      return;
    }

LABEL_11:
    if ((v8 & 0xFFFFFFFFFFFFFFF8) != 8)
    {
      v22 = v8 & 7;
      if (v22 > 1)
      {
        if (v22 == 2)
        {
          v24 = ProtobufDecoder.decodeVarint()(v8);
          if (v2)
          {
            goto LABEL_47;
          }

          if (v24 < 0)
          {
            goto LABEL_52;
          }

          v23 = a1[1] + v24;
          if (v6 < v23)
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v22 != 5)
          {
            goto LABEL_46;
          }

          v23 = a1[1] + 4;
          if (v6 < v23)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        if ((v8 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()(v8);
          if (v2)
          {
            goto LABEL_47;
          }

          goto LABEL_4;
        }

        if (v22 != 1)
        {
          goto LABEL_46;
        }

        v23 = a1[1] + 8;
        if (v6 < v23)
        {
          goto LABEL_46;
        }
      }

      a1[1] = v23;
      goto LABEL_4;
    }

    if ((v8 & 7) != 2)
    {
      goto LABEL_46;
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
LABEL_47:

      return;
    }

    if (v14 < 0)
    {
      break;
    }

    v15 = a1[1] + v14;
    if (v6 < v15)
    {
      goto LABEL_46;
    }

    a1[2] = v15;
    closure #1 in closure #3 in DisplayList.Item.init(from:)(a1, v32);
    v16 = a1[5];
    if (!*(v16 + 2))
    {
      goto LABEL_50;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v17 = *(v16 + 2);
      if (!v17)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      v17 = *(v16 + 2);
      if (!v17)
      {
        goto LABEL_51;
      }
    }

    v18 = v17 - 1;
    v6 = *&v16[8 * v18 + 32];
    *(v16 + 2) = v18;
    a1[5] = v16;
    a1[2] = v6;
    v29 = v32[0];
    v30 = v32[1];
    v31 = v33;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
    }

    v20 = v7[2];
    v19 = v7[3];
    if (v20 >= v19 >> 1)
    {
      v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v7);
    }

    v7[2] = v20 + 1;
    v21 = &v7[5 * v20];
    v21[8] = v31;
    *(v21 + 2) = v29;
    *(v21 + 3) = v30;
LABEL_4:
    v5 = a1[1];
    if (v5 >= v6)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  __break(1u);
  v27 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v28 = *(v27 + 2);
  if (v28)
  {
    v25 = v28 - 1;
    v26 = *&v27[8 * v25 + 32];
    *(v27 + 2) = v25;

    a1[5] = v27;
    a1[2] = v26;
  }

  else
  {
    __break(1u);
  }
}