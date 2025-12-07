void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA0G6ValuesV014LowerLineLimitF033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt2g5(uint64_t *a1, uint64_t a2, char a3)
{
  v6 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA0T6ValuesV014LowerLineLimitS033_32CC33FA2019BEDFCE31FB4066945274LLVG_Tt0g5(*a1);
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = *(v6 + 80);
  if (a3)
  {
    if (*(v6 + 80))
    {
      return;
    }

LABEL_8:
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>>(0);
    v9 = swift_allocObject();
    *(v9 + 72) = a2;
    *(v9 + 80) = a3 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>, &type metadata for EnvironmentValues.LowerLineLimitKey, &protocol witness table for EnvironmentValues.LowerLineLimitKey, type metadata accessor for EnvironmentPropertyKey);
    v11 = v10;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v11, 0, v8);

    return;
  }

  if (v6[9] != a2)
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_8;
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>, &type metadata for EnvironmentValues.LowerLineLimitKey, &protocol witness table for EnvironmentValues.LowerLineLimitKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<EnvironmentValues.LowerLineLimitKey>>);
    }
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA014DefaultKerningF033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt2g5(uint64_t *a1, double a2)
{
  v4 = *a1;
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultKerningKey>, &type metadata for DefaultKerningKey, &protocol witness table for DefaultKerningKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  BloomFilter.init(hashValue:)(v5);
  v7 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA014DefaultKerningV033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0B5(v4, v9);
  if (!v7 || v7[9] != a2)
  {
    v8 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultKerningKey>>(0);
    *(swift_allocObject() + 72) = a2;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v6, 0, v8);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<DefaultKerningKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultKerningKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultKerningKey>, &type metadata for DefaultKerningKey, &protocol witness table for DefaultKerningKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultKerningKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<DefaultKerningKey>>);
    }
  }
}

unint64_t NSAttributedString.limitedFontHeight(by:)(uint64_t a1)
{
  result = NSAttributedString.kitFont()();
  v3 = result;
  if (*&result != 0.0)
  {
    CoreFontGetLineHeight(0, result);
    v5 = v4;
    Leading = CoreFontGetLeading(0, v3);

    if (a1 < 1)
    {
      *&result = 0.0;
    }

    else
    {
      *&result = v5 * a1 + Leading * (a1 - 1);
    }
  }

  return result;
}

double key path setter for EnvironmentValues.tint : EnvironmentValues, serialized(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA04TintF033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA04TintK033_EB037BD7690CB8A700384AACA7B075E4LLVG_Ttg5(v4, *a2);
  }

  return result;
}

uint64_t ShapeStyle.offset(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, v4, a2, v10);
  (*(v9 + 32))(a4, v12, a2);
  result = type metadata accessor for OffsetShapeStyle(0, a2, a3, v13);
  *(a4 + *(result + 36)) = a1;
  return result;
}

NSObject_optional __swiftcall NSAttributedString.kitFont()()
{
  if (one-time initialization token for kitFont != -1)
  {
    swift_once();
  }

  if ([v0 attribute:static NSAttributedStringKey.kitFont atIndex:0 effectiveRange:0])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    type metadata accessor for NSObject();
    if (swift_dynamicCast())
    {
      v2 = v3;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    outlined destroy of Any?(v6);
    v2 = 0;
  }

  result.value.isa = v2;
  result.is_nil = v1;
  return result;
}

double View.tint<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  KeyPath = swift_getKeyPath();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a4;
  v12[5] = a5;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for implicit closure #1 in View.tint<A>(_:), v12, MEMORY[0x1E69E73E0], &type metadata for AnyShapeStyle, v10, &v14);
  v13 = v14;
  View.environment<A>(_:_:)(KeyPath, &v13, a2, a4);

  return result;
}

uint64_t sub_18D395294@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.mapKitTint.getter();
  *a1 = result;
  return result;
}

double EnvironmentValues.tint.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA04TintI033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt1g5(v1);
  }

  else if (_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA04TintS033_EB037BD7690CB8A700384AACA7B075E4LLVG_Tt0g5(v1))
  {
  }

  return result;
}

Swift::Void __swiftcall DisplayList.ViewUpdater.ViewInfo.reset()()
{
  v1 = CoreViewLayer(*v0 & 3, *(v0 + 8));

  *(v0 + 16) = v1;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  v2 = vdupq_n_s64(0x7FF0000000000000uLL);
  *(v0 + 32) = v2;
  *(v0 + 48) = v2;
  *(v0 + 65) = 0;
  *(v0 + 120) = 0x7FF0000000000000;
}

Swift::Int specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v13;
    }

    v10 = *(v9 + 56) + 20 * v7;
    v11 = *(v10 + 16);
    v12 = *(v10 + 17);
    *a2 = *v10;
    *(a2 + 16) = v11;
    *(a2 + 17) = v12;
    result = specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 512;
  }

  return result;
}

void CGDrawingLayer.options.didset(int *a1)
{
  v2 = *(a1 + 2);
  v3 = a1[2];
  v4 = *(a1 + 12);
  v5 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options];
  v6 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options];
  v7 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options + 4];
  v8 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options + 8];
  v9 = v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options + 12];
  v18 = *a1;
  v19 = v2;
  v20 = v3;
  v21 = v4;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  v17 = v9;
  if (!specialized static RasterizationOptions.== infix(_:_:)(&v18, &v14))
  {
    [v1 setOpaque_];
    v10 = *(v5 + 2);
    v11 = MEMORY[0x1E6979658];
    if ((v10 & 0x100) != 0)
    {
      v11 = MEMORY[0x1E6979660];
    }

    if ((v10 & 0x40) != 0)
    {
      v12 = MEMORY[0x1E6979648];
    }

    else
    {
      v12 = v11;
    }

    v13 = *v12;
    [v1 setContentsFormat_];
  }
}

void protocol witness for PlatformDrawable.options.setter in conformance CGDrawingLayer(uint64_t a1)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v5 = v1 + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options;
  v6 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options);
  v7 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options + 4);
  v8 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options + 8);
  v9 = *(v1 + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options + 12);
  *v5 = *a1;
  *(v5 + 4) = v2;
  *(v5 + 8) = v3;
  *(v5 + 12) = v4;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  CGDrawingLayer.options.didset(&v10);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

double closure #2 in ViewGraphHost.startUpdateTimer(delay:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 160);
    *(Strong + 160) = 0;

    *(v3 + 144) = 0;
    *(v3 + 152) = 1;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      (*(*(v5 + 8) + 32))(ObjectType);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for _ClipEffect(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 2;
  v10 = 8 * (v6 + 2);
  if ((v6 + 2) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

uint64_t getEnumTagSinglePayload for _StrokedShape(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t getEnumTagSinglePayload for ColorView(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 22))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 20);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t GestureResponder.deinit(__n128 a1)
{
  v1 = DefaultLayoutViewResponder.deinit(a1);

  swift_unknownObjectRelease();
  return v1;
}

uint64_t GestureResponder.__deallocating_deinit(__n128 a1)
{
  GestureResponder.deinit(a1);

  return swift_deallocClassInstance();
}

uint64_t ContentShapeResponder.deinit(__n128 a1)
{
  v2 = *v1;
  v3 = DefaultLayoutViewResponder.deinit(a1);
  v4 = *(*v3 + 416);
  v6 = type metadata accessor for _ContentShapeModifier(255, *(v2 + 400), *(v2 + 408), v5);
  v8 = type metadata accessor for ContentResponderHelper(0, v6, &protocol witness table for _ContentShapeModifier<A>, v7);
  (*(*(v8 - 8) + 8))(v3 + v4, v8);
  return v3;
}

uint64_t ContentShapeResponder.__deallocating_deinit(__n128 a1)
{
  ContentShapeResponder.deinit(a1);

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for _TagTraitWritingModifier(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

double specialized implicit closure #1 in _GraphInputs.redactionReasons.getter@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v6[0] = v4;
  v6[1] = v3;

  key path getter for EnvironmentValues.redactionReasons : EnvironmentValues(v6, a2);

  return result;
}

Swift::Void __swiftcall ViewGraphHost.startUpdateTimer(delay:)(Swift::Double delay)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = [v3 isMainThread];
  if (v4)
  {
    if (delay <= 0.1)
    {
      delay = 0.1;
    }

    if (one-time initialization token for _lock != -1)
    {
      swift_once();
    }

    v5 = static Update._lock;
    _MovableLockLock(static Update._lock);
    v6 = *(v1 + 136);
    if (v6)
    {
      *(v6 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread) = 0;
    }

    _MovableLockUnlock(v5);
    swift_beginAccess();
    v7 = delay + *(v1 + 104);
    if (*(v1 + 152))
    {
      if (v7 == INFINITY)
      {
        return;
      }
    }

    else if (v7 >= *(v1 + 144))
    {
      return;
    }

    v8 = *(v1 + 160);
    if (v8)
    {
      [v8 invalidate];
      v7 = delay + *(v1 + 104);
    }

    *(v1 + 144) = v7;
    *(v1 + 152) = 0;
    v9 = swift_allocObject();
    swift_weakInit();
    v10 = swift_allocObject();
    *(v10 + 16) = partial apply for closure #2 in ViewGraphHost.startUpdateTimer(delay:);
    *(v10 + 24) = v9;
    v27 = partial apply for closure #1 in withDelay(_:do:);
    v28 = v10;
    aBlock = MEMORY[0x1E69E9820];
    v24 = 1107296256;
    v25 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    v26 = &block_descriptor_2;
    v11 = _Block_copy(&aBlock);
    v12 = objc_opt_self();
    swift_retain_n();
    v13 = [v12 timerWithTimeInterval:0 repeats:v11 block:delay];
    _Block_release(v11);

    v14 = [objc_opt_self() mainRunLoop];
    [v14 addTimer:v13 forMode:*MEMORY[0x1E695DA28]];

    v15 = *(v1 + 160);
    *(v1 + 160) = v13;
  }

  else
  {
    v16 = *(v1 + 136);
    if (v16)
    {
      *(v16 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_nextThread) = 0;
    }

    v22[2] = v1;
    *&v22[3] = delay;
    if ([v3 isMainThread])
    {
      ViewGraphHost.startUpdateTimer(delay:)(delay);
    }

    else
    {
      v17 = swift_allocObject();
      *(v17 + 16) = partial apply for closure #1 in ViewGraphHost.startUpdateTimer(delay:);
      *(v17 + 24) = v22;
      v18 = AGSubgraphGetCurrent();
      CurrentAttribute = AGGraphGetCurrentAttribute();
      aBlock = _sIg_Ieg_TRTA_0;
      v24 = v17;
      v25 = v18;
      LODWORD(v26) = CurrentAttribute;
      v20 = one-time initialization token for _lock;

      if (v20 != -1)
      {
        swift_once();
      }

      _MovableLockSyncMain(static Update._lock, &aBlock, @objc closure #1 in closure #1 in closure #1 in static Update.syncMain(_:));
      v21 = v25;

      LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

      if (v21)
      {
        __break(1u);
      }
    }
  }
}

uint64_t sub_18D396690()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3966C8()
{

  return swift_deallocObject();
}

uint64_t storeEnumTagSinglePayload for Text.ResolvedProperties.Transition(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 14) = 0;
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 15) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 15) = 0;
    }

    if (a2)
    {
      *(result + 14) = a2 + 1;
    }
  }

  return result;
}

void ShapeStyleTriple._apply(to:)(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  if (v5 > 2)
  {
    if (v5 == 3)
    {
      return;
    }

    if (v5 != 4)
    {
      if (!(v4 | v3 | v2))
      {
        v12 = a1;
        outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
        *(v12 + 32) = 1;
        *(v12 + 40) = 4;
      }

      return;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
LABEL_18:
    *(a1 + 24) = v5;
    if (v2 > 0)
    {
      if (v2 != 1)
      {
        goto LABEL_20;
      }

LABEL_24:
      v11 = *(a2[6] + 32);
      goto LABEL_25;
    }

    goto LABEL_38;
  }

  if (!*(a1 + 24))
  {
    if (v2 == 1)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 24) = 0;
      *(a1 + 16) = 0;
      goto LABEL_24;
    }

    if (v2)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 24) = 0;
      *(a1 + 16) = 0;
LABEL_20:
      v11 = *(a2[7] + 32);
LABEL_25:
      v11();
      return;
    }

LABEL_38:
    v20 = *(a2[5] + 32);

    v20();
    return;
  }

  if (v5 != 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    LOBYTE(v5) = 2;
    goto LABEL_18;
  }

  if (v3 != v4)
  {
    v6 = a1;
    if (v4 > 2)
    {
      *a1 = *a1;
      *(a1 + 8) = xmmword_18DD85550;
      *(a1 + 24) = 1;
      v7 = a2;
      (*(a2[7] + 32))(a1, a2[4]);
      v21 = v2;
      if (v3 <= 2)
      {
        v8 = 2;
      }

      else
      {
        v8 = v3;
      }

      if (*(v6 + 40) == 1)
      {
        v9 = *(v6 + 32);

        outlined consume of _ShapeStyle_Shape.Result(v10, 1u);
        *(v6 + 32) = 0;
        *(v6 + 40) = 5;
      }

      else
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v21, v8);
      v13 = *(v6 + 32);
      v14 = *(v6 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v13, v14);
      *(v6 + 32) = v9;
      *(v6 + 40) = 1;

      a1 = v6;
      a2 = v7;
    }

    if (v3 < 2 && v4 > 1)
    {
      *a1 = v2;
      *(a1 + 8) = xmmword_18DD85550;
      *(a1 + 24) = 1;
      v15 = a2;
      (*(a2[6] + 32))(v6, a2[3]);
      v21 = v2;
      if (*(v6 + 40) == 1)
      {
        v16 = *(v6 + 32);

        outlined consume of _ShapeStyle_Shape.Result(v17, 1u);
        *(v6 + 32) = 0;
        *(v6 + 40) = 5;
      }

      else
      {
        v16 = MEMORY[0x1E69E7CC0];
      }

      _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v21, 1);
      v18 = *(v6 + 32);
      v19 = *(v6 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v18, v19);
      *(v6 + 32) = v16;
      *(v6 + 40) = 1;

      a1 = v6;
      a2 = v15;
    }

    if (v3 < 1 && v4 >= 1)
    {
      *a1 = v2;
      *(a1 + 8) = xmmword_18DD85550;
      *(a1 + 24) = 1;
      goto LABEL_38;
    }
  }
}

