void closure #1 in closure #1 in _IntelligenceSupport.AnimatingText.body.getter(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(a2 + 16))
  {
    v4 = a2 + 72 * v3;
    v5 = *(v4 + 40);
    v6 = *(v4 + 88);
    v7 = *(v4 + 96);
    v8 = *(v4 + 48) - *(v4 + 64);
    *a3 = v6;
    *(a3 + 8) = v7;
    *(a3 + 16) = v6;
    *(a3 + 24) = closure #1 in _IntelligenceSupport.AnimatingSummarySymbol.body.getter;
    *(a3 + 32) = 0;
    *(a3 + 40) = v5;
    *(a3 + 48) = v8;

    return;
  }

  __break(1u);
}

double protocol witness for View.body.getter in conformance _IntelligenceSupport.AnimatingText@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  outlined copy of Text.Storage(*v1, v3, v5);
  v7 = one-time initialization token for topLeading;

  if (v7 != -1)
  {
    swift_once();
  }

  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = closure #1 in _IntelligenceSupport.AnimatingText.body.getter;
  *(a1 + 40) = 0;
  result = *&static Alignment.topLeading;
  *(a1 + 48) = static Alignment.topLeading;
  return result;
}

uint64_t _IntelligenceSupport.AnimatingSummarySymbol.init(isOn:font:foregroundColor:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

id _IntelligenceSupport.AnimatingSummarySymbol.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  v11 = *(v1 + 1);
  if (*v1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  type metadata accessor for ColorBox<CGColorRef>(0, &lazy cache variable for type metadata for ColorBox<CGColorRef>, type metadata accessor for CGColorRef, lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef, type metadata accessor for ColorBox);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  type metadata accessor for FontBox<Font.PlatformFontProvider>(0, &lazy cache variable for type metadata for FontBox<Font.PlatformFontProvider>, lazy protocol witness table accessor for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider, &type metadata for Font.PlatformFontProvider, type metadata accessor for FontBox);
  v7 = swift_allocObject();
  *(v7 + 16) = v11;
  KeyPath = swift_getKeyPath();
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3;
  *(a1 + 24) = closure #1 in _IntelligenceSupport.AnimatingSummarySymbol.body.getter;
  *(a1 + 32) = 0;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v7;
  v9 = v4;

  return v11;
}

id protocol witness for View.body.getter in conformance _IntelligenceSupport.AnimatingSummarySymbol@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 2);
  v11 = *(v1 + 1);
  if (*v1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  type metadata accessor for ColorBox<CGColorRef>(0, &lazy cache variable for type metadata for ColorBox<CGColorRef>, type metadata accessor for CGColorRef, lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef, type metadata accessor for ColorBox);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  type metadata accessor for FontBox<Font.PlatformFontProvider>(0, &lazy cache variable for type metadata for FontBox<Font.PlatformFontProvider>, lazy protocol witness table accessor for type Font.PlatformFontProvider and conformance Font.PlatformFontProvider, &type metadata for Font.PlatformFontProvider, type metadata accessor for FontBox);
  v7 = swift_allocObject();
  *(v7 + 16) = v11;
  KeyPath = swift_getKeyPath();
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v3;
  *(a1 + 24) = closure #1 in _IntelligenceSupport.AnimatingSummarySymbol.body.getter;
  *(a1 + 32) = 0;
  *(a1 + 40) = KeyPath;
  *(a1 + 48) = v7;
  v9 = v4;

  return v11;
}

void *closure #1 in _IntelligenceSupport.AnimatingSummarySymbol.body.getter(uint64_t *a1)
{
  v2 = *a1;
  result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(*a1);
  if (!result || !result[9])
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v2);
    if (!result || (result[9] & 1) == 0)
    {
      type metadata accessor for FontBox<Font.PlatformFontProvider>(0, &lazy cache variable for type metadata for InternalAnimationBox<BezierAnimation>, lazy protocol witness table accessor for type BezierAnimation and conformance BezierAnimation, &type metadata for BezierAnimation, type metadata accessor for InternalAnimationBox);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_18DDEA0D0;
      *(v4 + 32) = xmmword_18DDBA7F0;
      *(v4 + 48) = xmmword_18DDAF520;
      *(v4 + 64) = 0;

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(a1, v4);
    }
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SummaryAttribute()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  MEMORY[0x193AC11E0](*&v3);
  (*(*v2 + 152))(v5);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SummaryAttribute(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  if (*v1 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x193AC11E0](*&v3);
  return (*(*v4 + 152))(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SummaryAttribute(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  Hasher.init(_seed:)();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  MEMORY[0x193AC11E0](*&v4);
  (*(*v3 + 152))(v6);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SummaryAttribute(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  if (v2 == *(a2 + 8))
  {
    return 1;
  }

  else
  {
    return (*(*v2 + 88))(*a1) & 1;
  }
}

double SummarySymbol.gradient.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  type metadata accessor for Font?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Color>, &type metadata for Color, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18DDAC2E0;
  *(inited + 32) = a1;
  type metadata accessor for FontBox<Font.PlatformFontProvider>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider, &type metadata for ResolvedColorProvider, type metadata accessor for ColorBox);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_18DDEA0E0;
  *(v7 + 32) = 2143289344;
  *(inited + 40) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_18DDEA0F0;
  *(v8 + 32) = 2143289344;
  *(inited + 48) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_18DDEA100;
  *(v9 + 32) = 2143289344;
  *(inited + 56) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_18DDEA110;
  *(v10 + 32) = 2143289344;
  *(inited + 64) = v10;
  *(inited + 72) = a1;
  swift_retain_n();
  *a2 = specialized Gradient.init(colors:)(inited);
  result = 1.0;
  *(a2 + 8) = xmmword_18DDAA020;
  *(a2 + 24) = (a3 * -1.1 * 180.0 + 180.0) * 0.0174532925;
  *(a2 + 32) = (270.0 - a3 * 180.0) * 0.0174532925;
  return result;
}

void *protocol witness for static View._makeView(view:inputs:) in conformance SummarySymbol@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v10 = *(a2 + 32);
  v11 = v5;
  v12 = *(a2 + 64);
  v13 = *(a2 + 80);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v14[0] = v9[0];
  v14[1] = v6;
  v14[2] = v10;
  v8 = v4;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt1B5(&v8, v14);
  return _s7SwiftUI4ViewPAAE04makeC04view6inputsAA01_C7OutputsVAA11_GraphValueVyxG_AA01_C6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt2B5(v8, v9, a3);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance SummarySymbol@<X0>(unsigned int *a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v10[2] = a2[2];
  v9 = v5;
  _s7SwiftUI10AnimatablePAAE05_makeC05value6inputsyAA11_GraphValueVyxGz_AA01_G6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt1B5(&v9, v10);
  v7 = v9;

  return _s7SwiftUI4ViewPAAE04makeC4List4view6inputsAA01_cE7OutputsVAA11_GraphValueVyxG_AA01_cE6InputsVtFZAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_Tt2B5(v7, a2, a3);
}

double protocol witness for View.body.getter in conformance SummarySymbol@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  if (one-time initialization token for symbolImage != -1)
  {
    v9 = *v1;
    swift_once();
    v3 = v9;
  }

  v5 = static SummarySymbol.symbolImage;
  SummarySymbol.gradient.getter(v4, &v10, v3);
  v6 = v10;
  *a1 = v5;
  *(a1 + 8) = v6;
  v7 = v12;
  *(a1 + 16) = v11;
  *(a1 + 32) = v7;
  *(a1 + 48) = v4;

  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance SummarySymbol(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return ViewSize.width.modify;
}

uint64_t _s7SwiftUI4TextV16CustomAttributesVyxSgxmcAA0C9AttributeRzluigAA07SummaryF033_5039765D26D33F565D3CDFCA69D19B23LLV_Tt0B5(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_15:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x193AC03C0](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            v6 = *(v4 + 16);

            return v6;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        type metadata accessor for FontBox<Font.PlatformFontProvider>(0, &lazy cache variable for type metadata for TextAttributeModifier<SummaryAttribute>, lazy protocol witness table accessor for type SummaryAttribute and conformance SummaryAttribute, &unk_1F0088678, type metadata accessor for TextAttributeModifier);
        v4 = swift_dynamicCastClass();
        if (v4)
        {
          goto LABEL_13;
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

uint64_t outlined destroy of LocalizedStringKey.FormatArgument(uint64_t a1)
{
  v2 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef()
{
  if (!lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef)
  {
    type metadata accessor for CGColorRef(255);
    swift_getWitnessTable(protocol conformance descriptor for CGColorRef, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef);
  }
}

uint64_t assignWithTake for _IntelligenceSupport.AnimatingText(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  outlined consume of Text.Storage(v5, v6, v7);
  *(a1 + 24) = *(a2 + 24);

  return a1;
}

void destroy for _IntelligenceSupport.AnimatingSummarySymbol(uint64_t a1)
{
  v2 = *(a1 + 16);
}

uint64_t assignWithCopy for _IntelligenceSupport.AnimatingSummarySymbol(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  v6 = v4;

  v7 = *(a2 + 16);
  v8 = *(a1 + 16);
  *(a1 + 16) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for _IntelligenceSupport.AnimatingSummarySymbol(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  v4 = *(a1 + 16);
  *(a1 + 8) = *(a2 + 8);

  return a1;
}

void lazy protocol witness table accessor for type ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(255, &lazy cache variable for type metadata for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>, type metadata accessor for _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>, &type metadata for Text);
    v4[0] = &protocol witness table for Text;
    v4[1] = &protocol witness table for _OverlayPreferenceModifier<A, B>;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
    atomic_store(v3, &lazy protocol witness table cache variable for type ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>> and conformance <> ModifiedContent<A, B>);
  }
}

void _s7SwiftUI15ModifiedContentVyACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA25_ValueTransactionModifierVySdGGAA13_OffsetEffectVGACyxq_GAA4ViewA2aORzAA0sP0R_rlWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a1)
  {
    v7 = a2(255);
    v9[0] = a3();
    v9[1] = a4;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v7, v9);
    atomic_store(v8, a1);
  }
}

void type metadata accessor for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    _sSnySiGMaTm_3(255, a3, a4, a5, type metadata accessor for _ValueTransactionModifier);
    v9 = type metadata accessor for ModifiedContent(a1, &type metadata for SummarySymbol, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void lazy protocol witness table accessor for type ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    v6[4] = v0;
    v6[5] = v1;
    type metadata accessor for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>(255, &lazy cache variable for type metadata for ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, &lazy cache variable for type metadata for _ValueTransactionModifier<Bool>, MEMORY[0x1E69E6370], MEMORY[0x1E69E6388]);
    v3 = v2;
    lazy protocol witness table accessor for type SummarySymbol and conformance SummarySymbol();
    v6[0] = v4;
    v6[1] = &protocol witness table for _ValueTransactionModifier<A>;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v6);
    atomic_store(v5, &lazy protocol witness table cache variable for type ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }
}

void type metadata accessor for [Unmanaged<DynamicViewList<AnyView>.Item>](uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void lazy protocol witness table accessor for type DynamicViewList<AnyView> and conformance DynamicViewList<A>()
{
  if (!lazy protocol witness table cache variable for type DynamicViewList<AnyView> and conformance DynamicViewList<A>)
  {
    type metadata accessor for FontBox<Font.PlatformFontProvider>(255, &lazy cache variable for type metadata for DynamicViewList<AnyView>, lazy protocol witness table accessor for type AnyView and conformance AnyView, &type metadata for AnyView, type metadata accessor for DynamicViewList);
    swift_getWitnessTable(protocol conformance descriptor for DynamicViewList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DynamicViewList<AnyView> and conformance DynamicViewList<A>);
  }
}

void lazy protocol witness table accessor for type SummaryAttribute and conformance SummaryAttribute()
{
  if (!lazy protocol witness table cache variable for type SummaryAttribute and conformance SummaryAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for SummaryAttribute, &unk_1F0088678, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SummaryAttribute and conformance SummaryAttribute);
  }
}

{
  if (!lazy protocol witness table cache variable for type SummaryAttribute and conformance SummaryAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for SummaryAttribute, &unk_1F0088678, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SummaryAttribute and conformance SummaryAttribute);
  }
}

{
  if (!lazy protocol witness table cache variable for type SummaryAttribute and conformance SummaryAttribute)
  {
    swift_getWitnessTable(protocol conformance descriptor for SummaryAttribute, &unk_1F0088678, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SummaryAttribute and conformance SummaryAttribute);
  }
}

void *assignWithCopy for SummarySymbol(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

double destroy for SummaryPlacement(void *a1)
{

  return result;
}

uint64_t initializeWithCopy for SummaryPlacement(uint64_t a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 1);
  *(a1 + 24) = *(a2 + 3);
  *(a1 + 40) = *(a2 + 5);
  v3 = a2[8];
  *(a1 + 56) = a2[7];
  *(a1 + 64) = v3;

  return a1;
}

uint64_t *assignWithCopy for SummaryPlacement(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  a1[2] = a2[2];
  a1[3] = a2[3];
  a1[4] = a2[4];
  a1[5] = a2[5];
  a1[6] = a2[6];
  a1[7] = a2[7];
  a1[8] = a2[8];

  return a1;
}

uint64_t *assignWithTake for SummaryPlacement(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 5) = *(a2 + 5);
  a1[7] = a2[7];
  a1[8] = a2[8];

  return a1;
}

uint64_t getEnumTagSinglePayload for SummaryPlacement(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for SummaryPlacement(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void lazy protocol witness table accessor for type ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(255, &lazy cache variable for type metadata for ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>>, type metadata accessor for _ForegroundStyleModifier2<AngularGradient, Color>, &type metadata for Image);
    v4[0] = &protocol witness table for Image;
    v4[1] = &protocol witness table for _ForegroundStyleModifier2<A, B>;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
    atomic_store(v3, &lazy protocol witness table cache variable for type ModifiedContent<Image, _ForegroundStyleModifier2<AngularGradient, Color>> and conformance <> ModifiedContent<A, B>);
  }
}

void _s7SwiftUI15ModifiedContentVyACyACyAA22PrimitiveGlassItemView33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0F23TransitionStateModifierAELLVGAA20_GeometryGroupEffectVGAA013_TraitWritingT0VyAA0rX3KeyVGGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = a3(255);
    _sSnySiGMaTm_3(255, &lazy cache variable for type metadata for _TraitWritingModifier<TransitionTraitKey>, &type metadata for TransitionTraitKey, &protocol witness table for TransitionTraitKey, type metadata accessor for _TraitWritingModifier);
    v8 = type metadata accessor for ModifiedContent(a1, v5, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>)
  {
    type metadata accessor for ColorBox<CGColorRef>(255, &lazy cache variable for type metadata for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, type metadata accessor for ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>, lazy protocol witness table accessor for type ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2> and conformance <> ModifiedContent<A, B>, type metadata accessor for GeometryReader);
    v4 = type metadata accessor for ModifiedContent(a1, v2, &type metadata for _GeometryGroupEffect, v3);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>);
    }
  }
}

void type metadata accessor for ColorBox<CGColorRef>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<GlassEffectLocalModifier>, GlassEffectContainerModifier>, GlassEffectContainerModifier>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for ModifiedContent(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>)
  {
    _s7SwiftUI15ModifiedContentVyACyACyAA22PrimitiveGlassItemView33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA0F23TransitionStateModifierAELLVGAA20_GeometryGroupEffectVGAA013_TraitWritingT0VyAA0rX3KeyVGGMaTm_0(255, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, type metadata accessor for ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>);
    v3 = v2;
    type metadata accessor for _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>(255);
    v6 = type metadata accessor for ModifiedContent(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<PrimitiveGlassItemView, GlassTransitionStateModifier>, _GeometryGroupEffect>, _TraitWritingModifier<TransitionTraitKey>>, _TraitWritingModifier<_LayoutTrait<GlassEntryLayout.Key>>>);
    }
  }
}

double _LuminanceToAlphaEffect.effectValue(size:)@<D0>(uint64_t a1@<X8>)
{
  v2 = swift_allocObject();
  _s7SwiftUI14GraphicsFilterOWOi23_(v7);
  v3 = v11;
  v2[5] = v10;
  v2[6] = v3;
  v2[7] = v12[0];
  *(v2 + 124) = *(v12 + 12);
  v4 = v7[1];
  v2[1] = v7[0];
  v2[2] = v4;
  result = *&v8;
  v6 = v9;
  v2[3] = v8;
  v2[4] = v6;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

double protocol witness for _RendererEffect.effectValue(size:) in conformance _LuminanceToAlphaEffect@<D0>(uint64_t a1@<X8>)
{
  v2 = swift_allocObject();
  _s7SwiftUI14GraphicsFilterOWOi23_(v7);
  v3 = v11;
  v2[5] = v10;
  v2[6] = v3;
  v2[7] = v12[0];
  *(v2 + 124) = *(v12 + 12);
  v4 = v7[1];
  v2[1] = v7[0];
  v2[2] = v4;
  result = *&v8;
  v6 = v9;
  v2[3] = v8;
  v2[4] = v6;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 12) = 10;
  return result;
}

void lazy protocol witness table accessor for type _LuminanceToAlphaEffect and conformance _LuminanceToAlphaEffect()
{
  if (!lazy protocol witness table cache variable for type _LuminanceToAlphaEffect and conformance _LuminanceToAlphaEffect)
  {
    swift_getWitnessTable(protocol conformance descriptor for _LuminanceToAlphaEffect, &type metadata for _LuminanceToAlphaEffect, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _LuminanceToAlphaEffect and conformance _LuminanceToAlphaEffect);
  }
}

uint64_t TranslationKickModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = v2;
  v48 = a2;
  swift_getWitnessTable(protocol conformance descriptor for TranslationKickModifier<A>);
  v7 = type metadata accessor for _ViewModifier_Content(255, a1, v5, v6);
  v9 = type metadata accessor for ModifiedContent(255, v7, &type metadata for KickModifier, v8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  v12 = v10;
  v43 = *(v11 + 8);
  v14 = v9;
  v46 = type metadata accessor for ScheduledAnimationModifier(255, v10, v43, v13);
  v16 = type metadata accessor for ModifiedContent(0, v9, v46, v15);
  v47 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v44 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v45 = &v42 - v19;
  v20 = v3 + *(a1 + 48);
  v21 = *v20;
  v22 = *(v20 + 16);
  if (v22)
  {
    v42 = *v20;
    v23 = one-time initialization token for sharedGraph;

    if (v23 != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v25 = *v22;
    if (Counter)
    {
      (*(v25 + 104))(1);

      v21 = v42;
    }

    else
    {
      (*(v25 + 120))(&v52);

      v21 = v52;
    }
  }

  v51 = v21;
  View.modifier<A>(_:)();
  v51 = v52;
  v26 = *(a1 + 36);
  v27 = *(v3 + *(a1 + 44) + 24);
  v29 = implicit closure #1 in TranslationKickModifier.body(content:)(v3, v12, v11, v28);
  v31 = v30;
  lazy protocol witness table accessor for type KickModifier and conformance KickModifier();
  v50[0] = &protocol witness table for _ViewModifier_Content<A>;
  v50[1] = v32;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v14, v50);
  v34 = v33;
  v35 = v3 + v26;
  v36 = v44;
  View.scheduledAnimation<A>(value:resetValue:delay:animation:)(v3, v35, v29, v31, v14, v12, v33, v43, v44, v27);

  WitnessTable = swift_getWitnessTable(protocol conformance descriptor for ScheduledAnimationModifier<A>, v46);
  v49[0] = v34;
  v49[1] = v38;
  swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v16, v49, WitnessTable);
  v39 = v45;
  static ViewBuilder.buildExpression<A>(_:)();
  v40 = *(v47 + 8);
  v40(v36, v16);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v40)(v39, v16);
}

void *implicit closure #1 in TranslationKickModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TranslationKickModifier(0, a2, a3, a4);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  (*(v8 + 16))(&v15 - v10, a1, v7, v9);
  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v8 + 32))(v13 + v12, v11, v7);
  return &async function pointer to partial apply for implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:);
}

uint64_t implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v7 = swift_task_alloc();
  v4[4] = v7;
  v9 = type metadata accessor for TranslationKickModifier(0, a3, a4, v8);
  *v7 = v4;
  v7[1] = implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:);

  return TranslationKickModifier.animate()(v9);
}

uint64_t implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:)(__n128 a1)
{

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x1EEE6DFA0](implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:), v2, v1);
}

uint64_t implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:)()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t TranslationKickModifier.animate()(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for ContinuousClock();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[10] = v5;
  v2[11] = v4;

  return MEMORY[0x1EEE6DFA0](TranslationKickModifier.animate(), v5, v4);
}

uint64_t TranslationKickModifier.animate()()
{
  v17 = v0;
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v2 + 44);
  *(v0 + 128) = v3;
  v4 = *(v1 + v3 + 16);
  v15 = *(v1 + v3);
  v16 = v4;
  v5 = specialized static Animation.spring(_:blendDuration:)(&v15, 0.0);
  v6 = swift_task_alloc();
  v7 = *(v2 + 16);
  *(v0 + 96) = v7;
  v6[2] = v7;
  v8 = *(v2 + 24);
  *(v0 + 104) = v8;
  v6[3] = v8;
  v6[4] = v1;
  *&v15 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v15, v5);

  specialized closure #1 in withTransaction<A>(_:_:)(v9, partial apply for closure #1 in TranslationKickModifier.animate());

  v10 = static Duration.seconds(_:)();
  v12 = v11;
  static Clock<>.continuous.getter();
  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  *v13 = v0;
  v13[1] = TranslationKickModifier.animate();

  return specialized Clock.sleep(for:tolerance:)(v10, v12, 0, 0, 1);
}

{
  v13 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v3 = v2 + *(v0 + 128);
  v10 = *(v0 + 96);

  v4 = *(v3 + 48);
  v11 = *(v3 + 32);
  v12 = v4;
  v5 = specialized static Animation.spring(_:blendDuration:)(&v11, 0.0);
  v6 = swift_task_alloc();
  *(v6 + 16) = v10;
  *(v6 + 32) = v2;
  *&v11 = 0;

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v11, v5);
  if (!v1)
  {

    specialized closure #1 in withTransaction<A>(_:_:)(v8, partial apply for closure #2 in TranslationKickModifier.animate());

    v9 = *(v0 + 8);

    return v9();
  }

  return result;
}

{
  v12 = v0;
  v1 = *(v0 + 40);
  v2 = v1 + *(v0 + 128);
  v9 = *(v0 + 96);

  v3 = *(v2 + 48);
  v10 = *(v2 + 32);
  v11 = v3;
  v4 = specialized static Animation.spring(_:blendDuration:)(&v10, 0.0);
  v5 = swift_task_alloc();
  *(v5 + 16) = v9;
  *(v5 + 32) = v1;
  *&v10 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v10, v4);

  specialized closure #1 in withTransaction<A>(_:_:)(v6, partial apply for closure #2 in TranslationKickModifier.animate());

  v7 = *(v0 + 8);

  return v7();
}

uint64_t TranslationKickModifier.animate()(__n128 a1)
{
  v3 = *v2;
  v3[15] = v1;

  v4 = v3[8];
  v5 = v3[7];
  v6 = v3[6];
  if (v1)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[10];
    v8 = v3[11];
    v9 = TranslationKickModifier.animate();
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[10];
    v8 = v3[11];
    v9 = TranslationKickModifier.animate();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t closure #1 in TranslationKickModifier.animate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranslationKickModifier(0, a2, a3, a4);
  v6 = *(a1 + *(result + 48) + 16);
  v7 = *(a1 + *(result + 40));
  if (v6)
  {
    return (*(*v6 + 128))(&v7, 0);
  }

  return result;
}

uint64_t closure #2 in TranslationKickModifier.animate()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for TranslationKickModifier(0, a2, a3, a4);
  v6 = *(a1 + *(result + 48) + 16);
  v7[0] = 0;
  v7[1] = 0;
  if (v6)
  {
    return (*(*v6 + 128))(v7, 0);
  }

  return result;
}

CGFloat protocol witness for ViewModifier.body(content:) in conformance KickModifier@<D0>(_OWORD *a1@<X8>)
{
  CGAffineTransformMakeTranslation(&v6, *v1, v1[1]);
  result = v6.a;
  v4 = *&v6.c;
  v5 = *&v6.tx;
  *a1 = *&v6.a;
  a1[1] = v4;
  a1[2] = v5;
  return result;
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for TranslationKickModifier(0, v6, v7, a4) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in closure #1 in ScheduledAnimationModifier.body(content:);

  return implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:)(v11, v4 + v9, v6, v7);
}

uint64_t type metadata completion function for TranslationKickModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for TranslationKickModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + v7;
  v9 = v6 + 7;
  v10 = ((((((v6 + 7 + ((v6 + v7) & ~v7)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 24;
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
    v18 = ((v9 + ((v3 + v8) & v14)) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((v9 + v17) & 0xFFFFFFFFFFFFFFF8);
    *v18 = *v19;
    v20 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
    v21 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
    v23 = *(v21 + 32);
    v22 = *(v21 + 48);
    v24 = *(v21 + 16);
    *(v20 + 64) = *(v21 + 64);
    *(v20 + 32) = v23;
    *(v20 + 48) = v22;
    *(v20 + 16) = v24;
    *v20 = *v21;
    v25 = (v20 + 79) & 0xFFFFFFFFFFFFFFF8;
    v26 = (v21 + 79) & 0xFFFFFFFFFFFFFFF8;
    *v25 = *v26;
    *(v25 + 16) = *(v26 + 16);
  }

  return v3;
}

double destroy for TranslationKickModifier(unint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(a1, v3);
  v5((*(v4 + 64) + a1 + *(v4 + 80)) & ~*(v4 + 80), v3);

  return result;
}

uint64_t initializeWithCopy for TranslationKickModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v15 + 32);
  v16 = *(v15 + 48);
  v18 = *(v15 + 16);
  *(v14 + 64) = *(v15 + 64);
  *(v14 + 32) = v17;
  *(v14 + 48) = v16;
  *(v14 + 16) = v18;
  *v14 = *v15;
  v19 = (v14 + 79) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + 79) & 0xFFFFFFFFFFFFFFF8;
  *v19 = *v20;
  *(v19 + 16) = *(v20 + 16);

  return a1;
}

uint64_t assignWithCopy for TranslationKickModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 24);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v14[1] = v15[1];
  v14[2] = v15[2];
  v14[3] = v15[3];
  v14[4] = v15[4];
  v14[5] = v15[5];
  v14[6] = v15[6];
  v14[7] = v15[7];
  v14[8] = v15[8];
  v16 = ((v14 + 79) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 79) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v16[1] = v17[1];
  v16[2] = v17[2];

  return a1;
}

uint64_t initializeWithTake for TranslationKickModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 32);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v17 = *(v15 + 32);
  v16 = *(v15 + 48);
  v18 = *(v15 + 16);
  *(v14 + 64) = *(v15 + 64);
  *(v14 + 32) = v17;
  *(v14 + 48) = v16;
  *(v14 + 16) = v18;
  *v14 = *v15;
  v19 = (v14 + 79) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v15 + 79) & 0xFFFFFFFFFFFFFFF8;
  v21 = *v20;
  *(v19 + 16) = *(v20 + 16);
  *v19 = v21;
  return a1;
}

