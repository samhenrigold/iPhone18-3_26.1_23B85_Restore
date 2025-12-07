void closure #1 in DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, _BYTE *a5, double a6, double a7, double a8, double a9)
{
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v9 = (a1 + 56);
  if ((v11 >> 30) - 2 < 2)
  {
    return;
  }

  v18 = *(a1 + 40);
  v19 = *(a1 + 48);
  if (!(v11 >> 30))
  {
    if (v18 >> 60 != 11)
    {
      return;
    }

    v20 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v21 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
    v22 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v23 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v57 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v56 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
    v54 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
    v55 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
    v64 = *((v18 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v65 = v20;
    v66 = v21;
    v24 = *a1 + a6;
    v25 = *(a1 + 8) + a7;
    v61 = a4;
    outlined copy of DisplayList.Item.Value(v18, v19, v10, v11);
    outlined copy of DisplayList.Item.Value(v18, v19, v10, v11);

    DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(&v64, a3, &v61, v24, v25, a8, a9);
    v27 = v26;
    v28 = swift_allocObject();
    v29 = v65;
    v30 = v66;
    *(v28 + 16) = v64;
    *(v28 + 24) = v29;
    *(v28 + 28) = v30;
    *(v28 + 32) = v22;
    *(v28 + 40) = v23;
    *(v28 + 48) = v57;
    *(v28 + 52) = v56;
    *(v28 + 56) = v55;
    *(v28 + 60) = v54;
    outlined consume of DisplayList.Item.Value(v18, v19, v10, v11);
    LOWORD(v31) = v19;
    if (v27)
    {
      if (a4)
      {
        v31 = (2 * ((33 * (a4 >> 16)) ^ a4)) | 1;
      }

      else
      {
        LOWORD(v31) = 0;
      }
    }

    v53 = v31;
    outlined consume of DisplayList.Item.Value(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
    outlined consume of DisplayList.Item.Value(v18, v19, v10, v11);
    *(a1 + 40) = v28 | 0xB000000000000000;
    *(a1 + 48) = v53;
    *v9 = 0;
    v9[1] = 0;
    *a5 = (v27 | *a5) & 1;
    if ((v27 & 1) == 0)
    {
      return;
    }

LABEL_14:
    *(a1 + 32) = a4;
    return;
  }

  v32 = HIDWORD(v19);
  v64 = *(a1 + 56);
  v65 = v11;
  v66 = HIDWORD(v11);
  v33 = *a1;
  v34 = *(a1 + 8);
  v35 = *a1 + a6;
  v36 = v34 + a7;
  v61 = a4;
  outlined copy of DisplayList.Effect(v18, v19, SBYTE4(v19));

  DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(&v64, a3, &v61, v35, v36, a8, a9);
  v38 = v37;
  if (BYTE4(v19) == 7)
  {
    v39 = *(v18 + 16);
    v40 = *(v18 + 24);
    v41 = *(v18 + 28);
    v42 = *(v18 + 32);
    v60 = a4;
    v61 = v39;
    v62 = v40;
    v63 = v41;

    DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(&v61, a3, &v60, v35, v36, a8, a9);
    v38 |= v43;
    LOBYTE(v32) = 7;
    v44 = swift_allocObject();
    v45 = v62;
    v46 = v63;
    *(v44 + 16) = v61;
    *(v44 + 24) = v45;
    *(v44 + 28) = v46;
    *(v44 + 32) = v42;
    outlined consume of DisplayList.Effect(v18, v19, 7);
    LODWORD(v19) = 0;
    v18 = v44;
  }

  else if (BYTE4(v19) == 18)
  {
    if (v18 == a2)
    {
      v47 = *(a1 + 16);
      v48 = *(a1 + 24);
      v61 = a4;
      v49 = (*(*a2 + 136))(v19, &v64, a3, &v61, v33, v34, v47, v48, v35, v36, a8, a9);
      outlined consume of DisplayList.Effect(v18, v19, 18);
      v18 = 0;
      LODWORD(v19) = 0;
      v38 |= v49;
      LOBYTE(v32) = 20;
    }

    else
    {
      LOBYTE(v32) = 18;
    }
  }

  v50 = v64;
  v51 = v19 | (v32 << 32);
  v52 = v65 | (v66 << 32) | 0x40000000;
  outlined consume of DisplayList.Item.Value(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
  *(a1 + 40) = v18;
  *(a1 + 48) = v51;
  *(a1 + 56) = v50;
  *(a1 + 64) = v52;
  *a5 = (v38 | *a5) & 1;
  if (v38)
  {
    goto LABEL_14;
  }
}

uint64_t storeEnumTagSinglePayload for Image.Orientation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

double EnvironmentValues.symbolRenderingMode.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v1;
  v5 = v1[1];
  if (v5)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v4, v11);

    v6 = v11[1];
    v7 = v11[2];
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(v4);
    if (v8)
    {
      v6 = *(v8 + 73);
      v7 = *(v8 + 74);
    }

    else
    {
      if (one-time initialization token for defaultValue != -1)
      {
        swift_once();
      }

      v6 = HIBYTE(static SymbolRenderingOptionsKey.defaultValue);
      v7 = byte_1ED52FC63;
    }
  }

  v9 = v3 | (v6 << 8) | (v7 << 16);
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA022SymbolRenderingOptionsF033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt2B5(v2, v9);

  if (v5)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA022SymbolRenderingOptionsK033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Ttg5(v4, *v2);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<SymbolRenderingOptionsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolRenderingOptionsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolRenderingOptionsKey>, &type metadata for SymbolRenderingOptionsKey, &protocol witness table for SymbolRenderingOptionsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolRenderingOptionsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<SymbolRenderingOptionsKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04TintI033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintKey>, &type metadata for TintKey, &protocol witness table for TintKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v18);
        outlined init with take of AnyTrackedValue(v18, v19);
        v10 = v21;
        __swift_project_boxed_opaque_existential_1(v19, v20);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, MEMORY[0x1E69E6720]);
        v11(v18);
        __swift_destroy_boxed_opaque_existential_1(v19);
      }

      else
      {
        v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(a1);
        if (v13)
        {
          v14 = v13[9];
        }

        else
        {
          v14 = 0;
        }

        *&v18[0] = v14;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<TintKey>>(0);
        v20 = v15;
        v21 = &protocol witness table for TrackedValue<A>;
        v19[0] = v14;

        specialized Dictionary.subscript.setter(v19, v6);
      }

      goto LABEL_14;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  *(v3 + 56) = 1;
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(a1);
  if (v12)
  {
  }

  *&v18[0] = v12;
LABEL_14:
  v16 = *&v18[0];
  os_unfair_lock_unlock((v3 + 16));

  return v16;
}

uint64_t assignWithCopy for Canvas(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = v8[1];
  *v7 = *v8;
  v7[1] = v9;

  v10 = (v7 + 19) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v8 + 19) & 0xFFFFFFFFFFFFFFF8;
  *v10 = *v11;
  *(v10 + 4) = *(v11 + 4);
  *(v10 + 5) = *(v11 + 5);
  *(v10 + 8) = *(v11 + 8);
  *(v10 + 12) = *(v11 + 12);
  *(v10 + 13) = *(v11 + 13);
  return a1;
}

uint64_t protocol witness for ColorProvider.resolve(in:) in conformance Color.OpacityColor(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  return (*(*v2 + 112))(&v4);
}

double _ShapeStyle_Shape.stylePack.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    v3 = a1[1];
    v4 = *(v3 + 32);
    v5 = *(v3 + 40);

    outlined consume of _ShapeStyle_Shape.Result(v4, v5);
    *(v3 + 32) = v2;
    *(v3 + 40) = 1;
  }

  return result;
}

uint64_t _ForegroundStyleModifier2.ForegroundStyleEnvironment.value.getter@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v36 = a5;
  v40 = *(a3 - 8);
  v41 = a1;
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v17;
  v44 = v18;
  v45 = v19;
  v46 = v20;
  v21 = type metadata accessor for _ForegroundStyleModifier2(0, &v43);
  v35 = v21;
  v38 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v35 - v22;
  MaterialView.ChildEnvironment.environment.getter(a6);
  _ForegroundStyleModifier2.ForegroundStyleEnvironment.modifier.getter(a2, a3, a4, a5, v23);
  (*(v13 + 16))(v16, v23, a2);
  v37 = *(v38 + 8);
  v37(v23, v21);
  v24 = a6[1];
  v43 = *a6;
  v44 = v24;
  default argument 0 of ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v42);

  v38 = ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v42, &v43, 0, a2, a4);

  (*(v13 + 8))(v16, a2);
  v25 = v36;
  _ForegroundStyleModifier2.ForegroundStyleEnvironment.modifier.getter(a2, a3, a4, v36, v23);
  v26 = v35;
  v28 = v39;
  v27 = v40;
  (*(v40 + 16))(v39, &v23[*(v35 + 52)], a3);
  v37(v23, v26);
  v29 = *a6;
  v30 = a6[1];
  v43 = *a6;
  v44 = v30;
  default argument 0 of ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v42);

  v31 = ShapeStyle.copyStyle(name:in:foregroundStyle:)(&v42, &v43, 0, a3, v25);

  v32 = v38;
  (*(v27 + 8))(v28, a3);
  _s7SwiftUI13ShapeStyleBox33_C5308685324599C90E2F7A588812BB29LLCyAA0cD4PairVyAA03AnycD0VAHGGMaTm_0(0, &lazy cache variable for type metadata for ShapeStyleBox<ShapeStylePair<AnyShapeStyle, AnyShapeStyle>>, type metadata accessor for ShapeStylePair<AnyShapeStyle, AnyShapeStyle>, &protocol witness table for ShapeStylePair<A, B>);
  v33 = swift_allocObject();
  *(v33 + 16) = v32;
  *(v33 + 24) = v31;
  swift_retain_n();
  swift_retain_n();

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015ForegroundStyleF033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Tt2g5(a6, v33);

  if (v30)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015ForegroundStyleK033_BEFE9363F68E039B4AB6422B8AA4535ALLVG_Ttg5(v29, *a6);
  }
}

uint64_t static IDView._viewListCount(inputs:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[3];
  v7[2] = a1[2];
  v7[3] = v4;
  v7[4] = a1[4];
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return (*(a4 + 40))(v7);
}

uint64_t AttributedStringTextStorage.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC7SwiftUI27AttributedStringTextStorage_str;
  v2 = type metadata accessor for AttributedString();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *assignWithCopy for CodableOptional(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (!v8)
  {
    if (v9)
    {
      v13 = *(v6 + 8);
      v12 = v6 + 8;
      v13(a1, v5);
      v10 = *(v12 + 76);
      v11 = *(v12 + 56);
      goto LABEL_6;
    }

    (*(v6 + 24))(a1, a2, v5);
    return a1;
  }

  if (!v9)
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    return a1;
  }

  v10 = *(v6 + 84);
  v11 = *(v6 + 64);
LABEL_6:
  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v11 + 1;
  }

  return memcpy(a1, a2, v14);
}

uint64_t ForEachState.EditsBuilder.removeInserts(afterOffset:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *(a2 + 72);
  v5 = v4 + *(type metadata accessor for IndexSetBuilder(0) + 20);
  if ((*(v5 + 16) & 1) == 0)
  {
    v6 = *v5;
    if (*v5 >= a1)
    {
      *v5 = 0;
      *(v5 + 8) = 0;
LABEL_6:
      *(v5 + 16) = v6 >= a1;
      return IndexSet.remove(integersIn:)();
    }

    if (*(v5 + 8) >= a1)
    {
      *(v5 + 8) = a1;
      goto LABEL_6;
    }
  }

  return IndexSet.remove(integersIn:)();
}

double (*_ShapeStyle_Shape.stylePack.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  if (*(v1 + 40) == 1)
  {
    v3 = *(v1 + 32);

    outlined consume of _ShapeStyle_Shape.Result(v4, 1u);
    *(v1 + 32) = 0;
    *(v1 + 40) = 5;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  *a1 = v3;
  return _ShapeStyle_Shape.stylePack.modify;
}

double outlined consume of _SymbolEffect.Storage(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  if ((a4 >> 12) <= 5u)
  {
    return outlined consume of _SymbolEffect.Trigger?(result);
  }

  return v4;
}

float _SymbolEffect.Phase.init(previously:)@<S0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v14 = *a1;
  v15 = v3;
  *v16 = a1[2];
  *&v16[14] = *(a1 + 46);
  outlined destroy of PlatformAccessibilitySettingsDefinition.Storage(&v14);
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 12) = BYTE12(v14);
  *(a2 + 8) = 0;
  v4 = DWORD1(v15);
  v5 = BYTE8(v15);
  v6 = HIDWORD(v15);
  v7 = v16[0];
  *(a2 + 16) = v15;
  *(a2 + 20) = v4;
  *(a2 + 24) = v5;
  *(a2 + 28) = v6;
  *(a2 + 32) = v7;
  v8 = v16[8];
  LOBYTE(v6) = v16[9];
  *(a2 + 36) = *&v16[4];
  *(a2 + 40) = v8;
  *(a2 + 41) = v6;
  *(a2 + 42) = 0;
  result = *&v16[12];
  v10 = *&v16[16];
  v11 = v16[20];
  v12 = *&v16[24];
  v13 = v16[28];
  *(a2 + 44) = *&v16[12];
  *(a2 + 48) = v10;
  *(a2 + 52) = v11;
  *(a2 + 56) = v12;
  *(a2 + 60) = v13;
  return result;
}

uint64_t outlined init with copy of _SymbolEffect.Phase(uint64_t *a1, uint64_t a2)
{
  *a2 = *a1;
  v3 = *(a1 + 2);
  *(a2 + 12) = *(a1 + 12);
  *(a2 + 8) = v3;
  v4 = *(a1 + 1);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 16) = v4;
  v5 = *(a1 + 9);
  *(a2 + 39) = *(a1 + 39);
  *(a2 + 36) = v5;
  v6 = *(a1 + 44);
  *(a2 + 60) = *(a1 + 60);
  *(a2 + 44) = v6;
  *(a2 + 61) = *(a1 + 61);

  return a2;
}

void type metadata accessor for _DictionaryStorage<RBSymbolAnimationOptionKey, Any>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<RBSymbolAnimationOptionKey, Any>)
  {
    type metadata accessor for RBSymbolAnimationOptionKey(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey, type metadata accessor for RBSymbolAnimationOptionKey, protocol conformance descriptor for RBSymbolAnimationOptionKey);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<RBSymbolAnimationOptionKey, Any>);
    }
  }
}

void lazy protocol witness table accessor for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey()
{
  if (!lazy protocol witness table cache variable for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey)
  {
    type metadata accessor for RBSymbolAnimationOptionKey(255);
    swift_getWitnessTable(protocol conformance descriptor for RBSymbolAnimationOptionKey, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey);
  }
}

void ViewGraph.NextUpdate.maxVelocity(_:)(double a1)
{
  if (a1 >= 160.0 && a1 < 320.0)
  {
    v3 = 0.0125;
  }

  else
  {
    if (a1 < 320.0)
    {
      return;
    }

    v3 = 0.00833333333;
  }

  v4 = _HighFrameRateReasonMake(0);
  v5 = *(v1 + 8);
  if (v3 < v5)
  {
    v5 = v3;
  }

  if ((*(v1 + 16) & (v5 > 0.0166666667)) != 0)
  {
    v5 = INFINITY;
  }

  *(v1 + 8) = v5;
  specialized Set._Variant.insert(_:)(&v6, v4);
}

void DisplayList.Item.addDrawingGroup(contentSeed:)(unsigned __int16 *a1)
{
  v2 = v1;
  v3 = *a1;
  if ((~*(v1 + 64) & 0xC0000000) != 0 || (*(v1 + 64) == 3221225472 ? (v4 = (*(v1 + 48) | *(v1 + 56) | *(v1 + 40)) == 0) : (v4 = 0), !v4))
  {
    v5 = *(MEMORY[0x1E695F050] + 16);
    v36.origin = *MEMORY[0x1E695F050];
    v36.size = v5;
    v6 = *(v1 + 16);
    v7 = *(v1 + 48);
    v39 = *(v1 + 32);
    v40[0] = v7;
    *(v40 + 12) = *(v1 + 60);
    v8 = *(v1 + 16);
    v37 = *v1;
    v38 = v8;
    v9 = *(v1 + 48);
    v34 = v39;
    *v35 = v9;
    *&v35[12] = *(v1 + 60);
    v32 = v37;
    v33 = v6;
    outlined init with copy of DisplayList.Item(&v37, v41);
    DisplayList.Item.addExtent(to:)(&v36.origin.x);
    v41[2] = v34;
    v42[0] = *v35;
    *(v42 + 12) = *&v35[12];
    v41[0] = v32;
    v41[1] = v33;
    outlined destroy of DisplayList.Item(v41);
    origin = v36.origin;
    size = v36.size;
    IsNull = CGRectIsNull(v36);
    height = 0.0;
    if (IsNull)
    {
      x = 0.0;
    }

    else
    {
      x = origin.x;
    }

    if (IsNull)
    {
      y = 0.0;
    }

    else
    {
      y = origin.y;
    }

    if (IsNull)
    {
      width = 0.0;
    }

    else
    {
      width = size.width;
    }

    if (!IsNull)
    {
      height = size.height;
    }

    v17 = v37;
    v18 = v38;
    v43 = CGRectIntegral(*(&height - 3));
    v19 = v43.origin.x;
    v20 = v43.origin.y;
    v21 = v43.size.width;
    v22 = v43.size.height;
    v23 = *(v1 + 48);
    v24 = *(v2 + 7);
    v25 = *(v2 + 8);
    v26 = v43.origin.x - *&v17;
    v27 = v43.origin.y - *(&v17 + 1);
    v29 = *(v2 + 4);
    v28 = *(v2 + 5);
    outlined copy of DisplayList.Item.Value(v28, *(v2 + 6), v24, v25);
    if (one-time initialization token for defaultFlags != -1)
    {
      swift_once();
    }

    v30 = static RasterizationOptions.Flags.defaultFlags | 1;
    *v2 = v19;
    v2[1] = v20;
    v2[2] = v21;
    v2[3] = v22;
    v31 = swift_allocObject();
    v32 = 0uLL;
    v33 = v18;
    *&v34 = v29;
    *(&v34 + 1) = v28;
    *v35 = v23;
    *&v35[8] = v24;
    *&v35[16] = v25;
    *&v35[24] = 0;
    DisplayList.init(_:)(&v32, v31 + 16);
    *(v31 + 32) = v26;
    *(v31 + 40) = v27;
    *(v31 + 48) = -1;
    *(v31 + 52) = 768;
    *(v31 + 56) = v30;
    *(v31 + 60) = 3;
    outlined consume of DisplayList.Item.Value(*(v2 + 5), *(v2 + 6), *(v2 + 7), *(v2 + 8));
    *(v2 + 5) = v31 | 0xB000000000000000;
    *(v2 + 6) = v3;
    v2[7] = 0.0;
    v2[8] = 0.0;
  }
}

uint64_t sub_18D2BF11C()
{

  return swift_deallocObject();
}

void DisplayList.Item.addExtent(to:)(CGFloat *a1)
{
  a = v1->a;
  b = v1->b;
  v13 = *&v1->ty;
  v14 = *&v1[1].a;
  v16 = *&v1[1].b;
  c = v1[1].c;
  v17 = LODWORD(c) >> 30;
  if (LODWORD(c) >> 30 > 1)
  {
    if (v17 != 2)
    {
      return;
    }

    path = v1->a;
    v187 = v1->b;
    v27 = *MEMORY[0x1E695F050];
    v28 = *(MEMORY[0x1E695F050] + 8);
    b = *(MEMORY[0x1E695F050] + 16);
    y = *(MEMORY[0x1E695F050] + 24);
    v29 = *(v13 + 16);
    if (!v29)
    {
      v53 = *(MEMORY[0x1E695F050] + 16);
      v52 = *(MEMORY[0x1E695F050] + 24);
LABEL_27:
      v54 = path + v27;
      v55 = v187 + v28;
      v56 = *a1;
      v57 = *(a1 + 1);
      v58 = *(a1 + 2);
      v59 = *(a1 + 3);
      v60 = v53;
      v61 = v52;
      goto LABEL_64;
    }

    v174 = *&v1[1].b;
    v176 = *&v1[1].c;
    v179 = *&v1[1].a;
    v16 = v13 + 32;

    v30 = 0;
    LOBYTE(v14) = 40;
    v31 = v27;
    v32 = v28;
    v33 = b;
    v34 = y;
    while (v30 < *(v13 + 16))
    {
      v5 = *(v16 + 40 * v30 + 24);
      v188 = v27;
      v189 = v28;
      v190 = b;
      v191 = y;
      v3 = *(v5 + 2);
      v38 = y;
      v37 = b;
      v36 = v28;
      v35 = v27;
      if (v3)
      {
        a = v31;
        x = v32;
        v39 = v34;
        v40 = v33;

        v41 = *(v5 + 3);
        v42 = *(v5 + 5);
        *&v192.tx = *(v5 + 4);
        *v193 = v42;
        *&v193[12] = *(v5 + 92);
        *&v192.a = *(v5 + 2);
        *&v192.c = v41;
        v1 = &v192;
        DisplayList.Item.addExtent(to:)(&v188);
        v4 = v3 - 1;
        if (v3 != 1)
        {
          v3 = (v5 + 112);
          do
          {
            *&v192.c = v3[1];
            *&v192.tx = v3[2];
            *v193 = v3[3];
            *&v193[12] = *(v3 + 60);
            v43 = *v3;
            v3 += 5;
            *&v192.a = v43;
            v1 = &v192;
            DisplayList.Item.addExtent(to:)(&v188);
            --v4;
          }

          while (v4);
        }

        v35 = v188;
        v36 = v189;
        v37 = v190;
        v38 = v191;
        v33 = v40;
        v34 = v39;
        v32 = x;
        v31 = a;
      }

      ++v30;
      *&v31 = CGRectUnion(*&v31, *&v35);
      if (v30 == v29)
      {
        v52 = v34;
        v53 = v33;
        v28 = v32;
        v27 = v31;
        outlined consume of DisplayList.Item.Value(v13, v179, v174, v176);
        goto LABEL_27;
      }
    }

    __break(1u);
    goto LABEL_140;
  }

  if (v17)
  {
    v4 = HIDWORD(v14);
    v9 = *MEMORY[0x1E695F050];
    v44 = *(MEMORY[0x1E695F050] + 8);
    v46 = *(MEMORY[0x1E695F050] + 16);
    height = *(MEMORY[0x1E695F050] + 24);
    v188 = *MEMORY[0x1E695F050];
    v189 = v44;
    v190 = v46;
    v191 = height;
    p_tx = *(v16 + 16);
    if (p_tx)
    {
      outlined copy of DisplayList.Effect(v13, v14, SBYTE4(v14));

      v47 = *(v16 + 48);
      v48 = *(v16 + 80);
      *&v192.tx = *(v16 + 64);
      *v193 = v48;
      *&v193[12] = *(v16 + 92);
      *&v192.a = *(v16 + 32);
      *&v192.c = v47;
      DisplayList.Item.addExtent(to:)(&v188);
      p_tx = (p_tx - 1);
      if (p_tx)
      {
        v5 = (v16 + 112);
        do
        {
          *&v192.c = *(v5 + 1);
          *&v192.tx = *(v5 + 2);
          *v193 = *(v5 + 3);
          *&v193[12] = *(v5 + 60);
          v49 = *v5;
          v5 += 80;
          *&v192.a = v49;
          DisplayList.Item.addExtent(to:)(&v188);
          p_tx = (p_tx - 1);
        }

        while (p_tx);
      }

      x = v188;
      y = v189;
      v50 = v190;
      v51 = v191;
    }

    else
    {
      outlined copy of DisplayList.Effect(v13, v14, SBYTE4(v14));
      v51 = height;
      v50 = v46;
      y = v44;
      x = v9;
    }

    if (BYTE4(v14) > 7u)
    {
      switch(BYTE4(v14))
      {
        case 8u:
          v165.origin.x = x;
          v165.origin.y = y;
          v165.size.width = v50;
          v165.size.height = v51;
          *&pathb = a;
          v186 = b;
          v181 = v14;
          v161 = *(v13 + 24);
          v162 = *(v13 + 16);
          v1 = *(v13 + 32);
          v14 = *&v1->c;

          if (v14)
          {
            v6 = 0;
            p_tx = &v1->tx;
            v171 = height;
            v173 = v46;
            v175 = v44;
            v178 = v9;
            while (v6 < *&v1->c)
            {
              v111 = *(p_tx + 6);
              v113 = *(p_tx + 1);
              v112 = *(p_tx + 2);
              *&v192.a = *p_tx;
              *&v192.c = v113;
              *&v192.tx = v112;
              *v193 = v111;
              v16 = *&v192.a;
              if (v112 > 2u)
              {
                if (v112 == 5)
                {
                  if (*(*&v192.a + 16))
                  {
                    if (*(*&v192.a + 16) == 1)
                    {
                      v5 = *(*&v192.a + 24);
                      outlined init with copy of PathSet.Element(&v192, &v188);
                      RBPathGetBoundingRect();
                    }

                    else
                    {
                      outlined init with copy of PathSet.Element(&v192, &v188);
                      v114 = MEMORY[0x193AC3640](v16 + 24);
                    }

                    x = v114;
                    y = v115;
                    width = v116;
                    a = v117;
                  }

                  else
                  {
                    v118 = *(*&v192.a + 24);
                    if (!v118)
                    {
                      goto LABEL_153;
                    }

                    v5 = v118;
                    outlined init with copy of PathSet.Element(&v192, &v188);
                    outlined init with copy of PathSet.Element(&v192, &v188);
                    PathBoundingBox = CGPathGetPathBoundingBox(v5);
                    x = PathBoundingBox.origin.x;
                    y = PathBoundingBox.origin.y;
                    width = PathBoundingBox.size.width;
                    a = PathBoundingBox.size.height;

                    outlined destroy of PathSet.Element(&v192);
                  }
                }

                else
                {
                  y = v175;
                  x = v178;
                  a = v171;
                  width = v173;
                  if (v112 != 6)
                  {
                    goto LABEL_128;
                  }
                }
              }

              else if (v112 < 2u)
              {
                x = v192.a;
                y = v192.b;
                width = v192.c;
                a = v192.d;
              }

              else
              {
                x = *(*&v192.a + 16);
                y = *(*&v192.a + 24);
                width = *(*&v192.a + 32);
                a = *(*&v192.a + 40);
                outlined init with copy of PathSet.Element(&v192, &v188);
              }

              ++v6;
              v201.origin.x = v9;
              v201.origin.y = v44;
              v201.size.width = v46;
              v201.size.height = height;
              v213.origin.x = x;
              v213.origin.y = y;
              v213.size.width = width;
              v213.size.height = a;
              v202 = CGRectUnion(v201, v213);
              v9 = v202.origin.x;
              v44 = v202.origin.y;
              v46 = v202.size.width;
              height = v202.size.height;
              outlined destroy of PathSet.Element(&v192);
              p_tx += 7;
              if (v14 == v6)
              {
                goto LABEL_91;
              }
            }

            goto LABEL_151;
          }

LABEL_91:
          v214.origin.x = v9 - v162;
          v214.origin.y = v44 - v161;
          v214.size.width = v46;
          v214.size.height = height;
          v204 = CGRectUnion(v165, v214);
          x = v204.origin.x;
          y = v204.origin.y;
          v124 = v204.size.width;
          v125 = v204.size.height;

          v50 = v124;
          v51 = v125;
          LOBYTE(v14) = v181;
          a = *&pathb;
          b = v186;
          break;
        case 9u:
          if (!*(v13 + 88))
          {
            v119 = *(v13 + 32);
            *&v192.a = *(v13 + 16);
            *&v192.c = v119;
            *&v192.tx = *(v13 + 48);
            v120 = x;
            *&v119 = y;
            v121 = v50;
            v122 = v51;
            v196 = CGRectApplyAffineTransform(*(&v119 - 8), &v192);
            goto LABEL_146;
          }

          break;
        case 0xAu:
          v62 = *(v13 + 96);
          *&v193[16] = *(v13 + 80);
          v63 = *(v13 + 112);
          v194 = v62;
          v195[0] = v63;
          *(v195 + 12) = *(v13 + 124);
          v64 = *(v13 + 32);
          *&v192.a = *(v13 + 16);
          *&v192.c = v64;
          v65 = *(v13 + 64);
          *&v192.tx = *(v13 + 48);
          *v193 = v65;
          *&v63 = x;
          *&v65 = y;
          v66 = v50;
          v67 = v51;
          v196 = GraphicsFilter.domainOfDefinition(for:)(*&v63);
LABEL_146:
          x = v196.origin.x;
          y = v196.origin.y;
          v50 = v196.size.width;
          v51 = v196.size.height;
          break;
      }

LABEL_147:
      v159 = a + x;
      v160 = b + y;
      v211 = CGRectUnion(*a1, *(&v50 - 2));
      v102 = v211.origin.x;
      v103 = v211.origin.y;
      v104 = v211.size.width;
      v105 = v211.size.height;
      outlined consume of DisplayList.Effect(v13, v14, v4);
      goto LABEL_148;
    }

    if (BYTE4(v14) != 6)
    {
      if (BYTE4(v14) != 7 || (*(v13 + 32) & 1) != 0)
      {
        goto LABEL_147;
      }

      v68 = *(v13 + 16);
      v188 = v9;
      v189 = v44;
      v190 = v46;
      v191 = height;
      v69 = *(v68 + 16);
      if (v69)
      {
        v70 = v50;
        v71 = v51;
        v72 = *(v68 + 48);
        v73 = *(v68 + 80);
        *&v192.tx = *(v68 + 64);
        *v193 = v73;
        *&v193[12] = *(v68 + 92);
        *&v192.a = *(v68 + 32);
        *&v192.c = v72;
        DisplayList.Item.addExtent(to:)(&v188);
        v74 = v69 - 1;
        if (v74)
        {
          v75 = (v68 + 112);
          do
          {
            *&v192.c = v75[1];
            *&v192.tx = v75[2];
            *v193 = v75[3];
            *&v193[12] = *(v75 + 60);
            v76 = *v75;
            v75 += 5;
            *&v192.a = v76;
            DisplayList.Item.addExtent(to:)(&v188);
            --v74;
          }

          while (v74);
        }

        v9 = v188;
        v44 = v189;
        v51 = v71;
        height = v191;
        v50 = v70;
        v46 = v190;
      }

      goto LABEL_145;
    }

    if (*(v13 + 52))
    {
      goto LABEL_147;
    }

    v16 = *(v13 + 16);
    v5 = *(v13 + 24);
    v3 = *(v13 + 32);
    v1 = *(v13 + 40);
    v123 = *(v13 + 48);
    if (v123 <= 2)
    {
      if (*(v13 + 48) && v123 != 1)
      {
        v9 = *(v16 + 16);
        v44 = *(v16 + 24);
        v46 = *(v16 + 32);
        height = *(v16 + 40);
      }

      else
      {
        v9 = *(v13 + 16);
        v44 = *(v13 + 24);
        v46 = *(v13 + 32);
        height = *(v13 + 40);
      }

      goto LABEL_145;
    }

    if (v123 != 5)
    {
      if (v123 != 6)
      {
        goto LABEL_128;
      }

      goto LABEL_145;
    }

    v166 = v50;
    v168 = v51;
    if (*(v16 + 16))
    {
      if (*(v16 + 16) == 1)
      {

        RBPathGetBoundingRect();
      }

      else
      {

        v144 = MEMORY[0x193AC3640](v16 + 24);
      }

      v9 = v144;
      v44 = v145;
      v46 = v146;
      height = v147;
LABEL_144:
      outlined consume of Path.Storage(v16, v5, v3, v1, 5u);
      v50 = v166;
      v51 = v168;
LABEL_145:
      v210.origin.x = x;
      v210.origin.y = y;
      v210.size.width = v50;
      v210.size.height = v51;
      v217.origin.x = v9;
      v217.origin.y = v44;
      v217.size.width = v46;
      v217.size.height = height;
      v196 = CGRectIntersection(v210, v217);
      goto LABEL_146;
    }

LABEL_140:
    v157 = *(v16 + 24);
    if (!v157)
    {
LABEL_156:
      __break(1u);
      return;
    }

    v158 = v157;

    v209 = CGPathGetPathBoundingBox(v158);
    v9 = v209.origin.x;
    v44 = v209.origin.y;
    v46 = v209.size.width;
    height = v209.size.height;

    goto LABEL_144;
  }

  v18 = v13 >> 60;
  if (v13 >> 60 == 7)
  {
    v4 = *&v1[1].b;
    v1 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v5 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v16 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v6 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    v96 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
    v9 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x50);
    y = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x58);
    x = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x60);
    LOBYTE(p_tx) = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x6C);
    v186 = b;
    if (v96 <= 2)
    {
      v97 = a;
      if (v96 >= 2)
      {
        v101 = v1->c;
        d = v1->d;
        tx = v1->tx;
        ty = v1->ty;
      }

      else
      {
        ty = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        tx = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        d = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v101 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      }

      goto LABEL_104;
    }

    if (v96 == 5)
    {
      if (LOBYTE(v1->c))
      {
        v97 = a;
        v126 = LODWORD(c);
        if (LOBYTE(v1->c) == 1)
        {
          outlined copy of DisplayList.Item.Value(v13, v14, v4, LODWORD(c));
          outlined copy of Path.Storage(v1, v5, v16, v6, 5u);
          RBPathGetBoundingRect();
        }

        else
        {
          outlined copy of DisplayList.Item.Value(v13, v14, v4, LODWORD(c));
          v155 = outlined copy of Path.Storage(v1, v5, v16, v6, 5u);
          v127 = MEMORY[0x193AC3640](&v1->d, v155);
        }

        v101 = v127;
        d = v128;
        tx = v129;
        ty = v130;
        v149 = v1;
        v150 = v5;
        v151 = v16;
        goto LABEL_135;
      }

      goto LABEL_129;
    }

    if (v96 == 6)
    {
      v97 = a;
      v101 = *MEMORY[0x1E695F050];
      d = *(MEMORY[0x1E695F050] + 8);
      tx = *(MEMORY[0x1E695F050] + 16);
      ty = *(MEMORY[0x1E695F050] + 24);
LABEL_104:
      v126 = LODWORD(c);
      outlined copy of DisplayList.Item.Value(v13, v14, v4, LODWORD(c));
LABEL_105:
      v136 = 0.0;
      if (p_tx)
      {
        v137 = 0.0;
      }

      else
      {
        v137 = v9 * -2.8 + x;
      }

      if (p_tx)
      {
        v138 = 0.0;
      }

      else
      {
        v138 = v9 * -2.8 + y;
      }

      if (p_tx)
      {
        v139 = 0.0;
      }

      else
      {
        v139 = v9 * -2.8 - x;
      }

      if ((p_tx & 1) == 0)
      {
        v136 = v9 * -2.8 - y;
      }

      v140 = CGRect.inset(by:)(v137, v138, v139, v136, v101, d, tx, ty);
      v215.size.width = v141;
      v215.size.height = v142;
      v215.origin.x = v97 + v140;
      v215.origin.y = v186 + v143;
      v205 = CGRectUnion(*a1, v215);
      v102 = v205.origin.x;
      v103 = v205.origin.y;
      v104 = v205.size.width;
      v105 = v205.size.height;
      v106 = v13;
      v107 = v14;
      v109 = v4;
      v108 = v126;
      goto LABEL_121;
    }