void specialized OffsetShapeStyle._apply(to:)(uint64_t a1, uint64_t a2, unint64_t a3, Swift::Int a4)
{
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v5 = *a1;
  v6 = (a1 + 8);
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  if (v9 <= 2)
  {
    if (!*(a1 + 24))
    {
      if (__OFADD__(a4, v5))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      *a1 = a4 + v5;
      *v6 = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
LABEL_20:
      ForegroundMaterialStyle._apply(to:)(a1);
      return;
    }

    if (v9 == 1)
    {
      v10 = v7 + a4;
      if (!__OFADD__(v7, a4))
      {
        v11 = v8 + a4;
        if (!__OFADD__(v8, a4))
        {
          if (v11 >= v10)
          {
            v35 = *a1;
            if (*(a1 + 40) == 1)
            {
              v12 = *(a1 + 32);
              v13 = a4;

              outlined consume of _ShapeStyle_Shape.Result(v14, 1u);
              a4 = v13;
              *(a1 + 32) = 0;
              *(a1 + 40) = 5;
            }

            else
            {
              v12 = MEMORY[0x1E69E7CC0];
            }

            v36 = v12;
            v27 = a4;
            _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v35, a4);
            v28 = *(a1 + 32);
            *(a1 + 32) = v36;
            v29 = *(a1 + 40);
            *(a1 + 40) = 1;

            outlined consume of _ShapeStyle_Shape.Result(v28, v29);

            *a1 = v5;
            *(a1 + 8) = v10;
            *(a1 + 16) = v11;
            *(a1 + 24) = 1;
            ForegroundMaterialStyle._apply(to:)(a1);
            v35 = v5;
            if (!__OFSUB__(0, v27))
            {
              if (*(a1 + 40) == 1)
              {
                v30 = *(a1 + 32);

                outlined consume of _ShapeStyle_Shape.Result(v31, 1u);
                *(a1 + 32) = 0;
                *(a1 + 40) = 5;
              }

              else
              {
                v30 = MEMORY[0x1E69E7CC0];
              }

              v36 = v30;
              _ShapeStyle_Pack.adjustLevelIndices(of:by:)(&v35, -v27);
              v32 = v36;
              v33 = *(a1 + 32);
              v34 = *(a1 + 40);

              outlined consume of _ShapeStyle_Shape.Result(v33, v34);
              *(a1 + 32) = v32;
              *(a1 + 40) = 1;

              return;
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

    if (__OFADD__(a4, v5))
    {
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    *a1 = a4 + v5;
    *v6 = 0;
    *(a1 + 16) = 0;
    v16 = 2;
LABEL_19:
    *(a1 + 24) = v16;
    goto LABEL_20;
  }

  v15 = HIDWORD(a3);
  if (v9 == 3)
  {
    v17 = a4;
    v36 = a2;
    v37 = a3;
    v38 = HIDWORD(a3);
    ForegroundMaterialStyle._apply(to:)(a1);
    if (*(a1 + 40) == 2)
    {
      v18 = *(a1 + 32);
      type metadata accessor for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>(0, &lazy cache variable for type metadata for ShapeStyleBox<OffsetShapeStyle<AnyShapeStyle>>, &lazy cache variable for type metadata for OffsetShapeStyle<AnyShapeStyle>, &type metadata for AnyShapeStyle, &protocol witness table for AnyShapeStyle);
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      *(v19 + 24) = v17;

      outlined consume of _ShapeStyle_Shape.Result(v20, 2u);
      *(a1 + 32) = v19;
      *(a1 + 40) = 2;
    }
  }

  else
  {
    if (v9 == 4)
    {
      if (__OFADD__(a4, v5))
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      *a1 = a4 + v5;
      *v6 = 0;
      *(a1 + 16) = 0;
      v16 = 4;
      goto LABEL_19;
    }

    if (v8 | v7 | v5)
    {
      v22 = a3;
      type metadata accessor for OffsetShapeStyle<AnyShapeStyle>(0, &lazy cache variable for type metadata for ShapeStyleBox<ForegroundMaterialStyle>, &type metadata for ForegroundMaterialStyle, &protocol witness table for ForegroundMaterialStyle, type metadata accessor for ShapeStyleBox);
      v23 = swift_allocObject();
      *(v23 + 16) = a2;
      *(v23 + 24) = v22;
      *(v23 + 28) = v15;
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      outlined copy of Material.ID(a2, v22);
      outlined consume of _ShapeStyle_Shape.Result(v24, v25);
      *(a1 + 32) = v23;
      v26 = 2;
    }

    else
    {
      outlined consume of _ShapeStyle_Shape.Result(*(a1 + 32), *(a1 + 40));
      *(a1 + 32) = 0;
      v26 = 4;
    }

    *(a1 + 40) = v26;
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA017VibrantColorStyleI033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017VibrantColorStyleS033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt0g5(a1);
    if (v12)
    {
      v19[0] = *(v12 + 9);
    }

    else
    {
      v19[0] = 0u;
    }

    goto LABEL_14;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<VibrantColorStyleKey>, &type metadata for VibrantColorStyleKey, &protocol witness table for VibrantColorStyleKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v19);
    outlined init with take of AnyTrackedValue(v19, v20);
    v10 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    v11 = v10[1];
    type metadata accessor for VibrantColorStyle.Type?(0);
    v11(v19);
    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  else
  {
    v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA017VibrantColorStyleS033_8CCD408021CD268DDD1874045F6AD3D9LLVG_Tt0g5(a1);
    if (v13)
    {
      v14 = v13[9];
      v15 = v13[10];
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *&v19[0] = v14;
    *(&v19[0] + 1) = v15;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<VibrantColorStyleKey>>(0);
    v21 = v16;
    v22 = &protocol witness table for TrackedValue<A>;
    v20[0] = v14;
    v20[1] = v15;
    specialized Dictionary.subscript.setter(v20, v6);
  }

LABEL_14:
  v17 = *&v19[0];
  os_unfair_lock_unlock((v3 + 16));

  return v17;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<VibrantColorStyleKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<VibrantColorStyleKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<VibrantColorStyleKey>, &type metadata for VibrantColorStyleKey, &protocol witness table for VibrantColorStyleKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<VibrantColorStyleKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<VibrantColorStyleKey>>);
    }
  }
}

uint64_t static ContentTransition.numericText(countsDown:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v4 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524)
  {
    result = dyld_program_minos_at_least();
  }

  else
  {
    result = dword_1ED53C520 >= v4;
  }

  *a2 = (result ^ ~a1) & 1 | 0x1202024000000000;
  *(a2 + 12) = 3;
  *(a2 + 8) = 34807859;
  *(a2 + 13) = 0;
  return result;
}

double ResolvedStyledText.schedule.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 216);
  if (v3 && [v3 length] >= 1)
  {
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    v4 = static NSAttributedStringKey.updateSchedule;
    [v3 length];
    if ([v3 attribute:v4 atIndex:0 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      _sypSgWOhTm_6(v6, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
      NSAttributedString.updateSchedule.getter(a1);
      return result;
    }

    memset(v6, 0, sizeof(v6));
    _sypSgWOhTm_6(v6, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_5);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t outlined destroy of TimelineSchedule?(uint64_t a1)
{
  type metadata accessor for TimelineSchedule?(0, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule, &protocol descriptor for TimelineSchedule, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Set._Variant.insert(_:)(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x193AC1150](*(*v2 + 40), a2, 4);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

id closure #1 in ViewGraphDisplayLink.setFrameInterval(_:reasons:)(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result != MEMORY[0x1E69E7668])
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  if (v9)
  {
    while (1)
    {
      v11 = v6;
LABEL_9:
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *(a2 + 4 * v5++) = *(*(a3 + 48) + ((v11 << 8) | (4 * v12)));
      v6 = v11;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  while (1)
  {
LABEL_6:
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_16;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(a3 + 56 + 8 * v11);
    ++v6;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  result = *(a4 + OBJC_IVAR____TtC7SwiftUI20ViewGraphDisplayLink_link);
  if (result)
  {
    return [result setHighFrameRateReasons:a2 count:a5];
  }

  return result;
}

void _s7SwiftUI11DisplayListV11ViewUpdaterC10AsyncLayerV8setValue_3fory0J0Qz_xmtAA01_cd1_ef1_gH8PropertyRzlFAE8EndPointO_Tt0g5Tm(SEL *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = v5[1];
  v9 = [objc_opt_self() *a1];
  v10 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v8 + 40);
  *(v8 + 40) = 0x8000000000000000;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
  v15 = *(v12 + 2);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
LABEL_16:
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
    *(v10 + 8 * v14) = v12;
    goto LABEL_10;
  }

  v18 = v13;
  if (*(v12 + 3) >= v17)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
    }
  }

  else
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, isUniquelyReferenced_nonNull_native);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(v10);
    if ((v18 & 1) != (v20 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v14 = v19;
  }

  *(v8 + 40) = v12;

  v21 = *(v8 + 40);
  if ((v18 & 1) == 0)
  {
    specialized _NativeDictionary._insert(at:key:value:)(v14, v10, MEMORY[0x1E69E7CC0], *(v8 + 40));
  }

  v10 = *(v21 + 56);
  v12 = *(v10 + 8 * v14);
  v26 = v9;
  v22 = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 8 * v14) = v12;
  if ((v22 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  v24 = *(v12 + 2);
  v23 = *(v12 + 3);
  if (v24 >= v23 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v12);
    *(v10 + 8 * v14) = v12;
  }

  *(v12 + 2) = v24 + 1;
  v25 = &v12[32 * v24];
  *(v25 + 4) = a2;
  *(v25 + 5) = a3;
  *(v25 + 6) = v26;
  v25[56] = 1;
}

uint64_t protocol witness for static ViewModifier._makeView(modifier:inputs:body:) in conformance PrivacyRedactionViewModifier.Transform<A>.PrivacyEffect@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void (*a6)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X8>)
{
  swift_getWitnessTable(protocol conformance descriptor for PrivacyRedactionViewModifier.Transform<A>.PrivacyEffect, a5);

  return static RendererEffect._makeView(modifier:inputs:body:)(a1, a2, a3, a4, a5, v12, a6);
}

uint64_t StateObject.projectedValue.getter(void (*a1)(uint64_t), uint64_t a2, char a3, uint64_t a4)
{
  StateObject.objectValue.getter(a1, a2, a3 & 1, a4);
  v4 = ObservedObject.projectedValue.getter();
  swift_unknownObjectRelease();
  return v4;
}

void *static _TraitWritingModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a2[3];
  v36[2] = a2[2];
  v36[3] = v10;
  v36[4] = a2[4];
  v37 = *(a2 + 20);
  v11 = a2[1];
  v36[0] = *a2;
  v36[1] = v11;
  if (a5 == &type metadata for LayoutPriorityTraitKey)
  {
    v16 = type metadata accessor for _TraitWritingModifier(0, &type metadata for LayoutPriorityTraitKey, a6, a4);
    v17 = Attribute.unsafeBitCast<A>(to:)(&type metadata for LayoutPriorityLayout, v9, v16, &type metadata for LayoutPriorityLayout);
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v19 = a2[3];
    v26 = a2[2];
    v27 = v19;
    v28 = a2[4];
    v29 = *(a2 + 20);
    v20 = a2[1];
    v24 = *a2;
    v25 = v20;
    v21 = v26;
    LODWORD(v26) = 0;
    v35 = v29;
    v33 = v19;
    v34 = v28;
    v30 = v24;
    v31 = v20;
    v32 = v26;
    outlined init with copy of _ViewInputs(v36, v22);
    outlined init with copy of _ViewInputs(&v30, v22);
    _s7SwiftUI11UnaryLayoutPA2A16PlacementContextV0eF4TypeRtzrlE12makeViewImpl8modifier6inputs4bodyAA01_I7OutputsVAA11_GraphValueVyxG_AA01_I6InputsVAmA01_O0V_ARtctFZAA0d8PriorityD0V_Tt3B5(v17, &v30, a3, a7);
    outlined destroy of _ViewInputs(&v30);
    LODWORD(v26) = v21;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a7, &v24);
      AGSubgraphEndTreeElement();
    }

    v22[2] = v26;
    v22[3] = v27;
    v22[4] = v28;
    v23 = v29;
    v22[0] = v24;
    v22[1] = v25;
    return outlined destroy of _ViewInputs(v22);
  }

  else
  {
    v12 = a2[3];
    v32 = a2[2];
    v33 = v12;
    v34 = a2[4];
    v35 = *(a2 + 20);
    v13 = a2[1];
    v30 = *a2;
    v31 = v13;
    return (a3)();
  }
}

BOOL specialized static ContentStyle.MaterialStyle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 12);
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *a2;
  v6 = *(a2 + 12);
  v7 = *(a2 + 16);
  v8 = *(a2 + 17);
  v9 = *(a1 + 8);
  v10 = *(a2 + 8);
  v16 = *a1;
  v17 = v9;
  v14 = v5;
  v15 = v10;
  outlined copy of Material.ID(v16, v9);
  outlined copy of Material.ID(v5, v10);
  LOBYTE(v5) = static Material.ID.== infix(_:_:)(&v16, &v14);
  outlined consume of Material.ID(v14, v15);
  outlined consume of Material.ID(v16, v17);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v12 = v3 == v7 && v4 == v8;
  return v2 == v6 && v12;
}

uint64_t protocol witness for _RendererEffect.effectValue(size:) in conformance PrivacyRedactionViewModifier.Transform<A>.PrivacyEffect@<X0>(uint64_t x8_0@<X8>)
{
  if (v2[2])
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  if (v2[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return PrivacyRedactionViewModifier.Transform.PrivacyEffect.effectValue(size:)(v4 | *v2 | v3, x8_0);
}

uint64_t PrivacyRedactionViewModifier.Transform.PrivacyEffect.effectValue(size:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *a2 = v2 | (result >> 9) & 0x80;
  *(a2 + 8) = 0;
  *(a2 + 12) = 2;
  return result;
}

void *initializeWithTake for _EnvironmentKeyWritingModifier(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((a1 + *(v4 + 80) + 8) & ~*(v4 + 80), (a2 + *(v4 + 80) + 8) & ~*(v4 + 80));
  return a1;
}

double specialized GestureFilter.updateValue()()
{
  v0 = specialized GestureFilter.responder.getter();
  type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>(0);
  v0[55] = *(AGGraphGetValue() + 40);

  specialized GestureFilter.responder.getter();
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  AGGraphGetValue();
  if (v1)
  {

    MultiViewResponder.children.setter(v2);
  }

  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18DDAB4D0;
    *(v4 + 32) = specialized GestureFilter.responder.getter();
    AGGraphSetOutputValue();
  }

  return result;
}

{
  specialized GestureFilter.responder.getter();
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  AGGraphGetValue();
  if (v0)
  {

    MultiViewResponder.children.setter(v1);
  }

  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_18DDAB4D0;
    *(v3 + 32) = specialized GestureFilter.responder.getter();
    AGGraphSetOutputValue();
  }

  return result;
}

id specialized GestureFilter.responder.getter()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = *(v0 + 96);
    AGGraphClearUpdate();
    v3 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v4 = *(v0 + 4);
    v5 = *(v0 + 40);
    v6 = *(v0 + 72);
    v12[3] = *(v0 + 56);
    v12[4] = v6;
    v13 = *(v0 + 88);
    v7 = *(v0 + 24);
    v12[0] = *(v0 + 8);
    v12[1] = v7;
    v12[2] = v5;
    type metadata accessor for GestureResponder<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>>(0);
    swift_allocObject();
    outlined init with copy of _ViewInputs(v12, v11);
    v8 = v4;
    v9 = v0;
    v1 = specialized GestureResponder.init(modifier:inputs:)(v8, v12);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    *(v9 + 104) = v1;
  }

  return v1;
}

{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = *(v0 + 96);
    AGGraphClearUpdate();
    v3 = AGSubgraphGetCurrent();
    AGSubgraphSetCurrent();
    v4 = *(v0 + 4);
    v5 = *(v0 + 40);
    v6 = *(v0 + 72);
    v12[3] = *(v0 + 56);
    v12[4] = v6;
    v13 = *(v0 + 88);
    v7 = *(v0 + 24);
    v12[0] = *(v0 + 8);
    v12[1] = v7;
    v12[2] = v5;
    type metadata accessor for GestureComponentResponder<TapComponent<TouchEvent>>(0);
    swift_allocObject();
    outlined init with copy of _ViewInputs(v12, v11);
    v8 = v4;
    v9 = v0;
    v1 = specialized GestureComponentResponder.init(modifier:inputs:)(v8, v12);
    AGSubgraphSetCurrent();

    AGGraphSetUpdate();
    *(v9 + 104) = v1;
  }

  return v1;
}

void type metadata accessor for GestureResponder<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GestureResponder<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>>)
  {
    type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>(255);
    v3 = v2;
    lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>, protocol conformance descriptor for AddGestureModifier<A, B>);
    v6 = type metadata accessor for GestureResponder(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for GestureResponder<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>>);
    }
  }
}

uint64_t ContentShapeResponderFilter.responder.getter(uint64_t a1)
{
  if (*(v1 + 120))
  {
    v2 = *(v1 + 120);
  }

  else
  {
    v2 = closure #1 in ContentShapeResponderFilter.responder.getter(v1, *(a1 + 16), *(a1 + 24));
    *(v1 + 120) = v2;
  }

  return v2;
}

id closure #1 in closure #1 in ContentShapeResponderFilter.responder.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  type metadata accessor for ContentShapeResponder(0, a3, a4, a5);
  v7 = *(a1 + 72);
  v19[2] = *(a1 + 56);
  v19[3] = v7;
  v19[4] = *(a1 + 88);
  v20 = *(a1 + 104);
  v8 = *(a1 + 40);
  v19[0] = *(a1 + 24);
  v19[1] = v8;
  v9 = *(a1 + 56);
  v10 = *(a1 + 88);
  v17[3] = *(a1 + 72);
  v17[4] = v10;
  v18 = *(a1 + 104);
  v11 = *(a1 + 40);
  v17[0] = *(a1 + 24);
  v17[1] = v11;
  v17[2] = v9;
  outlined init with copy of _ViewInputs(v19, v16);
  swift_allocObject();
  result = ContentShapeResponder.init(inputs:)(v17, v12, v13, v14);
  *a2 = result;
  return result;
}

unsigned int *storeEnumTagSinglePayload for _TagTraitWritingModifier(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

void ContentShapeResponderFilter.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for _ContentShapeModifier(0, *(a1 + 16), *(a1 + 24), a4);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  ContentShapeResponderFilter.responder.getter(a1);
  Value = AGGraphGetValue();
  v33 = v10;
  (*(v6 + 16))(v8, Value, v5);
  v11 = AGGraphGetValue();
  v32 = v12;
  v13 = v11[1];
  v34[0] = *v11;
  v34[1] = v13;
  type metadata accessor for CGPoint(0);
  v14 = AGGraphGetValue();
  v16 = v15;
  v18 = *v14;
  v17 = v14[1];
  v19 = AGGraphGetValue();
  v21 = v20;
  v22 = *(v19 + 8);
  v35[0].f64[0] = *v19;
  v35[0].f64[1] = v22;
  v23 = *(v19 + 32);
  v35[1] = *(v19 + 16);
  v35[2] = v23;

  v24 = ContentShapeResponderFilter.responder.getter(a1);
  swift_beginAccess();
  v26 = type metadata accessor for ContentResponderHelper(0, v5, &protocol witness table for _ContentShapeModifier<A>, v25);
  v27.n128_u64[0] = v18;
  v28.n128_u64[0] = v17;
  ContentResponderHelper.update(data:size:position:transform:parent:)(v8, v33 & 1, v34, v32 & 1, v16 & 1, v35, v21 & 1, v24, v27, v28, v26);
  swift_endAccess();

  (*(v6 + 8))(v8, v5);
  ContentShapeResponderFilter.responder.getter(a1);
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v29)
  {

    MultiViewResponder.children.setter(v30);
  }

  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_18DDAB4D0;
    *(v31 + 32) = ContentShapeResponderFilter.responder.getter(a1);
    *&v35[0].f64[0] = v31;
    AGGraphSetOutputValue();
  }
}

uint64_t closure #1 in ContentShapeResponderFilter.responder.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 112);
  AGGraphClearUpdate();
  v7 = AGSubgraphGetCurrent();
  AGSubgraphSetCurrent();
  closure #1 in closure #1 in ContentShapeResponderFilter.responder.getter(a1, &v10, a2, a3, v8);
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  return v10;
}

id ContentShapeResponder.init(inputs:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1[2];
  v15 = a1[3];
  v16 = a1[4];
  v17 = *(a1 + 20);
  v12 = *a1;
  v13 = a1[1];
  v5 = *(*v4 + 416);
  v6 = type metadata accessor for _ContentShapeModifier(0, *(*v4 + 400), *(*v4 + 408), a4);
  ContentResponderHelper.init()(v6, &protocol witness table for _ContentShapeModifier<A>, v7, (v4 + v5));
  *(v4 + 120) = v14;
  *(v4 + 136) = v15;
  *(v4 + 152) = v16;
  *(v4 + 88) = v12;
  *(v4 + 200) = 0u;
  *(v4 + 184) = 0u;
  *(v4 + 168) = v17;
  *(v4 + 104) = v13;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v9 = MEMORY[0x1E69E7CC0];
    *(v4 + 176) = result;
    *(v4 + 40) = v9;
    *(v4 + 48) = 0u;
    *(v4 + 64) = 0u;
    *(v4 + 80) = v9;
    *(v4 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v10 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v11 = *(v10 + 208);

    swift_beginAccess();
    *(v4 + 24) = v11;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *static PrivacyRedactionViewModifier._makeView(modifier:inputs:body:)@<X0>(__int128 *a2@<X1>, void (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a2[1];
  v32 = *a2;
  v33 = v8;
  v9 = a2[3];
  v34 = a2[2];
  v35 = v9;
  v36 = a2[4];
  v37 = *(a2 + 20);
  if (one-time initialization token for redactionReasons != -1)
  {
    swift_once();
  }

  v10 = static CachedEnvironment.ID.redactionReasons;
  swift_beginAccess();
  v11 = specialized CachedEnvironment.attribute<A>(id:_:)(v10, specialized implicit closure #1 in _GraphInputs.redactionReasons.getter, 0);
  swift_endAccess();
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(v32))
  {
    *&v26 = __PAIR64__(v11, OffsetAttribute2);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ModifiedContent<_EnvironmentKeyWritingModifier<RedactionReasons>, _EnvironmentKeyWritingModifier<Bool>>(0);
    lazy protocol witness table accessor for type PrivacyRedactionViewModifier.WidgetAuxiliaryChild and conformance PrivacyRedactionViewModifier.WidgetAuxiliaryChild();
    Attribute.init<A>(body:value:flags:update:)();
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v22 = v34;
    v23 = v35;
    v24 = v36;
    v20 = v32;
    v21 = v33;
    v14 = v34;
    v25 = v37;
    LODWORD(v22) = 0;
    v31 = v37;
    v29 = v35;
    v30 = v36;
    v26 = v32;
    v27 = v33;
    v28 = v22;
    outlined init with copy of _ViewInputs(&v32, v18);
    outlined init with copy of _ViewInputs(&v26, v18);
    _s7SwiftUI15ModifiedContentVA2A12ViewModifierRzAaDR_rlE05_makeE08modifier6inputs4bodyAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVAjA01_L0V_APtctFZAA022_EnvironmentKeyWritingF0VyAA16RedactionReasonsVG_ATySbGTt3B5(&v26, a3, a5);
    outlined destroy of _ViewInputs(&v26);
    LODWORD(v22) = v14;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a5, &v20);
      AGSubgraphEndTreeElement();
    }

    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    return outlined destroy of _ViewInputs(v18);
  }

  else
  {
    v16 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderF033_7799685610985DBA9248562F2E4D5E6ELLV_Tt2g5(v32);
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    return static PrivacyRedactionViewModifier.makeChild<A>(modifier:type:body:sensitive:inputs:reasons:)(a3, a4, OffsetAttribute2, &v26, v11, v16, a5, v17);
  }
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderF033_7799685610985DBA9248562F2E4D5E6ELLV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.PrivacyReductionAccessibilityProviderKey);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderV0024_7799685610985DBA9248562L7E4D5E6ELLV_Tt0B5(a1, v5);
  if (v2)
  {
    v3 = (v2 + 72);
  }

  else
  {
    v3 = &static _GraphInputs.PrivacyReductionAccessibilityProviderKey.defaultValue;
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }
  }

  return *v3;
}