uint64_t assignWithTake for TranslationKickModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 40);
  v7(a1, a2, v5);
  v8 = *(v6 + 64);
  v9 = *(v6 + 80);
  v10 = (v8 + v9 + a1) & ~v9;
  v11 = (v8 + v9 + a2) & ~v9;
  v7(v10, v11, v5);
  v12 = ((v8 + 7 + v10) & 0xFFFFFFFFFFFFFFF8);
  v13 = ((v8 + 7 + v11) & 0xFFFFFFFFFFFFFFF8);
  *v12 = *v13;
  v12[1] = v13[1];
  v14 = ((v12 + 23) & 0xFFFFFFFFFFFFFFF8);
  v15 = ((v13 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v14 = *v15;
  v14[1] = v15[1];
  v14[2] = v15[2];
  v14[3] = v15[3];
  v14[4] = v15[4];
  v14[5] = v15[5];
  v14[6] = v15[6];
  v14[7] = v15[7];
  v14[8] = v15[8];
  v16 = ((v14 + 79) & 0xFFFFFFFFFFFFFFF8);
  v17 = ((v15 + 79) & 0xFFFFFFFFFFFFFFF8);
  *v16 = *v17;
  v16[1] = v17[1];
  v16[2] = v17[2];

  return a1;
}

uint64_t getEnumTagSinglePayload for TranslationKickModifier(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = *(v4 + 80);
  v9 = v6 + v8;
  v10 = v6 + 7;
  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v11 = ((((((v10 + (v9 & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 24;
  v12 = a2 - v7;
  v13 = v11 & 0xFFFFFFF8;
  if ((v11 & 0xFFFFFFF8) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = v12 + 1;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *(a1 + v11);
      if (!v17)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v16 || (v17 = *(a1 + v11)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v20 = *(((((((v10 + ((a1 + v9) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 16);
    if (v20 >= 0xFFFFFFFF)
    {
      LODWORD(v20) = -1;
    }

    v21 = v20 - 1;
    if (v21 < 0)
    {
      v21 = -1;
    }

    return (v21 + 1);
  }

  v19 = v17 - 1;
  if (v13)
  {
    v19 = 0;
    LODWORD(v13) = *a1;
  }

  return v7 + (v13 | v19) + 1;
}

unsigned int *storeEnumTagSinglePayload for TranslationKickModifier(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = *(v5 + 80);
  v10 = v8 + v9;
  v11 = (v8 + v9) & ~v9;
  v12 = v8 + 7;
  v13 = ((((((v12 + v11) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v7 >= a3)
  {
    v17 = 0;
    v18 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v14 = a3 - v7;
    if (((((((v12 + v11) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 79) & 0xFFFFFFF8) == 0xFFFFFFE8)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          *(result + v13) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v13) = 0;
      }

      else if (v17)
      {
        *(result + v13) = 0;
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
      if (v6 < 0x7FFFFFFE)
      {
        v23 = ((((((v12 + ((result + v10) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          v23[1] = 0;
          v23[2] = 0;
          *v23 = a2 - 0x7FFFFFFF;
        }

        else
        {
          v23[2] = a2;
        }
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  if (v13)
  {
    v19 = 1;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = ~v7 + a2;
    v21 = result;
    bzero(result, v13);
    result = v21;
    *v21 = v20;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      *(result + v13) = v19;
    }

    else
    {
      *(result + v13) = v19;
    }
  }

  else if (v17)
  {
    *(result + v13) = v19;
  }

  return result;
}

void lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect> and conformance <> ModifiedContent<A, B>()
{
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect> and conformance <> ModifiedContent<A, B>)
  {
    v4[2] = v0;
    v4[3] = v1;
    type metadata accessor for ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect>(255);
    v4[0] = &protocol witness table for _ViewModifier_Content<A>;
    v4[1] = &protocol witness table for _TransformEffect;
    swift_getWitnessTable(protocol conformance descriptor for <> ModifiedContent<A, B>, v2, v4);
    atomic_store(v3, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<KickModifier>, _TransformEffect> and conformance <> ModifiedContent<A, B>);
  }
}

CFTypeRef CTFontDescriptorRef.size.getter()
{
  result = CTFontDescriptorCopyAttribute(v0, *MEMORY[0x1E6965848]);
  if (result)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL CTFontRef.mayRequireLanguageAwareOutsets.getter()
{
  SymbolicTraits = CTFontGetSymbolicTraits(v0);
  if (SymbolicTraits)
  {
    return 1;
  }

  v2 = SymbolicTraits;
  CTFontGetWeight();
  if (*MEMORY[0x1E6965940] < v3)
  {
    return 1;
  }

  return (v2 & 0xF0000000) == 0xA0000000 || (v2 & 0xF0000000) == -1879048192;
}

BOOL CTFontRef.isMonospaced.getter()
{
  v1 = CTFontCopyFontDescriptor(v0);
  v2 = CTFontDescriptorRef.isMonospaced.getter();

  return v2;
}

double CTFontRef.bodyLeading.getter()
{
  Ascent = CTFontGetAscent(v0);
  v2 = Ascent + CTFontGetDescent(v0);
  return v2 + CTFontGetLeading(v0);
}

BOOL CTFontDescriptorRef.isMonospaced.getter()
{
  SymbolicTraits = CTFontDescriptorGetSymbolicTraits();
  CTFontDescriptorRef.design.getter(&v2);
  if (v2 == 4)
  {
    if ((SymbolicTraits & 0x400) == 0)
    {
      return 0;
    }
  }

  else if ((SymbolicTraits & 0x400) == 0)
  {
    return v2 == 3;
  }

  return 1;
}

CTFontRef_optional __swiftcall CTFontRef.symbolicTraits(_:)(CTFontSymbolicTraits a1)
{
  Size = CTFontGetSize(v1);

  return CTFontCreateCopyWithSymbolicTraits(v1, Size, 0, a1, 0xFFFFFFFF);
}

CTFontRef CTFontRef.scaled(by:toMultipleOf:maintainVisualWeight:)(uint64_t a1, char a2, char a3, double a4)
{
  v5 = v4;
  if (a4 == 1.0)
  {

    return v4;
  }

  else
  {
    v11 = CTFontCopyFontDescriptor(v5);
    if (a3)
    {
      CTFontGetWeight();
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = CTFontDescriptorRef.scaled(by:toMultipleOf:maintainedVisualWeight:)(a1, a2 & 1, v13, (a3 & 1) == 0, a4);

    v15 = CTFontCreateWithFontDescriptor(v14, 0.0, 0);
    return v15;
  }
}

CTFontDescriptorRef CTFontDescriptorRef.scaled(by:toMultipleOf:maintainedVisualWeight:)(uint64_t a1, char a2, uint64_t a3, char a4, double a5)
{
  v6 = v5;
  if (a5 != 1.0)
  {
    v13 = *MEMORY[0x1E6965848];
    original = v6;
    v14 = 0.0;
    if (CTFontDescriptorCopyAttribute(v6, *MEMORY[0x1E6965848]) && (swift_dynamicCast() & 1) != 0)
    {
      v14 = v39;
    }

    if (a2)
    {
      v15 = v14 * a5;
      if (a4)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v16 = round(v14 * a5 / *&a1);
      v17 = round(v14 * a5);
      if (*&a1 == 1.0)
      {
        v15 = v17;
      }

      else
      {
        v15 = v16 * *&a1;
      }

      if (a4)
      {
        goto LABEL_17;
      }
    }

    if (v15 > 0.0)
    {
      v18 = (a5 + 1.0) * 0.5 * ((*&a3 + 1.0) * v14 / v15) + -1.0;
      v19 = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSDictionary, 0x1E695DF20);
      type metadata accessor for _ContiguousArrayStorage<(String, CGFloat)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Any, Any)>, &lazy cache variable for type metadata for (Any, Any), MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_18DDA6EB0;
      v21 = *MEMORY[0x1E6965898];
      type metadata accessor for CFStringRef(0);
      v23 = v22;
      *(v20 + 56) = v22;
      *(v20 + 32) = v21;
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_18DDA6EB0;
      v25 = *MEMORY[0x1E6965970];
      *(v24 + 56) = v23;
      *(v24 + 32) = v25;
      v26 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      v27 = v21;
      v28 = v25;
      v29 = [v26 initWithDouble_];
      *(v24 + 88) = type metadata accessor for CAMediaTimingFunction(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
      *(v24 + 64) = v29;
      v30 = NSDictionary.init(dictionaryLiteral:)();
      v31 = NSDictionary.init(dictionary:)();

      *(v20 + 88) = v19;
      *(v20 + 64) = v31;
      v32 = NSDictionary.init(dictionaryLiteral:)();
      isa = NSDictionary.init(dictionary:)();

LABEL_18:
      CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(original, isa);

      return CopyWithAttributes;
    }

LABEL_17:
    v34 = MEMORY[0x1E69E7DE0];
    type metadata accessor for _ContiguousArrayStorage<(CFStringRef, CGFloat)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, CGFloat)>, &lazy cache variable for type metadata for (CFStringRef, CGFloat), MEMORY[0x1E69E7DE0]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDA6EB0;
    *(inited + 32) = v13;
    *(inited + 40) = v15;
    v36 = v13;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (CFStringRef, CGFloat)(inited + 32, &lazy cache variable for type metadata for (CFStringRef, CGFloat), v34, type metadata accessor for (CFStringRef, CGFloat));
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    goto LABEL_18;
  }

  return v5;
}

uint64_t CTFontLegibilityWeight.init(_:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 == 2)
  {
    return -1;
  }

  else
  {
    return v1 & 1;
  }
}

CTFontDescriptorRef __swiftcall CTFontDescriptorRef.bold(_:)(Swift::Bool a1)
{
  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  result = CTFontDescriptorCreateCopyWithSymbolicTraits(v1, v2, 2u);
  if (!result)
  {

    return v4;
  }

  return result;
}

CTFontDescriptorRef __swiftcall CTFontDescriptorRef.italic(_:)(Swift::Bool a1)
{
  result = CTFontDescriptorCreateCopyWithSymbolicTraits(v1, a1, 1u);
  if (!result)
  {

    return v3;
  }

  return result;
}

CTFontDescriptorRef CTFontDescriptorRef.pointSize(_:)(double a1)
{
  v3 = MEMORY[0x1E69E7DE0];
  type metadata accessor for _ContiguousArrayStorage<(CFStringRef, CGFloat)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, CGFloat)>, &lazy cache variable for type metadata for (CFStringRef, CGFloat), MEMORY[0x1E69E7DE0]);
  inited = swift_initStackObject();
  v5 = MEMORY[0x1E6965848];
  *(inited + 16) = xmmword_18DDA6EB0;
  v6 = *v5;
  *(inited + 32) = v6;
  *(inited + 40) = a1;
  v7 = v6;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (CFStringRef, CGFloat)(inited + 32, &lazy cache variable for type metadata for (CFStringRef, CGFloat), v3, type metadata accessor for (CFStringRef, CGFloat));
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v1, isa);

  return CopyWithAttributes;
}

unint64_t CTFontDescriptorRef.design(_:)(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *MEMORY[0x1E6965898];
  v5 = CTFontDescriptorCopyAttribute(v1, *MEMORY[0x1E6965898]);
  v6 = MEMORY[0x1E69E7CA0];
  if (v5 && (*&v24 = v5, type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : Any], MEMORY[0x1E69E7CA0] + 8), result = swift_dynamicCast(), (result & 1) != 0))
  {
    v8 = *&v23[0];
  }

  else
  {
    result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    v8 = result;
  }

  v26 = v8;
  if (v3 > 1)
  {
    if (v3 == 2)
    {
LABEL_13:
      v9 = *MEMORY[0x1E69658C8];
      if (!*MEMORY[0x1E69658C8])
      {
        __break(1u);
LABEL_15:
        result = *MEMORY[0x1E69658E0];
        if (*MEMORY[0x1E69658E0])
        {
          v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          specialized Dictionary._Variant.removeValue(forKey:)(v10, v11, &v24);

          outlined destroy of (CFStringRef, CGFloat)(&v24, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E6720], _sypSgMaTm_7);
LABEL_20:
          type metadata accessor for _ContiguousArrayStorage<(CFStringRef, [String : Any])>(0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_18DDA6EB0;
          *(inited + 32) = v4;
          *(inited + 40) = v26;
          v20 = v4;
          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDySSypGTt0g5Tf4g_n(inited);
          swift_setDeallocating();
          outlined destroy of (CFStringRef, [String : Any])(inited + 32, &lazy cache variable for type metadata for (CFStringRef, [String : Any]), &lazy cache variable for type metadata for [String : Any], v6 + 8, type metadata accessor for [String : Any]);
          type metadata accessor for CFStringRef(0);
          type metadata accessor for [String : Any](0, &lazy cache variable for type metadata for [String : Any], v6 + 8);
          lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v2, isa);

          return CopyWithAttributes;
        }

LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      goto LABEL_18;
    }

    if (v3 != 3)
    {
      goto LABEL_15;
    }

    v9 = *MEMORY[0x1E69658C0];
    if (*MEMORY[0x1E69658C0])
    {
LABEL_18:
      v12 = v9;
      result = *MEMORY[0x1E69658E0];
      if (*MEMORY[0x1E69658E0])
      {
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v15 = v14;
        type metadata accessor for CFStringRef(0);
        v25 = v16;
        *&v24 = v12;
        outlined init with take of Any(&v24, v23);
        v17 = v12;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v23, v13, v15, isUniquelyReferenced_nonNull_native);

        v26 = v8;
        goto LABEL_20;
      }

      __break(1u);
      goto LABEL_22;
    }

    __break(1u);
  }

  if (!v3)
  {
    v9 = *MEMORY[0x1E69658B8];
    if (*MEMORY[0x1E69658B8])
    {
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_13;
  }

  v9 = *MEMORY[0x1E69658D0];
  if (*MEMORY[0x1E69658D0])
  {
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t CTFontDescriptorRef.width.getter()
{
  v1 = CTFontDescriptorCopyAttributes(v0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v10[0] = 0;
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E6965898]), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(v2 + 56) + 32 * v3, v10);

    type metadata accessor for [CFStringRef : Any](0, &lazy cache variable for type metadata for [CFStringRef : Any], MEMORY[0x1E69E7CA0] + 8);
    if (swift_dynamicCast())
    {
      v5 = v9;
      if (!*(v9 + 16))
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else
  {
  }

  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (!*(v5 + 16))
  {
LABEL_14:

    return 0;
  }

LABEL_10:
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69659C8]);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  outlined init with copy of Any(*(v5 + 56) + 32 * v6, v10);

  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

const __CTFontDescriptor *CTFontDescriptorRef.width(_:)(double a1)
{
  if (CTFontDescriptorIsSystemUIFont())
  {
    type metadata accessor for _ContiguousArrayStorage<(CFStringRef, [CFStringRef : CGFloat])>(0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDA6EB0;
    v3 = *MEMORY[0x1E6965898];
    *(inited + 32) = *MEMORY[0x1E6965898];
    v4 = MEMORY[0x1E69E7DE0];
    type metadata accessor for _ContiguousArrayStorage<(CFStringRef, CGFloat)>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(CFStringRef, CGFloat)>, &lazy cache variable for type metadata for (CFStringRef, CGFloat), MEMORY[0x1E69E7DE0]);
    v5 = swift_initStackObject();
    v6 = MEMORY[0x1E69659C8];
    *(v5 + 16) = xmmword_18DDA6EB0;
    v7 = *v6;
    *(v5 + 32) = *v6;
    *(v5 + 40) = a1;
    v8 = v3;
    v9 = v7;
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v5);
    swift_setDeallocating();
    outlined destroy of (CFStringRef, CGFloat)(v5 + 32, &lazy cache variable for type metadata for (CFStringRef, CGFloat), v4, type metadata accessor for (CFStringRef, CGFloat));
    *(inited + 40) = v10;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_SDyAD12CoreGraphics7CGFloatVGTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    outlined destroy of (CFStringRef, [String : Any])(inited + 32, &lazy cache variable for type metadata for (CFStringRef, [CFStringRef : CGFloat]), &lazy cache variable for type metadata for [CFStringRef : CGFloat], v4, type metadata accessor for [CFStringRef : Any]);
    type metadata accessor for CFStringRef(0);
    type metadata accessor for [CFStringRef : Any](0, &lazy cache variable for type metadata for [CFStringRef : CGFloat], v4);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(original, isa);

    return CopyWithAttributes;
  }

  v13 = *MEMORY[0x1E6965790];
  v14 = CTFontDescriptorCopyAttribute(original, *MEMORY[0x1E6965790]);
  if (v14)
  {
    v15 = v14;
    v16 = CTFontDescriptorCopyAttributes(original);
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    v18 = MEMORY[0x1E69E7CA0];
    if (v17)
    {
      *&v36 = 0;
      type metadata accessor for CFStringRef(0);
      lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    v38 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    specialized Dictionary._Variant.removeValue(forKey:)(*MEMORY[0x1E6965808], &v36);
    outlined destroy of (CFStringRef, CGFloat)(&v36, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E6720], _sypSgMaTm_7);
    ObjectType = swift_getObjectType();
    *&v36 = v15;
    outlined init with take of Any(&v36, v35);
    swift_unknownObjectRetain();
    v24 = v38;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v13, isUniquelyReferenced_nonNull_native);
    v38 = v24;
    v26 = *MEMORY[0x1E6965898];
    v27 = CTFontDescriptorCopyAttribute(original, *MEMORY[0x1E6965898]);
    if (v27 && (*&v36 = v27, type metadata accessor for [CFStringRef : Any](0, &lazy cache variable for type metadata for [CFStringRef : Any], v18 + 8), (swift_dynamicCast() & 1) != 0))
    {
      v28 = *&v35[0];
    }

    else
    {
      v28 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    }

    v29 = *MEMORY[0x1E69659C8];
    ObjectType = MEMORY[0x1E69E7DE0];
    *&v36 = a1;
    outlined init with take of Any(&v36, v35);
    v30 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v29, v30);
    type metadata accessor for [CFStringRef : Any](0, &lazy cache variable for type metadata for [CFStringRef : Any], v18 + 8);
    ObjectType = v31;
    *&v36 = v28;
    outlined init with take of Any(&v36, v35);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v35, v26, v32);
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    v33 = Dictionary._bridgeToObjectiveC()().super.isa;

    CopyWithAttributes = CTFontDescriptorCreateWithAttributes(v33);

    swift_unknownObjectRelease();
    return CopyWithAttributes;
  }

  _sypSgMaTm_7(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_18DDA6EB0;
  _StringGuts.grow(_:)(38);
  _StringGuts.grow(_:)(50);
  MEMORY[0x193ABEDD0](0xD00000000000002CLL, 0x800000018DD7D510);
  v20 = Double.description.getter();
  MEMORY[0x193ABEDD0](v20);

  MEMORY[0x193ABEDD0](2618, 0xE200000000000000);
  type metadata accessor for CTFontDescriptorRef(0);
  _print_unlocked<A, B>(_:_:)();

  MEMORY[0x193ABEDD0](2108704, 0xE300000000000000);
  v21 = StaticString.description.getter();
  MEMORY[0x193ABEDD0](v21);

  MEMORY[0x193ABEDD0](58, 0xE100000000000000);
  *&v35[0] = 84;
  v22 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x193ABEDD0](v22);

  MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
  *(v19 + 56) = MEMORY[0x1E69E6158];
  *(v19 + 32) = 0;
  *(v19 + 40) = 0xE000000000000000;
  print(_:separator:terminator:)();

  return original;
}

CTFontDescriptorRef __swiftcall CTFontDescriptorRef.clearFeatures()()
{
  v1 = v0;
  v2 = CTFontDescriptorCopyAttributes(v0);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *&v15 = 0;
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v17 = v3;
  v4 = *MEMORY[0x1E69657A8];
  v5 = *MEMORY[0x1E695E738];
  if (*MEMORY[0x1E695E738])
  {
    type metadata accessor for CFNullRef(0);
    v16 = v6;
    *&v15 = v5;
    outlined init with take of Any(&v15, v14);
    v7 = v4;
    v8 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, v7, isUniquelyReferenced_nonNull_native);

    v17 = v3;
  }

  else
  {
    v10 = v4;
    specialized Dictionary._Variant.removeValue(forKey:)(v10, &v15);

    outlined destroy of (CFStringRef, CGFloat)(&v15, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E6720], _sypSgMaTm_7);
  }

  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(v1, isa);

  return CopyWithAttributes;
}

CTFontDescriptorRef __swiftcall CTFontDescriptorRef.feature(type:selector:)(Swift::Int type, Swift::Int selector)
{
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v4 = Int._bridgeToObjectiveC()().super.super.isa;
  CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v2, isa, v4);

  return CopyWithFeature;
}

CTFontDescriptorRef CTFontDescriptorRef.upperCaseSmallCaps(_:)()
{
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v2 = Int._bridgeToObjectiveC()().super.super.isa;
  CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(v0, isa, v2);

  return CopyWithFeature;
}

void CTFontDescriptorRef.design.getter(char *a1@<X8>)
{
  CTFontRef.valueForTrait(_:)(*MEMORY[0x1E6965898], MEMORY[0x1E69655C8], &v7);
  if (v8)
  {
    type metadata accessor for [CFStringRef : Any](0, &lazy cache variable for type metadata for [CFStringRef : Any], MEMORY[0x1E69E7CA0] + 8);
    if (swift_dynamicCast())
    {
      v2 = *&v6[0];
      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of (CFStringRef, CGFloat)(&v7, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E6720], _sypSgMaTm_7);
  }

  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
LABEL_6:
  if (*MEMORY[0x1E69658E0])
  {
    if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E69658E0]), (v4 & 1) != 0))
    {
      outlined init with copy of Any(*(v2 + 56) + 32 * v3, v6);

      outlined init with take of Any(v6, &v7);
      outlined init with copy of Any(&v7, v6);
      type metadata accessor for CFStringRef(0);
      swift_dynamicCast();
      Font.Design.init(ctDesignIdentifier:)(v5, a1);
      __swift_destroy_boxed_opaque_existential_1(&v7);
    }

    else
    {

      *a1 = 4;
    }
  }

  else
  {
    __break(1u);
  }
}

CTFontDescriptorRef __swiftcall CTFontDescriptorRef.monospaced(_:)(Swift::Bool a1)
{
  v2 = CTFontDescriptorRef.isMonospaced.getter();
  if (!a1)
  {
    if (v2)
    {
      if (CTFontDescriptorIsSystemUIFont())
      {
        CTFontDescriptorRef.design.getter(&v19);
        if (v19 == 3)
        {
          v3 = 4;
          goto LABEL_5;
        }

        _sypSgMaTm_7(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Any>, MEMORY[0x1E69E6F90]);
        v6 = swift_allocObject();
        *(v6 + 16) = xmmword_18DDA6EB0;
        v19 = 0;
        v20 = 0xE000000000000000;
        _StringGuts.grow(_:)(38);
        v19 = 0;
        v20 = 0xE000000000000000;
        _StringGuts.grow(_:)(59);
        MEMORY[0x193ABEDD0](0xD000000000000039, 0x800000018DD7D570);
        v21 = original;
        type metadata accessor for CTFontDescriptorRef(0);
        _print_unlocked<A, B>(_:_:)();

        MEMORY[0x193ABEDD0](2108704, 0xE300000000000000);
        v7 = StaticString.description.getter();
        MEMORY[0x193ABEDD0](v7);

        MEMORY[0x193ABEDD0](58, 0xE100000000000000);
        v21 = 84;
        v8 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x193ABEDD0](v8);

        MEMORY[0x193ABEDD0](0xD00000000000001CLL, 0x800000018DD77470);
        v9 = v19;
        v10 = v20;
        *(v6 + 56) = MEMORY[0x1E69E6158];
        *(v6 + 32) = v9;
        *(v6 + 40) = v10;
        print(_:separator:terminator:)();
      }

      v5 = 0;
      goto LABEL_16;
    }

LABEL_10:

    return original;
  }

  if (v2)
  {
    goto LABEL_10;
  }

  if (CTFontDescriptorIsSystemUIFont())
  {
    v3 = 3;
LABEL_5:
    LOBYTE(v19) = v3;
    return CTFontDescriptorRef.design(_:)(&v19);
  }

  v5 = 1024;
LABEL_16:
  CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(original, v5, 0x400u);
  if (!CopyWithSymbolicTraits)
  {
    CopyWithSymbolicTraits = original;
  }

  v12 = CopyWithSymbolicTraits;
  SymbolicTraits = CTFontDescriptorGetSymbolicTraits();
  if (a1)
  {
    if ((SymbolicTraits & 0x400) != 0)
    {
      return v12;
    }
  }

  else if ((SymbolicTraits & 0x400) == 0 && !CTFontDescriptorRef.isMonospaced.getter())
  {
    return v12;
  }

  v14 = CTFontDescriptorCopyAttribute(original, *MEMORY[0x1E6965848]);
  if (v14)
  {
    v19 = v14;
    swift_dynamicCast();
  }

  Weight = CTFontDescriptorGetWeight();
  v16 = CTFontDescriptorCreateForUIType();

  if (Weight == 0.0)
  {
    return v16;
  }

  v17 = CTFontDescriptorRef.weight(_:)(Weight);

  return v17;
}

double CTFontRef.valueForTrait(_:)@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v7 = a2(v4);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for CFStringRef(0);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v10 & 1) != 0))
  {
    outlined init with copy of Any(*(v8 + 56) + 32 * v9, a3);
  }

  else
  {

    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t outlined destroy of (CFStringRef, CGFloat)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = (a4)(0, a2, a3);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t *specialized Dictionary.optimisticFilter(_:)(uint64_t (*a1)(__int128 *, void *), uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) <= 0x40uLL)
  {
    v5 = a3 + 64;
    v6 = 1 << *(a3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(a3 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    v11 = 0;
    v54 = 0;
    v51 = 1;
    v52 = 1;
    while (v8)
    {
LABEL_13:
      v13 = __clz(__rbit64(v8)) | (v11 << 6);
      v14 = (*(a3 + 48) + 16 * v13);
      v15 = *v14;
      v16 = v14[1];
      outlined init with copy of AnyTrackedValue(*(a3 + 56) + 40 * v13, v62);
      *&v61 = v15;
      *(&v61 + 1) = v16;
      *&v57 = v15;
      *(&v57 + 1) = v16;
      outlined init with take of _ViewList_Elements(v62, &v58);
      outlined init with copy of (key: EventID, value: EventType)(&v57, &v55);
      LOBYTE(v15) = a1(&v55, v56);
      outlined destroy of (key: EventID, value: EventType)(&v57);
      __swift_destroy_boxed_opaque_existential_1(v56);
      if (v15)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        v52 = 0;
        v17 = 1 << v10;
        if (v10 >= 0x40)
        {
          v17 = 0;
        }

        v54 |= v17;
      }

      else
      {
        v51 = 0;
      }

      v8 &= v8 - 1;
      ++v10;
    }

    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        v18 = a3;

        if (v52)
        {
          return _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7EventIDV_AC0E4Type_pTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
        }

        if (v51)
        {

          return v18;
        }

        v20 = 1 << *(a3 + 32);
        v21 = -1;
        if (v20 < 64)
        {
          v21 = ~(-1 << v20);
        }

        v22 = v21 & *(a3 + 64);
        v23 = (v20 + 63) >> 6;

        v24 = 0;
        v25 = 0;
        v26 = MEMORY[0x1E69E7CC8];
        while (v22)
        {
          v27 = v25;
LABEL_38:
          v30 = __clz(__rbit64(v22));
          v22 &= v22 - 1;
          v31 = v30 | (v27 << 6);
          v32 = (*(v18 + 48) + 16 * v31);
          v33 = *v32;
          v34 = v32[1];
          outlined init with copy of AnyTrackedValue(*(v18 + 56) + 40 * v31, &v55);
          *&v57 = v33;
          *(&v57 + 1) = v34;
          outlined init with take of _ViewList_Elements(&v55, &v58);
LABEL_39:
          v61 = v57;
          v62[0] = v58;
          v62[1] = v59;
          v63 = v60;
          v35 = v57;
          if (!v57)
          {

            return v26;
          }

          v36 = *(&v61 + 1);
          outlined init with take of _ViewList_Elements(v62, &v57);
          if (v24 == 0x8000000000000000)
          {
            goto LABEL_57;
          }

          if (v24 <= 0x3F && ((v54 >> v24) & 1) != 0)
          {
            outlined init with copy of AnyTrackedValue(&v57, &v55);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v38 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v36);
            v40 = v26[2];
            v41 = (v39 & 1) == 0;
            v42 = __OFADD__(v40, v41);
            v43 = v40 + v41;
            if (v42)
            {
              goto LABEL_58;
            }

            v44 = v39;
            if (v26[3] >= v43)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v50 = v38;
                specialized _NativeDictionary.copy()();
                v38 = v50;
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, isUniquelyReferenced_nonNull_native);
              v38 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v36);
              if ((v44 & 1) != (v45 & 1))
              {
                goto LABEL_61;
              }
            }

            v18 = a3;
            if (v44)
            {
              v46 = (v26[7] + 40 * v38);
              __swift_destroy_boxed_opaque_existential_1(v46);
              outlined init with take of _ViewList_Elements(&v55, v46);
              __swift_destroy_boxed_opaque_existential_1(&v57);
              ++v24;
            }

            else
            {
              v26[(v38 >> 6) + 8] |= 1 << v38;
              v47 = (v26[6] + 16 * v38);
              *v47 = v35;
              v47[1] = v36;
              outlined init with take of _ViewList_Elements(&v55, v26[7] + 40 * v38);
              __swift_destroy_boxed_opaque_existential_1(&v57);
              v48 = v26[2];
              v42 = __OFADD__(v48, 1);
              v49 = v48 + 1;
              if (v42)
              {
                goto LABEL_60;
              }

              v26[2] = v49;
              ++v24;
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1(&v57);
            ++v24;
          }
        }

        if (v23 <= v25 + 1)
        {
          v28 = v25 + 1;
        }

        else
        {
          v28 = v23;
        }

        v29 = v28 - 1;
        while (1)
        {
          v27 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v27 >= v23)
          {
            v22 = 0;
            v60 = 0;
            v58 = 0u;
            v59 = 0u;
            v25 = v29;
            v57 = 0u;
            goto LABEL_39;
          }

          v22 = *(v5 + 8 * v27);
          ++v25;
          if (v22)
          {
            v25 = v27;
            goto LABEL_38;
          }
        }

        __break(1u);
        break;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_13;
      }
    }

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
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    return specialized _NativeDictionary.filter(_:)(a1, a2, a3);
  }

  return result;
}

void key path setter for EventFilter.predicate : <A>EventFilter<A>(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed EventType) -> (@out Bool);
  a2[1] = v5;
}