LABEL_128:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_129:
    v148 = v1->d;
    if (v148 != 0.0)
    {
      v126 = LODWORD(c);
      v97 = a;
      pathc = *&v148;
      outlined copy of DisplayList.Item.Value(v13, v14, v4, v126);
      outlined copy of Path.Storage(v1, v5, v16, v6, 5u);
      v207 = CGPathGetPathBoundingBox(pathc);
      v101 = v207.origin.x;
      d = v207.origin.y;
      tx = v207.size.width;
      ty = v207.size.height;

      v149 = v1;
      v150 = v5;
      v151 = v16;
LABEL_135:
      outlined consume of Path.Storage(v149, v150, v151, v6, 5u);
      goto LABEL_105;
    }

LABEL_154:
    __break(1u);
LABEL_155:
    __break(1u);
    goto LABEL_156;
  }

  if (v18 != 5)
  {
    if (v18 == 4)
    {
      v19 = *&v1[1].b;
      v1 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v5 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v16 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v6 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      v20 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      if (v20 <= 2)
      {
        v21 = a;
        v22 = b;
        if (v20 >= 2)
        {
          v26 = v1->c;
          v25 = v1->d;
          v24 = v1->tx;
          v23 = v1->ty;
        }

        else
        {
          v23 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
          v24 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
          v25 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v26 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        }

        goto LABEL_119;
      }

      if (v20 == 5)
      {
        if (LOBYTE(v1->c))
        {
          v21 = a;
          v22 = b;
          v131 = LODWORD(c);
          if (LOBYTE(v1->c) == 1)
          {
            outlined copy of DisplayList.Item.Value(v13, v14, v19, LODWORD(c));
            outlined copy of Path.Storage(v1, v5, v16, v6, 5u);
            RBPathGetBoundingRect();
          }

          else
          {
            outlined copy of DisplayList.Item.Value(v13, v14, v19, LODWORD(c));
            v156 = outlined copy of Path.Storage(v1, v5, v16, v6, 5u);
            v132 = MEMORY[0x193AC3640](&v1->d, v156);
          }

          v26 = v132;
          v25 = v133;
          v24 = v134;
          v23 = v135;
          goto LABEL_138;
        }

        v152 = v1->d;
        if (v152 != 0.0)
        {
          v131 = LODWORD(c);
          v21 = a;
          v22 = b;
          v153 = v14;
          v154 = *&v152;
          outlined copy of DisplayList.Item.Value(v13, v153, v19, v131);
          outlined copy of Path.Storage(v1, v5, v16, v6, 5u);
          v208 = CGPathGetPathBoundingBox(v154);
          v26 = v208.origin.x;
          v25 = v208.origin.y;
          v24 = v208.size.width;
          v23 = v208.size.height;

          v14 = v153;
LABEL_138:
          outlined consume of Path.Storage(v1, v5, v16, v6, 5u);
          goto LABEL_120;
        }

        goto LABEL_155;
      }

      if (v20 == 6)
      {
        v21 = a;
        v22 = b;
        v26 = *MEMORY[0x1E695F050];
        v25 = *(MEMORY[0x1E695F050] + 8);
        v24 = *(MEMORY[0x1E695F050] + 16);
        v23 = *(MEMORY[0x1E695F050] + 24);
LABEL_119:
        v131 = LODWORD(c);
        outlined copy of DisplayList.Item.Value(v13, v14, v19, LODWORD(c));
LABEL_120:
        v216.origin.x = v21 + v26;
        v216.origin.y = v22 + v25;
        v216.size.width = v24;
        v216.size.height = v23;
        v206 = CGRectUnion(*a1, v216);
        v102 = v206.origin.x;
        v103 = v206.origin.y;
        v104 = v206.size.width;
        v105 = v206.size.height;
        v106 = v13;
        v107 = v14;
        v109 = v19;
        v108 = v131;
        goto LABEL_121;
      }

      goto LABEL_128;
    }

    v60 = v1->c;
    v61 = v1->d;
    v56 = *a1;
    v57 = *(a1 + 1);
    v58 = *(a1 + 2);
    v59 = *(a1 + 3);
    v54 = v1->a;
    v55 = v1->b;
LABEL_64:
    *a1 = CGRectUnion(*&v56, *&v54);
    return;
  }

  patha = v1->a;
  v186 = v1->b;
  v163 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v164 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v1 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v4 = *((v13 & 0xFFFFFFFFFFFFFFFLL) + 0x40);
  v78 = *MEMORY[0x1E695F050];
  v77 = *(MEMORY[0x1E695F050] + 8);
  a = *(MEMORY[0x1E695F050] + 16);
  v79 = *(MEMORY[0x1E695F050] + 24);
  v80 = v14;
  v14 = *&v1->c;
  v177 = LODWORD(c);
  v180 = v80;
  outlined copy of DisplayList.Item.Value(v13, v80, v16, LODWORD(c));

  if (v14)
  {
    v5 = 0;
    p_tx = &v1->tx;
    v167 = v79;
    v169 = a;
    v170 = v77;
    v172 = v78;
    while (v5 < *&v1->c)
    {
      v85 = *(p_tx + 6);
      v87 = *(p_tx + 1);
      v86 = *(p_tx + 2);
      *&v192.a = *p_tx;
      *&v192.c = v87;
      *&v192.tx = v86;
      *v193 = v85;
      v6 = *&v192.a;
      if (v86 > 2u)
      {
        if (v86 == 5)
        {
          if (*(*&v192.a + 16))
          {
            if (*(*&v192.a + 16) == 1)
            {
              v4 = v16;
              outlined init with copy of PathSet.Element(&v192, &v188);
              RBPathGetBoundingRect();
            }

            else
            {
              outlined init with copy of PathSet.Element(&v192, &v188);
              v89 = MEMORY[0x193AC3640](v6 + 24);
            }

            v81 = v89;
            v82 = v90;
            v83 = v91;
            v84 = v92;
          }

          else
          {
            v93 = *(*&v192.a + 24);
            if (!v93)
            {
              goto LABEL_152;
            }

            v4 = v16;
            v94 = v93;
            outlined init with copy of PathSet.Element(&v192, &v188);
            outlined init with copy of PathSet.Element(&v192, &v188);
            v199 = CGPathGetPathBoundingBox(v94);
            y = v199.origin.x;
            x = v199.origin.y;
            v9 = v199.size.width;
            v95 = v199.size.height;

            outlined destroy of PathSet.Element(&v192);
            v84 = v95;
            v83 = v9;
            v82 = x;
            v81 = y;
            v16 = v4;
          }
        }

        else
        {
          v82 = v170;
          v81 = v172;
          v84 = v167;
          v83 = v169;
          if (v86 != 6)
          {
            goto LABEL_128;
          }
        }
      }

      else if (v86 < 2u)
      {
        v81 = v192.a;
        v82 = v192.b;
        v83 = v192.c;
        v84 = v192.d;
      }

      else
      {
        y = *(*&v192.a + 16);
        x = *(*&v192.a + 24);
        v9 = *(*&v192.a + 32);
        v88 = *(*&v192.a + 40);
        outlined init with copy of PathSet.Element(&v192, &v188);
        v84 = v88;
        v83 = v9;
        v82 = x;
        v81 = y;
      }

      ++v5;
      v197.origin.x = v78;
      v197.origin.y = v77;
      v197.size.width = a;
      v197.size.height = v79;
      v198 = CGRectUnion(v197, *&v81);
      v78 = v198.origin.x;
      v77 = v198.origin.y;
      a = v198.size.width;
      v79 = v198.size.height;
      outlined destroy of PathSet.Element(&v192);
      p_tx += 7;
      if (v14 == v5)
      {
        goto LABEL_65;
      }
    }

    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

LABEL_65:
  v212.origin.x = patha + v78 - v164;
  v212.origin.y = v186 + v77 - v163;
  v212.size.width = a;
  v212.size.height = v79;
  v200 = CGRectUnion(*a1, v212);
  v102 = v200.origin.x;
  v103 = v200.origin.y;
  v104 = v200.size.width;
  v105 = v200.size.height;

  v106 = v13;
  v108 = v177;
  v107 = v180;
  v109 = v16;
LABEL_121:
  outlined consume of DisplayList.Item.Value(v106, v107, v109, v108);
LABEL_148:
  *a1 = v102;
  a1[1] = v103;
  a1[2] = v104;
  a1[3] = v105;
}

__C::CGRect __swiftcall GraphicsFilter.domainOfDefinition(for:)(__C::CGRect a1)
{
  height = a1.size.height;
  width = a1.size.width;
  y = a1.origin.y;
  x = a1.origin.x;
  v6 = v1[5];
  v40[4] = v1[4];
  v40[5] = v6;
  v41[0] = v1[6];
  *(v41 + 12) = *(v1 + 108);
  v7 = v1[1];
  v40[0] = *v1;
  v40[1] = v7;
  v8 = v1[3];
  v40[2] = v1[2];
  v40[3] = v8;
  v9 = _s7SwiftUI14GraphicsFilterOWOg(v40);
  switch(v9)
  {
    case 18:
      v31 = _s7SwiftUI14GraphicsFilterOWOj6_(v40);
      v11 = -fabs(*(v31 + 8));
      v16 = -fabs(*(v31 + 16));
      v12 = x;
      v13 = y;
      v14 = width;
      v15 = height;
      goto LABEL_18;
    case 4:
      v17 = _s7SwiftUI14GraphicsFilterOWOj6_(v40);
      v18 = *(v17 + 52);
      v19 = 0.0;
      v20 = 0.0;
      v21 = 0.0;
      v22 = 0.0;
      if ((v18 & 1) == 0)
      {
        v24 = *(v17 + 32);
        v23 = *(v17 + 40);
        v25 = *(v17 + 24) * -2.8;
        v19 = v23 + v25;
        v20 = v24 + v25;
        v21 = v25 - v23;
        v22 = v25 - v24;
      }

      v36 = v22;
      v37 = v21;
      v38 = v20;
      v39 = v19;
      v42.origin.x = x;
      v42.origin.y = y;
      v42.size.width = width;
      v42.size.height = height;
      v26 = x;
      v27 = y;
      v28 = width;
      v29 = height;
      if (!CGRectIsNull(v42))
      {
        v43.origin.x = x;
        v43.origin.y = y;
        v43.size.width = width;
        v43.size.height = height;
        v44 = CGRectStandardize(v43);
        if (v38 == v36)
        {
          v30 = v36;
        }

        else
        {
          v30 = v38;
        }

        v26 = v30 + v44.origin.x;
        v27 = v39 + v44.origin.y;
        v28 = v44.size.width - (v38 + v36);
        v29 = v44.size.height - (v39 + v37);
        v45.origin.x = v30 + v44.origin.x;
        v45.origin.y = v39 + v44.origin.y;
        v45.size.width = v28;
        v45.size.height = v29;
        if (CGRectGetWidth(v45) < 0.0 || (v46.origin.x = v26, v46.origin.y = v27, v46.size.width = v28, v46.size.height = v29, CGRectGetHeight(v46) < 0.0))
        {
          v26 = *MEMORY[0x1E695F050];
          v27 = *(MEMORY[0x1E695F050] + 8);
          v28 = *(MEMORY[0x1E695F050] + 16);
          v29 = *(MEMORY[0x1E695F050] + 24);
        }
      }

      if ((v18 & 2) != 0)
      {
        x = v26;
        y = v27;
        width = v28;
        height = v29;
        break;
      }

      v47.origin.x = v26;
      v47.origin.y = v27;
      v47.size.width = v28;
      v47.size.height = v29;
      v50.origin.x = x;
      v50.origin.y = y;
      v50.size.width = width;
      v50.size.height = height;
      v48 = CGRectUnion(v47, v50);
      goto LABEL_19;
    case 0:
      v10 = _s7SwiftUI14GraphicsFilterOWOj6_(v40);
      if ((*(v10 + 8) & 1) == 0)
      {
        v11 = *v10 * -2.8;
        v12 = x;
        v13 = y;
        v14 = width;
        v15 = height;
        v16 = v11;
LABEL_18:
        v48 = CGRectInset(*&v12, v11, v16);
LABEL_19:
        x = v48.origin.x;
        y = v48.origin.y;
        width = v48.size.width;
        height = v48.size.height;
      }

      break;
  }

  v32 = x;
  v33 = y;
  v34 = width;
  v35 = height;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

uint64_t initializeWithCopy for CompositedItemAccumulator(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 10) = *(a2 + 10);
  v4 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);

  outlined copy of GraphicsBlendMode(v5, v6);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 41) = *(a2 + 41);
  return a1;
}

uint64_t initializeWithCopy for _ShapeStyle_Pack.Effect(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  *result = *a2;
  *(result + 16) = v2;
  *(result + 32) = *(a2 + 32);
  *(result + 46) = *(a2 + 46);
  *(result + 56) = *(a2 + 56);
  v3 = *(a2 + 72);
  if (v3 == 255)
  {
    *(result + 64) = *(a2 + 64);
    *(result + 72) = *(a2 + 72);
  }

  else
  {
    v4 = *(a2 + 64);
    v5 = v3 & 1;
    v6 = result;
    outlined copy of GraphicsBlendMode(v4, v3 & 1);
    result = v6;
    *(v6 + 64) = v4;
    *(v6 + 72) = v5;
  }

  return result;
}