void *static PrivacyRedactionViewModifier.makeChild<A>(modifier:type:body:sensitive:inputs:reasons:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, unsigned int a3@<W4>, uint64_t a4@<X5>, unsigned int a5@<W6>, uint64_t a6@<X7>, void *a7@<X8>, uint64_t a8)
{
  v49 = *MEMORY[0x1E69E9840];
  v14 = *(a4 + 48);
  v45 = *(a4 + 32);
  v46 = v14;
  v47 = *(a4 + 64);
  v48 = *(a4 + 80);
  v15 = *(a4 + 16);
  v43 = *a4;
  v44 = v15;
  v16 = type metadata accessor for PrivacyRedactionViewModifier.Transform(0, a6, a8, a2);
  *&v41[0] = __PAIR64__(a5, a3);
  v18 = type metadata accessor for PrivacyRedactionViewModifier.Child(0, a6, a8, v17);
  swift_getWitnessTable(protocol conformance descriptor for PrivacyRedactionViewModifier.Child<A>, v18);
  _GraphValue.init<A>(_:)(v41, v16, v18, v19, &v26);
  v20 = v26;
  ShouldRecordTree = AGSubgraphShouldRecordTree();
  if (ShouldRecordTree)
  {
    AGSubgraphBeginTreeElement();
  }

  v35 = v45;
  v36 = v46;
  v37 = v47;
  v38 = v48;
  v33 = v43;
  v34 = v44;
  v40 = v48;
  v22 = v45;
  LODWORD(v35) = 0;
  v25 = v20;
  v39[0] = v43;
  v39[1] = v44;
  v39[3] = v46;
  v39[4] = v47;
  v39[2] = v35;
  v29 = v35;
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v27 = v43;
  v28 = v44;
  outlined init with copy of _ViewInputs(&v43, v41);
  outlined init with copy of _ViewInputs(v39, v41);
  swift_getWitnessTable(")W(btu\a", v16);
  static ViewModifier._makeView(modifier:inputs:body:)(&v25, &v27, a1, a2, v16, v23, a7);
  v41[2] = v29;
  v41[3] = v30;
  v41[4] = v31;
  v42 = v32;
  v41[0] = v27;
  v41[1] = v28;
  outlined destroy of _ViewInputs(v41);
  LODWORD(v35) = v22;
  if (ShouldRecordTree)
  {
    specialized static _ViewDebug.reallyWrap<A>(_:value:inputs:)(a7, &v33);
    AGSubgraphEndTreeElement();
  }

  v29 = v35;
  v30 = v36;
  v31 = v37;
  v32 = v38;
  v27 = v33;
  v28 = v34;
  return outlined destroy of _ViewInputs(&v27);
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance PrivacyRedactionViewModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

uint64_t static _ForegroundStyleModifier3.graphInputsSemantics.getter()
{
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  return static Semantics.v4;
}

uint64_t static _ForegroundStyleModifier3._makeViewInputs(modifier:inputs:)(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25[9] = *MEMORY[0x1E69E9840];
  v14 = *a1;
  v15 = *(a2 + 16);
  swift_beginAccess();
  v16 = *(v15 + 16);
  v21[0] = v14;
  v21[1] = v16;
  v25[0] = a3;
  v25[1] = a4;
  v25[2] = a5;
  v25[3] = a6;
  v25[4] = a7;
  v25[5] = a8;
  v23 = type metadata accessor for _ForegroundStyleModifier3.ForegroundStyleEnvironment(0, v25);
  swift_getWitnessTable(protocol conformance descriptor for _ForegroundStyleModifier3<A, B, C>.ForegroundStyleEnvironment, v23);
  v24 = v17;
  type metadata accessor for Attribute<EnvironmentValues>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v21, closure #1 in Attribute.init<A>(_:)partial apply, v22, v23, MEMORY[0x1E69E73E0], v18, MEMORY[0x1E69E7410], v19);
  return _GraphInputs.environment.setter(v25[0]);
}

uint64_t *PrivacyRedactionViewModifier.Child.value.getter@<X0>(uint64_t a2@<X8>)
{
  v3 = *AGGraphGetValue();
  result = AGGraphGetValue();
  v5 = *result;
  *a2 = v3;
  *(a2 + 8) = v5;
  return result;
}

uint64_t PrivacyRedactionViewModifier.Transform.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = *(a1 + 16);
  v72 = *(a1 + 24);
  v4 = v72;
  v73 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = AssociatedTypeWitness;
  v78 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v77 = &v65 - v7;
  swift_getWitnessTable(")W(btu\a", a1, v6);
  v10 = type metadata accessor for _ViewModifier_Content(255, a1, v8, v9);
  type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<RedactionReasons>, &type metadata for RedactionReasons, type metadata accessor for _EnvironmentKeyWritingModifier);
  v13 = type metadata accessor for ModifiedContent(255, v10, v11, v12);
  v65 = type metadata accessor for PrivacyRedactionViewModifier.Transform.PrivacyEffect(255, v3, v4, v14);
  v66 = type metadata accessor for ModifiedContent(255, v13, v65, v15);
  v71 = type metadata accessor for ModifiedContent(255, v66, &type metadata for _OpacityEffect, v16);
  v18 = type metadata accessor for ModifiedContent(0, v71, AssociatedTypeWitness, v17);
  v79 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v82 = &v65 - v19;
  type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], type metadata accessor for _EnvironmentKeyWritingModifier);
  v22 = type metadata accessor for ModifiedContent(255, v13, v20, v21);
  type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, v23, v24, v25);
  v28 = type metadata accessor for ModifiedContent(255, v22, v26, v27);
  v29 = type metadata accessor for Optional();
  v114[0] = &protocol witness table for _ViewModifier_Content<A>;
  v114[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v114);
  v32 = v31;
  v113[0] = v31;
  v113[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  v33 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v22, v113, WitnessTable);
  v112[0] = v34;
  v112[1] = &protocol witness table for _TraitWritingModifier<A>;
  v35 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v28, v112, v33);
  v111 = v36;
  swift_getWitnessTable(protocol conformance descriptor for <A> A?, v29, &v111, v35);
  v76 = v29;
  v68 = v37;
  v39 = type metadata accessor for _OverlayModifier(255, v29, v37, v38);
  v80 = v18;
  v41 = type metadata accessor for ModifiedContent(0, v18, v39, v40);
  v74 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v69 = &v65 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v70 = &v65 - v44;
  LOBYTE(v3) = *v67;
  v45 = *(v67 + 8);
  View.unredacted()(v10, &protocol witness table for _ViewModifier_Content<A>);
  v97 = v105;
  v98 = v106;
  v102 = v3;
  v103 = ((v45 & 2) != 0) & v3;
  v104 = (v45 & 8) != 0;
  View.modifier<A>(_:)();

  v97 = v90;
  v98 = v91;
  v99 = v92;
  v100 = v93;
  v101 = v94;
  v96[0] = v32;
  v96[1] = &protocol witness table for PrivacyRedactionViewModifier.Transform<A>.PrivacyEffect;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v66, v96);
  v47 = v46;
  View.opacity(_:)();

  v90 = v105;
  v91 = v106;
  v92 = v107;
  v93 = v108;
  v94 = v109;
  v95 = v110;
  v48 = v77;
  v49 = v73;
  v50 = v72;
  (*(v72 + 24))(((v45 & 2) != 0) & v3);
  v89[0] = v47;
  v89[1] = &protocol witness table for _OpacityEffect;
  v51 = v50;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v71, v89);
  v53 = v52;
  v54 = v75;
  View.modifier<A>(_:)();
  (*(v78 + 8))(v48, v54);

  v83 = v49;
  v84 = v51;
  v85 = v3;
  v86 = v45;
  if (one-time initialization token for center != -1)
  {
    swift_once();
  }

  v55 = static Alignment.center;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v88[0] = v53;
  v88[1] = AssociatedConformanceWitness;
  v57 = v80;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v80, v88);
  v59 = v58;
  v60 = v69;
  v61 = v82;
  View.overlay<A>(alignment:content:)(v55, *(&v55 + 1), partial apply for closure #1 in PrivacyRedactionViewModifier.Transform.body(content:), v57, v76, v58, v69);
  (*(v79 + 8))(v61, v57);
  v87[0] = v59;
  v87[1] = &protocol witness table for _OverlayModifier<A>;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v41, v87);
  v62 = v70;
  static ViewBuilder.buildExpression<A>(_:)();
  v63 = *(v74 + 8);
  v63(v60, v41);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v63)(v62, v41);
}

void type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>)
  {
    v4 = type metadata accessor for _TraitWritingModifier(0, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>);
    }
  }
}

double View.unredacted()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 0;
  View.environment<A>(_:_:)(KeyPath, &v6, a1, a2);

  return result;
}

double closure #1 in PrivacyRedactionViewModifier.Transform.body(content:)@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a5;
  v7 = type metadata accessor for PrivacyRedactionViewModifier.Transform(0, a3, a4, a4);
  if (a2 & 2) != 0 && (a1)
  {
    v8 = a1 & 1;
    KeyPath = swift_getKeyPath();
    *&v97 = 2;
    swift_getWitnessTable(")W(btu\a", v7);
    v12 = type metadata accessor for _ViewModifier_Content(0, v7, v10, v11);
    View.environment<A>(_:_:)(KeyPath, &v97, v12, &protocol witness table for _ViewModifier_Content<A>);

    v82 = v94;
    v13 = swift_getKeyPath();
    LOBYTE(v77) = v8;
    type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<RedactionReasons>, &type metadata for RedactionReasons, type metadata accessor for _EnvironmentKeyWritingModifier);
    v15 = v14;
    v17 = type metadata accessor for ModifiedContent(0, v12, v14, v16);
    v86[0] = &protocol witness table for _ViewModifier_Content<A>;
    v86[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v17, v86);
    v19 = v18;
    View.environment<A>(_:_:)(v13, &v77, v17, v18);

    v82 = v97;
    *&v83 = v98;
    BYTE8(v83) = BYTE8(v98);
    type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], type metadata accessor for _EnvironmentKeyWritingModifier);
    v21 = v20;
    v23 = type metadata accessor for ModifiedContent(0, v17, v20, v22);
    v85[0] = v19;
    v85[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v23, v85);
    v25 = v24;
    lazy protocol witness table accessor for type OpacityTransition and conformance OpacityTransition();
    View.transition<A>(_:)(v26, v23, &type metadata for OpacityTransition, v25);

    v82 = v94;
    *&v83 = v95;
    BYTE8(v83) = BYTE8(v95);
    v84 = v96;
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, v27, v28, v29);
    v31 = v30;
    v33 = type metadata accessor for ModifiedContent(0, v23, v30, v32);
    v81[0] = v25;
    v81[1] = &protocol witness table for _TraitWritingModifier<A>;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v33, v81);
    static ViewBuilder.buildExpression<A>(_:)();

    v82 = v97;
    *&v83 = v98;
    BYTE8(v83) = BYTE8(v98);
    v84 = v99;
    static ViewBuilder.buildExpression<A>(_:)();

    v77 = v94;
    v78 = v95;
    v79 = BYTE8(v95);
    v80 = v96;
    static ViewBuilder.buildIf<A>(_:)(&v77, &v82);
    outlined consume of ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<PrivacyRedactionViewModifier.Transform<A>>, _EnvironmentKeyWritingModifier<RedactionReasons>>, _EnvironmentKeyWritingModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>>?<A>(v77, *(&v77 + 1), v78, v79, v80);
    v34 = v82;
    v35 = v83;
    v36 = v84;
  }

  else
  {
    v96 = 0;
    v94 = 0u;
    v95 = 0u;
    swift_getWitnessTable(")W(btu\a", v7, v76);
    v39 = type metadata accessor for _ViewModifier_Content(255, v7, v37, v38);
    type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<RedactionReasons>, &type metadata for RedactionReasons, type metadata accessor for _EnvironmentKeyWritingModifier);
    v15 = v40;
    v42 = type metadata accessor for ModifiedContent(255, v39, v40, v41);
    type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], type metadata accessor for _EnvironmentKeyWritingModifier);
    v21 = v43;
    v45 = type metadata accessor for ModifiedContent(255, v42, v43, v44);
    type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, v46, v47, v48);
    v31 = v49;
    v51 = type metadata accessor for ModifiedContent(0, v45, v49, v50);
    v93[0] = &protocol witness table for _ViewModifier_Content<A>;
    v93[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
    WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v42, v93);
    v92[0] = v53;
    v92[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
    v54 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v45, v92, WitnessTable);
    v91[0] = v55;
    v91[1] = &protocol witness table for _TraitWritingModifier<A>;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v51, v91, v54);
    static ViewBuilder.buildIf<A>(_:)(&v94, &v97);
    v34 = v97;
    v35 = v98;
    v36 = v99;
  }

  v97 = v34;
  v98 = v35;
  v99 = v36;
  swift_getWitnessTable(")W(btu\a", v7, v76);
  v58 = type metadata accessor for _ViewModifier_Content(255, v7, v56, v57);
  type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<RedactionReasons>, &type metadata for RedactionReasons, type metadata accessor for _EnvironmentKeyWritingModifier);
  v60 = type metadata accessor for ModifiedContent(255, v58, v15, v59);
  type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], type metadata accessor for _EnvironmentKeyWritingModifier);
  v62 = type metadata accessor for ModifiedContent(255, v60, v21, v61);
  type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, v63, v64, v65);
  v67 = type metadata accessor for ModifiedContent(255, v62, v31, v66);
  v68 = type metadata accessor for Optional();
  v90[0] = &protocol witness table for _ViewModifier_Content<A>;
  v90[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  v69 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v60, v90);
  v89[0] = v70;
  v89[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  v71 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v62, v89, v69);
  v88[0] = v72;
  v88[1] = &protocol witness table for _TraitWritingModifier<A>;
  v73 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v67, v88, v71);
  v87 = v74;
  swift_getWitnessTable(protocol conformance descriptor for <A> A?, v68, &v87, v73);
  static ViewBuilder.buildExpression<A>(_:)();
  return outlined consume of ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<PrivacyRedactionViewModifier.Transform<A>>, _EnvironmentKeyWritingModifier<RedactionReasons>>, _EnvironmentKeyWritingModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>>?<A>(v97, *(&v97 + 1), v98, *(&v98 + 1), v99);
}

uint64_t static ViewBuilder.buildIf<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

double outlined consume of ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<PrivacyRedactionViewModifier.Transform<A>>, _EnvironmentKeyWritingModifier<RedactionReasons>>, _EnvironmentKeyWritingModifier<Bool>>, _TraitWritingModifier<TransitionTraitKey>>?<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
  }

  return result;
}

uint64_t _sSo19AGNamedTraceEventIDas21_ObjectiveCBridgeableSCsACP026_unconditionallyBridgeFromE1Cyx01_E5CTypeQzSgFZTW_0@<X0>(_DWORD *a1@<X8>)
{
  result = static UInt32._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance GestureMask(_DWORD *a1, int *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance GestureMask@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t _sSo21NSAttributedStringKeyaSYSCSY8rawValue03RawE0QzvgTW_0@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance SafeAreaRegions(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance SafeAreaRegions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance SafeAreaRegions@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

_DWORD *protocol witness for SetAlgebra.remove(_:) in conformance GestureMask@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *protocol witness for SetAlgebra.update(with:) in conformance GestureMask@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance SafeAreaRegions@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void _sSo16NSUnderlineStyleVs25ExpressibleByArrayLiteralSCsACP05arrayF0x0eF7ElementQzd_tcfCTW_0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
}

void protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance AGAttributeTypeFlags(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
}

double sub_18D39AA78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for ResetDeltaModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for ResetDeltaModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t getEnumTagSinglePayload for RootSizeInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18D39AB0C()
{
  MEMORY[0x193AC4950](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18D39AB44()
{

  return swift_deallocObject();
}

uint64_t sub_18D39AB7C()
{

  return swift_deallocObject();
}

uint64_t sub_18D39ABD0()
{
  if (*(v0 + 64) != 1)
  {
  }

  return swift_deallocObject();
}

double sub_18D39AC28@<D0>(double *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v3 = a1 + 1;
  if (!*a2)
  {
    v3 = a1;
  }

  result = *v3;
  *a3 = *v3;
  return result;
}

void *sub_18D39AC44(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = 8;
  if (!*a3)
  {
    v3 = 0;
  }

  *(a2 + v3) = *result;
  return result;
}

__n128 sub_18D39AC70@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_18D39AC7C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t _s7SwiftUI11DisplayListV7ContentVwcp_0(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  outlined copy of DisplayList.Content.Value(*a2);
  *a1 = v4;
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

unint64_t *_s7SwiftUI11DisplayListV7ContentV5ValueOwcp_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  outlined copy of DisplayList.Content.Value(*a2);
  *a1 = v3;
  return a1;
}

double sub_18D39AD70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for _EnvironmentKeyTransformModifier<Bool>(255, a2, a3, a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _EnvironmentKeyTransformModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D39AE10@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18D39AE54@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(*a1);
  *a2 = result;
  return result;
}

__n128 sub_18D39AF9C@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

float64x2_t sub_18D39AFA8(float64x2_t *a1, float64x2_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  *a2 = *a1;
  result = vaddq_f64(vsubq_f64(v2, v3), a2[5]);
  a2[5] = result;
  return result;
}

__n128 sub_18D39AFC8@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

float64x2_t sub_18D39AFD4(float64x2_t *a1, float64x2_t *a2)
{
  v2 = *a1;
  v3 = a2[4];
  a2[4] = *a1;
  result = vaddq_f64(vsubq_f64(v2, v3), a2[6]);
  a2[6] = result;
  return result;
}

double sub_18D39AFF4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v7 = *a1;
  v6 = a1[1];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed A) -> ();
  a4[1] = v8;

  return result;
}

uint64_t sub_18D39B088()
{

  return swift_deallocObject();
}

uint64_t sub_18D39B0F4@<X0>(uint64_t a2@<X8>)
{
  result = AGWeakAttributeGetAttribute();
  v4 = result == *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *a2 = v5;
  *(a2 + 4) = v4;
  return result;
}

uint64_t sub_18D39B13C(unsigned int *a1, uint64_t a2)
{
  result = AGCreateWeakAttribute();
  *(a2 + 232) = result;
  return result;
}

uint64_t sub_18D39B17C@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE018ScrollStateRequestF033_27D2EB338D4F8E5F7B4BD25A553BF598LLV_Tt2g5(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18D39B1C0@<X0>(uint64_t a2@<X8>)
{
  result = AGWeakAttributeGetAttribute();
  v4 = result == *MEMORY[0x1E698D3F8];
  if (result == *MEMORY[0x1E698D3F8])
  {
    v5 = 0;
  }

  else
  {
    v5 = result;
  }

  *a2 = v5;
  *(a2 + 4) = v4;
  return result;
}

uint64_t sub_18D39B208(unsigned int *a1, uint64_t a2)
{
  result = AGCreateWeakAttribute();
  *(a2 + 116) = result;
  return result;
}

float _s7SwiftUI14LinearGradientV6_PaintVAA08ResolvedE0A2aFP15contentHeadroomSfvgTW_0()
{
  result = *(v0 + 12);
  if (*(v0 + 16))
  {
    return 1.0;
  }

  return result;
}

double sub_18D39B31C@<D0>(uint64_t a1@<X8>)
{
  RadialGradient._Paint.animatableData.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double sub_18D39B384@<D0>(uint64_t a1@<X8>)
{
  AngularGradient._Paint.animatableData.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v2;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_18D39B41C()
{

  return swift_deallocObject();
}

uint64_t sub_18D39B454@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for ArchivedViewCore.Metadata(0);
  *a2 = *(a1 + *(result + 48));
  return result;
}

uint64_t sub_18D39B48C(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for ArchivedViewCore.Metadata(0);
  *(a2 + *(result + 48)) = v3;
  return result;
}

uint64_t sub_18D39B518(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_16:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_15:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_16;
  }

  v16 = type metadata accessor for Locale();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_15;
  }

  v17 = type metadata accessor for Calendar();
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[10];
    goto LABEL_15;
  }

  v18 = type metadata accessor for TimeZone();
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v14 = *(v18 - 8);
    v15 = a3[11];
    goto LABEL_15;
  }

  v19 = type metadata accessor for FormatStyleCapitalizationContext();
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + a3[12];

  return v20(v21, a2, v19);
}