uint64_t EventFilter.predicate.getter()
{
  v1 = *v0;

  return v1;
}

void EventFilter.predicate.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t EventFilter.init(predicate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static EventFilter._makeGesture(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *)@<X2>, uint64_t a4@<X4>, _DWORD *a5@<X8>, uint64_t a6@<X3>)
{
  v60 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v10 = a2[6];
  *v49 = a2[5];
  *&v49[16] = v10;
  *&v49[28] = *(a2 + 108);
  v11 = a2[4];
  v12 = a2[1];
  v44 = *a2;
  v45 = v12;
  v13 = a2[3];
  v46 = a2[2];
  v47 = v13;
  v48 = v11;
  *&v54 = __PAIR64__(*&v49[28], v9);
  v36 = type metadata accessor for EventFilterEvents(0, a4, a3, a6);
  swift_getWitnessTable(protocol conformance descriptor for EventFilterEvents<A>, v36);
  v37 = v14;
  type metadata accessor for Attribute<FilteredEvents>(0, &lazy cache variable for type metadata for Attribute<FilteredEvents>, &type metadata for FilteredEvents, MEMORY[0x1E698D388]);
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v54, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_TA_13, v35, v36, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  v41 = v47;
  v42 = v48;
  v43[0] = *v49;
  *(v43 + 12) = *&v49[12];
  v38 = v44;
  v17 = v52[0];
  v39 = v45;
  v40 = v46;
  v30 = *&v49[40];
  v29 = *&v49[32];
  outlined init with copy of _GestureInputs(&v44, &v54);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  *&v51[12] = *(v43 + 12);
  v50[4] = v42;
  *v51 = v43[0];
  v50[0] = v38;
  v50[1] = v39;
  v50[2] = v40;
  v50[3] = v41;
  *&v51[28] = OffsetAttribute2;
  *&v51[40] = v30;
  *&v51[32] = v29;
  *&v59[16] = *&v51[16];
  *&v59[28] = *&v51[28];
  v58 = v42;
  *v59 = v43[0];
  v54 = v38;
  v55 = v39;
  v56 = v40;
  v57 = v41;
  outlined init with copy of _GestureInputs(v50, v52);
  a3(&v54);
  v52[4] = v58;
  v52[5] = *v59;
  v53[0] = *&v59[16];
  *(v53 + 12) = *&v59[28];
  v52[0] = v54;
  v52[1] = v55;
  v52[2] = v56;
  v52[3] = v57;
  outlined destroy of _GestureInputs(v52);
  v28[0] = *a5;
  v28[1] = v17;
  v32 = type metadata accessor for GesturePhase(0, a4, v19, v20);
  v33 = type metadata accessor for EventFilterPhase(0, a4, v21, v22);
  swift_getWitnessTable(protocol conformance descriptor for EventFilterPhase<A>, v33);
  v34 = v23;
  v24 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v28, partial apply for closure #1 in Attribute.init<A>(_:), v31, v33, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
  v58 = v42;
  *v59 = v43[0];
  *&v59[12] = *(v43 + 12);
  v54 = v38;
  v55 = v39;
  v56 = v40;
  v57 = v41;
  *&v59[28] = OffsetAttribute2;
  *&v59[40] = v30;
  *&v59[32] = v29;
  result = outlined destroy of _GestureInputs(&v54);
  *a5 = v27;
  return result;
}

double Gesture.eventFilter(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = a1;
  v13 = type metadata accessor for EventFilter(0, AssociatedTypeWitness, v11, v12);
  swift_getWitnessTable(protocol conformance descriptor for EventFilter<A>, v13, v16, a2);
  Gesture.modifier<A>(_:)(&v16, a3, v13, a4, v14, a5);

  return result;
}

double Gesture.eventFilter(allowedTypes:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;

  Gesture.eventFilter(_:)(partial apply for closure #1 in Gesture.eventFilter(allowedTypes:), v8, a2, a3, a4);

  return result;
}

uint64_t closure #1 in Gesture.eventFilter(allowedTypes:)(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = (a2 + 32); ; ++i)
  {
    v17 = *i;
    outlined init with copy of AnyTrackedValue(v16, v18);
    v4 = *(&v17 + 1);
    v5 = *(*(&v17 + 1) + 56);
    v6 = v17;
    v7 = type metadata accessor for Optional();
    v8 = *(v7 - 8);
    v9 = MEMORY[0x1EEE9AC00](v7);
    v11 = &v15 - v10;
    v5(v18, v6, v4, v9);
    v12 = *(v6 - 8);
    if ((*(v12 + 48))(v11, 1, v6) != 1)
    {
      break;
    }

    (*(v8 + 8))(v11, v7);
    memset(v19, 0, 40);
    outlined destroy of EventType?(v19);
    if (!--v2)
    {
      return 0;
    }
  }

  *(&v19[1] + 8) = v17;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(v12 + 32))(boxed_opaque_existential_1, v11, v6);
  outlined destroy of EventType?(v19);
  return 1;
}

BOOL closure #1 in Gesture.eventFilter(allowedType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of AnyTrackedValue(a1, v16);
  v5 = *(a3 + 56);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-v9 - 8];
  v5(v16, a2, a3, v8);
  v11 = *(a2 - 8);
  v12 = (*(v11 + 48))(v10, 1, a2);
  if (v12 == 1)
  {
    (*(v7 + 8))(v10, v6);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  else
  {
    *(&v18 + 1) = a2;
    v19 = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
    (*(v11 + 32))(boxed_opaque_existential_1, v10, a2);
  }

  outlined destroy of EventType?(&v17);
  return v12 != 1;
}

double Gesture.eventFilter(allowedType:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  Gesture.eventFilter(_:)(a6, v13, a3, a4, x8_0);

  return result;
}

BOOL closure #1 in Gesture.eventFilter(excludedType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  outlined init with copy of AnyTrackedValue(a1, v16);
  v5 = *(a3 + 56);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v16[-v9 - 8];
  v5(v16, a2, a3, v8);
  v11 = *(a2 - 8);
  v12 = (*(v11 + 48))(v10, 1, a2);
  if (v12 == 1)
  {
    (*(v7 + 8))(v10, v6);
    v17 = 0u;
    v18 = 0u;
    v19 = 0;
  }

  else
  {
    *(&v18 + 1) = a2;
    v19 = a3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v17);
    (*(v11 + 32))(boxed_opaque_existential_1, v10, a2);
  }

  outlined destroy of EventType?(&v17);
  return v12 == 1;
}

double Gesture.eventFilter<A>(_:allowOtherTypes:_:)@<D0>(char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>)
{
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  *(v17 + 32) = a7;
  *(v17 + 40) = a8;
  *(v17 + 48) = a2;
  *(v17 + 56) = a3;
  *(v17 + 64) = a4;

  Gesture.eventFilter(_:)(partial apply for closure #1 in Gesture.eventFilter<A>(_:allowOtherTypes:_:), v17, a5, a7, x8_0);

  return result;
}

uint64_t closure #1 in Gesture.eventFilter<A>(_:allowOtherTypes:_:)(uint64_t a1, char a2, uint64_t (*a3)(_BYTE *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v21 = a3;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22[-v14 - 8];
  v16 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v22[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  outlined init with copy of AnyTrackedValue(a1, v22);
  (*(a8 + 56))(v22, a6, a8);
  if ((*(v16 + 48))(v15, 1, a6) == 1)
  {
    (*(v13 + 8))(v15, v12);
  }

  else
  {
    (*(v16 + 32))(v19, v15, a6);
    a2 = v21(v19);
    (*(v16 + 8))(v19, a6);
  }

  return a2 & 1;
}

double EventFilterEvents.modifier.getter@<D0>(uint64_t a2@<X1>, void *a3@<X8>, uint64_t x2_0@<X2>, uint64_t a4@<X3>)
{
  type metadata accessor for EventFilter(0, a2, x2_0, a4);
  Value = AGGraphGetValue();
  v8 = *Value;
  v7 = Value[1];
  *a3 = v8;
  a3[1] = v7;

  return result;
}

unint64_t *EventFilterEvents.value.getter(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  type metadata accessor for [EventID : EventType](0);
  v5 = *AGGraphGetValue();
  v8[2] = a2;
  v9 = v3;
  v10 = v4;

  v6 = specialized Dictionary.optimisticFilter(_:)(partial apply for closure #1 in EventFilterEvents.value.getter, v8, v5);

  AGGraphGetValue();
  return v6;
}

uint64_t closure #1 in EventFilterEvents.value.getter(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  outlined init with copy of AnyTrackedValue(a2, v12);
  v8 = EventFilterEvents.modifier.getter(a4, &v10, v6, v7);
  LOBYTE(a4) = v10(v12, v8);

  outlined destroy of (key: EventID, value: EventType)(v11);
  return a4 & 1;
}

uint64_t EventFilterPhase.phase.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = type metadata accessor for GesturePhase(0, a2, a3, a4);
  Value = AGGraphGetValue();
  v8 = *(*(v6 - 8) + 16);

  return v8(a5, Value, v6);
}

unint64_t *protocol witness for Rule.value.getter in conformance EventFilterEvents<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = EventFilterEvents.value.getter(*v2, *(a1 + 16));
  *a2 = result;
  *(a2 + 8) = v5 & 1;
  return result;
}

uint64_t EventFilterPhase.value.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(AGGraphGetValue() + 8) == 1)
  {
    type metadata accessor for GesturePhase(0, a2, v5, v6);

    return swift_storeEnumTagMultiPayload();
  }

  else
  {

    return EventFilterPhase.phase.getter(a2, v5, v6, a3);
  }
}

unint64_t *specialized _NativeDictionary.filter(_:)(uint64_t (*a1)(void *, void *), uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v9, v7, a3, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v11 = swift_slowAlloc();
  v12 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n(v11, v7, a3, v5);
  result = MEMORY[0x193AC4820](v11, -1, -1);
  if (!v3)
  {
    return v12;
  }

  return result;
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  v27 = a4;
  v23 = result;
  v24 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 56);
    v17 = (*(a3 + 48) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
    v26[0] = v19;
    v26[1] = v18;
    outlined init with copy of AnyTrackedValue(v16 + 40 * v15, v25);
    v20 = v27(v26, v25);
    result = __swift_destroy_boxed_opaque_existential_1(v25);
    if (v4)
    {
      return result;
    }

    if (v20)
    {
      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
        return specialized _NativeDictionary.extractDictionary(using:count:)(v23, a2, v24, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(v23, a2, v24, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVy7SwiftUI7EventIDVAH0K4Type_pG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab8VKXEfU_7i3UI7k9IDV_AI0J4M5_pTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAjhK_pIsgnndzo_Tf1nc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v44 = type metadata accessor for URL();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = v36 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  type metadata accessor for _DictionaryStorage<URL, WeakBox<CUICatalog>>(0);
  result = static _DictionaryStorage.allocate(capacity:)();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v36[1] = v42 + 16;
  v37 = result;
  v43 = v42 + 32;
  v16 = result + 64;
  v38 = a1;
  v36[0] = a4;
  v17 = v44;
  while (v14)
  {
    v18 = v9;
    v19 = __clz(__rbit64(v14));
    v40 = (v14 - 1) & v14;
LABEL_16:
    v22 = v19 | (v15 << 6);
    v23 = a4[6];
    v24 = v42;
    v41 = *(v42 + 72);
    v25 = v39;
    (*(v42 + 16))(v39, v23 + v41 * v22, v17);
    outlined init with copy of WeakBox<CUICatalog>(a4[7] + 8 * v22, v46);
    v26 = *(v24 + 32);
    v9 = v18;
    v26(v18, v25, v17);
    outlined init with take of WeakBox<CUICatalog>(v46, v45);
    v13 = v37;
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v27 = -1 << *(v13 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      a1 = v38;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v16 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
    a1 = v38;
LABEL_26:
    *(v16 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v26((*(v13 + 48) + v30 * v41), v9, v44);
    result = outlined init with take of WeakBox<CUICatalog>(v45, *(v13 + 56) + 8 * v30);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v36[0];
    v14 = v40;
    if (!a3)
    {
      return v13;
    }
  }

  v20 = v15;
  while (1)
  {
    v15 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v21 = a1[v15];
    ++v20;
    if (v21)
    {
      v18 = v9;
      v19 = __clz(__rbit64(v21));
      v40 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      type metadata accessor for _DictionaryStorage<NSAttributedStringKey, Any>(0);
      v8 = static _DictionaryStorage.allocate(capacity:)();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 64;
      v29 = v4;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v30 = (v10 - 1) & v10;
LABEL_16:
        v16 = v13 | (v11 << 6);
        v17 = *(*(v4 + 48) + 8 * v16);
        outlined init with copy of Any(*(v4 + 56) + 32 * v16, v32);
        outlined init with take of Any(v32, v31);
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        Hasher.init(_seed:)();
        v18 = v17;
        String.hash(into:)();
        v19 = Hasher._finalize()();

        v20 = -1 << *(v9 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          v24 = 0;
          v25 = (63 - v20) >> 6;
          while (++v22 != v25 || (v24 & 1) == 0)
          {
            v26 = v22 == v25;
            if (v22 == v25)
            {
              v22 = 0;
            }

            v24 |= v26;
            v27 = *(v12 + 8 * v22);
            if (v27 != -1)
            {
              v23 = __clz(__rbit64(~v27)) + (v22 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        *(*(v9 + 48) + 8 * v23) = v18;
        outlined init with take of Any(v31, (*(v9 + 56) + 32 * v23));
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        v4 = v29;
        v10 = v30;
        if (!v5)
        {
          return;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          return;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v30 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

{
  if (a3)
  {
    v4 = a4;
    v5 = a3;
    if (*(a4 + 16) == a3)
    {
    }

    else
    {
      type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item>(0);
      v8 = static _DictionaryStorage.allocate(capacity:)();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 64;
      v29 = v4;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = v13 | (v11 << 6);
        v17 = *(*(v4 + 48) + 8 * v16);
        v18 = *(*(v4 + 56) + 8 * v16);
        Hasher.init(_seed:)();
        MEMORY[0x193AC11A0](v17);
        v19 = Hasher._finalize()();
        v20 = -1 << *(v9 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          v24 = 0;
          v25 = (63 - v20) >> 6;
          while (++v22 != v25 || (v24 & 1) == 0)
          {
            v26 = v22 == v25;
            if (v22 == v25)
            {
              v22 = 0;
            }

            v24 |= v26;
            v27 = *(v12 + 8 * v22);
            if (v27 != -1)
            {
              v23 = __clz(__rbit64(~v27)) + (v22 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        *(*(v9 + 48) + 8 * v23) = v17;
        *(*(v9 + 56) + 8 * v23) = v18;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        v4 = v29;
        if (!v5)
        {
          return;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          return;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

void specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v5 = a3;
    if (a4[2] == a3)
    {
    }

    else
    {
      type metadata accessor for _DictionaryStorage<Int, ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item>(0, &lazy cache variable for type metadata for _DictionaryStorage<Int, ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item>, type metadata accessor for ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
      v8 = static _DictionaryStorage.allocate(capacity:)();
      v9 = v8;
      if (a2 < 1)
      {
        v10 = 0;
      }

      else
      {
        v10 = *a1;
      }

      v11 = 0;
      v12 = v8 + 64;
      while (v10)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v16 = v13 | (v11 << 6);
        v17 = *(a4[6] + 8 * v16);
        v18 = *(a4[7] + 8 * v16);
        v19 = MEMORY[0x193AC1170](*(v9 + 40), v17);
        v20 = -1 << *(v9 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          v24 = 0;
          v25 = (63 - v20) >> 6;
          while (++v22 != v25 || (v24 & 1) == 0)
          {
            v26 = v22 == v25;
            if (v22 == v25)
            {
              v22 = 0;
            }

            v24 |= v26;
            v27 = *(v12 + 8 * v22);
            if (v27 != -1)
            {
              v23 = __clz(__rbit64(~v27)) + (v22 << 6);
              goto LABEL_26;
            }
          }

          goto LABEL_30;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        *(*(v9 + 48) + 8 * v23) = v17;
        *(*(v9 + 56) + 8 * v23) = v18;
        ++*(v9 + 16);
        if (__OFSUB__(v5--, 1))
        {
          goto LABEL_31;
        }

        if (!v5)
        {
          return;
        }
      }

      v14 = v11;
      while (1)
      {
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v11 >= a2)
        {
          return;
        }

        v15 = a1[v11];
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
    }
  }
}

uint64_t outlined destroy of (key: EventID, value: EventType)(uint64_t a1)
{
  type metadata accessor for (key: EventID, value: EventType)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed EventType) -> (@unowned Bool)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

void type metadata accessor for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheItem>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheItem>)
  {
    type metadata accessor for LazyLayoutCacheItem();
    lazy protocol witness table accessor for type _ViewList_ID.Canonical and conformance _ViewList_ID.Canonical();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<_ViewList_ID.Canonical, LazyLayoutCacheItem>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Subview.ID, ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<Subview.ID, ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item>)
  {
    type metadata accessor for ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item(255);
    lazy protocol witness table accessor for type Subview.ID and conformance Subview.ID();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<Subview.ID, ForEachState<Slice<SubviewsCollection>, Subview.ID, Subview>.Item>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<Int, ForEachState<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>.Item>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = type metadata accessor for _DictionaryStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t outlined destroy of EventType?(uint64_t a1)
{
  type metadata accessor for EventType?(0, &lazy cache variable for type metadata for EventType?, type metadata accessor for EventType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata accessor for EventType?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t outlined init with copy of WeakBox<CUICatalog>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EventType?(0, &lazy cache variable for type metadata for WeakBox<CUICatalog>, type metadata accessor for CUICatalog, type metadata accessor for WeakBox);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of WeakBox<CUICatalog>(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EventType?(0, &lazy cache variable for type metadata for WeakBox<CUICatalog>, type metadata accessor for CUICatalog, type metadata accessor for WeakBox);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void type metadata accessor for _DictionaryStorage<_ViewList_ID.Canonical, CanvasSymbols.Child>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3();
    v6 = type metadata accessor for _DictionaryStorage();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void type metadata accessor for _DictionaryStorage<GlassContainer.Entry.StableID, ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item>)
  {
    type metadata accessor for ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item(255);
    lazy protocol witness table accessor for type GlassContainer.Entry.StableID and conformance GlassContainer.Entry.StableID();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Entry.StableID, ForEachState<[GlassContainer.Entry], GlassContainer.Entry.StableID, ModifiedContent<ModifiedContent<ZStack<GlassEntryContainerView>, _TraitWritingModifier<_LayoutTrait<GlassEffectLayout.Key>>>, _TraitWritingModifier<TransitionTraitKey>>>.Item>);
    }
  }
}

void type metadata accessor for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>)
  {
    type metadata accessor for ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item(255);
    lazy protocol witness table accessor for type GlassContainer.Item.ID and conformance GlassContainer.Item.ID();
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<GlassContainer.Item.ID, ForEachState<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>.Item>);
    }
  }
}

void type metadata accessor for Attribute<FilteredEvents>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t specialized getter of itemTransform #1 in static GlassEffectGroupModifier._makeView(modifier:inputs:body:)(_BYTE *a1, int a2)
{
  if (a1[4] != 1)
  {
    return *a1;
  }

  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for (_:)();
  lazy protocol witness table accessor for type GlassEffectGroupModifier.ItemTransform and conformance GlassEffectGroupModifier.ItemTransform();
  v3 = Attribute.init<A>(body:value:flags:update:)();
  swift_beginAccess();
  result = v3;
  *a1 = v3;
  a1[4] = 0;
  return result;
}

void closure #1 in GlassEffectGroupModifier.ItemTransform.updateValue()(char **a1, uint64_t a2, uint64_t a3, char a4, unsigned int a5)
{
  if (a2)
  {
    if ((a4 & 1) == 0)
    {
      v5 = *a1;
      v6 = *(*a1 + 2);
      if (v6)
      {
        v10 = ~(a5 << 32) + a5;

        v11 = 0;
        v12 = 0;
        while (1)
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
          }

          if (v12 >= *(v5 + 2))
          {
            break;
          }

          v13 = &v5[v11];
          *&v5[v11 + 160] = a2;

          if (v12 >= *(v5 + 2))
          {
            goto LABEL_19;
          }

          *(v13 + 21) = a3;
          v13[176] = 0;
          v14 = *(v13 + 38);
          if (v14 != -1 && a5)
          {
            v15 = a5;
            if (v14)
            {
              v15 = a5;
              if (a5 != -1)
              {
                v16 = (v10 + (v14 << 32)) ^ ((v10 + (v14 << 32)) >> 22);
                v17 = 9 * ((v16 + ~(v16 << 13)) ^ ((v16 + ~(v16 << 13)) >> 8));
                v18 = (v17 ^ (v17 >> 15)) + ~((v17 ^ (v17 >> 15)) << 27);
                v15 = (v18 >> 31) ^ v18;
              }
            }

            *(v13 + 38) = v15;
          }

          ++v12;
          v11 += 656;
          if (v6 == v12)
          {

            *a1 = v5;
            return;
          }
        }

        __break(1u);
LABEL_19:
        __break(1u);
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for GlassEffectGroupModifier(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for GlassEffectGroupModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

Swift::Void __swiftcall DisplayList.ViewUpdater.ViewInfo.Seeds.invalidate()()
{
  if (*v0)
  {
    *v0 = ~*v0 | 1;
  }

  if (v0[1])
  {
    v0[1] = ~v0[1] | 1;
  }

  if (v0[2])
  {
    v0[2] = ~v0[2] | 1;
  }

  if (v0[3])
  {
    v0[3] = ~v0[3] | 1;
  }

  if (v0[4])
  {
    v0[4] = ~v0[4] | 1;
  }

  if (v0[5])
  {
    v0[5] = ~v0[5] | 1;
  }

  if (v0[6])
  {
    v0[6] = ~v0[6] | 1;
  }

  if (v0[7])
  {
    v0[7] = ~v0[7] | 1;
  }

  if (v0[8])
  {
    v0[8] = ~v0[8] | 1;
  }
}

uint64_t DisplayList.ViewUpdater.destroy(rootView:)(uint64_t a1)
{
  DisplayList.ViewUpdater.effectiveRootPlatform.getter(v5);
  v5[1] = a1;
  v5[2] = 0;
  v5[3] = 0x7FF0000000000000;
  v5[4] = 0;
  swift_beginAccess();
  swift_unknownObjectRetain();
  DisplayList.ViewUpdater.Container.removeRemaining(viewCache:)((v1 + 40));
  v5[0] = 0x7FF0000000000000;
  DisplayList.ViewUpdater.ViewCache.reclaim(time:)(v3);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t DisplayList.ViewUpdater.deinit()
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

  return v0;
}

uint64_t assignWithCopy for DisplayList.ViewUpdater.ViewInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  *(a1 + 16) = v4;
  v6 = v4;

  *(a1 + 24) = *(a2 + 24);
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 65) = *(a2 + 65);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 92) = *(a2 + 92);
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 98) = *(a2 + 98);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 102) = *(a2 + 102);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 113) = *(a2 + 113);
  *(a1 + 120) = *(a2 + 120);
  return a1;
}

__n128 __swift_memcpy18_2(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DisplayList.ViewUpdater.ViewInfo.Seeds(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 18))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DisplayList.ViewUpdater.ViewInfo.Seeds(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 18) = v3;
  return result;
}

double AnyViewFactory.encoding()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double PlatformGroupFactory.renderPlatformGroup(_:in:size:renderer:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v9 = a2;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  DisplayList.GraphicsRenderer.render(list:in:)(&v6, &v9);

  return result;
}

uint64_t RendererLeafView<>.content()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 16));
  result = (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  *a3 = v7 | 0x9000000000000000;
  return result;
}

{
  v7 = swift_allocObject();
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 16));
  result = (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  *a3 = v7 | 0x8000000000000000;
  return result;
}

double protocol witness for PlatformGroupFactory.renderPlatformGroup(_:in:size:renderer:) in conformance CoreInteractionRepresentableEffect<A>(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 12);
  v9 = a2;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  DisplayList.GraphicsRenderer.render(list:in:)(&v6, &v9);

  return result;
}

void _DisplayList_ViewFactory.identity.getter(_DWORD *a1@<X8>)
{
  _DisplayList_ViewFactory.identity.getter(a1);
}

{
  *a1 = 0;
}

uint64_t RendererLeafView<>.content()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v7 + 16));
  result = (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v3, a1);
  *a3 = v7 | 0xD000000000000000;
  return result;
}

uint64_t CodableViewFactory.encode(to:)(__int128 *a1)
{
  v3 = type metadata accessor for String.Encoding();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v1[3];
  v8 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v7);
  (*(v8 + 16))(&v35, v7, v8);
  if (*(&v35 + 1))
  {
    v38 = v35;
    outlined init with take of Decodable & Encodable(&v36, &v39);
    v9 = v38;
    outlined init with take of Decodable & Encodable(&v39, &v41);
    if (v9 == __PAIR128__(0xE000000000000000, 0) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v10 = v44;
    }

    else
    {
      ProtobufEncoder.encodeVarint(_:)(0xAuLL);
      static String.Encoding.utf8.getter();
      v31 = String.data(using:allowLossyConversion:)();
      v33 = v32;

      (*(v4 + 8))(v6, v3);
      if (v33 >> 60 == 15)
      {
        lazy protocol witness table accessor for type ProtobufEncoder.EncodingError and conformance ProtobufEncoder.EncodingError();
        swift_allocError();
        swift_willThrow();
        return __swift_destroy_boxed_opaque_existential_1(&v41);
      }

      v34 = v44;
      specialized Data._Representation.withUnsafeBytes<A>(_:)(v31, v33, a1);
      v10 = v34;
      outlined consume of Data?(v31, v33);
    }

    v11 = v42;
    v12 = v43;
    v13 = __swift_project_boxed_opaque_existential_1(&v41, v42);
    v15 = *(a1 + 2);
    v14 = *(a1 + 3);
    v16 = *(a1 + 4);
    v38 = *a1;
    *&v39 = v15;
    *(&v39 + 1) = v14;
    v40 = v16;

    v17 = ProtobufEncoder.binaryPlistData<A>(for:)(v13, v11, v12);
    v19 = v18;

    if (v10)
    {
      return __swift_destroy_boxed_opaque_existential_1(&v41);
    }

    ProtobufEncoder.encodeVarint(_:)(0x12uLL);
    v20 = *(a1 + 1);
    v21 = *(a1 + 3);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 16) + 1, 1, v21);
      v21 = result;
    }

    v24 = *(v21 + 16);
    v23 = *(v21 + 24);
    if (v24 >= v23 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 16) = v24 + 1;
    *(v21 + 8 * v24 + 32) = v20;
    *(a1 + 3) = v21;
    if (!__OFADD__(v20, 1))
    {
      *(a1 + 1) = v20 + 1;
      Data.encode(to:)(a1, v17, v19);
      ProtobufEncoder.endLengthDelimited()();
      outlined consume of Data._Representation(v17, v19);
      return __swift_destroy_boxed_opaque_existential_1(&v41);
    }

    __break(1u);
  }

  else
  {
    outlined destroy of (id: String, data: Decodable & Encodable)?(&v35, &lazy cache variable for type metadata for (id: String, data: Decodable & Encodable)?, type metadata accessor for (id: String, data: Decodable & Encodable));
    v25 = *(a1 + 2);
    v35 = *a1;
    v36 = v25;
    v37 = *(a1 + 24);
    ProtobufEncoder.archiveHost.getter(&v38);
    v26 = *(&v39 + 1);
    if (*(&v39 + 1))
    {
      v27 = v40;
      __swift_project_boxed_opaque_existential_1(&v38, *(&v39 + 1));
      v28 = v1[3];
      v29 = v1[4];
      __swift_project_boxed_opaque_existential_1(v1, v28);
      v30 = (*(v29 + 8))(v28, v29);
      (*(v27 + 8))(v30, v26, v27);
      return __swift_destroy_boxed_opaque_existential_1(&v38);
    }

    else
    {
      return outlined destroy of (id: String, data: Decodable & Encodable)?(&v38, &lazy cache variable for type metadata for AnyArchivedViewHost?, type metadata accessor for AnyArchivedViewHost);
    }
  }

  return result;
}

double EmptyViewFactory.renderPlatformGroup(_:in:size:renderer:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  specialized GraphicsContext.drawLayer(flags:content:)(0, a2, a3, a4);
  *&v12[0] = a2;
  v9 = v5;
  v10 = v6;
  v11 = v7;

  DisplayList.GraphicsRenderer.render(list:in:)(&v9, v12);

  return result;
}