void _ShapeStyle_RenderedShape.render(shadow:style:above:below:opaqueFill:mayAdjustItem:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, _BYTE *a6)
{
  v7 = v6;
  v165 = *a1;
  v166 = *(a1 + 2);
  v9 = *(a1 + 3);
  v10 = *(a1 + 2);
  v163 = *(a1 + 1);
  v164 = v10;
  v11 = *(a1 + 12);
  v12 = *(a1 + 52);
  v137 = *(a2 + 85);
  v13 = *(a2 + 88);
  v14 = *(a2 + 104);
  v141 = *(a2 + 96);
  if ((a5 & 1) == 0)
  {
    v133 = *(a2 + 8);
    v134 = *(a2 + 16);
    v135 = *a2;
    v140 = *(a2 + 104);
    v31 = (v12 >> 3) & 1;
    goto LABEL_10;
  }

  v12 &= 0xE7u;
  if (*a6 != 1 || (v15 = *(v7 + 264), (v15 & 2) != 0))
  {
    v133 = *(a2 + 8);
    v134 = *(a2 + 16);
    v135 = *a2;
    v140 = *(a2 + 104);
    v31 = 1;
LABEL_10:
    v32 = *(v7 + 80);
    v161 = *(v7 + 64);
    v162[0] = v32;
    *(v162 + 12) = *(v7 + 92);
    v33 = *(v7 + 16);
    v157 = *v7;
    v158 = v33;
    v34 = *(v7 + 32);
    v160 = *(v7 + 48);
    v159 = v34;
    v35 = *(v7 + 128);
    v36 = *(v7 + 136);
    v37 = *(v7 + 192);
    v38 = *(v7 + 108);
    v39 = *(v7 + 236);
    v40 = *(v7 + 240);
    *&v156[9] = 0;
    DWORD2(v156[9]) = 0;
    outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v157, __src);
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    *(&v156[15] + 1) = static GraphicsBlendMode.normal;
    v41 = v9 * v13;
    LOBYTE(v156[16]) = byte_1ED52F818;
    DWORD1(v156[16]) = 1065353216;
    BYTE8(v156[16]) = 0;
    v156[4] = v161;
    v156[5] = v162[0];
    *(&v156[5] + 12) = *(v162 + 12);
    v156[0] = v157;
    v156[1] = v158;
    v156[3] = v160;
    v156[2] = v159;
    WORD6(v156[6]) = v38;
    v156[7] = 0uLL;
    *&v156[8] = v35;
    *(&v156[8] + 1) = v36;
    v156[10] = 0uLL;
    *&v156[11] = v35;
    *(&v156[11] + 1) = v36;
    v156[12] = v37;
    v156[13] = 0uLL;
    *&v156[14] = 3221225472;
    DWORD2(v156[14]) = 0;
    BYTE12(v156[14]) = v39;
    LODWORD(v156[15]) = v40;
    if (v31)
    {
      v42 = *(v7 + 16);
      __src[0] = *v7;
      __src[1] = v42;
      *(&__src[5] + 12) = *(v7 + 92);
      v43 = *(v7 + 80);
      __src[4] = *(v7 + 64);
      __src[5] = v43;
      v44 = *(v7 + 48);
      __src[2] = *(v7 + 32);
      __src[3] = v44;
      if (!(DWORD2(__src[6]) >> 29) && (v12 & 1) == 0)
      {
        v136 = __src[1];
        v138 = __src[0];
        v45 = __src[2];
        v46 = static GraphicsBlendMode.normal;
        v47 = byte_1ED52F818;
        v48 = swift_allocObject();
        *(v48 + 16) = v138;
        *(v48 + 32) = v136;
        *(v48 + 48) = v45;
        *(v48 + 56) = *a1;
        *(v48 + 64) = *(a1 + 2);
        *(v48 + 68) = v41;
        v49 = *(a1 + 2);
        *(v48 + 72) = *(a1 + 1);
        *(v48 + 88) = v49;
        *(v48 + 104) = v11;
        v50 = v48 | 0x7000000000000000;
        *(v48 + 108) = v12;
        outlined copy of GraphicsBlendMode(v46, v47);
        outlined init with copy of _ShapeStyle_RenderedShape.Shape(__src, __dst);
        outlined consume of DisplayList.Item.Value(0, 0, 0, 0xC0000000);
        *(&v156[12] + 1) = v50;
        v156[13] = v38;
        v51 = v11 != 0.5;
        *&v156[14] = 0;
LABEL_26:
        v65 = v140;
LABEL_59:
        _ShapeStyle_RenderedShape.commitItem()(__dst);
        if (v12)
        {
          __src[2] = __dst[2];
          __src[3] = __dst[3];
          *(&__src[3] + 12) = *(&__dst[3] + 12);
          __src[0] = __dst[0];
          __src[1] = __dst[1];
          if (v65 == 255)
          {
            v122 = static GraphicsBlendMode.normal;
            v123 = byte_1ED52F818;
            outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
          }

          else
          {
            v122 = v141;
            v123 = v65;
          }

          *&v142[0] = v122;
          BYTE8(v142[0]) = v123 & 1;
          outlined copy of GraphicsBlendMode?(v141, v65);
          v124 = 1;
        }

        else
        {
          __src[2] = __dst[2];
          __src[3] = __dst[3];
          *(&__src[3] + 12) = *(&__dst[3] + 12);
          __src[0] = __dst[0];
          __src[1] = __dst[1];
          if (v65 == 255)
          {
            v120 = static GraphicsBlendMode.normal;
            v121 = byte_1ED52F818;
            outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
          }

          else
          {
            v120 = v141;
            v121 = v65;
          }

          *&v142[0] = v120;
          BYTE8(v142[0]) = v121 & 1;
          outlined copy of GraphicsBlendMode?(v141, v65);
          v124 = v51;
        }

        CompositedItemAccumulator.add(item:blend:needsDrawingGroup:)(__src, v142, v124);
        outlined consume of GraphicsBlendMode(*&v142[0], SBYTE8(v142[0]));
        outlined destroy of DisplayList.Item(__dst);
        memcpy(__src, v156, 0x109uLL);
        outlined destroy of _ShapeStyle_RenderedShape(__src);
        return;
      }

      v52 = (v12 & 0x10) == 0;
      v53 = ~v12 & 2 | v12 & 0xEF;
    }

    else
    {
      v52 = (v12 & 0x10) == 0;
      v53 = ~v12 & 2 | v12 & 0xEF | ~v12 & 4;
      if ((v12 & 1) == 0)
      {
        if (v137 == 1)
        {
          v77 = *(*v135 + 104);
          v78 = outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
          if ((v77(v78) & 1) == 0)
          {
            _ShapeStyle_RenderedShape.render(paint:)(v135);
LABEL_24:
            v59 = swift_allocObject();
            *&v149 = v165;
            *(&v149 + 1) = __PAIR64__(LODWORD(v41), v166);
            v150 = v163;
            v151 = v164;
            *&v152 = v11;
            BYTE4(v152) = v53;
            _s7SwiftUI14GraphicsFilterOWOi3_(&v149);
            v60 = v154;
            v59[5] = v153;
            v59[6] = v60;
            v59[7] = v155[0];
            *(v59 + 124) = *(v155 + 12);
            v61 = v150;
            v59[1] = v149;
            v59[2] = v61;
            v62 = v152;
            v59[3] = v151;
            v59[4] = v62;
            __src[0] = 0uLL;
            __src[1] = v156[11];
            __src[2] = v156[12];
            __src[3] = v156[13];
            *&__src[4] = *&v156[14];
            DWORD2(__src[4]) = 0;
            outlined copy of DisplayList.Item.Value(*(&v156[12] + 1), *&v156[13], *(&v156[13] + 1), v156[14]);

            DisplayList.init(_:)(__src, __dst);
            v63 = *&__dst[0];
            v64 = WORD4(__dst[0]) | (HIDWORD(__dst[0]) << 32) | 0x40000000;
            outlined consume of DisplayList.Item.Value(*(&v156[12] + 1), *&v156[13], *(&v156[13] + 1), v156[14]);
            *(&v156[12] + 1) = v59;
            *&v156[13] = 0xA00000000;
            *(&v156[13] + 1) = v63;
            *&v156[14] = v64;
            LOBYTE(__src[0]) = BYTE12(v156[14]);
            DisplayList.Item.canonicalize(options:)(__src);

            if (v31 & v52)
            {
              v51 = 1;
              LOBYTE(v12) = v53;
              goto LABEL_26;
            }

            if ((v53 & 1) == 0)
            {
              v66 = 1;
              goto LABEL_49;
            }

            memcpy(__dst, v7, 0x109uLL);
            _ShapeStyle_RenderedShape.bounds.getter();
            y = v179.origin.y;
            x = v179.origin.x;
            height = v179.size.height;
            width = v179.size.width;
            IsNull = CGRectIsNull(v179);
            *v68.i64 = x;
            *&v68.i64[1] = y;
            *v69.i64 = width;
            *&v69.i64[1] = height;
            if (IsNull)
            {
              v70 = -1;
            }

            else
            {
              v70 = 0;
            }

            v71 = vdupq_n_s64(v70);
            v72 = 0x10000;
            v73 = *(v7 + 192);
            if (IsNull)
            {
              v72 = 65542;
            }

            v74 = *(v7 + 108);
            v75 = *(v7 + 236);
            *&__src[9] = 0;
            DWORD2(__src[9]) = 0;
            *(&__src[15] + 1) = static GraphicsBlendMode.normal;
            LOBYTE(__src[16]) = byte_1ED52F818;
            DWORD1(__src[16]) = 1065353216;
            BYTE8(__src[16]) = 0;
            __src[0] = vbicq_s8(v68, v71);
            __src[1] = vbicq_s8(v69, v71);
            *&__src[2] = v72;
            *&__src[4] = 0;
            DWORD2(__src[6]) = 0;
            WORD6(__src[6]) = v74;
            __src[7] = 0u;
            *&__src[8] = v35;
            *(&__src[8] + 1) = v36;
            __src[10] = 0u;
            *&__src[11] = v35;
            *(&__src[11] + 1) = v36;
            *&__src[12] = v73;
            *(&__src[13] + 1) = 0;
            *(&__src[12] + 8) = 0u;
            *&__src[14] = 3221225472;
            DWORD2(__src[14]) = 0;
            BYTE12(__src[14]) = v75;
            LODWORD(__src[15]) = v40;
            if ((v53 & 8) == 0)
            {
              if (v137 == 1)
              {
                v80 = *(*v135 + 104);
                v81 = outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
                if ((v80(v81) & 1) == 0)
                {
                  _ShapeStyle_RenderedShape.render(paint:)(v135);
LABEL_48:
                  _ShapeStyle_RenderedShape.background(_:)(__src);
                  memcpy(v142, __src, 0x109uLL);
                  outlined destroy of _ShapeStyle_RenderedShape(v142);
                  v66 = 0;
LABEL_49:
                  v83 = *(v7 + 16);
                  v142[0] = *v7;
                  v142[1] = v83;
                  *(&v142[5] + 12) = *(v7 + 92);
                  v84 = *(v7 + 48);
                  v142[2] = *(v7 + 32);
                  v142[3] = v84;
                  v85 = *(v7 + 80);
                  v142[4] = *(v7 + 64);
                  v142[5] = v85;
                  if (DWORD2(v142[6]) >> 29)
                  {
                    v93 = *(v7 + 48);
                    v94 = *(v7 + 80);
                    v146 = *(v7 + 64);
                    v147[0] = v94;
                    *(v147 + 12) = *(v7 + 92);
                    v95 = *(v7 + 16);
                    *&v144.a = *v7;
                    *&v144.c = v95;
                    v96 = *(v7 + 48);
                    v98 = *v7;
                    v97 = *(v7 + 16);
                    *&v144.tx = *(v7 + 32);
                    v145 = v96;
                    v99 = *(v7 + 80);
                    __dst[4] = v146;
                    __dst[5] = v99;
                    *(&__dst[5] + 12) = *(v7 + 92);
                    __dst[0] = v98;
                    __dst[1] = v97;
                    v100 = *(v7 + 192);
                    v101 = *(v7 + 108);
                    v102 = *(v7 + 236);
                    *&__dst[9] = 0;
                    DWORD2(__dst[9]) = 0;
                    v103 = static GraphicsBlendMode.normal;
                    v104 = byte_1ED52F818;
                    *(&__dst[15] + 1) = static GraphicsBlendMode.normal;
                    LOBYTE(__dst[16]) = byte_1ED52F818;
                    DWORD1(__dst[16]) = 1065353216;
                    BYTE8(__dst[16]) = 0;
                    __dst[2] = *&v144.tx;
                    __dst[3] = v93;
                    WORD6(__dst[6]) = v101;
                    *&__dst[7] = -*&v156[10];
                    *(&__dst[7] + 1) = -*(&v156[10] + 1);
                    *&__dst[8] = v35;
                    *(&__dst[8] + 1) = v36;
                    *&__dst[10] = -*&v156[10];
                    *(&__dst[10] + 1) = -*(&v156[10] + 1);
                    *&__dst[11] = v35;
                    *(&__dst[11] + 1) = v36;
                    __dst[12] = v100;
                    __dst[13] = 0uLL;
                    *&__dst[14] = 3221225472;
                    DWORD2(__dst[14]) = 0;
                    BYTE12(__dst[14]) = v102;
                    LODWORD(__dst[15]) = v40;
                    __asm { FMOV            V0.4S, #1.0 }

                    v172 = _Q0;
                    LODWORD(v173) = 2143289344;
                    outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v144, __src);
                    outlined copy of GraphicsBlendMode(v103, v104);
                    _ShapeStyle_RenderedShape.render(color:)(&v172);
                    _ShapeStyle_RenderedShape.commitItem()(__src);
                    DisplayList.init(_:)(__src, &v167);
                    v106 = v167;
                    v107 = v168;
                    v108 = HIDWORD(v168);
                    v109 = swift_allocObject();
                    *(v109 + 16) = v106;
                    *(v109 + 24) = v107;
                    *(v109 + 28) = v108;
                    *(v109 + 32) = v66;
                    __src[0] = 0uLL;
                    __src[1] = v156[11];
                    __src[2] = v156[12];
                    __src[3] = v156[13];
                    *&__src[4] = *&v156[14];
                    DWORD2(__src[4]) = 0;
                    outlined copy of DisplayList.Item.Value(*(&v156[12] + 1), *&v156[13], *(&v156[13] + 1), v156[14]);

                    DisplayList.init(_:)(__src, &v167);
                    v110 = v167;
                    v111 = v168 | (HIDWORD(v168) << 32) | 0x40000000;
                    outlined consume of DisplayList.Item.Value(*(&v156[12] + 1), *&v156[13], *(&v156[13] + 1), v156[14]);
                    *(&v156[12] + 1) = v109;
                    *&v156[13] = 0x700000000;
                    *(&v156[13] + 1) = v110;
                    *&v156[14] = v111;
                    LOBYTE(v167) = BYTE12(v156[14]);
                    DisplayList.Item.canonicalize(options:)(&v167);

                    memcpy(__src, __dst, 0x109uLL);
                    outlined destroy of _ShapeStyle_RenderedShape(__src);
                    v65 = v140;
                    if ((v53 & 1) == 0)
                    {
                      goto LABEL_58;
                    }
                  }

                  else
                  {
                    v139 = v53;
                    v87 = *(&v142[0] + 1);
                    v86 = *&v142[0];
                    v89 = *(&v142[1] + 1);
                    v88 = *&v142[1];
                    v90 = v142[2];
                    v91 = BYTE1(v142[2]);
                    v92 = BYTE2(v142[2]);
                    v172 = v142[0];
                    v173 = v142[1];
                    v174 = v142[2];
                    if (*&v156[10] == 0.0 && *(&v156[10] + 1) == 0.0)
                    {
                      outlined copy of Path.Storage(*&v142[0], *(&v142[0] + 1), *&v142[1], *(&v142[1] + 1), v142[2]);
                      outlined copy of Path.Storage(v86, v87, v88, v89, v90);
                    }

                    else
                    {
                      CGAffineTransformMakeTranslation(&v144, -*&v156[10], -*(&v156[10] + 1));
                      outlined copy of Path.Storage(v86, v87, v88, v89, v142[2]);
                      Path.applying(_:)(&v144.a, &v167);
                      v86 = v167;
                      v87 = v168;
                      v88 = v169;
                      v89 = v170;
                      v90 = v171;
                    }

                    v112 = swift_allocObject();
                    *(v112 + 16) = v86;
                    *(v112 + 24) = v87;
                    *(v112 + 32) = v88;
                    *(v112 + 40) = v89;
                    *(v112 + 48) = v90;
                    *(v112 + 49) = v91 & 1;
                    *(v112 + 50) = v92 & 1;
                    *(v112 + 52) = v66;
                    v113 = v156[13];
                    v114 = v156[14];
                    v115 = *(&v156[12] + 1);
                    __src[0] = 0uLL;
                    __src[1] = v156[11];
                    __src[2] = v156[12];
                    __src[3] = v156[13];
                    *&__src[4] = *&v156[14];
                    DWORD2(__src[4]) = 0;
                    outlined copy of Path.Storage(v86, v87, v88, v89, v90);
                    outlined copy of DisplayList.Item.Value(v115, v113, *(&v113 + 1), v114);

                    DisplayList.init(_:)(__src, __dst);
                    v116 = *&__dst[0];
                    v117 = WORD4(__dst[0]) | (HIDWORD(__dst[0]) << 32) | 0x40000000;
                    outlined consume of DisplayList.Item.Value(*(&v156[12] + 1), *&v156[13], *(&v156[13] + 1), v156[14]);
                    *(&v156[12] + 1) = v112;
                    *&v156[13] = 0x600000000;
                    *(&v156[13] + 1) = v116;
                    *&v156[14] = v117;
                    LOBYTE(__src[0]) = BYTE12(v156[14]);
                    DisplayList.Item.canonicalize(options:)(__src);

                    outlined destroy of _ShapeStyle_RenderedShape.Shape(v142);
                    outlined consume of Path.Storage(v86, v87, v88, v89, v90);
                    v53 = v139;
                    v65 = v140;
                    if ((v139 & 1) == 0)
                    {
                      goto LABEL_58;
                    }
                  }

                  __src[0] = 0uLL;
                  __src[1] = v156[11];
                  __src[2] = v156[12];
                  __src[3] = v156[13];
                  *&__src[4] = *&v156[14];
                  DWORD2(__src[4]) = 0;
                  outlined copy of DisplayList.Item.Value(*(&v156[12] + 1), *&v156[13], *(&v156[13] + 1), v156[14]);
                  DisplayList.init(_:)(__src, __dst);
                  v118 = *&__dst[0];
                  v119 = WORD4(__dst[0]) | (HIDWORD(__dst[0]) << 32) | 0x40000000;
                  outlined consume of DisplayList.Item.Value(*(&v156[12] + 1), *&v156[13], *(&v156[13] + 1), v156[14]);
                  *(&v156[12] + 8) = xmmword_18DDD08E0;
                  *(&v156[13] + 1) = v118;
                  *&v156[14] = v119;
                  LOBYTE(__src[0]) = BYTE12(v156[14]);
                  DisplayList.Item.canonicalize(options:)(__src);
LABEL_58:
                  v51 = 1;
                  LOBYTE(v12) = v53;
                  goto LABEL_59;
                }
              }

              else
              {
                if (!v137)
                {
                  *&v175 = v135;
                  *(&v175 + 1) = v133;
                  v176 = v134;
                  outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
LABEL_47:
                  _ShapeStyle_RenderedShape.render(color:)(&v175);
                  goto LABEL_48;
                }

                outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
              }

              __asm { FMOV            V0.4S, #1.0 }

              v175 = _Q0;
              v176 = 2143289344;
              goto LABEL_47;
            }

            __asm { FMOV            V0.4S, #1.0 }

            v175 = _Q0;
            v176 = 2143289344;
            outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
            goto LABEL_47;
          }
        }

        else
        {
          if (!v137)
          {
            *&v177 = v135;
            *(&v177 + 1) = v133;
            v178 = v134;
LABEL_22:
            outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
LABEL_23:
            _ShapeStyle_RenderedShape.render(color:)(&v177);
            goto LABEL_24;
          }

          outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
        }

        __asm { FMOV            V0.4S, #1.0 }

        v177 = _Q0;
        v178 = 2143289344;
        goto LABEL_23;
      }
    }

    __asm { FMOV            V0.4S, #1.0 }

    v177 = _Q0;
    v178 = 2143289344;
    goto LABEL_22;
  }

  *a6 = 0;
  v16 = swift_allocObject();
  *&v156[0] = *a1;
  DWORD2(v156[0]) = *(a1 + 2);
  v17 = *(a1 + 2);
  v156[1] = *(a1 + 1);
  v156[2] = v17;
  *(v156 + 3) = v9;
  *&v156[3] = v11;
  BYTE4(v156[3]) = v12;
  _s7SwiftUI14GraphicsFilterOWOi3_(v156);
  v18 = v156[5];
  v16[5] = v156[4];
  v16[6] = v18;
  v16[7] = v156[6];
  *(v16 + 124) = *(&v156[6] + 12);
  v19 = v156[1];
  v16[1] = v156[0];
  v16[2] = v19;
  v20 = v156[3];
  v16[3] = v156[2];
  v16[4] = v20;
  v21 = *(v7 + 208);
  v22 = *(v7 + 216);
  v23 = *(v7 + 224);
  v25 = *(v7 + 192);
  v24 = *(v7 + 200);
  __src[0] = 0uLL;
  __src[1] = *(v7 + 176);
  *&__src[2] = v25;
  *(&__src[2] + 1) = v24;
  *&__src[3] = v21;
  *(&__src[3] + 1) = v22;
  *&__src[4] = v23;
  DWORD2(__src[4]) = 0;
  outlined copy of DisplayList.Item.Value(v24, v21, v22, v23);

  DisplayList.init(_:)(__src, __dst);
  v26 = *&__dst[0];
  v27 = WORD4(__dst[0]) | (HIDWORD(__dst[0]) << 32) | 0x40000000;
  outlined consume of DisplayList.Item.Value(*(v7 + 200), *(v7 + 208), *(v7 + 216), *(v7 + 224));
  *(v7 + 200) = v16;
  *(v7 + 208) = 0xA00000000;
  *(v7 + 216) = v26;
  *(v7 + 224) = v27;
  LOBYTE(__src[0]) = *(v7 + 236);
  DisplayList.Item.canonicalize(options:)(__src);

  if (v12 || v11 != 0.5)
  {
    goto LABEL_88;
  }

  if (v14 == 255)
  {
    v28 = v141;
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v29 = static GraphicsBlendMode.normal;
    v30 = byte_1ED52F818;
    outlined copy of GraphicsBlendMode(static GraphicsBlendMode.normal, byte_1ED52F818);
  }

  else
  {
    v28 = v141;
    v29 = v141;
    v30 = v14;
  }

  outlined copy of GraphicsBlendMode?(v28, v14);
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v125 = static GraphicsBlendMode.normal;
  v126 = byte_1ED52F818;
  if (v30)
  {
    if (byte_1ED52F818)
    {
      swift_unknownObjectRetain();
      outlined consume of GraphicsBlendMode(v29, 1);
      outlined consume of GraphicsBlendMode(v125, 1);
      if (v29 != v125)
      {
LABEL_88:
        if ((v15 & 1) == 0)
        {
          *(v7 + 264) = v15 | 1;
        }

        return;
      }

      goto LABEL_81;
    }

    swift_unknownObjectRetain();
LABEL_87:
    outlined copy of GraphicsBlendMode(v125, v126);
    outlined consume of GraphicsBlendMode(v29, v30 & 1);
    outlined consume of GraphicsBlendMode(v125, v126);
    outlined consume of GraphicsBlendMode(v29, v30 & 1);
    goto LABEL_88;
  }

  if (byte_1ED52F818)
  {
    goto LABEL_87;
  }

  outlined consume of GraphicsBlendMode(v29, 0);
  outlined consume of GraphicsBlendMode(v125, 0);
  if (v29 != v125)
  {
    goto LABEL_88;
  }

LABEL_81:
  v127 = *(v7 + 104);
  if (v127 >> 29)
  {
    if (v127 >> 29 != 5)
    {
      goto LABEL_88;
    }

    if (v127 != -1610612736)
    {
      goto LABEL_88;
    }

    v128 = vorrq_s8(vorrq_s8(vorrq_s8(*(v7 + 40), *(v7 + 72)), vorrq_s8(*(v7 + 56), *(v7 + 88))), vorrq_s8(*(v7 + 8), *(v7 + 24)));
    if (*&vorr_s8(*v128.i8, *&vextq_s8(v128, v128, 8uLL)) | *v7)
    {
      goto LABEL_88;
    }
  }
}

unint64_t *assignWithCopy for ScrapeableAttachmentViewModifier(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = *a2 & 0xF000000000000007;
  if ((~*a1 & 0xF000000000000007) != 0)
  {
    if (v4 == 0xF000000000000007)
    {
      outlined destroy of ScrapeableContent.Content(a1);
      *a1 = *a2;
    }

    else
    {
      outlined copy of ScrapeableContent.Content(*a2);
      v6 = *a1;
      *a1 = v3;
      outlined consume of ScrapeableContent.Content(v6);
    }
  }

  else
  {
    if (v4 != 0xF000000000000007)
    {
      outlined copy of ScrapeableContent.Content(*a2);
    }

    *a1 = v3;
  }

  return a1;
}

uint64_t Font.feature(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a1;

  return v5;
}

void type metadata accessor for FontBox<Font.ModifierProvider<Font.OpenTypeFeatureSettingModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.OpenTypeFeatureSettingModifier>>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.OpenTypeFeatureSettingModifier>, lazy protocol witness table accessor for type Font.OpenTypeFeatureSettingModifier and conformance Font.OpenTypeFeatureSettingModifier, &type metadata for Font.OpenTypeFeatureSettingModifier, type metadata accessor for Font.ModifierProvider);
    v3 = v2;
    lazy protocol witness table accessor for type Font.ModifierProvider<Font.OpenTypeFeatureSettingModifier> and conformance Font.ModifierProvider<A>();
    v6 = type metadata accessor for FontBox(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.OpenTypeFeatureSettingModifier>>);
    }
  }
}

uint64_t destroy for _ShapeStyle_Pack.Effect(uint64_t result)
{
  v1 = *(result + 72);
  if (v1 != 255)
  {
    return outlined consume of GraphicsBlendMode(*(result + 64), v1 & 1);
  }

  return result;
}

void *CompositedItemAccumulator.add(item:blend:needsDrawingGroup:)(_OWORD *a1, uint64_t a2, char a3)
{
  *(v47 + 12) = *(a1 + 60);
  v6 = a1[3];
  v46[2] = a1[2];
  v47[0] = v6;
  v7 = a1[1];
  v46[0] = *a1;
  v46[1] = v7;
  v8 = *a2;
  v9 = *(a2 + 8);
  if (!*(*(v3 + 24) + 16))
  {
    goto LABEL_11;
  }

  v10 = *(v3 + 32);
  v11 = *(v3 + 40);
  if (v11)
  {
    if (*(a2 + 8))
    {
      outlined copy of GraphicsBlendMode(*a2, 1);
      outlined copy of GraphicsBlendMode(v10, 1);
      outlined consume of GraphicsBlendMode(v10, 1);
      outlined consume of GraphicsBlendMode(v8, 1);
      if (v10 == v8)
      {
        goto LABEL_12;
      }

LABEL_11:
      CompositedItemAccumulator.commitPendingItems()();
      v12 = *(v3 + 32);
      v13 = *(v3 + 40);
      outlined copy of GraphicsBlendMode(v8, v9);
      outlined consume of GraphicsBlendMode(v12, v13);
      *(v3 + 32) = v8;
      *(v3 + 40) = v9;
      goto LABEL_12;
    }

    swift_unknownObjectRetain_n();
LABEL_10:
    outlined copy of GraphicsBlendMode(v8, v9);
    outlined consume of GraphicsBlendMode(v10, v11);
    outlined consume of GraphicsBlendMode(v8, v9);
    outlined consume of GraphicsBlendMode(v10, v11);
    goto LABEL_11;
  }

  if (*(a2 + 8))
  {
    goto LABEL_10;
  }

  outlined consume of GraphicsBlendMode(*(v3 + 32), 0);
  outlined consume of GraphicsBlendMode(v8, 0);
  if (v10 != v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  v14 = a1[3];
  v39 = a1[2];
  v40 = v14;
  v41 = *(a1 + 8);
  v15 = a1[1];
  v37 = *a1;
  v38 = v15;
  v44 = v39;
  *v45 = v14;
  *&v45[16] = v41;
  v42 = v37;
  v43 = v15;
  *&v45[24] = 0;
  v16 = *(v3 + 24);
  outlined init with copy of DisplayList.Item(v46, &v31);
  outlined init with copy of DisplayList.Item(&v42, &v31);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  v19 = &v16[80 * v18];
  *(v19 + 2) = v42;
  v20 = v43;
  v21 = v44;
  v22 = *v45;
  *(v19 + 92) = *&v45[12];
  *(v19 + 4) = v21;
  *(v19 + 5) = v22;
  *(v19 + 3) = v20;
  *(v3 + 24) = v16;
  if (*(v3 + 41) != 1)
  {
    if (one-time initialization token for normal != -1)
    {
      swift_once();
    }

    v25 = static GraphicsBlendMode.normal;
    if (v9)
    {
      if (byte_1ED52F818)
      {
        outlined copy of GraphicsBlendMode(v8, 1);
        outlined copy of GraphicsBlendMode(v25, 1);
        outlined consume of GraphicsBlendMode(v8, 1);
        outlined consume of GraphicsBlendMode(v25, 1);
        v26 = v8 == v25;
        goto LABEL_28;
      }

      v29 = swift_unknownObjectRetain();
      outlined consume of GraphicsBlendMode(v29, 1);
      v27 = v25;
      v28 = 0;
    }

    else
    {
      if ((byte_1ED52F818 & 1) == 0)
      {
        outlined consume of GraphicsBlendMode(v8, 0);
        outlined consume of GraphicsBlendMode(v25, 0);
        v26 = v8 == v25;
LABEL_28:
        v30 = v26;
        goto LABEL_31;
      }

      swift_unknownObjectRetain();
      outlined consume of GraphicsBlendMode(v8, 0);
      v27 = v25;
      v28 = 1;
    }

    outlined consume of GraphicsBlendMode(v27, v28);
    v30 = 0;
LABEL_31:
    v33 = v39;
    v34 = v40;
    v35 = v41;
    v31 = v37;
    v32 = v38;
    v36 = 0;
    result = outlined destroy of DisplayList.Item(&v31);
    v24 = v30 ^ 1;
    goto LABEL_32;
  }

  v33 = v39;
  v34 = v40;
  v35 = v41;
  v31 = v37;
  v32 = v38;
  v36 = 0;
  result = outlined destroy of DisplayList.Item(&v31);
  v24 = 1;
LABEL_32:
  *(v3 + 41) = v24;
  *(v3 + 42) = (*(v3 + 42) | a3) & 1;
  return result;
}

void CompositedItemAccumulator.commitPendingItems()()
{
  v1 = v0;
  v2 = v0 + 3;
  v3 = v0[3];
  v4 = *(v3 + 2);
  if (!v4)
  {
    return;
  }

  v5 = *(v3 + 4);
  v6 = *(v3 + 5);
  v7 = *(v3 + 6);
  v8 = *(v3 + 7);

  v9 = v4 - 1;
  if (v9)
  {
    v14 = v3 + 136;
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v8;
    do
    {
      *&v10 = CGRectUnion(*&v10, *(v14 - 24));
      v14 += 80;
      --v9;
    }

    while (v9);
  }

  else
  {
    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = v8;
  }

  v15 = v13;
  v16 = v12;
  v17 = v11;
  v18 = v10;

  v19 = *(v3 + 2);
  if (v19)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

    v20 = (v3 + 40);
    do
    {
      v21 = *v20 - v17;
      *(v20 - 1) = *(v20 - 1) - v18;
      *v20 = v21;
      v20 += 10;
      --v19;
    }

    while (v19);
    *v2 = v3;
  }

  DisplayList.init(_:)(v22, &v49);
  v23 = *v1;
  *&v53 = v18;
  *(&v53 + 1) = v17;
  *&v54 = v16;
  *(&v54 + 1) = v15;
  *&v55[8] = xmmword_18DDA6ED0;
  *&v55[24] = v49;
  *&v55[32] = WORD4(v49) | (HIDWORD(v49) << 32) | 0x40000000;
  *&v55[40] = 0;
  *v55 = v23;
  LOBYTE(v49) = *(v1 + 10);
  DisplayList.Item.canonicalize(options:)(&v49);
  if (*(v1 + 42) == 1)
  {
    LOWORD(v49) = *(v1 + 4);
    DisplayList.Item.addDrawingGroup(contentSeed:)(&v49);
    *(v1 + 42) = 0;
  }

  v24 = v1[4];
  v25 = *(v1 + 40);
  outlined copy of GraphicsBlendMode(v24, v25);
  if (one-time initialization token for normal != -1)
  {
    swift_once();
  }

  v26 = static GraphicsBlendMode.normal;
  v27 = byte_1ED52F818;
  if (v25)
  {
    if (byte_1ED52F818)
    {
      swift_unknownObjectRetain();
      outlined consume of GraphicsBlendMode(v24, 1);
      outlined consume of GraphicsBlendMode(v26, 1);
      if (v24 == v26)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    swift_unknownObjectRetain();
  }

  else if ((byte_1ED52F818 & 1) == 0)
  {
    outlined consume of GraphicsBlendMode(v24, 0);
    outlined consume of GraphicsBlendMode(v26, 0);
    if (v24 == v26)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  outlined copy of GraphicsBlendMode(v26, v27);
  outlined consume of GraphicsBlendMode(v24, v25);
  outlined consume of GraphicsBlendMode(v26, v27);
  outlined consume of GraphicsBlendMode(v24, v25);
LABEL_25:
  v28 = v53;
  v53 = 0uLL;
  v47 = *v55;
  v48[0] = *&v55[16];
  *(v48 + 12) = *&v55[28];
  v45 = 0uLL;
  v46 = v54;
  v40[2] = *v55;
  v41[0] = *&v55[16];
  *(v41 + 12) = *&v55[28];
  v29 = v1[4];
  v30 = *(v1 + 40);
  v40[0] = 0uLL;
  v40[1] = v54;
  outlined copy of GraphicsBlendMode(v29, v30);
  outlined init with copy of DisplayList.Item(&v45, &v49);
  DisplayList.init(_:)(v40, &v42);
  v51 = *v55;
  v52[0] = *&v55[16];
  *(v52 + 12) = *&v55[28];
  v49 = v53;
  v50 = v54;
  outlined destroy of DisplayList.Item(&v49);
  v31 = *v1;
  v53 = v28;
  *v55 = v31;
  *&v55[8] = v29;
  *&v55[16] = v30 | 0x500000000;
  *&v55[24] = v42;
  *&v55[32] = v43 | (v44 << 32) | 0x40000000;
  *&v55[40] = 0;
LABEL_26:
  v51 = *v55;
  v52[0] = *&v55[16];
  *(v52 + 12) = *&v55[28];
  v49 = v53;
  v50 = v54;
  v32 = v1[2];
  outlined init with copy of DisplayList.Item(&v49, &v45);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
  }

  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
  }

  *(v32 + 2) = v34 + 1;
  v35 = &v32[80 * v34];
  *(v35 + 2) = v49;
  v36 = v50;
  v37 = v51;
  v38 = v52[0];
  *(v35 + 92) = *(v52 + 12);
  *(v35 + 4) = v37;
  *(v35 + 5) = v38;
  *(v35 + 3) = v36;
  v1[2] = v32;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(*v2 + 16));
    v47 = *v55;
    v48[0] = *&v55[16];
    *(v48 + 12) = *&v55[28];
    v45 = v53;
    v46 = v54;
    outlined destroy of DisplayList.Item(&v45);
  }

  else
  {
    v39 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI11DisplayListV4ItemV_Tt1g5(0, *(*v2 + 24) >> 1);
    v47 = *v55;
    v48[0] = *&v55[16];
    *(v48 + 12) = *&v55[28];
    v45 = v53;
    v46 = v54;
    outlined destroy of DisplayList.Item(&v45);

    *v2 = v39;
  }
}

void *push #1 (layers:above:) in _ShapeStyle_RenderedShape.render(style:)(void *a1, char a2, uint64_t a3)
{
  result = *a1;
  if (result[2])
  {

    DisplayList.init(_:)(v6, v20);
    v7 = *(a3 + 192);
    v8 = *(a3 + 128);
    v13 = *(a3 + 112);
    v14 = v8;
    *&v15[8] = xmmword_18DDA6ED0;
    *&v15[24] = *&v20[0];
    *&v15[32] = WORD4(v20[0]) | (HIDWORD(v20[0]) << 32) | 0x40000000;
    *&v15[40] = 0;
    *v15 = v7;
    LOBYTE(v20[0]) = *(a3 + 236);
    DisplayList.Item.canonicalize(options:)(v20);
    v16[2] = *v15;
    v17[0] = *&v15[16];
    *(v17 + 12) = *&v15[28];
    v16[0] = v13;
    v16[1] = v14;
    v11 = *v15;
    v12[0] = *&v15[16];
    *(v12 + 12) = *&v15[28];
    v9 = v13;
    v10 = v14;
    outlined init with copy of DisplayList.Item(v16, v20);
    DisplayList.Item.composite(_:above:)(&v9, a2 & 1);
    v18[2] = v11;
    v19[0] = v12[0];
    *(v19 + 12) = *(v12 + 12);
    v18[0] = v9;
    v18[1] = v10;
    outlined destroy of DisplayList.Item(v18);
    v20[2] = *v15;
    v21[0] = *&v15[16];
    *(v21 + 12) = *&v15[28];
    v20[0] = v13;
    v20[1] = v14;
    return outlined destroy of DisplayList.Item(v20);
  }

  return result;
}

double DisplayList.Item.composite(_:above:)(uint64_t a1, char a2)
{
  *&v68[12] = *(a1 + 60);
  v4 = *(a1 + 48);
  v67 = *(a1 + 32);
  *v68 = v4;
  v5 = *(a1 + 16);
  v65 = *a1;
  v66 = v5;
  if ((~*&v68[16] & 0xC0000000) != 0 || *&v68[16] != 3221225472 || *v68 | *&v68[8] | *(&v67 + 1))
  {
    if ((~*(v2 + 64) & 0xC0000000) == 0 && *(v2 + 64) == 3221225472 && !(*(v2 + 48) | *(v2 + 56) | *(v2 + 40)))
    {
      v6 = *(v2 + 48);
      v58 = *(v2 + 32);
      *v59 = v6;
      *&v59[12] = *(v2 + 60);
      v7 = *(v2 + 16);
      v56 = *v2;
      v57 = v7;
      outlined init with copy of DisplayList.Item(&v65, v53);
      outlined destroy of DisplayList.Item(&v56);
      v8 = *v68;
      *(v2 + 32) = v67;
      *(v2 + 48) = v8;
      *(v2 + 60) = *&v68[12];
      v5 = v66;
      *v2 = v65;
      *(v2 + 16) = v5;
      return *&v5;
    }

    v9 = *(a1 + 32);
    v61 = *(a1 + 16);
    v62 = v9;
    v63 = *(a1 + 48);
    v64 = *(a1 + 64);
    v10 = vsubq_f64(v65, *v2);
    v60 = MEMORY[0x1E69E7CC0];
    v42 = v10;
    if (a2)
    {
      outlined init with copy of DisplayList.Item(&v65, &v56);
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v12 = *(a1 + 16);
      v13 = *(a1 + 32);
      v56 = v10;
      v57 = v12;
      v14 = *(a1 + 48);
      v58 = v13;
      *v59 = v14;
      *&v59[16] = *(a1 + 64);
      *&v59[24] = 0;
      outlined init with copy of DisplayList.Item(&v65, v53);
      outlined init with copy of DisplayList.Item(&v56, v53);
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0], &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
      v16 = *(v11 + 2);
      v15 = *(v11 + 3);
      if (v16 >= v15 >> 1)
      {
        v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v11, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
      }

      *(v11 + 2) = v16 + 1;
      v17 = &v11[80 * v16];
      *(v17 + 2) = v56;
      v18 = v57;
      v19 = v58;
      v20 = *v59;
      *(v17 + 92) = *&v59[12];
      *(v17 + 4) = v19;
      *(v17 + 5) = v20;
      *(v17 + 3) = v18;
      v60 = v11;
    }

    if ((*(v2 + 64) & 0xC0000000) == 0x40000000)
    {
      v21 = *(v2 + 40);
      v23 = *(v2 + 48);
      v22 = *(v2 + 52);
      if (v22 == 20 && !v21 && !v23)
      {
        outlined copy of DisplayList.Effect(0, 0, 20);

        specialized Array.append<A>(contentsOf:)(v24);
        v11 = v60;
        if ((a2 & 1) == 0)
        {
LABEL_30:
          DisplayList.init(_:)(v11, v53);
          v56 = v42;
          v57 = v61;
          v58 = v62;
          *v59 = v63;
          *&v59[16] = v64;
          *&v59[24] = 0;
          outlined destroy of DisplayList.Item(&v56);
          v39 = *&v53[0];
          v40 = WORD4(v53[0]) | (HIDWORD(v53[0]) << 32) | 0x40000000;
          outlined consume of DisplayList.Item.Value(*(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64));
          *&v5 = 0;
          *(v2 + 40) = xmmword_18DDA6ED0;
          *(v2 + 56) = v39;
          *(v2 + 64) = v40;
          return *&v5;
        }

LABEL_25:
        v56 = v42;
        v57 = v61;
        v58 = v62;
        *v59 = v63;
        *&v59[16] = v64;
        *&v59[24] = 0;
        outlined init with copy of DisplayList.Item(&v56, v53);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
        }

        v34 = *(v11 + 2);
        v33 = *(v11 + 3);
        if (v34 >= v33 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v11, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
        }

        *(v11 + 2) = v34 + 1;
        v35 = &v11[80 * v34];
        *(v35 + 2) = v56;
        v36 = v57;
        v37 = v58;
        v38 = *v59;
        *(v35 + 92) = *&v59[12];
        *(v35 + 4) = v37;
        *(v35 + 5) = v38;
        *(v35 + 3) = v36;
        v60 = v11;
        goto LABEL_30;
      }

      outlined copy of DisplayList.Effect(*(v2 + 40), *(v2 + 48), *(v2 + 52));

      outlined consume of DisplayList.Effect(v21, v23, v22);
    }

    v25 = *(v2 + 48);
    v54 = *(v2 + 32);
    v55[0] = v25;
    *(v55 + 12) = *(v2 + 60);
    v26 = *(v2 + 16);
    v53[0] = *v2;
    v53[1] = v26;
    v49 = v26;
    v50 = v54;
    v51 = v25;
    v52 = *(v2 + 64);
    v56 = 0uLL;
    *&v59[16] = v52;
    v58 = v54;
    *v59 = v25;
    v57 = v26;
    *&v59[24] = 0;
    outlined init with copy of DisplayList.Item(v53, v43);
    outlined init with copy of DisplayList.Item(&v56, v43);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
    }

    v28 = *(v11 + 2);
    v27 = *(v11 + 3);
    if (v28 >= v27 >> 1)
    {
      v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v11, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item);
    }

    v43[0] = 0;
    v43[1] = 0;
    v44 = v49;
    v45 = v50;
    v46 = v51;
    v47 = v52;
    v48 = 0;
    outlined destroy of DisplayList.Item(v43);
    *(v11 + 2) = v28 + 1;
    v29 = &v11[80 * v28];
    *(v29 + 2) = v56;
    v31 = v58;
    v30 = *v59;
    v32 = v57;
    *(v29 + 92) = *&v59[12];
    *(v29 + 4) = v31;
    *(v29 + 5) = v30;
    *(v29 + 3) = v32;
    v60 = v11;
    if ((a2 & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_25;
  }

  return *&v5;
}