uint64_t sub_18D39B764(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_14:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_13:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_14;
  }

  v16 = type metadata accessor for Locale();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_13;
  }

  v17 = type metadata accessor for Calendar();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[10];
    goto LABEL_13;
  }

  v18 = type metadata accessor for TimeZone();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[11];
    goto LABEL_13;
  }

  v19 = type metadata accessor for FormatStyleCapitalizationContext();
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[12];

  return v20(v21, a2, a2, v19);
}

uint64_t _s7SwiftUI14GlassContainerO5EntryVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18D39B9FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  *(a2 + 8) = v2;
  return result;
}

uint64_t _s7SwiftUI19ResolvedStorageData33_04178B540DC3B0BFBD7679A049CE48C7LLVwcp_0(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 4);

  return a1;
}

uint64_t sub_18D39BA4C()
{
  outlined consume of PlatformDrawableContent.Storage(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_18D39BA98()
{

  return swift_deallocObject();
}

uint64_t sub_18D39BAE4()
{
  v1 = *(type metadata accessor for ResolvableStringResolutionContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_18D39BC34()
{

  return swift_deallocObject();
}

uint64_t sub_18D39BCA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 200);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18D39BCF0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 200) = v2;
  return swift_unknownObjectWeakAssign();
}

double sub_18D39BD5C()
{
  v1 = v0;
  v61 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v49 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v58 = *(v0 + 8);
    *&v59 = *(v0 + 16);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v58 = *Value;
  v20 = *(Value + 24);
  v59 = *(Value + 8);
  v60 = v20;
  v54 = v21 & 1;
  v22 = one-time initialization token for _current;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v57 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v56 = v18;
    outlined init with take of Any(&v56, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v56);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v50 = *(v26 + 24);
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v58, v1, &v54, type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>, &type metadata for EllipticalGradient, &lazy cache variable for type metadata for UncheckedSendable<EllipticalGradient>, type metadata accessor for _ShapeView<Rectangle, EllipticalGradient>);
  *(StatusReg + 848) = v29;
  v30 = v53;
  outlined init with take of ObservationTracking._AccessList?(v15, v53);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v52;
  v23(v52, v12, v2);
  (*(v3 + 16))(v51, v33, v2);
  swift_beginAccess();
  v1 = *(v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = v1[2];
  v35 = v1[3];
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v1);
  }

  v1[2] = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v51, v2);
  *(v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v52, v2);
  v32 = v53;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v53 = *(v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v26 + 24) = v50;

  return result;
}

double sub_18D39C4D0()
{
  v1 = v0;
  v61 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v49 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v58 = *(v0 + 8);
    *&v59 = *(v0 + 16);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v58 = *Value;
  v20 = *(Value + 24);
  v59 = *(Value + 8);
  v60 = v20;
  v54 = v21 & 1;
  v22 = one-time initialization token for _current;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v57 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v56 = v18;
    outlined init with take of Any(&v56, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v56);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v50 = *(v26 + 24);
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v58, v1, &v54, type metadata accessor for _ShapeView<Rectangle, AngularGradient>, &type metadata for AngularGradient, &lazy cache variable for type metadata for UncheckedSendable<AngularGradient>, type metadata accessor for _ShapeView<Rectangle, AngularGradient>);
  *(StatusReg + 848) = v29;
  v30 = v53;
  outlined init with take of ObservationTracking._AccessList?(v15, v53);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v52;
  v23(v52, v12, v2);
  (*(v3 + 16))(v51, v33, v2);
  swift_beginAccess();
  v1 = *(v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = v1[2];
  v35 = v1[3];
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v1);
  }

  v1[2] = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v51, v2);
  *(v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v52, v2);
  v32 = v53;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v53 = *(v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v26 + 24) = v50;

  return result;
}

double sub_18D39CC44()
{
  v1 = v0;
  v61 = *MEMORY[0x1E69E9840];
  v2 = type metadata accessor for ObservationTracking._AccessList();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v49 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - v9;
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v53 = &v49 - v17;
  v18 = *(v0 + 4);
  if (*(v0 + 24) != *AGGraphGetValue() >> 1)
  {
    v58 = *(v0 + 8);
    *&v59 = *(v0 + 16);
    _DynamicPropertyBuffer.reset()();
    *(v0 + 24) = *AGGraphGetValue() >> 1;
  }

  Value = AGGraphGetValue();
  v58 = *Value;
  v20 = *(Value + 24);
  v59 = *(Value + 8);
  v60 = v20;
  v54 = v21 & 1;
  v22 = one-time initialization token for _current;

  if (v22 != -1)
  {
    swift_once();
  }

  v23 = static ObservationCenter._current;
  swift_beginAccess();
  v24 = pthread_getspecific(*(v23 + 2));
  if (!v24)
  {
    v25 = swift_slowAlloc();
    pthread_setspecific(*(v23 + 2), v25);
    v57 = type metadata accessor for ObservationCenter();
    v18 = *(v23 + 3);
    *&v56 = v18;
    outlined init with take of Any(&v56, v25);

    v24 = v25;
  }

  outlined init with copy of Any(v24, &v56);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v26 = v55;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
LABEL_20:
    v47 = v1[2];

    v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v47 + 1, 1, v1);
    *(v26 + 24) = v48;

    v1 = v48;
    goto LABEL_11;
  }

  v18 = CurrentAttribute;
  swift_beginAccess();
  v50 = *(v26 + 24);
  *(v26 + 24) = MEMORY[0x1E69E7CC0];
  (*(v3 + 56))(v15, 1, 1, v2);
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 13, 0, 3));
  v29 = *(StatusReg + 848);
  *(StatusReg + 848) = v15;
  specialized closure #1 in DynamicBody.updateValue()(&v58, v1, &v54, type metadata accessor for _ShapeView<Rectangle, RadialGradient>, &type metadata for RadialGradient, &lazy cache variable for type metadata for UncheckedSendable<RadialGradient>, type metadata accessor for _ShapeView<Rectangle, RadialGradient>);
  *(StatusReg + 848) = v29;
  v30 = v53;
  outlined init with take of ObservationTracking._AccessList?(v15, v53);
  outlined init with copy of ObservationTracking._AccessList?(v30, v12, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v31 = v3;
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v30, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
    v32 = v12;
    goto LABEL_14;
  }

  v23 = *(v3 + 32);
  v33 = v52;
  v23(v52, v12, v2);
  (*(v3 + 16))(v51, v33, v2);
  swift_beginAccess();
  v1 = *(v26 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v26 + 24) = v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_11:
  v36 = v1[2];
  v35 = v1[3];
  if (v36 >= v35 >> 1)
  {
    v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v1);
  }

  v1[2] = v36 + 1;
  v37 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
  v31 = v3;
  v23(v37, v51, v2);
  *(v26 + 24) = v1;
  swift_endAccess();
  (*(v3 + 8))(v52, v2);
  v32 = v53;
LABEL_14:
  outlined destroy of ObservationTracking._AccessList?(v32, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  v38 = *(v26 + 24);
  v39 = *(v38 + 16);
  if (v39)
  {
    v42 = *(v31 + 16);
    v40 = v31 + 16;
    v41 = v42;
    v43 = v38 + ((*(v40 + 64) + 32) & ~*(v40 + 64));
    v44 = *(v40 + 56);
    v45 = (v40 - 8);
    v53 = *(v26 + 24);

    do
    {
      v41(v5, v43, v2);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v18, v5);
      (*v45)(v5, v2);
      v43 += v44;
      --v39;
    }

    while (v39);
  }

  *(v26 + 24) = v50;

  return result;
}

double sub_18D39E914(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[4];
  v9 = *a1;
  v3 = *(a1 + 5);
  v10 = *(a1 + 1);
  v11 = v3;
  v4 = type metadata accessor for _InsetPreferenceModifier(255, &v9);
  v6 = type metadata accessor for ModifiedContent(255, v1, v4, v5);
  v8[0] = v2;
  v8[1] = &protocol witness table for _InsetPreferenceModifier<Pack{repeat A}, B>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v8);
}

uint64_t sub_18D39E998()
{

  outlined consume of Environment<String?>.Content(*(v0 + 56), *(v0 + 64), *(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_18D39EA28()
{

  return swift_deallocObject();
}

uint64_t sub_18D39EA70()
{

  return swift_deallocObject();
}

uint64_t sub_18D39EAB8()
{
  outlined consume of GlassContainer.Entry.ModelID(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  outlined consume of _Glass.Variant.Role(*(v0 + 56), *(v0 + 64));

  outlined consume of _Glass.Variant.Role(*(v0 + 160), *(v0 + 168));

  if (*(v0 + 264) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(v0 + 240), *(v0 + 248));
  }

  if (*(v0 + 312) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(v0 + 288), *(v0 + 296));
  }

  outlined consume of _Glass.Variant.Role(*(v0 + 360), *(v0 + 368));

  if (*(v0 + 464) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(v0 + 440), *(v0 + 448));
  }

  if (*(v0 + 512) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(v0 + 488), *(v0 + 496));
  }

  return swift_deallocObject();
}

uint64_t sub_18D39EBE0()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18D39EC28()
{

  return swift_deallocObject();
}

uint64_t sub_18D39EC70()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18D39ECC0()
{

  return swift_deallocObject();
}

uint64_t sub_18D39ECF8()
{

  return swift_deallocObject();
}

uint64_t sub_18D39ED30()
{
  outlined consume of GlassContainer.Entry.ModelID(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  outlined consume of _Glass.Variant.Role(*(v0 + 56), *(v0 + 64));

  outlined consume of _Glass.Variant.Role(*(v0 + 160), *(v0 + 168));

  if (*(v0 + 264) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(v0 + 240), *(v0 + 248));
  }

  if (*(v0 + 312) != 1)
  {
    outlined consume of _Glass.Variant.Role(*(v0 + 288), *(v0 + 296));
  }

  return swift_deallocObject();
}

void sub_18D39EFFC(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static EnableScrollPrefetchFeature.cachedValue = v1;
}

uint64_t sub_18D39F054()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D39F08C()
{
  swift_weakDestroy();
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D39F0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D39F158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18D39F1C8(uint64_t a1, uint64_t a2)
{
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D39F264(uint64_t a1, uint64_t a2)
{
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18D39F304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for DateComponents();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_18D39F424(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for DateComponents();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_18D39F550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_18D39F61C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DateInterval();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_18D39F6D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = type metadata accessor for DateComponents();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + *(a3 + 24);

  return v15(v16, a2, v14);
}

uint64_t sub_18D39F848(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v16 = type metadata accessor for DateComponents();
  v17 = *(*(v16 - 8) + 56);
  v18 = a1 + *(a4 + 24);

  return v17(v18, a2, a2, v16);
}

uint64_t sub_18D39F9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DateInterval();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v15 = v14;
  v16 = *(*(v14 - 8) + 48);
  v17 = a1 + *(a3 + 24);

  return v16(v17, a2, v15);
}

uint64_t sub_18D39FB34(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for DateInterval();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  _s10Foundation4DateVSgMaTm_0(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v17 = v16;
  v18 = *(*(v16 - 8) + 56);
  v19 = a1 + *(a4 + 24);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_18D39FCC4@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1[5];
  v13 = a1[4];
  v2 = v13;
  v14[0] = v3;
  *(v14 + 12) = *(a1 + 92);
  v4 = *(v14 + 12);
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v6 = a1[3];
  v11 = a1[2];
  v7 = v11;
  v12 = v6;
  *a2 = v10[0];
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v6;
  a2[4] = v2;
  a2[5] = v3;
  *(a2 + 92) = v4;
  return outlined init with copy of GraphicsImage(v10, &v9);
}

void sub_18D39FD1C(_OWORD *a1)
{
  v2 = a1[5];
  v6[4] = a1[4];
  v7[0] = v2;
  *(v7 + 12) = *(a1 + 92);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  outlined init with copy of GraphicsImage(v6, &v5);
  Image.Resolved.image.setter(a1);
}

double sub_18D39FD84@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + 144);
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_18D39FD90(void *a1, uint64_t a2)
{
  v3 = *a1;
  swift_unknownObjectRetain();
  result = swift_unknownObjectRelease();
  *(a2 + 144) = v3;
  return result;
}

uint64_t sub_18D39FF04@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18D39FF48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18D39FFAC()
{

  return swift_deallocObject();
}

uint64_t sub_18D39FFF0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0G0VAAE033UseDefaultGlassContainerAnimationF033_C0CCB6EB7DEF7555840E44B500337668LLVG_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

__n128 sub_18D3A0090@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_18D3A009C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3A00A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _OffsetEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _OffsetEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A010C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _OffsetEffect, a4);
  v11[0] = v5;
  v11[1] = &protocol witness table for _OffsetEffect;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v11);
  v10[0] = v4;
  v10[1] = v6;
  v10[2] = v5;
  v10[3] = v7;
  v8 = type metadata accessor for AppearanceAnimationView(255, v10);
  return swift_getWitnessTable(protocol conformance descriptor for AppearanceAnimationView<A, B>, v8);
}

double sub_18D3A01B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for TransitionBox<OffsetTransition>(255, &lazy cache variable for type metadata for GeometryVisualEffect<_OffsetEffect>, lazy protocol witness table accessor for type _OffsetEffect and conformance _OffsetEffect, &type metadata for _OffsetEffect, type metadata accessor for GeometryVisualEffect);
  v4 = v3;
  lazy protocol witness table accessor for type GeometryVisualEffect<_OffsetEffect> and conformance GeometryVisualEffect<A>();
  v8[0] = v1;
  v8[1] = v4;
  v8[2] = v2;
  v8[3] = v5;
  v6 = type metadata accessor for CombinedVisualEffect(255, v8);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v6);
}

uint64_t sub_18D3A0260()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3A02CC@<D0>(uint64_t a1@<X8>)
{
  _ColorMonochromeEffect._Resolved.animatableData.getter(&v3);
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t _s7SwiftUI22_ColorMonochromeEffectVwcp_0(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);

  return a1;
}

double sub_18D3A037C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _ColorMonochromeEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _ColorMonochromeEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3A03E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RangeSet.Ranges();
  v6 = *(*(v5 - 8) + 48);

  return v6(a1, a2, v5);
}

uint64_t sub_18D3A045C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for RangeSet.Ranges();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

uint64_t sub_18D3A04D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = AssociatedTypeWitness;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for RangeSet.Ranges();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 48);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_18D3A05F8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = AssociatedTypeWitness;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 44);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    v14 = type metadata accessor for RangeSet.Ranges();
    v15 = *(*(v14 - 8) + 56);
    v16 = a1 + *(a4 + 48);

    return v15(v16, a2, a2, v14);
  }
}

void sub_18D3A077C(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static ScrollEdgeEffectTag.Feature.cachedValue = v1;
}

uint64_t *_s7SwiftUI19ScrollEdgeEffectTagV2IDVwcp_0(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

double sub_18D3A07F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for ScrollEdgeEffectTagReceiverModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for ScrollEdgeEffectTagReceiverModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3A086C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3A08A4()
{

  return swift_deallocObject();
}

uint64_t sub_18D3A08DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18D3A0924@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE017HasWidgetMetadataF033_FD72118870A434CF0E2B5B97BD09B3FELLV_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

void **_s7SwiftUI23CodableAttributedStringVwcp_0(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = v3;
  return a1;
}

void *_s7SwiftUI16ArrayWith2InlineVyxGSkAASk5index_8offsetBy5IndexQzAH_SitFTW_0@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t _s7SwiftUI16ArrayWith2InlineVyxGSlAASl5index_8offsetBy07limitedH05IndexQzSgAI_SiAItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable(protocol conformance descriptor for ArrayWith2Inline<A>, a4);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s7SwiftUI16ArrayWith2InlineVyxGSkAASk8distance4from2toSi5IndexQz_AItFTW_0(void *a1, void *a2)
{
  v2 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void sub_18D3A0B48(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t x3_0@<X3>, char *a4@<X8>)
{
  v6 = *a2;
  v7 = type metadata accessor for ArrayWith2Inline(0, *(a2 + a3 - 8), a3, x3_0);
  ArrayWith2Inline.subscript.getter(v6, v7, a4);
}

double sub_18D3A0BBC@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3A0BC8(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3A0BD4@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(a1 + 8);
  *a2 = result;
  return result;
}

double sub_18D3A0BE0(double *a1, uint64_t a2)
{
  result = *a1;
  *(a2 + 8) = *a1;
  return result;
}

uint64_t sub_18D3A0BF0(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 16);
  if (*(result + 8))
  {
    v2 = NAN;
  }

  if (*(result + 24))
  {
    v3 = NAN;
  }

  *(a2 + 16) = v2;
  *(a2 + 24) = v3;
  return result;
}

double sub_18D3A0C20@<D0>(double *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v3 = a1 + 1;
  if (!*a2)
  {
    v3 = a1;
  }

  result = *v3;
  *a3 = *v3;
  return result;
}

void *sub_18D3A0C3C(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = 8;
  if (!*a3)
  {
    v3 = 0;
  }

  *(a2 + v3) = *result;
  return result;
}

__n128 sub_18D3A0C68@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_18D3A0C74(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  a2[1] = result;
  return result;
}

__n128 sub_18D3A0C80@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 32);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3A0C90(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[2] = v3;
  a2[3] = v3;
  return result;
}