double protocol witness for PlatformGroupFactory.renderPlatformGroup(_:in:size:renderer:) in conformance EmptyViewFactory(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  specialized GraphicsContext.drawLayer(flags:content:)(0, a2, a3, a4);
  *&v12[0] = a2;
  v9 = v5;
  v10 = v6;
  v11 = v7;

  DisplayList.GraphicsRenderer.render(list:in:)(&v9, v12);

  return result;
}

uint64_t EmptyViewFactory.makeView()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AnyViewStorage<EmptyView>(0, a2, a3, a4);

  return swift_allocObject();
}

void specialized PlatformLayerFactory.renderPlatformLayer(in:size:renderer:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  swift_beginAccess();
  if (*(a2 + 112) != 2)
  {
    _StringGuts.grow(_:)(41);

    v9 = _typeName(_:qualified:)();
    MEMORY[0x193ABEDD0](v9);

    MEMORY[0x193ABEDD0](46, 0xE100000000000000);
    specialized static Log.externalWarning(_:)(0xD000000000000026, 0x800000018DD76060);

    specialized GraphicsContext.drawLayer(flags:content:)(0, a1, a4, a5);
  }
}

uint64_t getEnumTagSinglePayload for CodableViewFactory.Error(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CodableViewFactory.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for CodableViewFactory.Error(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void type metadata accessor for (id: String, data: Decodable & Encodable)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (id: String, data: Decodable & Encodable))
  {
    type metadata accessor for Decodable & Encodable();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (id: String, data: Decodable & Encodable));
    }
  }
}

uint64_t outlined destroy of (id: String, data: Decodable & Encodable)?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for (id: String, data: Decodable & Encodable)?(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for (id: String, data: Decodable & Encodable)?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double AnyShape.path(in:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(*a1 + 80))(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

void AnyShape.animatableData.setter(void *a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(a1, v7);
    (*(*v5 + 104))(v7);
    outlined destroy of _AnyAnimatableData(a1);
  }

  else
  {
    v6 = (*(*v5 + 120))(a1);
    outlined destroy of _AnyAnimatableData(a1);

    *v2 = v6;
  }
}

uint64_t _AnyShapeBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 152) - 8) + 32))(v2 + *(*v2 + 168), a1);
  return v2;
}

void key path setter for AnyShape.animatableData : AnyShape(void *a1, uint64_t *a2)
{
  outlined init with copy of _AnyAnimatableData(a1, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *a2;
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(v7, v6);
    (*(*v4 + 104))(v6);
    outlined destroy of _AnyAnimatableData(v7);
  }

  else
  {
    v5 = (*(*v4 + 120))(v7);
    outlined destroy of _AnyAnimatableData(v7);

    *a2 = v5;
  }
}

uint64_t (*AnyShape.animatableData.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  (*(**v1 + 96))();
  return AnyShape.animatableData.modify;
}

void AnyShape.animatableData.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[15];
  if (a2)
  {
    outlined init with copy of _AnyAnimatableData(*a1, v2 + 5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      outlined init with copy of _AnyAnimatableData(v2 + 5, v2 + 10);
      (*(*v5 + 104))(v2 + 10);
      outlined destroy of _AnyAnimatableData((v2 + 5));
    }

    else
    {
      v8 = v2[15];
      v9 = (*(*v5 + 120))(v2 + 5);
      outlined destroy of _AnyAnimatableData((v2 + 5));

      *v8 = v9;
    }

    goto LABEL_7;
  }

  v6 = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v3;
  if (v6)
  {
    outlined init with copy of _AnyAnimatableData(v2, v2 + 5);
    (*(*v7 + 104))(v2 + 5);
LABEL_7:
    outlined destroy of _AnyAnimatableData(v2);
    goto LABEL_9;
  }

  v10 = v2[15];
  v11 = (*(*v7 + 120))(v2);
  outlined destroy of _AnyAnimatableData(v2);

  *v10 = v11;
LABEL_9:

  free(v2);
}

void protocol witness for Animatable.animatableData.setter in conformance AnyShape(void *a1)
{
  v2 = v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *v1;
  if (isUniquelyReferenced_nonNull_native)
  {
    outlined init with copy of _AnyAnimatableData(a1, v7);
    (*(*v5 + 104))(v7);
    outlined destroy of _AnyAnimatableData(a1);
  }

  else
  {
    v6 = (*(*v5 + 120))(a1);
    outlined destroy of _AnyAnimatableData(a1);

    *v2 = v6;
  }
}

void (*protocol witness for Animatable.animatableData.modify in conformance AnyShape(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x80uLL);
  }

  *a1 = v3;
  *(v3 + 120) = v1;
  (*(**v1 + 96))();
  return AnyShape.animatableData.modify;
}

uint64_t type metadata completion function for _AnyShapeBox(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t _AnyShapeBox.animatableData.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 168);
  swift_beginAccess();
  _AnyAnimatableData.update<A>(_:)(v1 + v4, *(v3 + 152), *(*(v3 + 160) + 8));
  swift_endAccess();
  return outlined destroy of _AnyAnimatableData(a1);
}

uint64_t _AnyShapeBox.withAnimatableData(_:)(uint64_t a1)
{
  v14 = *v1;
  v2 = v14;
  v3 = *(v14 + 152);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = *(v2 + 168);
  swift_beginAccess();
  v11 = *(v4 + 16);
  v11(v9, &v1[v10], v3);
  _AnyAnimatableData.update<A>(_:)(v9, v3, *(*(v2 + 160) + 8));
  v11(v6, v9, v3);
  v12 = _AnyShapeBox.__allocating_init(_:)(v6);
  (*(v4 + 8))(v9, v3);
  return v12;
}

uint64_t _AnyShapeBox.as<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(*v3 + 152);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v14 - v8;
  v11 = *(v10 + 168);
  swift_beginAccess();
  (*(v7 + 16))(v9, v3 + v11, v6);
  v12 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a3, v12 ^ 1u, 1, a2);
}

uint64_t _AnyShapeBox.__deallocating_deinit()
{
  (*(*(*(*v0 + 152) - 8) + 8))(v0 + *(*v0 + 168));

  return swift_deallocClassInstance();
}

uint64_t Gesture.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for MapGesture(255, AssociatedTypeWitness, a4, v12);
  swift_getWitnessTable(protocol conformance descriptor for MapGesture<A, B>, v13);
  v15 = v14;
  v23 = v13;
  v24 = a3;
  v25 = v14;
  v26 = a5;
  v16 = type metadata accessor for ModifierGesture(0, &v23);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v21 - v17;
  v19 = swift_allocObject();
  v19[2] = AssociatedTypeWitness;
  v19[3] = a4;
  v19[4] = a1;
  v19[5] = a2;

  v23 = partial apply for closure #1 in MapGesture.init(_:);
  v24 = v19;
  Gesture.modifier<A>(_:)(&v23, a3, v13, a5, v15, v18);

  return _MapGesture.init(_body:)(v18, a3, a4, a5, v22);
}

uint64_t MapGesture.body.getter()
{
  v1 = *v0;

  return v1;
}

void MapGesture.body.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t MapGesture.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t (*MapGesture.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)@<X8>))@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  result = swift_allocObject();
  *(result + 2) = a3;
  *(result + 3) = a4;
  *(result + 4) = a1;
  *(result + 5) = a2;
  *a5 = partial apply for closure #1 in MapGesture.init(_:);
  a5[1] = result;
  return result;
}

double static MapGesture._makeGesture(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void *__return_ptr, __int128 *)@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = *a1;
  v11 = a2[5];
  v40 = a2[4];
  v41 = v11;
  v42 = a2[6];
  v12 = a2[1];
  v36 = *a2;
  v37 = v12;
  v13 = a2[3];
  v38 = a2[2];
  v39 = v13;
  v15 = *(a2 + 116);
  v43 = *(a2 + 28);
  v14 = v43;
  v44 = v15;
  a3(v30, &v36);
  v16 = v30[1];
  v17 = v31;
  v20 = type metadata accessor for GesturePhase(0, a6, v18, v19);
  v22 = type metadata accessor for MapPhase(0, a5, a6, v21);
  v29 = v30[0];
  *&v36 = __PAIR64__(v30[0], v10);
  *(&v36 + 1) = v14;
  v33 = v20;
  v34 = v22;
  swift_getWitnessTable(protocol conformance descriptor for MapPhase<A, B>, v22);
  v35 = v23;
  v24 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v36, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v32, v22, MEMORY[0x1E69E73E0], v24, MEMORY[0x1E69E7410], v25);
  LODWORD(v22) = v30[0];
  *&v36 = v29;
  *(&v36 + 1) = v16;
  LODWORD(v37) = v17;
  type metadata accessor for _GestureOutputs(0, a5, v26, v27);
  _GestureOutputs.withPhase<A>(_:)(v22, x8_0);

  return result;
}

double MapPhase.modifier.getter@<D0>(uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  type metadata accessor for MapGesture(0, a2, a3, a3);
  Value = AGGraphGetValue();
  v7 = *Value;
  v6 = Value[1];
  *a4 = v7;
  a4[1] = v6;

  return result;
}

uint64_t MapPhase.phase.getter@<X0>(uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = type metadata accessor for GesturePhase(0, a2, a2, a3);
  Value = AGGraphGetValue();
  v7 = *(*(v5 - 8) + 16);

  return v7(a4, Value, v5);
}

uint64_t MapPhase.updateValue()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29[2] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 16);
  v6 = type metadata accessor for GesturePhase(0, v5, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - v8;
  v10 = *(a1 + 24);
  v13 = type metadata accessor for GesturePhase(0, v10, v11, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  swift_getWitnessTable(protocol conformance descriptor for MapPhase<A, B>, a1, v15);
  result = ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    v28 = v14;
    MapPhase.modifier.getter(v5, v10, v29);
    v26 = v6;
    v27 = v13;
    v19 = v29[0];
    MapPhase.phase.getter(v5, v10, v9);
    v19(v9);

    v20 = (*(v7 + 8))(v9, v26);
    v21 = MEMORY[0x1EEE9AC00](v20);
    *(&v25 - 2) = a1;
    swift_getWitnessTable(protocol conformance descriptor for MapPhase<A, B>, a1, v21);
    *(&v25 - 1) = v22;
    v23 = v27;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v17, partial apply for closure #1 in StatefulRule.value.setter, (&v25 - 4), v27, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v24);
    return (*(v28 + 8))(v17, v23);
  }

  return result;
}

double Gesture.mapPhase<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = type metadata accessor for MapGesture(0, AssociatedTypeWitness, a4, v13);
  swift_getWitnessTable(protocol conformance descriptor for MapGesture<A, B>, v14, a1, a2);
  Gesture.modifier<A>(_:)(&v17, a3, v14, a5, v15, a6);

  return result;
}

uint64_t _MapGesture.init(_body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for MapGesture(255, AssociatedTypeWitness, a3, v11);
  swift_getWitnessTable(protocol conformance descriptor for MapGesture<A, B>, v12);
  v16[0] = v12;
  v16[1] = a2;
  v16[2] = v13;
  v16[3] = a4;
  v14 = type metadata accessor for ModifierGesture(0, v16);
  return (*(*(v14 - 8) + 32))(a5, a1, v14);
}

uint64_t partial apply for closure #1 in MapGesture.init(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = v3[3];
  v6 = v3[4];
  v7 = type metadata accessor for GesturePhase(0, v3[2], a1, a2);
  return GesturePhase.map<A>(_:)(v6, v7, v5, a3);
}

double Gesture.discrete(_:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  *(v8 + 32) = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  Gesture.mapPhase<A>(_:)(partial apply for closure #1 in Gesture.discrete(_:), v8, a2, AssociatedTypeWitness, a3, a4);

  return result;
}

uint64_t closure #1 in Gesture.discrete(_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, char *a5@<X8>)
{
  LODWORD(v24) = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for GesturePhase(0, AssociatedTypeWitness, v8, v9);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  v19 = *(v11 + 16);
  if (v24)
  {
    v24 = a5;
    v19(v13, a1, v10, v16.n128_f64[0]);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = *(v14 + 32);
      v20(v18, v13, AssociatedTypeWitness);
      v21 = v24;
      v20(v24, v18, AssociatedTypeWitness);
      (*(v14 + 56))(v21, 0, 1, AssociatedTypeWitness);
      return swift_storeEnumTagMultiPayload();
    }

    (*(v11 + 8))(v13, v10);
    a5 = v24;
  }

  return (v19)(a5, a1, v10, v16);
}

double static _MapGesture._makeGesture(gesture:inputs:)@<D0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = *(a2 + 80);
  v49 = *(a2 + 64);
  v50 = v11;
  v51 = *(a2 + 96);
  v52 = *(a2 + 112);
  v12 = *(a2 + 16);
  v45 = *a2;
  v46 = v12;
  v13 = *(a2 + 48);
  v47 = *(a2 + 32);
  v48 = v13;
  v14 = *(a2 + 120);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = type metadata accessor for MapGesture(255, AssociatedTypeWitness, a4, v16);
  swift_getWitnessTable(protocol conformance descriptor for MapGesture<A, B>, v17);
  v19 = v18;
  *&v32 = v17;
  *(&v32 + 1) = a3;
  *&v33 = v18;
  *(&v33 + 1) = a5;
  v20 = type metadata accessor for ModifierGesture(0, &v32);
  v44 = v10;
  v21 = type metadata accessor for _MapGesture(255, a3, a4, a5);
  type metadata accessor for _GraphValue(0, v21, v22, v23);
  _GraphValue.subscript.getter(partial apply for closure #1 in static _MapGesture._makeGesture(gesture:inputs:), v20, &v41);
  v36 = v49;
  v37 = v50;
  v38 = v51;
  v39 = v52;
  v32 = v45;
  v33 = v46;
  v34 = v47;
  v35 = v48;
  v40 = v14;
  static ModifierGesture._makeGesture(gesture:inputs:)(&v41, &v32, v17, a3, v19, a5, v42);
  if ((v14 & 8) != 0 && (!swift_conformsToProtocol2() || !v20))
  {
    _gestureModifierProtocolDescriptor();
    if (swift_conformsToProtocol())
    {
      v26 = 2;
    }

    else
    {
      v26 = 1;
    }

    LOBYTE(v41) = v26;
    v36 = v49;
    v37 = v50;
    v38 = v51;
    v39 = v52;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v35 = v48;
    v40 = v14;
    v27 = type metadata accessor for _GestureOutputs(0, a4, v24, v25);
    v28 = _GestureOutputs.debugData.getter();
    _GestureOutputs.reallyWrap<A>(_:kind:properties:inputs:data:)(v20, &v41, 0x100000000, &v32, v28 | ((HIDWORD(v28) & 1) << 32), 0x100000000, v27);
  }

  v29 = v42[1];
  v30 = v43;
  result = *v42;
  *a6 = v42[0];
  *(a6 + 8) = v29;
  *(a6 + 16) = v30;
  return result;
}

uint64_t closure #1 in static _MapGesture._makeGesture(gesture:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[2] = type metadata accessor for _MapGesture(0, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for MapGesture(255, AssociatedTypeWitness, a3, v9);
  swift_getWitnessTable(protocol conformance descriptor for MapGesture<A, B>, v10);
  v17[0] = v10;
  v17[1] = a2;
  v17[2] = v11;
  v17[3] = a4;
  v16 = type metadata accessor for ModifierGesture(0, v17);
  v12 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in static PointerOffset.of(_:), v15, v16, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v13);
  return v17[0];
}

uint64_t type metadata completion function for _MapGesture(void *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for MapGesture(255, AssociatedTypeWitness, a1[3], v5);
  swift_getWitnessTable(protocol conformance descriptor for MapGesture<A, B>, v6);
  v10[0] = v6;
  v10[1] = v3;
  v10[2] = v7;
  v10[3] = v2;
  result = type metadata accessor for ModifierGesture(319, v10);
  if (v9 <= 0x3F)
  {
    v10[0] = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t specialized MapPhase.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v2);

  return 0x209286E22070614DLL;
}

uint64_t Gesture.repeatCount(_:maximumDelay:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<D0>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  RepeatGesture.init(count:maximumDelay:)(a1, v18, a4);
  v16 = v18[0];
  v17 = v18[1];
  v13 = type metadata accessor for RepeatGesture(0, AssociatedTypeWitness, v11, v12);
  swift_getWitnessTable(protocol conformance descriptor for RepeatGesture<A>, v13, v16, v17);
  return Gesture.modifier<A>(_:)(&v16, a2, v13, a3, v14, a5);
}

uint64_t RepeatGesture.init(count:maximumDelay:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (result <= 0 || a3 < 0.0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *a2 = result;
    *(a2 + 8) = a3;
  }

  return result;
}

uint64_t static RepeatGesture._makeGesture(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(__int128 *)@<X2>, uint64_t a4@<X4>, int *a5@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v23 = *a1;
  v6 = a2[5];
  v47 = a2[4];
  v48 = v6;
  *v49 = a2[6];
  *&v49[12] = *(a2 + 108);
  v7 = a2[1];
  v43 = *a2;
  v44 = v7;
  v8 = a2[3];
  v45 = a2[2];
  v46 = v8;
  LODWORD(v54) = 0;
  v9 = Attribute.init<A>(body:value:flags:update:)();
  v39 = v46;
  v40 = v47;
  v41 = v48;
  v42 = *v49;
  v36 = v43;
  v37 = v44;
  v38 = v45;
  v10 = *&v49[20];
  v11 = *&v49[16];
  *&v52[0] = __PAIR64__(v9, *&v49[16]);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  outlined init with copy of _GestureInputs(&v43, &v54);
  lazy protocol witness table accessor for type RepeatResetSeed and conformance RepeatResetSeed();
  v12 = Attribute.init<A>(body:value:flags:update:)();
  v50[5] = v41;
  *v51 = v42;
  v50[3] = v39;
  v50[4] = v40;
  v50[0] = v36;
  v50[1] = v37;
  v50[2] = v38;
  *&v51[16] = v12;
  *&v51[20] = v10;
  v58 = v40;
  v59 = v41;
  *v60 = v42;
  *&v60[12] = *&v51[12];
  v54 = v36;
  v55 = v37;
  v56 = v38;
  v57 = v39;
  outlined init with copy of _GestureInputs(v50, v52);
  a3(&v54);
  v52[4] = v58;
  v52[5] = v59;
  v53[0] = *v60;
  *(v53 + 12) = *&v60[12];
  v52[0] = v54;
  v52[1] = v55;
  v52[2] = v56;
  v52[3] = v57;
  outlined destroy of _GestureInputs(v52);
  v13 = *a5;
  v30[0] = v23;
  v30[1] = v13;
  v30[2] = DWORD1(v48);
  v30[3] = v11;
  v30[4] = v9;
  v31 = (v49[24] & 0x10) != 0;
  v32 = 0;
  v33 = 1;
  v34 = 0;
  v35 = 0;
  v27 = type metadata accessor for GesturePhase(0, a4, v14, v15);
  v28 = type metadata accessor for RepeatPhase(0, a4, v16, v17);
  swift_getWitnessTable(protocol conformance descriptor for RepeatPhase<A>, v28);
  v29 = v18;
  v19 = type metadata accessor for Attribute();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v30, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_0, v26, v28, MEMORY[0x1E69E73E0], v19, MEMORY[0x1E69E7410], v20);
  v58 = v40;
  v59 = v41;
  *v60 = v42;
  v54 = v36;
  v55 = v37;
  v56 = v38;
  v57 = v39;
  *&v60[16] = v12;
  *&v60[20] = v10;
  result = outlined destroy of _GestureInputs(&v54);
  *a5 = v25;
  return result;
}

_DWORD *protocol witness for Rule.value.getter in conformance RepeatResetSeed@<X0>(_DWORD *a1@<X8>)
{
  v2 = *AGGraphGetValue();
  result = AGGraphGetValue();
  *a1 = *result + v2;
  return result;
}

void RepeatPhase.resetPhase()()
{
  *(v0 + 36) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
}

void RepeatPhase.updateValue()(uint64_t a1)
{
  v2 = v1;
  v90 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v77 - v9;
  v13 = type metadata accessor for GesturePhase(0, v4, v11, v12);
  v80 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v77 - v18;
  swift_getWitnessTable(protocol conformance descriptor for RepeatPhase<A>, a1, v17);
  if (ResettableGestureRule.resetIfNeeded()())
  {
    if ((v1[2] & 1) != 0 || (v22 = *(v1 + 3), type metadata accessor for RepeatPhase(0, v4, v20, v21), v22 >= *AGGraphGetValue()))
    {
      v28 = v1[1];
      v86 = *v1;
      *(&v27 + 1) = *(&v86 + 1);
      v87 = v28;
      v88 = *(v1 + 8);
      *&v27 = *(v1 + 36);
      v79 = v27;
      v89 = v27;
      DelayedPhase.childPhase.getter(a1, v15, v20, v21);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v78 = v5;
          (*(v5 + 32))(v7, v15, v4);
          v38 = (v79 + 1);
          *(v1 + 9) = v38;
          type metadata accessor for RepeatGesture(0, v4, v39, v40);
          if (*AGGraphGetValue() <= v38)
          {
            *(v1 + 3) = 0;
            *(v1 + 32) = 1;
            v82 = *v1;
            v83 = *(v1 + 4);
            v32 = *(v1 + 20);
            v84 = v32;
            *v85 = *(v1 + 21);
            *&v85[15] = *(v1 + 36);
            v64 = DelayedPhase.childPhase.getter(a1, v19, v41, v42);
            v65 = MEMORY[0x1EEE9AC00](v64);
            *(&v77 - 2) = a1;
            swift_getWitnessTable(protocol conformance descriptor for RepeatPhase<A>, a1, v65);
            *(&v77 - 1) = v66;
            _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, closure #1 in StatefulRule.value.setterpartial apply, (&v77 - 4), v13, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v67);
            (*(v80 + 8))(v19, v13);
            (*(v78 + 8))(v7, v4);
          }

          else
          {
            v43 = *AGGraphGetValue();
            v32 = *(v1 + 20);
            *&v79 = *(v1 + 9);
            *(v1 + 3) = v43 + *(AGGraphGetValue() + 8);
            *(v1 + 32) = 0;
            v44 = v78;
            (*(v78 + 16))(v19, v7, v4);
            (*(v44 + 56))(v19, 0, 1, v4);
            v45 = swift_storeEnumTagMultiPayload();
            v77 = &v77;
            v46 = MEMORY[0x1EEE9AC00](v45);
            *(&v77 - 2) = a1;
            swift_getWitnessTable(protocol conformance descriptor for RepeatPhase<A>, a1, v46);
            *(&v77 - 1) = v47;
            _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, closure #1 in StatefulRule.value.setterpartial apply, (&v77 - 4), v13, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v48);
            (*(v80 + 8))(v19, v13);
            specialized static GraphHost.currentHost.getter();
            specialized GraphHost.continueTransaction<A>(_:)(*(v1 + 4) | (v79 << 32));

            (*(v44 + 8))(v7, v4);
          }
        }

        else
        {
          v82 = *v1;
          v83 = *(v1 + 4);
          v32 = *(v1 + 20);
          v84 = v32;
          *v85 = *(v1 + 21);
          *&v85[15] = *(v1 + 36);
          v60 = DelayedPhase.childPhase.getter(a1, v19, v30, v31);
          v61 = MEMORY[0x1EEE9AC00](v60);
          *(&v77 - 2) = a1;
          swift_getWitnessTable(protocol conformance descriptor for RepeatPhase<A>, a1, v61);
          *(&v77 - 1) = v62;
          _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, partial apply for closure #1 in StatefulRule.value.setter, (&v77 - 4), v13, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v63);
          (*(v80 + 8))(v19, v13);
        }
      }

      else if (EnumCaseMultiPayload)
      {
        (*(v5 + 32))(v10, v15, v4);
        *(v1 + 3) = 0;
        *(v1 + 32) = 1;
        v81 = *(v1 + 20);
        type metadata accessor for RepeatGesture(0, v4, v49, v50);
        Value = AGGraphGetValue();
        if (__OFSUB__(*Value, 1))
        {
          __break(1u);
        }

        v54 = (v80 + 8);
        if (*Value - 1 <= v79)
        {
          v82 = *v1;
          v83 = *(v1 + 4);
          LODWORD(v80) = *(v1 + 20);
          v84 = v80;
          *v85 = *(v1 + 21);
          *&v85[15] = *(v1 + 36);
          v68 = DelayedPhase.childPhase.getter(a1, v19, v52, v53);
          *&v79 = &v77;
          v69 = MEMORY[0x1EEE9AC00](v68);
          *(&v77 - 2) = a1;
          swift_getWitnessTable(protocol conformance descriptor for RepeatPhase<A>, a1, v69);
          *(&v77 - 1) = v70;
          _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, closure #1 in StatefulRule.value.setterpartial apply, (&v77 - 4), v13, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v71);
          (*v54)(v19, v13);
          (*(v5 + 8))(v10, v4);
          v32 = v80;
        }

        else
        {
          LODWORD(v80) = v81;
          v55 = v5;
          (*(v5 + 16))(v19, v10, v4);
          (*(v5 + 56))(v19, 0, 1, v4);
          v56 = swift_storeEnumTagMultiPayload();
          *&v79 = &v77;
          v57 = MEMORY[0x1EEE9AC00](v56);
          *(&v77 - 2) = a1;
          swift_getWitnessTable(protocol conformance descriptor for RepeatPhase<A>, a1, v57);
          *(&v77 - 1) = v58;
          v32 = v80;
          _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, closure #1 in StatefulRule.value.setterpartial apply, (&v77 - 4), v13, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v59);
          (*v54)(v19, v13);
          (*(v55 + 8))(v10, v4);
        }
      }

      else
      {
        v82 = *v1;
        v83 = *(v1 + 4);
        v32 = *(v1 + 20);
        v84 = v32;
        *v85 = *(v1 + 21);
        *&v85[15] = *(v1 + 36);
        v33 = DelayedPhase.childPhase.getter(a1, v19, v30, v31);
        v34 = MEMORY[0x1EEE9AC00](v33);
        *(&v77 - 2) = a1;
        swift_getWitnessTable(protocol conformance descriptor for RepeatPhase<A>, a1, v34);
        *(&v77 - 1) = v35;
        _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, closure #1 in StatefulRule.value.setterpartial apply, (&v77 - 4), v13, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v36);
        v37 = *(v80 + 8);
        v37(v19, v13);
        v37(v15, v13);
      }

      if ((v2[4] & 1) == 0)
      {
        v72 = v2[3];
        specialized static GraphHost.currentHost.getter();
        if (v32)
        {
          type metadata accessor for GestureGraph();
          v73 = swift_dynamicCastClassUnconditional();
          v74 = *(v73 + 272);
          if (v72 < v74)
          {
            v74 = v72;
          }

          *(v73 + 272) = v74;
        }

        else
        {
          type metadata accessor for ViewGraph();
          v75 = swift_dynamicCastClassUnconditional();
          swift_beginAccess();
          v76 = *(v75 + 408);
          if (v72 < v76)
          {
            v76 = v72;
          }

          *(v75 + 408) = v76;
        }
      }
    }

    else
    {
      v23 = swift_storeEnumTagMultiPayload();
      v24 = MEMORY[0x1EEE9AC00](v23);
      *(&v77 - 2) = a1;
      swift_getWitnessTable(protocol conformance descriptor for RepeatPhase<A>, a1, v24);
      *(&v77 - 1) = v25;
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v19, closure #1 in StatefulRule.value.setterpartial apply, (&v77 - 4), v13, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v26);
      (*(v80 + 8))(v19, v13);
    }
  }
}

uint64_t RepeatMutation.combine<A>(with:)(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
  if ((swift_dynamicCast() & 1) == 0 || v7[2] != *v2)
  {
    return 0;
  }

  v2[1] = v7[3];
  return 1;
}

void lazy protocol witness table accessor for type RepeatResetSeed and conformance RepeatResetSeed()
{
  if (!lazy protocol witness table cache variable for type RepeatResetSeed and conformance RepeatResetSeed)
  {
    swift_getWitnessTable(protocol conformance descriptor for RepeatResetSeed, &type metadata for RepeatResetSeed, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type RepeatResetSeed and conformance RepeatResetSeed);
  }
}

uint64_t getEnumTagSinglePayload for RepeatPhase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 44))
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

uint64_t storeEnumTagSinglePayload for RepeatPhase(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 20) = a2 + 1;
    }
  }

  return result;
}

void *static EmptyGesture._makeGesture(gesture:inputs:)@<X0>(__int128 *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = type metadata accessor for GesturePhase(0, a2, a2, a3);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v10 = a1[5];
  v21 = a1[4];
  v22 = v10;
  v23[0] = a1[6];
  *(v23 + 12) = *(a1 + 108);
  v11 = a1[1];
  v17 = *a1;
  v18 = v11;
  v12 = a1[3];
  v19 = a1[2];
  v20 = v12;
  swift_storeEnumTagMultiPayload();
  v16 = 4;
  v13 = _GestureInputs.intern<A>(_:id:)(v9, &v16, v6);
  (*(v7 + 8))(v9, v6);
  return _GestureOutputs.init(phase:)(v13, a4);
}

