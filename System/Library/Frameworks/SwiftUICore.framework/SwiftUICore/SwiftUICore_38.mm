void type metadata accessor for _DictionaryStorage<String, Any>()
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<String, Any>)
  {
    v0 = type metadata accessor for _DictionaryStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _DictionaryStorage<String, Any>);
    }
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0xFFFFFFFF000000FFLL, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0xFFFFFFFF000000FFLL, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    *(v23[7] + 8 * v13) = a1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3 & 0xFFFFFFFF000000FFLL, a4, a1, v23);

    outlined copy of Material.ID(a2, a3);
  }
}

void lazy protocol witness table accessor for type ContentStyle.MaterialStyle and conformance ContentStyle.MaterialStyle()
{
  if (!lazy protocol witness table cache variable for type ContentStyle.MaterialStyle and conformance ContentStyle.MaterialStyle)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentStyle.MaterialStyle, &type metadata for ContentStyle.MaterialStyle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentStyle.MaterialStyle and conformance ContentStyle.MaterialStyle);
  }
}

{
  if (!lazy protocol witness table cache variable for type ContentStyle.MaterialStyle and conformance ContentStyle.MaterialStyle)
  {
    swift_getWitnessTable(protocol conformance descriptor for ContentStyle.MaterialStyle, &type metadata for ContentStyle.MaterialStyle, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type ContentStyle.MaterialStyle and conformance ContentStyle.MaterialStyle);
  }
}

uint64_t _ValueActionModifier2.sendAction(old:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - v5;
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v17;
  (*(v17 + 16))(v6, a1, v4, v14);
  v18 = *(v7 + 48);
  if (v18(v6, 1, a2) == 1)
  {
    v22 = v4;
    v19 = v24;
    (*(v7 + 16))(v10);
    if (v18(v6, 1, a2) != 1)
    {
      (*(v23 + 8))(v6, v22);
    }
  }

  else
  {
    v19 = v24;
    (*(v7 + 32))(v10, v6, a2);
  }

  (*(v12 + 16))(v16, v10, v11);
  (*(v7 + 8))(v10, a2);
  (*(v19 + *(a2 + 36)))(v16, v19);
  return (*(v12 + 8))(v16, v11);
}

uint64_t outlined init with copy of InterpolatedDisplayList<Image.Resolved>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for InterpolatedDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for InterpolatedDisplayList);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of InterpolatedDisplayList<Image.Resolved>(uint64_t a1)
{
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for InterpolatedDisplayList<Image.Resolved>, &type metadata for Image.Resolved, &protocol witness table for Image.Resolved, type metadata accessor for InterpolatedDisplayList);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for DelayedGesture(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

double key path setter for EnvironmentValues.backgroundMaterial : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  swift_retain_n();
  outlined copy of Material?(v3, v4);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018BackgroundMaterialF033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Tt2B5(a2, v3, v4);

  outlined consume of Material?(v3, v4);
  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018BackgroundMaterialK033_B2CCB444DA7C00CFB13A219298A4122CLLVG_Ttg5(v5, *a2);
  }

  return result;
}

void type metadata accessor for (String, Any)()
{
  if (!lazy cache variable for type metadata for (String, Any))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (String, Any));
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    type metadata accessor for _DictionaryStorage<String, Any>();
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    v5 = MEMORY[0x1E69E7CA0];
    v6 = MEMORY[0x1E69E6158];
    while (1)
    {
      outlined init with copy of (ViewIdentity, GlassContainer.ItemData)(v4, &v15, &lazy cache variable for type metadata for (String, Any), v6, v5 + 8);
      v7 = v15;
      v8 = v16;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v7;
      v11[1] = v8;
      result = outlined init with take of Any(&v17, (v3[7] + 32 * result));
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t specialized static CoreMaterialCache.parseColor(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v31);
  if (v32)
  {
    type metadata accessor for [String : Any]();
    if (swift_dynamicCast())
    {
      if (!*(*&v30 + 16))
      {
        goto LABEL_17;
      }

      v1 = specialized __RawDictionaryStorage.find<A>(_:)(0x6168706C61, 0xE500000000000000);
      if ((v2 & 1) == 0)
      {
        goto LABEL_17;
      }

      outlined init with copy of Any(*(*&v30 + 56) + 32 * v1, v31);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_17;
      }

      if (*(*&v30 + 16))
      {
        v3 = specialized __RawDictionaryStorage.find<A>(_:)(0x6574696877, 0xE500000000000000);
        if (v4)
        {
          outlined init with copy of Any(*(*&v30 + 56) + 32 * v3, v31);
          if (swift_dynamicCast())
          {

            v5 = v30;
            if (v5 <= 0.0)
            {
              v6 = -v5;
            }

            else
            {
              v6 = v30;
            }

            if (v6 <= 0.04045)
            {
              v7 = v6 * 0.077399;
            }

            else
            {
              v7 = 1.0;
              if (v6 != 1.0)
              {
                v7 = powf((v6 * 0.94787) + 0.052133, 2.4);
              }
            }

            if (v5 <= 0.0)
            {
              v7 = -v7;
            }

            v10 = v7;
            v11 = v7;
            goto LABEL_19;
          }
        }
      }

      if (*(*&v30 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(6579570, 0xE300000000000000), (v13 & 1) != 0) && (outlined init with copy of Any(*(*&v30 + 56) + 32 * v12, v31), (swift_dynamicCast() & 1) != 0) && *(*&v30 + 16) && (v14 = specialized __RawDictionaryStorage.find<A>(_:)(0x6E65657267, 0xE500000000000000), (v15 & 1) != 0) && (outlined init with copy of Any(*(*&v30 + 56) + 32 * v14, v31), (swift_dynamicCast() & 1) != 0) && *(*&v30 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(1702194274, 0xE400000000000000), (v17 & 1) != 0))
      {
        outlined init with copy of Any(*(*&v30 + 56) + 32 * v16, v31);

        if (swift_dynamicCast())
        {
          v18 = v30;
          v19 = v30;
          v20 = v30;
          if (v19 <= 0.0)
          {
            v21 = -v19;
          }

          else
          {
            v21 = v30;
          }

          if (v21 <= 0.04045)
          {
            v22 = v21 * 0.077399;
          }

          else
          {
            v22 = 1.0;
            if (v21 != 1.0)
            {
              v27 = v30;
              v22 = powf((v21 * 0.94787) + 0.052133, 2.4);
              v18 = v30;
              v19 = v27;
            }
          }

          v23 = v18;
          if (v19 <= 0.0)
          {
            v11 = -v22;
          }

          else
          {
            v11 = v22;
          }

          if (v20 <= 0.0)
          {
            v24 = -v20;
          }

          else
          {
            v24 = v30;
          }

          if (v24 <= 0.04045)
          {
            v25 = v24 * 0.077399;
          }

          else
          {
            v25 = 1.0;
            if (v24 != 1.0)
            {
              v28 = v11;
              v25 = powf((v24 * 0.94787) + 0.052133, 2.4);
              v11 = v28;
            }
          }

          if (v20 <= 0.0)
          {
            v10 = -v25;
          }

          else
          {
            v10 = v25;
          }

          if (v23 <= 0.0)
          {
            v26 = -v23;
          }

          else
          {
            v26 = v23;
          }

          if (v26 > 0.04045 && v26 != 1.0)
          {
            v29 = v11;
            powf((v26 * 0.94787) + 0.052133, 2.4);
            v11 = v29;
          }

          goto LABEL_19;
        }
      }

      else
      {
LABEL_17:
      }

      v10 = 1.0;
      v11 = 1.0;
LABEL_19:
      v9 = 0;
      result = LODWORD(v11) | (LODWORD(v10) << 32);
      goto LABEL_20;
    }
  }

  else
  {
    outlined destroy of Any?(v31);
  }

  result = 0;
  v9 = 1;
LABEL_20:
  v31[0] = v9;
  return result;
}

void type metadata accessor for _DictionaryStorage<ContentStyle.MaterialStyle, [DisplayList.Effect]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ContentStyle.MaterialStyle, [DisplayList.Effect]>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for [DisplayList.Effect], &type metadata for DisplayList.Effect, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type ContentStyle.MaterialStyle and conformance ContentStyle.MaterialStyle();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ContentStyle.MaterialStyle, [DisplayList.Effect]>);
    }
  }
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 12) = HIDWORD(a3);
  *(v6 + 16) = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 20 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  *(v6 + 17) = HIBYTE(a4) & 1;
  v7 = a6[7] + 56 * result;
  v8 = *(a5 + 16);
  *v7 = *a5;
  *(v7 + 16) = v8;
  *(v7 + 32) = *(a5 + 32);
  *(v7 + 48) = *(a5 + 48);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

double outlined consume of BackdropGroupID?(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t partial apply for closure #2 in ValueActionDispatcher.updateValue()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = *(*(v1 - 8) + 64);
  v5 = *(type metadata accessor for Optional() - 8);
  return (*(v2 + 32))(v0 + ((v3 + v4 + *(v5 + 80)) & ~*(v5 + 80)), v1, v2);
}

uint64_t static ConstantLocation.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[2] = a3;
  v9[3] = a2;
  v10 = 3;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in compareValues<A>(_:_:options:), v9, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], a8);
  return v11;
}

uint64_t static Binding.ScopedLocation.== infix(_:_:)(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  type metadata accessor for AnyLocation(0, a5, a3, a4);
  return static AnyLocation.== infix(_:_:)(a1, a3) & ~(a2 ^ v5) & 1;
}

uint64_t Color.OpacityColor.description.getter(uint64_t result, double a2)
{
  v2 = a2 * 100.0 + 0.5;
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 < 9.22337204e18)
  {
    v3 = result;
    v6 = dispatch thunk of CustomStringConvertible.description.getter();
    v4 = MEMORY[0x193ABEDD0](8229, 0xE200000000000000);
    v5 = (*(*v3 + 160))(v4);
    MEMORY[0x193ABEDD0](v5);

    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Gradient.Stop(double *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(a2 + 8);
  return (*a1 == *a2 || ((*(**a1 + 88))() & 1) != 0) && v2 == v3;
}

uint64_t ImageProviderBox.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {

    v2 = dispatch thunk of static Equatable.== infix(_:_:)();

    return v2 & 1;
  }

  return result;
}

uint64_t specialized static Image.NamedImageProvider.== infix(_:_:)(float *a1, uint64_t a2)
{
  v2 = a1[4];
  v3 = *(a1 + 20);
  v4 = *(a1 + 3);
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v7 = *(a1 + 6);
  v8 = *(a1 + 7);
  v9 = *(a2 + 16);
  v10 = *(a2 + 20);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  v29 = *(a2 + 40);
  v13 = *(a2 + 56);
  v30 = *(a2 + 48);
  v31 = *(a1 + 8);
  v32 = *(a2 + 64);
  v27 = *(a2 + 72);
  v28 = *(a1 + 72);
  if ((*a1 != *a2 || *(a1 + 1) != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (v2 == v9)
    {
      v14 = v10;
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v37 = v4;
  v33 = v11;
  outlined copy of Image.Location(v4);
  outlined copy of Image.Location(v11);
  v15 = specialized static Image.Location.== infix(_:_:)(&v37, &v33);
  outlined consume of Image.Location(v33);
  outlined consume of Image.Location(v37);
  if ((v15 & 1) == 0)
  {
    return 0;
  }

  if (v5 == 2)
  {
    outlined copy of Image.Location?(2);
    if (v12 == 2)
    {
      outlined copy of Image.Location?(2);
      outlined consume of Image.Location?(2);
      goto LABEL_20;
    }

    outlined copy of Image.Location?(v12);
LABEL_18:
    outlined consume of Image.Location?(v5);
    outlined consume of Image.Location?(v12);
    return 0;
  }

  v37 = v5;
  if (v12 == 2)
  {
    outlined copy of Image.Location?(v5);
    outlined copy of Image.Location?(2);
    outlined copy of Image.Location?(v5);
    outlined consume of Image.Location(v5);
    goto LABEL_18;
  }

  v33 = v12;
  outlined copy of Image.Location?(v5);
  outlined copy of Image.Location?(v12);
  outlined copy of Image.Location?(v5);
  v16 = specialized static Image.Location.== infix(_:_:)(&v37, &v33);
  outlined consume of Image.Location(v33);
  outlined consume of Image.Location(v37);
  outlined consume of Image.Location?(v5);
  if ((v16 & 1) == 0)
  {
    return 0;
  }

LABEL_20:
  v17 = v8;
  if (v8 >> 1 != 0xFFFFFFFF)
  {
    v18 = v6;
    v37 = v6;
    v38 = v7;
    v19 = v7;
    v20 = v31;
    v23 = v32;
    v39 = v17;
    v40 = v31;
    if (v13 >> 1 == 0xFFFFFFFF)
    {
      outlined copy of AccessibilityImageLabel?(v6, v7, v17, v31);
      v22 = v29;
      v21 = v30;
      outlined copy of AccessibilityImageLabel?(v29, v30, v13, v32);
      outlined copy of AccessibilityImageLabel?(v18, v19, v17, v31);
      outlined consume of AccessibilityImageLabel(v18, v19, v17, v31);
      goto LABEL_25;
    }

    v33 = v29;
    v34 = v30;
    v35 = v13;
    v36 = v32;
    outlined copy of AccessibilityImageLabel?(v6, v7, v17, v31);
    outlined copy of AccessibilityImageLabel?(v29, v30, v13, v32);
    v25 = outlined copy of AccessibilityImageLabel?(v6, v7, v17, v31);
    v26 = static AccessibilityImageLabel.== infix(_:_:)(&v37, &v33, v25);
    outlined consume of AccessibilityImageLabel(v33, v34, v35, v36);
    outlined consume of AccessibilityImageLabel(v37, v38, v39, v40);
    outlined consume of AccessibilityImageLabel?(v6, v7, v17, v31);
    if (v26)
    {
      return v28 ^ v27 ^ 1u;
    }

    return 0;
  }

  v18 = v6;
  v19 = v7;
  v20 = v31;
  outlined copy of AccessibilityImageLabel?(v6, v7, v17, v31);
  v22 = v29;
  v21 = v30;
  v23 = v32;
  outlined copy of AccessibilityImageLabel?(v29, v30, v13, v32);
  if (v13 >> 1 != 0xFFFFFFFF)
  {
LABEL_25:
    outlined consume of AccessibilityImageLabel?(v18, v19, v17, v20);
    outlined consume of AccessibilityImageLabel?(v22, v21, v13, v23);
    return 0;
  }

  outlined consume of AccessibilityImageLabel?(v18, v19, v17, v31);
  return v28 ^ v27 ^ 1u;
}

uint64_t PreferenceValues.valueIfPresent<A>(for:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *v4;
  v16[6] = PreferenceValues.index<A>(of:)(a1);
  v17 = v9 & 1;
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = v8;
  _sSiSgMaTm_0(0, &lazy cache variable for type metadata for Int?, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for PreferenceValues.Value(0, AssociatedTypeWitness, v11, v12);
  return _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in PreferenceValues.valueIfPresent<A>(for:), v16, MEMORY[0x1E69E73E0], v13, v14, a4);
}

double ViewGraphHostEnvironmentWrapper.environment.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_environment);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;

  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance EventID()
{
  v1 = v0[1];
  MEMORY[0x193AC11A0](*v0);
  return MEMORY[0x193AC11A0](v1);
}

uint64_t partial apply for closure #1 in View.onChange<A>(of:initial:_:)()
{
  return (*(v0 + 48))();
}

{
  v1 = *(*(v0 + 24) - 8);
  return (*(v0 + 48))(v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)), v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)));
}

double PreferenceBridge.removeHostValues(for:isInvalidating:)(unsigned int a1, char a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Attribute = AGWeakAttributeGetAttribute();
    if (Attribute != *MEMORY[0x1E698D3F8])
    {
      MEMORY[0x1EEE9AC00](Attribute);
      MEMORY[0x1EEE9AC00](v4);
      AGGraphMutateAttribute();
    }
  }

  return result;
}

unint64_t closure #1 in PreferenceBridge.removeHostValues(for:isInvalidating:)(unint64_t result, BOOL *a2, int a3)
{
  v3 = *(result + 8);
  v4 = *(v3 + 16);
  v5 = v4 != 0;
  if (v4)
  {
    result = 0;
    v6 = (v3 + 32);
    while (1)
    {
      v7 = *v6;
      v6 += 4;
      if (v7 == a3)
      {
        break;
      }

      v5 = v4 != ++result;
      if (v4 == result)
      {
        goto LABEL_7;
      }
    }

    v8 = a2;
    result = specialized Array.remove(at:)(result);
    a2 = v8;
  }

LABEL_7:
  *a2 = v5;
  return result;
}

double PreferenceBridge.removeChild(_:)(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 32);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = v4 + 32;
    while (*(v7 + 8 * v6) != a1)
    {
      if (v5 == ++v6)
      {
        return result;
      }
    }

    swift_beginAccess();
    specialized Array.remove(at:)(v6);
    swift_endAccess();
  }

  return result;
}

uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew());
}

{
  return specialized Array.remove(at:)(a1, specialized _ArrayBuffer._consumeAndCreateNew());
}

uint64_t specialized Array.remove(at:)(unint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = a2(v5);
    v5 = result;
  }

  v7 = *(v5 + 16);
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = v5 + 8 * a1;
    v10 = *(v9 + 32);
    memmove((v9 + 32), (v9 + 40), 8 * (v7 - 1 - a1));
    *(v5 + 16) = v8;
    *v2 = v5;
    return v10;
  }

  return result;
}

void LazyStatePropertyBox.destroy()()
{
  if (*(v0 + 8))
  {
    StoredLocationBase.invalidate()();
  }
}

Swift::Void __swiftcall StoredLocationBase.invalidate()()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = v0[2];
  v5 = type metadata accessor for StoredLocationBase.Data(0, *(v1 + 168), v3, v4);
  v6 = v2 + ((*(*(v5 - 8) + 80) + 20) & ~*(*(v5 - 8) + 80));

  os_unfair_lock_lock(v2 + 4);
  v7 = *(v5 + 32);

  *&v6[v7] = MEMORY[0x1E69E7CC8];
  $defer #1 <A>() in AtomicBox.wrappedValue.getter(v2 + 4);
}

uint64_t StoredLocation.deinit()
{
  v0 = AnyLocation.deinit();

  swift_weakDestroy();
  return v0;
}

uint64_t StoredLocation.__deallocating_deinit()
{
  StoredLocation.deinit();

  return swift_deallocClassInstance();
}

void *static EnumVTable.deinitialize(elt:)(void *a1)
{
  v1 = (*a1 + 16);
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3)
  {

    v4 = v2 + 48;
    do
    {
      v4 += 24;
      _DynamicPropertyBuffer.destroy()();
      --v3;
    }

    while (v3);
  }

  return outlined destroy of PlatformAccessibilitySettingsDefinition.Storage(v1);
}

id static ShaderLibrary.default.getter@<X0>(void *a1@<X0>, void **a2@<X1>, void **a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a2;
    v8 = a4;
    swift_once();
    a4 = v8;
    a2 = v7;
  }

  v5 = *a2;
  *a4 = *a2;

  return v5;
}

id one-time initialization function for compactRounded()
{
  result = *MEMORY[0x1E69658A8];
  if (*MEMORY[0x1E69658A8])
  {
    static Font.PrivateDesign.compactRounded = *MEMORY[0x1E69658A8];
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Font.system(_:design:weight:)(unsigned __int8 *a1, void **a2, uint64_t a3, char a4)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 >= 0xB)
  {
    v13 = v5;
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
  }

  else
  {
    v8 = **(&unk_1E72448C8 + v4);
    type metadata accessor for FontBox<Font.TextStyleProvider>(0, &lazy cache variable for type metadata for FontBox<Font.PrivateTextStyleProvider>, lazy protocol witness table accessor for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider, &type metadata for Font.PrivateTextStyleProvider, type metadata accessor for FontBox);
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    *(v9 + 24) = v5;
    *(v9 + 32) = a3;
    *(v9 + 40) = a4 & 1;
    v10 = v5;
    v11 = v8;
    return v9;
  }

  return result;
}

void lazy protocol witness table accessor for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider()
{
  if (!lazy protocol witness table cache variable for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.PrivateTextStyleProvider, &type metadata for Font.PrivateTextStyleProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.PrivateTextStyleProvider, &type metadata for Font.PrivateTextStyleProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.PrivateTextStyleProvider, &type metadata for Font.PrivateTextStyleProvider, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.PrivateTextStyleProvider and conformance Font.PrivateTextStyleProvider);
  }
}

void specialized _NativeDictionary.copy()(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for _DictionaryStorage<ObjectIdentifier, ObservationEntry>(0, a1, a2, MEMORY[0x1E69E7CA0] + 8, a3);
  v5 = *v3;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 64 + 8 * v9)
    {
      memmove(v8, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = *(*(v5 + 48) + 8 * v20);
        outlined init with copy of Any(*(v5 + 56) + 32 * v20, v22);
        *(*(v7 + 48) + 8 * v20) = v21;
        outlined init with take of Any(v22, (*(v7 + 56) + 32 * v20));
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }
}

void ViewGraphHost.displayLinkTimer(timestamp:targetTimestamp:isAsyncThread:)(double *a1, double *a2, char a3)
{
  v4 = v3;
  v6 = *a1;
  v7 = *a2;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return;
  }

  v8 = *(v3 + 24);
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_27;
  }

  v9 = *(v3 + 40);
  ViewGraphHost.clearUpdateTimer()();
  ObjectType = swift_getObjectType();
  v31 = v6;
  v11 = (*(v9 + 32))(&v31, ObjectType, v9);
  v12 = swift_getObjectType();
  if ((a3 & 1) == 0)
  {
    v31 = v7;
    v32 = 0;
    v16 = &v31;
    ViewGraphRootValueUpdater.render(interval:updateDisplayList:targetTimestamp:)(v11, 1, *&v13);
    v17 = *(v3 + 136);
    if (v17 && *&v17[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate] != INFINITY)
    {
      v18 = *(v4 + 88);
      swift_beginAccess();
      if (!*(v18 + 16))
      {
LABEL_33:
        __break(1u);
        return;
      }

      v19 = v17;
      if (AGGraphGetCounter() == *(v18 + 368))
      {
        if (one-time initialization token for v3 != -1)
        {
          swift_once();
        }

        v20 = static Semantics.v3;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          v21 = dyld_program_sdk_at_least();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if ((v21 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v28 = static Semantics.forced;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v28 < v20)
          {
LABEL_31:

            return;
          }
        }

        v19[OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread] = 1;
        goto LABEL_31;
      }
    }

    swift_unknownObjectRelease();
LABEL_27:
    swift_unknownObjectRelease();
    return;
  }

  v29 = v7;
  v30 = 0;
  v14 = &v29;
  ViewGraphRootValueUpdater.renderAsync(interval:targetTimestamp:)(v11, *&v13);
  if (v32)
  {
    v15 = *(v3 + 136);
    if (v15)
    {
      *(v15 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread) = 0;
    }

    (*(*(v8 + 8) + 24))(v12, 0.0);
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  if ((~*&v31 & 0x7FF0000000000000) != 0)
  {
    v22 = v31;
    swift_beginAccess();
    (*(*(v8 + 8) + 24))(v12, fmax(v22 - *(v3 + 104), 0.000001));
  }

  v23 = *(v3 + 88);
  swift_beginAccess();
  v24 = *(v23 + 16);
  if (!v24)
  {
    __break(1u);
    goto LABEL_33;
  }

  v25 = v24;
  Counter = AGGraphGetCounter();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (Counter != *(v23 + 368))
  {
    v27 = *(v4 + 136);
    if (v27)
    {
      *(v27 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread) = 0;
    }
  }
}