uint64_t destroy for CompositedItemAccumulator(uint64_t a1)
{

  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return outlined consume of GraphicsBlendMode(v2, v3);
}

uint64_t initializeWithTake for _ConditionalContent(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(*(a3 + 16) - 8);
  if (*(*(v4 - 8) + 64) <= *(v5 + 64))
  {
    v6 = *(*(*(a3 + 16) - 8) + 64);
  }

  else
  {
    v6 = *(*(v4 - 8) + 64);
  }

  v7 = a2[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    if (v9 <= 1)
    {
      if (!v9)
      {
        goto LABEL_18;
      }

      v10 = *a2;
    }

    else if (v9 == 2)
    {
      v10 = *a2;
    }

    else if (v9 == 3)
    {
      v10 = *a2 | (a2[2] << 16);
    }

    else
    {
      v10 = *a2;
    }

    v11 = (v10 | (v8 << (8 * v6))) + 2;
    v7 = v10 + 2;
    if (v6 < 4)
    {
      v7 = v11;
    }
  }

LABEL_18:
  v12 = v7 == 1;
  if (v7 == 1)
  {
    v5 = *(v4 - 8);
  }

  (*(v5 + 32))(a1);
  *(a1 + v6) = v12;
  return a1;
}

uint64_t assignWithCopy for OpenURLAction(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of OpenURLAction.Handler(*a2, v5, v6, v7, v8);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  outlined consume of OpenURLAction.Handler(v9, v10, v11, v12, v13);
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

uint64_t assignWithTake for OpenURLAction(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  v10 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v10;
  *(a1 + 32) = v4;
  outlined consume of OpenURLAction.Handler(v5, v6, v7, v8, v9);
  *(a1 + 33) = *(a2 + 33);
  return a1;
}

double key path setter for EnvironmentValues.openURL : EnvironmentValues(uint64_t a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  if (*(a1 + 33))
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v11[0] = *a1;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v12 = v8 | v7;
  v9 = *a2;
  outlined copy of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  swift_retain_n();
  outlined copy of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013OpenURLActionF0VG_Tt2B5(a2, v11);

  outlined consume of OpenURLAction.Handler(v3, v4, v5, v6, v7);
  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013OpenURLActionK0VG_Ttg5(v9, *a2);
  }

  return outlined consume of OpenURLAction.Handler(v3, v4, v5, v6, v7);
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013OpenURLActionF0VG_Tt2B5(uint64_t *a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenURLActionKey>, &type metadata for OpenURLActionKey, &protocol witness table for OpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  if (!_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA013OpenURLActionV0VG_Tt0B5(v4, *&v12[0]) || (v7 = *(a2 + 16), v12[0] = *a2, v12[1] = v7, v13 = *(a2 + 32), type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]), !AGCompareValues()))
  {
    v9 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<OpenURLActionKey>>(0);
    v10 = swift_allocObject();
    v11 = *(a2 + 16);
    *(v10 + 72) = *a2;
    *(v10 + 88) = v11;
    *(v10 + 104) = *(a2 + 32);

    outlined init with copy of HoverEffectContext?(a2, v12, &lazy cache variable for type metadata for OpenURLAction?, &type metadata for OpenURLAction, MEMORY[0x1E69E6720]);
    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v9);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<OpenURLActionKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<OpenURLActionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<OpenURLActionKey>, &type metadata for OpenURLActionKey, &protocol witness table for OpenURLActionKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<OpenURLActionKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<OpenURLActionKey>>);
    }
  }
}

uint64_t initializeWithTake for VStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((*(v4 + 80) + 17 + a1) & ~*(v4 + 80), (*(v4 + 80) + 17 + a2) & ~*(v4 + 80));
  return a1;
}

_OWORD *initializeWithTake for ZStack(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 16) & ~*(v4 + 80), (a2 + *(v4 + 80) + 16) & ~*(v4 + 80));
  return a1;
}

void ShadowStyle.ignoresFill(_:knockout:)(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v5 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  if (v5 < 0)
  {
    if (a1)
    {
      if (a2)
      {
        v14 = *v3 | 0x18;
LABEL_14:
        outlined copy of ShadowStyle.Storage(*v3, *(v3 + 8));
        v17 = v9;
        v11 = v8;
        v12 = v7;
        v13 = v5;
        goto LABEL_15;
      }

      v16 = v6 | 8;
    }

    else
    {
      v16 = v6 & 0xF7;
    }

    v14 = v16 & 0xEF;
    goto LABEL_14;
  }

  if ((a1 & 1) == 0)
  {
    v15 = v6 & 0xF7;
LABEL_11:
    v17 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v15 & 0xEF;
    goto LABEL_15;
  }

  if ((a2 & 1) == 0)
  {
    v15 = v6 | 8;
    goto LABEL_11;
  }

  v17 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = v6 | 0x18;
LABEL_15:
  outlined copy of ShadowStyle.Storage(v6, v5);
  outlined consume of ShadowStyle.Storage(v6, v5);
  *a3 = v14;
  *(a3 + 8) = v13;
  *(a3 + 16) = v12;
  *(a3 + 24) = v11;
  *(a3 + 32) = v17;
  *(a3 + 40) = v10;
}

double static ShadowStyle.drop(color:radius:x:y:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  *a3 = a2;
  *(a3 + 8) = a1 | 0x8000000000000000;
  *(a3 + 16) = a4;
  *(a3 + 24) = a5;
  *(a3 + 32) = a6;
  *(a3 + 40) = 1056964608;

  return result;
}

double outlined consume of ShadowStyle.Storage(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

double outlined copy of ShadowStyle.Storage(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }

  return result;
}

void ShapeStyle.shadow(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a3;
  v8 = *(a2 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, v4, a2, v9);
  v12 = *a1;
  v13 = *(a1 + 8);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  v16 = *(a1 + 32);
  v17 = *(a1 + 40);
  (*(v8 + 32))(a4, v11, a2);
  v19 = a4 + *(type metadata accessor for _ShadowShapeStyle(0, a2, v21, v18) + 36);
  *v19 = v12;
  *(v19 + 8) = v13;
  *(v19 + 16) = v14;
  *(v19 + 24) = v15;
  *(v19 + 32) = v16;
  *(v19 + 40) = v17;
  outlined copy of ShadowStyle.Storage(v12, v13);
}

uint64_t initializeWithCopy for _ShadowShapeStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = (v6 + a1) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v6 + a2) & 0xFFFFFFFFFFFFFFF8;
  v9 = *v8;
  v10 = *(v8 + 8);
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = *(v8 + 32);
  outlined copy of ShadowStyle.Storage(*v8, v10);
  *v7 = v9;
  *(v7 + 8) = v10;
  *(v7 + 16) = v11;
  *(v7 + 24) = v12;
  *(v7 + 32) = v13;
  *(v7 + 40) = *(v8 + 40);
  return a1;
}

double destroy for _ShadowShapeStyle(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = v4[1];

  return outlined consume of ShadowStyle.Storage(v5, v6);
}

void _ShadowShapeStyle._apply(to:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  if (v7 <= 2)
  {
    if (!*(a1 + 24))
    {
      outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
      a1[4] = 0;
      *(a1 + 40) = 0;
      return;
    }

    if (v7 == 1)
    {
      (*(*(a2 + 24) + 32))(a1, *(a2 + 16));
      v9 = v2 + *(a2 + 36);
      v11 = *v9;
      v10 = *(v9 + 8);
      v57 = *(v9 + 40);
      v54 = v6;
      v55 = v11;
      if (v10 < 0)
      {
        v25 = *(v9 + 24);
        v11 = *(v9 + 32);
        v56 = *(v9 + 16);
        v13 = v25;
        v12 = *&v11;
        v67 = *(a1 + 3);
        v26 = *(*(v10 & 0x7FFFFFFFFFFFFFFFLL) + 120);
        v27 = outlined copy of ShadowStyle.Storage(v55, v10);
        v26(&v72, &v67, v27);
        v6 = v54;
        LOBYTE(v11) = v55;
        outlined consume of ShadowStyle.Storage(v55, v10);
        v17 = HIDWORD(v72);
        v14 = v72;
        v18 = v73;
        v16 = v74;
        v15 = v75;
      }

      else
      {
        v12 = 1.5;
        v13 = 0;
        v56 = 1.0;
        v14 = 0;
        v15 = 2143289344;
        v16 = 1051260355;
        v17 = 0;
        v18 = 0;
      }

      if (*(a1 + 40) == 1)
      {
        v28 = a1[4];

        outlined consume of _ShapeStyle_Shape.Result(v29, 1u);
        a1[4] = 0;
        *(a1 + 40) = 5;
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
      }

      *&v67 = v28;
      LOBYTE(v58[0]) = v4;
      v30 = _ShapeStyle_Pack.indices(of:)(v58);
      v32 = v31;

      if (v30 == v32)
      {
LABEL_19:
        outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
        a1[4] = v28;
        *(a1 + 40) = 1;
        return;
      }

      if (v32 < v30)
      {
        goto LABEL_48;
      }

      if (v30 >= v32)
      {
LABEL_49:
        __break(1u);
      }

      else if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_24:
        v33 = v30 << 7;
        v53 = v5;
        v52 = v32;
        while (1)
        {
          if (v30 < 0)
          {
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            goto LABEL_49;
          }

          if (v30 >= v28[2])
          {
            goto LABEL_47;
          }

          v38 = *(v28 + v33 + 33);
          if (v5 <= v38 && v6 > v38)
          {
            break;
          }

LABEL_26:
          ++v30;
          v33 += 128;
          if (v32 == v30)
          {
            goto LABEL_19;
          }
        }

        v71 = 0;
        if (one-time initialization token for semantic != -1)
        {
          swift_once();
        }

        v40 = static Semantics_v6.semantic;
        if (one-time initialization token for forced != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        if (byte_1ED53C51C == 1)
        {
          if (dyld_program_sdk_at_least())
          {
LABEL_39:
            v41 = 0;
            v42 = -1;
            v43 = 1.0;
LABEL_42:
            *&v67 = __PAIR64__(v17, v14);
            *(&v67 + 1) = __PAIR64__(v16, v18);
            LODWORD(v68) = v15;
            *(&v68 + 1) = v56;
            *&v69 = v13;
            *(&v69 + 1) = v12;
            *v70 = v57;
            *&v70[4] = v11;
            *&v70[8] = v43;
            *&v70[16] = v41;
            v70[24] = v42;
            v44 = v28 + v33;
            v45 = *(v28 + v33 + 152);
            outlined init with copy of _ShapeStyle_Pack.Effect(&v67, v58);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v28 + v33 + 152) = v45;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v45 + 2) + 1, 1, v45);
              *(v44 + 19) = v45;
            }

            v11 = *(v45 + 2);
            v47 = *(v45 + 3);
            if (v11 >= v47 >> 1)
            {
              v45 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v11 + 1, 1, v45);
              *(v44 + 19) = v45;
            }

            *(v45 + 2) = v11 + 1;
            v34 = &v45[80 * v11];
            *(v34 + 2) = v67;
            v35 = v68;
            v36 = v69;
            v37 = *v70;
            *(v34 + 89) = *&v70[9];
            *(v34 + 4) = v36;
            *(v34 + 5) = v37;
            *(v34 + 3) = v35;
            v58[0] = v14;
            v58[1] = v17;
            v58[2] = v18;
            v58[3] = v16;
            v58[4] = v15;
            v59 = v56;
            v60 = v13;
            v61 = v12;
            v62 = v57;
            LOBYTE(v11) = v55;
            v63 = v55;
            v64 = v43;
            v65 = v41;
            v66 = v42;
            outlined destroy of _ShapeStyle_Pack.Effect(v58);
            v5 = v53;
            v6 = v54;
            v32 = v52;
            goto LABEL_26;
          }
        }

        else if (static Semantics.forced >= v40)
        {
          goto LABEL_39;
        }

        v43 = *(v28 + v33 + 128);
        v41 = *(v28 + v33 + 136);
        v42 = *(v28 + v33 + 144);
        outlined copy of GraphicsBlendMode?(v41, v42);
        outlined consume of GraphicsBlendMode?(0, 255);
        goto LABEL_42;
      }

      v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  if (v7 == 3)
  {
    MEMORY[0x1EEE9AC00](a1);
    v21 = *(v20 + 24);
    v49 = *(v20 + 16);
    v50 = v21;
    v51 = v2;
    type metadata accessor for _ShadowShapeStyle<AnyShapeStyle>(0, v20, v22, v23);
    ShapeStyle.mapCopiedStyle<A>(in:body:)(a1, partial apply for closure #2 in _ShadowShapeStyle._apply(to:), &v48, v49, v24, v21, &protocol witness table for _ShadowShapeStyle<A>);
    return;
  }

  if (v7 == 4 || !(v6 | v5 | v4))
  {
LABEL_9:
    v19 = *(*(a2 + 24) + 32);

    v19();
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2B5(uint64_t *a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ControlSizeKey>, &type metadata for ControlSizeKey, &protocol witness table for ControlSizeKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011ControlSizeV033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt0B5(v4, v11);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = *(v7 + 72);
  if (v3 == 5)
  {
    if (v8 == 5)
    {
      return;
    }

LABEL_9:
    v10 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ControlSizeKey>>(0);
    *(swift_allocObject() + 72) = v3;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v10);

    return;
  }

  if (v8 == 5 || v8 != v3)
  {
    goto LABEL_9;
  }
}

double key path setter for EnvironmentValues.controlSize : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011ControlSizeK033_B084178BA9D46D059A1FB75185D1E85CLLVG_Ttg5(v3, *a2);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ControlSizeKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ControlSizeKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ControlSizeKey>, &type metadata for ControlSizeKey, &protocol witness table for ControlSizeKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ControlSizeKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ControlSizeKey>>);
    }
  }
}

void key path getter for EnvironmentValues.tint : EnvironmentValues(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04TintI033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(*a1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4;
}

double key path setter for EnvironmentValues.tint : EnvironmentValues(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;

  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA04TintF033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA04TintK033_EB037BD7690CB8A700384AACA7B075E4LLVG_Ttg5(v4, *a2);
  }

  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA04TintF033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt2g5(uint64_t *a1, uint64_t a2)
{
  if (!_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(*a1) || (type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for AnyShapeStyle?, &type metadata for AnyShapeStyle, MEMORY[0x1E69E6720]), !AGCompareValues()))
  {
    v4 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<TintKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintKey>, &type metadata for TintKey, &protocol witness table for TintKey, type metadata accessor for EnvironmentPropertyKey);
    v6 = v5;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v4);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<TintKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TintKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TintKey>, &type metadata for TintKey, &protocol witness table for TintKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<TintKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<TintKey>>);
    }
  }
}

uint64_t View.staticIf<A, B, C>(_:then:else:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  closure #1 in View.staticIf<A, B, C>(_:then:else:)(a2, a3, v9, a6, a7, a8);
  type metadata accessor for StaticIf(0, a7, a8, a9);
  return closure #2 in View.staticIf<A, B, C>(_:then:else:)(a4, a5, v9, a6, a7, a8, a9);
}

uint64_t HierarchicalShapeStyleModifier._apply(to:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = type metadata accessor for OffsetShapeStyle(0, v7, v8, a4);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v17 - v11;
  v13 = a1[7];
  v17[0] = a1[6];
  v17[1] = v13;

  v14 = ShapeStyle.primaryStyle(in:)(v17, v7, v8);

  if (v14)
  {
    v15 = *(v4 + *(a2 + 36));

    specialized OffsetShapeStyle._apply(to:)(a1, v14, v15);
  }

  else
  {
    ShapeStyle.offset(by:)(*(v4 + *(a2 + 36)), v7, v8, v12);
    OffsetShapeStyle._apply(to:)(a1, v9);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t ShapeStyle.primaryStyle(in:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v5 = a1[1];
  v16[27] = 0;
  *&v12 = 0;
  v11 = 1uLL;
  BYTE8(v12) = 5;
  *&v13 = 0;
  BYTE8(v13) = 5;
  *&v14 = v6;
  *(&v14 + 1) = v5;
  v15 = 0u;
  memset(v16, 0, 24);
  v16[24] = 1;
  *&v16[25] = 768;
  v7 = *(a3 + 32);

  v7(&v11, a2, a3);
  v8 = v13;
  v9 = BYTE8(v13);
  v17[4] = v15;
  v18[0] = *v16;
  *(v18 + 12) = *&v16[12];
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = v13;
  v17[3] = v14;
  outlined copy of _ShapeStyle_Shape.Result(v13, BYTE8(v13));
  outlined destroy of _ShapeStyle_Shape(v17);
  if (v9 != 2)
  {
    outlined consume of _ShapeStyle_Shape.Result(v8, v9);
    return 0;
  }

  return v8;
}

void specialized OffsetShapeStyle._apply(to:)(uint64_t *a1, uint64_t a2, Swift::Int a3)
{
  v4 = *a1;
  v5 = a1 + 1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
  if (v8 <= 2)
  {
    if (!*(a1 + 24))
    {
      if (__OFADD__(a3, v4))
      {
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      *a1 = a3 + v4;
      *v5 = 0;
      a1[2] = 0;
      *(a1 + 24) = 0;
LABEL_20:
      (*(*a2 + 80))(a1);
      return;
    }

    if (v8 == 1)
    {
      v9 = v6 + a3;
      if (!__OFADD__(v6, a3))
      {
        v10 = v7 + a3;
        if (!__OFADD__(v7, a3))
        {
          if (v10 >= v9)
          {
            v28 = *a1;
            if (*(a1 + 40) == 1)
            {
              v12 = a1[4];
              v13 = a3;

              outlined consume of _ShapeStyle_Shape.Result(v14, 1u);
              a3 = v13;
              a1[4] = 0;
              *(a1 + 40) = 5;
            }

            else
            {
              v12 = MEMORY[0x1E69E7CC0];
            }

            v24 = a3;
            _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v28, a3);
            v25 = outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
            a1[4] = v12;
            *(a1 + 40) = 1;
            *a1 = v4;
            a1[1] = v9;
            a1[2] = v10;
            *(a1 + 24) = 1;
            (*(*a2 + 80))(a1, v25);
            v28 = v4;
            if (!__OFSUB__(0, v24))
            {
              if (*(a1 + 40) == 1)
              {
                v26 = a1[4];

                outlined consume of _ShapeStyle_Shape.Result(v27, 1u);
                a1[4] = 0;
                *(a1 + 40) = 5;
              }

              else
              {
                v26 = MEMORY[0x1E69E7CC0];
              }

              _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v28, -v24);
              outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
              a1[4] = v26;
              v23 = 1;
              goto LABEL_30;
            }

LABEL_38:
            __break(1u);
            return;
          }

LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      goto LABEL_33;
    }

    if (__OFADD__(a3, v4))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    *a1 = a3 + v4;
    *v5 = 0;
    a1[2] = 0;
    v15 = 2;
LABEL_19:
    *(a1 + 24) = v15;
    goto LABEL_20;
  }

  if (v8 != 3)
  {
    if (v8 != 4)
    {
      if (v7 | v6 | v4)
      {
        v20 = a1[4];
        v21 = *(a1 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v20, v21);
        a1[4] = a2;
        v23 = 2;
      }

      else
      {
        outlined consume of _ShapeStyle_Shape.Result(a1[4], *(a1 + 40));
        a1[4] = 0;
        v23 = 4;
      }

LABEL_30:
      *(a1 + 40) = v23;
      return;
    }

    if (__OFADD__(a3, v4))
    {
      goto LABEL_34;
    }

    *a1 = a3 + v4;
    *v5 = 0;
    a1[2] = 0;
    v15 = 4;
    goto LABEL_19;
  }

  v16 = a3;
  (*(*a2 + 80))(a1);
  if (*(a1 + 40) == 2)
  {
    v17 = a1[4];
    type metadata accessor for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>(0, &lazy cache variable for type metadata for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>, &lazy cache variable for type metadata for OffsetShapeStyle<AnyShapeStyle>, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle);
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v16;

    outlined consume of _ShapeStyle_Shape.Result(v19, 2u);
    a1[4] = v18;
    *(a1 + 40) = 2;
  }
}

void protocol witness for ResolvedPaint.draw(path:style:in:bounds:) in conformance ColorView(double *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(v3 + 16);
  v16 = *v3;
  LODWORD(v17) = v9;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v16);
  v14[8] = v24;
  v14[9] = v25;
  v15 = v26;
  v14[4] = v20;
  v14[5] = v21;
  v14[6] = v22;
  v14[7] = v23;
  v14[0] = v16;
  v14[1] = v17;
  v14[2] = v18;
  v14[3] = v19;
  v10 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v10;
  v12 = v7;
  v13 = v8;
  GraphicsContext.draw(_:with:style:)(a1, v14, v11, a3);
}

uint64_t DisplayList.ViewUpdater.Platform.updateDrawingViewAsync(_:oldOptions:newOptions:content:sizeChanged:newSize:newState:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, char a5, __int128 *a6, CGFloat width, CGFloat height)
{
  v13 = *a2;
  v14 = *(a2 + 2);
  v15 = a2[2];
  v16 = *(a2 + 12);
  v17 = *(a3 + 4);
  v18 = *(a3 + 8);
  v19 = *(a3 + 12);
  v20 = *a4;
  v21 = *(a4 + 8);
  v22 = *(a4 + 16);
  v23 = *(a4 + 24);
  v24 = *(a4 + 32);
  v25 = *(a4 + 40);
  LODWORD(v83) = *a3;
  WORD2(v83) = v17;
  DWORD2(v83) = v18;
  BYTE12(v83) = v19;
  LODWORD(v72[0]) = v13;
  WORD2(v72[0]) = v14;
  DWORD2(v72[0]) = v15;
  BYTE12(v72[0]) = v16;
  if (!specialized static RasterizationOptions.== infix(_:_:)(&v83, v72))
  {
    return 0;
  }

  v57 = *a1;
  result = [*a1 delegate];
  if (!result)
  {
    return result;
  }

  swift_getObjectType();
  v27 = swift_conformsToProtocol2();
  if (!v27 || ((v55 = v27, v56 = a5, x = 0.0, (*(a1 + 17) & 8) != 0) && (v29 = a6[9], v30 = a6[7], v79 = a6[8], v80 = v29, v31 = a6[9], v81 = a6[10], v32 = a6[5], v33 = a6[3], v75 = a6[4], v76 = v32, v34 = a6[5], v35 = a6[7], v77 = a6[6], v78 = v35, v36 = a6[1], v72[0] = *a6, v72[1] = v36, v37 = a6[3], v39 = *a6, v38 = a6[1], v73 = a6[2], v74 = v37, v67 = v79, v68 = v31, v69 = a6[10], v63 = v75, v64 = v34, v65 = v77, v66 = v30, v59 = v39, v60 = v38, v82 = *(a6 + 22), v70 = *(a6 + 22), v61 = v73, v62 = v33, DisplayList.ViewUpdater.Model.State.clipRect()(&v71), v91 = v67, v92 = v68, v93 = v69, v94 = v70, v87 = v63, v88 = v64, v89 = v65, v90 = v66, v83 = v59, v84 = v60, v85 = v61, v86 = v62, outlined init with copy of DisplayList.ViewUpdater.Model.State(v72, v58), outlined destroy of DisplayList.ViewUpdater.Model.State(&v83), v71.value.style != SwiftUI_RoundedCornerStyle_unknownDefault) ? (width = v71.value.rect.size.width, height = v71.value.rect.size.height, x = v71.value.rect.origin.x, y = v71.value.rect.origin.y) : (y = 0.0), ObjectType = swift_getObjectType(), *&v83 = v20, *(&v83 + 1) = v21, *&v84 = v22, *(&v84 + 1) = v23, *&v85 = v24, BYTE8(v85) = v25, v42 = v21, v43 = *(v55 + 48), outlined copy of PlatformDrawableContent.Storage(v20, v42, v22, v23, v24, v25), v44 = v43(&v83, v56 & 1, v57, ObjectType, v55, x, y, width, height), v46 = v45, outlined consume of PlatformDrawableContent.Storage(v83, *(&v83 + 1), v84, *(&v84 + 1), v85, BYTE8(v85)), !v44))
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v47 = *(a1 + 8);
  v48 = swift_allocObject();
  *(v48 + 16) = v44;
  *(v48 + 24) = v46;
  v49 = *(v47 + 56);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v47 + 56) = v49;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v49[2] + 1, 1, v49);
    *(v47 + 56) = v49;
  }

  v52 = v49[2];
  v51 = v49[3];
  if (v52 >= v51 >> 1)
  {
    *(v47 + 56) = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v49);
  }

  swift_unknownObjectRelease();
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v44, v46);
  v53 = *(v47 + 56);
  *(v53 + 16) = v52 + 1;
  v54 = v53 + 16 * v52;
  *(v54 + 32) = thunk for @callee_guaranteed () -> ()partial apply;
  *(v54 + 40) = v48;
  return 1;
}

void CanvasSymbols.SymbolSize.value.getter(unint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*MEMORY[0x1E698D3F8] == HIDWORD(a1))
  {
    v3 = *AGGraphGetValue();
    v4 = v3;
LABEL_10:
    *a2 = v3;
    a2[1] = v4;
    return;
  }

  v5 = *AGGraphGetValue();

  Value = AGGraphGetValue();
  v7 = *Value;
  v12 = *Value;
  v13 = Value[1];
  if (one-time initialization token for lockAssertionsAreEnabled != -1)
  {
    swift_once();
    v7 = v12;
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_9;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  IsOwner = _MovableLockIsOwner(static Update._lock);
  v7 = v12;
  if (IsOwner)
  {
LABEL_9:
    v14 = v7;
    v15 = 0;
    v16 = v13;
    v17 = 0;
    v10 = (*(*v5 + 120))(&v14);
    v11 = v9;

    *&v4 = v12;
    *(&v4 + 1) = v13;
    *&v3 = v10;
    *(&v3 + 1) = v11;
    goto LABEL_10;
  }

  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t outlined consume of GraphicsBlendMode?(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return outlined consume of GraphicsBlendMode(result, a2 & 1);
  }

  return result;
}

double TintShapeStyle._apply(to:)(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (*(a1 + 56))
  {

    v3 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04TintI033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt1g5(v2);

    if (v3)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(*(a1 + 48));
  if (!v4 || (v3 = v4[9], , !v3))
  {
LABEL_6:
    type metadata accessor for ColorBox<Color.AccentColorProvider>(0);
    v3 = swift_allocObject();
  }

LABEL_7:
  (*(*v3 + 80))(a1);

  return result;
}

void type metadata accessor for ColorBox<Color.AccentColorProvider>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ColorBox<Color.AccentColorProvider>)
  {
    lazy protocol witness table accessor for type Color.AccentColorProvider and conformance Color.AccentColorProvider();
    v4 = type metadata accessor for ColorBox(a1, &type metadata for Color.AccentColorProvider, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ColorBox<Color.AccentColorProvider>);
    }
  }
}

void specialized GraphicsContext.drawLayer(flags:content:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v18[14] = a3;
  v8 = a1;
  v9 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  inited = swift_initStackObject();
  *(inited + 32) = xmmword_18DD85500;
  *(inited + 48) = 1065353216;
  *(inited + 56) = 0x7FF8000000000000;
  v11 = *(a2 + 16);
  v12 = *(v11 + 64);
  if (v12 == RBDrawingStateGetDefaultColorSpace())
  {
    *(inited + 16) = v11;
  }

  else
  {
    v17 = RBDrawingStateGetDisplayList();
    v14 = *(a2 + 32);
    v13 = *(a2 + 40);
    v15 = v14;
    v16 = v13;
    if (v14 == 1)
    {
      v15 = *(v11 + 48);
      v16 = *(v11 + 56);
    }

    v18[0] = v15;
    v18[1] = v16;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v14, v13);
    *(inited + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v17, v18);
  }

  *(inited + 24) = v9;
  *(inited + 64) = 0;
  if ((v8 & 0x20) != 0)
  {
    *(inited + 48) = *(a2 + 48);
    *(inited + 52) = *(a2 + 52);
  }

  v18[0] = inited;

  if (a4 != 0.0 || a5 != 0.0)
  {
    GraphicsContext.copyOnWrite()();
    RBDrawingStateTranslateCTM();
  }

  RBDrawingStateDrawDisplayList2();

  RBDrawingStateDrawLayer();
}

void specialized _ColorMatrix.init(colorMultiply:premultiplied:)(char a1@<W0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>, float a6@<S3>)
{
  v12 = -a3;
  if (a3 > 0.0)
  {
    v12 = a3;
  }

  if (v12 <= 0.0031308)
  {
    v13 = v12 * 12.92;
  }

  else
  {
    v13 = 1.0;
    if (v12 != 1.0)
    {
      v13 = (powf(v12, 0.41667) * 1.055) + -0.055;
    }
  }

  v14 = -a4;
  if (a4 > 0.0)
  {
    v14 = a4;
  }

  if (v14 <= 0.0031308)
  {
    v15 = v14 * 12.92;
  }

  else
  {
    v15 = 1.0;
    if (v14 != 1.0)
    {
      v15 = (powf(v14, 0.41667) * 1.055) + -0.055;
    }
  }

  v16 = -a5;
  if (a5 > 0.0)
  {
    v16 = a5;
  }

  if (v16 <= 0.0031308)
  {
    v17 = v16 * 12.92;
  }

  else
  {
    v17 = 1.0;
    if (v16 != 1.0)
    {
      v17 = (powf(v16, 0.41667) * 1.055) + -0.055;
    }
  }

  v18 = -v15;
  if (a4 > 0.0)
  {
    v18 = v15;
  }

  v19 = -v13;
  if (a3 > 0.0)
  {
    v19 = v13;
  }

  if (a5 <= 0.0)
  {
    v17 = -v17;
  }

  if (a1)
  {
    v18 = v18 * a6;
    v19 = v19 * a6;
  }

  *a2 = v19;
  *(a2 + 12) = 0;
  *(a2 + 4) = 0;
  *(a2 + 20) = 0;
  *(a2 + 24) = v18;
  *(a2 + 36) = 0;
  *(a2 + 28) = 0;
  *(a2 + 44) = 0;
  v20 = v17 * a6;
  if ((a1 & 1) == 0)
  {
    v20 = v17;
  }

  *(a2 + 48) = v20;
  *(a2 + 60) = 0;
  *(a2 + 52) = 0;
  *(a2 + 68) = 0;
  *(a2 + 72) = a6;
  *(a2 + 76) = 0;
}