double _LazyLayout_PlacedSubview.id.getter@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 152);
  *a1 = *(*v1 + 144);
  a1[1] = v2;

  return result;
}

double _LazyLayout_PlacedSubview.frame.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  _LazyLayout_PlacedSubview.size.getter();
  v4 = v2 - v1 * v3;
  _LazyLayout_PlacedSubview.size.getter();
  return v4;
}

__n128 _LazyLayout_PlacementContext.nearestScrollGeometry.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 216);
  v3 = *(v1 + 248);
  *(a1 + 64) = *(v1 + 232);
  *(a1 + 80) = v3;
  v4 = *(v1 + 184);
  *a1 = *(v1 + 168);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 200);
  *(a1 + 48) = v2;
  result = *(v1 + 264);
  *(a1 + 96) = result;
  return result;
}

CGSize __swiftcall _LazyLayout_PlacementContext.translateGeometry(by:)(CGSize by)
{
  height = by.height;
  width = by.width;
  v4 = *(v1 + 248);
  v5 = *(v1 + 256);
  v6 = *(v1 + 280);
  v7 = *(v1 + 288);
  ScrollGeometry.translate(by:limit:)(by, __PAIR128__(v7, v6));
  ScrollGeometry.translate(by:limit:)(__PAIR128__(*&height, *&width), __PAIR128__(v7, v6));
  v8 = *(v1 + 248) - v4;
  v9 = *(v1 + 256) - v5;
  result.height = v9;
  result.width = v8;
  return result;
}

uint64_t _LazyLayout_PlacedSubview.matches(_:)(_DWORD *a1)
{
  v2 = (*a1 >> 1) & 1;
  if (!*(*v1 + 174))
  {
    v2 = *(*v1 + 173) & *a1;
  }

  if (*(*v1 + 173) & *a1)
  {
    LOBYTE(v2) = *(*v1 + 173) & *a1;
  }

  return v2 & 1;
}

double _LazyLayout_Subview.id.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 72);
  *a1 = *(v1 + 64);
  a1[1] = v2;

  return result;
}

uint64_t _LazyLayout_Subviews.firstIndex(of:style:)(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  v3 = *a2;
  v7 = 0;
  v8 = 0;
  v5[2] = *a1;
  v5[3] = v2;
  v5[4] = &v8;
  v6 = v3;
  if (_LazyLayout_Subviews.apply(from:style:to:)(&v7, &v6, partial apply for closure #1 in _LazyLayout_Subviews.firstIndex(of:style:), v5))
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

uint64_t _s7SwiftUI9LazyStackPA2A01_cD6_CacheVyxG0E0RtzrlE07initialE0AFvgZAA0C12HStackLayoutV_Tt0g5Tm@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  *(a4 + 80) = 0u;
  *(a4 + 96) = _Q1;
  type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, a1, a2, a3, type metadata accessor for _LazyStack_Cache);
  v11 = (a4 + *(v10 + 60));
  v12 = MEMORY[0x1E69E7CC0];
  *v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v11[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v12);
  type metadata accessor for EstimationCache(0);
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
  type metadata accessor for [HorizontalDirection](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530]);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

void protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance LazyHStackLayout(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v5;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v6 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v6;
  specialized static LazyLayout._makeView(root:inputs:body:)(v4, v7, a3, a4);
}

void specialized static LazyLayout._makeView(root:inputs:body:)(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(uint64_t, _OWORD *)@<X3>, void *a5@<X8>)
{
  v7 = *(a2 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 16);
  v62 = *a2;
  v63 = v9;
  v64 = v7;
  v10 = v62;
  v11 = WORD2(v7);
  v58 = v7;
  v59 = v8;
  v60 = *(a2 + 64);
  v61 = *(a2 + 80);
  v56 = v62;
  v57 = v9;
  DWORD1(v58) = DWORD1(v7) | 0xC;
  outlined init with copy of _ViewInputs(a2, v53);

  v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v12);
  if (!v13 || *(v13 + 72) != 1)
  {
    type metadata accessor for TypedElement<IsInLazyContainer>(0, &lazy cache variable for type metadata for TypedElement<IsInLazyContainer>, &type metadata for IsInLazyContainer, &protocol witness table for IsInLazyContainer, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = 1;
    *&v56 = PropertyList.Element.init(keyType:before:after:)(&type metadata for IsInLazyContainer, 0, v10);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28DisableNavigationDestinationV_Tt2g5(&v56, 1);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v56);
  static CorePlatformProvidersDefinition.providers.getter(v53);
  if (v54)
  {
    (*(v55 + 8))(&v56);
  }

  v49[2] = v58;
  v49[3] = v59;
  v49[4] = v60;
  v50 = v61;
  v49[0] = v56;
  v49[1] = v57;
  v35 = v58;
  v36 = v59;
  v37 = v60;
  v38 = v61;
  v33 = v56;
  v34 = v57;
  v14 = outlined init with copy of _ViewInputs(v49, v65);
  closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(v14, &v33, a3);
  v51[2] = v35;
  v51[3] = v36;
  v51[4] = v37;
  v52 = v38;
  v51[0] = v33;
  v51[1] = v34;
  outlined destroy of _ViewInputs(v51);
  LODWORD(v37) = *MEMORY[0x1E698D3F8];
  *(&v37 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v38) = 0;
  v39 = 0;
  v40 = 0;
  swift_weakInit();
  v41 = 0;
  v42 = 0;
  v43 = -1;
  v33 = v62;
  v34 = v63;
  v35 = v64;
  v36 = 0uLL;
  outlined init with copy of _GraphInputs(&v62, v65);
  outlined init with copy of _GraphInputs(&v62, v65);
  v15 = _ViewListOutputs.makeAttribute(inputs:)(&v33);
  outlined destroy of _ViewListInputs(&v33);
  outlined destroy of _GraphInputs(&v62);
  if ((v11 & 0x1000) == 0)
  {
LABEL_15:
    v65[2] = v58;
    v65[3] = v59;
    v65[4] = v60;
    v66 = v61;
    v65[0] = v56;
    v65[1] = v57;
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyLayoutViewCache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyLayoutViewCache);
    swift_allocObject();
    outlined init with copy of _ViewInputs(v65, &v33);
    v20 = specialized _LazyLayoutViewCache.init(layout:list:inputs:)(a1, v15, v65, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, specialized LazyLayoutViewCache.init<A>(layout:list:inputs:));
    swift_beginAccess();
    v21 = *(v20 + 120);
    v22 = *(v20 + 128);
    v46 = v21;
    v47 = v22;
    if ((v11 & 0x1000) != 0)
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v10);
      static CorePlatformProvidersDefinition.providers.getter(&v33);
      v23 = v44;
      if (v44)
      {
        v24 = v45;
        v25 = *(a2 + 48);
        v31[2] = *(a2 + 32);
        v31[3] = v25;
        v31[4] = *(a2 + 64);
        v32 = *(a2 + 80);
        v26 = *(a2 + 16);
        v31[0] = *a2;
        v31[1] = v26;
        v27 = *(v20 + 148);

        v30 = 0;
        (*(v24 + 8))(&v46, v31, v27, &v30, v23, v24);

        outlined destroy of _ViewListOutputs(v48);
        v35 = v58;
        v36 = v59;
        v37 = v60;
        v38 = v61;
        v33 = v56;
        v34 = v57;
        outlined destroy of _ViewInputs(&v33);

        v21 = v46;
        v22 = v47;
LABEL_21:
        *a5 = v21;
        a5[1] = v22;
        return;
      }
    }

    else
    {
    }

    outlined destroy of _ViewListOutputs(v48);
    v35 = v58;
    v36 = v59;
    v37 = v60;
    v38 = v61;
    v33 = v56;
    v34 = v57;
    outlined destroy of _ViewInputs(&v33);

    goto LABEL_21;
  }

  v16 = v59;
  *&v33 = v59;
  v17 = PreferenceKeys._index(of:)(&type metadata for ScrollablePreferenceKey);

  v18 = *(v16 + 2);
  if (v17 != v18)
  {
    if (v17 >= v18)
    {
      goto LABEL_23;
    }

    if (*&v16[16 * v17 + 32] == &type metadata for ScrollablePreferenceKey)
    {
      goto LABEL_15;
    }
  }

  if (v18 >= v17)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v18 >= *(v16 + 3) >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18 + 1, 1, v16);
      *&v59 = v16;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v17, v17, 1, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
    *&v59 = v16;
    goto LABEL_15;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

{
  v7 = *(a2 + 32);
  v8 = *(a2 + 48);
  v9 = *(a2 + 16);
  v62 = *a2;
  v63 = v9;
  v64 = v7;
  v10 = v62;
  v11 = WORD2(v7);
  v58 = v7;
  v59 = v8;
  v60 = *(a2 + 64);
  v61 = *(a2 + 80);
  v56 = v62;
  v57 = v9;
  DWORD1(v58) = DWORD1(v7) & 0xFFFFFFF3 | 4;
  outlined init with copy of _ViewInputs(a2, v53);

  v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v12);
  if (!v13 || *(v13 + 72) != 1)
  {
    type metadata accessor for TypedElement<IsInLazyContainer>(0, &lazy cache variable for type metadata for TypedElement<IsInLazyContainer>, &type metadata for IsInLazyContainer, &protocol witness table for IsInLazyContainer, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = 1;
    *&v56 = PropertyList.Element.init(keyType:before:after:)(&type metadata for IsInLazyContainer, 0, v10);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28DisableNavigationDestinationV_Tt2g5(&v56, 1);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v56);
  static CorePlatformProvidersDefinition.providers.getter(v53);
  if (v54)
  {
    (*(v55 + 8))(&v56);
  }

  v49[2] = v58;
  v49[3] = v59;
  v49[4] = v60;
  v50 = v61;
  v49[0] = v56;
  v49[1] = v57;
  v35 = v58;
  v36 = v59;
  v37 = v60;
  v38 = v61;
  v33 = v56;
  v34 = v57;
  v14 = outlined init with copy of _ViewInputs(v49, v65);
  closure #1 in closure #1 in static _VariadicView_UnaryViewRoot._makeViewList(root:inputs:body:)(v14, &v33, a3);
  v51[2] = v35;
  v51[3] = v36;
  v51[4] = v37;
  v52 = v38;
  v51[0] = v33;
  v51[1] = v34;
  outlined destroy of _ViewInputs(v51);
  LODWORD(v37) = *MEMORY[0x1E698D3F8];
  *(&v37 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v38) = 0;
  v39 = 0;
  v40 = 0;
  swift_weakInit();
  v41 = 0;
  v42 = 0;
  v43 = -1;
  v33 = v62;
  v34 = v63;
  v35 = v64;
  v36 = 0uLL;
  outlined init with copy of _GraphInputs(&v62, v65);
  outlined init with copy of _GraphInputs(&v62, v65);
  v15 = _ViewListOutputs.makeAttribute(inputs:)(&v33);
  outlined destroy of _ViewListInputs(&v33);
  outlined destroy of _GraphInputs(&v62);
  if ((v11 & 0x1000) == 0)
  {
LABEL_15:
    v65[2] = v58;
    v65[3] = v59;
    v65[4] = v60;
    v66 = v61;
    v65[0] = v56;
    v65[1] = v57;
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyLayoutViewCache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyLayoutViewCache);
    swift_allocObject();
    outlined init with copy of _ViewInputs(v65, &v33);
    v20 = specialized _LazyLayoutViewCache.init(layout:list:inputs:)(a1, v15, v65, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, specialized LazyLayoutViewCache.init<A>(layout:list:inputs:));
    swift_beginAccess();
    v21 = *(v20 + 120);
    v22 = *(v20 + 128);
    v46 = v21;
    v47 = v22;
    if ((v11 & 0x1000) != 0)
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v10);
      static CorePlatformProvidersDefinition.providers.getter(&v33);
      v23 = v44;
      if (v44)
      {
        v24 = v45;
        v25 = *(a2 + 48);
        v31[2] = *(a2 + 32);
        v31[3] = v25;
        v31[4] = *(a2 + 64);
        v32 = *(a2 + 80);
        v26 = *(a2 + 16);
        v31[0] = *a2;
        v31[1] = v26;
        v27 = *(v20 + 148);

        v30 = 0;
        (*(v24 + 8))(&v46, v31, v27, &v30, v23, v24);

        outlined destroy of _ViewListOutputs(v48);
        v35 = v58;
        v36 = v59;
        v37 = v60;
        v38 = v61;
        v33 = v56;
        v34 = v57;
        outlined destroy of _ViewInputs(&v33);

        v21 = v46;
        v22 = v47;
LABEL_21:
        *a5 = v21;
        a5[1] = v22;
        return;
      }
    }

    else
    {
    }

    outlined destroy of _ViewListOutputs(v48);
    v35 = v58;
    v36 = v59;
    v37 = v60;
    v38 = v61;
    v33 = v56;
    v34 = v57;
    outlined destroy of _ViewInputs(&v33);

    goto LABEL_21;
  }

  v16 = v59;
  *&v33 = v59;
  v17 = PreferenceKeys._index(of:)(&type metadata for ScrollablePreferenceKey);

  v18 = *(v16 + 2);
  if (v17 != v18)
  {
    if (v17 >= v18)
    {
      goto LABEL_23;
    }

    if (*&v16[16 * v17 + 32] == &type metadata for ScrollablePreferenceKey)
    {
      goto LABEL_15;
    }
  }

  if (v18 >= v17)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v18 >= *(v16 + 3) >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18 + 1, 1, v16);
      *&v59 = v16;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v17, v17, 1, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
    *&v59 = v16;
    goto LABEL_15;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void specialized static LazyLayout._makeView(root:inputs:body:)(unsigned int a1@<W0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v62 = *a2;
  v63 = v8;
  v64 = v6;
  v9 = v62;
  v10 = WORD2(v6);
  v58 = v6;
  v59 = v7;
  v60 = *(a2 + 64);
  v61 = *(a2 + 80);
  v56 = v62;
  v57 = v8;
  DWORD1(v58) = DWORD1(v6) | 0xC;
  outlined init with copy of _ViewInputs(a2, v53);

  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v11);
  if (!v12 || *(v12 + 72) != 1)
  {
    type metadata accessor for TypedElement<IsInLazyContainer>(0, &lazy cache variable for type metadata for TypedElement<IsInLazyContainer>, &type metadata for IsInLazyContainer, &protocol witness table for IsInLazyContainer, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = 1;
    *&v56 = PropertyList.Element.init(keyType:before:after:)(&type metadata for IsInLazyContainer, 0, v9);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28DisableNavigationDestinationV_Tt2g5(&v56, 1);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v56);
  static CorePlatformProvidersDefinition.providers.getter(v53);
  if (v54)
  {
    (*(v55 + 8))(&v56);
  }

  v49[2] = v58;
  v49[3] = v59;
  v49[4] = v60;
  v50 = v61;
  v49[0] = v56;
  v49[1] = v57;
  v35 = v58;
  v36 = v59;
  v37 = v60;
  v38 = v61;
  v33 = v56;
  v34 = v57;
  v13 = outlined init with copy of _ViewInputs(v49, v65);
  a3(v48, v13, &v33);
  v51[2] = v35;
  v51[3] = v36;
  v51[4] = v37;
  v52 = v38;
  v51[0] = v33;
  v51[1] = v34;
  outlined destroy of _ViewInputs(v51);
  LODWORD(v37) = *MEMORY[0x1E698D3F8];
  *(&v37 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v38) = 0;
  v39 = 0;
  v40 = 0;
  swift_weakInit();
  v41 = 0;
  v42 = 0;
  v43 = -1;
  v33 = v62;
  v34 = v63;
  v35 = v64;
  v36 = 0uLL;
  outlined init with copy of _GraphInputs(&v62, v65);
  outlined init with copy of _GraphInputs(&v62, v65);
  v14 = _ViewListOutputs.makeAttribute(inputs:)(&v33);
  outlined destroy of _ViewListInputs(&v33);
  outlined destroy of _GraphInputs(&v62);
  v15 = v10;
  if ((v10 & 0x1000) == 0)
  {
LABEL_15:
    v65[2] = v58;
    v65[3] = v59;
    v65[4] = v60;
    v66 = v61;
    v65[0] = v56;
    v65[1] = v57;
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyLayoutViewCache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for _LazyLayoutViewCache);
    swift_allocObject();
    outlined init with copy of _ViewInputs(v65, &v33);
    v20 = specialized _LazyLayoutViewCache.init(layout:list:inputs:)(a1, v14, v65, &lazy cache variable for type metadata for _LazyStack_Cache<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, specialized LazyLayoutViewCache.init<A>(layout:list:inputs:));
    swift_beginAccess();
    v21 = *(v20 + 120);
    v22 = *(v20 + 128);
    v46 = v21;
    v47 = v22;
    if ((v15 & 0x1000) != 0)
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v9);
      static CorePlatformProvidersDefinition.providers.getter(&v33);
      v23 = v44;
      if (v44)
      {
        v24 = v45;
        v25 = *(a2 + 48);
        v31[2] = *(a2 + 32);
        v31[3] = v25;
        v31[4] = *(a2 + 64);
        v32 = *(a2 + 80);
        v26 = *(a2 + 16);
        v31[0] = *a2;
        v31[1] = v26;
        v27 = *(v20 + 148);

        v30 = 0;
        (*(v24 + 8))(&v46, v31, v27, &v30, v23, v24);

        outlined destroy of _ViewListOutputs(v48);
        v35 = v58;
        v36 = v59;
        v37 = v60;
        v38 = v61;
        v33 = v56;
        v34 = v57;
        outlined destroy of _ViewInputs(&v33);
        v21 = v46;
        v22 = v47;
LABEL_21:
        *a4 = v21;
        a4[1] = v22;
        return;
      }
    }

    else
    {
    }

    outlined destroy of _ViewListOutputs(v48);
    v35 = v58;
    v36 = v59;
    v37 = v60;
    v38 = v61;
    v33 = v56;
    v34 = v57;
    outlined destroy of _ViewInputs(&v33);
    goto LABEL_21;
  }

  v16 = v59;
  *&v33 = v59;
  v17 = PreferenceKeys._index(of:)(&type metadata for ScrollablePreferenceKey);

  v18 = *(v16 + 2);
  if (v17 != v18)
  {
    if (v17 >= v18)
    {
      goto LABEL_23;
    }

    if (*&v16[16 * v17 + 32] == &type metadata for ScrollablePreferenceKey)
    {
      goto LABEL_15;
    }
  }

  if (v18 >= v17)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v18 >= *(v16 + 3) >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18 + 1, 1, v16);
      *&v59 = v16;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v17, v17, 1, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
    *&v59 = v16;
    goto LABEL_15;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

{
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 16);
  v62 = *a2;
  v63 = v8;
  v64 = v6;
  v9 = v62;
  v10 = WORD2(v6);
  v58 = v6;
  v59 = v7;
  v60 = *(a2 + 64);
  v61 = *(a2 + 80);
  v56 = v62;
  v57 = v8;
  DWORD1(v58) = DWORD1(v6) & 0xFFFFFFF3 | 4;
  outlined init with copy of _ViewInputs(a2, v53);

  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA17IsInLazyContainerV_Tt0g5(v11);
  if (!v12 || *(v12 + 72) != 1)
  {
    type metadata accessor for TypedElement<IsInLazyContainer>(0, &lazy cache variable for type metadata for TypedElement<IsInLazyContainer>, &type metadata for IsInLazyContainer, &protocol witness table for IsInLazyContainer, type metadata accessor for TypedElement);
    *(swift_allocObject() + 72) = 1;
    *&v56 = PropertyList.Element.init(keyType:before:after:)(&type metadata for IsInLazyContainer, 0, v9);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA28DisableNavigationDestinationV_Tt2g5(&v56, 1);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v56);
  static CorePlatformProvidersDefinition.providers.getter(v53);
  if (v54)
  {
    (*(v55 + 8))(&v56);
  }

  v49[2] = v58;
  v49[3] = v59;
  v49[4] = v60;
  v50 = v61;
  v49[0] = v56;
  v49[1] = v57;
  v35 = v58;
  v36 = v59;
  v37 = v60;
  v38 = v61;
  v33 = v56;
  v34 = v57;
  v13 = outlined init with copy of _ViewInputs(v49, v65);
  a3(v48, v13, &v33);
  v51[2] = v35;
  v51[3] = v36;
  v51[4] = v37;
  v52 = v38;
  v51[0] = v33;
  v51[1] = v34;
  outlined destroy of _ViewInputs(v51);
  LODWORD(v37) = *MEMORY[0x1E698D3F8];
  *(&v37 + 1) = MEMORY[0x1E69E7CD0];
  LOBYTE(v38) = 0;
  v39 = 0;
  v40 = 0;
  swift_weakInit();
  v41 = 0;
  v42 = 0;
  v43 = -1;
  v33 = v62;
  v34 = v63;
  v35 = v64;
  v36 = 0uLL;
  outlined init with copy of _GraphInputs(&v62, v65);
  outlined init with copy of _GraphInputs(&v62, v65);
  v14 = _ViewListOutputs.makeAttribute(inputs:)(&v33);
  outlined destroy of _ViewListInputs(&v33);
  outlined destroy of _GraphInputs(&v62);
  v15 = v10;
  if ((v10 & 0x1000) == 0)
  {
LABEL_15:
    v65[2] = v58;
    v65[3] = v59;
    v65[4] = v60;
    v66 = v61;
    v65[0] = v56;
    v65[1] = v57;
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for _LazyLayoutViewCache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for _LazyLayoutViewCache);
    swift_allocObject();
    outlined init with copy of _ViewInputs(v65, &v33);
    v20 = specialized _LazyLayoutViewCache.init(layout:list:inputs:)(a1, v14, v65, &lazy cache variable for type metadata for _LazyStack_Cache<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, specialized LazyLayoutViewCache.init<A>(layout:list:inputs:));
    swift_beginAccess();
    v21 = *(v20 + 120);
    v22 = *(v20 + 128);
    v46 = v21;
    v47 = v22;
    if ((v15 & 0x1000) != 0)
    {

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v9);
      static CorePlatformProvidersDefinition.providers.getter(&v33);
      v23 = v44;
      if (v44)
      {
        v24 = v45;
        v25 = *(a2 + 48);
        v31[2] = *(a2 + 32);
        v31[3] = v25;
        v31[4] = *(a2 + 64);
        v32 = *(a2 + 80);
        v26 = *(a2 + 16);
        v31[0] = *a2;
        v31[1] = v26;
        v27 = *(v20 + 148);

        v30 = 0;
        (*(v24 + 8))(&v46, v31, v27, &v30, v23, v24);

        outlined destroy of _ViewListOutputs(v48);
        v35 = v58;
        v36 = v59;
        v37 = v60;
        v38 = v61;
        v33 = v56;
        v34 = v57;
        outlined destroy of _ViewInputs(&v33);
        v21 = v46;
        v22 = v47;
LABEL_21:
        *a4 = v21;
        a4[1] = v22;
        return;
      }
    }

    else
    {
    }

    outlined destroy of _ViewListOutputs(v48);
    v35 = v58;
    v36 = v59;
    v37 = v60;
    v38 = v61;
    v33 = v56;
    v34 = v57;
    outlined destroy of _ViewInputs(&v33);
    goto LABEL_21;
  }

  v16 = v59;
  *&v33 = v59;
  v17 = PreferenceKeys._index(of:)(&type metadata for ScrollablePreferenceKey);

  v18 = *(v16 + 2);
  if (v17 != v18)
  {
    if (v17 >= v18)
    {
      goto LABEL_23;
    }

    if (*&v16[16 * v17 + 32] == &type metadata for ScrollablePreferenceKey)
    {
      goto LABEL_15;
    }
  }

  if (v18 >= v17)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v18 >= *(v16 + 3) >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v18 + 1, 1, v16);
      *&v59 = v16;
    }

    specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v17, v17, 1, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
    *&v59 = v16;
    goto LABEL_15;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t _LazyLayout_SizeAndSpacingContext.init(ruleContext:owner:environment:containerSize:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, _DWORD *a5@<X8>)
{
  if ((a2 & 0x100000000) != 0)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  *a5 = result;
  a5[1] = v5;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

double _LazyLayout_PlacementContext.init(base:position:size:transform:layoutDirection:pinnedViews:isAccessibilityEnabled:)@<D0>(uint64_t *a1@<X0>, double *a2@<X1>, float64x2_t *a3@<X2>, char *a4@<X3>, int *a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>, double a9@<D1>)
{
  v10.f64[0] = a8;
  v103 = a1[1];
  v104 = *a1;
  v12 = *a2;
  v13 = a2[1];
  v15 = a3->f64[0];
  v14 = a3->f64[1];
  v16 = *a4;
  v17 = *a5;
  v121 = 1;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v120 = 1;
  v108 = v15;
  v109 = v14;
  v110 = a8;
  v111 = a9;
  v10.f64[1] = a9;
  v86 = vsubq_f64(a3[2], vsubq_f64(v10, a3[1]));
  v112 = v86;
  specialized ViewTransform.forEach(inverted:_:)(0, &v108, &v113, v86.f64[0]);
  v18 = *(&v114 + 1);
  v98 = *&v114;
  v95 = *(&v115 + 1);
  v96 = *&v115;
  v92 = *(&v116 + 1);
  v93 = *&v116;
  v19 = v120;
  v20 = 0.0;
  if (v120)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = *(&v118 + 1);
  }

  if (v120)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = *&v118;
  }

  v24 = *(&v117 + 1);
  v23 = *&v117;
  if (v120)
  {
    v23 = v12;
  }

  v105 = v13;
  if (v120)
  {
    v24 = v13;
    v25 = 0.0;
  }

  else
  {
    v25 = *&v113;
  }

  if (v120)
  {
    v26 = 0.0;
  }

  else
  {
    v26 = *(&v113 + 1);
  }

  v88 = *(&v119 + 1);
  v90 = *&v119;
  v99 = v24;
  v100 = v23;
  v97 = v26;
  if (v16)
  {
    v27 = v25;
    v28 = v26;
    v29 = v12 - CGRectGetMaxX(*(&v23 - 2));
    v101 = v22 + v29 - v25;
    v102 = v21 + v26 - v26;
    v94 = v29;
  }

  else
  {
    v94 = v25;
    v101 = v22;
    v102 = v21;
  }

  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v120 = 1;
  v108 = v15;
  v109 = v14;
  v110 = a8;
  v111 = a9;
  v112 = v86;
  v113 = 0u;
  specialized ViewTransform.forEach(inverted:_:)(0, &v108, &v113, v86.f64[0]);
  v30 = v114;
  v32 = *(&v115 + 1);
  v31 = *&v115;
  v34 = *(&v116 + 1);
  v33 = *&v116;
  v35 = v120;
  if (v120)
  {
    v36 = 0.0;
  }

  else
  {
    v36 = *(&v118 + 1);
  }

  if (v120)
  {
    v37 = 0.0;
  }

  else
  {
    v37 = *&v118;
  }

  v39 = *(&v117 + 1);
  v38 = *&v117;
  if (v120)
  {
    v38 = v12;
    v39 = v105;
    v40 = 0.0;
  }

  else
  {
    v40 = *&v113;
  }

  if ((v120 & 1) == 0)
  {
    v20 = *(&v113 + 1);
  }

  v41 = *(&v119 + 1);
  v42 = *&v119;
  v83 = v39;
  v84 = v38;
  v77 = v20;
  if (v16)
  {
    v69 = *(&v119 + 1);
    v71 = *&v119;
    v43 = v40;
    v44 = v20;
    v79 = v12;
    v81 = v18;
    v45 = v36;
    v73 = *(&v116 + 1);
    v46 = *(&v115 + 1);
    v75 = *&v115;
    MaxX = CGRectGetMaxX(*(&v38 - 2));
    v34 = v73;
    v31 = v75;
    v32 = v46;
    v12 = v79;
    v48 = v79 - MaxX;
    v85 = v37 + v48 - v40;
    v87 = v45 + v20 - v20;
    v18 = v81;
    v78 = v48;
    v41 = v69;
    v42 = v71;
  }

  else
  {
    v85 = v37;
    v87 = v36;
    v78 = v40;
  }

  if (v35)
  {
    v49 = v105;
  }

  else
  {
    v49 = v41;
  }

  if (v35)
  {
    v50 = v12;
  }

  else
  {
    v50 = v42;
  }

  v80 = v50;
  v82 = v49;
  if (v35)
  {
    v51 = 0.0;
  }

  else
  {
    v51 = v34;
  }

  if (v35)
  {
    v52 = 0.0;
  }

  else
  {
    v52 = v33;
  }

  v74 = v52;
  v76 = v51;
  if (v35)
  {
    v53 = 0.0;
  }

  else
  {
    v53 = v32;
  }

  if (v35)
  {
    v54 = 0.0;
  }

  else
  {
    v54 = v31;
  }

  v70 = v54;
  v72 = v53;
  if (v35)
  {
    v55 = v105;
  }

  else
  {
    v55 = *(&v30 + 1);
  }

  if (v35)
  {
    v56 = v12;
  }

  else
  {
    v56 = *&v30;
  }

  v67 = v56;
  v68 = v55;
  if (v19)
  {
    v57 = v105;
  }

  else
  {
    v57 = v88;
  }

  v58 = v90;
  if (v19)
  {
    v58 = v12;
  }

  v89 = v57;
  v91 = v58;
  if (v19)
  {
    v59 = 0.0;
  }

  else
  {
    v59 = v92;
  }

  if (v19)
  {
    v60 = 0.0;
  }

  else
  {
    v60 = v93;
  }

  if (v19)
  {
    v61 = 0.0;
  }

  else
  {
    v61 = v95;
  }

  if (v19)
  {
    v62 = 0.0;
  }

  else
  {
    v62 = v96;
  }

  if (v19)
  {
    v63 = v105;
  }

  else
  {
    v63 = v18;
  }

  v64 = a6 & 1;
  if (v19)
  {
    v65 = v12;
  }

  else
  {
    v65 = v98;
  }

  *a7 = v104;
  *(a7 + 8) = v103;
  *(a7 + 16) = a8;
  *(a7 + 24) = a9;
  *(a7 + 32) = v12;
  *(a7 + 40) = v105;
  *(a7 + 48) = v17;
  *(a7 + 56) = v94;
  *(a7 + 64) = v97;
  *(a7 + 72) = v65;
  *(a7 + 80) = v63;
  *(a7 + 88) = v62;
  *(a7 + 96) = v61;
  *(a7 + 104) = v60;
  *(a7 + 112) = v59;
  *(a7 + 120) = v100;
  *(a7 + 128) = v99;
  *(a7 + 136) = v101;
  *(a7 + 144) = v102;
  *(a7 + 152) = v91;
  *(a7 + 160) = v89;
  *(a7 + 168) = v78;
  *(a7 + 176) = v77;
  *(a7 + 184) = v67;
  *(a7 + 192) = v68;
  *(a7 + 200) = v70;
  *(a7 + 208) = v72;
  *(a7 + 216) = v74;
  *(a7 + 224) = v76;
  *(a7 + 232) = v84;
  *(a7 + 240) = v83;
  *(a7 + 248) = v85;
  *(a7 + 256) = v87;
  result = v82;
  *(a7 + 264) = v80;
  *(a7 + 272) = v82;
  *(a7 + 280) = v12;
  *(a7 + 288) = v105;
  *(a7 + 296) = v64;
  return result;
}