__n128 sub_18D3A0CA0@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

__n128 sub_18D3A0CAC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

double sub_18D3A0CB8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _FixedSizeLayout, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _FixedSizeLayout;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A0D20@<D0>(uint64_t *a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v12 = *a1;
  v8 = v4;
  _DisplayList_StableIdentityMap.subscript.getter(&v8, &v9);
  v5 = v10;
  v6 = v11;
  result = *&v9;
  *a3 = v9;
  *(a3 + 16) = v5;
  *(a3 + 24) = v6;
  return result;
}

__n128 sub_18D3A0DD8(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(a2 + 32) = *(a1 + 32);
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_18D3A0DEC()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI24ForEachSectionCollectionVyxGSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for ForEachSectionCollection<A>, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, v6, v8, v7);
}

uint64_t _s7SwiftUI24ForEachSectionCollectionVyxGSlAASl5index_8offsetBy07limitedI05IndexQzSgAI_SiAItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable(protocol conformance descriptor for ForEachSectionCollection<A>, a4);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s7SwiftUI24ForEachSectionCollectionVyxGSlAASl8distance4from2toSi5IndexQz_AItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for ForEachSectionCollection<A>, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, v6, v8, v7);
}

uint64_t sub_18D3A0FDC()
{

  return swift_deallocObject();
}

uint64_t sub_18D3A1018@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = specialized EnvironmentValues.subscript.getter(*(a1 + a2 - 8), a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_18D3A107C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  result = specialized EnvironmentValues.subscript.getter(*(a1 + a2 - 8), a1, a2, a3);
  *a4 = result;
  return result;
}

uint64_t sub_18D3A1164()
{
  if (*(v0 + 40))
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

    if (*(v0 + 136))
    {
      if (*(v0 + 96))
      {
        outlined consume of Text.Storage(*(v0 + 72), *(v0 + 80), *(v0 + 88));
      }

      if (*(v0 + 128))
      {
        outlined consume of Text.Storage(*(v0 + 104), *(v0 + 112), *(v0 + 120));
      }
    }

    if (*(v0 + 264))
    {
      if (*(v0 + 224))
      {
        outlined consume of Text.Storage(*(v0 + 200), *(v0 + 208), *(v0 + 216));
      }

      if (*(v0 + 256))
      {
        outlined consume of Text.Storage(*(v0 + 232), *(v0 + 240), *(v0 + 248));
      }
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18D3A1270()
{
  if (*(v0 + 40))
  {
    outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  }

  return swift_deallocObject();
}

double sub_18D3A12BC@<D0>(uint64_t a1@<X8>)
{
  _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015ActivationPointG0V_Tt0g5(v5);
  v2 = v6;
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t sub_18D3A1304@<X0>(uint64_t *a1@<X8>)
{
  result = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015ChartDescriptorG0V_Tt0g5Tm(&type metadata for AccessibilityProperties.ChartDescriptorKey, type metadata accessor for AccessibilityChartDescriptorStorage?);
  *a1 = result;
  return result;
}

uint64_t sub_18D3A1394@<X0>(uint64_t *a1@<X8>)
{
  result = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC017CustomContentListG0V_Tt0g5();
  *a1 = result;
  return result;
}

uint64_t sub_18D3A147C@<X0>(uint64_t a1@<X8>)
{
  result = AccessibilityProperties.explicitAutomationType.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_18D3A14B4@<X0>(uint64_t *a1@<X8>)
{
  result = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC05HintsG0V_Tt0g5();
  *a1 = result;
  return result;
}

uint64_t sub_18D3A150C@<X0>(uint64_t *a1@<X8>)
{
  result = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015ChartDescriptorG0V_Tt0g5Tm(&type metadata for AccessibilityProperties.InputLabelsKey, type metadata accessor for [Text]?);
  *a1 = result;
  return result;
}

uint64_t sub_18D3A15D8@<X0>(uint64_t *a1@<X8>)
{
  result = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC015RoleDescriptionG0V_Tt0g5();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_18D3A160C@<X0>(uint64_t a1@<X8>)
{
  result = AccessibilityProperties.sortPriority.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_18D3A1684@<X0>(_BYTE *a1@<X8>)
{
  result = AccessibilityProperties.textHeadingLevel.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3A1730@<X0>(uint64_t *a1@<X8>)
{
  result = _s7SwiftUI23AccessibilityPropertiesVy13PropertyValueQzxmcAA0cD3KeyRzluigAC06ImagesG0V_Tt0g5();
  *a1 = result;
  return result;
}

uint64_t sub_18D3A1788@<X0>(char *a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  result = AccessibilityProperties.subscript.getter(&v4);
  *a2 = result;
  return result;
}

double sub_18D3A17C8(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a1;
  v5 = *a3;
  return AccessibilityProperties.subscript.setter(v3, &v5);
}

void sub_18D3A189C(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static DisableRemoteEffects.cachedValue = v1;
}

void sub_18D3A1930(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static DisableRemoteEffects.defaultFeatureValue = v1;
}

uint64_t *_s7SwiftUI25_CustomHoverEffectOutputsVwcp_0(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

float64_t sub_18D3A1A10@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  result = a1[1].f64[0] * 128.0;
  *a2 = vmulq_f64(*a1, vdupq_n_s64(0x4060000000000000uLL));
  a2[1].f64[0] = result;
  return result;
}

float64_t sub_18D3A1A38(float64x2_t *a1, float64x2_t *a2)
{
  result = a1[1].f64[0] * 0.0078125;
  *a2 = vmulq_f64(*a1, vdupq_n_s64(0x3F80000000000000uLL));
  a2[1].f64[0] = result;
  return result;
}

double sub_18D3A1A60(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _RotationEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _RotationEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A1AC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for GeometryVisualEffect<_RotationEffect>(255);
  v4 = v3;
  lazy protocol witness table accessor for type AnimatablePair<Double, AnimatablePair<CGFloat, CGFloat>> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type GeometryVisualEffect<_RotationEffect> and conformance GeometryVisualEffect<A>, type metadata accessor for GeometryVisualEffect<_RotationEffect>, protocol conformance descriptor for GeometryVisualEffect<A>);
  v8[0] = v1;
  v8[1] = v4;
  v8[2] = v2;
  v8[3] = v5;
  v6 = type metadata accessor for CombinedVisualEffect(255, v8);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v6);
}

uint64_t _s7SwiftUI14EitherGradientOwcp_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of EitherGradient(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_18D3A1C14()
{

  return swift_deallocObject();
}

uint64_t sub_18D3A1CA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA11_ViewInputsVAAE031PlatformAccessibilityPreferenceF033_44953956318F41C5365C38B8AC5FF331LLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_18D3A1CEC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for DisableAccessibilityNodesModifier, a4);
  type metadata accessor for _EnvironmentKeyWritingModifier<Bool>(255, v6, v7, v8);
  v11 = type metadata accessor for ModifiedContent(255, v5, v9, v10);
  v16[0] = v4;
  v16[1] = &protocol witness table for DisableAccessibilityNodesModifier;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v16);
  v15[0] = v13;
  v15[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v11, v15, WitnessTable);
}

uint64_t sub_18D3A1D98@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18D3A1DE8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18D3A1E40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 40);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18D3A1E90(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_18D3A1EE8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 56);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_18D3A1F38(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
  return swift_unknownObjectWeakAssign();
}

void sub_18D3A1F90(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 88);
  swift_beginAccess();
  *a2 = *(v3 + 360);
}

void sub_18D3A1FDC(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 88);
  swift_beginAccess();
  *(v3 + 360) = v2;
}

void *sub_18D3A2024@<X0>(_BYTE *a1@<X8>)
{
  result = _GraphInputs.viewGraphHostIdiom.getter(&v3);
  *a1 = v3;
  return result;
}

uint64_t sub_18D3A2098@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028UpdateCycleUseSetNeedsLayoutF033_49A76CA1B5E4F66260081F1C9EDD4305LLV_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18D3A20E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  outlined init with copy of ViewGraphHost.LayoutInvalidator(a1, v5);
  Strong = swift_weakLoadStrong();
  result = outlined destroy of weak AnyGestureResponder?(v5);
  *a2 = Strong;
  return result;
}

void sub_18D3A2140(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

void sub_18D3A2198(int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC7SwiftUI31ViewGraphHostEnvironmentWrapper_phase;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_18D3A21F0()
{
  outlined consume of Animation.Function(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

void _s7SwiftUI29AccessibilityCustomAttributesVSlAASl34_customLastIndexOfEquatableElementy0H0QzSgSg0K0QzFTW_0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t sub_18D3A22A8()
{

  return swift_deallocObject();
}

uint64_t sub_18D3A2368(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_18D3A2448(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    type metadata accessor for DispatchTime?(0, &lazy cache variable for type metadata for DispatchTime?, MEMORY[0x1E69E7FF8], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_18D3A251C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for DispatchTime();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_18D3A2594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for DispatchTime();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_18D3A2614@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.foregroundColor.getter();
  *a1 = result;
  return result;
}

double sub_18D3A2650(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(255);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t _s7SwiftUI9BitVectorVSlAASl5index_8offsetBy07limitedG05IndexQzSgAH_SiAHtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t _s7SwiftUI9BitVectorVSlAASl5countSivgTW_0()
{
  result = *(v0 + 24);
  if (result < 0)
  {
    __break(1u);
  }

  return result;
}

BOOL sub_18D3A2714@<W0>(_BOOL8 *a1@<X1>, _BYTE *a2@<X8>)
{
  result = BitVector64.subscript.getter(*a1);
  *a2 = result;
  return result;
}

BOOL sub_18D3A2794@<W0>(_BOOL8 *a1@<X1>, _BYTE *a2@<X8>)
{
  result = BitVector.subscript.getter(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18D3A2860@<X0>(uint64_t *a3@<X8>)
{
  result = EnvironmentValues._defaultAccentColor.getter();
  *a3 = result;
  return result;
}

void sub_18D3A28A0(__int128 *a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = *a1;
  EnvironmentValues._systemAccentValue.getter(&v6, a3, a4, a5);
  *a2 = v6;
}

double sub_18D3A28E8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _EnvironmentKeyWritingModifier<Color?>(255);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

unint64_t *_s7SwiftUI25ConditionalTypeDescriptorV7Storage33_2319071E64CA2FA820BFB26F46C6ECC6LLOwcp_0(unint64_t *a1, unint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of Material.Layer.SDFLayer.GroupLayer.Blend(*a2);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_18D3A2A0C()
{
  MEMORY[0x193AC4950](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18D3A2A44()
{

  return swift_deallocObject();
}

uint64_t sub_18D3A2A7C()
{

  return swift_deallocObject();
}

__n128 sub_18D3A2AC8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3A2B28@<D0>(_OWORD *a1@<X8>)
{
  CAHostingLayer.environment.getter(&v3);
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_18D3A2B74@<D0>(double *a1@<X8>)
{
  CAHostingLayer.currentTimestamp.getter(&v3);
  result = v3;
  *a1 = v3;
  return result;
}

uint64_t sub_18D3A2BF4@<X0>(_WORD *a1@<X8>)
{
  result = CAHostingLayer.valuesNeedingUpdate.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3A2CD4@<X0>(uint64_t *a1@<X8>)
{
  result = CAHostingLayer.externalUpdateCount.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3A2D34()
{

  return swift_deallocObject();
}

__n128 sub_18D3A2E18(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t *_s7SwiftUI14EffectAnimator33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLVwcp_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 >= 2)
  {
    v4 = a1;

    a1 = v4;
  }

  *a1 = v3;
  return a1;
}

uint64_t *_s7SwiftUI14EffectAnimator33_25E61DBD3DDB4AD4C9A82B4C3137A7B6LLV5StateOwcp_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*a2 >= 0xFFFFFFFF)
  {
    v4 = a1;

    a1 = v4;
  }

  *a1 = v3;
  return a1;
}

double sub_18D3A2F4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for ContentCaptureProtectionViewModifier, a4);
  lazy protocol witness table accessor for type ContentCaptureProtectionViewModifier and conformance ContentCaptureProtectionViewModifier();
  v8[0] = v4;
  v8[1] = v6;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v8);
}

double sub_18D3A2FB4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  lazy protocol witness table accessor for type _ShaderFilterEffect and conformance _ShaderFilterEffect();
  v6[0] = v1;
  v6[1] = &type metadata for _ShaderFilterEffect;
  v6[2] = v2;
  v6[3] = v3;
  v4 = type metadata accessor for CombinedVisualEffect(255, v6);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v4);
}

uint64_t sub_18D3A3038(uint64_t a1, uint64_t a2)
{
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3A30C0(uint64_t a1, uint64_t a2)
{
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18D3A315C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18D3A3254()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

__n128 sub_18D3A32A0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3A32B0()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(type metadata accessor for UncheckedSendable(0, AssociatedTypeWitness, v2, v3) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = swift_getAssociatedTypeWitness();
  v10 = *(*(type metadata accessor for UncheckedSendable(0, v7, v8, v9) - 8) + 80);
  v11 = (v5 + v6 + v10) & ~v10;
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v5, AssociatedTypeWitness);
  (*(*(v7 - 8) + 8))(v0 + v11, v7);

  return swift_deallocObject();
}

void sub_18D3A34A8(uint64_t *a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 3);
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = v1;
  v6 = v2;
  v7 = v3;

  ResolvedGradient.animatableData.setter(&v4);
}

void sub_18D3A3514(float *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = Color.Resolved.animatableData.getter(*a1, a1[1], a1[2], a1[3]);
  *(a2 + 4) = v3;
  *(a2 + 8) = v4;
  *(a2 + 12) = v5;
}

float32x2_t sub_18D3A3574@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2.i64[0] = 0x4300000043000000;
  v2.i64[1] = 0x4300000043000000;
  *a2 = vmulq_f32(*a1, v2);
  result = vmul_f32(*(a1 + 16), 0x4300000043000000);
  *(a2 + 16) = result;
  return result;
}

float32x2_t sub_18D3A3598(uint64_t a1, uint64_t a2)
{
  v2.i64[0] = 0x3C0000003C000000;
  v2.i64[1] = 0x3C0000003C000000;
  *a2 = vmulq_f32(*a1, v2);
  result = vmul_f32(*(a1 + 16), 0x3C0000003C000000);
  *(a2 + 16) = result;
  return result;
}

void sub_18D3A35BC(float *a1@<X0>, float *a2@<X8>)
{
  v2 = *a1;
  v3 = -*a1;
  if (*a1 > 0.0)
  {
    v3 = *a1;
  }

  if (v3 <= 0.0031308)
  {
    v4 = v3 * 12.92;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v6 = powf(v3, 0.41667);
      a2 = v5;
      v4 = (v6 * 1.055) + -0.055;
    }
  }

  v7 = -v4;
  if (v2 > 0.0)
  {
    v7 = v4;
  }

  *a2 = v7;
}

void sub_18D3A366C(float *a1, float *a2)
{
  v2 = *a1;
  if (*a1 <= 0.0)
  {
    v3 = -*a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v3 <= 0.04045)
  {
    v4 = v3 * 0.077399;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v4 = powf((v3 * 0.94787) + 0.052133, 2.4);
      a2 = v5;
    }
  }

  if (v2 <= 0.0)
  {
    v4 = -v4;
  }

  *a2 = v4;
}

void sub_18D3A371C(uint64_t a1@<X0>, float *a2@<X8>)
{
  v2 = *(a1 + 4);
  v3 = -v2;
  if (v2 > 0.0)
  {
    v3 = *(a1 + 4);
  }

  if (v3 <= 0.0031308)
  {
    v4 = v3 * 12.92;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v6 = powf(v3, 0.41667);
      a2 = v5;
      v4 = (v6 * 1.055) + -0.055;
    }
  }

  v7 = -v4;
  if (v2 > 0.0)
  {
    v7 = v4;
  }

  *a2 = v7;
}

void sub_18D3A37CC(float *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 <= 0.0)
  {
    v3 = -*a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v3 <= 0.04045)
  {
    v4 = v3 * 0.077399;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v4 = powf((v3 * 0.94787) + 0.052133, 2.4);
      a2 = v5;
    }
  }

  if (v2 <= 0.0)
  {
    v4 = -v4;
  }

  *(a2 + 4) = v4;
}

void sub_18D3A387C(uint64_t a1@<X0>, float *a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = -v2;
  if (v2 > 0.0)
  {
    v3 = *(a1 + 8);
  }

  if (v3 <= 0.0031308)
  {
    v4 = v3 * 12.92;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v6 = powf(v3, 0.41667);
      a2 = v5;
      v4 = (v6 * 1.055) + -0.055;
    }
  }

  v7 = -v4;
  if (v2 > 0.0)
  {
    v7 = v4;
  }

  *a2 = v7;
}

void sub_18D3A392C(float *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 <= 0.0)
  {
    v3 = -*a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v3 <= 0.04045)
  {
    v4 = v3 * 0.077399;
  }

  else
  {
    v4 = 1.0;
    if (v3 != 1.0)
    {
      v5 = a2;
      v4 = powf((v3 * 0.94787) + 0.052133, 2.4);
      a2 = v5;
    }
  }

  if (v2 <= 0.0)
  {
    v4 = -v4;
  }

  *(a2 + 8) = v4;
}

void _s7SwiftUI20SizeFittingTextCacheC8VariantsVyxq__GSlAASl34_customLastIndexOfEquatableElementy0J0QzSgSg0M0QzFTW_0(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 10) = 1;
}

uint64_t sub_18D3A39FC()
{

  return swift_deallocObject();
}

double sub_18D3A3A58(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 40);
  v10 = *(a1 + 8);
  v3 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
  v11 = vextq_s8(*(a1 + 24), *(a1 + 24), 8uLL);
  v12 = v3;
  v4 = type metadata accessor for KeyframeAnimator(255, &v10);
  v10 = v1;
  v11.i64[0] = v4;
  v11.i64[1] = v2;
  v12.i64[0] = &protocol witness table for KeyframeAnimator<A, B, C>;
  v5 = type metadata accessor for CustomModifier(255, &v10);
  v7 = type metadata accessor for ModifiedContent(255, v1, v5, v6);
  v9[0] = v2;
  v9[1] = &protocol witness table for CustomModifier<A, B>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v9);
}