void specialized RendererEffectDisplayList.value.getter(uint64_t a2@<X8>, __n128 a3@<Q0>)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = *MEMORY[0x1E698D3F8];
  v6 = MEMORY[0x1E69E7CC0];
  if (v3[8] != *MEMORY[0x1E698D3F8])
  {
    Value = AGGraphGetValue();
    v8 = *Value;
    v41 = *(Value + 12) << 32;
    v7 = *(Value + 8) | 0x40000000;

    if (*(v8 + 16))
    {
      goto LABEL_3;
    }

LABEL_6:

    *a2 = v6;
    *(a2 + 8) = 0;
    *(a2 + 12) = 0;
    return;
  }

  v41 = 0;
  v7 = 0x40000000;
  v8 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = ++static DisplayList.Version.lastValue;
  if (AGGraphGetCurrentAttribute() == v5)
  {
    __break(1u);
  }

  v39 = v7;
  v10 = AGCreateWeakAttribute();
  v11 = v10;
  v36 = HIDWORD(v10);
  v12 = AGCreateWeakAttribute();
  v37 = v9;
  v13 = v12;
  v35 = HIDWORD(v12);
  v14 = AGCreateWeakAttribute();
  v15 = v14;
  v34 = HIDWORD(v14);
  v16 = AGCreateWeakAttribute();
  v17 = v16;
  v40 = a2;
  v18 = HIDWORD(v16);
  v19 = AGCreateWeakAttribute();
  v20 = v19;
  v38 = v8;
  v21 = HIDWORD(v19);
  v22 = AGCreateWeakAttribute();
  v23 = v22;
  v24 = HIDWORD(v22);
  _threadGeometryProxyData();
  *&v50 = __PAIR64__(v36, v11);
  *(&v50 + 1) = __PAIR64__(v35, v13);
  *&v51 = __PAIR64__(v34, v15);
  *(&v51 + 1) = __PAIR64__(v18, v17);
  *&v52 = __PAIR64__(v21, v20);
  *(&v52 + 1) = __PAIR64__(v24, v23);
  LODWORD(v53[0]) = v37;
  _setThreadGeometryProxyData();
  AGGraphGetValue();
  AGGraphGetValue();
  _setThreadGeometryProxyData();
  type metadata accessor for CGPoint(0);
  v25 = AGGraphGetValue();
  v26 = *v25;
  v27 = v25[1];
  v28 = AGGraphGetValue();
  v29 = v26 - *v28;
  v30 = v27 - v28[1];
  v31 = AGGraphGetValue();
  v32 = *v3;
  *&v45 = v29;
  *(&v45 + 1) = v30;
  v46 = *v31;
  *&v47[8] = a3;
  *&v47[24] = v38;
  *&v47[32] = v39 | v41;
  *&v47[40] = v32;
  *v47 = v37;
  LOBYTE(v50) = *(v3 + 36);
  DisplayList.Item.canonicalize(options:)(&v50);
  v48[2] = *v47;
  v49[0] = *&v47[16];
  *(v49 + 12) = *&v47[28];
  v48[0] = v45;
  v48[1] = v46;
  v43[2] = *v47;
  v44[0] = *&v47[16];
  *(v44 + 12) = *&v47[28];
  v43[0] = v45;
  v43[1] = v46;
  outlined init with copy of DisplayList.Item(v48, &v50);
  DisplayList.init(_:)(v43, v40);
  v52 = *v47;
  v53[0] = *&v47[16];
  *(v53 + 12) = *&v47[28];
  v50 = v45;
  v51 = v46;
  outlined destroy of DisplayList.Item(&v50);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI18LocalizedStringKeyV14FormatArgumentV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringKey.FormatArgument(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        outlined init with copy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(v13, v10, type metadata accessor for LocalizedStringKey.FormatArgument);
        outlined init with copy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(v14, v6, type metadata accessor for LocalizedStringKey.FormatArgument);
        v16 = static LocalizedStringKey.FormatArgument.Storage.== infix(_:_:)(v10, v6);
        outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(v6, type metadata accessor for LocalizedStringKey.FormatArgument);
        outlined destroy of KeyedAnimatableArray<_ShapeStyle_Pack.Key, AnimatablePair<_ShapeStyle_Pack.Fill.AnimatableData, AnimatablePair<Float, AnimatableArray<AnimatablePair<Float, _ShapeStyle_Pack.Effect.Kind.AnimatableData>>>>>.Element(v10, type metadata accessor for LocalizedStringKey.FormatArgument);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t LocalizedTextStorage.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = result;
    v4 = *(v1 + 32);
    v5 = *(v1 + 40);
    v6 = *(result + 32);
    v7 = *(result + 40);
    if (*(v1 + 16) == *(result + 16) && *(v1 + 24) == *(result + 24))
    {
      if (v4 != v6)
      {
        return 0;
      }
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = 0;
      if (v9 & 1) == 0 || ((v4 ^ v6))
      {
        return result;
      }
    }

    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI18LocalizedStringKeyV14FormatArgumentV_Tt1g5(v5, v7))
    {
      v10 = *(v1 + 56);
      v11 = v3[7];
      if (v10)
      {
        if (!v11)
        {
          goto LABEL_23;
        }

        v12 = *(v1 + 48) == v3[6] && v10 == v11;
        if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_23;
        }

LABEL_20:
        v13 = *(v1 + 64);
        v14 = v3[8];
        if (!v13)
        {
          v18 = v14;

          if (!v14)
          {
            return 1;
          }

          return 0;
        }

        if (v14)
        {
          type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSBundle, 0x1E696AAE8);
          v15 = v14;
          v16 = v13;
          v17 = static NSObject.== infix(_:_:)();

          return v17 & 1;
        }

        goto LABEL_23;
      }

      if (!v11)
      {
        goto LABEL_20;
      }
    }

LABEL_23:

    return 0;
  }

  return result;
}

void *specialized _DynamicPropertyBuffer.append<A>(_:fieldOffset:)(int a1, uint64_t a2)
{
  type metadata accessor for BoxVTable<Text.Measurements.Box>(0, &lazy cache variable for type metadata for BoxVTable<IdentityLinkBox>, &type metadata for IdentityLinkBox, &protocol witness table for IdentityLinkBox);
  v6 = v5;
  result = UnsafeHeterogeneousBuffer.allocate(bytes:)(0x20);
  *result = v6;
  result[1] = 32;
  *(result + 4) = a1;
  v8 = *v2;
  if (!*v2)
  {
    goto LABEL_15;
  }

  if (result - v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (result - v8 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = *(v2 + 3);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v2 + 3) = v11;
  if (a2 < 0xFFFFFFFF80000000)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (a2 <= 0x7FFFFFFF)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      *(result + 3) = *(result + 3) & 0x80000000 | a2;
      return result;
    }

    goto LABEL_14;
  }

LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

double View.symbolVariant(_:)(__int16 *a1, uint64_t a2)
{
  v3 = *a1;
  KeyPath = swift_getKeyPath();
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.symbolVariant(_:), v5, a2);

  return result;
}

SwiftUI::Time __swiftcall DisplayList.nextUpdate(after:)(SwiftUI::Time after)
{
  v4 = *v1;
  v5 = v3[4];
  if ((v5 & 4) == 0)
  {
    if ((v5 & 8) != 0 && (v6 = *v3, (v7 = *(*v3 + 16)) != 0))
    {
      v8 = v2;
      v9 = 0;
      v10 = (v6 + 32);
      v11 = v7 - 1;
      v12 = INFINITY;
      while (1)
      {
        DisplayList.Item.nextUpdate(after:)(v10[2]);
        after.seconds = v14;
        if (v14 < v12)
        {
          v12 = v14;
        }

        if (v12 == v4 || v11 == v9)
        {
          break;
        }

        ++v9;
        v2 = *(v6 + 16);
        v10 += 10;
        if (v9 >= v2)
        {
          __break(1u);
          goto LABEL_13;
        }
      }

      v4 = v12;
      v2 = v8;
    }

    else
    {
LABEL_13:
      v4 = INFINITY;
    }
  }

  *v2 = v4;
  return after;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011LineSpacingF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(uint64_t *a1, double a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA011LineSpacingS033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt0g5(*a1);
  if (!v4 || v4[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<LineSpacingKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineSpacingKey>, &type metadata for LineSpacingKey, &protocol witness table for LineSpacingKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<LineSpacingKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<LineSpacingKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<LineSpacingKey>, &type metadata for LineSpacingKey, &protocol witness table for LineSpacingKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<LineSpacingKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<LineSpacingKey>>);
    }
  }
}

uint64_t FilteredTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v6 = a2;
  v34 = a4;
  v7 = *(a3 + 16);
  v31 = a3;
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 24);
  v14 = type metadata accessor for ApplyTransitionModifier(0, v7, v12, v13);
  v33 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  v32 = type metadata accessor for _PushPopTransactionModifier(0, v14, &protocol witness table for ApplyTransitionModifier<A>, v17);
  v18 = *(v32 - 8);
  v19 = MEMORY[0x1EEE9AC00](v32);
  v21 = &v31 - v20;
  (*(v8 + 16))(v10, v5, v7, v19);
  ApplyTransitionModifier.init(transition:phase:)(v10, v6, v7, v12, v16);
  v22 = v31;
  v23 = (v5 + *(v31 + 36));
  v25 = *v23;
  v24 = v23[1];
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = v24;
  *(v26 + 32) = v6;
  ViewModifier.transaction(_:)(partial apply for closure #1 in FilteredTransition.body(content:phase:), v26, v14, &protocol witness table for ApplyTransitionModifier<A>, v21);

  (*(v33 + 8))(v16, v14);
  type metadata accessor for PlaceholderContentView(0, v22, v27, v28);
  v29 = v32;
  View.modifier<A>(_:)();
  return (*(v18 + 8))(v21, v29);
}

uint64_t sub_18D2C5D24()
{

  return swift_deallocObject();
}

uint64_t ApplyTransitionModifier.init(transition:phase:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for ApplyTransitionModifier(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

double EnvironmentValues.multilineTextAlignment.setter(unsigned __int8 a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA013TextAlignmentF033_52803FDE2123C3846E0286DE7934BA01LLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA013TextAlignmentK033_52803FDE2123C3846E0286DE7934BA01LLVG_Ttg5(v4, *v2);
  }

  return result;
}

uint64_t specialized AsyncTransaction.append<A>(_:)()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = v2[2];
  if (!v3)
  {
    goto LABEL_6;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v2 = result;
  }

  if (v3 > v2[2])
  {
    __break(1u);
    return result;
  }

  v5 = &v2[5 * v3];
  v6 = v5[3];
  __swift_mutable_project_boxed_opaque_existential_1((v5 - 1), v5[2]);
  result = (*(v6 + 16))();
  *(v1 + 16) = v2;
  if ((result & 1) == 0)
  {
LABEL_6:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2[2] + 1, 1, v2);
    }

    v8 = v2[2];
    v7 = v2[3];
    if (v8 >= v7 >> 1)
    {
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v2);
    }

    v10 = &type metadata for EmptyGraphMutation;
    v11 = &protocol witness table for EmptyGraphMutation;
    v2[2] = v8 + 1;
    result = outlined init with take of AnyTrackedValue(&v9, &v2[5 * v8 + 4]);
    *(v1 + 16) = v2;
  }

  return result;
}

double Transition.transaction(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(a3 - 8);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v5, v12);
  (*(v11 + 32))(a5, v14, a3);
  v16 = (a5 + *(type metadata accessor for FilteredTransition(0, a3, a4, v15) + 36));
  *v16 = a1;
  v16[1] = a2;

  return result;
}

void *static ApplyTransitionModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a1;
  v13 = *(a2 + 48);
  v22[2] = *(a2 + 32);
  v22[3] = v13;
  v22[4] = *(a2 + 64);
  v23 = *(a2 + 80);
  v14 = *(a2 + 16);
  v22[0] = *a2;
  v22[1] = v14;
  v21 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for ApplyTransitionModifier.Child(0, a5, a6, v16);
  swift_getWitnessTable(protocol conformance descriptor for ApplyTransitionModifier<A>.Child, v17);
  _GraphValue.init<A>(_:)(&v21, AssociatedTypeWitness, v17, v18, &v20);
  return static Transition.makeView(view:inputs:body:)(&v20, v22, a3, a4, a5, a7);
}

Swift::Void __swiftcall GraphHost.incrementPhase()()
{
  swift_beginAccess();
  AGGraphGetValue();
  v1 = AGGraphSetValue();
  if ((*(*v0 + 192))(v1))
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    (*(v3 + 16))(ObjectType, v3);
    swift_unknownObjectRelease();
  }
}

uint64_t assignWithTake for VStack(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(*(a3 + 16) - 8);
  (*(v5 + 40))((*(v5 + 80) + 17 + a1) & ~*(v5 + 80), (*(v5 + 80) + 17 + a2) & ~*(v5 + 80));
  return a1;
}

uint64_t static BoxVTable.reset(elt:)()
{
  v1 = *(v0 + 136);
  _UnsafeHeterogeneousBuffer_Element.body<A>(as:)();
  return (*(*(v0 + 144) + 32))(v1);
}

void type metadata accessor for (LocalizedStringKey.FormatArgument.Storage, LocalizedStringKey.FormatArgument.Storage)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (LocalizedStringKey.FormatArgument.Storage, LocalizedStringKey.FormatArgument.Storage))
  {
    type metadata accessor for LocalizedStringKey.FormatArgument.Storage(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (LocalizedStringKey.FormatArgument.Storage, LocalizedStringKey.FormatArgument.Storage));
    }
  }
}

uint64_t specialized closure #1 in AGAttribute.mutateBody<A>(as:invalidating:_:)(uint64_t result)
{
  *(result + 24) = 0;
  return result;
}

{
  ++*(result + 8);
  return result;
}

{
  *(result + 24) = 1;
  return result;
}