void ViewGraphDisplayLink.displayLinkTimer(_:)(void *a1)
{
  ObjectType = swift_getObjectType();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {

    [a1 invalidate];
    return;
  }

  v5 = Strong;
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v6 = static Update._lock;
  _MovableLockLock(static Update._lock);
  v7 = OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_currentThread;
  v8 = OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread;
  v9 = *(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread);
  if (*(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_currentThread) == v9)
  {
    if (*(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link))
    {
      [a1 timestamp];
      v11 = v10;
      [a1 targetTimestamp];
      v13 = OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate;
      v14 = *(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate);
      if (v14 + -0.00416666667 < v11)
      {
        v15 = v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_currentUpdate;
        *v15 = v11;
        *(v15 + 8) = 0;
        *(v1 + v13) = 0x7FF0000000000000;
        v60 = v12;
        *&v61 = v11;
        ViewGraphHost.displayLinkTimer(timestamp:targetTimestamp:isAsyncThread:)(&v61, &v60, *(v1 + v7));
        *v15 = 0;
        *(v15 + 8) = 1;
        v14 = *(v1 + v13);
      }

      v9 = *(v1 + v8);
      if (v14 == INFINITY)
      {
        if ((v9 & 1) == 0)
        {
          if ((*(v1 + v7) & 1) == 0)
          {
            goto LABEL_40;
          }

          v16 = *(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link);
          if (!v16)
          {
            goto LABEL_40;
          }

          v53 = (v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link);
          goto LABEL_29;
        }

        *(v1 + v8) = 0;
        *(v1 + v13) = v11;
        v9 = *(v1 + v8);
      }
    }

    if (v9 == *(v1 + v7))
    {
      goto LABEL_40;
    }
  }

  v16 = *(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link);
  if (!v16)
  {
    goto LABEL_40;
  }

  v53 = (v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link);
  if (!v9)
  {
LABEL_29:
    v18 = v16;
LABEL_30:
    v34 = *(v1 + v8);
    if (v34 != *(v1 + v7))
    {
      if ((v34 & 1) == 0)
      {
        goto LABEL_36;
      }

      v59 = v8;
      v57 = v6;
      if (static ViewGraphDisplayLink.asyncRunloop)
      {
        v35 = v18;
        v58 = v7;
        v36 = static ViewGraphDisplayLink.asyncRunloop;
        v37 = 1;
        goto LABEL_37;
      }

      goto LABEL_47;
    }

LABEL_39:

LABEL_40:
    if (*(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link))
    {
      if (*(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate) == INFINITY && *(v1 + v8) == *(v1 + v7))
      {
        [a1 setPaused_];
      }
    }

    else
    {
      [a1 invalidate];
    }

    _MovableLockUnlock(v6);

    return;
  }

  static ViewGraphDisplayLink.asyncPending = 1;
  v17 = static ViewGraphDisplayLink.asyncRunloop;
  v18 = v16;
  if (v17)
  {
    goto LABEL_30;
  }

  v52 = v18;
  v54 = ObjectType;
  v55 = "easons";
  v19 = &unk_1ED527000;
  v57 = v6;
  v58 = v7;
  v59 = v8;
  while (static ViewGraphDisplayLink.asyncThread)
  {
LABEL_16:
    _MovableLockWait(v6);
    v19[1040] = 1;
    if (static ViewGraphDisplayLink.asyncRunloop)
    {
      v18 = v52;
      goto LABEL_30;
    }
  }

  v61 = 0u;
  v62 = 0u;
  v60 = ObjectType;
  type metadata accessor for ViewGraphDisplayLink.Type();
  v20 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v21 = *(&v62 + 1);
  if (*(&v62 + 1))
  {
    v22 = __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
    v56 = &v51;
    v23 = v19;
    v24 = a1;
    v25 = v5;
    v26 = *(v21 - 8);
    v27 = MEMORY[0x1EEE9AC00](v22);
    v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v26 + 16))(v29, v27);
    v30 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v26 + 8))(v29, v21);
    v5 = v25;
    a1 = v24;
    v19 = v23;
    v6 = v57;
    __swift_destroy_boxed_opaque_existential_1(&v61);
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_allocWithZone(MEMORY[0x1E696AF00]) initWithTarget:v20 selector:sel_asyncThreadWithArg_ object:v30];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  [v31 setQualityOfService_];
  v32 = MEMORY[0x193ABEC20](0xD00000000000001FLL, v55 | 0x8000000000000000);
  [v31 setName_];

  if (_NSThreadStart(v31))
  {
    v33 = static ViewGraphDisplayLink.asyncThread;
    static ViewGraphDisplayLink.asyncThread = v31;

    v7 = v58;
    v8 = v59;
    ObjectType = v54;
    goto LABEL_16;
  }

  v7 = v58;
  v8 = v59;
  *(v1 + v59) = 0;
  v18 = v52;
  if ((*(v1 + v7) & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_36:
  v58 = v7;
  v59 = v8;
  v35 = v18;
  v57 = v6;
  v36 = [objc_opt_self() mainRunLoop];
  v37 = 0;
LABEL_37:
  v38 = objc_opt_self();
  v39 = v36;
  v40 = [v38 currentRunLoop];
  v41 = *MEMORY[0x1E695DA28];
  [v35 removeFromRunLoop:v40 forMode:*MEMORY[0x1E695DA28]];

  v42 = [v35 display];
  v43 = [objc_opt_self() displayLinkWithDisplay:v42 target:v1 selector:sel_displayLinkTimer_];

  if (v43)
  {
    [v43 addToRunLoop:v39 forMode:v41];

    v44 = *v53;
    *v53 = v43;
    v45 = v43;

    v46.n128_u64[0] = *(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_interval);
    v47 = OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_reasons;
    v48 = *(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_reasons);
    *(v1 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_interval) = 0;
    *(v1 + v47) = MEMORY[0x1E69E7CD0];
    ViewGraphDisplayLink.setFrameInterval(_:reasons:)(v48, v46, v49, v50);

    v6 = v57;
    v7 = v58;
    *(v1 + v58) = v37;
    v8 = v59;
    goto LABEL_40;
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t ViewGraphDisplayLink.setFrameInterval(_:reasons:)(uint64_t a1, __n128 a2, __n128 a3, __n128 a4)
{
  v6 = *(v4 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_interval);
  if (v6 == a2.n128_f64[0])
  {
    goto LABEL_11;
  }

  *(v4 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_interval) = a2.n128_u64[0];
  if (a2.n128_f64[0] == 0.0)
  {
    goto LABEL_3;
  }

  v7 = a2.n128_f64[0];
  v8 = roundf(1.0 / v7);
  if (v8 <= 40.0)
  {
    v9 = LODWORD(v8);
    v10 = 60.0;
  }

  else
  {
    if (v8 < 80.0)
    {
LABEL_3:
      a2.n128_u32[0] = *MEMORY[0x1E69792B8];
      LODWORD(v6) = *(MEMORY[0x1E69792B8] + 4);
      a4.n128_u32[0] = *(MEMORY[0x1E69792B8] + 8);
      goto LABEL_9;
    }

    v9 = LODWORD(v8);
    v10 = v8;
    v8 = 80.0;
  }

  *a2.n128_u64 = CAFrameRateRange.init(minimum:maximum:preferred:)(v8, v10, v9);
LABEL_9:
  v11 = *(v4 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link);
  if (v11)
  {
    [v11 setPreferredFrameRateRange_];
  }

LABEL_11:
  v12 = OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_reasons;
  result = _sSh2eeoiySbShyxG_ABtFZs6UInt32V_Tt1g5(*(v4 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_reasons), a1);
  if ((result & 1) == 0)
  {
    *(v4 + v12) = a1;

    MEMORY[0x1EEE9AC00](v14);
    return AGTupleWithBuffer();
  }

  return result;
}

uint64_t ViewGraphDisplayLink.setNextUpdate(delay:interval:reasons:)(uint64_t a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = a3.n128_u64[0];
  a3.n128_u64[0] = 0;
  a4.n128_u64[0] = 0x3F50624DD2F1A9FCLL;
  if (a2.n128_f64[0] >= 0.001)
  {
    if (*(v4 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_currentUpdate + 8))
    {
      v6 = a1;
      v7 = a2.n128_u64[0];
      a2.n128_f64[0] = CACurrentMediaTime();
      a1 = v6;
      a3.n128_u64[0] = a2.n128_u64[0];
      a2.n128_u64[0] = v7;
    }

    else
    {
      a3.n128_u64[0] = *(v4 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_currentUpdate);
    }

    a3.n128_f64[0] = a3.n128_f64[0] + a2.n128_f64[0];
  }

  if (a3.n128_f64[0] < *(v4 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate))
  {
    *(v4 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextUpdate) = a3.n128_u64[0];
    if (*(v4 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link))
    {
      v8 = a1;
      [*(v4 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link) setPaused_];
      a1 = v8;
    }
  }

  a2.n128_u64[0] = v5;

  return ViewGraphDisplayLink.setFrameInterval(_:reasons:)(a1, a2, a3, a4);
}

Swift::Void __swiftcall ViewGraphHost.clearUpdateTimer()()
{
  if ([objc_opt_self() isMainThread])
  {
    v1 = *(v0 + 160);
    if (v1)
    {
      [v1 invalidate];
      v2 = *(v0 + 160);
    }

    else
    {
      v2 = 0;
    }

    *(v0 + 160) = 0;

    *(v0 + 144) = 0;
    *(v0 + 152) = 1;
  }
}

uint64_t _sSh2eeoiySbShyxG_ABtFZs6UInt32V_Tt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 4 * (v10 | (v4 << 6)));
    result = MEMORY[0x193AC1150](*(a2 + 40), v13, 4);
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 4 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall ViewGraph.NextUpdate.interval(_:reason:)(Swift::Double _, Swift::UInt32_optional reason)
{
  if (_ == 0.0)
  {
    *(v2 + 16) = 1;
LABEL_6:
    if (*(v2 + 8) > 0.0166666667)
    {
      *(v2 + 8) = 0x7FF0000000000000;
    }

    goto LABEL_8;
  }

  if (*(v2 + 8) <= _)
  {
    _ = *(v2 + 8);
  }

  *(v2 + 8) = _;
  if (*(v2 + 16) == 1)
  {
    goto LABEL_6;
  }

LABEL_8:
  if ((*&reason.value & 0x100000000) == 0)
  {
    specialized Set._Variant.insert(_:)(&v3, *&reason.value);
  }
}

void *Path.move(to:)(unsigned __int8 a1, double a2, double a3)
{
  v4 = a1;
  v5 = v3;
  v24 = *MEMORY[0x1E69E9840];
  v8 = *v3;
  v9 = (v3 + 8);
  v10 = *(v3 + 8);
  v11 = *(v3 + 32);
  if (v11 == 5)
  {
    v12 = *v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Path.PathBox();
      v12 = swift_allocObject();
      *(v12 + 24) = 0u;
      result = (v12 + 24);
      *(v12 + 40) = 0u;
      *(v12 + 56) = 0u;
      *(v12 + 72) = 0u;
      *(v12 + 88) = 0u;
      *(v12 + 104) = 0u;
      v14 = *(v8 + 16);
      *(v12 + 16) = v14;
      if (v14)
      {
        if (v14 == 1)
        {

          *(v12 + 24) = RBPathRetain();
          *(v12 + 32) = v15;
        }

        else
        {
          RBPathStorageInit();
        }
      }

      else
      {
        v19 = *(v8 + 24);
        if (!v19)
        {
          __break(1u);
          return result;
        }

        *result = v19;
        v20 = v19;
      }
    }

    v8 = 0;
    v10 = 0;
    v16 = 0;
    v17 = 0;
    LOBYTE(v11) = 6;
  }

  else
  {
    v16 = *(v3 + 16);
    v17 = *(v3 + 24);
    type metadata accessor for Path.PathBox();
    v12 = swift_allocObject();
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0u;
    *(v12 + 56) = 0u;
    *(v12 + 72) = 0u;
    *(v12 + 88) = 0u;
    *(v12 + 104) = 0u;
    *(v12 + 16) = 2;
    RBPathStorageInit();
    v18 = *(v12 + 16);

    if (v18 != 2)
    {
      Path.PathBox.prepareBuffer()();
    }

    v22[2] = v8;
    v22[3] = v10;
    v22[4] = v16;
    v22[5] = v17;
    v23 = v11;
    Path.append(to:)(v12 + 24);
    v4 = a1;
  }

  outlined consume of Path.Storage(v8, v10, v16, v17, v11);
  *v5 = v12;
  v9[1] = 0;
  v9[2] = 0;
  *v9 = 0;
  *(v5 + 32) = 5;
  if (*(v12 + 16) != 2)
  {
    Path.PathBox.prepareBuffer()();
  }

  *v22 = a2;
  *&v22[1] = a3;
  MEMORY[0x193AC35E0](v12 + 24, v4, v22, 0);
}

Swift::Void __swiftcall Path.move(to:)(CGPoint to)
{

  Path.move(to:)(0, to.x, to.y);
}

uint64_t sync_main_callback(uint64_t a1)
{
  _MovableLockLock(a1);
  *(a1 + 152) = 0;

  return _MovableLockUnlock(a1);
}

uint64_t specialized AnimationBox.animate<A>(value:time:context:)(uint64_t a1, double a2, double a3)
{
  v6 = *v3;
  v7 = *(*v3 + 160);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v13 - v10;
  v14 = v9;
  (*(v8 + 16))(&v13 - v10, v3 + *(v6 + 176), v7);
  (*(*(v6 + 168) + 16))(&v15, &v14, a1, MEMORY[0x1E69E63B0], &protocol witness table for Double, v7, a3);
  (*(v8 + 8))(v11, v7);
  return v15;
}

void specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(char a1, uint64_t a2, double a3)
{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v58 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 96) & 1) == 0 && (a1)
  {
    *(v4 + 96) = a1 & 1;
    swift_beginAccess();
    v12 = *(v4 + 88);
    if (v12 >> 62)
    {
      goto LABEL_61;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 120) + 16))
      {
        return;
      }

      v57 = v10;
      IndexSet.init()();
      v10 = *(*(v4 + 120) + 16);
      if (!v10)
      {
LABEL_52:
        swift_beginAccess();
        v50 = v59;
        v51 = v60;
        specialized Collection.subscript.getter(v59, v52);
        v54 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 120), v50, v53);
        v55 = *(*(v4 + 120) + 16);
        if (v55 < v54)
        {
          goto LABEL_60;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v54, v55);
        outlined destroy of Slice<IndexSet>(v50, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v58 + 8))(v51, v57);
        return;
      }

      v17 = 0;
      if ((a2 & 0x100000000) != 0)
      {
        a2 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        a2 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v18 = *(v4 + 120);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 120) = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
          *(v4 + 120) = v18;
        }

        if (v17 >= v18[2])
        {
          break;
        }

        v20 = &v18[6 * v17];
        v21 = v20[5];

        v22 = AGCreateWeakAttribute();
        v65[0] = v21;
        v65[1] = v22;
        v66 = 0;
        v23 = v20[7];
        if (v23)
        {
          v24 = v20[8];
          type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimationFinishingDefinitionKey);
          v26 = v25;
          type metadata accessor for AnimationFinishingDefinitionKey<Double>?(0);
          v64 = v27;
          *&v63 = v23;
          *(&v63 + 1) = v24;
          outlined init with take of Any(&v63, v62);
          v28 = swift_isUniquelyReferenced_nonNull_native();
          v61 = v21;
          v65[0] = 0x8000000000000000;
          v30 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
          v31 = v21[2];
          v32 = (v29 & 1) == 0;
          v33 = v31 + v32;
          if (__OFADD__(v31, v32))
          {
            goto LABEL_56;
          }

          v34 = v29;
          if (v21[3] >= v33)
          {
            if (v28)
            {
              v37 = v61;
              if ((v29 & 1) == 0)
              {
                goto LABEL_36;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              v37 = v61;
              if ((v34 & 1) == 0)
              {
                goto LABEL_36;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v28);
            v35 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
            if ((v34 & 1) != (v36 & 1))
            {
              goto LABEL_66;
            }

            v30 = v35;
            v37 = v61;
            if ((v34 & 1) == 0)
            {
LABEL_36:
              v37[(v30 >> 6) + 8] |= 1 << v30;
              *(v37[6] + 8 * v30) = v26;
              outlined init with take of Any(v62, (v37[7] + 32 * v30));
              v39 = v37[2];
              v40 = __OFADD__(v39, 1);
              v41 = v39 + 1;
              if (v40)
              {
                goto LABEL_58;
              }

              v37[2] = v41;
              goto LABEL_38;
            }
          }

          v38 = (v37[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v38);
          outlined init with take of Any(v62, v38);
LABEL_38:

          v65[0] = v37;
        }

        v42 = v20[4];
        *&v62[0] = v20[6];
        (*(*v42 + 120))(&v63, v62, v65, MEMORY[0x1E69E63B0], &protocol witness table for Double, a3);
        v43 = BYTE8(v63);
        v44 = HIBYTE(v66);

        v45 = *(v4 + 120);
        swift_endAccess();
        if ((v43 & 1) == 0 && (v44 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v17 >= *(v45 + 16))
        {
          goto LABEL_57;
        }

        v46 = *(v45 + 48 * v17 + 72);
        if (v46 >> 62)
        {
          v47 = __CocoaSet.count.getter();
          if (v47)
          {
LABEL_44:
            if (v47 < 1)
            {
              goto LABEL_59;
            }

            for (i = 0; i != v47; ++i)
            {
              if ((v46 & 0xC000000000000001) != 0)
              {
                v49 = MEMORY[0x193AC03C0](i, v46);
              }

              else
              {
                v49 = *(v46 + 8 * i + 32);
              }

              (*(*v49 + 96))();
            }
          }
        }

        else
        {
          v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v47)
          {
            goto LABEL_44;
          }
        }

        IndexSet.insert(_:)(v17);
LABEL_22:
        if (++v17 == v10)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v13 = *(v4 + 88);
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 88) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v14 >= 1)
  {

    for (j = 0; j != v14; ++j)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x193AC03C0](j, v13);
      }

      else
      {
        v16 = *(v13 + 8 * j + 32);
      }

      (*(*v16 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_66:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v62 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 144) & 1) == 0 && (a1)
  {
    *(v4 + 144) = a1 & 1;
    swift_beginAccess();
    v12 = *(v4 + 136);
    if (v12 >> 62)
    {
      goto LABEL_60;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 168) + 16))
      {
        return;
      }

      v61 = v10;
      IndexSet.init()();
      v10 = *(*(v4 + 168) + 16);
      if (!v10)
      {
LABEL_51:
        swift_beginAccess();
        v54 = v63;
        v55 = v64;
        specialized Collection.subscript.getter(v63, v56);
        v58 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 168), v54, v57);
        v59 = *(*(v4 + 168) + 16);
        if (v59 < v58)
        {
          goto LABEL_59;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v58, v59);
        outlined destroy of Slice<IndexSet>(v54, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v62 + 8))(v55, v61);
        return;
      }

      v17 = 0;
      if ((a2 & 0x100000000) != 0)
      {
        a2 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        a2 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v18 = *(v4 + 168);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 168) = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
          *(v4 + 168) = v18;
        }

        if (v17 >= v18[2])
        {
          break;
        }

        v20 = &v18[9 * v17];
        v21 = v20[5];

        v22 = AGCreateWeakAttribute();
        v70[0] = v21;
        v70[1] = v22;
        v71 = 0;
        v23 = v20[10];
        if (v23)
        {
          v24 = v20[11];
          type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(0);
          v26 = v25;
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
          v68 = v27;
          *&v67 = v23;
          *(&v67 + 1) = v24;
          outlined init with take of Any(&v67, v66);
          v28 = swift_isUniquelyReferenced_nonNull_native();
          v65 = v21;
          v70[0] = 0x8000000000000000;
          v30 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
          v31 = v21[2];
          v32 = (v29 & 1) == 0;
          v33 = v31 + v32;
          if (__OFADD__(v31, v32))
          {
            goto LABEL_55;
          }

          v34 = v29;
          if (v21[3] >= v33)
          {
            if ((v28 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v28);
            v35 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
            if ((v34 & 1) != (v36 & 1))
            {
              goto LABEL_65;
            }

            v30 = v35;
          }

          v37 = v65;
          if (v34)
          {
            v38 = (v65[7] + 32 * v30);
            __swift_destroy_boxed_opaque_existential_1(v38);
            outlined init with take of Any(v66, v38);
          }

          else
          {
            v65[(v30 >> 6) + 8] |= 1 << v30;
            *(v37[6] + 8 * v30) = v26;
            outlined init with take of Any(v66, (v37[7] + 32 * v30));
            v39 = v37[2];
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_57;
            }

            v37[2] = v41;
          }

          v70[0] = v37;
        }

        v42 = v20[4];
        v43 = *(v20 + 4);
        v66[0] = *(v20 + 3);
        v66[1] = v43;
        v44 = *(*v42 + 120);
        type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
        v46 = v45;
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
        v44(&v67, v66, v70, v46, v47, a3);
        LOBYTE(v44) = v69;
        v48 = HIBYTE(v71);

        v49 = *(v4 + 168);
        swift_endAccess();
        if (v44 & 1) != 0 || (v48)
        {
          if (v17 >= *(v49 + 16))
          {
            goto LABEL_56;
          }

          v50 = *(v49 + 72 * v17 + 96);
          if (v50 >> 62)
          {
            v51 = __CocoaSet.count.getter();
            if (v51)
            {
LABEL_43:
              if (v51 < 1)
              {
                goto LABEL_58;
              }

              for (i = 0; i != v51; ++i)
              {
                if ((v50 & 0xC000000000000001) != 0)
                {
                  v53 = MEMORY[0x193AC03C0](i, v50);
                }

                else
                {
                  v53 = *(v50 + 8 * i + 32);
                }

                (*(*v53 + 96))();
              }
            }
          }

          else
          {
            v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v51)
            {
              goto LABEL_43;
            }
          }

          IndexSet.insert(_:)(v17);
        }

        if (++v17 == v10)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v13 = *(v4 + 136);
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 136) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v14 >= 1)
  {

    for (j = 0; j != v14; ++j)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x193AC03C0](j, v13);
      }

      else
      {
        v16 = *(v13 + 8 * j + 32);
      }

      (*(*v16 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_65:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 112) & 1) == 0 && (a1)
  {
    *(v4 + 112) = a1 & 1;
    swift_beginAccess();
    v12 = *(v4 + 104);
    if (v12 >> 62)
    {
      goto LABEL_60;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 136) + 16))
      {
        return;
      }

      v59 = v10;
      IndexSet.init()();
      v10 = *(*(v4 + 136) + 16);
      if (!v10)
      {
LABEL_51:
        swift_beginAccess();
        v53 = v61;
        v54 = v62;
        specialized Collection.subscript.getter(v61, v55);
        v57 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 136), v53, v56);
        v58 = *(*(v4 + 136) + 16);
        if (v58 < v57)
        {
          goto LABEL_59;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v57, v58);
        outlined destroy of Slice<IndexSet>(v53, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v60 + 8))(v54, v59);
        return;
      }

      v17 = 0;
      if ((a2 & 0x100000000) != 0)
      {
        a2 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        a2 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v18 = *(v4 + 136);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 136) = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
          *(v4 + 136) = v18;
        }

        if (v17 >= v18[2])
        {
          break;
        }

        v20 = &v18[7 * v17];
        v21 = v20[5];

        v22 = AGCreateWeakAttribute();
        v68[0] = v21;
        v68[1] = v22;
        v69 = 0;
        v23 = v20[8];
        if (v23)
        {
          v24 = v20[9];
          type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>(0);
          v26 = v25;
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, CGFloat>>, MEMORY[0x1E69E6720]);
          v67 = v27;
          *&v65 = v23;
          *(&v65 + 1) = v24;
          outlined init with take of Any(&v65, v64);
          v28 = swift_isUniquelyReferenced_nonNull_native();
          v63 = v21;
          v68[0] = 0x8000000000000000;
          v30 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
          v31 = v21[2];
          v32 = (v29 & 1) == 0;
          v33 = v31 + v32;
          if (__OFADD__(v31, v32))
          {
            goto LABEL_55;
          }

          v34 = v29;
          if (v21[3] >= v33)
          {
            if ((v28 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v28);
            v35 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
            if ((v34 & 1) != (v36 & 1))
            {
              goto LABEL_65;
            }

            v30 = v35;
          }

          v37 = v63;
          if (v34)
          {
            v38 = (v63[7] + 32 * v30);
            __swift_destroy_boxed_opaque_existential_1(v38);
            outlined init with take of Any(v64, v38);
          }

          else
          {
            v63[(v30 >> 6) + 8] |= 1 << v30;
            *(v37[6] + 8 * v30) = v26;
            outlined init with take of Any(v64, (v37[7] + 32 * v30));
            v39 = v37[2];
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_57;
            }

            v37[2] = v41;
          }

          v68[0] = v37;
        }

        v42 = v20[4];
        v64[0] = *(v20 + 3);
        v43 = *(*v42 + 120);
        type metadata accessor for AnimatablePair<CGFloat, CGFloat>(0);
        v45 = v44;
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
        v43(&v65, v64, v68, v45, v46, a3);
        LOBYTE(v43) = v66;
        v47 = HIBYTE(v69);

        v48 = *(v4 + 136);
        swift_endAccess();
        if (v43 & 1) != 0 || (v47)
        {
          if (v17 >= *(v48 + 16))
          {
            goto LABEL_56;
          }

          v49 = *(v48 + 56 * v17 + 80);
          if (v49 >> 62)
          {
            v50 = __CocoaSet.count.getter();
            if (v50)
            {
LABEL_43:
              if (v50 < 1)
              {
                goto LABEL_58;
              }

              for (i = 0; i != v50; ++i)
              {
                if ((v49 & 0xC000000000000001) != 0)
                {
                  v52 = MEMORY[0x193AC03C0](i, v49);
                }

                else
                {
                  v52 = *(v49 + 8 * i + 32);
                }

                (*(*v52 + 96))();
              }
            }
          }

          else
          {
            v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v50)
            {
              goto LABEL_43;
            }
          }

          IndexSet.insert(_:)(v17);
        }

        if (++v17 == v10)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v13 = *(v4 + 104);
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 104) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v14 >= 1)
  {

    for (j = 0; j != v14; ++j)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x193AC03C0](j, v13);
      }

      else
      {
        v16 = *(v13 + 8 * j + 32);
      }

      (*(*v16 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_65:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v61 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v12 = *(v4 + 120);
    if (v12 >> 62)
    {
      goto LABEL_60;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return;
      }

      v60 = v10;
      IndexSet.init()();
      v10 = *(*(v4 + 152) + 16);
      if (!v10)
      {
LABEL_51:
        swift_beginAccess();
        v54 = v62;
        v55 = v63;
        specialized Collection.subscript.getter(v62, v56);
        v58 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 152), v54, v57);
        v59 = *(*(v4 + 152) + 16);
        if (v59 < v58)
        {
          goto LABEL_59;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v58, v59);
        outlined destroy of Slice<IndexSet>(v54, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v61 + 8))(v55, v60);
        return;
      }

      v17 = 0;
      if ((a2 & 0x100000000) != 0)
      {
        a2 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        a2 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v18 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
          *(v4 + 152) = v18;
        }

        if (v17 >= v18[2])
        {
          break;
        }

        v20 = &v18[8 * v17];
        v21 = v20[5];

        v22 = AGCreateWeakAttribute();
        v69[0] = v21;
        v69[1] = v22;
        v70 = 0;
        v23 = v20[9];
        if (v23)
        {
          v24 = v20[10];
          type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>(0);
          v26 = v25;
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>>, MEMORY[0x1E69E6720]);
          v68 = v27;
          *&v67 = v23;
          *(&v67 + 1) = v24;
          outlined init with take of Any(&v67, &v65);
          v28 = swift_isUniquelyReferenced_nonNull_native();
          v64 = v21;
          v69[0] = 0x8000000000000000;
          v30 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
          v31 = v21[2];
          v32 = (v29 & 1) == 0;
          v33 = v31 + v32;
          if (__OFADD__(v31, v32))
          {
            goto LABEL_55;
          }

          v34 = v29;
          if (v21[3] >= v33)
          {
            if ((v28 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v28);
            v35 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
            if ((v34 & 1) != (v36 & 1))
            {
              goto LABEL_65;
            }

            v30 = v35;
          }

          v37 = v64;
          if (v34)
          {
            v38 = (v64[7] + 32 * v30);
            __swift_destroy_boxed_opaque_existential_1(v38);
            outlined init with take of Any(&v65, v38);
          }

          else
          {
            v64[(v30 >> 6) + 8] |= 1 << v30;
            *(v37[6] + 8 * v30) = v26;
            outlined init with take of Any(&v65, (v37[7] + 32 * v30));
            v39 = v37[2];
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_57;
            }

            v37[2] = v41;
          }

          v69[0] = v37;
        }

        v42 = v20[4];
        v43 = v20[8];
        v65 = *(v20 + 3);
        v66 = v43;
        v44 = *(*v42 + 120);
        type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>(0);
        v46 = v45;
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, AnimatablePair<CGFloat, CGFloat>}>, protocol conformance descriptor for AnimatableValues<Pack{repeat A}>);
        v44(&v67, &v65, v69, v46, v47, a3);
        LOBYTE(v44) = v68;
        v48 = HIBYTE(v70);

        v49 = *(v4 + 152);
        swift_endAccess();
        if (v44 & 1) != 0 || (v48)
        {
          if (v17 >= *(v49 + 16))
          {
            goto LABEL_56;
          }

          v50 = *(v49 + (v17 << 6) + 88);
          if (v50 >> 62)
          {
            v51 = __CocoaSet.count.getter();
            if (v51)
            {
LABEL_43:
              if (v51 < 1)
              {
                goto LABEL_58;
              }

              for (i = 0; i != v51; ++i)
              {
                if ((v50 & 0xC000000000000001) != 0)
                {
                  v53 = MEMORY[0x193AC03C0](i, v50);
                }

                else
                {
                  v53 = *(v50 + 8 * i + 32);
                }

                (*(*v53 + 96))();
              }
            }
          }

          else
          {
            v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v51)
            {
              goto LABEL_43;
            }
          }

          IndexSet.insert(_:)(v17);
        }

        if (++v17 == v10)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v13 = *(v4 + 120);
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v14 >= 1)
  {

    for (j = 0; j != v14; ++j)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x193AC03C0](j, v13);
      }

      else
      {
        v16 = *(v13 + 8 * j + 32);
      }

      (*(*v16 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_65:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v61 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v12 = *(v4 + 120);
    if (v12 >> 62)
    {
      goto LABEL_60;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return;
      }

      v60 = v10;
      IndexSet.init()();
      v10 = *(*(v4 + 152) + 16);
      if (!v10)
      {
LABEL_51:
        swift_beginAccess();
        v54 = v62;
        v55 = v63;
        specialized Collection.subscript.getter(v62, v56);
        v58 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 152), v54, v57);
        v59 = *(*(v4 + 152) + 16);
        if (v59 < v58)
        {
          goto LABEL_59;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v58, v59);
        outlined destroy of Slice<IndexSet>(v54, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v61 + 8))(v55, v60);
        return;
      }

      v17 = 0;
      if ((a2 & 0x100000000) != 0)
      {
        a2 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        a2 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v18 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
          *(v4 + 152) = v18;
        }

        if (v17 >= v18[2])
        {
          break;
        }

        v20 = &v18[8 * v17];
        v21 = v20[5];

        v22 = AGCreateWeakAttribute();
        v69[0] = v21;
        v69[1] = v22;
        v70 = 0;
        v23 = v20[9];
        if (v23)
        {
          v24 = v20[10];
          type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>(0);
          v26 = v25;
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
          v68 = v27;
          *&v67 = v23;
          *(&v67 + 1) = v24;
          outlined init with take of Any(&v67, &v65);
          v28 = swift_isUniquelyReferenced_nonNull_native();
          v64 = v21;
          v69[0] = 0x8000000000000000;
          v30 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
          v31 = v21[2];
          v32 = (v29 & 1) == 0;
          v33 = v31 + v32;
          if (__OFADD__(v31, v32))
          {
            goto LABEL_55;
          }

          v34 = v29;
          if (v21[3] >= v33)
          {
            if ((v28 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v28);
            v35 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
            if ((v34 & 1) != (v36 & 1))
            {
              goto LABEL_65;
            }

            v30 = v35;
          }

          v37 = v64;
          if (v34)
          {
            v38 = (v64[7] + 32 * v30);
            __swift_destroy_boxed_opaque_existential_1(v38);
            outlined init with take of Any(&v65, v38);
          }

          else
          {
            v64[(v30 >> 6) + 8] |= 1 << v30;
            *(v37[6] + 8 * v30) = v26;
            outlined init with take of Any(&v65, (v37[7] + 32 * v30));
            v39 = v37[2];
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_57;
            }

            v37[2] = v41;
          }

          v69[0] = v37;
        }

        v42 = v20[4];
        v43 = v20[8];
        v65 = *(v20 + 3);
        v66 = v43;
        v44 = *(*v42 + 120);
        type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>(0);
        v46 = v45;
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
        v44(&v67, &v65, v69, v46, v47, a3);
        LOBYTE(v44) = v68;
        v48 = HIBYTE(v70);

        v49 = *(v4 + 152);
        swift_endAccess();
        if (v44 & 1) != 0 || (v48)
        {
          if (v17 >= *(v49 + 16))
          {
            goto LABEL_56;
          }

          v50 = *(v49 + (v17 << 6) + 88);
          if (v50 >> 62)
          {
            v51 = __CocoaSet.count.getter();
            if (v51)
            {
LABEL_43:
              if (v51 < 1)
              {
                goto LABEL_58;
              }

              for (i = 0; i != v51; ++i)
              {
                if ((v50 & 0xC000000000000001) != 0)
                {
                  v53 = MEMORY[0x193AC03C0](i, v50);
                }

                else
                {
                  v53 = *(v50 + 8 * i + 32);
                }

                (*(*v53 + 96))();
              }
            }
          }

          else
          {
            v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v51)
            {
              goto LABEL_43;
            }
          }

          IndexSet.insert(_:)(v17);
        }

        if (++v17 == v10)
        {
          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v13 = *(v4 + 120);
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v14 >= 1)
  {

    for (j = 0; j != v14; ++j)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x193AC03C0](j, v13);
      }

      else
      {
        v16 = *(v13 + 8 * j + 32);
      }

      (*(*v16 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_65:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v60 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 96) & 1) == 0 && (a1)
  {
    *(v4 + 96) = a1 & 1;
    swift_beginAccess();
    v12 = *(v4 + 88);
    if (v12 >> 62)
    {
      goto LABEL_61;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 120) + 16))
      {
        return;
      }

      v59 = v10;
      IndexSet.init()();
      v10 = *(*(v4 + 120) + 16);
      if (!v10)
      {
LABEL_52:
        swift_beginAccess();
        v52 = v61;
        v53 = v62;
        specialized Collection.subscript.getter(v61, v54);
        v56 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)((v4 + 120), v52, v55);
        v57 = *(*(v4 + 120) + 16);
        if (v57 < v56)
        {
          goto LABEL_60;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v56, v57);
        outlined destroy of Slice<IndexSet>(v52, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v60 + 8))(v53, v59);
        return;
      }

      v17 = 0;
      if ((a2 & 0x100000000) != 0)
      {
        a2 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        a2 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v18 = *(v4 + 120);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 120) = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
          *(v4 + 120) = v18;
        }

        if (v17 >= v18[2])
        {
          break;
        }

        v20 = &v18[6 * v17];
        v21 = v20[5];

        v22 = AGCreateWeakAttribute();
        v67[0] = v21;
        v67[1] = v22;
        v68 = 0;
        v23 = v20[7];
        if (v23)
        {
          v24 = v20[8];
          type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for AnimationFinishingDefinitionKey);
          v26 = v25;
          type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>?(0);
          v66 = v27;
          *&v65 = v23;
          *(&v65 + 1) = v24;
          outlined init with take of Any(&v65, v64);
          v28 = swift_isUniquelyReferenced_nonNull_native();
          v63 = v21;
          v67[0] = 0x8000000000000000;
          v30 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
          v31 = v21[2];
          v32 = (v29 & 1) == 0;
          v33 = v31 + v32;
          if (__OFADD__(v31, v32))
          {
            goto LABEL_56;
          }

          v34 = v29;
          if (v21[3] >= v33)
          {
            if (v28)
            {
              v37 = v63;
              if ((v29 & 1) == 0)
              {
                goto LABEL_36;
              }
            }

            else
            {
              specialized _NativeDictionary.copy()();
              v37 = v63;
              if ((v34 & 1) == 0)
              {
                goto LABEL_36;
              }
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v33, v28);
            v35 = specialized __RawDictionaryStorage.find<A>(_:)(v26);
            if ((v34 & 1) != (v36 & 1))
            {
              goto LABEL_66;
            }

            v30 = v35;
            v37 = v63;
            if ((v34 & 1) == 0)
            {
LABEL_36:
              v37[(v30 >> 6) + 8] |= 1 << v30;
              *(v37[6] + 8 * v30) = v26;
              outlined init with take of Any(v64, (v37[7] + 32 * v30));
              v39 = v37[2];
              v40 = __OFADD__(v39, 1);
              v41 = v39 + 1;
              if (v40)
              {
                goto LABEL_58;
              }

              v37[2] = v41;
              goto LABEL_38;
            }
          }

          v38 = (v37[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v38);
          outlined init with take of Any(v64, v38);
LABEL_38:

          v67[0] = v37;
        }

        v42 = v20[4];
        *&v64[0] = v20[6];
        v43 = *(*v42 + 120);
        lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
        v43(&v65, v64, v67, MEMORY[0x1E69E7DE0], v44, a3);
        v45 = BYTE8(v65);
        v46 = HIBYTE(v68);

        v47 = *(v4 + 120);
        swift_endAccess();
        if ((v45 & 1) == 0 && (v46 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v17 >= *(v47 + 16))
        {
          goto LABEL_57;
        }

        v48 = *(v47 + 48 * v17 + 72);
        if (v48 >> 62)
        {
          v49 = __CocoaSet.count.getter();
          if (v49)
          {
LABEL_44:
            if (v49 < 1)
            {
              goto LABEL_59;
            }

            for (i = 0; i != v49; ++i)
            {
              if ((v48 & 0xC000000000000001) != 0)
              {
                v51 = MEMORY[0x193AC03C0](i, v48);
              }

              else
              {
                v51 = *(v48 + 8 * i + 32);
              }

              (*(*v51 + 96))();
            }
          }
        }

        else
        {
          v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v49)
          {
            goto LABEL_44;
          }
        }

        IndexSet.insert(_:)(v17);