double _LazyLayout_PlacementContext.containingVisibleRect.getter()
{
  v2 = *(v0 + 136);
  if (*(v0 + 296) == 1)
  {
    ScrollGeometry.outsetForAX(limit:)(*(v0 + 280));
  }

  return *&v2;
}

double _LazyLayout_SizeAndSpacingContext.containerSize.getter()
{
  result = 0.0;
  if (*(v0 + 12) != *MEMORY[0x1E698D3F8])
  {
    return *AGGraphGetValue();
  }

  return result;
}

void _LazyLayout_Subview.kind.getter(char *a1@<X8>)
{
  if (*(v1 + 101))
  {
    *a1 = 1;
  }

  else
  {
    if (*(v1 + 102))
    {
      v2 = 2;
    }

    else
    {
      v2 = 0;
    }

    *a1 = v2;
  }
}

double _LazyLayout_PlacementContext.containerSize.getter()
{
  result = 0.0;
  if (*(v0 + 12) != *MEMORY[0x1E698D3F8])
  {
    return *AGGraphGetValue();
  }

  return result;
}

void _LazyLayout_Subview.proposeSize(_:)(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v12 = LazyLayoutViewCache.item(data:)((v5 + 16));
  v13 = a2 & 1;
  v14 = a4 & 1;
  swift_beginAccess();
  v15 = swift_unownedRetainStrong();
  if (v15)
  {
    v16 = *(v15 + 228);

    *(v12 + 200) = v16;
    *(v12 + 208) = 0;
    *(v12 + 304) = a1;
    *(v12 + 312) = v13;
    *(v12 + 320) = a3;
    *(v12 + 328) = v14;
    *(v12 + 336) = 0u;
    *(v12 + 352) = 0u;
    *(v12 + 368) = 0;
    v17 = *(v6 + 104);
    *a5 = v12;
    *(a5 + 8) = a1;
    *(a5 + 16) = v13;
    *(a5 + 24) = a3;
    *(a5 + 32) = v14;
    *(a5 + 40) = v17;
  }

  else
  {
    __break(1u);
  }
}

uint64_t _LazyLayout_Section.header.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  if (*(v3 + 16))
  {
    v4 = *v1;
    v5 = *(v1 + 4);
    v6 = *(v1 + 5);
    v7 = *(v1 + 6);
    v8 = v1[14];
    v9 = *(v1 + 8);
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 32, v14);
    v10 = v15;
    outlined init with take of _ViewList_Elements(v14, &v16);
    *&v17[24] = v10;
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(&v16, v14);
    outlined init with take of _ViewList_Elements(v14, a1 + 16);
    *&v13[12] = *&v17[12];
    v12 = v16;
    *v13 = *v17;
    *(a1 + 56) = *&v17[24];
    *(a1 + 60) = 0;
    *(a1 + 109) = 0;
    *a1 = v7;
    *(a1 + 8) = v8;
    *(a1 + 112) = v5;
    *(a1 + 120) = v6;
    *(a1 + 128) = v4;
    *(a1 + 132) = 0;
    *(a1 + 133) = 1;
    *(a1 + 136) = v9;

    return __swift_destroy_boxed_opaque_existential_1(&v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void _LazyLayout_Section.content.getter(uint64_t a1@<X8>)
{
  v3 = v1[1];
  if (*(v3 + 16) < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v11 = *v1;
    v4 = v1[4];
    v5 = v1[5];
    v6 = v1[6];
    v10 = v1[7];
    v7 = v1[8];
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 80, v13);
    v8 = v14;
    outlined init with take of _ViewList_Elements(v13, &v20);
    *&v21[24] = v8;
    *&v15 = v11;
    *v16 = *(v1 + 1);
    *(&v15 + 1) = v3;
    *&v16[16] = v4;
    *&v16[24] = v5;
    v17 = v6;
    v18 = v10;
    v19 = v7;
    _LazyLayout_Section.header.getter(v13);
    v12 = 2;
    v9 = _ViewList_Node.estimatedCount(style:)(&v12);
    outlined destroy of _LazyLayout_Subviews(v13);
    outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(&v20, v13);
    outlined init with take of _ViewList_Elements(v13, a1 + 16);
    *&v16[12] = *&v21[12];
    v15 = v20;
    *v16 = *v21;
    *(a1 + 56) = *&v21[24];
    *(a1 + 60) = 0;
    *(a1 + 109) = 0;
    if (!__OFADD__(v7, v9))
    {
      *a1 = v6;
      *(a1 + 8) = v10;
      *(a1 + 112) = v4;
      *(a1 + 120) = v5;
      *(a1 + 128) = v11;
      *(a1 + 132) = 0;
      *(a1 + 133) = 0;
      *(a1 + 136) = v7 + v9;

      __swift_destroy_boxed_opaque_existential_1(&v15);
      return;
    }
  }

  __break(1u);
}

void _LazyLayout_Section.footer.getter(uint64_t a1@<X8>)
{
  v3 = *(v1 + 1);
  if (*(v3 + 16) < 3uLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v1;
  v5 = *v1;
  v6 = v1[1];
  v18 = *v1;
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  v9 = v1[14];
  v10 = v1[15];
  v15 = *(v1 + 4);
  v16 = *(v1 + 8);
  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v3 + 128, v20);
  v11 = v21;
  outlined init with take of _ViewList_Elements(v20, &v28);
  *&v29[24] = v11;
  *&v22 = __PAIR64__(v6, v5);
  *v23 = *(v4 + 1);
  *(&v22 + 1) = v3;
  *&v23[16] = v15;
  *&v23[24] = v7;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v16;
  _LazyLayout_Section.header.getter(v20);
  v19 = 2;
  v17 = _ViewList_Node.estimatedCount(style:)(&v19);
  outlined destroy of _LazyLayout_Subviews(v20);
  *&v22 = __PAIR64__(v6, v18);
  *v23 = *(v4 + 1);
  *(&v22 + 1) = v3;
  *&v23[16] = v15;
  *&v23[24] = v7;
  v24 = v8;
  v25 = v9;
  v26 = v10;
  v27 = v16;
  _LazyLayout_Section.content.getter(v20);
  v19 = 2;
  v12 = _ViewList_Node.estimatedCount(style:)(&v19);
  outlined destroy of _LazyLayout_Subviews(v20);
  v13 = __OFADD__(v17, v12);
  v14 = v17 + v12;
  if (v13)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(&v28, v20);
  outlined init with take of _ViewList_Elements(v20, a1 + 16);
  *&v23[12] = *&v29[12];
  v22 = v28;
  *v23 = *v29;
  *(a1 + 56) = *&v29[24];
  *(a1 + 60) = 0;
  *(a1 + 109) = 0;
  if (!__OFADD__(v16, v14))
  {
    *a1 = v8;
    *(a1 + 8) = v9;
    *(a1 + 112) = v15;
    *(a1 + 120) = v7;
    *(a1 + 128) = v18;
    *(a1 + 132) = 0;
    *(a1 + 133) = 256;
    *(a1 + 136) = v16 + v14;

    __swift_destroy_boxed_opaque_existential_1(&v22);
    return;
  }

LABEL_7:
  __break(1u);
}

double _LazyLayout_PlacementContext.clampedVisibleRect.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v12 = *(v0 + 136);
  v13 = *(v0 + 152);
  if (*(v0 + 296) == 1)
  {
    ScrollGeometry.outsetForAX(limit:)(*(v0 + 280));
  }

  v4 = *(&v12 + 1);
  v3 = v12;
  v6 = *(&v13 + 1);
  v5 = v13;
  v7 = 0;
  v8 = 0;
  v9 = v1;
  v10 = v2;

  *&result = CGRectIntersection(*&v3, *&v7);
  return result;
}

__n128 _LazyLayout_PlacementContext.containingScrollGeometry.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 104);
  v3 = *(v1 + 136);
  *(a1 + 64) = *(v1 + 120);
  *(a1 + 80) = v3;
  *(a1 + 96) = *(v1 + 152);
  v4 = *(v1 + 72);
  *a1 = *(v1 + 56);
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 88);
  *(a1 + 48) = result;
  return result;
}

BOOL _LazyLayout_PlacementContext.allowsTranslations.getter()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[33];
  v6 = v0[34];
  v12.origin.x = v3;
  v12.origin.y = v4;
  v12.size.width = v5;
  v12.size.height = v6;
  if (CGRectGetMinX(v12) <= 0.0)
  {
    v13.origin.x = v3;
    v13.origin.y = v4;
    v13.size.width = v5;
    v13.size.height = v6;
    v7 = CGRectGetMinY(v13) <= 0.0;
  }

  else
  {
    v7 = 0;
  }

  v14.origin.x = v3;
  v14.origin.y = v4;
  v14.size.width = v5;
  v14.size.height = v6;
  if (v2 > CGRectGetMaxX(v14))
  {
    v8 = v2 == 0.0 || v7;
    if (v8)
    {
      return 0;
    }

    return v1 != 0.0;
  }

  v15.origin.x = v3;
  v15.origin.y = v4;
  v15.size.width = v5;
  v15.size.height = v6;
  MaxY = CGRectGetMaxY(v15);
  result = 0;
  v11 = v1 <= MaxY || v7;
  if ((v11 & 1) == 0 && v2 != 0.0)
  {
    return v1 != 0.0;
  }

  return result;
}

void protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance LazyVStackLayout(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, void *a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v5;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v6 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v6;
  specialized static LazyLayout._makeView(root:inputs:body:)(v4, v7, a3, a4);
}

void static LazyLayout.layoutProperties.getter(_WORD *a1@<X8>)
{
  static LazyLayout.layoutProperties.getter(a1);
}

{
  *a1 = 2;
}

double LazyLayout.initialPlacement(newIndex:newPlacedSubviews:oldPlacedSubviews:wasInsertedToSubviews:context:subviews:cache:)@<D0>(_OWORD *a3@<X8>)
{
  Array.subscript.getter();
  *&v12[32] = v9;
  *&v12[48] = v10;
  *&v12[64] = v11;
  *v12 = v7;
  *&v12[16] = v8;
  outlined destroy of _LazyLayout_PlacedSubview(v12);
  v4 = *&v12[24];
  *a3 = *&v12[8];
  a3[1] = v4;
  result = *&v12[40];
  v6 = *&v12[56];
  a3[2] = *&v12[40];
  a3[3] = v6;
  return result;
}

uint64_t _LazyLayout_Properties.init(axes:multipleViewAxes:)@<X0>(uint64_t result@<X0>, char a2@<W1>, _BYTE *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void *static LazyLayout.modifyChildInputs(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 32))(&v9, a2, a3);
  v5 = *(a1 + 36);
  v6 = v5 | 0xC;
  v7 = v5 & 0xFFFFFFF3;
  if (v9 == 2)
  {
    v7 |= 4u;
  }

  if (v9 == 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v7;
  }

  *(a1 + 36) = v8;
  return result;
}

double LazyLayout.finalPlacement(at:in:wasRemoved:context:newPlacedSubviews:subviews:cache:)@<D0>(_OWORD *a3@<X8>)
{
  Array.subscript.getter();
  *&v12[32] = v9;
  *&v12[48] = v10;
  *&v12[64] = v11;
  *v12 = v7;
  *&v12[16] = v8;
  outlined destroy of _LazyLayout_PlacedSubview(v12);
  v4 = *&v12[24];
  *a3 = *&v12[8];
  a3[1] = v4;
  result = *&v12[40];
  v6 = *&v12[56];
  a3[2] = *&v12[40];
  a3[3] = v6;
  return result;
}

Swift::Bool __swiftcall _LazyLayout_PrefetchResult.advanceToSome()()
{
  result = *v0 != 0;
  if (*v0)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *v0 = v2;
  return result;
}

__n128 _LazyLayout_PlacementContext.base.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 _LazyLayout_PlacementContext.base.setter(__n128 *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 _LazyLayout_Subviews.init(cache:context:node:transform:section:baseIndex:)@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, int *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a4;
  v8 = a4[1];
  v9 = *a5;
  v10 = *(a5 + 4);
  v11 = *(a5 + 5);
  v12 = *(a5 + 6);
  *a7 = a1;
  *(a7 + 8) = a2;
  v13 = *(a3 + 48);
  *(a7 + 48) = *(a3 + 32);
  *(a7 + 64) = v13;
  *(a7 + 80) = *(a3 + 64);
  *(a7 + 94) = *(a3 + 78);
  result = *a3;
  v15 = *(a3 + 16);
  *(a7 + 16) = *a3;
  *(a7 + 32) = v15;
  *(a7 + 112) = v7;
  *(a7 + 120) = v8;
  *(a7 + 128) = v9;
  *(a7 + 132) = v10;
  *(a7 + 133) = v11;
  *(a7 + 134) = v12;
  *(a7 + 136) = a6;
  return result;
}

uint64_t closure #2 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:)(void *a1, unint64_t *a2, uint64_t a3, int *a4, uint64_t a5, void *a6, void *a7, void (*a8)(void, void, __n128), void *a9)
{
  v13 = *a2;
  v14 = *a4;
  LODWORD(v50) = *(a4 + 4);
  v15 = *(a4 + 5);
  v48 = v14;
  LODWORD(v49) = v15;
  v52 = *a5;
  LODWORD(v53) = *(a5 + 8);
  v16 = outlined init with copy of _ViewList_Node(a3, &v74);
  if (v79 > 2u)
  {
    v51 = &v46;
    LODWORD(v54) = v74.n128_u32[0];
    *(&v54 + 1) = v74.n128_u64[1];
    *&v55[0] = v75;
    BYTE8(v55[0]) = BYTE8(v75);
    v57 = v13;
    *v71 = v52;
    v71[8] = v53;
    MEMORY[0x1EEE9AC00](v16);
    v42 = a6;
    v43 = a7;
    v44 = a8;
    v45 = a9;
    v28 = _ViewList_Section.applyNodes(from:style:transform:to:)(a1, &v57, v71, closure #2 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:)partial apply, v41);

    return v28 & 1;
  }

  if (v79 == 1)
  {
    *&v71[32] = v76;
    v72 = v77;
    v73[0] = *v78;
    *(v73 + 13) = *&v78[13];
    *v71 = v74;
    *&v71[16] = v75;
    v17 = v74.n128_i64[1];
    if (v13)
    {
      v17 = v74.n128_u64[1] * (v13 >> 1);
      if ((v74.n128_i64[1] * (v13 >> 1)) >> 64 != v17 >> 63)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }
    }

    v18 = *a1 - v17;
    if (*a1 >= v17)
    {
      outlined destroy of _ViewList_Sublist(v71);
      *a1 = v18;
    }

    else
    {
      v51 = a7;
      v47 = a6;
      *&v54 = v52;
      BYTE8(v54) = v53;
      _ViewList_TemporarySublistTransform.apply(sublist:)(v71, v74);
      v19 = *v71;
      if (*&v71[8] < *v71)
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      swift_beginAccess();
      swift_beginAccess();
      if (v19 != *(&v19 + 1))
      {
        v20 = 0x80000000;
        if (v19 > 0x80000000)
        {
          v20 = v19;
        }

        v53 = v20;
        v21 = v19;
        v46 = a9;
        while (1)
        {
          v69[0] = 0;
          if (v19 < 0xFFFFFFFF80000000)
          {
            break;
          }

          if (v53 == v21)
          {
            goto LABEL_35;
          }

          v22 = a8;
          v23 = *&v71[20];
          v24 = *&v71[24];
          outlined init with copy of _ViewList_SubgraphElements(&v71[32], &v57);
          v59 = v21;
          v60 = v23;
          v61 = v24;
          v62 = *&v73[1];
          v63 = DWORD2(v73[1]);
          v64 = BYTE12(v73[1]);
          v65 = v48;
          v66 = 0;
          v67 = v50;
          v68 = v49;
          v25 = *v47;
          v26 = *(v47 + 2);
          outlined init with copy of _LazyLayout_Subview.Data(&v57, v55);
          v27 = v51[2];
          *&v54 = v25;
          DWORD2(v54) = v26;
          v56 = v27;

          a8 = v22;

          (v22)(&v54, v69);
          outlined destroy of _LazyLayout_Subview(&v54);
          outlined destroy of _LazyLayout_Subview.Data(&v57);
          v51[2] = (v51[2] + 1);
          if (v69[0] == 1)
          {
            outlined destroy of _ViewList_Sublist(v71);
            v28 = 0;
            return v28 & 1;
          }

          if (*(&v19 + 1) == ++v21)
          {
            goto LABEL_15;
          }
        }

LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

LABEL_15:
      outlined destroy of _ViewList_Sublist(v71);
    }

    v28 = 1;
    return v28 & 1;
  }

  v51 = v13;
  if (v79 == 2)
  {
    v47 = &v46;
    MEMORY[0x1EEE9AC00](v16);
    v29 = 0;
    v41[0] = a6;
    v41[1] = a7;
    v42 = a8;
    v43 = a9;
    LODWORD(v44) = v48;
    BYTE4(v44) = 0;
    BYTE5(v44) = v50;
    BYTE6(v44) = v49;
    v49 = v30 + 32;
    v50 = v30;
    v31 = *(v30 + 16);
    if (v31)
    {
      goto LABEL_22;
    }

LABEL_25:
    v29 = v31;
    memset(v71, 0, 44);
    while (1)
    {
      *(v55 + 12) = *&v71[28];
      v54 = *v71;
      v55[0] = *&v71[16];
      v28 = *&v71[24] == 0;
      if (!*&v71[24] || (v32 = a1, v33 = DWORD2(v55[1]), outlined init with take of _ViewList_Elements(&v54, v71), v34 = *&v71[24], v35 = *&v71[32], __swift_project_boxed_opaque_existential_1(v71, *&v71[24]), v70 = v51, v57 = v52, v58 = v53, v36 = *(v35 + 64), v69[1] = 0, v37 = v33, a1 = v32, v38 = v36(v32, &v70, v37, &v57, closure #1 in applyNode #1 (start:style:node:transform:section:) in _LazyLayout_Subviews.apply(from:style:to:)partial apply, &v40, v34, v35), __swift_destroy_boxed_opaque_existential_1(v71), (v38 & 1) == 0))
      {

        return v28 & 1;
      }

      if (v29 == v31)
      {
        goto LABEL_25;
      }

LABEL_22:
      if ((v29 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v29 >= *(v50 + 16))
      {
        goto LABEL_33;
      }

      outlined init with copy of (list: ViewList, attribute: Attribute<ViewList>)(v49 + 48 * v29++, v71);
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_38:
  LODWORD(v45) = 0;
  v44 = 570;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _LazyLayout_Subviews.apply(style:to:)(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = 0;
  return _LazyLayout_Subviews.apply(from:style:to:)(&v5, &v4, a2, a3) & 1;
}

Swift::Int _LazyLayout_Section.estimatedCount.getter()
{
  v1 = *(v0 + 24);
  v4 = *v0;
  v5 = *(v0 + 2);
  v6 = v1;
  v3 = 2;
  return _ViewList_Section.estimatedCount(style:)(&v3);
}

void closure #1 in _LazyLayout_Subviews.firstIndex(of:style:)(uint64_t a1, _BYTE *a2, unint64_t a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v9 = *(a1 + 72);
  v10 = HIDWORD(a3);
  v13 = *(a1 + 64);
  v14 = v9;

  _ViewList_ID.Canonical.init(id:)(&v13, v15);
  v13 = v15[0];
  v14 = v15[1];
  v11[0] = v7;
  v11[1] = v10;
  v12 = a4;
  LOBYTE(a4) = specialized static _ViewList_ID.Canonical.== infix(_:_:)(&v13, v11);

  if (a4)
  {
    *a2 = 1;
  }

  else if (__OFADD__(*a5, 1))
  {
    __break(1u);
  }

  else
  {
    ++*a5;
  }
}

double _LazyLayout_Subviews.id(at:style:)@<D0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  v10 = a1;
  v13[0] = 0.0;
  v13[1] = 0.0;
  v6 = *(v3 + 120);
  v9[0] = *(v3 + 112);
  v9[1] = v6;
  v8 = v5;
  v11 = v9;
  v12 = 1;

  specialized _ViewList_Node.applyIDs(from:style:transform:to:)(&v10, &v8, &v11, v3 + 16, v13);

  result = v13[0];
  *a3 = *v13;
  return result;
}

double _LazyLayout_Subview.Data.id.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;

  return result;
}

double _LazyLayout_Subview.Data.id.setter(uint64_t a1)
{
  v3 = *(a1 + 8);

  result = *a1;
  *(v1 + 48) = *a1;
  *(v1 + 56) = v3;
  return result;
}

double _LazyLayout_Subview.Data.traits.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 64);

  return result;
}

void _LazyLayout_Subview.Data.traits.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 64) = v2;
}

uint64_t _LazyLayout_Subview.Data.list.setter(uint64_t result)
{
  *(v1 + 72) = result;
  *(v1 + 76) = BYTE4(result) & 1;
  return result;
}

void _LazyLayout_Subview.Data.section.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 84);
  v3 = *(v1 + 85);
  v4 = *(v1 + 86);
  *a1 = *(v1 + 80);
  *(a1 + 4) = v2;
  *(a1 + 5) = v3;
  *(a1 + 6) = v4;
}

uint64_t _LazyLayout_Subview.Data.section.setter(uint64_t result)
{
  v2 = *(result + 4);
  v3 = *(result + 5);
  v4 = *(result + 6);
  *(v1 + 80) = *result;
  *(v1 + 84) = v2;
  *(v1 + 85) = v3;
  *(v1 + 86) = v4;
  return result;
}

uint64_t _LazyLayout_Subview.subscript.getter@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t x8_0@<X8>)
{
  v6 = type metadata accessor for _LayoutTrait(0, a2, a3, a4);
  swift_getWitnessTable(protocol conformance descriptor for _LayoutTrait<A>, v6);
  return ViewTraitCollection.subscript.getter(v6, v7, x8_0);
}

void _LazyLayout_Subview.layout.getter(_DWORD *a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(LazyLayoutViewCache.item(data:)((v1 + 16)) + 44);

  v5 = *MEMORY[0x1E698D3F8];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
}

double _LazyLayout_Subview.beginPrefetching(at:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  LazyLayoutViewCache.item(data:)((v4 + 16));
  LazyLayoutCacheItem.beginPrefetching(at:)(a1, a2 & 1, a3, a4 & 1);

  return result;
}

Swift::Int _LazyLayout_Section.ID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

__n128 _LazyLayout_PlacedSubview.placement.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  result = *(v1 + 40);
  v4 = *(v1 + 56);
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

__n128 _LazyLayout_PlacedSubview.placement.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 8) = *a1;
  *(v1 + 24) = v2;
  result = *(a1 + 32);
  v4 = *(a1 + 48);
  *(v1 + 40) = result;
  *(v1 + 56) = v4;
  return result;
}

void _LazyLayout_PlacedSubview.accessibilityContext.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  if (*(*v1 + 172))
  {
    v3 = 0;
  }

  v4 = *(v2 + 173);
  v5 = *(v2 + 174);
  *a1 = v3;
  *(a1 + 4) = v4;
  *(a1 + 5) = v5;
}

double _LazyLayout_PlacedSubview.origin.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  _LazyLayout_PlacedSubview.size.getter();
  return v2 - v1 * v3;
}