void protocol witness for static RemovableAttribute.willRemove(attribute:) in conformance LazyDisplayListWrapper(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  AGGraphGetAttributeInfo();
  *(v8 + 8) = a4;
  v9 = *v8;
  if (*v8)
  {
    swift_beginAccess();
    v10 = *(v9 + 16);
    swift_unownedRetainStrong();
    if (v10)
    {
      v11 = *(v10 + 156);
      swift_beginAccess();
      updated = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(*(v10 + 32));
      swift_endAccess();
      v14[0] = 10;
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = updated & 1;
      static Update.enqueueAction(reason:_:)(v14, a6, v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void closure #1 in LazyLayoutViewCache.signalPrefetch()(uint64_t a1, char a2)
{
  if (AGWeakAttributeGetAttribute() != *MEMORY[0x1E698D3F8])
  {
    v4 = AGGraphGetAttributeGraph();
    Context = AGGraphGetContext();
    if (Context)
    {
      v6 = Context;

      v7 = _threadTransactionID();
      specialized GraphHost.asyncTransaction<A>(_:id:mutation:style:mayDeferUpdate:)(0, v7, a1, 1, 0);
      if (a2)
      {
      }

      else
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v8 = *(v6 + 208);
          ObjectType = swift_getObjectType();
          (*(v8 + 24))(ObjectType, v8, 0.0);
          swift_unknownObjectRelease();
        }
      }
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall _LazyLayoutViewCache.reset()()
{
  v1 = v0;
  v2 = *(*v0 + 448);
  v3 = *(*v0 + 440);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v10 - v7;
  (*(v2 + 40))(v3, v2, v6);
  v9 = *(*v1 + 464);
  swift_beginAccess();
  (*(v5 + 40))(v1 + v9, v8, AssociatedTypeWitness);
  swift_endAccess();
  LazyLayoutViewCache.reset()();
}

Swift::Void __swiftcall LazyLayoutViewCache.reset()()
{
  swift_beginAccess();
  *(v0 + 200) = 0;
  *(v0 + 208) = 1;
  *(v0 + 184) = 1;
  *(v0 + 216) = 0;

  *(v0 + 224) = 0x100000001;
  *(v0 + 341) = 0;
  *(v0 + 343) = 1;
  *(v0 + 312) = 0;
  v1 = *(v0 + 352);
  *(v0 + 344) = 0;
  *(v0 + 352) = 1;
  if ((v1 & 1) == 0)
  {
    v2 = *(v0 + 156);
    swift_beginAccess();
    updated = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(*(v0 + 32));
    swift_endAccess();
    v14[0] = 10;
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = updated & 1;
    static Update.enqueueAction(reason:_:)(v14, partial apply for closure #1 in LazyLayoutViewCache.signalPrefetch(), v4);
  }

  swift_beginAccess();
  v5 = *(v0 + 176);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  while (v8)
  {
    v11 = v10;
LABEL_11:
    v12 = *(*(v5 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
    *(v12 + 184) = 0;
    *(v12 + 216) = 0;
    v8 &= v8 - 1;
    *(v12 + 192) = 0;
    *(v12 + 200) = 0;
    *(v12 + 205) = 0;
    *(v12 + 224) = 1;
    *(v12 + 228) = 0;
    *(v12 + 232) = 0u;
    *(v12 + 248) = 0u;
    *(v12 + 264) = 0u;
    *(v12 + 280) = 0u;
    *(v12 + 296) = 1;
    *(v12 + 384) = 0;
    *(v12 + 387) = 0;

    LazyLayoutViewCache.resetMaxDisplayListSubviews(item:)(v13);
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void LazyLayoutViewCache.resetMaxDisplayListSubviews(item:)(uint64_t a1)
{
  v2 = *(a1 + 152);
  v32 = *(a1 + 144);
  v33 = v2;

  _ViewList_ID.Canonical.init(id:)(&v32, v36);
  v3 = v36[0];
  v4 = v36[1];
  swift_beginAccess();
  v5 = *(v1 + 368);
  if (*(v5 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v4), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 16 * v6 + 8);

    swift_endAccess();

    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = v8 + 32;
      do
      {
        _s2os6LoggerVSgWOcTm_1(v11, v38, &lazy cache variable for type metadata for WeakBox<LazyLayoutViewCache>, v9, type metadata accessor for LazyLayoutViewCache, type metadata accessor for WeakBox);
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          v15 = *(Strong + 352);
          *(Strong + 344) = 0;
          *(Strong + 352) = 1;
          if ((v15 & 1) == 0)
          {
            v16 = *(Strong + 156);
            v17 = Strong;
            swift_beginAccess();
            v18 = *(v17 + 32);
            BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.UpdateCycleUseSetNeedsLayoutKey);
            updated = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutV033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt0B5(v18, v19, v37);
            if (updated)
            {
              v21 = *(updated + 72);
            }

            else
            {
              if (one-time initialization token for v7 != -1)
              {
                swift_once();
              }

              v22 = static Semantics.v7;
              if (one-time initialization token for forced != -1)
              {
                swift_once();
              }

              swift_beginAccess();
              if (byte_1ED53C51C)
              {
                v21 = dyld_program_sdk_at_least();
              }

              else
              {
                v21 = static Semantics.forced >= v22;
              }
            }

            swift_endAccess();
            v23 = swift_allocObject();
            *(v23 + 16) = v16;
            *(v23 + 24) = v21;
            specialized static Update.begin()();
            LOBYTE(v37) = 10;

            Update.Action.init(reason:thunk:)(&v37, closure #1 in LazyLayoutViewCache.signalPrefetch()partial apply, v23, &v32);
            v24 = v32;
            v25 = v33;
            v26 = v34;
            v27 = v35;
            v28 = one-time initialization token for actions;

            if (v28 != -1)
            {
              swift_once();
            }

            v29 = static Update.actions;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
            }

            v31 = *(v29 + 2);
            v30 = *(v29 + 3);
            if (v31 >= v30 >> 1)
            {
              v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
            }

            *(v29 + 2) = v31 + 1;
            v12 = &v29[32 * v31];
            v12[32] = v24;
            *(v12 + 5) = v25;
            *(v12 + 6) = v26;
            *(v12 + 14) = v27;
            static Update.actions = v29;

            static Update.end()();
          }
        }

        _s2os6LoggerVSgWOhTm_1(v38, &lazy cache variable for type metadata for WeakBox<LazyLayoutViewCache>, v13, type metadata accessor for LazyLayoutViewCache, type metadata accessor for WeakBox);
        v11 += 8;
        --v10;
      }

      while (v10);
    }
  }

  else
  {

    swift_endAccess();
  }
}

void BoldTextModifier.modify(style:environment:)(uint64_t a1)
{
  if (*(v1 + 16) != 1)
  {
    specialized MutableCollection._halfStablePartition(isSuffixElement:)((a1 + 8));
    v5 = *(a1 + 8);
    if (v5 >> 62)
    {
      v7 = v3;
      v6 = __CocoaSet.count.getter();
      v3 = v7;
      if (v6 >= v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6 >= v3)
      {
LABEL_7:
        specialized Array.replaceSubrange<A>(_:with:)(v3, v6, v4);
        type metadata accessor for Text.Style(0);
        specialized Set._Variant.insert(_:)(&v8, &type metadata for Font.BoldModifier);
        return;
      }
    }

    __break(1u);
    return;
  }

  _s7SwiftUI15AnyFontModifierC6staticyACxmAA06StaticdE0RzlFZAA0D0V010MonospacedE0V_Ttt0g5Tm(&type metadata for Font.BoldModifier, &lazy cache variable for type metadata for AnyStaticFontModifier<Font.BoldModifier>, &protocol witness table for Font.BoldModifier);
  MEMORY[0x193ABF170]();
  if (*((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a1 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

uint64_t _s7SwiftUI15AnyFontModifierC6staticyACxmAA06StaticdE0RzlFZAA0D0V010MonospacedE0V_Ttt0g5Tm(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (one-time initialization token for staticModifiers != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static AnyFontModifier.staticModifiers;
  if (*(static AnyFontModifier.staticModifiers + 2) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    _s7SwiftUI17InterfaceIdiomBox33_39057DDA72E946BD17E1F42CCA55F7F6LLVyAA05PhonecD0VGMaTm_2(0, a2, a1, a3, type metadata accessor for AnyStaticFontModifier);
    v9 = swift_allocObject();
    swift_beginAccess();
    swift_retain_n();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = static AnyFontModifier.staticModifiers;
    static AnyFontModifier.staticModifiers = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, isUniquelyReferenced_nonNull_native);
    static AnyFontModifier.staticModifiers = v12;
    swift_endAccess();
  }

  return v9;
}

unint64_t _TextRendererViewModifier.MakeTextRenderer.init(renderer:environment:)(unsigned int a1, uint64_t a2)
{
  type metadata accessor for PropertyList.Tracker();
  v4 = swift_allocObject();
  _sypSgMaTm_9(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = MEMORY[0x1E69E7CC8];
  *(v5 + 24) = 0;
  *(v5 + 32) = v6;
  v7 = MEMORY[0x1E69E7CC0];
  *(v5 + 40) = v6;
  *(v5 + 48) = v7;
  *(v5 + 56) = 0;
  *(v4 + 16) = v5;
  return a1 | (a2 << 32);
}

CGImageRef_optional __swiftcall GraphicsImage.render(at:prefersMask:)(CGSize at, Swift::Bool prefersMask)
{
  result.value = 0;
  v5 = v2[5];
  v54 = v2[4];
  v55[0] = v5;
  *(v55 + 12) = *(v2 + 92);
  v6 = v2[1];
  v50 = *v2;
  v51 = v6;
  v7 = v2[3];
  v52 = v2[2];
  v53 = v7;
  if (at.width > 0.0 && at.height > 0.0)
  {
    result.value = 0;
    v8.value = v50;
    if (BYTE8(v50) > 2u)
    {
      if (BYTE8(v50) - 4 >= 2 && BYTE8(v50) == 3)
      {
        v30 = prefersMask;
        v32 = *(v50 + 16);
        v31 = *(v50 + 24);
        v33 = v2[5];
        v48 = v2[4];
        v49[0] = v33;
        *(v49 + 12) = *(v2 + 92);
        v34 = v2[1];
        v44 = *v2;
        v45 = v34;
        v35 = v2[3];
        v46 = v2[2];
        v47 = v35;
        *&v36 = COERCE_DOUBLE(GraphicsImage.renderedSize(at:)(at.width, at.height));
        if (v38)
        {
          v39 = *&v51;
          v40 = 0.0;
          if (*&v51 == 0.0)
          {
            v41 = 0.0;
          }

          else
          {
            v40 = 1.0 / *&v51 * *(&v51 + 1);
            v41 = 1.0 / *&v51 * *&v52;
          }
        }

        else
        {
          v40 = *&v36;
          v41 = v37;
          v39 = *&v51;
        }

        v42 = *(*v32 + 104);
        outlined init with copy of GraphicsImage(&v50, &v44);

        outlined copy of Image.Location?(v31);

        v43.value = v42(v30, v40, v41, v39);

        outlined consume of Image.Location?(v31);

        outlined destroy of GraphicsImage(&v50);
        return v43;
      }
    }

    else if (BYTE8(v50))
    {
      if (BYTE8(v50) != 1)
      {
        v9 = *(v50 + 16);
        v10 = *(v50 + 32);
        v11 = *(v50 + 48);
        v12 = v2[5];
        v48 = v2[4];
        v49[0] = v12;
        *(v49 + 12) = *(v2 + 92);
        v13 = v2[1];
        v44 = *v2;
        v45 = v13;
        v14 = v2[3];
        v46 = v2[2];
        v47 = v14;
        v15 = GraphicsImage.renderedSize(at:)(at.width, at.height);
        v17 = v16;
        v19 = v18;
        v20 = v51;
        outlined init with copy of GraphicsImage(&v50, &v44);
        v21 = v9;
        outlined copy of Image.Location(v10);
        v22 = v11;
        v23 = [v21 glyph];
        if (v23)
        {
          v24 = v23;
          v25 = v19 & 1;
          if (v25)
          {
            v20 = 0;
            v17 = 0;
            v15 = 0;
          }

          [v21 variableValue];
          LOBYTE(v44) = (*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL;
          if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            v28 = 0;
          }

          else
          {
            *&v27 = v26;
            v28 = v27;
          }

          v29 = CUINamedVectorGlyph.image(at:value:)(v15, v17, v20, v25, v28 | (((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL) << 32));

          outlined consume of Image.Location(v10);
          outlined destroy of GraphicsImage(&v50);
          return v29;
        }

        else
        {

          outlined consume of Image.Location(v10);
          outlined destroy of GraphicsImage(&v50);
          return 0;
        }
      }
    }

    else
    {
      outlined init with copy of GraphicsImage(&v50, &v44);
      return v8;
    }
  }

  return result;
}

uint64_t GraphicsImage.renderedSize(at:)(double a1, double a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 104);
  if (v4 == 2 || (result = 0, (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(v2 + 72)), vceqzq_f64(*(v2 + 88)))))) & 1) == 0) && (v4 & 1) != 0)
  {
    if (*(v2 + 40) <= 3u)
    {
      v6 = a2;
    }

    else
    {
      v6 = a1;
    }

    if (*(v2 + 40) > 3u)
    {
      a1 = a2;
    }

    v7 = 0.0;
    v8 = 0.0;
    if (v3 != 0.0)
    {
      v9 = 1.0 / v3;
      v7 = *(v2 + 24) * v9;
      v8 = v9 * *(v2 + 32);
    }

    if (a1 == v7 && v6 == v8)
    {
      return 0;
    }

    else
    {
      return *&a1;
    }
  }

  return result;
}

CGImageRef CachedVectorImageContents.image(size:imageScale:prefersMask:)(char a1, double a2, double a3, double a4)
{
  v6 = v4;
  v11 = a1 ^ 1;
  v12 = (*(*v4 + 88))();
  v14 = v13;
  v15 = v13 != a3 || v12 != a2;
  if (!v15)
  {
    swift_beginAccess();
    v4 = v4[2];
    if (v4[2])
    {
      v16 = specialized __RawDictionaryStorage.find<A>(_:)(v11 & 1);
      if (v17)
      {
        Image = *(v4[7] + 8 * v16);
        swift_endAccess();
        v19 = Image;
        return Image;
      }
    }

    swift_endAccess();
  }

  v20 = ceil(a2 * a4);
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_27;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v20 >= 9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v21 = ceil(a3 * a4);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    swift_once();
LABEL_23:
    v22 = _CGBitmapContextCreate(v4, v5, static CGImageRef.sRGB, 0x2001u);
    if (v22)
    {
      goto LABEL_17;
    }

    return 0;
  }

  v4 = v20;
  v5 = v21;
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for sRGB == -1)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v22 = _CGBitmapContextCreate(v20, v21, 0, 7u);
  if (!v22)
  {
    return 0;
  }

LABEL_17:
  v23 = v5 / a3;
  v24 = v22;
  CGContextScaleCTM(v24, v4 / a2, v23);
  CGContextScaleCTM(v24, a2 / v12, a3 / v14);
  (*(*v6 + 120))(v24);
  Image = CGBitmapContextCreateImage(v24);

  if (Image)
  {
    v25 = v15;
  }

  else
  {
    v25 = 1;
  }

  if ((v25 & 1) == 0)
  {
    swift_beginAccess();
    v26 = Image;
    specialized Dictionary.subscript.setter(Image, v11 & 1, v27);
    swift_endAccess();
  }

  return Image;
}

uint64_t specialized Dictionary.Values.subscript.getter@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return outlined init with copy of NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>(*(a3 + 56) + 96 * result, a4, &lazy cache variable for type metadata for NamedImage._BitmapInfo<NamedImage.WeakOrStrongImageContents>, &type metadata for NamedImage.WeakOrStrongImageContents, type metadata accessor for NamedImage._BitmapInfo, type metadata accessor for NamedImage.VectorInfo?);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t initializeWithCopy for NamedImage.WeakOrStrongImageContents(uint64_t a1, uint64_t *a2)
{
  v3 = *(a2 + 9);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  if (v3 == 1)
  {
    v4 = *(a2 + 8);
    if (v4 >= 3)
    {
      v4 = *a2 + 3;
    }

    if (v4 == 2)
    {
      swift_weakCopyInit();
      v5 = 2;
    }

    else if (v4 == 1)
    {
      swift_unknownObjectWeakCopyInit();
      v5 = 1;
    }

    else
    {
      swift_unknownObjectWeakCopyInit();
      v5 = 0;
    }

    *(a1 + 8) = v5;
    v8 = 1;
  }

  else
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    outlined copy of GraphicsImage.Contents(*a2, v7);
    v8 = 0;
    *a1 = v6;
    *(a1 + 8) = v7;
  }

  *(a1 + 9) = v8;
  return a1;
}

uint64_t initializeWithCopy for NamedImage._BitmapInfo(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48);
  v7 = v6 + a1;
  v8 = v6 + a2;
  v9 = (v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v9 = *v10;
  *(v9 + 8) = *(v10 + 8);
  v11 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v11 = *v12;
  *(v11 + 16) = *(v12 + 16);
  v13 = (v7 + 47) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v8 + 47) & 0xFFFFFFFFFFFFFFF8;
  v16 = *v14;
  v15 = *(v14 + 16);
  *(v13 + 32) = *(v14 + 32);
  *v13 = v16;
  *(v13 + 16) = v15;
  return a1;
}

void destroy for NamedImage.WeakOrStrongImageContents(uint64_t a1)
{
  v1 = *(a1 + 9);
  if (v1 >= 2)
  {
    v1 = *a1 + 2;
  }

  if (v1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2 >= 3)
    {
      v2 = *a1 + 3;
    }

    if (v2 != 2)
    {
      JUMPOUT(0x193AC4950);
    }

    swift_weakDestroy();
  }

  else
  {
    outlined consume of GraphicsImage.Contents(*a1, *(a1 + 8));
  }
}

uint64_t protocol witness for static EnvironmentKey._valuesEqual(_:_:) in conformance EnvironmentValues.AssetCatalogConfigurationKey(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7SwiftUI22EnvironmentPropertyKeyV11valuesEqualySb5ValueQz_AFtFZAA0C6ValuesVAAE025AssetCatalogConfigurationE033_F748B30B59970FC73194935C526E3031LLV_Tt1B5(v5, v7) & 1;
}

uint64_t DefaultLayoutViewResponder.deinit(__n128 a1)
{
  outlined destroy of weak ViewGraphDelegate?(v1 + 16, a1);
  swift_weakDestroy();

  v2 = *(v1 + 136);
  v5[2] = *(v1 + 120);
  v5[3] = v2;
  v5[4] = *(v1 + 152);
  v6 = *(v1 + 168);
  v3 = *(v1 + 104);
  v5[0] = *(v1 + 88);
  v5[1] = v3;
  outlined destroy of _ViewInputs(v5);

  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(*(v1 + 200), *(v1 + 208));
  return v1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI8GradientV4StopV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 40);
  v4 = (a2 + 40);
  while (v2)
  {
    v6 = *(v3 - 1);
    v7 = *v3;
    v8 = *v4;
    if (v6 != *(v4 - 1))
    {
      v9 = *(*v6 + 88);

      if ((v9(v10) & 1) == 0)
      {

        return 0;
      }
    }

    result = v7 == v8;
    v5 = v7 != v8 || v2-- == 1;
    v3 += 2;
    v4 += 2;
    if (v5)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

void one-time initialization function for sRGB()
{
  v0 = *MEMORY[0x1E695F1C0];
  v1 = CGColorSpaceCreateWithName(v0);

  if (v1)
  {
    static CGImageRef.sRGB = v1;
  }

  else
  {
    __break(1u);
  }
}

uint64_t destroy for ObservedObjectPropertyBox(void *a1)
{

  return swift_unknownObjectRelease();
}

uint64_t *SubscriptionLifetime.deinit()
{
  v1 = *v0;
  SubscriptionLifetime.cancel()();
  v2 = *(*v0 + 104);
  v4 = type metadata accessor for SubscriptionLifetime.StateType(0, *(v1 + 80), *(v1 + 88), v3);
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  return v0;
}

Swift::Void __swiftcall SubscriptionLifetime.cancel()()
{
  v2 = v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = type metadata accessor for SubscriptionLifetime.StateType(0, v4, *(v3 + 88), v0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v16 - v10 + 40;
  v12 = *(v3 + 104);
  swift_beginAccess();
  (*(v6 + 16))(v11, v2 + v12, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
    strcpy(&v15 - 48, "to subscriber subscription subscriptionID ");
    v16[0] = v4;
    v16[1] = type metadata accessor for AnyCancellable();
    v16[2] = type metadata accessor for Subscription();
    v17 = MEMORY[0x1E69E6530];
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    outlined init with take of AnyTrackedValue(&v11[*(TupleTypeMetadata + 64)], v16);
    (*(*(v4 - 8) + 8))(v11, v4);
    AnyCancellable.cancel()();
    __swift_project_boxed_opaque_existential_1(v16, v17);
    dispatch thunk of Cancellable.cancel()();

    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    (*(v6 + 40))(v2 + v12, v8, v5);
    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    (*(v6 + 8))(v11, v5);
  }
}

uint64_t SubscriptionLifetime.__deallocating_deinit()
{
  SubscriptionLifetime.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall AttributeInvalidatingSubscriber.cancel()()
{
  v1 = *v0;
  swift_beginAccess();
  v3 = type metadata accessor for AttributeInvalidatingSubscriber.StateType(0, *(v1 + 80), *(v1 + 88), v2);
  v4 = *(v3 - 8);
  (*(v4 + 16))(&v5, v0 + 4, v3);
  if (v6 > 1)
  {
    outlined init with take of AnyTrackedValue(&v5, &v7);
    __swift_project_boxed_opaque_existential_1(&v7, *(&v8 + 1));
    dispatch thunk of Cancellable.cancel()();
    __swift_destroy_boxed_opaque_existential_1(&v7);
  }

  else
  {
    (*(v4 + 8))(&v5, v3);
  }

  v9 = 0;
  v7 = 0u;
  v8 = 0u;
  swift_beginAccess();
  (*(v4 + 40))(v0 + 4, &v7, v3);
  swift_endAccess();
}

uint64_t AttributeInvalidatingSubscriber.__deallocating_deinit()
{
  AttributeInvalidatingSubscriber.deinit();

  return swift_deallocClassInstance();
}

uint64_t *AttributeInvalidatingSubscriber.deinit()
{
  v1 = *v0;
  swift_weakDestroy();
  v3 = type metadata accessor for AttributeInvalidatingSubscriber.StateType(0, *(v1 + 80), *(v1 + 88), v2);
  (*(*(v3 - 8) + 8))(v0 + 4, v3);
  return v0;
}

uint64_t HitTestBindingResponder.__deallocating_deinit(__n128 a1)
{
  DefaultLayoutViewResponder.deinit(a1);

  return swift_deallocClassInstance();
}

uint64_t DisplayList.ViewUpdater.__deallocating_deinit()
{
  outlined destroy of weak GestureGraphDelegate?(v0 + 24);
  v1 = *(v0 + 88);
  v2 = *(v0 + 120);
  v5[4] = *(v0 + 104);
  v5[5] = v2;
  v6 = *(v0 + 136);
  v3 = *(v0 + 56);
  v5[0] = *(v0 + 40);
  v5[1] = v3;
  v5[2] = *(v0 + 72);
  v5[3] = v1;
  outlined destroy of DisplayList.ViewUpdater.ViewCache(v5);

  return swift_deallocClassInstance();
}

double destroy for DisplayList.ViewUpdater.ViewCache(uint64_t a1)
{

  return result;
}

uint64_t ListenerPair.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t ForEachState.Item.__deallocating_deinit(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

id *ForEachState.Item.deinit()
{
  v1 = *v0;

  (*(*(v1[15] - 8) + 8))(v0 + *(*v0 + 20));
  outlined destroy of _ViewListOutputs.Views(v0 + *(*v0 + 22));
  swift_weakDestroy();
  v2 = *(*v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v2, AssociatedTypeWitness);
  return v0;
}

double DisplayList.Index.leave(index:)(uint64_t a1, double result)
{
  v3 = *(v2 + 16);
  if ((v3 & 0xC) != 0)
  {
    result = *v2;
    if ((*(v2 + 16) & 4) != 0)
    {
      *v2 = *(v2 + 8);
    }

    if ((v3 & 8) != 0)
    {
      *(v2 + 8) = result;
    }
  }

  if (v3)
  {
    result = *a1;
    *v2 = *a1;
    v4 = *(a1 + 16);
    if ((v3 & 2) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = *(a1 + 16);
    if ((v3 & 2) == 0)
    {
LABEL_8:
      *(v2 + 16) = v4;
      return result;
    }
  }

  result = *(a1 + 8);
  *(v2 + 8) = result;
  *(v2 + 16) = v4;
  return result;
}

uint64_t closure #1 in ViewGraph.renderDisplayList(_:asynchronously:time:nextTime:targetTimestamp:version:maxVersion:)(void *a1, double a2, uint64_t a3, uint64_t a4, char a5)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = 0;
  ObjectType = swift_getObjectType();
  (*(a4 + 16))(&v13, ObjectType, a4);
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
    *(*(static CustomEventTrace.recorder + 24) + 4) = 1346;
    LOBYTE(v15[0]) = 1;
    *&v15[1] = a2;
    type metadata accessor for (Bool, Double)();
    AGGraphAddTraceEvent();
  }

  v10 = (*(a4 + 8))(ObjectType, a4);
  v11 = MEMORY[0x1EEE9AC00](v10);
  (*(a4 + 24))(v15, a5 & 1, closure #1 in renderOnMainThread #1 () in ViewGraph.renderDisplayList(_:asynchronously:time:nextTime:targetTimestamp:version:maxVersion:)partial apply, v11);
  result = swift_unknownObjectRelease();
  *a1 = v15[0];
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for SpringState(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = v6 + 7;
  v10 = ((((((((v6 + 7 + ((v6 + v7 + ((v6 + v7) & ~v7)) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 > 7 || (*(v5 + 80) & 0x100000) != 0 || v10 > 0x18)
  {
    v13 = *a2;
    *v3 = *a2;
    v3 = (v13 + ((v7 & 0xF8 ^ 0x1F8) & (v7 + 16)));
  }

  else
  {
    v14 = ~v7;
    v15 = *(v5 + 16);
    v15(a1, a2, v4);
    v17 = (a2 + v8) & v14;
    v15(((v3 + v8) & v14), v17, v4);
    v18 = (v8 + v17) & v14;
    v15(((v8 + ((v3 + v8) & v14)) & v14), v18, v4);
    v19 = ((v9 + ((v8 + ((v3 + v8) & v14)) & v14)) & 0xFFFFFFFFFFFFFFF8);
    v20 = ((v9 + v18) & 0xFFFFFFFFFFFFFFF8);
    *v19 = *v20;
    v21 = ((v19 + 15) & 0xFFFFFFFFFFFFFFF8);
    v22 = ((v20 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v21 = *v22;
    v23 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
    v24 = ((v22 + 15) & 0xFFFFFFFFFFFFFFF8);
    *v23 = *v24;
    *((v23 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v24 + 15) & 0xFFFFFFFFFFFFFFF8);
  }

  return v3;
}

void *protocol witness for static AdditiveArithmetic.+= infix(_:_:) in conformance _AnyAnimatableData(uint64_t *a1, void *a2)
{
  v4 = *a1;
  if (*a1 == *a2)
  {
    return (*(v4 + 96))(a1 + 1, a2 + 1);
  }

  result = type metadata accessor for ZeroVTable();
  if (v4 == result)
  {
    outlined destroy of _AnyAnimatableData(a1);

    return outlined init with copy of _AnyAnimatableData(a2, a1);
  }

  return result;
}

Swift::Void __swiftcall AnimatableAttributeHelper.reset()()
{
  v2 = v1;
  v3 = v0;
  v4 = v0[12];
  if (*(v1 + v4))
  {
    AnimatorState.removeListeners()();
    v4 = v3[12];
  }

  *(v1 + v4) = 0;
  v5 = v3[11];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 8))(v2 + v5, v7);
  (*(*(AssociatedTypeWitness - 8) + 56))(v2 + v5, 1, 1, AssociatedTypeWitness);
  *(v2 + v3[13]) = *AGGraphGetValue() >> 1;
}

uint64_t closure #1 in static _TextRendererViewModifier._makeViewInputs(modifier:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5)
{
  v11[2] = (a4)(0, a2, a3);
  v11[3] = a2;
  v8 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, a5, v11, a2, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v9);
  return v11[5];
}

CGContext *GlyphContext.currentContext()(__n128 a1)
{
  result = *(v1 + 16);
  if (!result)
  {
    v3 = v1;
    if (*v1 == *(v1 + 8))
    {
      if ((*(v1 + 48) & 6) != 0)
      {
        *v1 = RBDrawingStateInit();
      }
    }

    else
    {
      RBDrawingStateAssign();
    }

    v4 = *(v1 + 48);
    if ((v4 & 2) != 0)
    {
      if (one-time initialization token for suffixNamespace != -1)
      {
        swift_once();
      }

      RBDrawingStateSetIdentifier2();
      if (one-time initialization token for opacity != -1)
      {
        swift_once();
      }

      v5 = ContentTransition.rbTransition.getter();
      RBDrawingStateSetTransition();
    }

    if ((v4 & 4) != 0)
    {
      if (one-time initialization token for identity != -1)
      {
        swift_once();
      }

      v6 = ContentTransition.rbTransition.getter();
      RBDrawingStateSetTransition();
    }

    result = RBDrawingStateBeginCGContext();
    *(v3 + 16) = result;
    v7 = *(v3 + 28);
    c = result;
    if (v7)
    {
      if (!result)
      {
        __break(1u);
        goto LABEL_29;
      }

      CGContextSetBlendMode(result, v7);
      result = c;
    }

    v8 = *(v3 + 32);
    if ((~*&v8 & 0x7FF0000000000000) != 0 || (*&v8 & 0xFFFFFFFFFFFFFLL) == 0)
    {
LABEL_23:
      if (result)
      {
        _CGContextSetShapeDistance(c, v8);
        result = c;
        goto LABEL_25;
      }

LABEL_29:
      __break(1u);
      return result;
    }

    if (!result)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

LABEL_25:

  return result;
}

void LazyTransaction.updateValue()()
{
  v1 = v0;
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 4);
  v5 = *AGGraphGetValue();
  if (!v4)
  {
    goto LABEL_5;
  }

  if (v4 == 1)
  {
    if ((*(v0 + 24) & 1) != 0 || *(v0 + 20) != v3)
    {
LABEL_5:
      v6 = swift_retain_n();
      v7 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v6);
      if (v7 && !v7[9])
      {
      }

      else
      {
        type metadata accessor for TypedElement<TransactionPropertyKey<AnimationKey>>(0);
        *(swift_allocObject() + 72) = 0;
        type metadata accessor for TransactionPropertyKey<FromScrollViewKey>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey, type metadata accessor for TransactionPropertyKey);
        v9 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v5).value;

        v5 = v9;
      }

      v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v11);
      if (!v12 || *(v12 + 72) != 1)
      {
        type metadata accessor for TypedElement<TransactionPropertyKey<DisablesAnimationsKey>>(0);
        *(swift_allocObject() + 72) = 1;
        type metadata accessor for TransactionPropertyKey<FromScrollViewKey>(0, &lazy cache variable for type metadata for TransactionPropertyKey<DisablesAnimationsKey>, &type metadata for DisablesAnimationsKey, &protocol witness table for DisablesAnimationsKey, type metadata accessor for TransactionPropertyKey);
        PropertyList.Element.init(keyType:before:after:)(v13, 0, v5);
      }

      goto LABEL_17;
    }

    goto LABEL_9;
  }

  if (*(v0 + 16) == 2)
  {
LABEL_9:

LABEL_17:
    AGGraphSetOutputValue();

    *(v1 + 20) = v3;
    *(v1 + 16) = v4;
    return;
  }

  v10 = *(v0 + 8);
  if (v10)
  {

    Transaction.addAnimationListener(_:)(v10);
    goto LABEL_17;
  }

  __break(1u);
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV_Tt1g5(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v43 = a2 + 32;
  v44 = result + 32;
  v42 = *(result + 16);
  while (1)
  {
    if (v3 == v2)
    {
      goto LABEL_81;
    }

    v4 = v44 + 32 * v3;
    v5 = *v4;
    v6 = *(v4 + 8);
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);
    v45 = v3;
    v9 = v43 + 32 * v3;
    v10 = *v9;
    v11 = *(v9 + 24);
    v50 = *(v9 + 8);
    v51 = *v9;
    v49 = *(v9 + 16);
    if (v7)
    {
      if ((*(v9 + 16) & 1) == 0)
      {
        return 0;
      }

      v12 = *(*v5 + 96);
      v13 = *(v9 + 8);
      outlined copy of Text.Storage(v10, v13, 1);
      outlined copy of Text.Storage(v5, v6, 1);

      outlined copy of Text.Storage(v10, v13, 1);

      outlined copy of Text.Storage(v5, v6, 1);
      v14 = v12(v10);
      outlined consume of Text.Storage(v10, v13, 1);
      outlined consume of Text.Storage(v5, v6, 1);
      if ((v14 & 1) == 0)
      {
LABEL_77:
        outlined consume of Text.Storage(v51, v50, v7);

        v36 = v5;
        goto LABEL_78;
      }
    }

    else
    {
      if (*(v9 + 16))
      {
        return 0;
      }

      if (v5 == v10 && v6 == *(v9 + 8))
      {

        outlined copy of Text.Storage(v5, v6, 0);

        outlined copy of Text.Storage(v5, v6, 0);
      }

      else
      {
        v16 = *(v9 + 8);
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined copy of Text.Storage(v10, v16, 0);

        outlined copy of Text.Storage(v5, v6, 0);
        if ((v17 & 1) == 0)
        {
          goto LABEL_77;
        }
      }
    }

    v48 = v5;
    v18 = *(v8 + 16);
    if (v18 != *(v11 + 16))
    {
      outlined consume of Text.Storage(v51, v50, v49);

      v36 = v48;
LABEL_78:
      v37 = v6;
      v38 = v7;
LABEL_72:
      outlined consume of Text.Storage(v36, v37, v38);

      return 0;
    }

    v46 = v6;
    v47 = v7;
    result = v51;
    if (v18)
    {
      if (v8 != v11)
      {
        break;
      }
    }

LABEL_5:
    v3 = v45 + 1;
    outlined consume of Text.Storage(result, v50, v49);

    outlined consume of Text.Storage(v48, v46, v47);

    result = 1;
    v2 = v42;
    if (v45 + 1 == v42)
    {
      return result;
    }
  }

  v19 = 0;
  v20 = 0;
  while (v20 < *(v8 + 16))
  {
    if (v20 >= *(v11 + 16))
    {
      goto LABEL_80;
    }

    v23 = *(v8 + v19 + 32);
    v24 = *(v8 + v19 + 40);
    v25 = *(v11 + v19 + 32);
    v26 = *(v11 + v19 + 40);
    v27 = v24 >> 5;
    if (v24 >> 5 > 3)
    {
      if (v24 >> 5 <= 5)
      {
        if (v27 == 4)
        {
          v21 = (v26 & 0xE0) == 128;
        }

        else
        {
          v21 = (v26 & 0xE0) == 160;
        }

LABEL_24:
        if (!v21 || *&v23 != *&v25)
        {
LABEL_71:
          outlined consume of Text.Storage(result, v50, v49);

          v36 = v48;
          v37 = v46;
          v38 = v47;
          goto LABEL_72;
        }

        goto LABEL_29;
      }

      if (v27 == 6)
      {
        if ((v26 & 0xE0) != 0xC0)
        {
          goto LABEL_71;
        }

        v40 = *(*v23 + 96);
        v31 = *(v11 + v19 + 40);
        outlined copy of Text.Modifier(v25, v26);
        v32 = outlined copy of Text.Modifier(v23, v24);
        v33 = v40(v25, v32);
        outlined consume of Text.Modifier(v25, v31);
        outlined consume of Text.Modifier(v23, v24);
        result = v51;
        if ((v33 & 1) == 0)
        {
          goto LABEL_71;
        }
      }

      else
      {
        if (v23 | v24 ^ 0xE0)
        {
          if (v26 < 0xE0 || v25 != 1)
          {
            goto LABEL_71;
          }
        }

        else if (v26 < 0xE0 || *&v25 != 0.0)
        {
          goto LABEL_71;
        }

        if (v26 != 224)
        {
          goto LABEL_71;
        }
      }
    }

    else
    {
      if (v24 >> 5 > 1)
      {
        if (v27 == 2)
        {
          if ((v26 & 0xE0) != 0x40)
          {
            goto LABEL_71;
          }

          if (v24)
          {
            if ((v26 & 1) == 0)
            {
              goto LABEL_71;
            }
          }

          else if ((v26 & 1) != 0 || *&v23 != *&v25)
          {
            goto LABEL_71;
          }

          goto LABEL_29;
        }

        v21 = (v26 & 0xE0) == 96;
        goto LABEL_24;
      }

      if (v27)
      {
        if ((v26 & 0xE0) != 0x20)
        {
          goto LABEL_71;
        }

        if (*&v23 != 0.0)
        {
          if (*&v25 == 0.0)
          {
            goto LABEL_71;
          }

          v41 = *(*v23 + 112);
          v28 = *(v11 + v19 + 40);
          outlined copy of Text.Modifier(v25, v26);
          v34 = outlined copy of Text.Modifier(v23, v24);
          v30 = v41(v25, v34);
LABEL_56:
          v35 = v30;
          outlined consume of Text.Modifier(v23, v24);
          outlined consume of Text.Modifier(v25, v28);
          result = v51;
          if ((v35 & 1) == 0)
          {
            goto LABEL_71;
          }

          goto LABEL_29;
        }
      }

      else
      {
        if (v26 >= 0x20)
        {
          goto LABEL_71;
        }

        if (*&v23 != 0.0)
        {
          if (*&v25 == 0.0)
          {
            goto LABEL_71;
          }

          if (v23 == v25)
          {
            goto LABEL_29;
          }

          v39 = *(*v23 + 88);
          v28 = *(v11 + v19 + 40);
          outlined copy of Text.Modifier(v25, v26);
          v29 = outlined copy of Text.Modifier(v23, v24);
          v30 = v39(v25, v29);
          goto LABEL_56;
        }
      }

      if (*&v25 != 0.0)
      {
        goto LABEL_71;
      }

      outlined consume of Text.Modifier(0, v26);
      result = v51;
    }

LABEL_29:
    ++v20;
    v19 += 16;
    if (v18 == v20)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t LazyTransition.updateValue()(uint64_t a1)
{
  v2 = v1;
  v60 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v52 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = type metadata accessor for UncheckedSendable(0, AssociatedTypeWitness, v6, v7);
  v8 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v46 - v9;
  v12 = type metadata accessor for UncheckedSendable(0, v4, v10, v11);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v46 - v14;
  v15 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v46 - v24;
  v26 = *(v2 + 8);
  if (!v26)
  {
    __break(1u);
  }

  v49 = v13;
  v50 = v12;
  v27 = *(v26 + 52);
  v28 = *MEMORY[0x1E698D3F8];
  v51 = AssociatedTypeWitness;
  v47 = v21;
  v48 = v22;
  v46 = v23;
  if (v27 == v28)
  {
    v29 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ViewList, &protocol descriptor for ViewList);
    Value = AGGraphGetValue();
    outlined init with copy of AnyTrackedValue(Value, v57);
    v31 = v8;
    v32 = v2;
    v33 = v58;
    v34 = v59;
    __swift_project_boxed_opaque_existential_1(v57, v58);
    v35 = *(v34 + 56);
    v36 = v34;
    v2 = v32;
    v8 = v31;
    v35(&v56, v33, v36);
    v29 = v56;
    __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v37 = v52;
  if (one-time initialization token for opacity != -1)
  {
    swift_once();
  }

  _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010TransitiondJ0V_Tt0B5(static AnyTransition.opacity, v29);

  AnyTransition.base<A>(as:)(v4, v37, v17);
  if ((*(v18 + 48))(v17, 1, v4) == 1)
  {
    (*(v46 + 8))(v17, v47);
  }

  else
  {
    (*(v18 + 32))(v25, v17, v4);
    (*(v18 + 40))(v2 + *(a1 + 40), v25, v4);
  }

  if (*(AGGraphGetValue() + 5) == 1)
  {
    AGGraphGetValue();
  }

  v38 = v48;
  (*(v18 + 16))(v48, v2 + *(a1 + 40), v4);
  v39 = v53;
  UncheckedSendable.init(_:)(v38, v4, v53);
  v40 = v55;
  v41 = closure #1 in LazyTransition.updateValue()(v37, v55);
  v42 = MEMORY[0x1EEE9AC00](v41);
  *(&v46 - 2) = a1;
  swift_getWitnessTable(protocol conformance descriptor for LazyTransition<A>, a1, v42);
  *(&v46 - 1) = v43;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v40, partial apply for closure #1 in StatefulRule.value.setter, (&v46 - 4), v51, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v44);

  (*(v8 + 8))(v40, v54);
  return (*(v49 + 8))(v39, v50);
}

uint64_t closure #1 in LazyTransition.updateValue()@<X0>(uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v9 - v6;
  PlaceholderContentView.init()();
  (*(a2 + 24))();
  return UncheckedSendable.init(_:)(v7, AssociatedTypeWitness, a3);
}

void LazyPreference.value.getter(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v51 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v46 = &v40 - v11;
  v12 = *(a4 + 16);
  v52 = a5;
  v12(a3, a4, v10);
  type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  v48 = a1;
  Value = AGGraphGetValue();
  v14 = *Value;
  v15 = *(*Value + 16);

  if (v15)
  {
    v16 = 0;
    v53 = a4 + 32;
    v43 = (v9 + 16);
    v44 = a4 + 24;
    v41 = (v9 + 32);
    v42 = (v9 + 8);
    v50 = v14 + 32;
    v45 = v15 - 1;
    v49 = 1;
    do
    {
      v17 = (v50 + 80 * v16);
      v18 = v16;
      while (1)
      {
        if (v18 >= *(v14 + 16))
        {
          __break(1u);
LABEL_16:
          AGGraphCancelUpdate();

          goto LABEL_17;
        }

        v19 = *v17;

        if (AGGraphHasDeadlinePassed())
        {
          goto LABEL_16;
        }

        v54 = *(v19 + 32);
        v55 = *(v19 + 40);

        v20 = _ViewOutputs.subscript.getter(a3, a3, a4);

        if ((v20 & 0x100000000) == 0)
        {
          v21 = (*(a4 + 32))(a3, a4);
          if (v21)
          {
            break;
          }

          v21 = AGGraphGetValue();
          if ((*(v21 + 6) & 1) == 0)
          {
            break;
          }
        }

        ++v18;
        v17 += 10;
        if (v15 == v18)
        {
          goto LABEL_17;
        }
      }

      if (v49)
      {
        v22 = AssociatedTypeWitness;
        v23 = AGGraphGetValue();
        v24 = v46;
        (*v43)(v46, v23, v22);

        v25 = v52;
        (*v42)(v52, v22);
        (*v41)(v25, v24, v22);
      }

      else
      {
        v26 = MEMORY[0x1EEE9AC00](v21);
        *(&v40 - 4) = a3;
        *(&v40 - 3) = a4;
        *(&v40 - 4) = v20;
        (*(a4 + 24))(v52, partial apply for closure #1 in LazyPreference.value.getter, v26);
      }

      v49 = 0;
      v16 = v18 + 1;
    }

    while (v45 != v18);
  }

LABEL_17:
  v27 = v51;
  if (!v51)
  {
    __break(1u);
    return;
  }

  if (LazyLayoutViewCache.supportsViewHierarchyPrefetching.getter())
  {
    v29.n128_f64[0] = LazyPreference.prefetchItems.getter(v48, v27, a3);
    if (v28)
    {
      v30 = v28;
      v31 = v28 & 0xFFFFFFFFFFFFFF8;
      if (v28 >> 62)
      {
        v32 = __CocoaSet.count.getter();
        if (v32)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v32 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v32)
        {
LABEL_22:
          v33 = 0;
          v53 = v30 & 0xC000000000000001;
          v51 = a4 + 24;
          do
          {
            if (v53)
            {
              v34 = MEMORY[0x193AC03C0](v33, v30, v29);
              v35 = v33 + 1;
              if (__OFADD__(v33, 1))
              {
                goto LABEL_32;
              }
            }

            else
            {
              if (v33 >= *(v31 + 16))
              {
                goto LABEL_33;
              }

              v34 = *(v30 + 8 * v33 + 32);

              v35 = v33 + 1;
              if (__OFADD__(v33, 1))
              {
LABEL_32:
                __break(1u);
LABEL_33:
                __break(1u);
LABEL_34:

                AGGraphCancelUpdate();

                return;
              }
            }

            if (AGGraphHasDeadlinePassed())
            {
              goto LABEL_34;
            }

            v36 = v31;
            v54 = *(v34 + 32);
            v55 = *(v34 + 40);

            v37 = _ViewOutputs.subscript.getter(a3, a3, a4);

            if ((v37 & 0x100000000) == 0)
            {
              v39 = MEMORY[0x1EEE9AC00](v38);
              *(&v40 - 4) = a3;
              *(&v40 - 3) = a4;
              *(&v40 - 4) = v37;
              (*(a4 + 24))(v52, partial apply for closure #2 in LazyPreference.value.getter, v39);
            }

            v31 = v36;
            ++v33;
          }

          while (v35 != v32);
        }
      }
    }
  }
}

uint64_t LazyLayoutViewCache.supportsViewHierarchyPrefetching.getter()
{
  if (((*(*v0 + 360))() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (one-time initialization token for v7 != -1)
  {
    swift_once();
  }

  v1 = static Semantics.v7;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced < v1)
    {
      goto LABEL_8;
    }

LABEL_10:
    swift_beginAccess();
    v2 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA21UsingGraphicsRendererV_Tt2g5(v0[4]) ^ 1;
    return v2 & 1;
  }

  if (dyld_program_sdk_at_least())
  {
    goto LABEL_10;
  }

LABEL_8:
  v2 = 0;
  return v2 & 1;
}

uint64_t *LazyPreferencePrefetchSubviews.value.getter(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LazyLayoutCacheItem.AllItemsPhaseMutation?(0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview, MEMORY[0x1E69E62F8]);
  result = AGGraphGetValue();
  if (a2)
  {
    v4 = *result;

    if ((LazyLayoutViewCache.supportsViewHierarchyPrefetching.getter() & 1) == 0)
    {
      return v4;
    }

    AGGraphRegisterDependency();
    if (*(a2 + 352))
    {
      return v4;
    }

    v8 = specialized Collection.prefix(_:)(*(a2 + 344), v4);
    if (v7)
    {
      v10 = v7;
      v11 = v6;
      v12 = v5;
      type metadata accessor for __ContiguousArrayStorageBase();
      swift_unknownObjectRetain_n();
      v13 = swift_dynamicCastClass();
      if (!v13)
      {
        swift_unknownObjectRelease();
        v13 = MEMORY[0x1E69E7CC0];
      }

      v14 = *(v13 + 16);

      if (__OFSUB__(v10 >> 1, v11))
      {
        __break(1u);
      }

      else if (v14 == (v10 >> 1) - v11)
      {
        v4 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v4)
        {
          return v4;
        }

        v4 = MEMORY[0x1E69E7CC0];
LABEL_12:
        swift_unknownObjectRelease();
        return v4;
      }

      swift_unknownObjectRelease();
      v7 = v10;
      v6 = v11;
      v5 = v12;
    }

    specialized _copyCollectionToContiguousArray<A>(_:)(v8, v5, v6, v7);
    v4 = v9;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

double View.underline(_:pattern:color:)(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  KeyPath = swift_getKeyPath();
  if (a1)
  {
    v12 = v10 | 1;
  }

  else
  {
    v12 = 0;
    a3 = 1;
  }

  v14 = v12;
  v15 = a3;
  View.environment<A>(_:_:)(KeyPath, &v14, a4, a5);

  return outlined consume of Text.LineStyle?(v14, v15);
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014UnderlineStyleF0VG_Tt2B5(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnderlineStyleKey>, &type metadata for UnderlineStyleKey, &protocol witness table for UnderlineStyleKey, type metadata accessor for EnvironmentPropertyKey);
  v8 = v7;
  BloomFilter.init(hashValue:)(v7);
  v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014UnderlineStyleV0VG_Tt0B5(v6, v17);
  if (!v9 || (v10 = v9[9], v11 = v9[10], v12 = outlined copy of Text.LineStyle?(v10, v11), v13 = _s7SwiftUI14EnvironmentKeyPAASQ5ValueRpzrlE12_valuesEqualySbAE_AEtFZAA018StrikethroughStyleD0V_Tt1B5(a2, a3, v10, v11, v12), result = outlined consume of Text.LineStyle?(v10, v11), (v13 & 1) == 0))
  {
    v15 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<UnderlineStyleKey>>(0);
    v16 = swift_allocObject();
    *(v16 + 72) = a2;
    *(v16 + 80) = a3;

    outlined copy of Text.LineStyle?(a2, a3);
    *a1 = PropertyList.Element.init(keyType:before:after:)(v8, 0, v15);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<UnderlineStyleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<UnderlineStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<UnderlineStyleKey>, &type metadata for UnderlineStyleKey, &protocol witness table for UnderlineStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<UnderlineStyleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<UnderlineStyleKey>>);
    }
  }
}

uint64_t LazyDisplayListWrapper.updateValue()()
{
  if (!*v0)
  {
    __break(1u);
  }

  v1 = *(*v0 + 212) & 0xFE;
  swift_beginAccess();
  if (swift_unownedRetainStrong())
  {

    AGGraphRegisterDependency();
  }

  v2 = v0[8] | (v1 == 2);
  result = AGGraphGetOutputValue();
  if (!result || ((v2 ^ v0[9]) & 1) != 0)
  {
    v4 = v2 & 1;
    result = AGGraphSetOutputValue();
  }

  else
  {
    v4 = v2 & 1;
  }

  v0[9] = v4;
  return result;
}

Swift::Void __swiftcall _DynamicPropertyBuffer.reset()()
{
  v1 = *(v0 + 3);
  if (v1)
  {
    v2 = *v0;
    if (*v0)
    {
      v3 = 0;
      v4 = v1 - 1;
      do
      {
        v7 = (v2 + v3);
        if (v4)
        {
          v3 += *(v7 + 2);
        }

        else
        {
          v3 = 0;
        }

        v5 = v4 | v3;
        v6 = *v7;
        v8 = v7;
        (*(v6 + 112))(&v8);
        --v4;
      }

      while (v5);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t specialized static LocalizedStringKey.FormatArgument.Storage.== infix(_:_:)(uint64_t a1, char *a2)
{
  v72 = a1;
  v73 = a2;
  v75[5] = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for LocalizedStringResource();
  v70 = *(v2 - 8);
  v71 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v67 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v66 - v5;
  v6 = type metadata accessor for AttributedString();
  v68 = *(v6 - 8);
  v69 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  v12 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v66 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v66 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v66 - v22);
  type metadata accessor for (LocalizedStringKey.FormatArgument.Storage, LocalizedStringKey.FormatArgument.Storage)(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = &v26[*(v27 + 56)];
  outlined init with copy of LocalizedStringKey.FormatArgument(v72, v26, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
  outlined init with copy of LocalizedStringKey.FormatArgument(v73, v28, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with copy of LocalizedStringKey.FormatArgument(v26, v23, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
      v30 = *(v23 + 5);
      if (swift_getEnumCaseMultiPayload())
      {

        __swift_destroy_boxed_opaque_existential_1(v23);
LABEL_18:
        v35 = 0;
        v37 = type metadata accessor for (LocalizedStringKey.FormatArgument.Storage, LocalizedStringKey.FormatArgument.Storage);
        goto LABEL_19;
      }

      v57 = v26;
      v58 = *(v28 + 40);
      outlined init with take of AnyTrackedValue(v23, v75);
      outlined init with take of AnyTrackedValue(v28, v74);
      type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740]);
      if (AGCompareValues())
      {
        if (v30)
        {
          if (v58)
          {
            type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSFormatter, 0x1E696AC40);
            v59 = v30;
            v35 = static NSObject.== infix(_:_:)();

            __swift_destroy_boxed_opaque_existential_1(v74);
            __swift_destroy_boxed_opaque_existential_1(v75);

LABEL_28:
            v26 = v57;
            v37 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage;
            goto LABEL_19;
          }

          __swift_destroy_boxed_opaque_existential_1(v74);
          __swift_destroy_boxed_opaque_existential_1(v75);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v74);
          __swift_destroy_boxed_opaque_existential_1(v75);
          if (!v58)
          {
            v35 = 1;
            goto LABEL_28;
          }
        }
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v74);
        __swift_destroy_boxed_opaque_existential_1(v75);
      }

      v35 = 0;
      goto LABEL_28;
    }

    v73 = v26;
    outlined init with copy of LocalizedStringKey.FormatArgument(v26, v20, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
    v38 = *v20;
    v39 = *(v20 + 1);
    v40 = v20[16];
    v42 = *(v20 + 3);
    v41 = *(v20 + 4);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      outlined consume of Text.Storage(v38, v39, v40);

      v35 = 0;
      v55 = type metadata accessor for (LocalizedStringKey.FormatArgument.Storage, LocalizedStringKey.FormatArgument.Storage);
LABEL_37:
      v56 = v55;
      v26 = v73;
      goto LABEL_38;
    }

    v44 = *v28;
    v43 = *(v28 + 8);
    v45 = *(v28 + 16);
    v46 = *(v28 + 24);
    if (v40)
    {
      if (*(v28 + 16))
      {
        v72 = *(v28 + 32);
        v71 = *(*v38 + 96);
        outlined copy of Text.Storage(v38, v39, 1);
        outlined copy of Text.Storage(v44, v43, 1);
        v47 = v71(v44);
        outlined consume of Text.Storage(v44, v43, 1);
        outlined consume of Text.Storage(v38, v39, 1);
        if ((v47 & 1) == 0)
        {
LABEL_34:
          outlined consume of Text.Storage(v44, v43, v45);

          v60 = v38;
          v61 = v39;
          v62 = v40;
          goto LABEL_35;
        }

LABEL_33:
        _sSasSQRzlE2eeoiySbSayxG_ABtFZ7SwiftUI4TextV8ModifierO_Tt1g5(v42, v46);
        v64 = v63;
        outlined consume of Text.Storage(v44, v43, v45);

        outlined consume of Text.Storage(v38, v39, v40);

        v35 = v64 & (v41 == v72);
LABEL_36:
        v55 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage;
        goto LABEL_37;
      }

      outlined consume of Text.Storage(*v28, *(v28 + 8), 0);

      v60 = v38;
      v61 = v39;
      v62 = 1;
    }

    else
    {
      if ((*(v28 + 16) & 1) == 0)
      {
        v72 = *(v28 + 32);
        if ((v38 != v44 || v39 != v43) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      outlined consume of Text.Storage(*v28, *(v28 + 8), 1);

      v60 = v38;
      v61 = v39;
      v62 = 0;
    }

LABEL_35:
    outlined consume of Text.Storage(v60, v61, v62);

    v35 = 0;
    goto LABEL_36;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of LocalizedStringKey.FormatArgument(v26, v17, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v68 + 8))(v17, v69);
      goto LABEL_18;
    }

    v31 = v68;
    v32 = *(v68 + 32);
    v33 = v17;
    v34 = v69;
    v32(v11, v33, v69);
    v32(v8, v28, v34);
    v35 = static AttributedString.== infix(_:_:)();
    v36 = *(v31 + 8);
    v36(v8, v34);
    v36(v11, v34);
    v37 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage;
  }

  else
  {
    outlined init with copy of LocalizedStringKey.FormatArgument(v26, v14, type metadata accessor for LocalizedStringKey.FormatArgument.Storage);
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      (*(v70 + 8))(v14, v71);
      goto LABEL_18;
    }

    v48 = v70;
    v49 = *(v70 + 32);
    v50 = v66;
    v51 = v14;
    v52 = v71;
    v49(v66, v51, v71);
    v53 = v67;
    v49(v67, v28, v52);
    v35 = MEMORY[0x193ABCB30](v50, v53);
    v54 = *(v48 + 8);
    v54(v53, v52);
    v54(v50, v52);
    v37 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage;
  }

LABEL_19:
  v56 = v37;
LABEL_38:
  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v26, v56);
  return v35 & 1;
}

uint64_t AttachmentTextStorage.isEqual(to:)(uint64_t a1)
{
  result = swift_dynamicCastClass();
  if (result)
  {
    v3 = *(v1 + 16);
    v4 = *(result + 16);
    if (v3 == v4)
    {
      return 1;
    }

    else
    {
      v5 = *(*v3 + 96);

      v6 = v5(v4);

      return v6 & 1;
    }
  }

  return result;
}

_DWORD *specialized AnimatableAttributeHelper.reset()()
{
  if (*(v0 + 32))
  {
    specialized AnimatorState.removeListeners()();
  }

  *(v0 + 32) = 0;

  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  result = AGGraphGetValue();
  *(v0 + 40) = *result >> 1;
  return result;
}

{
  if (*(v0 + 24))
  {
    specialized AnimatorState.removeListeners()();
  }

  *(v0 + 24) = 0;

  *(v0 + 16) = 0;
  result = AGGraphGetValue();
  *(v0 + 32) = *result >> 1;
  return result;
}

void LazyStatePropertyBox.reset()()
{
  if (*(v0 + 8))
  {
    StoredLocationBase.invalidate()();
  }

  *(v0 + 8) = 0;
}

Swift::Void __swiftcall PlatformViewChild.resetPlatformView()()
{
  v2 = v0;
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v53 = type metadata accessor for UncheckedSendable(0, AssociatedTypeWitness, v6, v7);
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v40 - v8;
  v51 = v4;
  v52 = v3;
  v9 = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for UncheckedSendable(0, v9, v10, v11);
  v47 = *(v12 - 8);
  v48 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v46 = &v40 - v13;
  v14 = type metadata accessor for Optional();
  v43 = *(v14 - 8);
  v44 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v42 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v45 = &v40 - v20;
  v21 = type metadata accessor for Optional();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v40 - v23;
  v25 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v26);
  v41 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v40 - v30;
  (*(v22 + 16))(v24, v1 + *(v2 + 76), v21, v29);
  if ((*(v25 + 48))(v24, 1, AssociatedTypeWitness) == 1)
  {
    (*(v22 + 8))(v24, v21);
  }

  else
  {
    (*(v25 + 32))(v31, v24, AssociatedTypeWitness);
    PlatformViewChild.representedViewProvider.getter(v2, v16);
    v32 = v54;
    if ((*(v54 + 48))(v16, 1, v9) == 1)
    {
      (*(v25 + 8))(v31, AssociatedTypeWitness);
      v34 = v43;
      v33 = v44;
    }

    else
    {
      v35 = v45;
      (*(v32 + 32))(v45, v16, v9);
      v36 = v42;
      (*(v32 + 16))(v42, v35, v9);
      v16 = v46;
      UncheckedSendable.init(_:)(v36, v9, v46);
      v37 = v41;
      (*(v25 + 16))(v41, v31, AssociatedTypeWitness);
      v38 = v49;
      UncheckedSendable.init(_:)(v37, AssociatedTypeWitness, v49);
      v39 = closure #1 in PlatformViewChild.resetPlatformView()(v16, v38, v1, v51, v52);
      (*(v32 + 8))(v35, v9, v39);
      (*(v25 + 8))(v31, AssociatedTypeWitness);
      (*(v50 + 8))(v38, v53);
      v34 = v47;
      v33 = v48;
    }

    (*(v34 + 8))(v16, v33);
  }
}

Swift::Void __swiftcall ValueCycleDetector.reset()()
{
  *(v2 + 4) = -1;
  v3 = *(v0 + 44);
  v4 = *(v0 + 16);
  v5 = type metadata accessor for Stack3(0, v4, *(v0 + 24), v1);
  (*(*(v5 - 8) + 8))(v2 + v3, v5);
  Stack3.init()(v4, v2 + v3);
  *(v2 + 8) = 0;
}

void specialized static _ShapeStyle_Pack.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v64 = *a2;
  if (v3 != *(*a2 + 16))
  {
    return;
  }

  if (!v3)
  {
LABEL_82:

    return;
  }

  v4 = 0;
  v5 = 1;
  while (1)
  {
    if (v4 >= v3)
    {
      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    }

    v6 = (v2 + 32 + (v4 << 7));
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[3];
    *&v96[32] = v6[2];
    *&v96[48] = v9;
    *&v96[16] = v8;
    v10 = v6[4];
    v11 = v6[5];
    v12 = v6[7];
    *&v96[96] = v6[6];
    v97 = v12;
    *&v96[64] = v10;
    *&v96[80] = v11;
    *v96 = v7;
    v13 = *(v64 + 16);
    if (v4 == v13)
    {
      goto LABEL_82;
    }

    if (v4 >= v13)
    {
      goto LABEL_84;
    }

    v14 = (v64 + 32 + (v4 << 7));
    v15 = *v14;
    v16 = v14[1];
    v17 = v14[2];
    *&v93[48] = v14[3];
    *&v93[32] = v17;
    *&v93[16] = v16;
    *v93 = v15;
    v18 = v14[4];
    v19 = v14[5];
    v20 = v14[6];
    v94 = v14[7];
    *&v93[96] = v20;
    *&v93[80] = v19;
    *&v93[64] = v18;
    v95[4] = *&v96[64];
    v95[5] = *&v96[80];
    v95[6] = *&v96[96];
    v95[7] = v97;
    v95[0] = *v96;
    v95[1] = *&v96[16];
    v95[2] = *&v96[32];
    v95[3] = *&v96[48];
    v95[10] = *&v93[32];
    v95[11] = *&v93[48];
    v95[8] = *v93;
    v95[9] = *&v93[16];
    v95[14] = v20;
    v95[15] = v94;
    v95[12] = v18;
    v95[13] = v19;
    if (v5)
    {
      break;
    }

    outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, v84, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v93, v84, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v95, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
    v5 = 0;
LABEL_5:
    ++v4;
    v3 = *(v2 + 16);
    if (v4 == v3)
    {
      goto LABEL_82;
    }
  }

  v21 = v93[0];
  v22 = v93[1];
  *&v92[38] = *&v96[40];
  *&v92[54] = *&v96[56];
  *&v92[70] = *&v96[72];
  *&v92[86] = *&v96[88];
  *&v92[6] = *&v96[8];
  *&v92[22] = *&v96[24];
  v23 = *&v96[104];
  v63 = v97;
  v91[0] = *(&v97 + 1);
  *(v91 + 7) = *(&v97 + 1);
  *&v90[38] = *&v93[40];
  *&v90[54] = *&v93[56];
  *&v90[70] = *&v93[72];
  *&v90[86] = *&v93[88];
  *&v90[6] = *&v93[8];
  *&v90[22] = *&v93[24];
  v59 = *&v96[104];
  v60 = *&v93[104];
  v62 = v94;
  v89[0] = *(&v94 + 1);
  *(v89 + 7) = *(&v94 + 1);
  v57 = v96[1];
  v58 = v96[0];
  if (v96[0] != v93[0] || v96[1] != v93[1])
  {
    outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v95, v84, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
    v5 = 0;
LABEL_23:
    v27 = v60;
LABEL_24:
    v80[0] = v21;
    v80[1] = v22;
    *&v80[66] = *&v90[64];
    *&v80[82] = *&v90[80];
    *&v80[96] = *&v90[94];
    *&v80[2] = *v90;
    *&v80[18] = *&v90[16];
    *&v80[34] = *&v90[32];
    *&v80[50] = *&v90[48];
    v81 = v27;
    v82 = v62;
    *&v83[7] = *(v89 + 7);
    *v83 = v89[0];
    outlined destroy of (ShapeType, ShapeType)(v80, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Key, _ShapeStyle_Pack.Style), &type metadata for _ShapeStyle_Pack.Key, &type metadata for _ShapeStyle_Pack.Style);
    v84[0] = v58;
    v84[1] = v57;
    *&v84[66] = *&v92[64];
    *v85 = *&v92[80];
    *&v85[14] = *&v92[94];
    *&v84[2] = *v92;
    *&v84[18] = *&v92[16];
    *&v84[34] = *&v92[32];
    *&v84[50] = *&v92[48];
    v86 = v59;
    v87 = v63;
    *(v88 + 7) = *(v91 + 7);
    v88[0] = v91[0];
    outlined destroy of (ShapeType, ShapeType)(v84, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Key, _ShapeStyle_Pack.Style), &type metadata for _ShapeStyle_Pack.Key, &type metadata for _ShapeStyle_Pack.Style);
    goto LABEL_5;
  }

  v56 = v93[1];
  v74[2] = *&v96[40];
  v74[3] = *&v96[56];
  v75[0] = *&v96[72];
  *(v75 + 14) = *&v96[86];
  v74[0] = *&v96[8];
  v74[1] = *&v96[24];
  v76[2] = *&v93[40];
  v76[3] = *&v93[56];
  v77[0] = *&v93[72];
  *(v77 + 14) = *&v93[86];
  v76[0] = *&v93[8];
  v76[1] = *&v93[24];
  v72 = *&v96[40];
  *v73 = *&v96[56];
  *&v73[16] = *&v96[72];
  *&v73[30] = *&v96[86];
  v70 = *&v96[8];
  v71 = *&v96[24];
  v67 = *&v93[40];
  v68 = *&v93[56];
  v69[0] = *&v93[72];
  *(v69 + 14) = *&v93[86];
  v65 = *&v93[8];
  v66 = *&v93[24];
  outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v95, v84, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
  outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v95, v84, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
  outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, v84, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
  outlined init with copy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v93, v84, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
  outlined init with copy of _ShapeStyle_Pack.Fill(v74, v84);
  outlined init with copy of _ShapeStyle_Pack.Fill(v76, v84);
  v24 = specialized static _ShapeStyle_Pack.Fill.== infix(_:_:)(&v70, &v65);
  v78[2] = v67;
  v78[3] = v68;
  v79[0] = v69[0];
  *(v79 + 14) = *(v69 + 14);
  v78[0] = v65;
  v78[1] = v66;
  outlined destroy of _ShapeStyle_Pack.Fill(v78);
  *&v80[32] = v72;
  *&v80[48] = *v73;
  *&v80[64] = *&v73[16];
  *&v80[78] = *&v73[30];
  *v80 = v70;
  *&v80[16] = v71;
  outlined destroy of _ShapeStyle_Pack.Fill(v80);
  if ((v24 & 1) == 0 || *&v96[96] != *&v93[96])
  {
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v93, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v95, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
    v5 = 0;
LABEL_22:
    v22 = v56;
    goto LABEL_23;
  }

  if (v63 == 255)
  {
    v25 = v62;
    if (v62 == 255)
    {
      outlined copy of GraphicsBlendMode?(v23, 255);
      outlined copy of GraphicsBlendMode?(v60, 255);
      outlined consume of GraphicsBlendMode?(v23, 255);
      goto LABEL_33;
    }

LABEL_26:
    outlined copy of GraphicsBlendMode?(v23, v63);
    outlined copy of GraphicsBlendMode?(v60, v25);
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v95, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v93, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    v28 = v23;
    v27 = v60;
    outlined consume of GraphicsBlendMode?(v28, v63);
    outlined consume of GraphicsBlendMode?(v60, v25);
LABEL_80:
    v5 = 0;
    v22 = v56;
    goto LABEL_24;
  }

  v25 = v62;
  if (v62 == 255)
  {
    goto LABEL_26;
  }

  if ((v63 & 1) == 0)
  {
    if ((v62 & 1) == 0)
    {
      outlined copy of GraphicsBlendMode?(v23, v63);
      outlined copy of GraphicsBlendMode?(v60, v62);
      outlined consume of GraphicsBlendMode(v23, 0);
      outlined consume of GraphicsBlendMode(v60, 0);
      outlined consume of GraphicsBlendMode?(v23, v63);
      if (v23 == v60)
      {
        goto LABEL_33;
      }

LABEL_30:
      outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v95, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
      outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v93, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
      outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
LABEL_79:
      v27 = v60;
      goto LABEL_80;
    }

    outlined copy of GraphicsBlendMode?(v23, v63);
    v26 = v60;
    outlined copy of GraphicsBlendMode?(v60, v62);
    outlined consume of GraphicsBlendMode(v23, 0);
LABEL_29:
    outlined consume of GraphicsBlendMode(v26, (v63 & 1) == 0);
    outlined consume of GraphicsBlendMode?(v23, v63);
    goto LABEL_30;
  }

  outlined copy of GraphicsBlendMode?(v23, v63);
  v26 = v60;
  outlined copy of GraphicsBlendMode?(v60, v62);
  outlined copy of GraphicsBlendMode?(v23, v63);
  outlined consume of GraphicsBlendMode(v23, 1);
  if ((v62 & 1) == 0)
  {
    goto LABEL_29;
  }

  outlined consume of GraphicsBlendMode(v60, 1);
  outlined consume of GraphicsBlendMode?(v23, v63);
  if (v23 != v60)
  {
    goto LABEL_30;
  }

LABEL_33:
  v29 = *(&v94 + 1);
  v30 = *(*(&v97 + 1) + 16);
  if (v30 != *(*(&v94 + 1) + 16))
  {
LABEL_78:
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v93, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v95, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
    goto LABEL_79;
  }

  if (!v30 || *(&v97 + 1) == *(&v94 + 1))
  {
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v93, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    v46 = type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
    v47 = v95;
LABEL_71:
    outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v47, v46);
    v5 = 1;
    goto LABEL_22;
  }

  if (*(*(&v97 + 1) + 16))
  {
    v31 = 0;
    v32 = (*(&v97 + 1) + 32);
    v33 = (*(&v94 + 1) + 32);
    v52 = v30 - 1;
    v48 = *(&v97 + 1);
    v49 = *(&v94 + 1);
    do
    {
      v34 = v32[1];
      v35 = v32[2];
      v36 = v32[3];
      *&v73[9] = *(v32 + 57);
      v72 = v35;
      *v73 = v36;
      v71 = v34;
      v70 = *v32;
      if (v31 >= *(v29 + 16))
      {
        goto LABEL_86;
      }

      *v84 = *v33;
      v37 = v33[1];
      v38 = v33[2];
      v39 = v33[3];
      *&v84[57] = *(v33 + 57);
      *&v84[32] = v38;
      *&v84[48] = v39;
      *&v84[16] = v37;
      if (v73[5])
      {
        v27 = v60;
        if ((v84[53] & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      else
      {
        if (v84[53])
        {
          goto LABEL_78;
        }

        v27 = v60;
        if (*&v70 != *v84 || *(&v70 + 1) != *&v84[4] || *(&v70 + 2) != *&v84[8] || *(&v70 + 3) != *&v84[12] || *&v71 != *&v84[16] || *(&v71 + 1) != *&v84[24] || *&v72 != *&v84[32] || *(&v72 + 1) != *&v84[40] || *v73 != *&v84[48] || v73[4] != v84[52])
        {
          goto LABEL_73;
        }
      }

      if (*&v73[8] != *&v84[56])
      {
        goto LABEL_73;
      }

      v40 = *&v73[16];
      v41 = v84[72];
      v53 = v33;
      v54 = v32;
      v55 = v31;
      if (v73[24] == 255)
      {
        if (v84[72] != 255)
        {
LABEL_72:
          v51 = *&v84[64];
          v61 = v73[24];
          outlined init with copy of _ShapeStyle_Pack.Effect(&v70, &v65);
          outlined init with copy of _ShapeStyle_Pack.Effect(v84, &v65);
          outlined consume of GraphicsBlendMode?(v40, v61);
          outlined consume of GraphicsBlendMode?(v51, v41);
LABEL_73:
          outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v93, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
          outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v96, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
          outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v95, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
          goto LABEL_80;
        }

        outlined init with copy of _ShapeStyle_Pack.Effect(&v70, &v65);
        outlined init with copy of _ShapeStyle_Pack.Effect(v84, &v65);
        outlined consume of GraphicsBlendMode?(v40, 255);
      }

      else
      {
        if (v84[72] == 255)
        {
          goto LABEL_72;
        }

        v50 = *&v84[64];
        v42 = v73[24];
        if (v73[24])
        {
          if ((v84[72] & 1) == 0)
          {
            outlined init with copy of _ShapeStyle_Pack.Effect(&v70, &v65);
            outlined init with copy of _ShapeStyle_Pack.Effect(v84, &v65);
            outlined init with copy of _ShapeStyle_Pack.Effect(&v70, &v65);
            outlined init with copy of _ShapeStyle_Pack.Effect(v84, &v65);
            outlined copy of GraphicsBlendMode?(v40, v42);
LABEL_77:
            outlined consume of GraphicsBlendMode(v40, v42 & 1);
            outlined consume of GraphicsBlendMode(v50, (v42 & 1) == 0);
            outlined consume of GraphicsBlendMode?(v40, v42);
            outlined destroy of _ShapeStyle_Pack.Effect(v84);
            outlined destroy of _ShapeStyle_Pack.Effect(&v70);
            goto LABEL_78;
          }

          outlined init with copy of _ShapeStyle_Pack.Effect(&v70, &v65);
          outlined init with copy of _ShapeStyle_Pack.Effect(v84, &v65);
          outlined init with copy of _ShapeStyle_Pack.Effect(&v70, &v65);
          outlined init with copy of _ShapeStyle_Pack.Effect(v84, &v65);
          outlined copy of GraphicsBlendMode?(v40, v42);
          outlined consume of GraphicsBlendMode(v40, 1);
          outlined consume of GraphicsBlendMode(v50, 1);
          v43 = v40;
          v44 = v40 == v50;
        }

        else
        {
          if (v84[72])
          {
            outlined init with copy of _ShapeStyle_Pack.Effect(&v70, &v65);
            outlined init with copy of _ShapeStyle_Pack.Effect(v84, &v65);
            outlined init with copy of _ShapeStyle_Pack.Effect(&v70, &v65);
            outlined init with copy of _ShapeStyle_Pack.Effect(v84, &v65);
            goto LABEL_77;
          }

          outlined init with copy of _ShapeStyle_Pack.Effect(&v70, &v65);
          outlined init with copy of _ShapeStyle_Pack.Effect(v84, &v65);
          outlined init with copy of _ShapeStyle_Pack.Effect(&v70, &v65);
          outlined init with copy of _ShapeStyle_Pack.Effect(v84, &v65);
          outlined consume of GraphicsBlendMode(v40, 0);
          outlined consume of GraphicsBlendMode(v50, 0);
          v43 = v40;
          v44 = v40 == v50;
        }

        v45 = v44;
        outlined consume of GraphicsBlendMode?(v43, v42);
        outlined destroy of _ShapeStyle_Pack.Effect(v84);
        outlined destroy of _ShapeStyle_Pack.Effect(&v70);
        if ((v45 & 1) == 0)
        {
          goto LABEL_78;
        }
      }

      if (v52 == v55)
      {
        outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v95, type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
        outlined destroy of (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)(v93, type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style));
        v47 = v96;
        v46 = type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style);
        goto LABEL_71;
      }

      v29 = v49;
      v33 = v53 + 5;
      v32 = v54 + 5;
      v31 = v55 + 1;
    }

    while (v55 + 1 < *(v48 + 16));
  }

LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
}

void type metadata accessor for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style))(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)))
  {
    type metadata accessor for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for ((key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style)));
    }
  }
}