double sub_18D3A3B00(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 32);
  v10 = *(a1 + 8);
  v3 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  v11 = vextq_s8(*(a1 + 16), *(a1 + 16), 8uLL);
  v12 = v3;
  v4 = type metadata accessor for KeyframeAnimator(255, &v10);
  v10 = v1;
  v11.i64[0] = v4;
  v11.i64[1] = v2;
  v12.i64[0] = &protocol witness table for KeyframeAnimator<A, B, C>;
  v5 = type metadata accessor for CustomModifier(255, &v10);
  v7 = type metadata accessor for ModifiedContent(255, v1, v5, v6);
  v9[0] = v2;
  v9[1] = &protocol witness table for CustomModifier<A, B>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v9);
}

uint64_t *_s7SwiftUI12PlaybackMode33_77CE417A3757644BC344FB675310EAADLLOwcp_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  outlined copy of _SymbolEffect.Trigger(*a2);
  *a1 = v3;
  return a1;
}

uint64_t sub_18D3A3BE8()
{

  return swift_deallocObject();
}

uint64_t *_s7SwiftUI18KeyframeTrackState33_77CE417A3757644BC344FB675310EAADLLO011EventDrivenE0V5PhaseOwcp_0(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_18D3A3C8C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  result = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA06IsLeafdJ0V_Tt0B5(1, *a1);
  *a2 = (result & 1) == 0;
  return result;
}

uint64_t sub_18D3A3CF4()
{
  if (*(v0 + 16) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_18D3A3D34()
{
  if (v0[16])
  {

    outlined consume of _Glass.Variant.Role(v0[6], v0[7]);

    if (v0[30] != 1)
    {
    }

    if (v0[33] != 1)
    {
    }
  }

  return swift_deallocObject();
}

uint64_t sub_18D3A3DCC()
{

  return swift_deallocObject();
}

double sub_18D3A3E20(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for GestureLabelModifier(255, AssociatedTypeWitness, v4, v5);
  swift_getWitnessTable(protocol conformance descriptor for GestureLabelModifier<A>, v6);
  v10[0] = v6;
  v10[1] = v1;
  v10[2] = v7;
  v10[3] = v2;
  v8 = type metadata accessor for ModifierGesture(255, v10);
  return swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v8);
}

double sub_18D3A3ECC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _PaddingLayout, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _PaddingLayout;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double protocol witness for static Rule.initialValue.getter in conformance _GlassContainerStorageView.Init@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *(a1 + 41) = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

double sub_18D3A4050(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for GlassEffectModifier, a4);
  v7 = type metadata accessor for StaticIf(255, &type metadata for GlassEnabledPredicate, v6, v4);
  v12[0] = v5;
  v12[1] = &protocol witness table for GlassEffectModifier;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v12);
  v11[0] = &protocol witness table for GlassEnabledPredicate;
  v11[1] = v9;
  v11[2] = v5;
  return swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, v7, v11, WitnessTable);
}

double sub_18D3A4114(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for GlassEffectHiddenModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for GlassEffectHiddenModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A4228(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for StyleContextWriter(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for StyleContextWriter<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

double sub_18D3A4298(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[5];
  v8 = type metadata accessor for StyleContextWriter(255, a1[1], a1[4], a4);
  v9 = type metadata accessor for StaticIf(255, v5, v8, &type metadata for EmptyModifier);
  v11 = type metadata accessor for ModifiedContent(255, v4, v9, v10);
  v16[0] = v7;
  v16[1] = &protocol witness table for StyleContextWriter<A>;
  v16[2] = &protocol witness table for EmptyModifier;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, v9, v16);
  v15[0] = v6;
  v15[1] = v13;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v11, v15, WitnessTable);
}

double sub_18D3A4364(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[3];
  v7 = a1[4];
  v8 = type metadata accessor for StyleContextAcceptsPredicate(255, a1[2], a3, a4);
  v10 = type metadata accessor for StyleContextWriter(255, v5, v7, v9);
  v11 = type metadata accessor for StaticIf(255, v8, v10, &type metadata for EmptyModifier);
  v13 = type metadata accessor for ModifiedContent(255, v4, v11, v12);
  v18[0] = &protocol witness table for StyleContextAcceptsPredicate<A>;
  v18[1] = &protocol witness table for StyleContextWriter<A>;
  v18[2] = &protocol witness table for EmptyModifier;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, v11, v18);
  v17[0] = v6;
  v17[1] = v15;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v13, v17, WitnessTable);
}

double sub_18D3A4454(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for DefaultStyleContextWriter, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for DefaultStyleContextWriter;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A44B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a1[3];
  v13[0] = type metadata accessor for StyleContextAcceptsPredicate(255, a1[1], a3, a4);
  v13[1] = type metadata accessor for StyleContextAcceptsPredicate(255, v5, v7, v8);
  v13[2] = &protocol witness table for StyleContextAcceptsPredicate<A>;
  v13[3] = &protocol witness table for StyleContextAcceptsPredicate<A>;
  v9 = type metadata accessor for OrOperationViewInputPredicate(255, v13);
  v10 = type metadata accessor for StaticIf(255, v9, v4, &type metadata for EmptyModifier);
  v12[0] = &protocol witness table for OrOperationViewInputPredicate<A, B>;
  v12[1] = v6;
  v12[2] = &protocol witness table for EmptyModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, v10, v12);
}

uint64_t sub_18D3A4574@<X0>(uint64_t *a3@<X8>)
{
  result = _ShapeSet.shapes.getter();
  *a3 = result;
  return result;
}

double sub_18D3A4600(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for RendererVisualEffect<_BlendModeEffect>(255);
  v4 = v3;
  lazy protocol witness table accessor for type RendererVisualEffect<_BlendModeEffect> and conformance RendererVisualEffect<A>();
  v8[0] = v1;
  v8[1] = v4;
  v8[2] = v2;
  v8[3] = v5;
  v6 = type metadata accessor for CombinedVisualEffect(255, v8);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v6);
}

uint64_t _s7SwiftUI23GraphicsBlendModeEffectVwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of GraphicsBlendMode(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_18D3A46E0@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v2 = *result;
  v3 = *(result + 16);
  if (*(result + 8))
  {
    v2 = 10.0;
  }

  if (*(result + 24))
  {
    v3 = 10.0;
  }

  *a2 = v2;
  a2[1] = v3;
  return result;
}

void *sub_18D3A470C(void *result, uint64_t a2)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = v2;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_18D3A4724()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

uint64_t _s7SwiftUI31_PremultipliedColorMatrixEffectVwet_0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7SwiftUI31_PremultipliedColorMatrixEffectVwst_0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 80) = v3;
  return result;
}

double sub_18D3A47F0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _ColorMatrixEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _ColorMatrixEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t _s7SwiftUI36UnsafeMutableBufferProjectionPointerVyxq_GSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferProjectionPointer<A, B>, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, v6, v8, v7);
}

uint64_t _s7SwiftUI36UnsafeMutableBufferProjectionPointerVyxq_GSlAASl5index_8offsetBy07limitedJ05IndexQzSgAI_SiAItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferProjectionPointer<A, B>, a4);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s7SwiftUI36UnsafeMutableBufferProjectionPointerVyxq_GSlAASl8distance4from2toSi5IndexQz_AItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for UnsafeMutableBufferProjectionPointer<A, B>, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, v6, v8, v7);
}

uint64_t _s7SwiftUI15CollectionOfTwoVyxGSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for CollectionOfTwo<A>, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, v6, v8, v7);
}

uint64_t _s7SwiftUI15CollectionOfTwoVyxGSlAASl5index_8offsetBy07limitedH05IndexQzSgAI_SiAItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable(protocol conformance descriptor for CollectionOfTwo<A>, a4);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s7SwiftUI15CollectionOfTwoVyxGSlAASl8distance4from2toSi5IndexQz_AItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for CollectionOfTwo<A>, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, v6, v8, v7);
}

uint64_t sub_18D3A4B84()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

__n128 sub_18D3A4C8C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3A4D00@<X0>(uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t x3_0@<X3>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = type metadata accessor for CollectionOfTwo(0, *(a2 + a3 - 8), a3, x3_0);
  return CollectionOfTwo.subscript.getter(v6, v7, a4);
}

uint64_t *_s7SwiftUI23EquatableOptionalObjectVwcp_0(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_18D3A4D94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (*(*(TupleTypeMetadata - 8) + 48))(a1, v3);
}

uint64_t sub_18D3A4ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v6;
  }

  return (*(*(TupleTypeMetadata - 8) + 56))(a1, a2, a2);
}

uint64_t sub_18D3A5018@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA05DepthdJ0V_Tt0B5(0, *a1);
  *a2 = result;
  return result;
}

uint64_t sub_18D3A5070@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA011IsSectioneddJ0V_Tt0B5(0, *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18D3A50CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA07IsEmptycdJ0V_Tt0B5(0, *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18D3A5128@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA015IsSectionHeaderdJ0V_Tt0B5(0, *a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_18D3A5184@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA015IsSectionFooterdJ0V_Tt0B5(0, *a1);
  *a2 = result & 1;
  return result;
}

double sub_18D3A51E0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _UnaryViewAdaptor<EmptyView>(255, &lazy cache variable for type metadata for _TraitWritingModifier<IsSectionedTraitKey>, &type metadata for IsSectionedTraitKey, &protocol witness table for IsSectionedTraitKey, type metadata accessor for _TraitWritingModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _TraitWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3A5278()
{

  return swift_deallocObject();
}

uint64_t sub_18D3A52C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderF033_7799685610985DBA9248562F2E4D5E6ELLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3A5304@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE037PrivacyReductionAccessibilityProviderF033_7799685610985DBA9248562F2E4D5E6ELLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_18D3A5350(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for PrivacyRedactionViewModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for PrivacyRedactionViewModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A53B4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for PrivacyRedactionViewModifier.Transform(255, *a1, v5, a4);
  swift_getWitnessTable(")W(btu\a", v6);
  v9 = type metadata accessor for _ViewModifier_Content(255, v6, v7, v8);
  type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<RedactionReasons>, &type metadata for RedactionReasons, type metadata accessor for _EnvironmentKeyWritingModifier);
  v12 = type metadata accessor for ModifiedContent(255, v9, v10, v11);
  v14 = type metadata accessor for PrivacyRedactionViewModifier.Transform.PrivacyEffect(255, v4, v5, v13);
  v16 = type metadata accessor for ModifiedContent(255, v12, v14, v15);
  v48 = type metadata accessor for ModifiedContent(255, v16, &type metadata for _OpacityEffect, v17);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = type metadata accessor for ModifiedContent(255, v48, AssociatedTypeWitness, v18);
  type metadata accessor for _EnvironmentKeyWritingModifier<RedactionReasons>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Bool>, MEMORY[0x1E69E6370], type metadata accessor for _EnvironmentKeyWritingModifier);
  v21 = type metadata accessor for ModifiedContent(255, v12, v19, v20);
  type metadata accessor for _TraitWritingModifier<TransitionTraitKey>(255, v22, v23, v24);
  v27 = type metadata accessor for ModifiedContent(255, v21, v25, v26);
  v28 = type metadata accessor for Optional();
  v57[0] = &protocol witness table for _ViewModifier_Content<A>;
  v57[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v12, v57);
  v31 = v30;
  v56[0] = v30;
  v56[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  v32 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v21, v56, WitnessTable);
  v55[0] = v33;
  v55[1] = &protocol witness table for _TraitWritingModifier<A>;
  v34 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v27, v55, v32);
  v54 = v35;
  swift_getWitnessTable(protocol conformance descriptor for <A> A?, v28, &v54, v34);
  v38 = type metadata accessor for _OverlayModifier(255, v28, v36, v37);
  v40 = type metadata accessor for ModifiedContent(255, v47, v38, v39);
  v53[0] = v31;
  v53[1] = &protocol witness table for PrivacyRedactionViewModifier.Transform<A>.PrivacyEffect;
  v41 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v16, v53);
  v52[0] = v42;
  v52[1] = &protocol witness table for _OpacityEffect;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v48, v52, v41);
  v51[0] = v43;
  v51[1] = swift_getAssociatedConformanceWitness();
  v44 = swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v47, v51);
  v50[0] = v45;
  v50[1] = &protocol witness table for _OverlayModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v40, v50, v44);
}

uint64_t sub_18D3A569C()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3A5708@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3A5714(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3A5720(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _ContrastEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _ContrastEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A5784(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for RendererVisualEffect<_ContrastEffect>(255, a2, a3, a4);
  v7 = v6;
  lazy protocol witness table accessor for type RendererVisualEffect<_ContrastEffect> and conformance RendererVisualEffect<A>(v6, v8, v9, v10);
  v14[0] = v4;
  v14[1] = v7;
  v14[2] = v5;
  v14[3] = v11;
  v12 = type metadata accessor for CombinedVisualEffect(255, v14);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v12);
}

double sub_18D3A57F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for GlassEffectTransitionModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for GlassEffectTransitionModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A5864(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _MatchedGeometryEffect(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _MatchedGeometryEffect<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

double sub_18D3A58D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v9[0] = *(a1 + 8);
  v9[1] = v3;
  v4 = type metadata accessor for MatchedGeometryEffect2(255, v9);
  v6 = type metadata accessor for ModifiedContent(255, v1, v4, v5);
  v8[0] = v2;
  v8[1] = &protocol witness table for MatchedGeometryEffect2<A, B>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v8);
}

double _s7SwiftUI18MatchedSharedFrame33_F035CBEF00D3D777B3359545F684D774LLVyxG14AttributeGraph12StatefulRuleAafGP12initialValue0R0QzSgvgZTW_0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  return result;
}

uint64_t sub_18D3A5998(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for DateComponents();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_18D3A5AA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  _s10Foundation4DateVSgMaTm_1(0, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for DateComponents();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 24);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t _s7SwiftUI17CollectionChangesVyxq_GSlAASl5index_8offsetBy5IndexQzAH_SitFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for CollectionChanges<A, B>, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69830](a1, a2, a3, v6, v8, v7);
}

uint64_t _s7SwiftUI17CollectionChangesVyxq_GSlAASl5index_8offsetBy07limitedG05IndexQzSgAI_SiAItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable(protocol conformance descriptor for CollectionChanges<A, B>, a4);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t _s7SwiftUI17CollectionChangesVyxq_GSlAASl8distance4from2toSi5IndexQz_AItFTW_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7.n128_f64[0] = swift_getWitnessTable(protocol conformance descriptor for CollectionChanges<A, B>, a3);
  v8 = MEMORY[0x1E69E6570];

  return MEMORY[0x1EEE69840](a1, a2, a3, v6, v8, v7);
}

double sub_18D3A5D38(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for _EnvironmentKeyWritingModifier(255, a1[1], a3, a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

uint64_t sub_18D3A5DA8()
{

  return swift_deallocObject();
}

double _s7SwiftUI25OpenSensitiveURLActionKeyVAA011EnvironmentF0A2aDP12defaultValue0I0QzvgZTW_0@<D0>(uint64_t a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 255;
  return result;
}

uint64_t sub_18D3A5E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_18D3A5EFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for URL();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_18D3A5FB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenURLAction.Result.ActionResult(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3A6020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenURLAction.Result.ActionResult(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

double sub_18D3A6090(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for OpenURLAction?(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<OpenURLAction>, &type metadata for OpenURLAction, type metadata accessor for _EnvironmentKeyWritingModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3A6124(uint64_t a1, uint64_t a2)
{
  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18D3A6190(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  type metadata accessor for (url: URL?, prefersInApp: Bool)(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_18D3A621C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24RequestedLeafContentTypeV_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t _s7SwiftUI4FontV6DesignOAA14CodableByProxyA2aFP06codingG006CodingG0QzvgTW_0@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>)
{
  result = Font.DesignModifier.codingProxy.getter(a2);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t _s7SwiftUI25RemovedElementsCollectionVAASkRzrlE19RandomAccessAdaptorVyx_GSlAASl5index_8offsetBy07limitedK05IndexQzSgAK_SiAKtFTW_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getWitnessTable(protocol conformance descriptor for RemovedElementsCollection<A><>.RandomAccessAdaptor, a4);

  return RandomAccessCollection.index(_:offsetBy:limitedBy:)();
}

uint64_t sub_18D3A63C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  if (*(v5 + 84) == a2)
  {
    v6 = *(v5 + 48);
    v7 = *(a3 + 16);
LABEL_5:

    return v6(a1, a2, v7);
  }

  v9 = a1;
  v10 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for RangeSet();
  v13 = *(v11 - 8);
  if (*(v13 + 84) == v3)
  {
    v7 = v11;
    v6 = *(v13 + 48);
    a1 = v9 + *(a3 + 36);
    a2 = v3;
    goto LABEL_5;
  }

  v15 = type metadata accessor for RemovedElementsCollection.Index(0, v4, v10, v12);
  v16 = *(*(v15 - 8) + 48);
  v17 = v9 + *(a3 + 40);

  return v16(v17, v3, v15);
}

uint64_t sub_18D3A6570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v4 = a2;
  v5 = *(a4 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84) == a3)
  {
    v7 = *(v6 + 56);
    v8 = a2;
    v9 = *(a4 + 16);
LABEL_5:

    return v7(a1, a2, v8, v9);
  }

  v12 = a1;
  v13 = *(a4 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for RangeSet();
  v16 = *(v14 - 8);
  if (*(v16 + 84) == a3)
  {
    v9 = v14;
    v7 = *(v16 + 56);
    a1 = v12 + *(a4 + 36);
    a2 = v4;
    v8 = v4;
    goto LABEL_5;
  }

  v18 = type metadata accessor for RemovedElementsCollection.Index(0, v5, v13, v15);
  v19 = *(*(v18 - 8) + 56);
  v20 = v12 + *(a4 + 40);

  return v19(v20, v4, v4, v18);
}

uint64_t sub_18D3A672C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for RemovedElementsCollection(0, *(a3 + 16), *(*(*(a3 + 24) + 8) + 8), a4);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_18D3A67A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for RemovedElementsCollection(0, *(a4 + 16), *(*(*(a4 + 24) + 8) + 8), a4);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a2, v6);
}

double sub_18D3A6830@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v7;
  v8[4] = v6;
  *a4 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A) -> (@unowned Bool);
  a4[1] = v8;

  return result;
}

uint64_t sub_18D3A68C4()
{

  return swift_deallocObject();
}

uint64_t sub_18D3A6910()
{

  return swift_deallocObject();
}

uint64_t sub_18D3A6958()
{

  return swift_deallocObject();
}

uint64_t sub_18D3A6990()
{

  return swift_deallocObject();
}

uint64_t _sSo18RBSymbolScaleLevelV7SwiftUI12ProtobufEnumA2cDP13protobufValueSuvgTW_0()
{
  result = *v0;
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  return result;
}

int *sub_18D3A69E8@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result == *MEMORY[0x1E698D3F8];
  if (*result == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3A6A10(uint64_t result, _DWORD *a2)
{
  if (*(result + 4))
  {
    v2 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v2 = result;
  }

  *a2 = *v2;
  return result;
}

_BYTE *sub_18D3A6A30@<X0>(_BYTE *a2@<X8>)
{
  result = AGGraphGetValue();
  *a2 = *result;
  return result;
}

__n128 sub_18D3A6AE8@<Q0>(__n128 *a2@<X8>)
{
  type metadata accessor for CGPoint(0);
  Value = AGGraphGetValue();
  result = *Value;
  *a2 = *Value;
  return result;
}

__n128 sub_18D3A6BB8@<Q0>(_OWORD *a2@<X8>)
{
  Value = AGGraphGetValue();
  result = *Value;
  v5 = *(Value + 16);
  *a2 = *Value;
  a2[1] = v5;
  return result;
}

uint64_t sub_18D3A6C74@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 16);
  v3 = v2 == *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3A6C9C(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v2 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v2 = result;
  }

  *(a2 + 16) = *v2;
  return result;
}

uint64_t sub_18D3A6CBC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 20);
  v3 = v2 == *MEMORY[0x1E698D3F8];
  if (v2 == *MEMORY[0x1E698D3F8])
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3A6CE4(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v2 = MEMORY[0x1E698D3F8];
  }

  else
  {
    v2 = result;
  }

  *(a2 + 20) = *v2;
  return result;
}