LABEL_22:
        if (++v17 == v10)
        {
          goto LABEL_52;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v13 = *(v4 + 88);
    if (!(v13 >> 62))
    {
      v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v14)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 88) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v14 = __CocoaSet.count.getter();
  if (!v14)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v14 >= 1)
  {

    for (j = 0; j != v14; ++j)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x193AC03C0](j, v13);
      }

      else
      {
        v16 = *(v13 + 8 * j + 32);
      }

      (*(*v16 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_66:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 1);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 144) & 1) == 0 && (a1)
  {
    *(v4 + 144) = a1 & 1;
    swift_beginAccess();
    v14 = *(v4 + 136);
    if (v14 >> 62)
    {
      goto LABEL_65;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 168) + 16))
      {
        return;
      }

      v65 = v11;
      v66 = v10;
      v68 = v13;
      IndexSet.init()();
      v11 = *(*(v4 + 168) + 16);
      if (!v11)
      {
LABEL_56:
        swift_beginAccess();
        a2 = v67;
        v59 = v68;
        specialized Collection.subscript.getter(v67, v60);
        v62 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 168, a2, v61);
        v63 = *(*(v4 + 168) + 16);
        if (v63 < v62)
        {
          goto LABEL_64;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v62, v63);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v65 + 8))(v59, v66);
        return;
      }

      type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>(0);
      v20 = v19;
      v21 = 0;
      v22 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v22 = a2;
      }

      v69 = v22;
      v23 = MEMORY[0x1E69E63B0];
      while (1)
      {
        swift_beginAccess();
        v24 = *(v4 + 168);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 168) = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
          *(v4 + 168) = v24;
        }

        if (v21 >= v24[2])
        {
          break;
        }

        v10 = &v24[9 * v21];
        v26 = v10[5];

        v27 = AGCreateWeakAttribute();
        v77[0] = v26;
        v77[1] = v27;
        v78 = 0;
        a2 = v10[10];
        if (a2)
        {
          v28 = v10[11];
          type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>(0);
          v30 = v29;
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>>, MEMORY[0x1E69E6720]);
          v75 = v31;
          *&v74 = a2;
          *(&v74 + 1) = v28;
          outlined init with take of Any(&v74, &v71);
          v13 = swift_isUniquelyReferenced_nonNull_native();
          v70[0] = v26;
          v33 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          v34 = *(v26 + 16);
          v35 = (v32 & 1) == 0;
          v36 = v34 + v35;
          if (__OFADD__(v34, v35))
          {
            goto LABEL_60;
          }

          a2 = v32;
          if (*(v26 + 24) >= v36)
          {
            if ((v13 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, v13);
            v37 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
            if ((a2 & 1) != (v38 & 1))
            {
              goto LABEL_70;
            }

            v33 = v37;
          }

          v13 = v70[0];
          if (a2)
          {
            v39 = (*(v70[0] + 56) + 32 * v33);
            __swift_destroy_boxed_opaque_existential_1(v39);
            outlined init with take of Any(&v71, v39);
          }

          else
          {
            *(v70[0] + 8 * (v33 >> 6) + 64) |= 1 << v33;
            *(*(v13 + 48) + 8 * v33) = v30;
            outlined init with take of Any(&v71, (*(v13 + 56) + 32 * v33));
            v40 = *(v13 + 16);
            v41 = __OFADD__(v40, 1);
            v42 = v40 + 1;
            if (v41)
            {
              goto LABEL_62;
            }

            *(v13 + 16) = v42;
          }

          v77[0] = v13;
          v23 = MEMORY[0x1E69E63B0];
        }

        v43 = v10[4];
        v44 = v10[6];
        v45 = v10[7];
        v46 = v10[8];
        v47 = v10[9];
        *&v71 = v44;
        *(&v71 + 1) = v45;
        v72 = v46;
        v73 = v47;
        if (v20 == v23)
        {
          v70[0] = v44;
          (*(*v43 + 120))(&v74, v70, v77, v23, &protocol witness table for Double, a3);
        }

        else
        {
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v20 == v48)
          {
            v51 = v48;
            v70[0] = v44;
            v70[1] = v45;
            v70[2] = v46;
            v70[3] = v47;
            v52 = *(*v43 + 120);
            v13 = *v43 + 120;
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
            v52(&v74, v70, v77, v51, v53, a3);
          }

          else
          {
            v49 = *(*v43 + 120);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>, protocol conformance descriptor for AnimatablePair<A, B>);
            v49(&v74, &v71, v77, v20, v50, a3);
          }
        }

        v54 = v76;
        a2 = HIBYTE(v78);

        v55 = *(v4 + 168);
        swift_endAccess();
        if (v54 & 1) != 0 || (a2)
        {
          if (v21 >= *(v55 + 16))
          {
            goto LABEL_61;
          }

          v56 = *(v55 + 72 * v21 + 96);
          if (v56 >> 62)
          {
            a2 = __CocoaSet.count.getter();
            if (a2)
            {
LABEL_48:
              if (a2 < 1)
              {
                goto LABEL_63;
              }

              v13 = v56 & 0xC000000000000001;

              v57 = 0;
              do
              {
                if (v13)
                {
                  v58 = MEMORY[0x193AC03C0](v57, v56);
                }

                else
                {
                  v58 = *(v56 + 8 * v57 + 32);
                }

                ++v57;
                (*(*v58 + 96))();
              }

              while (a2 != v57);

              v23 = MEMORY[0x1E69E63B0];
            }
          }

          else
          {
            a2 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (a2)
            {
              goto LABEL_48;
            }
          }

          IndexSet.insert(_:)(v21);
        }

        if (++v21 == v11)
        {
          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_60:
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
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 136);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 136) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (i = 0; i != v16; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](i, v15);
      }

      else
      {
        v18 = *(v15 + 8 * i + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_70:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v15 = *(v4 + 120);
    if (v15 >> 62)
    {
      goto LABEL_66;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return;
      }

      v63 = v10;
      v61 = v12;
      v62 = v11;
      v64 = v14;
      IndexSet.init()();
      v65 = *(*(v4 + 152) + 16);
      if (!v65)
      {
LABEL_57:
        swift_beginAccess();
        a2 = v63;
        v56 = v64;
        specialized Collection.subscript.getter(v63, v57);
        v59 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 152, a2, v58);
        v60 = *(*(v4 + 152) + 16);
        if (v60 < v59)
        {
          goto LABEL_65;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v59, v60);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v61 + 8))(v56, v62);
        return;
      }

      type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>(0);
      v21 = v20;
      v22 = 0;
      v12 = MEMORY[0x1E69E63B0];
      if ((a2 & 0x100000000) != 0)
      {
        v10 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v10 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v23 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
          *(v4 + 152) = v23;
        }

        if (v22 >= v23[2])
        {
          break;
        }

        v11 = &v23[8 * v22];
        v25 = v11[5];

        v26 = AGCreateWeakAttribute();
        v72[0] = v25;
        v72[1] = v26;
        v73 = 0;
        a2 = v11[9];
        if (!a2)
        {
          goto LABEL_39;
        }

        v27 = v11[10];
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>(0);
        v29 = v28;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>>, MEMORY[0x1E69E6720]);
        v70 = v30;
        *&v69 = a2;
        *(&v69 + 1) = v27;
        outlined init with take of Any(&v69, &v66);
        v14 = swift_isUniquelyReferenced_nonNull_native();
        v71[0] = v25;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
        v32 = *(v25 + 16);
        v33 = (v31 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_61;
        }

        a2 = v31;
        if (*(v25 + 24) >= v34)
        {
          if (v14)
          {
            v14 = v71[0];
            if ((v31 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v14 = v71[0];
            if ((a2 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v14);
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
          if ((a2 & 1) != (v36 & 1))
          {
            goto LABEL_71;
          }

          v12 = v35;
          v14 = v71[0];
          if ((a2 & 1) == 0)
          {
LABEL_36:
            *(v14 + 8 * (v12 >> 6) + 64) |= 1 << v12;
            *(*(v14 + 48) + 8 * v12) = v29;
            outlined init with take of Any(&v66, (*(v14 + 56) + 32 * v12));
            v38 = *(v14 + 16);
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_63;
            }

            *(v14 + 16) = v40;
            goto LABEL_38;
          }
        }

        v37 = (*(v14 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v37);
        outlined init with take of Any(&v66, v37);
LABEL_38:
        v72[0] = v14;
        v12 = MEMORY[0x1E69E63B0];
LABEL_39:
        v41 = v11[4];
        v42 = v11[6];
        v43 = v11[7];
        v44 = v11[8];
        v71[0] = v42;
        v71[1] = v43;
        v71[2] = v44;
        if (v21 == v12)
        {
          *&v66 = v42;
          (*(*v41 + 120))(&v69, &v66, v72, v12, &protocol witness table for Double, a3);
        }

        else
        {
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v21 == v45)
          {
            v48 = v45;
            *&v66 = v42;
            *(&v66 + 1) = v43;
            v67 = v44;
            v68 = v72[0];
            v49 = *(*v41 + 120);
            v14 = *v41 + 120;
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
            v49(&v69, &v66, v72, v48, v50, a3);
          }

          else
          {
            v46 = *(*v41 + 120);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<CGFloat, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
            v46(&v69, v71, v72, v21, v47, a3);
          }
        }

        v51 = v70;
        a2 = HIBYTE(v73);

        v52 = *(v4 + 152);
        swift_endAccess();
        if ((v51 & 1) == 0 && (a2 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v22 >= *(v52 + 16))
        {
          goto LABEL_62;
        }

        v53 = *(v52 + (v22 << 6) + 88);
        if (v53 >> 62)
        {
          a2 = __CocoaSet.count.getter();
          if (a2)
          {
LABEL_49:
            if (a2 < 1)
            {
              goto LABEL_64;
            }

            v14 = v53 & 0xC000000000000001;

            v54 = 0;
            do
            {
              if (v14)
              {
                v55 = MEMORY[0x193AC03C0](v54, v53);
              }

              else
              {
                v55 = *(v53 + 8 * v54 + 32);
              }

              ++v54;
              (*(*v55 + 96))();
            }

            while (a2 != v54);

            v12 = MEMORY[0x1E69E63B0];
          }
        }

        else
        {
          a2 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a2)
          {
            goto LABEL_49;
          }
        }

        IndexSet.insert(_:)(v22);
LABEL_22:
        if (++v22 == v65)
        {
          goto LABEL_57;
        }
      }

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
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v16 = *(v4 + 120);
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_7:
  v64 = v14;
  if (v17 >= 1)
  {

    for (i = 0; i != v17; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](i, v16);
      }

      else
      {
        v19 = *(v16 + 8 * i + 32);
      }

      (*(*v19 + 96))();
    }

    v14 = v64;
    goto LABEL_14;
  }

  __break(1u);