uint64_t specialized static _ShapeStyle_Pack.Fill.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 48);
  v51 = *(a1 + 32);
  v52 = v3;
  v11 = *(a1 + 48);
  *v53 = *(a1 + 64);
  v4 = *(a1 + 16);
  v49 = *a1;
  v50 = v4;
  v5 = *(a2 + 16);
  v6 = v5;
  v54 = *a2;
  v55 = v5;
  *&v58[14] = *(a2 + 78);
  v7 = *(a2 + 48);
  *v58 = *(a2 + 64);
  v8 = *(a2 + 48);
  v56 = *(a2 + 32);
  v57 = v8;
  v59[0] = v49;
  v59[1] = v2;
  v9 = *(a1 + 64);
  *(&v60[1] + 6) = *(a1 + 78);
  v59[3] = v11;
  *v60 = v9;
  v59[2] = v51;
  *&v60[5] = v6;
  *&v53[14] = *(a1 + 78);
  *&v60[3] = v54;
  v10 = *(a2 + 64);
  *(v61 + 14) = *(a2 + 78);
  v61[0] = v10;
  *&v60[9] = v7;
  *&v60[7] = v56;
  v11.i64[0] = v49.i64[0];
  v12 = v49.i32[3];
  if (v53[21] <= 2u)
  {
    if (!v53[21])
    {
      if (!v58[21])
      {
        outlined destroy of (ShapeType, ShapeType)(v59, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill);
        if (v54.f32[0] == v49.f32[0] && v54.f32[1] == v49.f32[1] && v49.f32[2] == v54.f32[2] && v54.f32[3] == v49.f32[3] && *&v50 == *&v55)
        {
          v15 = 1;
          return v15 & 1;
        }

LABEL_36:
        v15 = 0;
        return v15 & 1;
      }

      goto LABEL_34;
    }

    if (v53[21] == 1)
    {
      if (v58[21] == 1)
      {
        v16 = v54.i64[0];
        v17 = *(*v49.i64[0] + 144);
        outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
        outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v35);
        v15 = v17(v16);
        outlined destroy of (ShapeType, ShapeType)(v59, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill);
        return v15 & 1;
      }

      goto LABEL_34;
    }

    if (v58[21] != 2)
    {
      outlined copy of Material.ID(*(&v50 + 1), v51);
      goto LABEL_34;
    }

    v11.i64[1] = v49.i64[1];
    if ((vminv_u16(vmovn_s32(vceqq_f32(v11, v54))) & 1) == 0 || *&v50 != *&v55)
    {
      outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
      v26 = &v49;
LABEL_35:
      outlined init with copy of _ShapeStyle_Pack.Fill(v26, &v35);
      outlined destroy of (ShapeType, ShapeType)(v59, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill);
      goto LABEL_36;
    }

    v40.i64[0] = *(&v50 + 1);
    v40.i8[8] = v51;
    v40.i32[3] = DWORD1(v51);
    LOWORD(v41) = WORD4(v51);
    v33.i64[0] = *(&v55 + 1);
    v33.i8[8] = v56;
    v33.i32[3] = DWORD1(v56);
    LOWORD(v34) = WORD4(v56);
    outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
    outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v35);
    outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
    outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v35);
    v28 = static ContentStyle.MaterialStyle.== infix(_:_:)(&v40, &v33);