void _LazyLayout_Placements.validRect.setter(double a1, double a2, double a3, double a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

uint64_t _LazyLayout_EstimatedPlacements.index.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

void _LazyLayout_ProposedSubview.proposal.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t _LazyLayout_ProposedSubview.proposal.setter(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  v4 = *(result + 24);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  return result;
}

uint64_t specialized LazyLayoutViewCache.init<A>(layout:list:inputs:)(unsigned int a1, int a2, __int128 *a3)
{
  v148 = a1;
  v194 = *MEMORY[0x1E69E9840];
  swift_weakInit();
  *(v3 + 184) = 0;
  *(v3 + 156) = 0;
  v156 = *MEMORY[0x1E698D3F8];
  *(v3 + 164) = v156;
  *(v3 + 176) = MEMORY[0x1E69E7CC8];
  *(v3 + 192) = xmmword_18DD85520;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  v6 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  v9 = *(MEMORY[0x1E695F050] + 24);
  *(v3 + 232) = *MEMORY[0x1E695F050];
  *(v3 + 240) = v7;
  *(v3 + 248) = v8;
  *(v3 + 256) = v9;
  *(v3 + 264) = 0;
  *(v3 + 272) = 0;
  *(v3 + 280) = -1;
  *(v3 + 288) = -1;
  *(v3 + 296) = 0;
  *(v3 + 304) = 0;
  *(v3 + 312) = 0;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0;
  *(v3 + 340) = 16777471;
  *(v3 + 344) = 0;
  *(v3 + 352) = 1;
  swift_weakInit();
  v10 = MEMORY[0x1E69E7CC0];
  *(v3 + 368) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12_ViewList_IDV9CanonicalV_AC23LazyLayoutCacheChildrenVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v3 + 376) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI12_ViewList_IDV9CanonicalVTt0g5Tf4g_n(v10);
  *(v3 + 384) = 0;
  v139 = v3 + 184;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  v158 = v3;
  swift_weakAssign();

  v11 = a3[1];
  v191 = *a3;
  v192 = v11;
  v12 = a3[3];
  v193 = a3[2];
  v13 = v191;
  v187 = v193;
  v188 = v12;
  v189 = a3[4];
  v190 = *(a3 + 20);
  v185 = v191;
  v186 = v11;
  outlined init with copy of _ViewInputs(a3, v181);
  v154 = v13;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v13);
  static CorePlatformProvidersDefinition.providers.getter(v181);
  if (*&v181[8])
  {
    (*(*(&v181[8] + 1) + 16))(&v185);
  }

  v149 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v154);
  v14 = *(a3 + 6);
  v153 = a3;
  v15 = *(a3 + 14);
  v146 = v14;
  v144 = v15;
  v16 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v14);
  v17 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v154);
  if (v16 & 1) != 0 && (v17)
  {
    v18 = v188;
    *&v181[0] = v188;
    v19 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);

    v20 = *(v18 + 16);
    if (v19 != v20)
    {
      if (v19 >= v20)
      {
        __break(1u);
        goto LABEL_86;
      }

      if (*(v18 + 16 * v19 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v19);
        v18 = v188;
      }
    }

    *&v181[0] = v18;
    v21 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v22 = *(v18 + 16);
    if (v21 == v22)
    {
      goto LABEL_13;
    }

    if (v21 < v22)
    {
      if (*(v18 + 16 * v21 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v21);
      }

      goto LABEL_13;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_13:
  v23 = v156;
  if (v149 != v156)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v185, v156);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v185, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v185, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v185, v156);
  }

  v24 = v158;
  v25 = AGSubgraphGetCurrent();
  if (!v25)
  {
LABEL_88:
    __break(1u);
  }

  *(v158 + 24) = v25;
  v24[34] = a2;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v26 = static CachedEnvironment.ID.layoutDirection;
  v27 = v192;
  swift_beginAccess();
  v28 = specialized CachedEnvironment.attribute<A>(id:_:)(v26, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  swift_endAccess();
  v24[35] = v28;
  if (one-time initialization token for nearestScrollableAxes != -1)
  {
    swift_once();
  }

  v29 = static CachedEnvironment.ID.nearestScrollableAxes;
  swift_beginAccess();
  v30 = specialized CachedEnvironment.attribute<A>(id:_:)(v29, specialized implicit closure #1 in _GraphInputs.nearestScrollableAxes.getter, 0);
  swift_endAccess();
  v24[36] = v30;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
  v31 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v154, *&v181[0]);
  v32 = v23;
  if (v31)
  {
    v32 = v23;
    if (*(v31 + 76) != 255)
    {
      v32 = *(v31 + 72);
      if (((*(v31 + 76) << 32) & 0x100000000) != 0)
      {
        v32 = v23;
      }
    }
  }

  v24[41] = v32;
  if (one-time initialization token for accessibilityEnabled != -1)
  {
    swift_once();
  }

  v33 = static CachedEnvironment.ID.accessibilityEnabled;
  swift_beginAccess();
  v34 = specialized CachedEnvironment.attribute<A>(id:_:)(v33, specialized implicit closure #1 in _GraphInputs.accessibilityEnabled.getter, 0);
  swift_endAccess();
  v24[42] = v34;
  v140 = DWORD2(v192);
  LODWORD(v181[0]) = DWORD2(v192);
  *(&v181[0] + 1) = 0;
  LODWORD(v181[1]) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for LazyLayoutViewCache();
  lazy protocol witness table accessor for type UpdateViewCache and conformance UpdateViewCache();
  v152 = Attribute.init<A>(body:value:flags:update:)();
  v162 = 1;
  v161 = 1;
  v147 = *(v153 + 18);
  v35 = *(v153 + 16);
  v150 = *(v153 + 15);
  v151 = v35;
  v145 = v27;
  v36 = *(v27 + 16);
  outlined init with copy of _ViewInputs(v153, v181);
  v37 = 0;
  LODWORD(v27) = 0;
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v154) != v156)
  {
    v38 = AGCreateWeakAttribute();
    v37 = v38;
    v27 = HIDWORD(v38);
  }

  v39 = _s7SwiftUI12_GraphInputsV3topyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAcAE19ScrollPhaseStateKey33_6CF0FEE8B18B5917140F6DA7931A3E74LLV_09AttributeC008OptionalU0VyAA0ijK0VGTt0B5();
  if ((v39 & 0x100000000) != 0)
  {
    v40 = v156;
  }

  else
  {
    v40 = v39;
  }

  v41 = *(v153 + 20);
  outlined init with copy of _GraphInputs(&v191, v181);
  outlined destroy of _ViewInputs(v153);
  *&v184[4] = v191;
  *&v184[36] = v193;
  *&v184[20] = v192;
  *(&v181[2] + 12) = *v184;
  *&v181[0] = __PAIR64__(v147, v148);
  *(&v181[0] + 1) = __PAIR64__(v150, v151);
  *&v181[1] = __PAIR64__(v152, v36);
  v42 = v152;
  *(&v181[1] + 1) = __PAIR64__(v27, v37);
  *&v181[2] = __PAIR64__(v41, v40);
  v142 = v41;
  *(&v181[3] + 12) = *&v184[16];
  *(&v181[4] + 12) = *&v184[32];
  DWORD2(v181[2]) = v156;
  HIDWORD(v181[5]) = HIDWORD(v193);
  *&v181[6] = MEMORY[0x1E69E7CC0];
  *(&v181[6] + 1) = MEMORY[0x1E69E7CC0];
  *&v181[7] = v6;
  *(&v181[7] + 1) = v7;
  *&v181[8] = v8;
  *(&v181[8] + 1) = v9;
  *&v181[9] = v6;
  *(&v181[9] + 1) = v7;
  *&v181[10] = v8;
  *(&v181[10] + 1) = v9;
  *&v181[11] = v6;
  *(&v181[11] + 1) = v7;
  *&v181[12] = v8;
  *(&v181[12] + 1) = v9;
  LODWORD(v181[13]) = 0;
  WORD4(v181[15]) = 0;
  *(&v181[14] + 8) = 0u;
  *(&v181[13] + 8) = 0u;
  *&v181[16] = 0;
  BYTE8(v181[16]) = 0;
  memset(&v181[17], 0, 176);
  LOBYTE(v181[28]) = v162;
  *(&v181[28] + 12) = 0;
  *(&v181[28] + 4) = 0;
  DWORD1(v181[29]) = 0;
  BYTE8(v181[29]) = v161;
  memcpy(v180, v181, 0x1D9uLL);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for [HorizontalDirection](0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview);
  v44 = v43;
  type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazySubviewPlacements<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazySubviewPlacements);
  v46 = v45;
  lazy protocol witness table accessor for type LazySubviewPlacements<LazyHStackLayout> and conformance LazySubviewPlacements<A>();
  v143 = v46;
  v47 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v181, &lazy cache variable for type metadata for LazySubviewPlacements<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazySubviewPlacements);
  v48 = v158;
  *(v158 + 148) = v47;
  *(v48 + 152) = Attribute.init<A>(body:value:flags:update:)();
  *(v48 + 156) = AGCreateWeakAttribute();
  LODWORD(v180[0]) = *(v48 + 148);
  DWORD1(v180[0]) = v42;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type LazyCollectedPlacements and conformance LazyCollectedPlacements();
  v155 = v44;
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  *(v48 + 120) = MEMORY[0x1E69E7CC0];
  v49 = v156;
  *(v48 + 128) = 0;
  *(v48 + 132) = v49;
  v50 = v187;
  v51 = v188;
  v182[2] = v187;
  v182[3] = v188;
  v52 = v189;
  v182[4] = v189;
  v53 = v190;
  v183 = v190;
  v54 = v185;
  v182[0] = v185;
  v182[1] = v186;
  v55 = v185;
  v56 = (v48 + 32);
  *(v48 + 48) = v186;
  *(v48 + 32) = v54;
  *(v48 + 112) = v53;
  *(v48 + 96) = v52;
  *(v48 + 64) = v50;
  *(v48 + 80) = v51;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.LazyLayoutCacheParentKey);
  v57 = *&v180[0];
  outlined init with copy of _ViewInputs(v182, v180);
  v58 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021LazyLayoutCacheParentV033_EB2336F1CBB87914F55D10FF4F9B475ALLV_Tt0B5(v55, v57);
  if (v58)
  {
    outlined init with copy of LazyLayoutCacheParent(v58 + 72, &v163);
    v59 = v164;
    if ((v164 & 0x8000000000000000) == 0 && swift_weakLoadStrong())
    {
      LazyLayoutViewCache.addChildCache(_:seed:)(v48, v59);
    }
  }

  else
  {
    swift_weakInit();
    v164 = -1;
  }

  v174 = v187;
  v175 = v188;
  v176 = v189;
  v177 = v190;
  v172 = v185;
  v173 = v186;
  swift_beginAccess();
  v60 = *(v48 + 80);
  v178[2] = *(v48 + 64);
  v178[3] = v60;
  v178[4] = *(v48 + 96);
  v179 = *(v48 + 112);
  v61 = *(v48 + 48);
  v178[0] = *v56;
  v178[1] = v61;
  v62 = v175;
  *(v48 + 64) = v174;
  *(v48 + 80) = v62;
  *(v48 + 96) = v176;
  *(v48 + 112) = v177;
  v63 = v173;
  *v56 = v172;
  *(v48 + 48) = v63;
  outlined init with copy of _ViewInputs(&v172, v180);
  outlined destroy of _ViewInputs(v178);
  v64 = *(v188 + 16);
  v157 = v48 + 120;
  v141 = v188;
  if (v64)
  {
    v65 = ( + 40);
    do
    {
      *&v160 = v64;
      v75 = *(v65 - 1);
      v76 = *v65;
      v77 = *(v48 + 148);
      if (v75 == &type metadata for DisplayList.Key)
      {
        LODWORD(v180[0]) = *(v48 + 148);
        *(&v180[0] + 1) = v48;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        lazy protocol witness table accessor for type LazyPreferencePrefetchSubviews and conformance LazyPreferencePrefetchSubviews();

        v78 = Attribute.init<A>(body:value:flags:update:)();

        v77 = v78;
      }

      v66 = LazyPreference.init(subviews:prefetchItems:cache:)(v77, v156);
      v159 = &v139;
      *&v180[0] = v66;
      *(&v180[0] + 1) = v67;
      MEMORY[0x1EEE9AC00](v66);
      *(&v139 - 4) = swift_getAssociatedTypeWitness();
      v69 = type metadata accessor for LazyPreference(0, v75, v76, v68);
      *(&v139 - 3) = v69;
      swift_getWitnessTable(protocol conformance descriptor for LazyPreference<A>, v69);
      *(&v139 - 2) = v70;
      v71 = type metadata accessor for Attribute();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v180, closure #1 in Attribute.init<A>(_:)partial apply, (&v139 - 6), v69, MEMORY[0x1E69E73E0], v71, MEMORY[0x1E69E7410], v72);

      v73 = v165;
      swift_beginAccess();
      _ViewOutputs.appendPreference<A>(key:value:)(v75, v73, v75, v76, v74);
      swift_endAccess();
      v65 += 2;
      v64 = v160 - 1;
      v48 = v158;
    }

    while (v160 != 1);
  }

  else
  {
  }

  if ((BYTE4(v193) & 2) != 0)
  {
    *&v180[0] = __PAIR64__(*(v145 + 16), v148);
    *(&v180[0] + 1) = __PAIR64__(v142, v152);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazyLayoutComputer<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyLayoutComputer);
    lazy protocol witness table accessor for type LazyLayoutComputer<LazyHStackLayout> and conformance LazyLayoutComputer<A>();
    v79 = Attribute.init<A>(body:value:flags:update:)();
    swift_beginAccess();
    *(v48 + 132) = v79;
    v80 = *(v48 + 128);
    if ((v80 & 0x80) == 0)
    {
      *(v48 + 128) = v80 | 0x80;
    }
  }

  v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA19ScrollPrefetchStateV_Tt2g5(v154);
  if (v81 != v156)
  {
    v82 = v81;
    v83 = *(v145 + 16);
    v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0, MEMORY[0x1E69E7CC0]);
    *&v180[0] = __PAIR64__(v147, v148);
    *(&v180[0] + 1) = __PAIR64__(v150, v151);
    *&v180[1] = __PAIR64__(v82, v83);
    *(&v180[1] + 1) = __PAIR64__(v142, v152);
    *&v180[2] = 0;
    BYTE8(v180[2]) = 0;
    HIDWORD(v180[2]) = 0;
    *&v180[3] = v84;
    *(&v180[3] + 8) = xmmword_18DD85550;
    BYTE8(v180[4]) = 0;
    v167 = v180[2];
    v168[0] = v180[3];
    *(v168 + 9) = *(&v180[3] + 9);
    v165 = v180[0];
    v166 = v180[1];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazySubviewPrefetcher<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazySubviewPrefetcher);
    lazy protocol witness table accessor for type LazySubviewPrefetcher<LazyHStackLayout> and conformance LazySubviewPrefetcher<A>();
    Attribute.init<A>(body:value:flags:update:)();
    v48 = v158;
    outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v180, &lazy cache variable for type metadata for LazySubviewPrefetcher<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazySubviewPrefetcher);
    AGGraphAddInput();
    v81 = AGGraphSetFlags();
  }

  MEMORY[0x1EEE9AC00](v81);
  *(&v139 - 2) = closure #1 in LazyLayoutViewCache.init<A>(layout:list:inputs:)partial apply;
  *(&v139 - 1) = v48;
  AGGraphMutateAttribute();
  MEMORY[0x1EEE9AC00](*(v48 + 148));
  *(&v139 - 2) = partial apply for specialized closure #2 in LazyLayoutViewCache.init<A>(layout:list:inputs:);
  *(&v139 - 1) = v48;
  AGGraphMutateAttribute();
  v85 = *(v188 + 16);
  if (v85)
  {
    v86 = (v188 + 32);

    do
    {
      v160 = *v86;
      swift_beginAccess();
      v91 = v160;
      if ((_ViewOutputs.subscript.getter(v160, v160, *(&v160 + 1)) & 0x100000000) != 0)
      {
        swift_endAccess();
      }

      else
      {
        v87 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v87);
        *(&v139 - 2) = v160;
        *(&v139 - 2) = v158;
        v89 = type metadata accessor for LazyPreference(0, v91, *(&v91 + 1), v88);
        MEMORY[0x1EEE9AC00](v89);
        *(&v139 - 4) = v90;
        *(&v139 - 3) = closure #1 in updateOutput #1 <A><A1>(key:) in LazyLayoutViewCache.init<A>(layout:list:inputs:)partial apply;
        *(&v139 - 2) = (&v139 - 6);
        AGGraphMutateAttribute();
      }

      ++v86;
      --v85;
    }

    while (v85);
  }

  else
  {
  }

  v92 = v146;
  v93 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v146);
  v94 = v156;
  if ((v93 & 1) == 0 && v149 == v156)
  {
    v95 = v158;
    goto LABEL_69;
  }

  v96 = AGCreateWeakAttribute();
  v97 = v94;
  v98 = v96;
  v99 = HIDWORD(v96);
  v100 = AGCreateWeakAttribute();
  v101 = v100;
  v102 = HIDWORD(v100);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v154) == v97)
  {
    v103 = 0;
    LODWORD(v104) = 0;
  }

  else
  {
    v105 = AGCreateWeakAttribute();
    v103 = v105;
    v104 = HIDWORD(v105);
  }

  swift_beginAccess();
  v106 = v158;
  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(*(v158 + 120));
  v107 = AGCreateWeakAttribute();
  v170[0] = v98;
  v170[1] = v99;
  v170[2] = v101;
  v170[3] = v102;
  v95 = v106;
  v170[4] = v103;
  v170[5] = v104;
  v171 = v107;
  swift_weakInit();
  if (v93)
  {
    _s14AttributeGraph0A0Vy7SwiftUI8ViewList_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_18DDA6EB0;
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazyScrollable<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyScrollable);
    *(v108 + 56) = v109;
    *(v108 + 64) = &protocol witness table for LazyScrollable<A>;
    v110 = swift_allocObject();
    *(v108 + 32) = v110;
    v95 = v158;
    outlined init with copy of LazyScrollable<LazyHStackLayout>(v170, v110 + 16, &lazy cache variable for type metadata for LazyScrollable<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
    *&v180[0] = v108;
    _s14AttributeGraph0A0Vy7SwiftUI8ViewList_pGMaTm_0(0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v111 = Attribute.init<A>(body:value:flags:update:)();

    swift_beginAccess();
    LOBYTE(v165) = 0;
    PreferencesOutputs.subscript.setter(v111, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
    swift_endAccess();
  }

  v94 = v156;
  if (v149 != v156)
  {
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazyScrollable<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyScrollable);
    *(&v180[1] + 1) = v112;
    *&v180[2] = &protocol witness table for LazyScrollable<A>;
    *&v180[0] = swift_allocObject();
    outlined init with copy of LazyScrollable<LazyHStackLayout>(v170, *&v180[0] + 16, &lazy cache variable for type metadata for LazyScrollable<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection, &protocol descriptor for ScrollableCollection);
    v113 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(v180);
    swift_beginAccess();
    v114 = v146;
    *&v165 = v146;
    v115 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v116 = *(v114 + 16);
    if (v115 == v116)
    {
      goto LABEL_66;
    }

    if (v115 < v116)
    {
      if (*(v114 + 16 * v115 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v165 = __PAIR64__(v113, v149);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();

        v135 = Attribute.init<A>(body:value:flags:update:)();
        v136 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(*(v95 + 120));
        v137 = v156;
        if ((v136 & 0x100000000) == 0)
        {
          v137 = v136;
        }

        *&v165 = __PAIR64__(v137, v135);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]](0);
        type metadata accessor for TypedElement<IsInLazyContainer>(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v138 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v165) = 0;
        v95 = v158;
        PreferencesOutputs.subscript.setter(v138, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
        goto LABEL_67;
      }

LABEL_66:

LABEL_67:
      swift_endAccess();

      *(&v180[6] + 4) = 0u;
      *(&v180[5] + 8) = 0u;
      *(&v180[4] + 8) = 0u;
      *&v180[0] = __PAIR64__(v150, v151);
      *(&v180[0] + 1) = __PAIR64__(v113, v140);
      v117 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v118 = v153;
      outlined init with copy of _ViewInputs(v153, &v165);
      v119 = specialized CachedEnvironment.attribute<A>(id:_:)(v117, closure #1 in _GraphInputs.layoutDirection.getter, 0);
      swift_endAccess();
      LODWORD(v180[1]) = v119;
      outlined init with copy of _GraphInputs(&v191, &v165);
      v120 = v118;
      v92 = v146;
      v121 = outlined destroy of _ViewInputs(v120);
      *(&v180[1] + 8) = v191;
      *(&v180[2] + 8) = v192;
      *(&v180[3] + 8) = v193;
      MEMORY[0x1EEE9AC00](v121);
      *(&v139 - 2) = v180;
      swift_beginAccess();
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v92, v144, implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:)partial apply);
      swift_endAccess();

      outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v170, &lazy cache variable for type metadata for LazyScrollable<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyScrollable);
      outlined destroy of ScrollStateRequestTransform(v180);
      v94 = v156;
      goto LABEL_69;
    }

    goto LABEL_87;
  }

  outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v170, &lazy cache variable for type metadata for LazyScrollable<LazyHStackLayout>, lazy protocol witness table accessor for type LazyHStackLayout and conformance LazyHStackLayout, &type metadata for LazyHStackLayout, type metadata accessor for LazyScrollable);

  v92 = v146;
LABEL_69:
  v122 = v153;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA21FocusableFillerBoundsV0I0V_TtB5Tf4dn_n(v92))
  {
    swift_beginAccess();
    v123 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA15FocusableBoundsV0I0V_TtB5(*(v95 + 120));
    v124 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA21FocusableFillerBoundsV0I0V_TtB5(*(v95 + 120));
    v125 = *(v95 + 148);
    if ((v123 & 0x100000000) != 0)
    {
      v126 = v94;
    }

    else
    {
      v126 = v123;
    }

    if ((v124 & 0x100000000) != 0)
    {
      v127 = v94;
    }

    else
    {
      v127 = v124;
    }

    LOBYTE(v165) = 1;
    outlined init with copy of _ViewInputs(v122, v180);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v128 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v129 = specialized CachedEnvironment.attribute<A>(id:_:)(v128, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
    swift_endAccess();
    outlined destroy of _ViewInputs(v122);
    *&v180[0] = __PAIR64__(v150, v140);
    *(&v180[0] + 1) = __PAIR64__(v147, v151);
    *&v180[1] = __PAIR64__(v129, v125);
    *(&v180[1] + 1) = __PAIR64__(v127, v126);
    LODWORD(v180[2]) = 0;
    *&v180[3] = 0;
    *(&v180[2] + 1) = 0;
    BYTE8(v180[3]) = v165;
    *&v180[4] = MEMORY[0x1E69E7CC8];
    v167 = *&v180[2];
    v168[0] = v180[3];
    *&v168[1] = MEMORY[0x1E69E7CC8];
    v165 = v180[0];
    v166 = v180[1];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for [HorizontalDirection](0, &lazy cache variable for type metadata for [FocusableFillerBounds], &type metadata for FocusableFillerBounds);
    lazy protocol witness table accessor for type LazyFocusableFillerBoundsProvider and conformance LazyFocusableFillerBoundsProvider();
    v130 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of LazyFocusableFillerBoundsProvider(v180);
    swift_beginAccess();
    v169 = 0;
    PreferencesOutputs.subscript.setter(v130, &type metadata for FocusableFillerBounds.Key, &protocol witness table for FocusableFillerBounds.Key);
    swift_endAccess();
  }

  v131 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24LazyLayoutReuseIdleInputV_Tt2g5(v154);
  v133 = v132;
  outlined destroy of LazyLayoutCacheParent(&v163);
  outlined destroy of _ViewInputs(v122);
  v180[2] = v187;
  v180[3] = v188;
  v180[4] = v189;
  LODWORD(v180[5]) = v190;
  v180[0] = v185;
  v180[1] = v186;
  outlined destroy of _ViewInputs(v180);
  if ((v133 & 1) == 0)
  {
    swift_beginAccess();
    *(v95 + 192) = v131;
  }

  return v95;
}