LABEL_71:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v15 = *(v4 + 120);
    if (v15 >> 62)
    {
      goto LABEL_66;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return;
      }

      v63 = v10;
      v61 = v12;
      v62 = v11;
      v64 = v14;
      IndexSet.init()();
      v65 = *(*(v4 + 152) + 16);
      if (!v65)
      {
LABEL_57:
        swift_beginAccess();
        a2 = v63;
        v56 = v64;
        specialized Collection.subscript.getter(v63, v57);
        v59 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 152, a2, v58);
        v60 = *(*(v4 + 152) + 16);
        if (v60 < v59)
        {
          goto LABEL_65;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v59, v60);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v61 + 8))(v56, v62);
        return;
      }

      type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>(0);
      v21 = v20;
      v22 = 0;
      v12 = MEMORY[0x1E69E63B0];
      if ((a2 & 0x100000000) != 0)
      {
        v10 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v10 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v23 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
          *(v4 + 152) = v23;
        }

        if (v22 >= v23[2])
        {
          break;
        }

        v11 = &v23[8 * v22];
        v25 = v11[5];

        v26 = AGCreateWeakAttribute();
        v72[0] = v25;
        v72[1] = v26;
        v73 = 0;
        a2 = v11[9];
        if (!a2)
        {
          goto LABEL_39;
        }

        v27 = v11[10];
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>(0);
        v29 = v28;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>>, MEMORY[0x1E69E6720]);
        v70 = v30;
        *&v69 = a2;
        *(&v69 + 1) = v27;
        outlined init with take of Any(&v69, &v66);
        v14 = swift_isUniquelyReferenced_nonNull_native();
        v71[0] = v25;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
        v32 = *(v25 + 16);
        v33 = (v31 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_61;
        }

        a2 = v31;
        if (*(v25 + 24) >= v34)
        {
          if (v14)
          {
            v14 = v71[0];
            if ((v31 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v14 = v71[0];
            if ((a2 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v14);
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
          if ((a2 & 1) != (v36 & 1))
          {
            goto LABEL_71;
          }

          v12 = v35;
          v14 = v71[0];
          if ((a2 & 1) == 0)
          {
LABEL_36:
            *(v14 + 8 * (v12 >> 6) + 64) |= 1 << v12;
            *(*(v14 + 48) + 8 * v12) = v29;
            outlined init with take of Any(&v66, (*(v14 + 56) + 32 * v12));
            v38 = *(v14 + 16);
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_63;
            }

            *(v14 + 16) = v40;
            goto LABEL_38;
          }
        }

        v37 = (*(v14 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v37);
        outlined init with take of Any(&v66, v37);
LABEL_38:
        v72[0] = v14;
        v12 = MEMORY[0x1E69E63B0];
LABEL_39:
        v41 = v11[4];
        v42 = v11[6];
        v43 = v11[7];
        v44 = v11[8];
        v71[0] = v42;
        v71[1] = v43;
        v71[2] = v44;
        if (v21 == v12)
        {
          *&v66 = v42;
          (*(*v41 + 120))(&v69, &v66, v72, v12, &protocol witness table for Double, a3);
        }

        else
        {
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v21 == v45)
          {
            v48 = v45;
            *&v66 = v42;
            *(&v66 + 1) = v43;
            v67 = v44;
            v68 = v72[0];
            v49 = *(*v41 + 120);
            v14 = *v41 + 120;
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
            v49(&v69, &v66, v72, v48, v50, a3);
          }

          else
          {
            v46 = *(*v41 + 120);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
            v46(&v69, v71, v72, v21, v47, a3);
          }
        }

        v51 = v70;
        a2 = HIBYTE(v73);

        v52 = *(v4 + 152);
        swift_endAccess();
        if ((v51 & 1) == 0 && (a2 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v22 >= *(v52 + 16))
        {
          goto LABEL_62;
        }

        v53 = *(v52 + (v22 << 6) + 88);
        if (v53 >> 62)
        {
          a2 = __CocoaSet.count.getter();
          if (a2)
          {
LABEL_49:
            if (a2 < 1)
            {
              goto LABEL_64;
            }

            v14 = v53 & 0xC000000000000001;

            v54 = 0;
            do
            {
              if (v14)
              {
                v55 = MEMORY[0x193AC03C0](v54, v53);
              }

              else
              {
                v55 = *(v53 + 8 * v54 + 32);
              }

              ++v54;
              (*(*v55 + 96))();
            }

            while (a2 != v54);

            v12 = MEMORY[0x1E69E63B0];
          }
        }

        else
        {
          a2 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a2)
          {
            goto LABEL_49;
          }
        }

        IndexSet.insert(_:)(v22);
LABEL_22:
        if (++v22 == v65)
        {
          goto LABEL_57;
        }
      }

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
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v16 = *(v4 + 120);
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_7:
  v64 = v14;
  if (v17 >= 1)
  {

    for (i = 0; i != v17; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](i, v16);
      }

      else
      {
        v19 = *(v16 + 8 * i + 32);
      }

      (*(*v19 + 96))();
    }

    v14 = v64;
    goto LABEL_14;
  }

  __break(1u);
LABEL_71:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v62 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 112) & 1) == 0 && (a1)
  {
    *(v4 + 112) = a1 & 1;
    swift_beginAccess();
    v14 = *(v4 + 104);
    if (v14 >> 62)
    {
      goto LABEL_66;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 136) + 16))
      {
        return;
      }

      v60 = v11;
      v61 = v10;
      v63 = v13;
      IndexSet.init()();
      v65 = *(*(v4 + 136) + 16);
      if (!v65)
      {
LABEL_57:
        swift_beginAccess();
        a2 = v62;
        v54 = v63;
        specialized Collection.subscript.getter(v62, v55);
        v57 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 136, a2, v56);
        v58 = *(*(v4 + 136) + 16);
        if (v58 < v57)
        {
          goto LABEL_65;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v57, v58);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v60 + 8))(v54, v61);
        return;
      }

      type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>(0);
      v20 = v19;
      v21 = 0;
      v22 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v22 = a2;
      }

      v64 = v22;
      v11 = MEMORY[0x1E69E63B0];
      while (1)
      {
        swift_beginAccess();
        v23 = *(v4 + 136);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 136) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
          *(v4 + 136) = v23;
        }

        if (v21 >= v23[2])
        {
          break;
        }

        v10 = &v23[7 * v21];
        v25 = *(v10 + 40);

        v26 = AGCreateWeakAttribute();
        *&v71 = v25;
        *(&v71 + 1) = v26;
        v72 = 0;
        a2 = *(v10 + 64);
        if (!a2)
        {
          goto LABEL_39;
        }

        v27 = *(v10 + 72);
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>(0);
        v29 = v28;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, MEMORY[0x1E69E6720]);
        v69 = v30;
        *&v67 = a2;
        *(&v67 + 1) = v27;
        outlined init with take of Any(&v67, v66);
        v13 = swift_isUniquelyReferenced_nonNull_native();
        *&v70 = v25;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
        v33 = *(v25 + 16);
        v34 = (v31 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_61;
        }

        a2 = v31;
        if (*(v25 + 24) >= v35)
        {
          if (v13)
          {
            v13 = v70;
            if ((v31 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v13 = v70;
            if ((a2 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v13);
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
          if ((a2 & 1) != (v37 & 1))
          {
            goto LABEL_71;
          }

          v32 = v36;
          v13 = v70;
          if ((a2 & 1) == 0)
          {
LABEL_36:
            *(v13 + 8 * (v32 >> 6) + 64) |= 1 << v32;
            *(*(v13 + 48) + 8 * v32) = v29;
            outlined init with take of Any(v66, (*(v13 + 56) + 32 * v32));
            v39 = *(v13 + 16);
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_63;
            }

            *(v13 + 16) = v41;
            goto LABEL_38;
          }
        }

        v38 = (*(v13 + 56) + 32 * v32);
        __swift_destroy_boxed_opaque_existential_1(v38);
        outlined init with take of Any(v66, v38);
LABEL_38:
        *&v71 = v13;
LABEL_39:
        v42 = *(v10 + 32);
        v70 = *(v10 + 48);
        if (v20 == v11)
        {
          *&v66[0] = v70;
          (*(*v42 + 120))(&v67, v66, &v71, v11, &protocol witness table for Double, a3);
        }

        else
        {
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v20 == v43)
          {
            v46 = v43;
            v66[0] = v70;
            v66[1] = v71;
            v47 = *(*v42 + 120);
            v13 = *v42 + 120;
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
            v47(&v67, v66, &v71, v46, v48, a3);
          }

          else
          {
            v44 = *(*v42 + 120);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>, protocol conformance descriptor for AnimatablePair<A, B>);
            v44(&v67, &v70, &v71, v20, v45, a3);
          }
        }

        v49 = v68;
        a2 = HIBYTE(v72);

        v50 = *(v4 + 136);
        swift_endAccess();
        if ((v49 & 1) == 0 && (a2 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v21 >= *(v50 + 16))
        {
          goto LABEL_62;
        }

        v51 = *(v50 + 56 * v21 + 80);
        if (v51 >> 62)
        {
          a2 = __CocoaSet.count.getter();
          if (a2)
          {
LABEL_49:
            if (a2 < 1)
            {
              goto LABEL_64;
            }

            v13 = v51 & 0xC000000000000001;

            v52 = 0;
            do
            {
              if (v13)
              {
                v53 = MEMORY[0x193AC03C0](v52, v51);
              }

              else
              {
                v53 = *(v51 + 8 * v52 + 32);
              }

              ++v52;
              (*(*v53 + 96))();
            }

            while (a2 != v52);
          }
        }

        else
        {
          a2 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a2)
          {
            goto LABEL_49;
          }
        }

        IndexSet.insert(_:)(v21);
LABEL_22:
        if (++v21 == v65)
        {
          goto LABEL_57;
        }
      }

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
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 104);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 104) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (i = 0; i != v16; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](i, v15);
      }

      else
      {
        v18 = *(v15 + 8 * i + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_71:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v15 = *(v4 + 120);
    if (v15 >> 62)
    {
      goto LABEL_66;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return;
      }

      v62 = v10;
      v60 = v12;
      v61 = v11;
      v63 = v14;
      IndexSet.init()();
      v64 = *(*(v4 + 152) + 16);
      if (!v64)
      {
LABEL_57:
        swift_beginAccess();
        a2 = v62;
        v55 = v63;
        specialized Collection.subscript.getter(v62, v56);
        v58 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 152, a2, v57);
        v59 = *(*(v4 + 152) + 16);
        if (v59 < v58)
        {
          goto LABEL_65;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v58, v59);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v60 + 8))(v55, v61);
        return;
      }

      type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>(0);
      v21 = v20;
      v22 = 0;
      v12 = MEMORY[0x1E69E63B0];
      if ((a2 & 0x100000000) != 0)
      {
        v10 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v10 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v23 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
          *(v4 + 152) = v23;
        }

        if (v22 >= v23[2])
        {
          break;
        }

        v25 = &v23[8 * v22];
        v11 = (v25 + 4);
        v26 = v25[5];

        v27 = AGCreateWeakAttribute();
        v71[0] = v26;
        v71[1] = v27;
        v72 = 0;
        a2 = v25[9];
        if (!a2)
        {
          goto LABEL_39;
        }

        v28 = *(v11 + 48);
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>(0);
        v30 = v29;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>, MEMORY[0x1E69E6720]);
        v68 = v31;
        *&v66 = a2;
        *(&v66 + 1) = v28;
        outlined init with take of Any(&v66, v65);
        v14 = swift_isUniquelyReferenced_nonNull_native();
        *&v69 = v26;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
        v33 = *(v26 + 16);
        v34 = (v32 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_61;
        }

        a2 = v32;
        if (*(v26 + 24) >= v35)
        {
          if (v14)
          {
            v14 = v69;
            if ((v32 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v14 = v69;
            if ((a2 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v14);
          v36 = specialized __RawDictionaryStorage.find<A>(_:)(v30);
          if ((a2 & 1) != (v37 & 1))
          {
            goto LABEL_71;
          }

          v12 = v36;
          v14 = v69;
          if ((a2 & 1) == 0)
          {
LABEL_36:
            *(v14 + 8 * (v12 >> 6) + 64) |= 1 << v12;
            *(*(v14 + 48) + 8 * v12) = v30;
            outlined init with take of Any(v65, (*(v14 + 56) + 32 * v12));
            v39 = *(v14 + 16);
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_63;
            }

            *(v14 + 16) = v41;
            goto LABEL_38;
          }
        }

        v38 = (*(v14 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v38);
        outlined init with take of Any(v65, v38);
LABEL_38:
        v71[0] = v14;
        v12 = MEMORY[0x1E69E63B0];
LABEL_39:
        v42 = *v11;
        v43 = *(v11 + 32);
        v69 = *(v11 + 16);
        LODWORD(v70) = v43;
        if (v21 == v12)
        {
          *&v65[0] = v69;
          (*(*v42 + 120))(&v66, v65, v71, v12, &protocol witness table for Double, a3);
        }

        else
        {
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v21 == v44)
          {
            v47 = v44;
            v65[0] = v69;
            v65[1] = v70;
            v48 = *(*v42 + 120);
            v14 = *v42 + 120;
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
            v48(&v66, v65, v71, v47, v49, a3);
          }

          else
          {
            v45 = *(*v42 + 120);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, protocol conformance descriptor for AnimatablePair<A, B>);
            v45(&v66, &v69, v71, v21, v46, a3);
          }
        }

        v50 = BYTE4(v67);
        a2 = HIBYTE(v72);

        v51 = *(v4 + 152);
        swift_endAccess();
        if ((v50 & 1) == 0 && (a2 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v22 >= *(v51 + 16))
        {
          goto LABEL_62;
        }

        v52 = *(v51 + (v22 << 6) + 88);
        if (v52 >> 62)
        {
          a2 = __CocoaSet.count.getter();
          if (a2)
          {
LABEL_49:
            if (a2 < 1)
            {
              goto LABEL_64;
            }

            v14 = v52 & 0xC000000000000001;

            v53 = 0;
            do
            {
              if (v14)
              {
                v54 = MEMORY[0x193AC03C0](v53, v52);
              }

              else
              {
                v54 = *(v52 + 8 * v53 + 32);
              }

              ++v53;
              (*(*v54 + 96))();
            }

            while (a2 != v53);

            v12 = MEMORY[0x1E69E63B0];
          }
        }

        else
        {
          a2 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a2)
          {
            goto LABEL_49;
          }
        }

        IndexSet.insert(_:)(v22);
LABEL_22:
        if (++v22 == v64)
        {
          goto LABEL_57;
        }
      }

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
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v16 = *(v4 + 120);
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_7:
  v63 = v14;
  if (v17 >= 1)
  {

    for (i = 0; i != v17; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](i, v16);
      }

      else
      {
        v19 = *(v16 + 8 * i + 32);
      }

      (*(*v19 + 96))();
    }

    v14 = v63;
    goto LABEL_14;
  }

  __break(1u);
LABEL_71:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v65 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexSet();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 160) & 1) == 0 && (a1)
  {
    *(v4 + 160) = a1 & 1;
    swift_beginAccess();
    v14 = *(v4 + 152);
    if (v14 >> 62)
    {
      goto LABEL_65;
    }

    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 184) + 16))
      {
        return;
      }

      v63 = v11;
      v64 = v10;
      v66 = v13;
      IndexSet.init()();
      v69 = *(*(v4 + 184) + 16);
      if (!v69)
      {
LABEL_56:
        swift_beginAccess();
        a2 = v65;
        v58 = v66;
        specialized Collection.subscript.getter(v65, v59);
        v61 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 184, a2, v60);
        v62 = *(*(v4 + 184) + 16);
        if (v62 < v61)
        {
          goto LABEL_64;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v61, v62);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v63 + 8))(v58, v64);
        return;
      }

      type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>(0);
      v20 = v19;
      v21 = 0;
      v22 = *MEMORY[0x1E698D3F8];
      if ((a2 & 0x100000000) == 0)
      {
        v22 = a2;
      }

      v68 = v22;
      v11 = MEMORY[0x1E69E63B0];
      while (1)
      {
        swift_beginAccess();
        v23 = *(v4 + 184);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 184) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
          *(v4 + 184) = v23;
        }

        if (v21 >= v23[2])
        {
          break;
        }

        v10 = &v23[10 * v21];
        v25 = *(v10 + 40);

        v26 = AGCreateWeakAttribute();
        v77[0] = v25;
        v77[1] = v26;
        v78 = 0;
        a2 = *(v10 + 88);
        if (a2)
        {
          v27 = *(v10 + 96);
          type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>(0);
          v29 = v28;
          type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>>, MEMORY[0x1E69E6720]);
          v75 = v30;
          *&v74 = a2;
          *(&v74 + 1) = v27;
          outlined init with take of Any(&v74, &v71);
          v13 = swift_isUniquelyReferenced_nonNull_native();
          v70[0] = v25;
          v32 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
          v33 = *(v25 + 16);
          v34 = (v31 & 1) == 0;
          v35 = v33 + v34;
          if (__OFADD__(v33, v34))
          {
            goto LABEL_60;
          }

          a2 = v31;
          if (*(v25 + 24) >= v35)
          {
            if ((v13 & 1) == 0)
            {
              specialized _NativeDictionary.copy()();
            }
          }

          else
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v13);
            v36 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
            if ((a2 & 1) != (v37 & 1))
            {
              goto LABEL_70;
            }

            v32 = v36;
          }

          v13 = v70[0];
          if (a2)
          {
            v38 = (*(v70[0] + 56) + 32 * v32);
            __swift_destroy_boxed_opaque_existential_1(v38);
            outlined init with take of Any(&v71, v38);
          }

          else
          {
            *(v70[0] + 8 * (v32 >> 6) + 64) |= 1 << v32;
            *(*(v13 + 48) + 8 * v32) = v29;
            outlined init with take of Any(&v71, (*(v13 + 56) + 32 * v32));
            v39 = *(v13 + 16);
            v40 = __OFADD__(v39, 1);
            v41 = v39 + 1;
            if (v40)
            {
              goto LABEL_62;
            }

            *(v13 + 16) = v41;
          }

          v77[0] = v13;
        }

        v42 = *(v10 + 32);
        v43 = *(v10 + 48);
        v44 = *(v10 + 56);
        v45 = *(v10 + 64);
        v46 = *(v10 + 72);
        *&v71 = v43;
        *(&v71 + 1) = v44;
        v72 = v45;
        v73 = v46;
        if (v20 == v11)
        {
          v70[0] = v43;
          (*(*v42 + 120))(&v74, v70, v77, v11, &protocol witness table for Double, a3);
        }

        else
        {
          v67 = v46;
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v20 == v47)
          {
            v50 = v47;
            v70[0] = v43;
            v70[1] = v44;
            v70[2] = v45;
            v70[3] = v67;
            v51 = *(*v42 + 120);
            v13 = *v42 + 120;
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
            v51(&v74, v70, v77, v50, v52, a3);
          }

          else
          {
            v48 = *(*v42 + 120);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, CGFloat>, protocol conformance descriptor for AnimatablePair<A, B>);
            v48(&v74, &v71, v77, v20, v49, a3);
          }
        }

        v53 = v76;
        a2 = HIBYTE(v78);

        v54 = *(v4 + 184);
        swift_endAccess();
        if (v53 & 1) != 0 || (a2)
        {
          if (v21 >= *(v54 + 16))
          {
            goto LABEL_61;
          }

          v55 = *(v54 + 80 * v21 + 104);
          if (v55 >> 62)
          {
            a2 = __CocoaSet.count.getter();
            if (a2)
            {
LABEL_48:
              if (a2 < 1)
              {
                goto LABEL_63;
              }

              v13 = v55 & 0xC000000000000001;

              v56 = 0;
              do
              {
                if (v13)
                {
                  v57 = MEMORY[0x193AC03C0](v56, v55);
                }

                else
                {
                  v57 = *(v55 + 8 * v56 + 32);
                }

                ++v56;
                (*(*v57 + 96))();
              }

              while (a2 != v56);
            }
          }

          else
          {
            a2 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (a2)
            {
              goto LABEL_48;
            }
          }

          IndexSet.insert(_:)(v21);
        }

        if (++v21 == v69)
        {
          goto LABEL_56;
        }
      }

      __break(1u);