double sub_18D3A6D24(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  type metadata accessor for _StrokedShape<Rectangle._Inset>(255);
  v6 = v5;
  lazy protocol witness table accessor for type _StrokedShape<Rectangle._Inset> and conformance _StrokedShape<A>();
  v15[0] = v6;
  v15[1] = v2;
  v15[2] = v7;
  v15[3] = v4;
  v8 = type metadata accessor for _ShapeView(255, v15);
  v10 = type metadata accessor for _OverlayModifier(255, v8, &protocol witness table for _ShapeView<A, B>, v9);
  v12 = type metadata accessor for ModifiedContent(255, v1, v10, v11);
  v14[0] = v3;
  v14[1] = &protocol witness table for _OverlayModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v12, v14);
}

double sub_18D3A6DF4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v9[0] = *(a1 + 8);
  v9[1] = v3;
  v4 = type metadata accessor for _OverlayShapeModifier(255, v9);
  v6 = type metadata accessor for ModifiedContent(255, v1, v4, v5);
  v8[0] = v2;
  v8[1] = &protocol witness table for _OverlayShapeModifier<A, B>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v8);
}

uint64_t *_s7SwiftUI8SDFStyleOwcp_0(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_18D3A7030()
{

  return swift_deallocObject();
}

uint64_t sub_18D3A7098()
{

  return swift_deallocObject();
}

uint64_t sub_18D3A70F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3A7138@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027LayoutAccessibilityProviderF033_BD5DB579992638706C312416A6669149LLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3A717C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = (result + 8);
  v4 = (result + 16);
  if (!*a2)
  {
    v4 = result;
  }

  v5 = *v4;
  if (*a2)
  {
    v3 = (result + 24);
  }

  v6 = *v3;
  *a3 = v5;
  *(a3 + 8) = v6;
  return result;
}

uint64_t sub_18D3A71AC(uint64_t result, uint64_t a2, _BYTE *a3)
{
  v3 = *(result + 8);
  v4 = 16;
  if (!*a3)
  {
    v4 = 0;
  }

  v5 = 8;
  if (*a3)
  {
    v5 = 24;
  }

  *(a2 + v4) = *result;
  *(a2 + v5) = v3;
  return result;
}

uint64_t sub_18D3A71EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3A7230@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020SpacerRepresentationF033_81D5572A9475F8358655E25B09BAFBA9LLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void sub_18D3A72DC(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static GestureContainerFeature.isEnabledOverride = v1;
}

void sub_18D3A7370(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static HitTestPassThroughFeature.overrideValue = v1;
}

void sub_18D3A7404(char *a1)
{
  v1 = *a1;
  swift_beginAccess();
  static TapGestureUsesGesturesFrameworkFeature.cachedValue = v1;
}

double sub_18D3A744C(uint64_t *a1)
{
  v1 = type metadata accessor for ArrayKeyframeTrackContent(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable(protocol conformance descriptor for ArrayKeyframeTrackContent<A, B>, v1);
}

double sub_18D3A74C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for EmptyKeyframeTrackContent(255, *a1, a1[1], a4);

  return swift_getWitnessTable(protocol conformance descriptor for EmptyKeyframeTrackContent<A>, v4);
}

double sub_18D3A7538(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for EmptyKeyframes(255, *a1, a3, a4);

  return swift_getWitnessTable(protocol conformance descriptor for EmptyKeyframes<A>, v4);
}

double sub_18D3A758C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _EnvironmentKeyWritingModifier<ButtonSizing>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ButtonSizing>, &type metadata for ButtonSizing, type metadata accessor for _EnvironmentKeyWritingModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A7620(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for FlexibleButtonFrameModifier, a4);
  lazy protocol witness table accessor for type FlexibleButtonFrameModifier and conformance FlexibleButtonFrameModifier();
  v8[0] = v4;
  v8[1] = v6;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v8);
}

double sub_18D3A7690@<D0>(double *a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v3 = a1 + 1;
  if (!*a2)
  {
    v3 = a1;
  }

  result = *v3;
  *a3 = *v3;
  return result;
}

void *sub_18D3A76AC(void *result, uint64_t a2, _BYTE *a3)
{
  v3 = 8;
  if (!*a3)
  {
    v3 = 0;
  }

  *(a2 + v3) = *result;
  return result;
}

__n128 sub_18D3A76D8@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_18D3A76E4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3A7708()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3A7774@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3A7780(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3A778C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _BlurEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _BlurEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A77F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for RendererVisualEffect<_BlurEffect>(255);
  v4 = v3;
  lazy protocol witness table accessor for type RendererVisualEffect<_BlurEffect> and conformance RendererVisualEffect<A>();
  v8[0] = v1;
  v8[1] = v4;
  v8[2] = v2;
  v8[3] = v5;
  v6 = type metadata accessor for CombinedVisualEffect(255, v8);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v6);
}

double sub_18D3A7860(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for ConcentricPaddingLayout, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for ConcentricPaddingLayout;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A7930@<D0>(uint64_t a1@<X0>, _OWORD *a3@<X8>)
{

  return key path getter for PlacementContext.subscript<A>(dynamicMember:) : PlacementContextContainerShapeData(a1, a3);
}

double sub_18D3A799C(uint64_t *a1, void *a2)
{
  *a2 = *a1;

  return result;
}

uint64_t sub_18D3A7A28(char a1)
{
  if (!a1)
  {
    return 0x656372756F73;
  }

  if (a1 == 1)
  {
    return 0x74616D726F66;
  }

  return 0xD00000000000001CLL;
}

uint64_t sub_18D3A7A7C()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3A7AE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _ColorInvertEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _ColorInvertEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A7B4C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for GlassEffectBackdropProxyModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for GlassEffectBackdropProxyModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3A7BB0()
{

  return swift_deallocObject();
}

uint64_t sub_18D3A7BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 34);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = type metadata accessor for LinkDestination.Configuration(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18D3A7C98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 34) = -a2;
  }

  else
  {
    v7 = type metadata accessor for LinkDestination.Configuration(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_18D3A7D90@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[7];
  v18 = a1[6];
  v19 = v3;
  v4 = a1[9];
  v20 = a1[8];
  v21 = v4;
  v5 = a1[3];
  v14 = a1[2];
  v15 = v5;
  v6 = a1[5];
  v16 = a1[4];
  v17 = v6;
  v7 = a1[1];
  v12 = *a1;
  v13 = v7;
  result = _ForegroundLayerColorMatrixEffect.levelEffect.getter(&v10);
  v9 = v11;
  *a2 = v10;
  *(a2 + 8) = v9;
  return result;
}

uint64_t sub_18D3A7E08()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3A7E74@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3A7E80(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3A7E8C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _GrayscaleEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _GrayscaleEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A7EF0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for RendererVisualEffect<_GrayscaleEffect>(255, a2, a3, a4);
  v7 = v6;
  lazy protocol witness table accessor for type RendererVisualEffect<_GrayscaleEffect> and conformance RendererVisualEffect<A>(v6, v8, v9, v10);
  v14[0] = v4;
  v14[1] = v7;
  v14[2] = v5;
  v14[3] = v11;
  v12 = type metadata accessor for CombinedVisualEffect(255, v14);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v12);
}

uint64_t _s7SwiftUI19ArrayAnchorValueBox33_DB1D6A7FECCB5A05E5E6B385ABD35CE6LLCyADyxGSayAA0D0VyxGGcfC_0(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

float64_t sub_18D3A7F94@<D0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  result = a1[3].f64[0];
  v3 = vdupq_n_s64(0x4060000000000000uLL);
  v4 = a1[3].f64[1] * 128.0;
  v5 = vmulq_f64(a1[1], v3);
  *a2 = vmulq_f64(*a1, v3);
  a2[1] = v5;
  a2[2] = vmulq_f64(a1[2], v3);
  a2[3].f64[0] = result;
  a2[3].f64[1] = v4;
  return result;
}

float64_t sub_18D3A7FCC(float64x2_t *a1, float64x2_t *a2)
{
  result = a1[3].f64[0];
  v3 = a1[3].f64[1];
  v4 = vdupq_n_s64(0x3F80000000000000uLL);
  v5 = vmulq_f64(a1[1], v4);
  *a2 = vmulq_f64(*a1, v4);
  a2[1] = v5;
  a2[2] = vmulq_f64(a1[2], v4);
  a2[3].f64[0] = result;
  a2[3].f64[1] = v3 * 0.0078125;
  return result;
}

double sub_18D3A8004(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _Rotation3DEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _Rotation3DEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A8068(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for GeometryVisualEffect<_Rotation3DEffect>(255);
  v4 = v3;
  lazy protocol witness table accessor for type AnimatablePair<Double, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<CGFloat, AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>>>> and conformance AnimatablePair<A, B>(&lazy protocol witness table cache variable for type GeometryVisualEffect<_Rotation3DEffect> and conformance GeometryVisualEffect<A>, type metadata accessor for GeometryVisualEffect<_Rotation3DEffect>, protocol conformance descriptor for GeometryVisualEffect<A>);
  v8[0] = v1;
  v8[1] = v4;
  v8[2] = v2;
  v8[3] = v5;
  v6 = type metadata accessor for CombinedVisualEffect(255, v8);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v6);
}

double sub_18D3A8118(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for GlassEffectZIndexModifier, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for GlassEffectZIndexModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

float _s7SwiftUI21OpacityRendererEffectVAA01_dE0A2aDP11effectValue4sizeAA11DisplayListV0E0OSo6CGSizeV_tFTW_0@<S0>(uint64_t a1@<X8>)
{
  result = *v1;
  *a1 = LODWORD(result);
  *(a1 + 8) = 0;
  *(a1 + 12) = 4;
  return result;
}

double sub_18D3A81D4@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3A81E0(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3A81EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3A8230@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028OpacityAccessibilityProviderF033_34FFA2034B9AD53E0463E3971529C5A1LLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_18D3A8274(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _OpacityEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _OpacityEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A82D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _OpacityEffect, a4);
  v11[0] = v5;
  v11[1] = &protocol witness table for _OpacityEffect;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v11);
  v10[0] = v4;
  v10[1] = v6;
  v10[2] = v5;
  v10[3] = v7;
  v8 = type metadata accessor for AppearanceAnimationView(255, v10);
  return swift_getWitnessTable(protocol conformance descriptor for AppearanceAnimationView<A, B>, v8);
}

double sub_18D3A837C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _OpacityShapeStyle<AnyShapeStyle>(255, &lazy cache variable for type metadata for RendererVisualEffect<_OpacityEffect>, &type metadata for _OpacityEffect, &protocol witness table for _OpacityEffect, type metadata accessor for RendererVisualEffect);
  v4 = v3;
  lazy protocol witness table accessor for type RendererVisualEffect<_OpacityEffect> and conformance RendererVisualEffect<A>();
  v8[0] = v1;
  v8[1] = v4;
  v8[2] = v2;
  v8[3] = v5;
  v6 = type metadata accessor for CombinedVisualEffect(255, v8);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v6);
}

uint64_t sub_18D3A8448()
{

  return swift_deallocObject();
}

uint64_t sub_18D3A8480()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3A84EC@<D0>(uint64_t a1@<X8>)
{
  ResolvedShadowStyle.animatableData.getter(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

double sub_18D3A8570(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _ShadowEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _ShadowEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

unint64_t _s7SwiftUI21LayoutProxyCollectionVSkAASk5index_8offsetBy07limitedH05IndexQzSgAH_SiAHtFTW_0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t _s7SwiftUI21LayoutProxyCollectionVwcp_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

_BYTE *sub_18D3A8684(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 8) = *(a2 + 8) & 0xFFFFFFFD | v2;
  return result;
}

_BYTE *sub_18D3A86B8(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 8) = *(a2 + 8) & 0xFFFFFFFB | v2;
  return result;
}

_BYTE *sub_18D3A86EC(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 8) = *(a2 + 8) & 0xFFFFFFEF | v2;
  return result;
}

_BYTE *sub_18D3A8720(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 8) = *(a2 + 8) & 0xFFFFFFF7 | v2;
  return result;
}

_BYTE *sub_18D3A8754(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 32;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 8) = *(a2 + 8) & 0xFFFFFFDF | v2;
  return result;
}

_BYTE *sub_18D3A8788(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 1024;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 8) = *(a2 + 8) & 0xFFFFFBFF | v2;
  return result;
}

_BYTE *sub_18D3A87BC(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 64;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 8) = *(a2 + 8) & 0xFFFFFFBF | v2;
  return result;
}

_BYTE *sub_18D3A87F0(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 128;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 8) = *(a2 + 8) & 0xFFFFFF7F | v2;
  return result;
}

int *sub_18D3A882C@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result == -1;
  if (*result == -1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

uint64_t sub_18D3A8848(uint64_t result, _DWORD *a2)
{
  if (*(result + 4))
  {
    *a2 = -1;
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

double sub_18D3A8870(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _DrawingGroupEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _DrawingGroupEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A891C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &unk_1F00643C0, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for RequiresSourceModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3A8994()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3A8A00@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3A8A0C(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3A8A18(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _BrightnessEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _BrightnessEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A8A7C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for RendererVisualEffect<_BrightnessEffect>(255, a2, a3, a4);
  v7 = v6;
  lazy protocol witness table accessor for type RendererVisualEffect<_BrightnessEffect> and conformance RendererVisualEffect<A>(v6, v8, v9, v10);
  v14[0] = v4;
  v14[1] = v7;
  v14[2] = v5;
  v14[3] = v11;
  v12 = type metadata accessor for CombinedVisualEffect(255, v14);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v12);
}

uint64_t sub_18D3A8AF8()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3A8B80(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v8[0] = *(a1 + 8);
  v8[1] = v3;
  v4 = type metadata accessor for AndOperationViewInputPredicate(255, v8);
  v5 = type metadata accessor for StaticIf(255, v4, v1, &type metadata for EmptyModifier);
  v7[0] = &protocol witness table for AndOperationViewInputPredicate<A, B>;
  v7[1] = v2;
  v7[2] = &protocol witness table for EmptyModifier;
  return swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, v5, v7);
}

double sub_18D3A8C14(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = type metadata accessor for StaticIf(255, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  v5 = *(a1 + 40);
  v6 = v2;
  return swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, v3, &v5);
}

double sub_18D3A8C7C(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = type metadata accessor for StaticIf(255, *(a1 + 8), *(a1 + 16), *a1);
  v5 = *(a1 + 32);
  v6 = v2;
  return swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, v3, &v5);
}

double sub_18D3A8D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = type metadata accessor for StyleContextAcceptsPredicate(255, *(a1 + 8), a3, a4);
  v8 = type metadata accessor for StaticIf(255, v7, v5, v6);
  v10 = &protocol witness table for StyleContextAcceptsPredicate<A>;
  v11 = *(a1 + 48);
  return swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, v8, &v10);
}

double sub_18D3A8DA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[5];
  v8 = type metadata accessor for StyleContextAcceptsPredicate(255, a1[1], a3, a4);
  v9 = type metadata accessor for StaticIf(255, v8, v5, v4);
  v11[0] = &protocol witness table for StyleContextAcceptsPredicate<A>;
  v11[1] = v7;
  v11[2] = v6;
  return swift_getWitnessTable(protocol conformance descriptor for <> StaticIf<A, B, C>, v9, v11);
}

uint64_t sub_18D3A8E70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA8SolariumV022AllowedInCompatibilityF0V_Tt2g5(*a1);
  *a2 = result & 1;
  return result;
}

double sub_18D3A8EB8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for InterfaceIdiomBox<MacInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewInputFlagModifier<Solarium.AllowedInCompatibilityKey>, &type metadata for Solarium.AllowedInCompatibilityKey, &protocol witness table for Solarium.AllowedInCompatibilityKey, type metadata accessor for ViewInputFlagModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for ViewInputFlagModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3A8F80@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static LayoutTrace.recorder;

  return result;
}

uint64_t _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation4DateV21ComponentsFormatStyleV5FieldV_Tt0gq5Tf4g_n_0(uint64_t a1)
{
  v2 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    type metadata accessor for _SetStorage<Date.ComponentsFormatStyle.Field>(0);
    v9 = static _SetStorage.allocate(capacity:)();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694A8]);
      v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v5, *(v9 + 48) + v18 * v14, v2);
          _s10Foundation4DateV21ComponentsFormatStyleV5FieldVAGSQAAWlTm_0(&lazy protocol witness table cache variable for type Date.ComponentsFormatStyle.Field and conformance Date.ComponentsFormatStyle.Field, MEMORY[0x1E6969498], MEMORY[0x1E69694B0]);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          v24 = *v15;
          (*v15)(v5, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_18D3A92E8()
{

  return swift_deallocObject();
}

uint64_t sub_18D3A9334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Components();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3A93A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Locale.Components();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

double sub_18D3A9508(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  v3 = type metadata accessor for Optional();
  v6 = type metadata accessor for _EnvironmentKeyWritingModifier(255, v3, v4, v5);
  v8 = type metadata accessor for ModifiedContent(255, v1, v6, v7);
  v10[0] = v2;
  v10[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

double _s7SwiftUI13_SymbolEffectV20BreatheConfigurationVwxx_0(uint64_t *a1)
{
  v1 = *a1;
  if ((~v1 & 0xF000000000000006) != 0)
  {
    return outlined consume of _SymbolEffect.Trigger(v1);
  }

  return result;
}

uint64_t sub_18D3A968C()
{

  return swift_deallocObject();
}

uint64_t sub_18D3A96D4()
{

  return swift_deallocObject();
}

uint64_t sub_18D3A9724()
{

  return swift_deallocObject();
}

__n128 sub_18D3A97A4(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 32) = v3;
  *(a2 + 48) = v4;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_18D3A97C8()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3A9834@<D0>(uint64_t a1@<X8>)
{
  _AlphaThresholdEffect._Resolved.animatableData.getter(&v3);
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_18D3A98AC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3A98F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE020TextAlwaysOnProviderF033_F24B13C37D4990A93C622BFF14CD564ALLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_18D3A9978@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;

  return result;
}

uint64_t sub_18D3A9AEC@<X0>(__int128 *a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *a2;
  v7 = *a1;
  v6 = v4;
  result = AccessibilityNullableOptionSet<>.subscript.getter(&v6);
  *a3 = result;
  return result;
}

uint64_t sub_18D3A9B34(unsigned __int8 *a1, uint64_t a2, char *a3)
{
  v3 = *a1;
  v5 = *a3;
  return AccessibilityNullableOptionSet<>.subscript.setter(v3, &v5);
}

uint64_t sub_18D3A9B80@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  LOBYTE(v2) = 2;
  if ((*(result + 56) & 1) == 0)
  {
    v2 = ~(*(result + 48) >> 21) & 2;
    if ((*(result + 42) & 0x40) != 0)
    {
      LOBYTE(v2) = 1;
    }
  }

  *a2 = v2;
  return result;
}

double sub_18D3A9BAC(unsigned __int8 *a1)
{
  v1 = *a1;
  v3 = 22;
  return AccessibilityProperties.subscript.setter(v1, &v3);
}

uint64_t sub_18D3A9BE8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  LOBYTE(v2) = 2;
  if ((*(result + 56) & 1) == 0)
  {
    v2 = ~(*(result + 48) >> 22) & 2;
    if ((*(result + 42) & 0x80) != 0)
    {
      LOBYTE(v2) = 1;
    }
  }

  *a2 = v2;
  return result;
}

double sub_18D3A9C14(unsigned __int8 *a1)
{
  v1 = *a1;
  v3 = 23;
  return AccessibilityProperties.subscript.setter(v1, &v3);
}

uint64_t sub_18D3A9C50@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  LOBYTE(v2) = 2;
  if ((*(result + 56) & 1) == 0)
  {
    v2 = ~(*(result + 48) >> 23) & 2;
    if (*(result + 43))
    {
      LOBYTE(v2) = 1;
    }
  }

  *a2 = v2;
  return result;
}