{
  v148 = a1;
  v194 = *MEMORY[0x1E69E9840];
  swift_weakInit();
  *(v3 + 184) = 0;
  *(v3 + 156) = 0;
  v156 = *MEMORY[0x1E698D3F8];
  *(v3 + 164) = v156;
  *(v3 + 176) = MEMORY[0x1E69E7CC8];
  *(v3 + 192) = xmmword_18DD85520;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0;
  *(v3 + 224) = 0;
  v6 = *MEMORY[0x1E695F050];
  v7 = *(MEMORY[0x1E695F050] + 8);
  v8 = *(MEMORY[0x1E695F050] + 16);
  v9 = *(MEMORY[0x1E695F050] + 24);
  *(v3 + 232) = *MEMORY[0x1E695F050];
  *(v3 + 240) = v7;
  *(v3 + 248) = v8;
  *(v3 + 256) = v9;
  *(v3 + 264) = 0;
  *(v3 + 272) = 0;
  *(v3 + 280) = -1;
  *(v3 + 288) = -1;
  *(v3 + 296) = 0;
  *(v3 + 304) = 0;
  *(v3 + 312) = 0;
  *(v3 + 320) = 0;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0;
  *(v3 + 340) = 16777471;
  *(v3 + 344) = 0;
  *(v3 + 352) = 1;
  swift_weakInit();
  v10 = MEMORY[0x1E69E7CC0];
  *(v3 + 368) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI12_ViewList_IDV9CanonicalV_AC23LazyLayoutCacheChildrenVTt0g5(MEMORY[0x1E69E7CC0]);
  *(v3 + 376) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_7SwiftUI12_ViewList_IDV9CanonicalVTt0g5Tf4g_n(v10);
  *(v3 + 384) = 0;
  v139 = v3 + 184;
  specialized static GraphHost.currentHost.getter();
  type metadata accessor for ViewGraph();
  swift_dynamicCastClassUnconditional();
  v158 = v3;
  swift_weakAssign();

  v11 = a3[1];
  v191 = *a3;
  v192 = v11;
  v12 = a3[3];
  v193 = a3[2];
  v13 = v191;
  v187 = v193;
  v188 = v12;
  v189 = a3[4];
  v190 = *(a3 + 20);
  v185 = v191;
  v186 = v11;
  outlined init with copy of _ViewInputs(a3, v181);
  v154 = v13;
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE031CorePlatfromProvidersDefinitionF033_C648E6A51A5817691B7DBFA00A618C21LLV_Tt2g5(v13);
  static CorePlatformProvidersDefinition.providers.getter(v181);
  if (*&v181[8])
  {
    (*(*(&v181[8] + 1) + 16))(&v185);
  }

  v149 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v154);
  v14 = *(a3 + 6);
  v153 = a3;
  v15 = *(a3 + 14);
  v146 = v14;
  v144 = v15;
  v16 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA16ScrollTargetRoleV07ContentI0V_TtB5Tf4dn_n(v14);
  v17 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(v154);
  if (v16 & 1) != 0 && (v17)
  {
    v18 = v188;
    *&v181[0] = v188;
    v19 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);

    v20 = *(v18 + 16);
    if (v19 != v20)
    {
      if (v19 >= v20)
      {
        __break(1u);
        goto LABEL_86;
      }

      if (*(v18 + 16 * v19 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        specialized Array.remove(at:)(v19);
        v18 = v188;
      }
    }

    *&v181[0] = v18;
    v21 = PreferenceKeys._index(of:)(&type metadata for UpdateScrollStateRequestKey);

    v22 = *(v18 + 16);
    if (v21 == v22)
    {
      goto LABEL_13;
    }

    if (v21 < v22)
    {
      if (*(v18 + 16 * v21 + 32) == &type metadata for UpdateScrollStateRequestKey)
      {
        specialized Array.remove(at:)(v21);
      }

      goto LABEL_13;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_13:
  v23 = v156;
  if (v149 != v156)
  {

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE016ScrollTargetRoleF0019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v185, v156);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE21RemovePreferenceInput019_D49197C3D3C61F0DA0P12CF1D72D0077ALLV_Tt2g5(&v185, 1);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE021ContentScrollPositionF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2B5(&v185, 0xFF00000000);

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA12_GraphInputsVAAE027ContentScrollPositionAnchorF033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt2g5(&v185, v156);
  }

  v24 = v158;
  v25 = AGSubgraphGetCurrent();
  if (!v25)
  {
LABEL_88:
    __break(1u);
  }

  *(v158 + 24) = v25;
  v24[34] = a2;
  if (one-time initialization token for layoutDirection != -1)
  {
    swift_once();
  }

  v26 = static CachedEnvironment.ID.layoutDirection;
  v27 = v192;
  swift_beginAccess();
  v28 = specialized CachedEnvironment.attribute<A>(id:_:)(v26, closure #1 in _GraphInputs.layoutDirection.getter, 0);
  swift_endAccess();
  v24[35] = v28;
  if (one-time initialization token for nearestScrollableAxes != -1)
  {
    swift_once();
  }

  v29 = static CachedEnvironment.ID.nearestScrollableAxes;
  swift_beginAccess();
  v30 = specialized CachedEnvironment.attribute<A>(id:_:)(v29, specialized implicit closure #1 in _GraphInputs.nearestScrollableAxes.getter, 0);
  swift_endAccess();
  v24[36] = v30;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.ContentScrollPositionKey);
  v31 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021ContentScrollPositionV033_E7547C80DE3C7109A44F15E50A35C84FLLV_Tt0B5(v154, *&v181[0]);
  v32 = v23;
  if (v31)
  {
    v32 = v23;
    if (*(v31 + 76) != 255)
    {
      v32 = *(v31 + 72);
      if (((*(v31 + 76) << 32) & 0x100000000) != 0)
      {
        v32 = v23;
      }
    }
  }

  v24[41] = v32;
  if (one-time initialization token for accessibilityEnabled != -1)
  {
    swift_once();
  }

  v33 = static CachedEnvironment.ID.accessibilityEnabled;
  swift_beginAccess();
  v34 = specialized CachedEnvironment.attribute<A>(id:_:)(v33, specialized implicit closure #1 in _GraphInputs.accessibilityEnabled.getter, 0);
  swift_endAccess();
  v24[42] = v34;
  v140 = DWORD2(v192);
  LODWORD(v181[0]) = DWORD2(v192);
  *(&v181[0] + 1) = 0;
  LODWORD(v181[1]) = 0;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for LazyLayoutViewCache();
  lazy protocol witness table accessor for type UpdateViewCache and conformance UpdateViewCache();
  v152 = Attribute.init<A>(body:value:flags:update:)();
  v162 = 1;
  v161 = 1;
  v147 = *(v153 + 18);
  v35 = *(v153 + 16);
  v150 = *(v153 + 15);
  v151 = v35;
  v145 = v27;
  v36 = *(v27 + 16);
  outlined init with copy of _ViewInputs(v153, v181);
  v37 = 0;
  LODWORD(v27) = 0;
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v154) != v156)
  {
    v38 = AGCreateWeakAttribute();
    v37 = v38;
    v27 = HIDWORD(v38);
  }

  v39 = _s7SwiftUI12_GraphInputsV3topyq_SgxmAA0C5InputRzAA5StackOyq_G5ValueRtzr0_lFAcAE19ScrollPhaseStateKey33_6CF0FEE8B18B5917140F6DA7931A3E74LLV_09AttributeC008OptionalU0VyAA0ijK0VGTt0B5();
  if ((v39 & 0x100000000) != 0)
  {
    v40 = v156;
  }

  else
  {
    v40 = v39;
  }

  v41 = *(v153 + 20);
  outlined init with copy of _GraphInputs(&v191, v181);
  outlined destroy of _ViewInputs(v153);
  *&v184[4] = v191;
  *&v184[36] = v193;
  *&v184[20] = v192;
  *(&v181[2] + 12) = *v184;
  *&v181[0] = __PAIR64__(v147, v148);
  *(&v181[0] + 1) = __PAIR64__(v150, v151);
  *&v181[1] = __PAIR64__(v152, v36);
  v42 = v152;
  *(&v181[1] + 1) = __PAIR64__(v27, v37);
  *&v181[2] = __PAIR64__(v41, v40);
  v142 = v41;
  *(&v181[3] + 12) = *&v184[16];
  *(&v181[4] + 12) = *&v184[32];
  DWORD2(v181[2]) = v156;
  HIDWORD(v181[5]) = HIDWORD(v193);
  *&v181[6] = MEMORY[0x1E69E7CC0];
  *(&v181[6] + 1) = MEMORY[0x1E69E7CC0];
  *&v181[7] = v6;
  *(&v181[7] + 1) = v7;
  *&v181[8] = v8;
  *(&v181[8] + 1) = v9;
  *&v181[9] = v6;
  *(&v181[9] + 1) = v7;
  *&v181[10] = v8;
  *(&v181[10] + 1) = v9;
  *&v181[11] = v6;
  *(&v181[11] + 1) = v7;
  *&v181[12] = v8;
  *(&v181[12] + 1) = v9;
  LODWORD(v181[13]) = 0;
  WORD4(v181[15]) = 0;
  *(&v181[14] + 8) = 0u;
  *(&v181[13] + 8) = 0u;
  *&v181[16] = 0;
  BYTE8(v181[16]) = 0;
  memset(&v181[17], 0, 176);
  LOBYTE(v181[28]) = v162;
  *(&v181[28] + 12) = 0;
  *(&v181[28] + 4) = 0;
  DWORD1(v181[29]) = 0;
  BYTE8(v181[29]) = v161;
  memcpy(v180, v181, 0x1D9uLL);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for [HorizontalDirection](0, &lazy cache variable for type metadata for [_LazyLayout_PlacedSubview], &type metadata for _LazyLayout_PlacedSubview);
  v44 = v43;
  type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazySubviewPlacements<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazySubviewPlacements);
  v46 = v45;
  lazy protocol witness table accessor for type LazySubviewPlacements<LazyVStackLayout> and conformance LazySubviewPlacements<A>();
  v143 = v46;
  v47 = Attribute.init<A>(body:value:flags:update:)();
  outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v181, &lazy cache variable for type metadata for LazySubviewPlacements<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazySubviewPlacements);
  v48 = v158;
  *(v158 + 148) = v47;
  *(v48 + 152) = Attribute.init<A>(body:value:flags:update:)();
  *(v48 + 156) = AGCreateWeakAttribute();
  LODWORD(v180[0]) = *(v48 + 148);
  DWORD1(v180[0]) = v42;
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  lazy protocol witness table accessor for type LazyCollectedPlacements and conformance LazyCollectedPlacements();
  v155 = v44;
  Attribute.init<A>(body:value:flags:update:)();
  AGGraphSetFlags();
  *(v48 + 120) = MEMORY[0x1E69E7CC0];
  v49 = v156;
  *(v48 + 128) = 0;
  *(v48 + 132) = v49;
  v50 = v187;
  v51 = v188;
  v182[2] = v187;
  v182[3] = v188;
  v52 = v189;
  v182[4] = v189;
  v53 = v190;
  v183 = v190;
  v54 = v185;
  v182[0] = v185;
  v182[1] = v186;
  v55 = v185;
  v56 = (v48 + 32);
  *(v48 + 48) = v186;
  *(v48 + 32) = v54;
  *(v48 + 112) = v53;
  *(v48 + 96) = v52;
  *(v48 + 64) = v50;
  *(v48 + 80) = v51;
  BloomFilter.init(hashValue:)(&type metadata for _GraphInputs.LazyLayoutCacheParentKey);
  v57 = *&v180[0];
  outlined init with copy of _ViewInputs(v182, v180);
  v58 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA12_GraphInputsVAAE021LazyLayoutCacheParentV033_EB2336F1CBB87914F55D10FF4F9B475ALLV_Tt0B5(v55, v57);
  if (v58)
  {
    outlined init with copy of LazyLayoutCacheParent(v58 + 72, &v163);
    v59 = v164;
    if ((v164 & 0x8000000000000000) == 0 && swift_weakLoadStrong())
    {
      LazyLayoutViewCache.addChildCache(_:seed:)(v48, v59);
    }
  }

  else
  {
    swift_weakInit();
    v164 = -1;
  }

  v174 = v187;
  v175 = v188;
  v176 = v189;
  v177 = v190;
  v172 = v185;
  v173 = v186;
  swift_beginAccess();
  v60 = *(v48 + 80);
  v178[2] = *(v48 + 64);
  v178[3] = v60;
  v178[4] = *(v48 + 96);
  v179 = *(v48 + 112);
  v61 = *(v48 + 48);
  v178[0] = *v56;
  v178[1] = v61;
  v62 = v175;
  *(v48 + 64) = v174;
  *(v48 + 80) = v62;
  *(v48 + 96) = v176;
  *(v48 + 112) = v177;
  v63 = v173;
  *v56 = v172;
  *(v48 + 48) = v63;
  outlined init with copy of _ViewInputs(&v172, v180);
  outlined destroy of _ViewInputs(v178);
  v64 = *(v188 + 16);
  v157 = v48 + 120;
  v141 = v188;
  if (v64)
  {
    v65 = ( + 40);
    do
    {
      *&v160 = v64;
      v75 = *(v65 - 1);
      v76 = *v65;
      v77 = *(v48 + 148);
      if (v75 == &type metadata for DisplayList.Key)
      {
        LODWORD(v180[0]) = *(v48 + 148);
        *(&v180[0] + 1) = v48;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        lazy protocol witness table accessor for type LazyPreferencePrefetchSubviews and conformance LazyPreferencePrefetchSubviews();

        v78 = Attribute.init<A>(body:value:flags:update:)();

        v77 = v78;
      }

      v66 = LazyPreference.init(subviews:prefetchItems:cache:)(v77, v156);
      v159 = &v139;
      *&v180[0] = v66;
      *(&v180[0] + 1) = v67;
      MEMORY[0x1EEE9AC00](v66);
      *(&v139 - 4) = swift_getAssociatedTypeWitness();
      v69 = type metadata accessor for LazyPreference(0, v75, v76, v68);
      *(&v139 - 3) = v69;
      swift_getWitnessTable(protocol conformance descriptor for LazyPreference<A>, v69);
      *(&v139 - 2) = v70;
      v71 = type metadata accessor for Attribute();
      _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v180, partial apply for closure #1 in Attribute.init<A>(_:), (&v139 - 6), v69, MEMORY[0x1E69E73E0], v71, MEMORY[0x1E69E7410], v72);

      v73 = v165;
      swift_beginAccess();
      _ViewOutputs.appendPreference<A>(key:value:)(v75, v73, v75, v76, v74);
      swift_endAccess();
      v65 += 2;
      v64 = v160 - 1;
      v48 = v158;
    }

    while (v160 != 1);
  }

  else
  {
  }

  if ((BYTE4(v193) & 2) != 0)
  {
    *&v180[0] = __PAIR64__(*(v145 + 16), v148);
    *(&v180[0] + 1) = __PAIR64__(v142, v152);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazyLayoutComputer<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyLayoutComputer);
    lazy protocol witness table accessor for type LazyLayoutComputer<LazyVStackLayout> and conformance LazyLayoutComputer<A>();
    v79 = Attribute.init<A>(body:value:flags:update:)();
    swift_beginAccess();
    *(v48 + 132) = v79;
    v80 = *(v48 + 128);
    if ((v80 & 0x80) == 0)
    {
      *(v48 + 128) = v80 | 0x80;
    }
  }

  v81 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA19ScrollPrefetchStateV_Tt2g5(v154);
  if (v81 != v156)
  {
    v82 = v81;
    v83 = *(v145 + 16);
    v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 4, 0, MEMORY[0x1E69E7CC0]);
    *&v180[0] = __PAIR64__(v147, v148);
    *(&v180[0] + 1) = __PAIR64__(v150, v151);
    *&v180[1] = __PAIR64__(v82, v83);
    *(&v180[1] + 1) = __PAIR64__(v142, v152);
    *&v180[2] = 0;
    BYTE8(v180[2]) = 0;
    HIDWORD(v180[2]) = 0;
    *&v180[3] = v84;
    *(&v180[3] + 8) = xmmword_18DD85550;
    BYTE8(v180[4]) = 0;
    v167 = v180[2];
    v168[0] = v180[3];
    *(v168 + 9) = *(&v180[3] + 9);
    v165 = v180[0];
    v166 = v180[1];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazySubviewPrefetcher<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazySubviewPrefetcher);
    lazy protocol witness table accessor for type LazySubviewPrefetcher<LazyVStackLayout> and conformance LazySubviewPrefetcher<A>();
    Attribute.init<A>(body:value:flags:update:)();
    v48 = v158;
    outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v180, &lazy cache variable for type metadata for LazySubviewPrefetcher<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazySubviewPrefetcher);
    AGGraphAddInput();
    v81 = AGGraphSetFlags();
  }

  MEMORY[0x1EEE9AC00](v81);
  *(&v139 - 2) = partial apply for closure #1 in LazyLayoutViewCache.init<A>(layout:list:inputs:);
  *(&v139 - 1) = v48;
  AGGraphMutateAttribute();
  MEMORY[0x1EEE9AC00](*(v48 + 148));
  *(&v139 - 2) = partial apply for specialized closure #2 in LazyLayoutViewCache.init<A>(layout:list:inputs:);
  *(&v139 - 1) = v48;
  AGGraphMutateAttribute();
  v85 = *(v188 + 16);
  if (v85)
  {
    v86 = (v188 + 32);

    do
    {
      v160 = *v86;
      swift_beginAccess();
      v91 = v160;
      if ((_ViewOutputs.subscript.getter(v160, v160, *(&v160 + 1)) & 0x100000000) != 0)
      {
        swift_endAccess();
      }

      else
      {
        v87 = swift_endAccess();
        MEMORY[0x1EEE9AC00](v87);
        *(&v139 - 2) = v160;
        *(&v139 - 2) = v158;
        v89 = type metadata accessor for LazyPreference(0, v91, *(&v91 + 1), v88);
        MEMORY[0x1EEE9AC00](v89);
        *(&v139 - 4) = v90;
        *(&v139 - 3) = partial apply for closure #1 in updateOutput #1 <A><A1>(key:) in LazyLayoutViewCache.init<A>(layout:list:inputs:);
        *(&v139 - 2) = (&v139 - 6);
        AGGraphMutateAttribute();
      }

      ++v86;
      --v85;
    }

    while (v85);
  }

  else
  {
  }

  v92 = v146;
  v93 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA010ScrollablehI0V_TtB5Tf4dn_n(v146);
  v94 = v156;
  if ((v93 & 1) == 0 && v149 == v156)
  {
    v95 = v158;
    goto LABEL_69;
  }

  v96 = AGCreateWeakAttribute();
  v97 = v94;
  v98 = v96;
  v99 = HIDWORD(v96);
  v100 = AGCreateWeakAttribute();
  v101 = v100;
  v102 = HIDWORD(v100);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE010ScrollableF033_425A368F5B4FB640C2ED9A96D72B5AF3LLV_Tt2g5(v154) == v97)
  {
    v103 = 0;
    LODWORD(v104) = 0;
  }

  else
  {
    v105 = AGCreateWeakAttribute();
    v103 = v105;
    v104 = HIDWORD(v105);
  }

  swift_beginAccess();
  v106 = v158;
  _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA010ScrollablehI0V_TtB5(*(v158 + 120));
  v107 = AGCreateWeakAttribute();
  v170[0] = v98;
  v170[1] = v99;
  v170[2] = v101;
  v170[3] = v102;
  v95 = v106;
  v170[4] = v103;
  v170[5] = v104;
  v171 = v107;
  swift_weakInit();
  if (v93)
  {
    _s14AttributeGraph0A0Vy7SwiftUI8ViewList_pGMaTm_0(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Scrollable>, &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E6F90]);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_18DDA6EB0;
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazyScrollable<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyScrollable);
    *(v108 + 56) = v109;
    *(v108 + 64) = &protocol witness table for LazyScrollable<A>;
    v110 = swift_allocObject();
    *(v108 + 32) = v110;
    v95 = v158;
    outlined init with copy of LazyScrollable<LazyHStackLayout>(v170, v110 + 16, &lazy cache variable for type metadata for LazyScrollable<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
    *&v180[0] = v108;
    _s14AttributeGraph0A0Vy7SwiftUI8ViewList_pGMaTm_0(0, &lazy cache variable for type metadata for [Scrollable], &lazy cache variable for type metadata for Scrollable, &protocol descriptor for Scrollable, MEMORY[0x1E69E62F8]);
    v111 = Attribute.init<A>(body:value:flags:update:)();

    swift_beginAccess();
    LOBYTE(v165) = 0;
    PreferencesOutputs.subscript.setter(v111, &type metadata for ScrollablePreferenceKey, &protocol witness table for ScrollablePreferenceKey);
    swift_endAccess();
  }

  v94 = v156;
  if (v149 != v156)
  {
    type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, &lazy cache variable for type metadata for LazyScrollable<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyScrollable);
    *(&v180[1] + 1) = v112;
    *&v180[2] = &protocol witness table for LazyScrollable<A>;
    *&v180[0] = swift_allocObject();
    outlined init with copy of LazyScrollable<LazyHStackLayout>(v170, *&v180[0] + 16, &lazy cache variable for type metadata for LazyScrollable<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout);
    type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for ScrollableCollection, &protocol descriptor for ScrollableCollection);
    v113 = Attribute.init<A>(body:value:flags:update:)();
    __swift_destroy_boxed_opaque_existential_1(v180);
    swift_beginAccess();
    v114 = v146;
    *&v165 = v146;
    v115 = PreferenceKeys._index(of:)(&type metadata for ScrollTargetRole.ContentKey);
    v116 = *(v114 + 16);
    if (v115 == v116)
    {
      goto LABEL_66;
    }

    if (v115 < v116)
    {
      if (*(v114 + 16 * v115 + 32) == &type metadata for ScrollTargetRole.ContentKey)
      {
        *&v165 = __PAIR64__(v113, v149);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for (_:)();
        lazy protocol witness table accessor for type ScrollTargetRole.SetLayout and conformance ScrollTargetRole.SetLayout();

        v135 = Attribute.init<A>(body:value:flags:update:)();
        v136 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA16ScrollTargetRoleV07ContentI0V_TtB5(*(v95 + 120));
        v137 = v156;
        if ((v136 & 0x100000000) == 0)
        {
          v137 = v136;
        }

        *&v165 = __PAIR64__(v137, v135);
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ScrollTargetRole.Role : [ScrollableCollection]](0);
        type metadata accessor for TypedElement<IsInLazyContainer>(0, &lazy cache variable for type metadata for PreferenceTransform<ScrollTargetRole.ContentKey>, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey, type metadata accessor for PreferenceTransform);
        lazy protocol witness table accessor for type PreferenceTransform<ScrollTargetRole.ContentKey> and conformance PreferenceTransform<A>();
        v138 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v165) = 0;
        v95 = v158;
        PreferencesOutputs.subscript.setter(v138, &type metadata for ScrollTargetRole.ContentKey, &protocol witness table for ScrollTargetRole.ContentKey);
        goto LABEL_67;
      }

LABEL_66:

LABEL_67:
      swift_endAccess();

      *(&v180[6] + 4) = 0u;
      *(&v180[5] + 8) = 0u;
      *(&v180[4] + 8) = 0u;
      *&v180[0] = __PAIR64__(v150, v151);
      *(&v180[0] + 1) = __PAIR64__(v113, v140);
      v117 = static CachedEnvironment.ID.layoutDirection;
      swift_beginAccess();
      v118 = v153;
      outlined init with copy of _ViewInputs(v153, &v165);
      v119 = specialized CachedEnvironment.attribute<A>(id:_:)(v117, closure #1 in _GraphInputs.layoutDirection.getter, 0);
      swift_endAccess();
      LODWORD(v180[1]) = v119;
      outlined init with copy of _GraphInputs(&v191, &v165);
      v120 = v118;
      v92 = v146;
      v121 = outlined destroy of _ViewInputs(v120);
      *(&v180[1] + 8) = v191;
      *(&v180[2] + 8) = v192;
      *(&v180[3] + 8) = v193;
      MEMORY[0x1EEE9AC00](v121);
      *(&v139 - 2) = v180;
      swift_beginAccess();
      _s7SwiftUI18PreferencesOutputsV25makePreferenceTransformer6inputs3key9transformyAA0C6InputsV_xm14AttributeGraph0L0Vyy5ValueQzzcGyXKtAA0F3KeyRzlFAA024UpdateScrollStateRequestO0V_Tt0B5(v92, v144, partial apply for implicit closure #9 in static Layout.makeDynamicView(root:inputs:properties:list:));
      swift_endAccess();

      outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v170, &lazy cache variable for type metadata for LazyScrollable<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyScrollable);
      outlined destroy of ScrollStateRequestTransform(v180);
      v94 = v156;
      goto LABEL_69;
    }

    goto LABEL_87;
  }

  outlined destroy of LazySubviewPlacements<LazyVStackLayout>(v170, &lazy cache variable for type metadata for LazyScrollable<LazyVStackLayout>, lazy protocol witness table accessor for type LazyVStackLayout and conformance LazyVStackLayout, &type metadata for LazyVStackLayout, type metadata accessor for LazyScrollable);

  v92 = v146;
LABEL_69:
  v122 = v153;
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA21FocusableFillerBoundsV0I0V_TtB5Tf4dn_n(v92))
  {
    swift_beginAccess();
    v123 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA15FocusableBoundsV0I0V_TtB5(*(v95 + 120));
    v124 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA21FocusableFillerBoundsV0I0V_TtB5(*(v95 + 120));
    v125 = *(v95 + 148);
    if ((v123 & 0x100000000) != 0)
    {
      v126 = v94;
    }

    else
    {
      v126 = v123;
    }

    if ((v124 & 0x100000000) != 0)
    {
      v127 = v94;
    }

    else
    {
      v127 = v124;
    }

    LOBYTE(v165) = 1;
    outlined init with copy of _ViewInputs(v122, v180);
    if (one-time initialization token for pixelLength != -1)
    {
      swift_once();
    }

    v128 = static CachedEnvironment.ID.pixelLength;
    swift_beginAccess();
    v129 = specialized CachedEnvironment.attribute<A>(id:_:)(v128, key path getter for EnvironmentValues.pixelLength : EnvironmentValues, 0);
    swift_endAccess();
    outlined destroy of _ViewInputs(v122);
    *&v180[0] = __PAIR64__(v150, v140);
    *(&v180[0] + 1) = __PAIR64__(v147, v151);
    *&v180[1] = __PAIR64__(v129, v125);
    *(&v180[1] + 1) = __PAIR64__(v127, v126);
    LODWORD(v180[2]) = 0;
    *&v180[3] = 0;
    *(&v180[2] + 1) = 0;
    BYTE8(v180[3]) = v165;
    *&v180[4] = MEMORY[0x1E69E7CC8];
    v167 = *&v180[2];
    v168[0] = v180[3];
    *&v168[1] = MEMORY[0x1E69E7CC8];
    v165 = v180[0];
    v166 = v180[1];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for [HorizontalDirection](0, &lazy cache variable for type metadata for [FocusableFillerBounds], &type metadata for FocusableFillerBounds);
    lazy protocol witness table accessor for type LazyFocusableFillerBoundsProvider and conformance LazyFocusableFillerBoundsProvider();
    v130 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of LazyFocusableFillerBoundsProvider(v180);
    swift_beginAccess();
    v169 = 0;
    PreferencesOutputs.subscript.setter(v130, &type metadata for FocusableFillerBounds.Key, &protocol witness table for FocusableFillerBounds.Key);
    swift_endAccess();
  }

  v131 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA24LazyLayoutReuseIdleInputV_Tt2g5(v154);
  v133 = v132;
  outlined destroy of LazyLayoutCacheParent(&v163);
  outlined destroy of _ViewInputs(v122);
  v180[2] = v187;
  v180[3] = v188;
  v180[4] = v189;
  LODWORD(v180[5]) = v190;
  v180[0] = v185;
  v180[1] = v186;
  outlined destroy of _ViewInputs(v180);
  if ((v133 & 1) == 0)
  {
    swift_beginAccess();
    *(v95 + 192) = v131;
  }

  return v95;
}

uint64_t specialized _LazyLayoutViewCache.init(layout:list:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t))
{
  v9 = v7;
  v13 = v7 + *(*v7 + 464);
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *v13 = 0;
  *(v13 + 24) = 1;
  *(v13 + 32) = 0;
  *(v13 + 40) = 1;
  *(v13 + 48) = 0u;
  *(v13 + 64) = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  *(v13 + 80) = 0u;
  *(v13 + 96) = _Q1;
  type metadata accessor for _LazyLayoutViewCache<LazyVStackLayout>(0, a4, a5, a6, type metadata accessor for _LazyStack_Cache);
  v20 = (v13 + *(v19 + 60));
  v21 = MEMORY[0x1E69E7CC0];
  *v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v20[1] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12CoreGraphics7CGFloatV_SiTt0g5Tf4g_n(v21);
  type metadata accessor for EstimationCache(0);
  type metadata accessor for IndexSet();
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet();
  type metadata accessor for [HorizontalDirection](0, &lazy cache variable for type metadata for [Int], MEMORY[0x1E69E6530]);
  lazy protocol witness table accessor for type [Int] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v9 + 392) = a1;
  return a7(a1, a2, a3);
}

uint64_t protocol witness for static _VariadicView_ViewRoot._makeView(root:inputs:body:) in conformance LazyLayoutAdaptor_V1<A>@<X0>(int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  swift_getWitnessTable(protocol conformance descriptor for LazyLayoutAdaptor_V1<A>, a4);

  return static LazyLayout._makeView(root:inputs:body:)(a1, a2, a3, a4, v10, a5);
}

void lazy protocol witness table accessor for type _LazyLayout_PrefetchResult and conformance _LazyLayout_PrefetchResult()
{
  if (!lazy protocol witness table cache variable for type _LazyLayout_PrefetchResult and conformance _LazyLayout_PrefetchResult)
  {
    swift_getWitnessTable(protocol conformance descriptor for _LazyLayout_PrefetchResult, &type metadata for _LazyLayout_PrefetchResult, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _LazyLayout_PrefetchResult and conformance _LazyLayout_PrefetchResult);
  }
}

void lazy protocol witness table accessor for type _LazyLayout_Subview.Kind and conformance _LazyLayout_Subview.Kind()
{
  if (!lazy protocol witness table cache variable for type _LazyLayout_Subview.Kind and conformance _LazyLayout_Subview.Kind)
  {
    swift_getWitnessTable(protocol conformance descriptor for _LazyLayout_Subview.Kind, &type metadata for _LazyLayout_Subview.Kind, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _LazyLayout_Subview.Kind and conformance _LazyLayout_Subview.Kind);
  }
}

void lazy protocol witness table accessor for type _LazyLayout_Section.ID and conformance _LazyLayout_Section.ID()
{
  if (!lazy protocol witness table cache variable for type _LazyLayout_Section.ID and conformance _LazyLayout_Section.ID)
  {
    swift_getWitnessTable(protocol conformance descriptor for _LazyLayout_Section.ID, &type metadata for _LazyLayout_Section.ID, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type _LazyLayout_Section.ID and conformance _LazyLayout_Section.ID);
  }
}

uint64_t getEnumTagSinglePayload for _LazyLayout_PlacementContext(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 297))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 296);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for _LazyLayout_PlacementContext(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
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
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 297) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 297) = 0;
    }

    if (a2)
    {
      *(result + 296) = a2 + 1;
    }
  }

  return result;
}

uint64_t *assignWithCopy for _LazyLayout_Subviews(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  if (a1 != a2)
  {
    outlined destroy of _ViewList_Node(a1 + 2);
    if (*(a2 + 109) > 1u)
    {
      if (*(a2 + 109) == 2)
      {
        a1[2] = a2[2];
        *(a1 + 109) = 2;
LABEL_10:

        goto LABEL_11;
      }

      *(a1 + 4) = *(a2 + 4);
      a1[3] = a2[3];
      a1[4] = a2[4];
      *(a1 + 40) = *(a2 + 40);
      v9 = 3;
    }

    else
    {
      if (!*(a2 + 109))
      {
        v4 = a2[5];
        a1[5] = v4;
        a1[6] = a2[6];
        (**(v4 - 8))(a1 + 2, a2 + 2);
        v5 = *(a2 + 60);
        *(a1 + 14) = *(a2 + 14);
        *(a1 + 60) = v5;
        *(a1 + 109) = 0;
        goto LABEL_11;
      }

      a1[2] = a2[2];
      a1[3] = a2[3];
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      a1[5] = a2[5];
      v6 = a2[9];
      a1[9] = v6;
      a1[10] = a2[10];
      v7 = **(v6 - 8);

      v7(a1 + 6, a2 + 6, v6);
      a1[11] = a2[11];
      a1[12] = a2[12];
      v8 = *(a2 + 26);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 26) = v8;
      v9 = 1;
    }

    *(a1 + 109) = v9;

    goto LABEL_10;
  }

LABEL_11:
  a1[14] = a2[14];

  a1[15] = a2[15];
  v10 = *(a2 + 32);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 32) = v10;
  *(a1 + 133) = *(a2 + 133);
  *(a1 + 134) = *(a2 + 134);
  a1[17] = a2[17];
  return a1;
}

uint64_t *assignWithTake for _LazyLayout_Subviews(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 2) = *(a2 + 2);
  if (a1 != a2)
  {
    outlined destroy of _ViewList_Node(a1 + 2);
    v4 = *(a2 + 4);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 4) = v4;
    *(a1 + 5) = *(a2 + 5);
    *(a1 + 94) = *(a2 + 94);
    v5 = *(a2 + 2);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 2) = v5;
  }

  a1[14] = a2[14];

  a1[15] = a2[15];
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 133) = *(a2 + 133);
  *(a1 + 134) = *(a2 + 134);
  a1[17] = a2[17];
  return a1;
}

uint64_t getEnumTagSinglePayload for _LazyLayout_Subviews(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t storeEnumTagSinglePayload for _LazyLayout_Subviews(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t *assignWithCopy for _LazyLayout_Subviews.Node(uint64_t *a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 144);
    if (v4 >= 2)
    {
      v4 = *a1 + 2;
    }

    if (v4 == 1)
    {

      goto LABEL_16;
    }

    v5 = *(a1 + 109);
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        goto LABEL_14;
      }

      if (v5 == 3)
      {

        goto LABEL_14;
      }
    }

    else if (*(a1 + 109))
    {
      if (v5 == 1)
      {

        __swift_destroy_boxed_opaque_existential_1(a1 + 6);

LABEL_14:
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(a1 + 2);
    }

LABEL_16:
    v6 = *(a2 + 144);
    if (v6 >= 2)
    {
      v6 = *a2 + 2;
    }

    if (v6 == 1)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      a1[2] = a2[2];
      *(a1 + 24) = *(a2 + 24);
      a1[4] = a2[4];
      a1[5] = a2[5];
      a1[6] = a2[6];
      *(a1 + 14) = *(a2 + 14);
      a1[8] = a2[8];
      *(a1 + 144) = 1;

      return a1;
    }

    *a1 = *a2;
    *(a1 + 2) = *(a2 + 2);
    v7 = *(a2 + 109);

    if (v7 > 1)
    {
      if (v7 == 2)
      {
        a1[2] = a2[2];
        *(a1 + 109) = 2;
LABEL_28:

        goto LABEL_29;
      }

      *(a1 + 4) = *(a2 + 4);
      a1[3] = a2[3];
      a1[4] = a2[4];
      *(a1 + 40) = *(a2 + 40);
      v13 = 3;
    }

    else
    {
      if (!v7)
      {
        v8 = a2[5];
        a1[5] = v8;
        a1[6] = a2[6];
        (**(v8 - 8))(a1 + 2, a2 + 2);
        v9 = *(a2 + 60);
        *(a1 + 14) = *(a2 + 14);
        *(a1 + 60) = v9;
        *(a1 + 109) = 0;
LABEL_29:
        a1[14] = a2[14];
        a1[15] = a2[15];
        v14 = *(a2 + 32);
        *(a1 + 131) = *(a2 + 131);
        *(a1 + 32) = v14;
        a1[17] = a2[17];
        *(a1 + 144) = 0;

        return a1;
      }

      a1[2] = a2[2];
      a1[3] = a2[3];
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      a1[5] = a2[5];
      v10 = a2[9];
      a1[9] = v10;
      a1[10] = a2[10];
      v11 = **(v10 - 8);

      v11(a1 + 6, a2 + 6, v10);
      a1[11] = a2[11];
      a1[12] = a2[12];
      v12 = *(a2 + 26);
      *(a1 + 108) = *(a2 + 108);
      *(a1 + 26) = v12;
      v13 = 1;
    }

    *(a1 + 109) = v13;

    goto LABEL_28;
  }

  return a1;
}