LABEL_60:
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
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v15 = *(v4 + 152);
    if (!(v15 >> 62))
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v16)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 152) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v16 = __CocoaSet.count.getter();
  if (!v16)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v16 >= 1)
  {

    for (i = 0; i != v16; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x193AC03C0](i, v15);
      }

      else
      {
        v18 = *(v15 + 8 * i + 32);
      }

      (*(*v18 + 96))();
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_70:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v15 = *(v4 + 120);
    if (v15 >> 62)
    {
      goto LABEL_66;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return;
      }

      v61 = v10;
      v59 = v12;
      v60 = v11;
      v62 = v14;
      IndexSet.init()();
      v63 = *(*(v4 + 152) + 16);
      if (!v63)
      {
LABEL_57:
        swift_beginAccess();
        a2 = v61;
        v54 = v62;
        specialized Collection.subscript.getter(v61, v55);
        v57 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 152, a2, v56);
        v58 = *(*(v4 + 152) + 16);
        if (v58 < v57)
        {
          goto LABEL_65;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v57, v58);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v59 + 8))(v54, v60);
        return;
      }

      type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>(0);
      v21 = v20;
      v22 = 0;
      v12 = MEMORY[0x1E69E63B0];
      if ((a2 & 0x100000000) != 0)
      {
        v10 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v10 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v23 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
          *(v4 + 152) = v23;
        }

        if (v22 >= v23[2])
        {
          break;
        }

        v11 = &v23[8 * v22];
        v25 = *(v11 + 40);

        v26 = AGCreateWeakAttribute();
        v69[0] = v25;
        v69[1] = v26;
        v70 = 0;
        a2 = *(v11 + 72);
        if (!a2)
        {
          goto LABEL_39;
        }

        v27 = *(v11 + 80);
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>(0);
        v29 = v28;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>>, MEMORY[0x1E69E6720]);
        v66 = v30;
        *&v65 = a2;
        *(&v65 + 1) = v27;
        outlined init with take of Any(&v65, v64);
        v14 = swift_isUniquelyReferenced_nonNull_native();
        *&v67 = v25;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
        v32 = *(v25 + 16);
        v33 = (v31 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_61;
        }

        a2 = v31;
        if (*(v25 + 24) >= v34)
        {
          if (v14)
          {
            v14 = v67;
            if ((v31 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v14 = v67;
            if ((a2 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v14);
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
          if ((a2 & 1) != (v36 & 1))
          {
            goto LABEL_71;
          }

          v12 = v35;
          v14 = v67;
          if ((a2 & 1) == 0)
          {
LABEL_36:
            *(v14 + 8 * (v12 >> 6) + 64) |= 1 << v12;
            *(*(v14 + 48) + 8 * v12) = v29;
            outlined init with take of Any(v64, (*(v14 + 56) + 32 * v12));
            v38 = *(v14 + 16);
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_63;
            }

            *(v14 + 16) = v40;
            goto LABEL_38;
          }
        }

        v37 = (*(v14 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v37);
        outlined init with take of Any(v64, v37);
LABEL_38:
        v69[0] = v14;
        v12 = MEMORY[0x1E69E63B0];
LABEL_39:
        v41 = *(v11 + 32);
        v42 = *(v11 + 64);
        v67 = *(v11 + 48);
        *&v68 = v42;
        if (v21 == v12)
        {
          *&v64[0] = v67;
          (*(*v41 + 120))(&v65, v64, v69, v12, &protocol witness table for Double, a3);
        }

        else
        {
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v21 == v43)
          {
            v46 = v43;
            v64[0] = v67;
            v64[1] = v68;
            v47 = *(*v41 + 120);
            v14 = *v41 + 120;
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
            v47(&v65, v64, v69, v46, v48, a3);
          }

          else
          {
            v44 = *(*v41 + 120);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, AnimatablePair<Float, Float>>>>>, protocol conformance descriptor for AnimatablePair<A, B>);
            v44(&v65, &v67, v69, v21, v45, a3);
          }
        }

        v49 = v66;
        a2 = HIBYTE(v70);

        v50 = *(v4 + 152);
        swift_endAccess();
        if ((v49 & 1) == 0 && (a2 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v22 >= *(v50 + 16))
        {
          goto LABEL_62;
        }

        v51 = *(v50 + (v22 << 6) + 88);
        if (v51 >> 62)
        {
          a2 = __CocoaSet.count.getter();
          if (a2)
          {
LABEL_49:
            if (a2 < 1)
            {
              goto LABEL_64;
            }

            v14 = v51 & 0xC000000000000001;

            v52 = 0;
            do
            {
              if (v14)
              {
                v53 = MEMORY[0x193AC03C0](v52, v51);
              }

              else
              {
                v53 = *(v51 + 8 * v52 + 32);
              }

              ++v52;
              (*(*v53 + 96))();
            }

            while (a2 != v52);

            v12 = MEMORY[0x1E69E63B0];
          }
        }

        else
        {
          a2 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a2)
          {
            goto LABEL_49;
          }
        }

        IndexSet.insert(_:)(v22);
LABEL_22:
        if (++v22 == v63)
        {
          goto LABEL_57;
        }
      }

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
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v16 = *(v4 + 120);
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_7:
  v62 = v14;
  if (v17 >= 1)
  {

    for (i = 0; i != v17; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](i, v16);
      }

      else
      {
        v19 = *(v16 + 8 * i + 32);
      }

      (*(*v19 + 96))();
    }

    v14 = v62;
    goto LABEL_14;
  }

  __break(1u);
LABEL_71:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v15 = *(v4 + 120);
    if (v15 >> 62)
    {
      goto LABEL_66;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return;
      }

      v63 = v10;
      v61 = v12;
      v62 = v11;
      v64 = v14;
      IndexSet.init()();
      v65 = *(*(v4 + 152) + 16);
      if (!v65)
      {
LABEL_57:
        swift_beginAccess();
        a2 = v63;
        v56 = v64;
        specialized Collection.subscript.getter(v63, v57);
        v59 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 152, a2, v58);
        v60 = *(*(v4 + 152) + 16);
        if (v60 < v59)
        {
          goto LABEL_65;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v59, v60);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v61 + 8))(v56, v62);
        return;
      }

      type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>(0);
      v21 = v20;
      v22 = 0;
      v12 = MEMORY[0x1E69E63B0];
      if ((a2 & 0x100000000) != 0)
      {
        v10 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v10 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v23 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
          *(v4 + 152) = v23;
        }

        if (v22 >= v23[2])
        {
          break;
        }

        v11 = &v23[8 * v22];
        v25 = v11[5];

        v26 = AGCreateWeakAttribute();
        v72[0] = v25;
        v72[1] = v26;
        v73 = 0;
        a2 = v11[9];
        if (!a2)
        {
          goto LABEL_39;
        }

        v27 = v11[10];
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>(0);
        v29 = v28;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>>, MEMORY[0x1E69E6720]);
        v70 = v30;
        *&v69 = a2;
        *(&v69 + 1) = v27;
        outlined init with take of Any(&v69, &v66);
        v14 = swift_isUniquelyReferenced_nonNull_native();
        v71[0] = v25;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
        v32 = *(v25 + 16);
        v33 = (v31 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_61;
        }

        a2 = v31;
        if (*(v25 + 24) >= v34)
        {
          if (v14)
          {
            v14 = v71[0];
            if ((v31 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v14 = v71[0];
            if ((a2 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v14);
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
          if ((a2 & 1) != (v36 & 1))
          {
            goto LABEL_71;
          }

          v12 = v35;
          v14 = v71[0];
          if ((a2 & 1) == 0)
          {
LABEL_36:
            *(v14 + 8 * (v12 >> 6) + 64) |= 1 << v12;
            *(*(v14 + 48) + 8 * v12) = v29;
            outlined init with take of Any(&v66, (*(v14 + 56) + 32 * v12));
            v38 = *(v14 + 16);
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_63;
            }

            *(v14 + 16) = v40;
            goto LABEL_38;
          }
        }

        v37 = (*(v14 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v37);
        outlined init with take of Any(&v66, v37);
LABEL_38:
        v72[0] = v14;
        v12 = MEMORY[0x1E69E63B0];
LABEL_39:
        v41 = v11[4];
        v42 = v11[6];
        v43 = v11[7];
        v44 = v11[8];
        v71[0] = v42;
        v71[1] = v43;
        v71[2] = v44;
        if (v21 == v12)
        {
          *&v66 = v42;
          (*(*v41 + 120))(&v69, &v66, v72, v12, &protocol witness table for Double, a3);
        }

        else
        {
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v21 == v45)
          {
            v48 = v45;
            *&v66 = v42;
            *(&v66 + 1) = v43;
            v67 = v44;
            v68 = v72[0];
            v49 = *(*v41 + 120);
            v14 = *v41 + 120;
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
            v49(&v69, &v66, v72, v48, v50, a3);
          }

          else
          {
            v46 = *(*v41 + 120);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}> and conformance AnimatableValues<Pack{repeat A}>, type metadata accessor for AnimatableValues<Pack{CGFloat, CGFloat, CGFloat}>, protocol conformance descriptor for AnimatableValues<Pack{repeat A}>);
            v46(&v69, v71, v72, v21, v47, a3);
          }
        }

        v51 = v70;
        a2 = HIBYTE(v73);

        v52 = *(v4 + 152);
        swift_endAccess();
        if ((v51 & 1) == 0 && (a2 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v22 >= *(v52 + 16))
        {
          goto LABEL_62;
        }

        v53 = *(v52 + (v22 << 6) + 88);
        if (v53 >> 62)
        {
          a2 = __CocoaSet.count.getter();
          if (a2)
          {
LABEL_49:
            if (a2 < 1)
            {
              goto LABEL_64;
            }

            v14 = v53 & 0xC000000000000001;

            v54 = 0;
            do
            {
              if (v14)
              {
                v55 = MEMORY[0x193AC03C0](v54, v53);
              }

              else
              {
                v55 = *(v53 + 8 * v54 + 32);
              }

              ++v54;
              (*(*v55 + 96))();
            }

            while (a2 != v54);

            v12 = MEMORY[0x1E69E63B0];
          }
        }

        else
        {
          a2 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a2)
          {
            goto LABEL_49;
          }
        }

        IndexSet.insert(_:)(v22);
LABEL_22:
        if (++v22 == v65)
        {
          goto LABEL_57;
        }
      }

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
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v16 = *(v4 + 120);
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_7:
  v64 = v14;
  if (v17 >= 1)
  {

    for (i = 0; i != v17; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](i, v16);
      }

      else
      {
        v19 = *(v16 + 8 * i + 32);
      }

      (*(*v19 + 96))();
    }

    v14 = v64;
    goto LABEL_14;
  }

  __break(1u);
LABEL_71:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

{
  v4 = v3;
  type metadata accessor for Slice<IndexSet>(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for IndexSet();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v4 + 128) & 1) == 0 && (a1)
  {
    *(v4 + 128) = a1 & 1;
    swift_beginAccess();
    v15 = *(v4 + 120);
    if (v15 >> 62)
    {
      goto LABEL_66;
    }

    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }
  }

  while (2)
  {
    while (2)
    {
      swift_beginAccess();
      if (!*(*(v4 + 152) + 16))
      {
        return;
      }

      v61 = v10;
      v59 = v12;
      v60 = v11;
      v62 = v14;
      IndexSet.init()();
      v63 = *(*(v4 + 152) + 16);
      if (!v63)
      {
LABEL_57:
        swift_beginAccess();
        a2 = v61;
        v54 = v62;
        specialized Collection.subscript.getter(v61, v55);
        v57 = specialized MutableCollection.halfStablePartitionByOffset(isSuffixElementAtOffset:)(v4 + 152, a2, v56);
        v58 = *(*(v4 + 152) + 16);
        if (v58 < v57)
        {
          goto LABEL_65;
        }

        specialized Array.replaceSubrange<A>(_:with:)(v57, v58);
        outlined destroy of Slice<IndexSet>(a2, type metadata accessor for Slice<IndexSet>);
        swift_endAccess();
        (*(v59 + 8))(v54, v60);
        return;
      }

      type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>(0);
      v21 = v20;
      v22 = 0;
      v12 = MEMORY[0x1E69E63B0];
      if ((a2 & 0x100000000) != 0)
      {
        v10 = *MEMORY[0x1E698D3F8];
      }

      else
      {
        v10 = a2;
      }

      while (1)
      {
        swift_beginAccess();
        v23 = *(v4 + 152);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + 152) = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23 = specialized _ArrayBuffer._consumeAndCreateNew()(v23);
          *(v4 + 152) = v23;
        }

        if (v22 >= v23[2])
        {
          break;
        }

        v11 = &v23[8 * v22];
        v25 = *(v11 + 40);

        v26 = AGCreateWeakAttribute();
        v69[0] = v25;
        v69[1] = v26;
        v70 = 0;
        a2 = *(v11 + 72);
        if (!a2)
        {
          goto LABEL_39;
        }

        v27 = *(v11 + 80);
        type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>(0);
        v29 = v28;
        type metadata accessor for AGAttribute?(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>?, type metadata accessor for AnimationFinishingDefinitionKey<AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>>, MEMORY[0x1E69E6720]);
        v66 = v30;
        *&v65 = a2;
        *(&v65 + 1) = v27;
        outlined init with take of Any(&v65, v64);
        v14 = swift_isUniquelyReferenced_nonNull_native();
        *&v67 = v25;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
        v32 = *(v25 + 16);
        v33 = (v31 & 1) == 0;
        v34 = v32 + v33;
        if (__OFADD__(v32, v33))
        {
          goto LABEL_61;
        }

        a2 = v31;
        if (*(v25 + 24) >= v34)
        {
          if (v14)
          {
            v14 = v67;
            if ((v31 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            specialized _NativeDictionary.copy()();
            v14 = v67;
            if ((a2 & 1) == 0)
            {
              goto LABEL_36;
            }
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, v14);
          v35 = specialized __RawDictionaryStorage.find<A>(_:)(v29);
          if ((a2 & 1) != (v36 & 1))
          {
            goto LABEL_71;
          }

          v12 = v35;
          v14 = v67;
          if ((a2 & 1) == 0)
          {
LABEL_36:
            *(v14 + 8 * (v12 >> 6) + 64) |= 1 << v12;
            *(*(v14 + 48) + 8 * v12) = v29;
            outlined init with take of Any(v64, (*(v14 + 56) + 32 * v12));
            v38 = *(v14 + 16);
            v39 = __OFADD__(v38, 1);
            v40 = v38 + 1;
            if (v39)
            {
              goto LABEL_63;
            }

            *(v14 + 16) = v40;
            goto LABEL_38;
          }
        }

        v37 = (*(v14 + 56) + 32 * v12);
        __swift_destroy_boxed_opaque_existential_1(v37);
        outlined init with take of Any(v64, v37);
LABEL_38:
        v69[0] = v14;
        v12 = MEMORY[0x1E69E63B0];
LABEL_39:
        v41 = *(v11 + 32);
        v42 = *(v11 + 64);
        v67 = *(v11 + 48);
        *&v68 = v42;
        if (v21 == v12)
        {
          *&v64[0] = v67;
          (*(*v41 + 120))(&v65, v64, v69, v12, &protocol witness table for Double, a3);
        }

        else
        {
          type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>(0);
          if (v21 == v43)
          {
            v46 = v43;
            v64[0] = v67;
            v64[1] = v68;
            v47 = *(*v41 + 120);
            v14 = *v41 + 120;
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>, protocol conformance descriptor for AnimatablePair<A, B>);
            v47(&v65, v64, v69, v46, v48, a3);
          }

          else
          {
            v44 = *(*v41 + 120);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>> and conformance AnimatablePair<A, B>, type metadata accessor for AnimatablePair<AnimatablePair<Float, AnimatablePair<Float, Float>>, AnimatablePair<Float, AnimatablePair<Float, Float>>>, protocol conformance descriptor for AnimatablePair<A, B>);
            v44(&v65, &v67, v69, v21, v45, a3);
          }
        }

        v49 = v66;
        a2 = HIBYTE(v70);

        v50 = *(v4 + 152);
        swift_endAccess();
        if ((v49 & 1) == 0 && (a2 & 1) == 0)
        {
          goto LABEL_22;
        }

        if (v22 >= *(v50 + 16))
        {
          goto LABEL_62;
        }

        v51 = *(v50 + (v22 << 6) + 88);
        if (v51 >> 62)
        {
          a2 = __CocoaSet.count.getter();
          if (a2)
          {
LABEL_49:
            if (a2 < 1)
            {
              goto LABEL_64;
            }

            v14 = v51 & 0xC000000000000001;

            v52 = 0;
            do
            {
              if (v14)
              {
                v53 = MEMORY[0x193AC03C0](v52, v51);
              }

              else
              {
                v53 = *(v51 + 8 * v52 + 32);
              }

              ++v52;
              (*(*v53 + 96))();
            }

            while (a2 != v52);

            v12 = MEMORY[0x1E69E63B0];
          }
        }

        else
        {
          a2 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (a2)
          {
            goto LABEL_49;
          }
        }

        IndexSet.insert(_:)(v22);
LABEL_22:
        if (++v22 == v63)
        {
          goto LABEL_57;
        }
      }

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
      if (!__CocoaSet.count.getter())
      {
        continue;
      }

      break;
    }

LABEL_5:
    v16 = *(v4 + 120);
    if (!(v16 >> 62))
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
        goto LABEL_7;
      }

LABEL_14:
      *(v4 + 120) = MEMORY[0x1E69E7CC0];

      continue;
    }

    break;
  }

  v17 = __CocoaSet.count.getter();
  if (!v17)
  {
    goto LABEL_14;
  }

LABEL_7:
  v62 = v14;
  if (v17 >= 1)
  {

    for (i = 0; i != v17; ++i)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x193AC03C0](i, v16);
      }

      else
      {
        v19 = *(v16 + 8 * i + 32);
      }

      (*(*v19 + 96))();
    }

    v14 = v62;
    goto LABEL_14;
  }

  __break(1u);
LABEL_71:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized AnimatorState.update(_:at:environment:)(double *a1, unint64_t a2, double a3)
{
  v4 = v3;
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 77) <= 1u)
  {
    if (!*(v3 + 77))
    {
      *(v3 + 40) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 77) = v10;
      goto LABEL_11;
    }

    *(v3 + 77) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 56) = v8 - *(v3 + 40) + a3;
    *(v3 + 40) = a3;
LABEL_20:
    swift_beginAccess();
    v26 = *(v3 + 64) + *a1;
    swift_beginAccess();
    result = 0;
    *a1 = v26 - *(v3 + 32);
    return result;
  }

  if (*(v3 + 77) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 40))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 40) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 40);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 96);

  v31[0] = v14;
  v31[1] = AGCreateWeakAttribute();
  v32 = 0;
  v33 = v15;
  v16 = *(v4 + 104);
  if (v16)
  {
    v17 = *(v4 + 112);
    type metadata accessor for AnimationFinishingDefinitionKey<Double>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<Double>, MEMORY[0x1E69E63B0], &protocol witness table for Double, type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<Double>?(0);
    v27[3] = v20;
    v27[0] = v16;
    v27[1] = v17;
    specialized Dictionary.subscript.setter(v27, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v30 = *(v4 + 32);
  v22 = *(*v21 + 120);

  v22(&v28, &v30, v31, MEMORY[0x1E69E63B0], &protocol witness table for Double, v13);

  if (v29)
  {

    return 1;
  }

  else
  {
    v24 = v28;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v33, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v31[0];

    *a1 = v24 + *a1 - *(v4 + 32);
    swift_beginAccess();
    *(v4 + 56) = a3;
    *(v4 + 64) = v24;
    v25 = *(v4 + 48);
    if (v25 > 0.0)
    {
      *(v4 + 56) = v25 * (round(a3 / v25) + 1.0);
    }

    return 0;
  }
}

{
  v4 = v3;
  v7 = *(v3 + 48);
  v8 = *(v3 + 56);
  if (v8 + v7 * -0.5 >= a3)
  {
    goto LABEL_20;
  }

  if (*(v3 + 77) <= 1u)
  {
    if (!*(v3 + 77))
    {
      *(v3 + 40) = a3;
      v10 = 1;
LABEL_10:
      *(v3 + 77) = v10;
      goto LABEL_11;
    }

    *(v3 + 77) = 2;
    swift_beginAccess();
    if (static CoreTesting.isRunning)
    {
      goto LABEL_11;
    }

    *(v3 + 56) = v8 - *(v3 + 40) + a3;
    *(v3 + 40) = a3;
LABEL_20:
    swift_beginAccess();
    v28 = *(v3 + 64) + *a1;
    swift_beginAccess();
    result = 0;
    *a1 = v28 - *(v3 + 32);
    return result;
  }

  if (*(v3 + 77) == 2)
  {
    v11 = fmax(v7, 0.0166666667);
    v12 = v11 + v11;
    if (v11 + v11 < a3 - *(v3 + 40))
    {
      swift_beginAccess();
      if ((static CoreTesting.isRunning & 1) == 0)
      {
        *(v3 + 40) = a3 - v12;
      }
    }

    v10 = 3;
    goto LABEL_10;
  }

LABEL_11:
  v13 = a3 - *(v3 + 40);
  swift_beginAccess();
  v14 = *(v3 + 24);
  v15 = *(v4 + 96);

  v33[0] = v14;
  v33[1] = AGCreateWeakAttribute();
  v34 = 0;
  v35 = v15;
  v16 = *(v4 + 104);
  if (v16)
  {
    v17 = *(v4 + 112);
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>(0, &lazy cache variable for type metadata for AnimationFinishingDefinitionKey<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, MEMORY[0x1E69E7DE0], type metadata accessor for AnimationFinishingDefinitionKey);
    v19 = v18;
    type metadata accessor for AnimationFinishingDefinitionKey<CGFloat>?(0);
    v29[3] = v20;
    v29[0] = v16;
    v29[1] = v17;
    specialized Dictionary.subscript.setter(v29, v19);
  }

  swift_beginAccess();
  v21 = *(v4 + 16);
  swift_beginAccess();
  v32 = *(v4 + 32);
  v22 = *(*v21 + 120);
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  v24 = v23;

  v22(&v30, &v32, v33, MEMORY[0x1E69E7DE0], v24, v13);

  if (v31)
  {

    return 1;
  }

  else
  {
    v26 = v30;
    specialized AnimatorState.updateListeners(isLogicallyComplete:time:environment:)(v35, a2 | ((HIDWORD(a2) & 1) << 32), v13);
    *(v4 + 24) = v33[0];

    *a1 = v26 + *a1 - *(v4 + 32);
    swift_beginAccess();
    *(v4 + 56) = a3;
    *(v4 + 64) = v26;
    v27 = *(v4 + 48);
    if (v27 > 0.0)
    {
      *(v4 + 56) = v27 * (round(a3 / v27) + 1.0);
    }

    return 0;
  }
}

void specialized AnimatorState.nextUpdate()()
{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 56);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 48);
  v5 = *(v0 + 72);
  v6 = *(v0 + 76);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 88);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 80);
  v5 = *(v0 + 136);
  v6 = *(v0 + 140);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{

  specialized AnimatorState.nextUpdate()();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 80);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 72);
  v5 = *(v0 + 120);
  v6 = *(v0 + 124);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 64);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 56);
  v5 = *(v0 + 84);
  v6 = *(v0 + 88);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 112);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 104);
  v5 = *(v0 + 184);
  v6 = *(v0 + 188);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 88);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 80);
  v5 = *(v0 + 132);
  v6 = *(v0 + 136);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 104);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 96);
  v5 = *(v0 + 168);
  v6 = *(v0 + 172);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 136);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 128);
  v5 = *(v0 + 228);
  v6 = *(v0 + 232);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 96);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 88);
  v5 = *(v0 + 148);
  v6 = *(v0 + 152);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 104);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 96);
  v5 = *(v0 + 164);
  v6 = *(v0 + 168);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 304);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 296);
  v5 = *(v0 + 568);
  v6 = *(v0 + 572);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 64);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 56);
  v5 = *(v0 + 88);
  v6 = *(v0 + 92);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 72);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 64);
  v5 = *(v0 + 100);
  v6 = *(v0 + 104);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 144);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 136);
  v5 = *(v0 + 248);
  v6 = *(v0 + 252);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 152);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 144);
  v5 = *(v0 + 264);
  v6 = *(v0 + 268);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 176);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 168);
  v5 = *(v0 + 312);
  v6 = *(v0 + 316);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