double sub_18D3A9C7C(unsigned __int8 *a1)
{
  v1 = *a1;
  v3 = 24;
  return AccessibilityProperties.subscript.setter(v1, &v3);
}

uint64_t sub_18D3A9CB8@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  LOBYTE(v2) = 2;
  if ((*(result + 56) & 1) == 0)
  {
    v2 = ~BYTE3(*(result + 48)) & 2;
    if ((*(result + 43) & 2) != 0)
    {
      LOBYTE(v2) = 1;
    }
  }

  *a2 = v2;
  return result;
}

double sub_18D3A9CE4(unsigned __int8 *a1)
{
  v1 = *a1;
  v3 = 25;
  return AccessibilityProperties.subscript.setter(v1, &v3);
}

void *_s7SwiftUI18LocalizedStringKeyVs43ExpressibleByExtendedGraphemeClusterLiteralAAsADP08extendedijK0x0hijK4TypeQz_tcfCTW_0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 0;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t sub_18D3A9D3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_18D3A9DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_18D3A9E20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3A9E64@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE018TextRepresentationF033_03CAEBF34B5290A85C0CA97765182271LLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3A9EA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE032CoreInteractionResponderProviderF033_03AF342AA286115256FF95C286FEA7E3LLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

double sub_18D3A9EEC(uint64_t *a1, double a2)
{
  v2 = *a1;
  v4 = a1[2];
  v3 = a1[3];
  v10[0] = a1[1];
  v10[1] = MEMORY[0x1E69E6530];
  v10[2] = v3;
  v10[3] = MEMORY[0x1E69E6540];
  v5 = type metadata accessor for CoreInteractionRepresentableModifier(255, v10);
  v7 = type metadata accessor for ModifiedContent(255, v2, v5, v6);
  v9[0] = v4;
  v9[1] = &protocol witness table for CoreInteractionRepresentableModifier<A, B>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v9);
}

double sub_18D3A9F78(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v9[0] = *(a1 + 8);
  v9[1] = v3;
  v4 = type metadata accessor for CoreInteractionRepresentableModifier(255, v9);
  v6 = type metadata accessor for ModifiedContent(255, v1, v4, v5);
  v8[0] = v2;
  v8[1] = &protocol witness table for CoreInteractionRepresentableModifier<A, B>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v6, v8);
}

uint64_t sub_18D3A9FFC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3AA040@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE027TextSelectionRepresentationF033_E9056C24F23374CCD1A34D90898CB830LLV_Tt2g5(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18D3AA084()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_18D3AA0BC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = _s7SwiftUI19ViewTraitCollectionV5value3for12defaultValue0I0Qzxm_AHtAA01_cD3KeyRzlFAA010IsExpandeddJ0V_Tt0B5(0, 0, 0, *a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_18D3AA0F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = *(a1 + 16);
  outlined copy of Binding<Bool>?(*a1, v2);
  return _s7SwiftUI19ViewTraitCollectionVy5ValueQzxmcAA01_cD3KeyRzluisAA010IsExpandeddG0V_Tt0g5(v1, v2, v3);
}

uint64_t sub_18D3AA148()
{
  v1 = *(type metadata accessor for ResolvableStringResolutionContext(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);

  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t sub_18D3AA288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 2);
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 48);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_18D3AA34C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 2) = a2 + 1;
  }

  else
  {
    _s7SwiftUI16TimelineSchedule_pSgMaTm_0(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 48);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

double sub_18D3AA428(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for _EnvironmentKeyWritingModifier<TextJustification>(255, a2, a3, a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

float64x2_t sub_18D3AA494@<Q0>(float64x2_t *a1@<X0>, float64x2_t *a2@<X8>)
{
  v2 = vdupq_n_s64(0x4060000000000000uLL);
  v3 = vmulq_f64(*a1, v2);
  result = vmulq_f64(a1[1], v2);
  *a2 = v3;
  a2[1] = result;
  return result;
}

float64x2_t sub_18D3AA4B0(float64x2_t *a1, float64x2_t *a2)
{
  v2 = vdupq_n_s64(0x3F80000000000000uLL);
  v3 = vmulq_f64(*a1, v2);
  result = vmulq_f64(a1[1], v2);
  *a2 = v3;
  a2[1] = result;
  return result;
}

double sub_18D3AA4CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _CompositingGroupEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _CompositingGroupEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3AA538(_OWORD *a1)
{
  v1 = a1[1];
  v4[0] = *a1;
  v4[1] = v1;
  v2 = type metadata accessor for CombinedVisualEffect(255, v4);
  return swift_getWitnessTable(protocol conformance descriptor for CombinedVisualEffect<A, B>, v2);
}

uint64_t sub_18D3AA5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (*(*(TupleTypeMetadata - 8) + 48))(a1, v3);
}

uint64_t sub_18D3AA720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v6;
  }

  return (*(*(TupleTypeMetadata - 8) + 56))(a1, a2, a2);
}

double sub_18D3AA868(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for ContainerContextWritingModifier(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for ContainerContextWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

double sub_18D3AA8D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for _PositionLayout, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for _PositionLayout;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3AA96C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  _ss23_ContiguousArrayStorageCy7SwiftUI4PathVGMaTm_0(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<TextShape>, &type metadata for TextShape, type metadata accessor for _EnvironmentKeyWritingModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

unint64_t _s7SwiftUI25AccessibilityHeadingLevelO8rawValueACSgSu_tcfC_0(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

__n128 sub_18D3AAA98(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3AAAA4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _TrimmedShape(255, *a1, a1[1], a4);

  return swift_getWitnessTable(protocol conformance descriptor for _TrimmedShape<A>, v4);
}

uint64_t sub_18D3AAAEC()
{
  v3 = *(v0 + 256);
  v4 = *(v0 + 272);
  v2 = *(v0 + 224);
  outlined consume of ArrayWith2Inline<GestureDebug.Data>.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), v2, *(&v2 + 1), *(v0 + 240), *(v0 + 248), v3, *(&v3 + 1), v4, *(&v4 + 1), *(v0 + 288), *(v0 + 296), *(v0 + 304));

  return swift_deallocObject();
}

uint64_t sub_18D3AAB88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 136);
  memcpy(__dst, (v3 + 16), 0x121uLL);
  memcpy(a2, (v3 + 16), 0x121uLL);
  return outlined init with copy of ArrayWith2Inline<GestureDebug.Data>.Storage(__dst, &v5, &lazy cache variable for type metadata for ArrayWith2Inline<GestureDebug.Data>, type metadata accessor for ArrayWith2Inline);
}

__n128 sub_18D3AAC08@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v5 = type metadata accessor for EventListenerPhase.Value(0, *(a1 + a2 - 16), *(a1 + a2 - 8), a4);
  EventListenerPhase.Value.properties.getter(v5, v9, v6);
  v7 = v9[3];
  *(a3 + 32) = v9[2];
  *(a3 + 48) = v7;
  *(a3 + 64) = v10;
  result = v9[1];
  *a3 = v9[0];
  *(a3 + 16) = result;
  return result;
}

__n128 sub_18D3AAC78(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

__n128 sub_18D3AACA4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_18D3AACB8@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_18D3AAD5C@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

uint64_t sub_18D3AAE00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t sub_18D3AAE54(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 336);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t _s7SwiftUI25ResolvableCLKTextProviderV11FontStorageOwcp_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of ResolvableCLKTextProvider.FontStorage(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_18D3AAF14()
{
  v1 = *(v0 + 2);
  v2 = *(*(type metadata accessor for Optional() - 8) + 80);
  if (*(v0 + 4))
  {
  }

  if (*(v0 + 6))
  {
  }

  if (*(v0 + 8))
  {
  }

  v3 = (v2 + 96) & ~v2;
  if (*(v0 + 10))
  {
  }

  v4 = *(v1 - 8);
  if (!(*(v4 + 48))(&v0[v3], 1, v1))
  {
    (*(v4 + 8))(&v0[v3], v1);
  }

  return swift_deallocObject();
}

__n128 sub_18D3AB084(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3AB0CC()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AB104()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_18D3AB184()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_18D3AB240()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AB2B0()
{

  return swift_deallocObject();
}

_BYTE *sub_18D3AB320(_BYTE *result, uint64_t a2)
{
  if (*result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(a2 + 144) = *(a2 + 144) & 0xFD | v2;
  return result;
}

void sub_18D3AB344(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 208);
  *a2 = *(v3 + 200);
  *(a2 + 8) = v4;
}

uint64_t sub_18D3AB394(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = swift_beginAccess();
  *(v4 + 200) = v2;
  *(v4 + 208) = v3;
  return (*(*v4 + 176))(v5);
}

uint64_t sub_18D3AB40C(void *a1)
{
  swift_getAssociatedTypeWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_18D3AB480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
    v9 = *(*(Update - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, Update);
  }
}

uint64_t sub_18D3AB52C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    Update = type metadata accessor for ResolvedTextHelper.NextUpdate(0);
    v8 = *(*(Update - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, Update);
  }

  return result;
}

uint64_t sub_18D3AB60C()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AB644()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AB68C()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AB6C4()
{
  outlined consume of Text.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_18D3AB720(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_18D3AB7CC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18D3AB870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18D3AB91C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18D3AB9C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_18D3ABA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = type metadata accessor for Date();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_18D3ABAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  if (*(a3 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v5 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v3 = a2;
    a1 = v5;
  }

  return (*(*(TupleTypeMetadata - 8) + 48))(a1, v3);
}

uint64_t sub_18D3ABC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16) == 1)
  {
    TupleTypeMetadata = *(*(a4 + 24) & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    v6 = a1;
    MEMORY[0x1EEE9AC00](a1);
    v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v7)
    {
      v11 = 0;
      v12 = *(v8 + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (v7 < 4)
      {
        goto LABEL_9;
      }

      if (&v10[-v12] < 0x20)
      {
        goto LABEL_9;
      }

      v11 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v13 = (v12 + 16);
      v14 = v10 + 16;
      v15 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v13;
        *(v14 - 1) = *(v13 - 1);
        *v14 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v7 != v11)
      {
LABEL_9:
        v17 = v7 - v11;
        v18 = 8 * v11;
        v19 = &v10[8 * v11];
        v20 = (v12 + v18);
        do
        {
          v21 = *v20++;
          *v19 = v21;
          v19 += 8;
          --v17;
        }

        while (v17);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    a1 = v6;
  }

  return (*(*(TupleTypeMetadata - 8) + 56))(a1, a2, a2);
}

double sub_18D3ABD50@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

void sub_18D3ABD5C(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
}

__n128 sub_18D3ABDAC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void *sub_18D3ABDB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE014PlatformSystemF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(*a1, &v4);
  *a2 = v4;
  return result;
}

uint64_t sub_18D3ABE10@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(*a1);
  *a2 = result;
  return result;
}

double sub_18D3ABE54(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for RequiredTapCountWriter(255, AssociatedTypeWitness, v4, v5);
  swift_getWitnessTable(protocol conformance descriptor for RequiredTapCountWriter<A>, v6);
  v10[0] = v6;
  v10[1] = v1;
  v10[2] = v7;
  v10[3] = v2;
  v8 = type metadata accessor for ModifierGesture(255, v10);
  return swift_getWitnessTable(protocol conformance descriptor for ModifierGesture<A, B>, v8);
}

uint64_t sub_18D3ABF10()
{

  return swift_deallocObject();
}

uint64_t _s7SwiftUI4FontVAAE22PrivateStyleDefinitionV10CodingKeys33_2F4F6F37FC99B226E8F8E01317E236EELLOs0G3KeyAAsAIP11stringValueSSvgTW_0()
{
  v1 = 0x6E6769736564;
  if (*v0 != 1)
  {
    v1 = 0x746867696577;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C797473;
  }
}

uint64_t _s7SwiftUI4FontVAAE22PrivateStyleDefinitionV10CodingKeys33_2F4F6F37FC99B226E8F8E01317E236EELLOs0G3KeyAAsAIP11stringValuexSgSS_tcfCTW_0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Font.StyleDefinition.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

__n128 sub_18D3ABFF8@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3AC004(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 8);
  *a2 = *a1;
  *(a2 + 8) = v3;
  *(a2 + 56) = result;
  *(a2 + 64) = v3;
  return result;
}

uint64_t *_s7SwiftUI43AccessibilitySpecificChartDescriptorStorageC0G033_7BC255353E40EE9AA85BDA85829B61DCLLOwcp_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of AccessibilitySpecificChartDescriptorStorage.Storage(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

double sub_18D3AC0F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>(255);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3AC168(uint64_t *a1, uint64_t *a2)
{

  return protocol witness for static TransactionKey._valuesEqual(_:_:) in conformance Transaction.AnimationListenerKey(a1, a2);
}

__n128 sub_18D3AC214(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3AC220@<X0>(_DWORD *a1@<X8>)
{
  result = GestureComponentResponder.$modifier.getter();
  *a1 = result;
  return result;
}

uint64_t sub_18D3AC284()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = (*(v6 + 64) + v7 + v8) & ~v7;
  (*(v2 + 8))(v0 + v3, v1);
  v10 = *(v6 + 8);
  v10(v0 + v8, AssociatedTypeWitness);
  v10(v0 + v9, AssociatedTypeWitness);

  return swift_deallocObject();
}

double sub_18D3AC3F4@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;

  return result;
}

void sub_18D3AC400(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  *a2 = v4;
  a2[1] = v3;
}

__n128 sub_18D3AC450(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_18D3AC5C0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_18D3AC5FC()
{

  return swift_deallocObject();
}

uint64_t sub_18D3AC634()
{

  return swift_deallocObject();
}

void sub_18D3AC978(__int128 *a1@<X0>, _BYTE *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  v7 = *a1;
  EnvironmentValues.controlSize.getter(&v6, a3, a4, a5);
  *a2 = v6;
}

uint64_t sub_18D3AC9C0()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

double sub_18D3ACA48(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for [ControlSize](255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<ControlSize>, type metadata accessor for _EnvironmentKeyWritingModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3ACAD0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  type metadata accessor for [ControlSize](255, &lazy cache variable for type metadata for _EnvironmentKeyTransformModifier<ControlSize>, type metadata accessor for _EnvironmentKeyTransformModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyTransformModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t sub_18D3ACBB8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for Locale();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[9];
    goto LABEL_11;
  }

  v17 = type metadata accessor for Calendar();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_18D3ACD74(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = type metadata accessor for Locale();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[9];
    goto LABEL_9;
  }

  v17 = type metadata accessor for Calendar();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_18D3ACF4C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for IndexSet();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_18D3ACFF8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for IndexSet();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_18D3AD0B8()
{
  outlined consume of GraphicsFilter(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return swift_deallocObject();
}

double sub_18D3AD124@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 * 0.5;
  *a2 = result;
  return result;
}

double sub_18D3AD138(double *a1, double *a2)
{
  result = *a1 + *a1;
  *a2 = result;
  return result;
}

double sub_18D3AD148@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3AD154(double *a1, void *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double sub_18D3AD160(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = type metadata accessor for ModifiedContent(255, *a1, &type metadata for VariableBlurEffect, a4);
  v7[0] = v4;
  v7[1] = &protocol witness table for VariableBlurEffect;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t _s7SwiftUI8MaterialV2IDOwcp_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  outlined copy of Material.ID(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

double sub_18D3AD278(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for MaterialView<Rectangle>(255, &lazy cache variable for type metadata for MaterialView<Rectangle>, lazy protocol witness table accessor for type Rectangle and conformance Rectangle, &type metadata for Rectangle, type metadata accessor for MaterialView);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for MaterialView<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

double sub_18D3AD31C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = type metadata accessor for MaterialView(255, a1[1], a1[3], a4);
  v8 = type metadata accessor for ModifiedContent(255, v4, v6, v7);
  v10[0] = v5;
  v10[1] = &protocol witness table for MaterialView<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v8, v10);
}

double sub_18D3AD398(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for Attribute<EnvironmentValues>(255, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<MaterialActiveAppearance>, &type metadata for MaterialActiveAppearance, type metadata accessor for _EnvironmentKeyWritingModifier);
  v5 = type metadata accessor for ModifiedContent(255, v1, v3, v4);
  v7[0] = v2;
  v7[1] = &protocol witness table for _EnvironmentKeyWritingModifier<A>;
  return swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v5, v7);
}

uint64_t _s7SwiftUI16_ShapeStyle_PackV5SliceVSkAASk5index_8offsetBy07limitedI05IndexQzSgAJ_SiAJtFTW_0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

double sub_18D3AD488@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v11 = *a1;
  v10 = v4;
  _ShapeStyle_Pack.subscript.getter(&v10, v5, v12);
  v6 = v16;
  *(a3 + 64) = v15;
  *(a3 + 80) = v6;
  *(a3 + 96) = v17;
  *(a3 + 112) = v18;
  v7 = v12[1];
  *a3 = v12[0];
  *(a3 + 16) = v7;
  result = *&v13;
  v9 = v14;
  *(a3 + 32) = v13;
  *(a3 + 48) = v9;
  return result;
}