LABEL_29:
    v15 = v28;
    outlined destroy of (ShapeType, ShapeType)(v59, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill);
    outlined destroy of _ShapeStyle_Pack.Fill(&v54);
    outlined destroy of _ShapeStyle_Pack.Fill(&v49);
    return v15 & 1;
  }

  if (v53[21] <= 4u)
  {
    if (v53[21] == 3)
    {
      if (v58[21] == 3)
      {
        v13 = v54.i32[3];
        v40.i64[0] = v49.i64[0];
        v40.i8[8] = v49.i8[8];
        v33.i64[0] = v54.i64[0];
        v33.i8[8] = v54.i8[8];
        outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
        outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v35);
        outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
        outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v35);
        outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
        outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v35);
        v14 = static Material.ID.== infix(_:_:)(&v40, &v33);
        outlined consume of Material.ID(v33.i64[0], v33.u8[8]);
        outlined consume of Material.ID(v40.i64[0], v40.u8[8]);
        outlined destroy of (ShapeType, ShapeType)(v59, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill);
        outlined destroy of _ShapeStyle_Pack.Fill(&v54);
        outlined destroy of _ShapeStyle_Pack.Fill(&v49);
        v15 = v14 & (v12 == v13);
        return v15 & 1;
      }

      outlined copy of Material.ID(v49.i64[0], v49.u8[8]);
    }

    else if (v58[21] == 4)
    {
      outlined destroy of (ShapeType, ShapeType)(v59, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill);
      v35 = v49;
      *&v36 = v50;
      v40 = v54;
      *&v41 = v55;
      v15 = specialized static Color.ResolvedDuotone.== infix(_:_:)(&v35, &v40);
      return v15 & 1;
    }

    goto LABEL_34;
  }

  if (v53[21] != 5)
  {
    if (v58[21] != 6)
    {
      v29 = *(a1 + 48);
      v37 = *(a1 + 32);
      v38 = v29;
      v39[0] = *(a1 + 64);
      *(v39 + 14) = *(a1 + 78);
      v30 = *(a1 + 16);
      v35 = *a1;
      v36 = v30;
      outlined init with copy of ResolvedMulticolorStyle(&v35, &v40);
      goto LABEL_34;
    }

    v40 = v49;
    v41 = v50;
    v27 = *(a2 + 16);
    v33 = *a2;
    v34 = v27;
    outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
    outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v35);
    outlined init with copy of _ShapeStyle_Pack.Fill(&v54, &v35);
    outlined init with copy of _ShapeStyle_Pack.Fill(&v49, &v35);
    v28 = specialized static ResolvedMulticolorStyle.== infix(_:_:)(&v40, &v33);
    goto LABEL_29;
  }

  if (v58[21] != 5)
  {
LABEL_34:
    v26 = &v54;
    goto LABEL_35;
  }

  v18 = *&v53[16];
  v32 = v53[20];
  v19 = v58[20];
  v20 = *&v58[16];
  outlined destroy of (ShapeType, ShapeType)(v59, &lazy cache variable for type metadata for (_ShapeStyle_Pack.Fill, _ShapeStyle_Pack.Fill), &type metadata for _ShapeStyle_Pack.Fill, &type metadata for _ShapeStyle_Pack.Fill);
  v40 = v49;
  v41 = v50;
  v42 = v51;
  v43 = *(a1 + 33);
  v44 = *(a1 + 35);
  v45 = DWORD1(v51);
  v46 = WORD4(v51);
  *&v48[14] = *(a1 + 72);
  *v48 = *(a1 + 58);
  v47 = *(a1 + 42);
  v23 = *(a2 + 48);
  v37 = *(a2 + 32);
  v38 = v23;
  v39[0] = *(a2 + 64);
  v24 = *(a2 + 16);
  v35 = *a2;
  v36 = v24;
  v25 = specialized static _ColorMatrix.== infix(_:_:)(v40.f32, v35.f32) && v18 == v20;
  v15 = v32 == v19 && v25;
  return v15 & 1;
}

uint64_t static _AlignmentWritingModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, uint64_t a4@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = a2[1];
  v14 = *a2;
  v15 = v6;
  v18 = *(a2 + 40);
  v19[0] = *(a2 + 56);
  v7 = *(a2 + 8);
  v8 = *(a2 + 9);
  *(v19 + 12) = *(a2 + 68);
  v16 = v7;
  v17 = v8;
  a3(&v11);
  if ((v8 & 2) != 0)
  {
    *&v14 = __PAIR64__(v13, v5);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    lazy protocol witness table accessor for type AlignmentModifiedLayoutComputer and conformance AlignmentModifiedLayoutComputer();
    result = Attribute.init<A>(body:value:flags:update:)();
    v10 = v12 | 0x80;
  }

  else
  {
    v10 = v12;
    result = v13;
  }

  *a4 = v11;
  *(a4 + 8) = v10;
  *(a4 + 12) = result;
  return result;
}

void lazy protocol witness table accessor for type AlignmentModifiedLayoutComputer and conformance AlignmentModifiedLayoutComputer()
{
  if (!lazy protocol witness table cache variable for type AlignmentModifiedLayoutComputer and conformance AlignmentModifiedLayoutComputer)
  {
    swift_getWitnessTable(protocol conformance descriptor for AlignmentModifiedLayoutComputer, &unk_1F0084E20, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AlignmentModifiedLayoutComputer and conformance AlignmentModifiedLayoutComputer);
  }
}

double AlignmentModifiedLayoutComputer.updateValue()()
{
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = Value[1];
  v4 = Value[2];
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    v5 = one-time initialization token for defaultValue;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = &static LayoutComputer.defaultValue;
  }

  else
  {

    v6 = AGGraphGetValue();
  }

  v8 = *v6;
  v7 = *(v6 + 1);
  v12[0] = v2;
  v12[1] = v3;
  v12[2] = v4;
  v12[3] = v8;
  v12[4] = v7;
  MEMORY[0x1EEE9AC00](v6);
  v11[2] = v12;
  MEMORY[0x1EEE9AC00](v9);

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v11, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));

  return result;
}

double specialized closure #2 in StatefulRule<>.update<A>(to:)@<D0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;

  return result;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA017AlignmentModifiedcD033_1A9A538762FDCD24410B0F017CAED17ALLV0E0V_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<AlignmentModifiedLayoutComputer.Engine>, &type metadata for AlignmentModifiedLayoutComputer.Engine, &protocol witness table for AlignmentModifiedLayoutComputer.Engine, type metadata accessor for TracingLayoutEngineBox);
    v4 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v6 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v7 = 0;
    }

    else
    {
      v7 = CurrentAttribute;
    }

    *(v4 + 56) = v7;
    *(v4 + 60) = v6;
  }

  else
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LayoutEngineBox<AlignmentModifiedLayoutComputer.Engine>, &type metadata for AlignmentModifiedLayoutComputer.Engine, &protocol witness table for AlignmentModifiedLayoutComputer.Engine, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  result = *a1;
  v9 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v9;
  *(v4 + 48) = *(a1 + 32);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

void *initializeWithCopy for AlignmentModifiedLayoutComputer.Engine(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];

  return a1;
}

void AlignmentModifiedLayoutComputer.Engine.layoutPriority()()
{
  v1 = *(v0 + 24);
  v2 = one-time initialization token for lockAssertionsAreEnabled;

  if (v2 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    (*(*v1 + 88))();
  }
}

double destroy for AlignmentModifiedLayoutComputer.Engine(uint64_t a1)
{

  return result;
}

void AlignmentModifiedLayoutComputer.Engine.sizeThatFits(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = *(v1 + 24);
  v7 = one-time initialization token for lockAssertionsAreEnabled;

  if (v7 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_7;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (!_MovableLockIsOwner(static Update._lock))
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_7:
    v8 = v2;
    v9 = v3;
    v10 = v4;
    v11 = v5;
    (*(*v6 + 120))(&v8);
  }
}

uint64_t AlignmentModifiedLayoutComputer.Engine.explicitAlignment(_:at:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  if (*v2 == a1)
  {
    v7 = v2[1];
    v8 = v2[4];
    v15 = v2[3];
    v16 = v8;
    v17 = v4;
    v18 = v3;
    v19 = v6;
    v20 = v5;

    v9 = v7(&v15);

    return *&v9;
  }

  else
  {
    v12 = v2[3];
    v13 = one-time initialization token for lockAssertionsAreEnabled;

    if (v13 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_9;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    if (!_MovableLockIsOwner(static Update._lock))
    {
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
LABEL_9:
      v15 = v4;
      v16 = v3;
      v17 = v6;
      v18 = v5;
      v14 = (*(*v12 + 144))(a1, &v15);

      return v14;
    }
  }

  return result;
}

double Transition.animation(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  Transition.transaction(_:)(partial apply for closure #1 in Transition.animation(_:), v8, a2, a3, a4);

  return result;
}

uint64_t Font.italic()(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  v3 = swift_allocObject();
  *(v3 + 16) = a1;

  return v3;
}

void type metadata accessor for FontBox<Font.StaticModifierProvider<Font.BoldModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FontBox<Font.StaticModifierProvider<Font.BoldModifier>>)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.ItalicModifier>(255, &lazy cache variable for type metadata for Font.StaticModifierProvider<Font.BoldModifier>, &type metadata for Font.BoldModifier, &protocol witness table for Font.BoldModifier, type metadata accessor for Font.StaticModifierProvider);
    v3 = v2;
    lazy protocol witness table accessor for type Font.StaticModifierProvider<Font.BoldModifier> and conformance Font.StaticModifierProvider<A>();
    v6 = type metadata accessor for FontBox(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for FontBox<Font.StaticModifierProvider<Font.BoldModifier>>);
    }
  }
}

void type metadata accessor for Font.StaticModifierProvider<Font.ItalicModifier>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void lazy protocol witness table accessor for type Font.StaticModifierProvider<Font.BoldModifier> and conformance Font.StaticModifierProvider<A>()
{
  if (!lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.BoldModifier> and conformance Font.StaticModifierProvider<A>)
  {
    type metadata accessor for Font.StaticModifierProvider<Font.ItalicModifier>(255, &lazy cache variable for type metadata for Font.StaticModifierProvider<Font.BoldModifier>, &type metadata for Font.BoldModifier, &protocol witness table for Font.BoldModifier, type metadata accessor for Font.StaticModifierProvider);
    swift_getWitnessTable(protocol conformance descriptor for Font.StaticModifierProvider<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type Font.StaticModifierProvider<Font.BoldModifier> and conformance Font.StaticModifierProvider<A>);
  }
}

uint64_t VerticalAlignment.init(_:)(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for typeCache != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&static AlignmentKey.typeCache);
  v4 = _s7SwiftUI12AlignmentKeyV2id4axisAcA0C2ID_pXp_AA4AxisOtcfcSuAC9TypeCache33_1135C055CD2C2B1265C25B13E3E74C01LLVzYTXEfU_(&qword_1ED537F50, a1, a2);
  os_unfair_lock_unlock(&static AlignmentKey.typeCache);
  return 2 * v4 + 3;
}

uint64_t Text.bold()(uint64_t a1, uint64_t a2, char a3, char *a4, __n128 a5)
{
  type metadata accessor for BoldTextModifier();
  v9 = swift_allocObject();
  *(v9 + 16) = 1;
  outlined copy of Text.Storage(a1, a2, a3 & 1);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a4 + 2) + 1, 1, a4);
  }

  v11 = *(a4 + 2);
  v10 = *(a4 + 3);
  if (v11 >= v10 >> 1)
  {
    a4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, a4);
  }

  *(a4 + 2) = v11 + 1;
  v12 = &a4[16 * v11];
  *(v12 + 4) = v9;
  v12[40] = -64;
  return a1;
}

double View.imageScale(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  View.environment<A>(_:_:)(KeyPath, a1, a2, a3);

  return result;
}

double CGRect.outset(by:)(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v11 = a5;
  v22.origin.x = a5;
  v22.origin.y = a6;
  v22.size.width = a7;
  v22.size.height = a8;
  if (!CGRectIsNull(v22))
  {
    v16 = -a3;
    v23.origin.x = v11;
    v23.origin.y = a6;
    v23.size.width = a7;
    v23.size.height = a8;
    v24 = CGRectStandardize(v23);
    if (a2 == a4)
    {
      v17 = a4;
    }

    else
    {
      v17 = a2;
    }

    v11 = v24.origin.x - v17;
    v18 = v24.origin.y - a1;
    v19 = v24.size.width - (-a4 - a2);
    v20 = v24.size.height - (v16 - a1);
    v25.origin.x = v24.origin.x - v17;
    v25.origin.y = v24.origin.y - a1;
    v25.size.width = v19;
    v25.size.height = v20;
    if (CGRectGetWidth(v25) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }

    v26.origin.x = v11;
    v26.origin.y = v18;
    v26.size.width = v19;
    v26.size.height = v20;
    if (CGRectGetHeight(v26) < 0.0)
    {
      return *MEMORY[0x1E695F050];
    }
  }

  return v11;
}

double _TextRendererViewModifier.MakeTextRenderer.updateValue()(uint64_t a1)
{
  v26[2] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v7 = &v26[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26[-1] - v9;
  v12 = *(v11 + 48);
  v13 = *(v1 + 8);
  v25 = *(a1 + 24);
  Value = AGGraphGetValue();
  v16 = v15;
  (*(*(v3 - 8) + 16))(v10, Value, v3);
  v10[v12] = v16 & 1;
  v18 = *AGGraphGetValue();
  if (v16)
  {
  }

  else
  {
    if ((v17 & 1) == 0)
    {
LABEL_5:
      (*(v5 + 8))(v10, TupleTypeMetadata2);
      return result;
    }

    v19 = swift_retain_n();
    v20 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v19);

    if ((v20 & 1) == 0)
    {

      goto LABEL_5;
    }
  }

  PropertyList.Tracker.reset()();
  (*(v5 + 16))(v7, v10, TupleTypeMetadata2);
  if (v18)
  {
    v23 = *(v18 + 64);
  }

  else
  {
    v23 = 0;
  }

  type metadata accessor for TextRendererBox(0, v3, v25, v22);
  v24 = *(v13 + 16);
  swift_retain_n();

  os_unfair_lock_lock((v24 + 16));
  *(v24 + 24) = v23;
  os_unfair_lock_unlock((v24 + 16));

  v26[0] = v18;
  v26[1] = v13;
  v26[0] = TextRendererBox.__allocating_init(_:in:)(v7, v26);
  type metadata accessor for TextRendererBoxBase();
  AGGraphSetOutputValue();

  (*(v5 + 8))(v10, TupleTypeMetadata2);

  return result;
}

char *TextRendererBox.__allocating_init(_:in:)(uint64_t a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v6 = *a2;
  v5 = a2[1];
  (*(*(*(*v4 + 128) - 8) + 32))(&v4[*(*v4 + 144)], a1);
  *(v4 + 2) = v6;
  *(v4 + 3) = v5;
  return v4;
}

double TextChildQuery.environment.getter@<D0>(void *a1@<X8>)
{
  Value = AGGraphGetValue();
  v4 = *Value;
  v3 = Value[1];
  *a1 = v4;
  a1[1] = v3;

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE028TextRendererAddsDrawingGroupV0031_7F70C8A76EE0356881289646072938J0LLVG_Tt0B5(void *result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~result[7]) != 0)
      {
        result = result[5];
        if (!result)
        {
          return result;
        }
      }

      if (result[3])
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE028TextRendererAddsDrawingGroupV0031_7F70C8A76EE0356881289646072938J0LLVG_Tt0B5(result[3], a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      v6 = a2;
      v7 = result;
      v8 = result[2];
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.TextRendererAddsDrawingGroupKey>, &type metadata for EnvironmentValues.TextRendererAddsDrawingGroupKey, &protocol witness table for EnvironmentValues.TextRendererAddsDrawingGroupKey, type metadata accessor for EnvironmentPropertyKey);
      if (v8 == v9)
      {
        return v7;
      }

      result = v7[4];
      a2 = v6;
      if (!result)
      {
        return result;
      }
    }

    return v5;
  }

  return result;
}

SwiftUI::Spacing __swiftcall ResolvedStyledText.TextLayoutManager.spacing()()
{
  if (*(v1 + 216))
  {
    v2 = v0;
    v3 = swift_beginAccess();
    v4 = (v1 + 424);
    v5 = *(v1 + 488);
    if ((v5 & 0xFF00) == 0x200)
    {
      v6 = MEMORY[0x193AC38C0](v3);
      swift_beginAccess();
      ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)((*(v1 + 97) & 1) == 0, 0, &v42, 1.0, INFINITY, INFINITY);
      outlined destroy of ResolvedStyledText.TextLayoutManager.Metrics(&v42);
      objc_autoreleasePoolPop(v6);
      v7 = *&v43[24];
      v8 = *&v43[40];
      v9 = *&v43[56];
      *(v1 + 456) = *&v43[40];
      *(v1 + 472) = v9;
      v5 = *&v43[72];
      *(v1 + 488) = *&v43[72];
      v10 = *&v43[8];
      *v4 = *&v43[8];
      *(v1 + 440) = v7;
      v48 = v10;
      v49 = v7;
      v50 = v8;
      v51 = v9;
    }

    else
    {
      v12 = *(v1 + 440);
      v48 = *v4;
      v49 = v12;
      v13 = *(v1 + 472);
      v50 = *(v1 + 456);
      v51 = v13;
    }

    v52[0] = v48;
    v52[1] = v49;
    v52[2] = v50;
    v52[3] = v51;
    v53 = v5;
    swift_endAccess();
    ResolvedStyledText.maxFontMetrics.getter(v32);
    swift_beginAccess();
    v14 = *(v1 + 128);
    v15 = *(v1 + 96);
    v38 = *(v1 + 112);
    v39 = v14;
    v16 = *(v1 + 128);
    v40 = *(v1 + 144);
    v17 = *(v1 + 64);
    v18 = *(v1 + 32);
    v34 = *(v1 + 48);
    v35 = v17;
    v19 = *(v1 + 64);
    v20 = *(v1 + 96);
    v36 = *(v1 + 80);
    v37 = v20;
    v21 = *(v1 + 32);
    v33[0] = *(v1 + 16);
    v33[1] = v21;
    v28 = v38;
    v29 = v16;
    v30 = *(v1 + 144);
    v24 = v34;
    v25 = v19;
    v26 = v36;
    v27 = v15;
    v41 = *(v1 + 160);
    v31 = *(v1 + 160);
    v22 = v33[0];
    v23 = v18;
    outlined init with copy of TextLayoutProperties(v33, &v42);
    static Spacing.textSpacing(maxFontMetrics:idealMetrics:layoutProperties:)(v32, v52, &v22, v2);
    v44 = v28;
    v45 = v29;
    v46 = v30;
    v47 = v31;
    *&v43[16] = v24;
    *&v43[32] = v25;
    *&v43[48] = v26;
    *&v43[64] = v27;
    v42 = v22;
    *v43 = v23;
    return outlined destroy of TextLayoutProperties(&v42);
  }

  else
  {

    return Spacing.init()();
  }
}

void ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(int a1@<W0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v7 = v6;
  v129 = *MEMORY[0x1E69E9840];
  v14 = *(v6 + 216);
  swift_beginAccess();
  ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:)(v14, a4);
  v16 = v15;
  swift_endAccess();
  if (a1)
  {
    v17 = a5;
  }

  else
  {
    v17 = a6;
  }

  if ((a1 & 1) == 0)
  {
    a6 = a5;
  }

  swift_beginAccess();
  v18 = v17 - (*(v6 + 176) + *(v6 + 192));
  if (v18 < 0.0)
  {
    v18 = 0.0;
  }

  v19 = a6 - (*(v6 + 168) + *(v6 + 184));
  if (v19 < 0.0)
  {
    v19 = 0.0;
  }

  if (a1)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  if (a1)
  {
    v21 = v18;
  }

  else
  {
    v21 = v19;
  }

  swift_beginAccess();
  v22 = *(v6 + 152);
  aBlock = *(v6 + 136);
  v23.i64[1] = *(&aBlock + 1);
  *&v118 = v22;
  LOBYTE(v121) = *(v6 + 43);
  *v23.i64 = v21;
  TextShape.resolve(in:layoutDirection:)(&v121, &v124, v23, *&v20);
  v24 = v124;
  v26 = *(&v125 + 1);
  v25 = v125;
  v27 = *&v126;
  v28 = v21 + *(v6 + 104);
  LOBYTE(v124) = 1;
  LOBYTE(aBlock) = 1;
  v29 = *(v6 + 392) < 0;
  *&v124 = 0;
  BYTE8(v124) = v29;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 1;
  aBlock = v24;
  v112 = v25;
  v118 = __PAIR128__(*&v26, v25);
  v119 = *&v27;
  ResolvedStyledText.TextLayoutManager.layout(with:in:at:shape:)(&v124, v28, v20, a4, a1 & 0xFFFFFF01, &aBlock);
  v31 = v30;
  v33 = v32;
  v35 = v34;
  computeLayoutInfo #1 () in ResolvedStyledText.TextLayoutManager.computeMetrics(scale:requestedSize:minorAxisIsFlexible:)(v16);
  v121 = 0.0;
  v122 = 0;
  v123 = 0;
  if (v37)
  {
    if ((*(v7 + 392) & 0x8000000000000000) != 0)
    {
      v57 = 0.0;
      v74 = 1;
    }

    else
    {
      v113 = *(v7 + 392);
      v100 = v35;
      v101 = v26;
      v102 = v27;
      v103 = a2;
      v104 = a1;
      v105 = v16;
      v106 = v36;
      v109 = v37;
      v107 = v38;
      v108 = v39;
      v41 = *(v7 + 352);
      v40 = *(v7 + 360);
      v42 = *(v7 + 376);
      v43 = *(v7 + 384);
      v44 = *(v7 + 368);
      descent = MEMORY[0x1E69E7CC0];
      LOBYTE(leading) = 0;
      swift_beginAccess();
      v110 = v44 & 1;
      outlined copy of Text.Layout.Line.Line(v41, v40);
      ResolvedStyledText.TextLayoutManager.LayoutManager.layoutManager(for:original:)(v14, a4);
      v46 = v45;
      swift_endAccess();
      v47 = *(v7 + 260);
      v48 = (v47 >> 3) & 0x10;
      v49 = *(v7 + 256) & ((v47 & 2) >> 1);
      v50 = swift_allocObject();
      *(v50 + 16) = v49;
      *(v50 + 24) = 0;
      *(v50 + 32) = 0;
      *(v50 + 40) = &descent;
      *(v50 + 48) = v48;
      *(v50 + 56) = &leading;
      v51 = swift_allocObject();
      *(v51 + 16) = closure #1 in ResolvedStyledText.TextLayoutManager.collectTextLayout(origin:scale:)partial apply;
      *(v51 + 24) = v50;
      v119 = thunk for @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool)partial apply;
      v120 = v51;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      *&v118 = thunk for @escaping @callee_guaranteed (@guaranteed NSTextLayoutFragment) -> (@unowned Bool);
      *(&v118 + 1) = &block_descriptor_35;
      v52 = _Block_copy(&aBlock);

      v53 = [v46 enumerateTextLayoutFragmentsFromLocation:0 options:0 usingBlock:v52];
      swift_unknownObjectRelease();

      _Block_release(v52);
      LOBYTE(v48) = swift_isEscapingClosureAtFileLocation();

      if (v48)
      {
        __break(1u);
      }

      v97 = v33;
      v98 = v28;
      v99 = v20;
      v54 = descent;
      v55 = LOBYTE(leading);
      v56 = *(*&descent + 16);

      v121 = v54;
      v122 = v55;
      v123 = v56;
      *&aBlock = v41;
      *(&aBlock + 1) = v40;
      LOBYTE(v118) = v110;
      *(&v118 + 1) = v42;
      v119 = v43;
      LODWORD(v120) = v113 | 2;
      outlined copy of Text.Layout.Line.Line(v41, v40);
      Text.Layout.truncateLast(_:width:)(&aBlock, v21);
      outlined consume of Text.Layout.Line.Line(aBlock, *(&aBlock + 1));
      v57 = v121;
      if (v121 == 0.0)
      {
        __break(1u);
        goto LABEL_67;
      }

      v94 = v41;
      v111 = v40;
      x = *MEMORY[0x1E695F050];
      y = *(MEMORY[0x1E695F050] + 8);
      width = *(MEMORY[0x1E695F050] + 16);
      height = *(MEMORY[0x1E695F050] + 24);
      v62 = *(*&v121 + 16);
      v95 = v21;
      v96 = a4;
      if (v62)
      {

        v63 = (*&v57 + 64);
        do
        {
          v71 = *(v63 - 4);
          v72 = *(v63 - 3);
          v73 = *(v63 - 1);
          v114 = *v63;
          if (*(v63 - 2))
          {
            outlined copy of Text.Layout.Line.Line(v71, v72);
            outlined copy of Text.Layout.Line.Line(v71, v72);

            [v71 typographicBounds];
            TypographicBounds = v64;
            v67 = v66;
            [v71 glyphOrigin];
            v69 = v68;

            v70 = v67 - v69;
          }

          else
          {
            outlined copy of Text.Layout.Line.Line(v71, v72);
            outlined copy of Text.Layout.Line.Line(v71, v72);

            descent = 0.0;
            *&aBlock = 0;
            leading = 0.0;
            TypographicBounds = CTLineGetTypographicBounds(v71, &aBlock, &descent, &leading);

            v70 = descent;
            v69 = *&aBlock;
          }

          v136.origin.x = v73 + 0.0;
          v136.origin.y = v114 + 0.0 - v69;
          v136.size.height = v70 + v69;
          v130.origin.x = x;
          v130.origin.y = y;
          v130.size.width = width;
          v130.size.height = height;
          v136.size.width = TypographicBounds;
          v131 = CGRectUnion(v130, v136);
          x = v131.origin.x;
          y = v131.origin.y;
          width = v131.size.width;
          height = v131.size.height;
          outlined consume of Text.Layout.Line.Line(v71, v72);
          v63 += 6;
          --v62;
        }

        while (v62);
      }

      else
      {
      }

      v132.origin.x = x;
      v132.origin.y = y;
      v132.size.width = width;
      v132.size.height = height;
      IsNull = CGRectIsNull(v132);
      if (IsNull)
      {
        v76 = 0.0;
      }

      else
      {
        v76 = height;
      }

      if (IsNull)
      {
        v77 = 0.0;
      }

      else
      {
        v77 = width;
      }

      if (IsNull)
      {
        v78 = 0.0;
      }

      else
      {
        v78 = y;
      }

      if (IsNull)
      {
        v79 = 0.0;
      }

      else
      {
        v79 = x;
      }

      v133.origin.x = v79;
      v133.origin.y = v78;
      v133.size.width = v77;
      v133.size.height = v76;
      MinX = CGRectGetMinX(v133);
      if (MinX < 0.0)
      {
        v81 = 0.0;
      }

      else
      {
        v81 = MinX;
      }

      v134.origin.x = v79;
      v134.origin.y = v78;
      v134.size.width = v77;
      v134.size.height = v76;
      MaxX = CGRectGetMaxX(v134);
      v21 = v95;
      if (MaxX >= v95)
      {
        MaxX = v95;
      }

      v135.size.width = MaxX - v81;
      v135.origin.x = v81;
      v135.origin.y = v78;
      v135.size.height = v76;
      v31 = CGRectGetWidth(v135);
      outlined consume of Text.Layout.Line.Line(v94, v111);
      v74 = 1;
      v16 = v105;
      v36 = v106;
      v38 = v107;
      v39 = v108;
      v37 = v109;
      a4 = v96;
      v33 = v97;
      a2 = v103;
      LOWORD(a1) = v104;
      v28 = v98;
      v20 = v99;
      v26 = v101;
      v27 = v102;
      v35 = v100;
    }
  }

  else
  {
    v57 = 0.0;
    v74 = 0;
  }

  v83 = BYTE1(a1);
  v84 = v31 - *(v7 + 104);
  if ((a2 & (v84 < v21)) != 0)
  {
    v84 = v21;
  }

  if (v112 == 4)
  {
    goto LABEL_57;
  }

  if (v112 != 1)
  {
    if (v112 == 3)
    {
      v84 = v84 + v26;
      goto LABEL_53;
    }

LABEL_67:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

LABEL_53:
  if ((a1 & 0x100) == 0)
  {
    v84 = v28;
  }

  if (v33 <= v27)
  {
    v33 = v27;
  }

LABEL_57:
  if (v35)
  {
    v85 = v84;
  }

  else
  {
    v85 = v33;
  }

  if (v35)
  {
    v84 = v33;
  }

  v86 = *(v7 + 112);
  v87 = ceil(v85);
  v88 = ceil(v84);
  v89 = v86 * ceil(v85 / v86);
  v90 = v86 * ceil(v84 / v86);
  if (v86 == 1.0)
  {
    v90 = v88;
    v89 = v87;
  }

  v91 = a1 & 1;
  LOBYTE(aBlock) = 0;
  v92 = v122;
  v93 = v123;
  *a3 = v21;
  *(a3 + 8) = v20;
  *(a3 + 16) = v91;
  *(a3 + 17) = v83;
  *(a3 + 24) = v89;
  *(a3 + 32) = v90;
  *(a3 + 40) = a4;
  *(a3 + 48) = v38;
  *(a3 + 56) = v39;
  *(a3 + 64) = 0;
  *(a3 + 72) = v21;
  *(a3 + 80) = v36;
  *(a3 + 88) = 0;
  *(a3 + 89) = v37 & 1;
  *(a3 + 90) = v74;

  *(a3 + 96) = v57;
  *(a3 + 104) = v92;
  *(a3 + 112) = v93;
  NSAttributedString.Metrics.update(layoutMargins:pixelLength:)(*(v7 + 168), *(v7 + 176), *(v7 + 184), *(v7 + 192), *(v7 + 112));
}