{
  AGGraphGetCurrentAttribute();
  if (one-time initialization token for enabledCategories != -1)
  {
    swift_once();
  }

  if (*(static CustomEventTrace.enabledCategories + 2) < 0x43uLL)
  {
    __break(1u);
  }

  if (*(static CustomEventTrace.enabledCategories + 98) == 1 && static CustomEventTrace.recorder)
  {
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1090;
    type metadata accessor for (AGAttribute?, Double)(0);
    AGGraphAddTraceEvent();
  }

  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  v1 = swift_dynamicCastClassUnconditional();
  v2 = *(v0 + 72);
  swift_beginAccess();
  v3 = *(v1 + 376);
  if (v2 < v3)
  {
    v3 = v2;
  }

  *(v1 + 376) = v3;

  specialized static GraphHost.currentHost.getter();
  swift_dynamicCastClassUnconditional();
  v4 = *(v0 + 64);
  v5 = *(v0 + 104);
  v6 = *(v0 + 108);
  swift_beginAccess();
  v7 = v5 | (v6 << 32);
  ViewGraph.NextUpdate.interval(_:reason:)(v4, v7);
  swift_endAccess();
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE7OpacityO_Tt0g5(float a1)
{
  v3 = v1[1];
  v4 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v5 = a1;
  v6 = [v4 initWithFloat_];
  v7 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v3 + 40);
  *(v3 + 40) = 0x8000000000000000;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v12 = *(v9 + 2);
  v13 = (v10 & 1) == 0;
  v14 = v12 + v13;
  if (__OFADD__(v12, v13))
  {
    __break(1u);
LABEL_16:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    *(v7 + 8 * v11) = v9;
    goto LABEL_10;
  }

  v15 = v10;
  if (*(v9 + 3) >= v14)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, isUniquelyReferenced_nonNull_native);
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    if ((v15 & 1) != (v17 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v11 = v16;
  }

  *(v3 + 40) = v9;

  v18 = *(v3 + 40);
  if ((v15 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, v7, MEMORY[0x1E69E7CC0], *(v3 + 40));
  }

  v7 = *(v18 + 56);
  v9 = *(v7 + 8 * v11);
  v23 = v6;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *(v7 + 8 * v11) = v9;
  if ((v19 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v21 = *(v9 + 2);
  v20 = *(v9 + 3);
  if (v21 >= v20 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v9);
    *(v7 + 8 * v11) = v9;
  }

  *(v9 + 2) = v21 + 1;
  v22 = &v9[32 * v21];
  *(v22 + 4) = 0x7974696361706FLL;
  *(v22 + 5) = 0xE700000000000000;
  *(v22 + 6) = v23;
  v22[56] = 1;
}

void type metadata accessor for _DictionaryStorage<ObjectIdentifier, [DisplayList.ViewUpdater.ViewCache.PendingAsyncValue]>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, [DisplayList.ViewUpdater.ViewCache.PendingAsyncValue]>)
  {
    type metadata accessor for _ContiguousArrayStorage<Any>(255, &lazy cache variable for type metadata for [DisplayList.ViewUpdater.ViewCache.PendingAsyncValue], &type metadata for DisplayList.ViewUpdater.ViewCache.PendingAsyncValue, MEMORY[0x1E69E62F8]);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<ObjectIdentifier, [DisplayList.ViewUpdater.ViewCache.PendingAsyncValue]>);
    }
  }
}

SwiftUI::Time_optional __swiftcall ViewGraphRootValueUpdater.renderAsync(interval:targetTimestamp:)(Swift::Double interval, SwiftUI::Time_optional targetTimestamp)
{
  v5 = v3;
  v6 = v2;
  v8 = v4;
  v9 = **&targetTimestamp.is_nil;
  v10 = *(*&targetTimestamp.is_nil + 8);
  v11 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphOwner, &protocol descriptor for ViewGraphOwner, 0);
  v12 = *(v5 + 8);
  v13 = *(v12 + 16);
  v14 = v13(v48, v11, v11, v6, v12);
  if (!v48[0])
  {
    goto LABEL_15;
  }

  v34 = v9;
  v16 = v48[1];
  v17 = type metadata accessor for CustomAttributeWriter(0, &lazy cache variable for type metadata for ViewGraphRenderHost, &protocol descriptor for ViewGraphRenderHost, 1);
  v13(&v45, v17, v17, v6, v12);
  if (!v47)
  {
    swift_unknownObjectRelease();
    v14 = outlined destroy of ViewGraphRenderHost?(&v45);
LABEL_15:
    *v8 = 0;
    *(v8 + 8) = 1;
    goto LABEL_23;
  }

  outlined init with take of AnyTrackedValue(&v45, v48);
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
  }

  if (lockAssertionsAreEnabled)
  {
    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      v14 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_23;
    }
  }

  if (ViewGraphRootValueUpdater.isRendering.getter(v6, v5) || (ObjectType = swift_getObjectType(), (*(v16 + 40))(ObjectType, v16)))
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = (*(v16 + 8))(ObjectType, v16);
    swift_beginAccess();
    if (!*(*(v19 + 144) + 16))
    {
      specialized static Update.begin()();
      v20 = (*(v16 + 32))(&v45, ObjectType, v16);
      *v21 = *v21 + interval;
      v20(&v45, 0);
      (*(v16 + 16))(&v45, ObjectType, v16);
      v22 = v45;
      LOBYTE(v45) = 2;
      v23 = *(v16 + 72);
      v23(&v45, ObjectType, v16);
      v41 = v22;
      ViewGraph.updateOutputsAsync(at:)(&v41, &v45);
      v24 = v45;
      if (v45)
      {
        v29 = WORD4(v45);
        v30 = HIDWORD(*(&v45 + 1));
        v31 = v46;
        swift_beginAccess();
        v25 = *(v19 + 376);
        v26 = ++static DisplayList.Version.lastValue;
        v32 = v49;
        v33 = v23;
        v27 = v50;
        __swift_project_boxed_opaque_existential_1(v48, v49);
        v41 = v24;
        v42 = v29;
        v43 = v30;
        v39 = v25;
        v40 = v22;
        v38 = v10;
        v36 = v31;
        v37 = v34;
        v35 = v26;
        (*(v27 + 8))(&v44, &v41, 1, &v40, &v39, &v37, &v36, &v35, v32, v27);

        v28 = v44;
        LOBYTE(v41) = 0;
        v33(&v41, ObjectType, v16);
        *v8 = v28;
        *(v8 + 8) = 0;
      }

      else
      {
        LOBYTE(v45) = 0;
        v23(&v45, ObjectType, v16);
        *v8 = 0;
        *(v8 + 8) = 1;
      }

      static Update.end()();

      swift_unknownObjectRelease();
      goto LABEL_13;
    }

    swift_unknownObjectRelease();
  }

  *v8 = 0;
  *(v8 + 8) = 1;
LABEL_13:
  v14 = __swift_destroy_boxed_opaque_existential_1(v48);
LABEL_23:
  result.value = *&v15;
  result.is_nil = v14;
  return result;
}

void ViewGraph.updateOutputsAsync(at:)(double *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v23[0] = *a1;
  ViewGraph.beginNextUpdate(at:)(v23);
  Attribute = AGWeakAttributeGetAttribute();
  v6 = *MEMORY[0x1E698D3F8];
  if (Attribute == *MEMORY[0x1E698D3F8] || (~AGGraphGetValueState() & 0x11) == 0 || (swift_beginAccess(), AGWeakAttributeGetAttribute() == v6) || (~AGGraphGetValueState() & 0x11) == 0 || (swift_beginAccess(), *(*(v3 + 352) + 16)) && (AGWeakAttributeGetAttribute() == v6 || (~AGGraphGetValueState() & 0x11) == 0))
  {
LABEL_18:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    swift_beginAccess();
    v7 = *(v3 + 228);
    if (v7)
    {
      v8 = *(v3 + 216);
      if (v8)
      {
        v9 = 0;
        v10 = v7 - 1;
        while (1)
        {
          v12 = (v8 + v9);
          if (v10)
          {
            v9 += *(v12 + 2);
          }

          else
          {
            v9 = 0;
          }

          v13 = *v12;
          v20 = v12;
          v14 = (*(v13 + 144))(&v20, v3);
          if (v14 == 2)
          {
            *(v12 + 3) |= 2u;
          }

          else
          {
            *(v12 + 3) &= ~2u;
            if ((v14 & 1) == 0)
            {
              goto LABEL_18;
            }
          }

          if (!(v10-- | v9))
          {
            goto LABEL_20;
          }
        }
      }
    }

    else
    {
LABEL_20:
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v15 = swift_beginAccess();
      if (*(v3 + 16))
      {
        MEMORY[0x1EEE9AC00](v15);
        v17 = v16;
        AGGraphWithMainThreadHandler();

        if (v20)
        {
          v18 = v22;
          v19 = v21 & 0xFFFFFFFF0000FFFFLL;
          *a2 = v20;
          a2[1] = v19;
          a2[2] = v18;
          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t static ViewGraphFeatureBuffer._VTable.allowsAsyncUpdate(elt:graph:)(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 176);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v2 + 184) + 40))(a2, v4);
}

double closure #2 in ViewGraph.updateOutputsAsync(at:)(uint64_t a1, uint64_t *a2)
{
  v34 = a2;
  v41 = *MEMORY[0x1E69E9840];
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  swift_beginAccess();
  swift_beginAccess();
  swift_beginAccess();
  v35 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  do
  {
    LOBYTE(v38[0]) = 1;
    specialized GraphHost.runTransaction(_:do:id:)(1uLL, 0x100000000uLL, a1);
    if (GraphHost.updatePreferences()())
    {
      v5 = 1;
      *(v37 + 16) = 1;
    }

    v7 = *(a1 + 352);

    v8 = specialized ViewGraphGeometryObservers.needsUpdate(graph:)(a1, v7);

    if (v8)
    {
      v35 = 1;
      *(v36 + 16) = 1;
    }

    v9 = *(a1 + 228);
    if (v9)
    {
      v10 = *(a1 + 216);
      if (v10)
      {
        v11 = 0;
        v12 = v9 - 1;
        while (1)
        {
          v14 = (v10 + v11);
          if (v12)
          {
            v11 += *(v14 + 2);
            v15 = *(v14 + 3);
            if ((v15 & 2) != 0)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v11 = 0;
            v15 = *(v14 + 3);
            if ((v15 & 2) != 0)
            {
              goto LABEL_10;
            }
          }

          if ((v15 & 1) == 0)
          {
            v16 = *v14;
            v38[0] = v14;
            if (((*(v16 + 152))(v38, a1) & 1) == 0)
            {
              goto LABEL_10;
            }

            *(v14 + 3) |= 1u;
          }

          v4 = 1;
          *(v3 + 16) = 1;
LABEL_10:
          if (!(v12-- | v11))
          {
            goto LABEL_18;
          }
        }
      }

LABEL_33:
      __break(1u);
    }

LABEL_18:
    ++v6;
    IsDirty = AGSubgraphIsDirty();
  }

  while (v6 != 8 && (IsDirty & 1) != 0);
  if (((v5 | v4 | v35) & 1) == 0)
  {

    goto LABEL_28;
  }

  MEMORY[0x1EEE9AC00](IsDirty);
  v30[2] = v3;
  v30[3] = a1;
  v31 = 1;
  v32 = v37;
  v33 = v36;
  if ([objc_opt_self() isMainThread])
  {
    update #1 () in ViewGraph.updateOutputs(async:)(v3, a1, 1, v37, v36);
    goto LABEL_27;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for update #1 () in ViewGraph.updateOutputs(async:);
  *(v18 + 24) = v30;
  v19 = AGSubgraphGetCurrent();
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v38[0] = partial apply for thunk for @callee_guaranteed () -> ();
  v38[1] = v18;
  v39 = v19;
  v40 = CurrentAttribute;
  v21 = one-time initialization token for _lock;

  if (v21 != -1)
  {
    swift_once();
  }

  _MovableLockSyncMain(static Update._lock, v38, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
  v22 = v39;

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_33;
  }

LABEL_27:
  --*(a1 + 368);

LABEL_28:

  type metadata accessor for (Path, FillStyle)(0, &lazy cache variable for type metadata for (DisplayList, DisplayList.Version), &type metadata for DisplayList, &type metadata for DisplayList.Version);
  WeakValue = AGGraphGetWeakValue();
  if (WeakValue)
  {
    v25 = *(WeakValue + 16);
    v26 = *(WeakValue + 8) | (*(WeakValue + 12) << 32);
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = MEMORY[0x1E69E7CC0];
  }

  v28 = v34;
  *v34 = v27;
  v28[1] = v26;
  v28[2] = v25;

  return result;
}

uint64_t *DisplayList.ViewUpdater.renderAsync(to:time:targetTimestamp:version:maxVersion:)@<X0>(uint64_t *result@<X0>, double *a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v66 = *MEMORY[0x1E69E9840];
  v8 = *result;
  v9 = *(result + 4);
  v32 = *(result + 3);
  v10 = *a2;
  v11 = *a5;
  if (*(v6 + 192) == 1)
  {
    if (*a4)
    {
      if (*(v6 + 146) != ((2 * ((33 * WORD1(*a4)) ^ *a4)) | 1))
      {
        goto LABEL_7;
      }
    }

    else if (*(v6 + 146))
    {
      goto LABEL_7;
    }

    v12 = *(v6 + 152);
    if (v12 >= v10)
    {
      *a6 = v12;
      *(a6 + 8) = 0;
      return result;
    }
  }

LABEL_7:
  v29 = *(a3 + 8);
  v30 = *a3;
  swift_beginAccess();
  value = printTree.value;
  if (printTree.value == 2)
  {
    v14 = getenv("SWIFTUI_PRINT_TREE");
    if (!v14)
    {
      printTree.value = 0;
      swift_endAccess();
      goto LABEL_14;
    }

    v15 = atoi(v14);
    printTree.value = v15 != 0;
    swift_endAccess();
    if (!v15)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  swift_endAccess();
  if (value)
  {
LABEL_12:
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_18DDA6EB0;
    *&v54 = 0;
    *(&v54 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(20);
    MEMORY[0x193ABEDD0](0x697620636E797341, 0xEE00207461207765);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](2618, 0xE200000000000000);
    *&v42 = v8;
    WORD4(v42) = v9;
    HIDWORD(v42) = v32;
    DisplayList.description.getter();
    MEMORY[0x193ABEDD0]();

    *(v16 + 56) = MEMORY[0x1E69E6158];
    *(v16 + 32) = 0;
    *(v16 + 40) = 0xE000000000000000;
    print(_:separator:terminator:)();
  }

LABEL_14:
  DisplayList.ViewUpdater.effectiveRootPlatform.getter(&v54);
  v17 = v54;
  v18 = *(v7 + 184);
  v19 = *(v7 + 160);
  v35[0] = v7;
  v35[1] = v18;
  v35[2] = v11;
  v35[3] = v19;
  v34[0] = v7;
  *&v34[1] = v10;
  v34[2] = v11;
  v34[3] = v19;
  v20 = one-time initialization token for normal;
  swift_retain_n();
  if (v20 != -1)
  {
    swift_once();
  }

  v21 = static GraphicsBlendMode.normal;
  v22 = byte_1ED52F818;
  *&v54 = v35;
  DWORD2(v54) = 1065353216;
  *&v55 = static GraphicsBlendMode.normal;
  BYTE8(v55) = byte_1ED52F818;
  v56 = 0x3FF0000000000000uLL;
  *&v57 = 0;
  *(&v57 + 1) = 0x3FF0000000000000;
  v58 = 0uLL;
  v23 = MEMORY[0x1E69E7CC0];
  *&v59 = MEMORY[0x1E69E7CC0];
  *(&v59 + 1) = MEMORY[0x1E69E7CC0];
  *&v60 = 0;
  *(&v60 + 7) = 0;
  *&v61 = 0xF000000000000007;
  *(&v61 + 1) = MEMORY[0x1E69E7CC0];
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v62 = 0u;
  *&v42 = v34;
  DWORD2(v42) = 1065353216;
  *&v43 = static GraphicsBlendMode.normal;
  BYTE8(v43) = byte_1ED52F818;
  v44 = 0x3FF0000000000000uLL;
  *&v45 = 0;
  *(&v45 + 1) = 0x3FF0000000000000;
  v46 = 0uLL;
  *&v47 = MEMORY[0x1E69E7CC0];
  *(&v47 + 1) = MEMORY[0x1E69E7CC0];
  *&v48 = 0;
  *(&v48 + 7) = 0;
  *&v49 = 0xF000000000000007;
  *(&v49 + 1) = MEMORY[0x1E69E7CC0];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0;
  swift_beginAccess();
  *(v7 + 104) = 0;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  *(v7 + 193) = *(v7 + 192);
  *(v7 + 192) = 1;
  v33 = v17;
  v24 = *(v7 + 176);
  v25 = *(v7 + 180);
  *&v38[0] = *(v7 + 168);
  WORD4(v38[0]) = v24;
  HIDWORD(v38[0]) = v25;
  *&v36[0] = v8;
  WORD4(v36[0]) = v9;
  HIDWORD(v36[0]) = v32;
  outlined copy of GraphicsBlendMode(v21, v22);
  outlined copy of GraphicsBlendMode(v21, v22);

  DisplayList.ViewUpdater.updateAsync(platform:oldList:oldParentState:newList:newParentState:)(&v33, v38, &v54, v36, &v42, &v40);

  v26 = v40;
  v27 = v41;
  if (v41)
  {
    *(v7 + 80) = MEMORY[0x1E69E7CC8];
    *(v7 + 96) = v23;

    *(v7 + 192) = *(v7 + 193);
  }

  else
  {
    *&v36[0] = v30;
    BYTE8(v36[0]) = v29;
    swift_beginAccess();
    v28 = v36;
    DisplayList.ViewUpdater.ViewCache.commitAsyncValues(targetTimestamp:)(*(&v28 - 1));
    swift_endAccess();

    *(v7 + 168) = v8;
    *(v7 + 176) = v9;
    *(v7 + 180) = v32;

    *(v7 + 184) = v10;
    *(v7 + 146) = *(v7 + 144);
    *(v7 + 152) = v26;
  }

  *a6 = v26;
  *(a6 + 8) = v27;
  v36[8] = v50;
  v36[9] = v51;
  v36[10] = v52;
  v37 = v53;
  v36[4] = v46;
  v36[5] = v47;
  v36[6] = v48;
  v36[7] = v49;
  v36[0] = v42;
  v36[1] = v43;
  v36[2] = v44;
  v36[3] = v45;
  outlined destroy of DisplayList.ViewUpdater.Model.State(v36);
  v38[8] = v62;
  v38[9] = v63;
  v38[10] = v64;
  v39 = v65;
  v38[4] = v58;
  v38[5] = v59;
  v38[6] = v60;
  v38[7] = v61;
  v38[0] = v54;
  v38[1] = v55;
  v38[2] = v56;
  v38[3] = v57;
  return outlined destroy of DisplayList.ViewUpdater.Model.State(v38);
}

void DisplayList.ViewUpdater.updateAsync(platform:oldList:oldParentState:newList:newParentState:)(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v44 = *a4;
  v45 = *a2;
  v7 = *(*a2 + 16);
  if (v7 == *(*a4 + 16))
  {
    v8 = v6;
    v39 = *a1;
    swift_beginAccess();
    if (v7)
    {
      v9 = 0;
      v10 = (v45 + 32);
      v11 = (v44 + 32);
      v12 = INFINITY;
      v38 = v7;
      while (v9 < *(v45 + 16))
      {
        v13 = v10[1];
        v14 = v10[2];
        v15 = v10[3];
        *&v98[12] = *(v10 + 60);
        v16 = *v10;
        *v98 = v15;
        v97[2] = v14;
        v97[0] = v16;
        v97[1] = v13;
        v17 = v10[3];
        v95 = v10[2];
        v96[0] = v17;
        *(v96 + 12) = *(v10 + 60);
        v18 = *v10;
        v94 = v10[1];
        v93 = v18;
        if (v9 >= *(v44 + 16))
        {
          goto LABEL_38;
        }

        v19 = v11[1];
        v20 = v11[2];
        v21 = v11[3];
        *&v100[12] = *(v11 + 60);
        v22 = *v11;
        v99[2] = v20;
        *v100 = v21;
        v99[0] = v22;
        v99[1] = v19;
        v23 = v11[3];
        v91 = v11[2];
        *v92 = v23;
        *&v92[12] = *(v11 + 60);
        v24 = *v11;
        v90 = v11[1];
        v89 = v24;
        if (*&v100[24] != *&v98[24])
        {
          v83 = v91;
          v84[0] = *v92;
          *(v84 + 12) = *&v92[12];
          v81 = v89;
          v82 = v90;
          outlined init with copy of DisplayList.Item(v97, &v85);
          outlined init with copy of DisplayList.Item(v99, &v85);
          outlined destroy of DisplayList.Item(&v81);
          v87 = v95;
          v88[0] = v96[0];
          *(v88 + 12) = *(v96 + 12);
          v86 = v94;
          v85 = v93;
          v36 = &v85;
LABEL_35:
          outlined destroy of DisplayList.Item(v36);
          *a6 = 0;
          *(a6 + 8) = 1;
          return;
        }

        v77[2] = v91;
        v78[0] = *v92;
        *(v78 + 12) = *&v92[12];
        v77[0] = v89;
        v77[1] = v90;
        v75 = v91;
        v76[0] = *v92;
        *(v76 + 12) = *&v92[12];
        v73 = v89;
        v74 = v90;
        *(v80 + 12) = *(v96 + 12);
        v79[2] = v95;
        v80[0] = v96[0];
        v79[0] = v93;
        v79[1] = v94;
        v71 = v95;
        v72[0] = v96[0];
        *(v72 + 12) = *(v96 + 12);
        v69 = v93;
        v70 = v94;
        outlined init with copy of DisplayList.Item(v97, v67);
        outlined init with copy of DisplayList.Item(v99, v67);
        outlined init with copy of DisplayList.Item(v77, v67);
        outlined init with copy of DisplayList.Item(v79, v67);
        v25 = DisplayList.Item.matchesTopLevelStructure(of:)(&v69);
        v83 = v71;
        v84[0] = v72[0];
        *(v84 + 12) = *(v72 + 12);
        v81 = v69;
        v82 = v70;
        outlined destroy of DisplayList.Item(&v81);
        v87 = v75;
        v88[0] = v76[0];
        *(v88 + 12) = *(v76 + 12);
        v86 = v74;
        v85 = v73;
        outlined destroy of DisplayList.Item(&v85);
        if (!v25)
        {
          v71 = v91;
          v72[0] = *v92;
          *(v72 + 12) = *&v92[12];
          v69 = v89;
          v70 = v90;
          outlined destroy of DisplayList.Item(&v69);
          v75 = v95;
          v76[0] = v96[0];
          *(v76 + 12) = *(v96 + 12);
          v73 = v93;
          v74 = v94;
          v36 = &v73;
          goto LABEL_35;
        }

        v26 = *&v92[24];
        v46 = v9;
        if (*&v92[24])
        {
          v27 = 0;
          v42 = *(v8 + 108);
          v43 = *(v8 + 104);
          v28 = *(v8 + 112);
          v47 = *(v8 + 120);
          v29 = 1;
          *(v8 + 104) = *&v92[24];
          *(v8 + 108) = 0;
        }

        else
        {
          v29 = 0;
          v26 = *(v8 + 104);
          v27 = *(v8 + 108) + 1;
          *(v8 + 108) = v27;
          v28 = *(v8 + 112);
          v47 = *(v8 + 120);
          v42 = v27;
          v43 = v26;
        }

        *(v8 + 120) = v29;
        *&v67[0] = v39;
        swift_beginAccess();
        DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v93, v67, a3, &v69);
        v30 = *&v69;
        *(v8 + 104) = v26;
        *(v8 + 108) = v27;
        *(v8 + 112) = v28;
        *(v8 + 120) = v29;
        *&v69 = v39;
        DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v89, &v69, a5, &v66);
        swift_endAccess();
        v60[2] = v95;
        v61[0] = v96[0];
        *(v61 + 12) = *(v96 + 12);
        v60[0] = v93;
        v60[1] = v94;
        v55 = v95;
        v56[0] = v96[0];
        *(v56 + 12) = *(v96 + 12);
        v53 = v93;
        v54 = v94;
        *(v63 + 12) = *&v92[12];
        v62[2] = v91;
        v63[0] = *v92;
        v62[0] = v89;
        v62[1] = v90;
        v31 = v66;
        v57 = v39;
        v51 = v91;
        v52[0] = *v92;
        *(v52 + 12) = *&v92[12];
        v49 = v89;
        v50 = v90;
        outlined init with copy of DisplayList.Item(v60, v48);
        outlined init with copy of DisplayList.Item(v62, v48);
        DisplayList.ViewUpdater.updateInheritedViewAsync(platform:oldItem:oldParentState:newItem:newParentState:)(&v57, &v53, a3, &v49, a5, &v58);
        v64[2] = v51;
        v65[0] = v52[0];
        *(v65 + 12) = *(v52 + 12);
        v64[0] = v49;
        v64[1] = v50;
        outlined destroy of DisplayList.Item(v64);
        v67[2] = v55;
        v68[0] = v56[0];
        *(v68 + 12) = *(v56 + 12);
        v67[0] = v53;
        v67[1] = v54;
        outlined destroy of DisplayList.Item(v67);
        v71 = v91;
        v72[0] = *v92;
        *(v72 + 12) = *&v92[12];
        v69 = v89;
        v70 = v90;
        outlined destroy of DisplayList.Item(&v69);
        v75 = v95;
        v76[0] = v96[0];
        *(v76 + 12) = *(v96 + 12);
        v73 = v93;
        v74 = v94;
        outlined destroy of DisplayList.Item(&v73);
        if (v59)
        {
          *a6 = v58;
          *(a6 + 8) = 1;
          *&v53 = __PAIR64__(v42, v43);
          *(&v53 + 1) = v28;
          LOBYTE(v54) = v47;
          DisplayList.Index.leave(index:)(&v53, v32);
          return;
        }

        if (v30 >= v12)
        {
          v33 = v12;
        }

        else
        {
          v33 = v30;
        }

        if (v31 < v33)
        {
          v33 = v31;
        }

        if (v33 <= v58)
        {
          v12 = v33;
        }

        else
        {
          v12 = v58;
        }

        v34 = *(v8 + 120);
        if ((v34 & 0xC) != 0)
        {
          v35 = *(v8 + 104);
          if ((*(v8 + 120) & 4) != 0)
          {
            *(v8 + 104) = *(v8 + 112);
          }

          if ((v34 & 8) != 0)
          {
            *(v8 + 112) = v35;
          }
        }

        if (v34)
        {
          *(v8 + 104) = v43;
          *(v8 + 108) = v42;
        }

        if ((v34 & 2) != 0)
        {
          *(v8 + 112) = v28;
        }

        ++v9;
        *(v8 + 120) = v47;
        v11 += 5;
        v10 += 5;
        if (v38 == v46 + 1)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
    }

    else
    {
      v12 = INFINITY;
LABEL_32:
      *a6 = v12;
      *(a6 + 8) = 0;
    }
  }

  else
  {
    *a6 = 0;
    *(a6 + 8) = 1;
  }
}

BOOL DisplayList.Item.matchesTopLevelStructure(of:)(void *a1)
{
  v2 = a1[5];
  v3 = a1[6];
  v5 = a1[7];
  v4 = a1[8];
  v7 = v1[5];
  v6 = v1[6];
  v9 = v1[7];
  v8 = v1[8];
  v10 = v8 >> 30;
  if (v8 >> 30 <= 1)
  {
    if (v10)
    {
      if ((a1[8] & 0xC0000000) == 0x40000000)
      {
        v30 = v1[5];
        outlined copy of DisplayList.Effect(v7, v6, SBYTE4(v6));
        outlined copy of DisplayList.Item.Value(v7, v6, v9, v8);
        outlined copy of DisplayList.Item.Value(v2, v3, v5, v4);
        outlined copy of DisplayList.Effect(v7, v6, SBYTE4(v6));
        outlined copy of DisplayList.Effect(v2, v3, SBYTE4(v3));
        EnumTag = AGTypeGetEnumTag();
        outlined consume of DisplayList.Effect(v30, v6, SBYTE4(v6));
        outlined copy of DisplayList.Effect(v2, v3, SBYTE4(v3));
        v27 = AGTypeGetEnumTag();
        outlined consume of DisplayList.Item.Value(v7, v6, v9, v8);
        outlined consume of DisplayList.Item.Value(v2, v3, v5, v4);
        outlined consume of DisplayList.Effect(v2, v3, SBYTE4(v3));
        outlined consume of DisplayList.Effect(v7, v6, SBYTE4(v6));
        outlined consume of DisplayList.Effect(v2, v3, SBYTE4(v3));
        return EnumTag == v27;
      }
    }

    else if ((v4 & 0xC0000000) == 0)
    {
      v29 = v1[5];
      outlined copy of DisplayList.Item.Value(v7, v6, v9, v8);
      outlined copy of DisplayList.Item.Value(v7, v6, v9, v8);
      outlined copy of DisplayList.Item.Value(v2, v3, v5, v4);
      v11 = AGTypeGetEnumTag();
      outlined consume of DisplayList.Content.Value(v29);
      outlined copy of DisplayList.Content.Value(v2);
      v12 = AGTypeGetEnumTag();
      outlined consume of DisplayList.Item.Value(v7, v6, v9, v8);
      outlined consume of DisplayList.Item.Value(v2, v3, v5, v4);
      outlined consume of DisplayList.Content.Value(v2);
      return v11 == v12;
    }

    goto LABEL_22;
  }

  if (v10 == 2)
  {
    if ((a1[8] & 0xC0000000) == 0x80000000)
    {
      v14 = *(v7 + 16);
      if (v14 == *(v2 + 16))
      {
        v15 = (v7 + 48);
        v16 = (v2 + 48);
        v17 = v14 + 1;
        while (--v17)
        {
          if (vminv_u16(vmovn_s32(vceqq_s32(v15[-1], v16[-1]))))
          {
            v19 = v15->i32[0];
            v15 = (v15 + 40);
            v18 = v19;
            v20 = v16->i32[0];
            v16 = (v16 + 40);
            if (v18 == v20)
            {
              continue;
            }
          }

          goto LABEL_22;
        }

        outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);
        outlined copy of DisplayList.Item.Value(v2, v3, v5, v4);
        outlined consume of DisplayList.Item.Value(v7, v6, v9, v8);
        v23 = v2;
        v24 = v3;
        v25 = v5;
        v26 = v4;
        goto LABEL_26;
      }
    }
  }

  else if ((~v4 & 0xC0000000) == 0 && (v3 | v2 | v5) == 0 && v4 == 3221225472)
  {
    outlined consume of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = -1073741824;
LABEL_26:
    outlined consume of DisplayList.Item.Value(v23, v24, v25, v26);
    return 1;
  }

LABEL_22:
  outlined copy of DisplayList.Item.Value(v1[5], v1[6], v1[7], v1[8]);
  outlined copy of DisplayList.Item.Value(v2, v3, v5, v4);
  outlined consume of DisplayList.Item.Value(v7, v6, v9, v8);
  outlined consume of DisplayList.Item.Value(v2, v3, v5, v4);
  return 0;
}

uint64_t getEnumTag for DisplayList.Effect(uint64_t a1)
{
  if (*(a1 + 12) <= 0x13u)
  {
    return *(a1 + 12);
  }

  else
  {
    return (*a1 + 20);
  }
}

void *DisplayList.ViewUpdater.updateInheritedViewAsync(platform:oldItem:oldParentState:newItem:newParentState:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v351 = *MEMORY[0x1E69E9840];
  v9 = a2[1];
  v10 = a2[3];
  v325 = a2[2];
  v326[0] = v10;
  *(v326 + 12) = *(a2 + 60);
  v11 = a2[1];
  v324[0] = *a2;
  v324[1] = v11;
  v12 = a4[3];
  v329 = a4[2];
  v330[0] = v12;
  *(v330 + 12) = *(a4 + 60);
  v13 = a4[1];
  v327 = *a4;
  v328 = v13;
  v321 = v9;
  v322 = v325;
  *v323 = a2[3];
  *&v323[12] = *(a2 + 60);
  v320 = v324[0];
  v14 = *(a3 + 144);
  v15 = *(a3 + 112);
  v338 = *(a3 + 128);
  v339 = v14;
  v16 = *(a3 + 144);
  v340 = *(a3 + 160);
  v17 = *(a3 + 80);
  v18 = *(a3 + 48);
  v334 = *(a3 + 64);
  v335 = v17;
  v19 = *(a3 + 80);
  v20 = *(a3 + 112);
  v336 = *(a3 + 96);
  v337 = v20;
  v21 = *(a3 + 16);
  v331[0] = *a3;
  v331[1] = v21;
  v22 = *(a3 + 48);
  v24 = *a3;
  v23 = *(a3 + 16);
  v332 = *(a3 + 32);
  v333 = v22;
  v316 = v338;
  v317 = v16;
  v318 = *(a3 + 160);
  v312 = v334;
  v313 = v19;
  v314 = v336;
  v315 = v15;
  v308 = v24;
  v309 = v23;
  v173 = *a1;
  v341 = *(a3 + 176);
  v319 = *(a3 + 176);
  v310 = v332;
  v311 = v18;
  swift_beginAccess();
  v25 = *(v6 + 120);
  v293 = *(v6 + 104);
  LOBYTE(v294) = v25;
  outlined init with copy of DisplayList.Item(v324, v342);
  outlined init with copy of DisplayList.ViewUpdater.Model.State(v331, v342);
  v26 = specialized static DisplayList.ViewUpdater.Model.merge(item:index:into:)(&v320, &v293, &v308);
  v306 = v328;
  *v307 = v329;
  *&v307[16] = v330[0];
  *&v307[28] = *(v330 + 12);
  v305 = v327;
  v27 = *a5;
  v28 = *(a5 + 16);
  v29 = *(a5 + 48);
  v342[2] = *(a5 + 32);
  v342[3] = v29;
  v30 = *(a5 + 16);
  v31 = *(a5 + 32);
  v32 = *a5;
  v342[0] = v27;
  v342[1] = v30;
  v33 = *(a5 + 80);
  v34 = *(a5 + 112);
  v345 = *(a5 + 96);
  v346 = v34;
  v35 = *(a5 + 80);
  v36 = *(a5 + 48);
  v343 = *(a5 + 64);
  v344 = v35;
  v37 = *(a5 + 144);
  v349 = *(a5 + 160);
  v38 = *(a5 + 144);
  v39 = *(a5 + 112);
  v347 = *(a5 + 128);
  v348 = v38;
  v301 = v347;
  v302 = v37;
  v303 = *(a5 + 160);
  v297 = v343;
  v298 = v33;
  v299 = v345;
  v300 = v39;
  v350 = *(a5 + 176);
  v304 = *(a5 + 176);
  v293 = v32;
  v294 = v28;
  v295 = v31;
  v296 = v36;
  v174 = v6;
  v40 = *(v6 + 120);
  v172 = (v6 + 104);
  v271 = *(v6 + 104);
  LOBYTE(v272) = v40;
  outlined init with copy of DisplayList.Item(&v327, &v282);
  outlined init with copy of DisplayList.ViewUpdater.Model.State(v342, &v282);
  if (v26 != specialized static DisplayList.ViewUpdater.Model.merge(item:index:into:)(&v305, &v271, &v293))
  {
    v269 = *v307;
    v270[0] = *&v307[16];
    *(v270 + 12) = *&v307[28];
    v267 = v305;
    v268 = v306;
    outlined destroy of DisplayList.Item(&v267);
    v278 = v301;
    v279 = v302;
    v280 = v303;
    v281 = v304;
    *&v274[16] = v297;
    v275 = v298;
    v276 = v299;
    v277 = v300;
    v271 = v293;
    v272 = v294;
    v273 = v295;
    *v274 = v296;
    outlined destroy of DisplayList.ViewUpdater.Model.State(&v271);
    v289 = v316;
    v290 = v317;
    v291 = v318;
    v292 = v319;
    *&v285[16] = v312;
    v286 = v313;
    v287 = v314;
    v288 = v315;
    v282 = v308;
    v283 = v309;
    v284 = v310;
    *v285 = v311;
    outlined destroy of DisplayList.ViewUpdater.Model.State(&v282);
    *a6 = 0;
    *(a6 + 8) = 1;
    goto LABEL_121;
  }

  if ((v26 & 2) != 0)
  {
    v257 = v322;
    v258[0] = *v323;
    *(v258 + 12) = *&v323[12];
    v255 = v320;
    v256 = v321;
    v284 = v322;
    *v285 = *v323;
    *&v285[12] = *&v323[12];
    v282 = v320;
    v283 = v321;
    v259 = v305;
    *(v262 + 12) = *&v307[28];
    v261 = *v307;
    v262[0] = *&v307[16];
    v260 = v306;
    v272 = v306;
    v273 = *v307;
    *v274 = *&v307[16];
    *&v274[12] = *&v307[28];
    v271 = v305;
    *&v243 = v173;
    swift_beginAccess();
    outlined init with copy of DisplayList.Item(&v255, &v251);
    outlined init with copy of DisplayList.Item(&v259, &v251);
    DisplayList.ViewUpdater.ViewCache.updateAsync(oldItem:oldState:newItem:newState:tag:platform:)(&v282, a3, &v271, a5, 1, &v243, v208);
    swift_endAccess();
    v265 = v273;
    *v266 = *v274;
    *&v266[12] = *&v274[12];
    v263 = v271;
    v264 = v272;
    outlined destroy of DisplayList.Item(&v263);
    v269 = v284;
    v270[0] = *v285;
    *(v270 + 12) = *&v285[12];
    v267 = v282;
    v268 = v283;
    outlined destroy of DisplayList.Item(&v267);
    if ((v209 & 0xFF00) == 0x200)
    {
      v253 = *v307;
      v254[0] = *&v307[16];
      *(v254 + 12) = *&v307[28];
      v251 = v305;
      v252 = v306;
      outlined destroy of DisplayList.Item(&v251);
      v278 = v301;
      v279 = v302;
      v280 = v303;
      v281 = v304;
      *&v274[16] = v297;
      v275 = v298;
      v276 = v299;
      v277 = v300;
      v271 = v293;
      v272 = v294;
      v273 = v295;
      *v274 = v296;
      outlined destroy of DisplayList.ViewUpdater.Model.State(&v271);
      v289 = v316;
      v290 = v317;
      v291 = v318;
      v292 = v319;
      *&v285[16] = v312;
      v286 = v313;
      v287 = v314;
      v288 = v315;
      v282 = v308;
      v283 = v309;
      v284 = v310;
      *v285 = v311;
      outlined destroy of DisplayList.ViewUpdater.Model.State(&v282);
      v53 = a6;
      *a6 = 0;
LABEL_15:
      *(v53 + 8) = 1;
      goto LABEL_121;
    }

    v71 = v212;
    v72 = v210;
    v178[0] = v208[0];
    v178[1] = v208[1];
    v178[2] = v208[2];
    v179 = v209 & 0x1FF;
    v180 = v210 & 1;
    v181 = v211 & 1;
    v182 = v212;
    *(v6 + 192) &= v211 & 1;
    if ((v72 & 1) == 0)
    {
      v85 = v71;
      if ((*&v323[16] & 0xC0000000) == 0x40000000)
      {
        v86 = *&v323[8];
        swift_beginAccess();
        v87 = *(v86 + 16);
        if (v87)
        {
          v88 = *(v86 + 48);
          v89 = *(v86 + 80);
          v284 = *(v86 + 64);
          *v285 = v89;
          *&v285[12] = *(v86 + 92);
          v282 = *(v86 + 32);
          v283 = v88;
          DisplayList.Index.skip(item:)(&v282);
          v90 = v87 - 1;
          if (v90)
          {
            v91 = (v86 + 112);
            do
            {
              v283 = v91[1];
              v284 = v91[2];
              *v285 = v91[3];
              *&v285[12] = *(v91 + 60);
              v92 = *v91;
              v91 += 5;
              v282 = v92;
              DisplayList.Index.skip(item:)(&v282);
              --v90;
            }

            while (v90);
          }
        }

        swift_endAccess();
      }

      v253 = *v307;
      v254[0] = *&v307[16];
      *(v254 + 12) = *&v307[28];
      v251 = v305;
      v252 = v306;
      outlined destroy of DisplayList.Item(&v251);
      v278 = v301;
      v279 = v302;
      v280 = v303;
      v281 = v304;
      *&v274[16] = v297;
      v275 = v298;
      v276 = v299;
      v277 = v300;
      v271 = v293;
      v272 = v294;
      v273 = v295;
      *v274 = v296;
      outlined destroy of DisplayList.ViewUpdater.Model.State(&v271);
      v289 = v316;
      v290 = v317;
      v291 = v318;
      v292 = v319;
      *&v285[16] = v312;
      v286 = v313;
      v287 = v314;
      v288 = v315;
      v282 = v308;
      v283 = v309;
      v284 = v310;
      *v285 = v311;
      outlined destroy of DisplayList.ViewUpdater.Model.State(&v282);
      v53 = a6;
      goto LABEL_79;
    }

    if (v26 & 4) != 0 || (swift_beginAccess(), v284 = *v307, *v285 = *&v307[16], *&v285[12] = *&v307[28], v282 = v305, v283 = v306, DisplayList.Item.features.getter(&v271), (v271))
    {
      if (v26)
      {
        *&v227 = v173;
        swift_beginAccess();
        v248 = v321;
        v249 = v322;
        *v250 = *v323;
        *&v250[12] = *&v323[12];
        v247 = v320;
        v245 = v322;
        v246[0] = *v323;
        *(v246 + 12) = *&v323[12];
        v243 = v320;
        v244 = v321;
        swift_beginAccess();
        v253 = *v307;
        v254[0] = *&v307[16];
        *(v254 + 12) = *&v307[28];
        v251 = v305;
        v252 = v306;
        v241 = *v307;
        v242[0] = *&v307[16];
        *(v242 + 12) = *&v307[28];
        v239 = v305;
        v240 = v306;
        outlined init with copy of DisplayList.Item(&v247, &v282);
        outlined init with copy of DisplayList.Item(&v251, &v282);
        DisplayList.ViewUpdater.updateItemViewAsync(platform:oldItem:oldState:newItem:newState:)(&v227, &v243, &v308, &v239, &v293, &v206);
        v273 = v241;
        *v274 = v242[0];
        *&v274[12] = *(v242 + 12);
        v271 = v239;
        v272 = v240;
        outlined destroy of DisplayList.Item(&v271);
        v284 = v245;
        *v285 = v246[0];
        *&v285[12] = *(v246 + 12);
        v282 = v243;
        v283 = v244;
        outlined destroy of DisplayList.Item(&v282);
        v74 = v206;
        v53 = a6;
        if ((v207 & 1) == 0)
        {
LABEL_78:
          *&v243 = v74;
          swift_beginAccess();
          DisplayList.ViewUpdater.ViewCache.setNextUpdate(_:in:)(&v243, v178);
          swift_endAccess();
          v253 = *v307;
          v254[0] = *&v307[16];
          *(v254 + 12) = *&v307[28];
          v251 = v305;
          v252 = v306;
          outlined destroy of DisplayList.Item(&v251);
          v278 = v301;
          v279 = v302;
          v280 = v303;
          v281 = v304;
          *&v274[16] = v297;
          v275 = v298;
          v276 = v299;
          v277 = v300;
          v271 = v293;
          v272 = v294;
          v273 = v295;
          *v274 = v296;
          outlined destroy of DisplayList.ViewUpdater.Model.State(&v271);
          v289 = v316;
          v290 = v317;
          v291 = v318;
          v292 = v319;
          *&v285[16] = v312;
          v286 = v313;
          v287 = v314;
          v288 = v315;
          v282 = v308;
          v283 = v309;
          v284 = v310;
          *v285 = v311;
          outlined destroy of DisplayList.ViewUpdater.Model.State(&v282);
          v85 = v182;
LABEL_79:
          *v53 = v85;
          *(v53 + 8) = 0;
          goto LABEL_121;
        }
      }

      else
      {
        swift_beginAccess();
        v113 = *(&v322 + 1);
        v114 = *v323;
        v115 = *&v323[8];
        v116 = *&v323[16];
        swift_beginAccess();
        v117 = *&v307[8];
        v118 = *&v307[16];
        v119 = *&v307[24];
        v120 = *&v307[32];
        v198 = *&v113;
        v199 = v114;
        v200 = v115;
        v201 = v116;
        v202 = *&v307[8];
        v203 = *&v307[16];
        v204 = *&v307[24];
        v205 = *&v307[32];
        if ((v116 & 0xC0000000) != 0x40000000 || (*&v307[32] & 0xC0000000) != 0x40000000)
        {
          outlined copy of DisplayList.Item.Value(v113, v114, v115, v116);
          outlined copy of DisplayList.Item.Value(v117, v118, v119, v120);
          outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v198, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
LABEL_77:
          v74 = 0x7FF0000000000000;
          v53 = a6;
          goto LABEL_78;
        }

        v121 = *(*&v307[24] + 16);
        v122 = v113;
        v123 = *(v115 + 16);
        v124 = v116;
        v125 = *&v307[24];
        outlined copy of DisplayList.Item.Value(v122, v114, v115, v124);
        outlined copy of DisplayList.Item.Value(v117, v118, v125, v120);
        if (v123 != v121)
        {

          outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v198, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
          v74 = 0;
          v151 = 1;
          v53 = a6;
          goto LABEL_130;
        }

        v160 = v125;
        v162 = v115;
        if (v123)
        {
          v126 = v125;
          v127 = 0;
          v128 = (v115 + 32);
          v129 = (v126 + 32);
          v130 = INFINITY;
          v53 = a6;
          v158 = v123;
          while (1)
          {
            if (v127 >= *(v162 + 16))
            {
              goto LABEL_134;
            }

            v131 = v128[1];
            v132 = v128[2];
            v133 = v128[3];
            *&v274[12] = *(v128 + 60);
            v134 = *v128;
            v273 = v132;
            *v274 = v133;
            v271 = v134;
            v272 = v131;
            v252 = v128[1];
            v253 = v128[2];
            v254[0] = v128[3];
            *(v254 + 12) = *(v128 + 60);
            v251 = *v128;
            if (v127 >= *(v160 + 16))
            {
              goto LABEL_135;
            }

            v135 = v129[1];
            v136 = v129[2];
            v137 = v129[3];
            *&v285[12] = *(v129 + 60);
            v138 = *v129;
            v284 = v136;
            *v285 = v137;
            v282 = v138;
            v283 = v135;
            v248 = v129[1];
            v249 = v129[2];
            *v250 = v129[3];
            *&v250[12] = *(v129 + 60);
            v247 = *v129;
            if (*&v285[24] != *&v274[24])
            {
              break;
            }

            v171 = v127;
            v233 = v249;
            v234[0] = *v250;
            *(v234 + 12) = *&v250[12];
            v231 = v247;
            v232 = v248;
            v229 = v249;
            v230[0] = *v250;
            *(v230 + 12) = *&v250[12];
            v227 = v247;
            v228 = v248;
            v235 = v251;
            *(v238 + 12) = *(v254 + 12);
            v237 = v253;
            v238[0] = v254[0];
            v236 = v252;
            v224 = v252;
            v225 = v253;
            v226[0] = v254[0];
            *(v226 + 12) = *(v254 + 12);
            v223 = v251;
            outlined init with copy of DisplayList.Item(&v271, &v219);
            outlined init with copy of DisplayList.Item(&v282, &v219);
            outlined init with copy of DisplayList.Item(&v231, &v219);
            outlined init with copy of DisplayList.Item(&v235, &v219);
            v139 = DisplayList.Item.matchesTopLevelStructure(of:)(&v223);
            v241 = v225;
            v242[0] = v226[0];
            *(v242 + 12) = *(v226 + 12);
            v239 = v223;
            v240 = v224;
            outlined destroy of DisplayList.Item(&v239);
            v245 = v229;
            v246[0] = v230[0];
            *(v246 + 12) = *(v230 + 12);
            v243 = v227;
            v244 = v228;
            outlined destroy of DisplayList.Item(&v243);
            if (!v139)
            {
              v225 = v249;
              v226[0] = *v250;
              *(v226 + 12) = *&v250[12];
              v223 = v247;
              v224 = v248;
              outlined destroy of DisplayList.Item(&v223);
              v229 = v253;
              v230[0] = v254[0];
              *(v230 + 12) = *(v254 + 12);
              v227 = v251;
              v228 = v252;
              v154 = &v227;
              goto LABEL_128;
            }

            v140 = *&v250[24];
            if (*&v250[24])
            {
              v141 = 0;
              v142 = v174;
              v164 = *(v174 + 108);
              v166 = *(v174 + 104);
              v143 = *(v174 + 112);
              v169 = *(v174 + 120);
              v144 = 1;
              *(v174 + 104) = *&v250[24];
            }

            else
            {
              v144 = 0;
              v142 = v174;
              v140 = *(v174 + 104);
              v141 = *(v174 + 108) + 1;
              v143 = *(v174 + 112);
              v169 = *(v174 + 120);
              v164 = v141;
              v166 = v140;
            }

            *(v142 + 108) = v141;
            *(v142 + 120) = v144;
            *&v219 = v173;
            swift_beginAccess();
            DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v251, &v219, &v308, &v223);
            v145 = *&v223;
            *(v142 + 104) = v140;
            *(v142 + 108) = v141;
            *(v142 + 112) = v143;
            *(v142 + 120) = v144;
            *&v223 = v173;
            DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v247, &v223, &v293, &v177);
            swift_endAccess();
            v146 = v177;
            v176 = v173;
            v196 = v253;
            *v197 = v254[0];
            *&v197[12] = *(v254 + 12);
            v194 = v251;
            v195 = v252;
            v190 = v253;
            v191[0] = v254[0];
            *(v191 + 12) = *(v254 + 12);
            v188 = v251;
            v189 = v252;
            v213[0] = v247;
            *(v214 + 12) = *&v250[12];
            v213[2] = v249;
            v214[0] = *v250;
            v213[1] = v248;
            v186 = v249;
            v187[0] = *v250;
            *(v187 + 12) = *&v250[12];
            v184 = v247;
            v185 = v248;
            outlined init with copy of DisplayList.Item(&v194, v183);
            outlined init with copy of DisplayList.Item(v213, v183);
            DisplayList.ViewUpdater.updateInheritedViewAsync(platform:oldItem:oldParentState:newItem:newParentState:)(&v176, &v188, &v308, &v184, &v293, &v192);
            v217 = v186;
            v218[0] = v187[0];
            *(v218 + 12) = *(v187 + 12);
            v215 = v184;
            v216 = v185;
            outlined destroy of DisplayList.Item(&v215);
            v221 = v190;
            v222[0] = v191[0];
            *(v222 + 12) = *(v191 + 12);
            v219 = v188;
            v220 = v189;
            outlined destroy of DisplayList.Item(&v219);
            v225 = v249;
            v226[0] = *v250;
            *(v226 + 12) = *&v250[12];
            v223 = v247;
            v224 = v248;
            outlined destroy of DisplayList.Item(&v223);
            v229 = v253;
            v230[0] = v254[0];
            *(v230 + 12) = *(v254 + 12);
            v227 = v251;
            v228 = v252;
            outlined destroy of DisplayList.Item(&v227);
            v74 = *&v192;
            if (v193)
            {
              *&v188 = __PAIR64__(v164, v166);
              *(&v188 + 1) = v143;
              LOBYTE(v189) = v169;
              DisplayList.Index.leave(index:)(&v188, v147);
              outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v198, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
              v151 = 1;
              v53 = a6;
              goto LABEL_130;
            }

            if (v145 >= v130)
            {
              v148 = v130;
            }

            else
            {
              v148 = v145;
            }

            if (v146 < v148)
            {
              v148 = v146;
            }

            if (v148 <= v192)
            {
              v130 = v148;
            }

            else
            {
              v130 = v192;
            }

            v149 = *(v142 + 120);
            v53 = a6;
            if ((v149 & 0xC) != 0)
            {
              v150 = *v172;
              if ((*(v142 + 120) & 4) != 0)
              {
                *(v142 + 104) = *(v142 + 112);
              }

              if ((v149 & 8) != 0)
              {
                *(v142 + 112) = v150;
              }
            }

            if (v149)
            {
              *(v142 + 104) = v166;
              *(v142 + 108) = v164;
            }

            if ((v149 & 2) != 0)
            {
              *(v142 + 112) = v143;
            }

            v127 = v171 + 1;
            *(v142 + 120) = v169;
            v129 += 5;
            v128 += 5;
            if (v158 == v171 + 1)
            {
              goto LABEL_125;
            }
          }

          v241 = v249;
          v242[0] = *v250;
          *(v242 + 12) = *&v250[12];
          v239 = v247;
          v240 = v248;
          outlined init with copy of DisplayList.Item(&v271, &v243);
          outlined init with copy of DisplayList.Item(&v282, &v243);
          outlined destroy of DisplayList.Item(&v239);
          v245 = v253;
          v246[0] = v254[0];
          *(v246 + 12) = *(v254 + 12);
          v243 = v251;
          v244 = v252;
          v154 = &v243;
LABEL_128:
          outlined destroy of DisplayList.Item(v154);
          outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v198, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
          v74 = 0;
          v151 = 1;
          goto LABEL_130;
        }

        v130 = INFINITY;
        v53 = a6;
LABEL_125:
        outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v198, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
        v151 = 0;
        v74 = *&v130;
LABEL_130:

        if ((v151 & 1) == 0)
        {
          goto LABEL_78;
        }
      }
    }

    else
    {
      swift_beginAccess();
      v284 = v322;
      *v285 = *v323;
      *&v285[12] = *&v323[12];
      v282 = v320;
      v283 = v321;
      DisplayList.Item.features.getter(&v251);
      v73 = v251;
      v273 = *v307;
      *v274 = *&v307[16];
      *&v274[12] = *&v307[28];
      v271 = v305;
      v272 = v306;
      DisplayList.Item.features.getter(&v243);
      v74 = 0;
      v53 = a6;
      if (v73 == v243)
      {
        if ((*&v323[16] & 0xC0000000) != 0x40000000)
        {
          v74 = 0x7FF0000000000000;
          goto LABEL_78;
        }

        v75 = *&v323[8];
        v76 = *(&v322 + 1);
        v77 = *v323;
        v78 = HIDWORD(*v323);
        swift_beginAccess();
        v79 = *(v75 + 16);
        if (v79)
        {
          outlined copy of DisplayList.Effect(v76, v77, v78);

          v80 = *(v75 + 48);
          v81 = *(v75 + 80);
          v284 = *(v75 + 64);
          *v285 = v81;
          *&v285[12] = *(v75 + 92);
          v282 = *(v75 + 32);
          v283 = v80;
          DisplayList.Index.skip(item:)(&v282);
          v82 = v79 - 1;
          if (v82)
          {
            v83 = (v75 + 112);
            do
            {
              v283 = v83[1];
              v284 = v83[2];
              *v285 = v83[3];
              *&v285[12] = *(v83 + 60);
              v84 = *v83;
              v83 += 5;
              v282 = v84;
              DisplayList.Index.skip(item:)(&v282);
              --v82;
            }

            while (v82);
          }
        }

        else
        {
          outlined copy of DisplayList.Effect(v76, v77, v78);
        }

        swift_endAccess();

        *&v271 = v76;
        DWORD2(v271) = v77;
        BYTE12(v271) = v78;
        swift_beginAccess();
        DisplayList.Index.skip(effect:)(&v271);
        swift_endAccess();
        outlined consume of DisplayList.Effect(v76, v77, v78);
        goto LABEL_77;
      }
    }

    v253 = *v307;
    v254[0] = *&v307[16];
    *(v254 + 12) = *&v307[28];
    v251 = v305;
    v252 = v306;
    outlined destroy of DisplayList.Item(&v251);
    v278 = v301;
    v279 = v302;
    v280 = v303;
    v281 = v304;
    *&v274[16] = v297;
    v275 = v298;
    v276 = v299;
    v277 = v300;
    v271 = v293;
    v272 = v294;
    v273 = v295;
    *v274 = v296;
    outlined destroy of DisplayList.ViewUpdater.Model.State(&v271);
    v289 = v316;
    v290 = v317;
    v291 = v318;
    v292 = v319;
    *&v285[16] = v312;
    v286 = v313;
    v287 = v314;
    v288 = v315;
    v282 = v308;
    v283 = v309;
    v284 = v310;
    *v285 = v311;
    outlined destroy of DisplayList.ViewUpdater.Model.State(&v282);
    *v53 = v74;
    goto LABEL_15;
  }

  if ((v26 & 4) == 0)
  {
    swift_beginAccess();
    v284 = *v307;
    *v285 = *&v307[16];
    *&v285[12] = *&v307[28];
    v282 = v305;
    v283 = v306;
    DisplayList.Item.features.getter(&v271);
    if ((v271 & 1) == 0)
    {
      swift_beginAccess();
      v284 = v322;
      *v285 = *v323;
      *&v285[12] = *&v323[12];
      v282 = v320;
      v283 = v321;
      DisplayList.Item.features.getter(&v263);
      v41 = v263;
      v273 = *v307;
      *v274 = *&v307[16];
      *&v274[12] = *&v307[28];
      v271 = v305;
      v272 = v306;
      DisplayList.Item.features.getter(&v259);
      v42 = a6;
      if (v41 == v259)
      {
        if ((*&v323[16] & 0xC0000000) == 0x40000000)
        {
          v43 = *&v323[8];
          v44 = *(&v322 + 1);
          v45 = *v323;
          v46 = HIDWORD(*v323);
          swift_beginAccess();
          v47 = *(v43 + 16);
          if (v47)
          {
            outlined copy of DisplayList.Effect(v44, v45, v46);

            v48 = *(v43 + 48);
            v49 = *(v43 + 80);
            v284 = *(v43 + 64);
            *v285 = v49;
            *&v285[12] = *(v43 + 92);
            v282 = *(v43 + 32);
            v283 = v48;
            DisplayList.Index.skip(item:)(&v282);
            v50 = v47 - 1;
            if (v50)
            {
              v51 = (v43 + 112);
              do
              {
                v283 = v51[1];
                v284 = v51[2];
                *v285 = v51[3];
                *&v285[12] = *(v51 + 60);
                v52 = *v51;
                v51 += 5;
                v282 = v52;
                DisplayList.Index.skip(item:)(&v282);
                --v50;
              }

              while (v50);
            }
          }

          else
          {
            outlined copy of DisplayList.Effect(v44, v45, v46);
          }

          swift_endAccess();

          *&v271 = v44;
          DWORD2(v271) = v45;
          BYTE12(v271) = v46;
          swift_beginAccess();
          DisplayList.Index.skip(effect:)(&v271);
          swift_endAccess();
          v284 = *v307;
          *v285 = *&v307[16];
          *&v285[12] = *&v307[28];
          v282 = v305;
          v283 = v306;
          outlined destroy of DisplayList.Item(&v282);
          outlined consume of DisplayList.Effect(v44, v45, v46);
          v42 = a6;
        }

        else
        {
          v284 = *v307;
          *v285 = *&v307[16];
          *&v285[12] = *&v307[28];
          v282 = v305;
          v283 = v306;
          outlined destroy of DisplayList.Item(&v282);
        }

        *v42 = 0x7FF0000000000000;
        *(v42 + 8) = 0;
      }

      else
      {
        v284 = *v307;
        *v285 = *&v307[16];
        *&v285[12] = *&v307[28];
        v282 = v305;
        v283 = v306;
        outlined destroy of DisplayList.Item(&v282);
        *a6 = 0;
        *(a6 + 8) = 1;
      }

      goto LABEL_120;
    }
  }

  if (v26)
  {
    *&v239 = v173;
    swift_beginAccess();
    v261 = v322;
    v262[0] = *v323;
    *(v262 + 12) = *&v323[12];
    v259 = v320;
    v260 = v321;
    v257 = v322;
    v258[0] = *v323;
    *(v258 + 12) = *&v323[12];
    v255 = v320;
    v256 = v321;
    swift_beginAccess();
    v265 = *v307;
    *v266 = *&v307[16];
    *&v266[12] = *&v307[28];
    v263 = v305;
    v264 = v306;
    v253 = *v307;
    v254[0] = *&v307[16];
    *(v254 + 12) = *&v307[28];
    v251 = v305;
    v252 = v306;
    outlined init with copy of DisplayList.Item(&v259, &v282);
    outlined init with copy of DisplayList.Item(&v263, &v282);
    DisplayList.ViewUpdater.updateItemViewAsync(platform:oldItem:oldState:newItem:newState:)(&v239, &v255, &v308, &v251, &v293, a6);
    v269 = *v307;
    v270[0] = *&v307[16];
    *(v270 + 12) = *&v307[28];
    v267 = v305;
    v268 = v306;
    outlined destroy of DisplayList.Item(&v267);
    v273 = v253;
    *v274 = v254[0];
    *&v274[12] = *(v254 + 12);
    v271 = v251;
    v272 = v252;
    outlined destroy of DisplayList.Item(&v271);
    v284 = v257;
    *v285 = v258[0];
    *&v285[12] = *(v258 + 12);
    v282 = v255;
    v283 = v256;
    outlined destroy of DisplayList.Item(&v282);
    goto LABEL_120;
  }

  swift_beginAccess();
  v54 = *(&v322 + 1);
  v55 = *v323;
  v56 = *&v323[8];
  v57 = *&v323[16];
  swift_beginAccess();
  v58 = v56;
  v59 = *&v307[8];
  v60 = *&v307[16];
  v61 = *&v307[32];
  *&v194 = v54;
  *(&v194 + 1) = v55;
  *&v195 = v58;
  *(&v195 + 1) = v57;
  v196 = *&v307[8];
  v170 = *&v307[24];
  *v197 = *&v307[24];
  *&v197[8] = *&v307[32];
  if ((v57 & 0xC0000000) != 0x40000000 || (*&v307[32] & 0xC0000000) != 0x40000000)
  {
    outlined copy of DisplayList.Item.Value(v54, v55, v58, v57);
    outlined copy of DisplayList.Item.Value(v59, v60, v170, v61);
    outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v194, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
    v284 = *v307;
    *v285 = *&v307[16];
    *&v285[12] = *&v307[28];
    v282 = v305;
    v283 = v306;
    outlined destroy of DisplayList.Item(&v282);
    *a6 = 0x7FF0000000000000;
    *(a6 + 8) = 0;
    goto LABEL_120;
  }

  v159 = *(v58 + 16);
  v167 = *(*&v307[24] + 16);
  v62 = v54;
  v63 = v55;
  v64 = *&v307[24];
  v65 = v58;
  outlined copy of DisplayList.Item.Value(v62, v63, v58, v57);
  outlined copy of DisplayList.Item.Value(v59, v60, v170, v61);
  if (v159 != v167)
  {

    outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v194, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
    *a6 = 0;
    *(a6 + 8) = 1;
    goto LABEL_119;
  }

  v66 = a6;
  if (!v159)
  {
    v70 = INFINITY;
LABEL_112:
    outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v194, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
    *v66 = v70;
    *(v66 + 8) = 0;
    goto LABEL_119;
  }

  v67 = 0;
  v68 = (v65 + 32);
  v69 = (v170 + 32);
  v70 = INFINITY;
  v155 = v65;
  while (1)
  {
    if (v67 >= *(v65 + 16))
    {
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
    }

    v93 = v68[1];
    v94 = v68[2];
    v95 = v68[3];
    *&v274[12] = *(v68 + 60);
    v96 = *v68;
    v273 = v94;
    *v274 = v95;
    v271 = v96;
    v272 = v93;
    v268 = v68[1];
    v269 = v68[2];
    v270[0] = v68[3];
    *(v270 + 12) = *(v68 + 60);
    v267 = *v68;
    if (v67 >= *(v64 + 16))
    {
      goto LABEL_133;
    }

    v97 = v69[1];
    v98 = v69[2];
    v99 = v69[3];
    *&v285[12] = *(v69 + 60);
    v100 = *v69;
    v284 = v98;
    *v285 = v99;
    v282 = v100;
    v283 = v97;
    v264 = v69[1];
    v265 = v69[2];
    *v266 = v69[3];
    *&v266[12] = *(v69 + 60);
    v263 = *v69;
    if (*&v285[24] != *&v274[24])
    {
      v257 = v265;
      v258[0] = *v266;
      *(v258 + 12) = *&v266[12];
      v255 = v263;
      v256 = v264;
      outlined init with copy of DisplayList.Item(&v271, &v259);
      outlined init with copy of DisplayList.Item(&v282, &v259);
      outlined destroy of DisplayList.Item(&v255);
      v261 = v269;
      v262[0] = v270[0];
      *(v262 + 12) = *(v270 + 12);
      v259 = v267;
      v260 = v268;
      v152 = &v259;
      goto LABEL_117;
    }

    v165 = v69;
    v168 = v68;
    v249 = v265;
    *v250 = *v266;
    *&v250[12] = *&v266[12];
    v247 = v263;
    v248 = v264;
    v245 = v265;
    v246[0] = *v266;
    *(v246 + 12) = *&v266[12];
    v243 = v263;
    v244 = v264;
    *(v254 + 12) = *(v270 + 12);
    v253 = v269;
    v254[0] = v270[0];
    v251 = v267;
    v252 = v268;
    v241 = v269;
    v242[0] = v270[0];
    *(v242 + 12) = *(v270 + 12);
    v239 = v267;
    v240 = v268;
    outlined init with copy of DisplayList.Item(&v271, &v235);
    outlined init with copy of DisplayList.Item(&v282, &v235);
    outlined init with copy of DisplayList.Item(&v247, &v235);
    outlined init with copy of DisplayList.Item(&v251, &v235);
    v101 = DisplayList.Item.matchesTopLevelStructure(of:)(&v239);
    v257 = v241;
    v258[0] = v242[0];
    *(v258 + 12) = *(v242 + 12);
    v255 = v239;
    v256 = v240;
    outlined destroy of DisplayList.Item(&v255);
    v261 = v245;
    v262[0] = v246[0];
    *(v262 + 12) = *(v246 + 12);
    v259 = v243;
    v260 = v244;
    outlined destroy of DisplayList.Item(&v259);
    if (!v101)
    {
      break;
    }

    v161 = v67;
    v102 = *&v266[24];
    if (*&v266[24])
    {
      v103 = 0;
      v104 = v174;
      v156 = *(v174 + 108);
      v157 = *(v174 + 104);
      v105 = *(v174 + 112);
      v163 = *(v174 + 120);
      v106 = 1;
      *(v174 + 104) = *&v266[24];
    }

    else
    {
      v106 = 0;
      v104 = v174;
      v102 = *(v174 + 104);
      v103 = *(v174 + 108) + 1;
      v105 = *(v174 + 112);
      v163 = *(v174 + 120);
      v156 = v103;
      v157 = v102;
    }

    *(v104 + 108) = v103;
    *(v104 + 120) = v106;
    *&v235 = v173;
    swift_beginAccess();
    DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v267, &v235, &v308, &v239);
    v107 = *&v239;
    *(v104 + 104) = v102;
    *(v104 + 108) = v103;
    *(v104 + 112) = v105;
    *(v104 + 120) = v106;
    *&v239 = v173;
    DisplayList.ViewUpdater.ViewCache.prepare(item:platform:parentState:)(&v263, &v239, &v293, v178);
    swift_endAccess();
    v108 = *v178;
    v208[0] = v173;
    v225 = v269;
    v226[0] = v270[0];
    *(v226 + 12) = *(v270 + 12);
    v223 = v267;
    v224 = v268;
    v221 = v269;
    v222[0] = v270[0];
    *(v222 + 12) = *(v270 + 12);
    v219 = v267;
    v220 = v268;
    *(v230 + 12) = *&v266[12];
    v229 = v265;
    v230[0] = *v266;
    v227 = v263;
    v228 = v264;
    v217 = v265;
    v218[0] = *v266;
    *(v218 + 12) = *&v266[12];
    v215 = v263;
    v216 = v264;
    outlined init with copy of DisplayList.Item(&v223, v213);
    outlined init with copy of DisplayList.Item(&v227, v213);
    DisplayList.ViewUpdater.updateInheritedViewAsync(platform:oldItem:oldParentState:newItem:newParentState:)(v208, &v219, &v308, &v215, &v293, &v198);
    v233 = v217;
    v234[0] = v218[0];
    *(v234 + 12) = *(v218 + 12);
    v231 = v215;
    v232 = v216;
    outlined destroy of DisplayList.Item(&v231);
    v237 = v221;
    v238[0] = v222[0];
    *(v238 + 12) = *(v222 + 12);
    v235 = v219;
    v236 = v220;
    outlined destroy of DisplayList.Item(&v235);
    v241 = v265;
    v242[0] = *v266;
    *(v242 + 12) = *&v266[12];
    v239 = v263;
    v240 = v264;
    outlined destroy of DisplayList.Item(&v239);
    v245 = v269;
    v246[0] = v270[0];
    *(v246 + 12) = *(v270 + 12);
    v243 = v267;
    v244 = v268;
    outlined destroy of DisplayList.Item(&v243);
    if (v199)
    {
      *a6 = v198;
      *(a6 + 8) = 1;
      *&v219 = __PAIR64__(v156, v157);
      *(&v219 + 1) = v105;
      LOBYTE(v220) = v163;
      DisplayList.Index.leave(index:)(&v219, v109);
      outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v194, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
      goto LABEL_119;
    }

    if (v107 >= v70)
    {
      v110 = v70;
    }

    else
    {
      v110 = v107;
    }

    if (v108 < v110)
    {
      v110 = v108;
    }

    if (v110 <= v198)
    {
      v70 = v110;
    }

    else
    {
      v70 = v198;
    }

    v111 = *(v104 + 120);
    v66 = a6;
    v65 = v155;
    v64 = v170;
    if ((v111 & 0xC) != 0)
    {
      v112 = *v172;
      if ((*(v104 + 120) & 4) != 0)
      {
        *(v104 + 104) = *(v104 + 112);
      }

      if ((v111 & 8) != 0)
      {
        *(v104 + 112) = v112;
      }
    }

    if (v111)
    {
      *(v104 + 104) = v157;
      *(v104 + 108) = v156;
    }

    if ((v111 & 2) != 0)
    {
      *(v104 + 112) = v105;
    }

    v67 = v161 + 1;
    *(v104 + 120) = v163;
    v69 = v165 + 5;
    v68 = v168 + 5;
    if (v159 == v161 + 1)
    {
      goto LABEL_112;
    }
  }

  v241 = v265;
  v242[0] = *v266;
  *(v242 + 12) = *&v266[12];
  v239 = v263;
  v240 = v264;
  outlined destroy of DisplayList.Item(&v239);
  v245 = v269;
  v246[0] = v270[0];
  *(v246 + 12) = *(v270 + 12);
  v243 = v267;
  v244 = v268;
  v152 = &v243;
LABEL_117:
  outlined destroy of DisplayList.Item(v152);
  outlined destroy of (DisplayList.Item.Value, DisplayList.Item.Value)(&v194, type metadata accessor for (DisplayList.Item.Value, DisplayList.Item.Value));
  *v66 = 0;
  *(v66 + 8) = 1;
LABEL_119:
  v284 = *v307;
  *v285 = *&v307[16];
  *&v285[12] = *&v307[28];
  v282 = v305;
  v283 = v306;
  outlined destroy of DisplayList.Item(&v282);

LABEL_120:
  v278 = v301;
  v279 = v302;
  v280 = v303;
  v281 = v304;
  *&v274[16] = v297;
  v275 = v298;
  v276 = v299;
  v277 = v300;
  v271 = v293;
  v272 = v294;
  v273 = v295;
  *v274 = v296;
  outlined destroy of DisplayList.ViewUpdater.Model.State(&v271);
  v289 = v316;
  v290 = v317;
  v291 = v318;
  v292 = v319;
  *&v285[16] = v312;
  v286 = v313;
  v287 = v314;
  v288 = v315;
  v282 = v308;
  v283 = v309;
  v284 = v310;
  *v285 = v311;
  outlined destroy of DisplayList.ViewUpdater.Model.State(&v282);
LABEL_121:
  v284 = v322;
  *v285 = *v323;
  *&v285[12] = *&v323[12];
  v282 = v320;
  v283 = v321;
  return outlined destroy of DisplayList.Item(&v282);
}