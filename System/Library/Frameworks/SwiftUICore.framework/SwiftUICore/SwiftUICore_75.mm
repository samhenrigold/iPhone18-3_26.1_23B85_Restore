void specialized ViewLayoutEngine.update(layout:context:children:)(uint64_t a1, unint64_t a2, Swift::UInt32 a3, int a4, uint64_t a5)
{
  v6 = v5;
  v21 = *MEMORY[0x1E69E9840];

  *(v6 + 88) = a4;
  *(v6 + 96) = a5;
  v16[0] = a3;
  KeyPath = swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  v18 = KeyPath;
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  LOBYTE(v19[0]) = 0;
  LOBYTE(a5) = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(v6 + 104) = a5;
  v11 = *(v6 + 48);
  v19[2] = *(v6 + 32);
  v19[3] = v11;
  v19[4] = *(v6 + 64);
  v20 = *(v6 + 80);
  v12 = *(v6 + 16);
  v19[0] = *v6;
  v19[1] = v12;
  outlined init with copy of GlassEffectLayout(a1, v16);
  outlined destroy of GlassEffectLayout(v19);
  v13 = *(a1 + 48);
  *(v6 + 32) = *(a1 + 32);
  *(v6 + 48) = v13;
  *(v6 + 64) = *(a1 + 64);
  *(v6 + 80) = *(a1 + 80);
  v14 = *(a1 + 16);
  *v6 = *a1;
  *(v6 + 16) = v14;
  LOBYTE(v16[0]) = 1;
  LOBYTE(v18) = 1;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 112) = 0u;
  *(v6 + 160) = 1;
  *(v6 + 168) = 0u;
  *(v6 + 184) = 0u;
  *(v6 + 200) = 0u;
  *(v6 + 216) = 1;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 0u;
  *(v6 + 256) = 0u;
  *(v6 + 272) = 1;

  v15 = MEMORY[0x1E69E7CC0];
  *(v6 + 320) = 0;
  *(v6 + 328) = 0;
  *(v6 + 312) = v15;
  *(v6 + 336) = 0;
  *(v6 + 337) = v16[0];
  *(v6 + 340) = *(v16 + 3);
  *(v6 + 344) = 0;
  *(v6 + 352) = 0;
  *(v6 + 360) = 0;
  *(v6 + 361) = v18;
  *(v6 + 364) = *(&v18 + 3);
  *(v6 + 384) = 0;
  *(v6 + 368) = 0;
  *(v6 + 376) = 0;

  *(v6 + 392) = 0;
}

void specialized ViewLayoutEngine.update(layout:context:children:)(char a1, unint64_t a2, Swift::UInt32 a3, int a4, uint64_t a5)
{
  v6 = v5;

  *(v6 + 8) = a4;
  *(v6 + 16) = a5;
  *v13 = a3;
  swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  LOBYTE(a5) = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(v6 + 24) = a5;
  *v6 = a1;
  v12[0] = 1;
  v13[0] = 1;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 32) = 0u;
  *(v6 + 80) = 1;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0u;
  *(v6 + 136) = 1;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 1;

  v11 = MEMORY[0x1E69E7CC0];
  *(v6 + 240) = 0;
  *(v6 + 248) = 0;
  *(v6 + 232) = v11;
  *(v6 + 256) = 0;
  *(v6 + 257) = *v12;
  *(v6 + 260) = *&v12[3];
  *(v6 + 264) = 0;
  *(v6 + 272) = 0;
  *(v6 + 280) = 0;
  *(v6 + 281) = *v13;
  *(v6 + 284) = *&v13[3];
  *(v6 + 304) = 0;
  *(v6 + 288) = 0;
  *(v6 + 296) = 0;

  *(v6 + 312) = 0;
}

double _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA010GlassEntryD033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt3B5@<D0>(const void *a1@<X0>, Swift::UInt32 a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 512) = 0u;
  *(a6 + 528) = 0u;
  *(a6 + 544) = 0u;
  *(a6 + 560) = 1;
  *(a6 + 568) = 0u;
  *(a6 + 584) = 0u;
  *(a6 + 600) = 0u;
  *(a6 + 616) = 1;
  *(a6 + 624) = 0u;
  *(a6 + 640) = 0u;
  *(a6 + 656) = 0u;
  *(a6 + 672) = 1;
  v8 = (a6 + 680);
  v9 = MEMORY[0x1E69E7CC0];
  *v8 = 0u;
  v8[1] = 0u;
  *(a6 + 712) = v9;
  *(a6 + 792) = 0;
  *(a6 + 720) = 0u;
  *(a6 + 736) = 0;
  *(a6 + 744) = 0u;
  *(a6 + 760) = 0;
  *(a6 + 768) = 0u;
  *(a6 + 784) = 0;
  *(a6 + 488) = a4;
  *(a6 + 496) = a5;
  swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  v10 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(a6 + 504) = v10;
  memcpy(a6, a1, 0x1E8uLL);

  return result;
}

double _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA011GlassEffectD033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_Tt3B5@<D0>(uint64_t a1@<X0>, Swift::UInt32 a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 112) = 0u;
  *(a6 + 128) = 0u;
  *(a6 + 144) = 0u;
  *(a6 + 160) = 1;
  *(a6 + 168) = 0u;
  *(a6 + 184) = 0u;
  *(a6 + 200) = 0u;
  *(a6 + 216) = 1;
  *(a6 + 224) = 0u;
  *(a6 + 240) = 0u;
  *(a6 + 256) = 0u;
  *(a6 + 272) = 1;
  v8 = (a6 + 280);
  *v8 = 0u;
  v8[1] = 0u;
  v9 = MEMORY[0x1E69E7CC0];
  *(a6 + 392) = 0;
  *(a6 + 320) = 0;
  *(a6 + 328) = 0;
  *(a6 + 312) = v9;
  *(a6 + 336) = 0;
  *(a6 + 344) = 0;
  *(a6 + 352) = 0;
  *(a6 + 360) = 0;
  *(a6 + 368) = 0;
  *(a6 + 376) = 0;
  *(a6 + 384) = 0;
  *(a6 + 88) = a4;
  *(a6 + 96) = a5;
  swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  v10 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(a6 + 104) = v10;
  v11 = *(a1 + 48);
  *(a6 + 32) = *(a1 + 32);
  *(a6 + 48) = v11;
  *(a6 + 64) = *(a1 + 64);
  *(a6 + 80) = *(a1 + 80);
  v12 = *(a1 + 16);
  *a6 = *a1;
  *(a6 + 16) = v12;

  return result;
}

double _s7SwiftUI16ViewLayoutEngineV6layout7context8childrenACyxGx_AA21SizeAndSpacingContextVAA0D15ProxyCollectionVtcfCAA019FlexibleButtonFrameD0V_Tt3B5@<D0>(char a1@<W0>, Swift::UInt32 a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 32) = 0u;
  *(a6 + 48) = 0u;
  *(a6 + 64) = 0u;
  *(a6 + 80) = 1;
  *(a6 + 88) = 0u;
  *(a6 + 104) = 0u;
  *(a6 + 120) = 0u;
  *(a6 + 136) = 1;
  *(a6 + 144) = 0u;
  *(a6 + 160) = 0u;
  *(a6 + 176) = 0u;
  *(a6 + 192) = 1;
  *(a6 + 216) = 0u;
  *(a6 + 200) = 0u;
  v8 = MEMORY[0x1E69E7CC0];
  *(a6 + 312) = 0;
  *(a6 + 240) = 0;
  *(a6 + 248) = 0;
  *(a6 + 232) = v8;
  *(a6 + 256) = 0;
  *(a6 + 264) = 0;
  *(a6 + 272) = 0;
  *(a6 + 280) = 0;
  *(a6 + 288) = 0;
  *(a6 + 296) = 0;
  *(a6 + 304) = 0;
  *(a6 + 8) = a4;
  *(a6 + 16) = a5;
  swift_getKeyPath();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>, &type metadata for LayoutDirection, type metadata accessor for EnvironmentFetch);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>, &type metadata for EnvironmentValues, &type metadata for LayoutDirection, MEMORY[0x1E69E77A8]);

  dispatch thunk of Hashable.hash(into:)();
  Hasher._finalize()();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  lazy protocol witness table accessor for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>();
  v9 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

  *(a6 + 24) = v9;
  *a6 = a1;

  return result;
}

void specialized StatefulRule<>.update<A>(modify:create:)(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr), uint64_t a4, void (*a5)(uint64_t *__return_ptr, void *), uint64_t (*a6)(void))
{
  v16[27] = *MEMORY[0x1E69E9840];
  OutputValue = AGGraphGetOutputValue();
  if (OutputValue)
  {
    v10 = *OutputValue;
    v11 = OutputValue[1];
    MEMORY[0x1EEE9AC00](OutputValue);
    v12 = one-time initialization token for lockAssertionsAreEnabled;
    swift_retain_n();
    if (v12 != -1)
    {
      swift_once();
    }

    if (!lockAssertionsAreEnabled)
    {
      goto LABEL_8;
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
LABEL_8:
      v13 = a6(0);
      v14 = MEMORY[0x1EEE9AC00](v13);
      (*(*v10 + 80))(v14);

      v16[0] = v10;
      v16[1] = v11 + 1;

      AGGraphSetOutputValue();
    }
  }

  else
  {
    a3(v16);
    a5(&v15, v16);
    AGGraphSetOutputValue();
  }
}

double specialized HostPreferencesWriter.updateValue()()
{
  v1 = v0;
  if (*(v0 + 8) == *MEMORY[0x1E698D3F8])
  {
    v2 = *(v0 + 13) ^ 1;
    *(v0 + 13) = 1;
  }

  else
  {
    AGGraphGetValue();
    v2 = v3 & 1;
    *(v0 + 13) = 0;
  }

  Value = AGGraphGetValue();
  if (v5)
  {
    v9 = *Value;
    v10 = PreferenceKeys._index(of:)(&type metadata for ContentCaptureProtectionPreferenceKey);
    v11 = *(v9 + 16);
    if (v10 == v11)
    {
      if (*(v0 + 12) == 1)
      {
        *(v0 + 12) = 0;
        goto LABEL_24;
      }
    }

    else
    {
      if (v10 >= v11)
      {
        __break(1u);
      }

      v12 = *(v9 + 16 * v10 + 32);
      if ((v12 == &type metadata for ContentCaptureProtectionPreferenceKey) != *(v0 + 12))
      {
        v2 = 1;
        *(v0 + 12) = v12 == &type metadata for ContentCaptureProtectionPreferenceKey;
        if (v12 == &type metadata for ContentCaptureProtectionPreferenceKey)
        {
          goto LABEL_6;
        }

LABEL_24:
        AGGraphSetOutputValue();

        return result;
      }

      if (*(v0 + 12))
      {
        goto LABEL_6;
      }
    }

LABEL_19:
    if (v2)
    {
      goto LABEL_24;
    }

    goto LABEL_20;
  }

  if ((*(v0 + 12) & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_6:
  v6 = *AGGraphGetValue();
  if (v7)
  {
    v8 = *(v1 + 16) + 1;
    *(v1 + 16) = v8;
    goto LABEL_17;
  }

  if (v2)
  {
    v8 = *(v1 + 16);
LABEL_17:
    v13 = merge32(_:_:)(*(v1 + 20), v8);
    _s7SwiftUI16PreferenceValuesVyAC5ValueVy_ADQzGxmcAA0C3KeyRzluisAA024ContentCaptureProtectioncF0V_Tt0B5(v6 | (v13 << 32), v14);
    goto LABEL_24;
  }

LABEL_20:
  if (!AGGraphGetOutputValue())
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t _s7SwiftUI16PreferenceValuesVyAC5ValueVy_ADQzGxmcAA0C3KeyRzluisAA024ContentCaptureProtectioncF0V_Tt0B5(uint64_t result, double a2)
{
  v8 = result;
  v3 = *v2;
  v4 = *(*v2 + 16);
  if (v4)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + (v4 >> 1);
      if (__OFADD__(v5, v4 >> 1))
      {
        break;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        goto LABEL_16;
      }

      if (v6 >= *(v3 + 16))
      {
        goto LABEL_17;
      }

      outlined init with copy of PreferenceValues.Entry(v3 + 32 + 56 * v6, v9);
      v7 = v9[0];
      result = outlined destroy of PreferenceValues.Entry(v9);
      if (v7 >= &type metadata for ContentCaptureProtectionPreferenceKey)
      {
        v4 >>= 1;
      }

      else
      {
        v4 += ~(v4 >> 1);
      }

      if (v7 < &type metadata for ContentCaptureProtectionPreferenceKey)
      {
        v5 = v6 + 1;
      }

      if (v4 <= 0)
      {
        return specialized PreferenceValues.setValue<A>(_:of:at:)(v8 & 0xFFFFFFFF00000001, &type metadata for ContentCaptureProtectionPreferenceKey, &protocol witness table for ContentCaptureProtectionPreferenceKey, v5, a2);
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }

  else
  {
    v5 = 0;
    return specialized PreferenceValues.setValue<A>(_:of:at:)(v8 & 0xFFFFFFFF00000001, &type metadata for ContentCaptureProtectionPreferenceKey, &protocol witness table for ContentCaptureProtectionPreferenceKey, v5, a2);
  }

  return result;
}

__n128 specialized TranslationKickModifier.body(content:)@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = *(v1 + 104);
  v4 = *(v1 + 120);
  if (v4)
  {
    v5 = one-time initialization token for sharedGraph;

    if (v5 != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v7 = *v4;
    if (!Counter)
    {
      (*(v7 + 120))(&v36);
      outlined destroy of TranslationKickModifier<Int>(v2);
      goto LABEL_9;
    }

    (*(v7 + 104))(1);
    outlined destroy of TranslationKickModifier<Int>(v2);
    v8 = v37;
  }

  else
  {
    v8 = *(v2 + 104);
  }

  v36 = v8;
LABEL_9:
  v9 = v36;
  v10 = *(v2 + 56);
  v11 = swift_allocObject();
  v12 = *(v2 + 80);
  v13 = *(v2 + 96);
  v14 = *(v2 + 48);
  v11[5] = *(v2 + 64);
  v11[6] = v12;
  v15 = *(v2 + 112);
  v11[7] = v13;
  v11[8] = v15;
  v16 = *(v2 + 16);
  v17 = *(v2 + 32);
  v11[1] = *v2;
  v11[2] = v16;
  v11[3] = v17;
  v11[4] = v14;
  v18 = *v2;
  v19 = *(v2 + 8);
  v23 = v9;
  v24.n128_u64[0] = v18;
  v24.n128_u64[1] = v19;
  *&v25 = v10;
  *(&v25 + 1) = &async function pointer to partial apply for specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:);
  v26 = v11;
  v27 = 0;
  v28 = v9;
  v29 = v18;
  v30 = v19;
  v31 = v10;
  v32 = &async function pointer to partial apply for specialized implicit closure #2 in implicit closure #1 in TranslationKickModifier.body(content:);
  v33 = v11;
  v34 = 0;
  v35 = 0;
  outlined init with copy of TranslationKickModifier<Int>(v2, v22);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(&v23, v22, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>);
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v28, type metadata accessor for ModifiedContent<ModifiedContent<_ViewModifier_Content<TranslationKickModifier<Int>>, KickModifier>, ScheduledAnimationModifier<Int>>);
  v20 = v26;
  *(a1 + 32) = v25;
  *(a1 + 48) = v20;
  *(a1 + 64) = v27;
  result = v24;
  *a1 = v23;
  *(a1 + 16) = result;
  return result;
}

uint64_t specialized TranslationKickModifier.animate()()
{
  v2 = type metadata accessor for ContinuousClock();
  *(v1 + 160) = v2;
  *(v1 + 168) = *(v2 - 8);
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = *(v0 + 32);
  v3 = *(v0 + 80);
  *(v1 + 200) = *(v0 + 64);
  *(v1 + 216) = *(v0 + 88);
  *(v1 + 80) = *(v0 + 64);
  *(v1 + 96) = v3;
  v4 = *(v0 + 112);
  *(v1 + 112) = *(v0 + 96);
  *(v1 + 128) = v4;
  v5 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v5;
  v6 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = v6;
  type metadata accessor for MainActor();
  *(v1 + 224) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 232) = v8;
  *(v1 + 240) = v7;

  return MEMORY[0x1EEE6DFA0](specialized TranslationKickModifier.animate(), v8, v7);
}

{
  v21 = v0;
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = v1 * v1;
  v4 = v1 * 0.5;
  v5 = v2 * v2;
  if (v2 >= 0.0)
  {
    v6 = v4 * (-6.28318531 / sqrt(v3 + v5)) / 3.14159265;
    v7 = 1.0;
  }

  else
  {
    v6 = 1.0 / (v4 * (6.28318531 / sqrt(v3 - v5)) / 3.14159265);
    v7 = -1.0;
  }

  v8 = v6 + v7;
  v9 = 6.28318531 / sqrt(v3 + v2 * (v2 * v7));
  if (v8 <= -1.0)
  {
    v10 = INFINITY;
  }

  else if (v8 >= 0.0)
  {
    v10 = 1.0;
    if (v8 != 0.0)
    {
      if (v8 <= 1.0)
      {
        v11 = v8;
      }

      else
      {
        v11 = 1.0;
      }

      v10 = 1.0 - v11;
    }
  }

  else
  {
    v10 = 1.0 / (v8 + 1.0);
  }

  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for InternalAnimationBox<FluidSpringAnimation>, lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation, &type metadata for FluidSpringAnimation, type metadata accessor for InternalAnimationBox);
  *(v0 + 248) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  *(v13 + 24) = v10;
  *(v13 + 32) = 0;
  *(swift_task_alloc() + 16) = v0 + 16;
  v20 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v20, v13);

  specialized closure #1 in withTransaction<A>(_:_:)(v14, partial apply for specialized closure #1 in TranslationKickModifier.animate());

  v15 = static Duration.seconds(_:)();
  v17 = v16;
  static Clock<>.continuous.getter();
  v18 = swift_task_alloc();
  *(v0 + 256) = v18;
  *v18 = v0;
  v18[1] = specialized TranslationKickModifier.animate();

  return specialized Clock.sleep(for:tolerance:)(v15, v17, 0, 0, 1);
}

{
  v18 = v0;
  v1 = *(v0 + 264);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);

  v4 = v2 * v2;
  v5 = v2 * 0.5;
  v6 = v3 * v3;
  if (v3 >= 0.0)
  {
    v7 = v5 * (-6.28318531 / sqrt(v4 + v6)) / 3.14159265;
    v8 = 1.0;
  }

  else
  {
    v7 = 1.0 / (v5 * (6.28318531 / sqrt(v4 - v6)) / 3.14159265);
    v8 = -1.0;
  }

  v9 = v7 + v8;
  v10 = 6.28318531 / sqrt(v4 + *(v0 + 200) * (v8 * *(v0 + 200)));
  if (v9 <= -1.0)
  {
    v11 = INFINITY;
  }

  else if (v9 >= 0.0)
  {
    v11 = 1.0;
    if (v9 != 0.0)
    {
      if (v9 <= 1.0)
      {
        v12 = v9;
      }

      else
      {
        v12 = 1.0;
      }

      v11 = 1.0 - v12;
    }
  }

  else
  {
    v11 = 1.0 / (v9 + 1.0);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  *(v13 + 32) = 0;
  *(swift_task_alloc() + 16) = v0 + 16;
  v17 = 0;

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v17, v13);
  if (!v1)
  {

    specialized closure #1 in withTransaction<A>(_:_:)(v15, partial apply for specialized closure #2 in TranslationKickModifier.animate());

    v16 = *(v0 + 8);

    return v16();
  }

  return result;
}

{
  v17 = v0;
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);

  v3 = v1 * v1;
  v4 = v1 * 0.5;
  v5 = v2 * v2;
  if (v2 >= 0.0)
  {
    v6 = v4 * (-6.28318531 / sqrt(v3 + v5)) / 3.14159265;
    v7 = 1.0;
  }

  else
  {
    v6 = 1.0 / (v4 * (6.28318531 / sqrt(v3 - v5)) / 3.14159265);
    v7 = -1.0;
  }

  v8 = v6 + v7;
  v9 = 6.28318531 / sqrt(v3 + *(v0 + 200) * (v7 * *(v0 + 200)));
  if (v8 <= -1.0)
  {
    v10 = INFINITY;
  }

  else if (v8 >= 0.0)
  {
    v10 = 1.0;
    if (v8 != 0.0)
    {
      if (v8 <= 1.0)
      {
        v11 = v8;
      }

      else
      {
        v11 = 1.0;
      }

      v10 = 1.0 - v11;
    }
  }

  else
  {
    v10 = 1.0 / (v8 + 1.0);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  *(v12 + 32) = 0;
  *(swift_task_alloc() + 16) = v0 + 16;
  v16 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v16, v12);

  specialized closure #1 in withTransaction<A>(_:_:)(v13, partial apply for specialized closure #2 in TranslationKickModifier.animate());

  v14 = *(v0 + 8);

  return v14();
}

uint64_t specialized TranslationKickModifier.animate()(__n128 a1)
{
  v3 = *v2;
  v3[33] = v1;

  v4 = v3[22];
  v5 = v3[21];
  v6 = v3[20];
  if (v1)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[29];
    v8 = v3[30];
    v9 = specialized TranslationKickModifier.animate();
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[29];
    v8 = v3[30];
    v9 = specialized TranslationKickModifier.animate();
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t specialized closure #1 in Gesture.eventFilter<A>(_:allowOtherTypes:_:)(uint64_t a1, char a2, uint64_t (*a3)(__int128 *))
{
  outlined init with copy of AnyTrackedValue(a1, v13);
  type metadata accessor for AnyTrackedValue(0, &lazy cache variable for type metadata for EventType, &protocol descriptor for EventType);
  if (swift_dynamicCast())
  {
    if (*(&v8 + 1) != 1)
    {
      v15 = v9;
      v16 = v10;
      v17 = v11;
      v18 = v12;
      v14 = v8;
      a2 = a3(&v14);
      v6[2] = v16;
      v6[3] = v17;
      v7 = v18;
      v6[0] = v14;
      v6[1] = v15;
      outlined destroy of MouseEvent(v6);
    }
  }

  else
  {
    v8 = xmmword_18DD85550;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0;
    v14 = xmmword_18DD85550;
    v15 = 0u;
    outlined destroy of GlassEntryView?(&v14, &lazy cache variable for type metadata for MouseEvent?, &type metadata for MouseEvent, MEMORY[0x1E69E6720]);
  }

  return a2 & 1;
}

void specialized RepeatPhase.updateValue()()
{
  if (!specialized ResettableGestureRule.resetIfNeeded()())
  {
    return;
  }

  if ((*(v0 + 32) & 1) == 0)
  {
    v1 = *(v0 + 24);
    if (v1 < *AGGraphGetValue())
    {
      type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
      AGGraphSetOutputValue();
      return;
    }
  }

  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = *(Value + 16);
  v5 = *(Value + 24);
  v6 = *(Value + 32);
  if (*(Value + 33) <= 1u)
  {
    if (*(Value + 33))
    {
      v24 = *(Value + 8);
      *(v0 + 24) = 0;
      *(v0 + 32) = 1;
      v7 = *(v0 + 36);
      type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for RepeatGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for RepeatGesture);

      v8 = AGGraphGetValue();
      if (__OFSUB__(*v8, 1))
      {
        __break(1u);
      }

      if (*v8 - 1 <= v7)
      {
        v20 = AGGraphGetValue();
        v21 = *v20;
        v23 = v5;
        v22 = *(v20 + 32);
        v27 = *(v20 + 8);
        v29 = *(v20 + 16);
        v31 = *(v20 + 24);
        v33 = *(v20 + 33);
        outlined copy of GesturePhase<TappableEvent>(*v20, v27, v29, v31, v22, v33);
        AGGraphSetOutputValue();
        outlined consume of GesturePhase<TappableEvent>(v3, v24, v4, v23, v6, 1);
        outlined consume of GesturePhase<TappableEvent>(v21, v27, v29, v31, v22, v33);
      }

      else
      {
        AGGraphSetOutputValue();
        outlined consume of GesturePhase<TappableEvent>(v3, v24, v4, v5, v6, 1);
      }

      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (*(Value + 33) != 2)
  {
LABEL_13:
    AGGraphGetValue();
    AGGraphSetOutputValue();
    goto LABEL_14;
  }

  v25 = *(Value + 8);
  v9 = (*(v0 + 36) + 1);
  *(v0 + 36) = v9;
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for RepeatGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for RepeatGesture);

  if (*AGGraphGetValue() <= v9)
  {
    *(v0 + 24) = 0;
    *(v0 + 32) = 1;
    v17 = AGGraphGetValue();
    v18 = *v17;
    v19 = *(v17 + 32);
    v26 = *(v17 + 8);
    v28 = *(v17 + 16);
    v30 = *(v17 + 24);
    v32 = *(v17 + 33);
    outlined copy of GesturePhase<TappableEvent>(*v17, v26, v28, v30, v19, v32);
    AGGraphSetOutputValue();
    outlined consume of GesturePhase<TappableEvent>(v3, v25, v4, v5, v6, 2);
    outlined consume of GesturePhase<TappableEvent>(v18, v26, v28, v30, v19, v32);
  }

  else
  {
    v10 = *AGGraphGetValue();
    *(v0 + 24) = v10 + *(AGGraphGetValue() + 8);
    *(v0 + 32) = 0;
    AGGraphSetOutputValue();
    specialized static GraphHost.currentHost.getter();
    specialized GraphHost.continueTransaction<A>(_:)(*(v0 + 16) | (v9 << 32));
    outlined consume of GesturePhase<TappableEvent>(v3, v25, v4, v5, v6, 2);
  }

LABEL_14:
  if ((*(v0 + 32) & 1) == 0)
  {
    v11 = *(v0 + 24);
    v12 = *(v0 + 20);
    specialized static GraphHost.currentHost.getter();
    if (v12 == 1)
    {
      type metadata accessor for GestureGraph();
      v13 = swift_dynamicCastClassUnconditional();
      v14 = *(v13 + 272);
      if (v11 < v14)
      {
        v14 = v11;
      }

      *(v13 + 272) = v14;
    }

    else
    {
      type metadata accessor for ViewGraph();
      v15 = swift_dynamicCastClassUnconditional();
      swift_beginAccess();
      v16 = *(v15 + 408);
      if (v11 < v16)
      {
        v16 = v11;
      }

      *(v15 + 408) = v16;
    }
  }
}

void specialized AnyGestureInfo.updateValue()()
{
  v1 = v0;
  v2 = *(v0 + 168);
  v3 = *(v0 + 176);
  v4 = *(v0 + 184);
  v5 = MEMORY[0x1E69E7CA8];
  if (!v2)
  {
    v11 = 0;
LABEL_6:
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for AnyGesture<()>, v5 + 8, type metadata accessor for AnyGesture);
    AGGraphGetValue();

    v9 = specialized AnyGestureInfo.makeItem(_:uniqueId:)(v15, v11);
    v17 = v16;
    v10 = v18;

    v8 = v17;
    goto LABEL_7;
  }

  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for AnyGesture<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyGesture);

  v6 = v3;
  Value = AGGraphGetValue();
  if (((*(*v2 + 88))(*Value) & 1) == 0)
  {

    v12 = *(v0 + 136);
    v13 = *(v1 + 144);

    v14 = v6;
    specialized _GestureOutputs.detachIndirectOutputs()(v12, v13);
    AGSubgraphRef.willInvalidate(isInserted:)(1);
    AGSubgraphInvalidate();

    v11 = v4 + 1;
    goto LABEL_6;
  }

  v8 = v6;

  v9 = *AGGraphGetValue();

  v10 = v4;
LABEL_7:
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for AnyGestureInfo<()>.Value, v5 + 8, type metadata accessor for AnyGestureInfo.Value);
  AGGraphSetOutputValue();

  outlined consume of AnyGestureInfo<()>.Value?(v2, v3);
  *(v1 + 168) = v9;
  *(v1 + 176) = v8;
  *(v1 + 184) = v10;
}

uint64_t specialized AnyGestureInfo.makeItem(_:uniqueId:)(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v54 = *MEMORY[0x1E69E9840];
  v6 = AGSubgraphGetGraph();
  v7 = AGSubgraphCreate();

  AGSubgraphAddChild();
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  v31 = *MEMORY[0x1E698D3F8];
  v34 = CurrentAttribute;
  AGGraphClearUpdate();
  v32 = AGSubgraphGetCurrent();
  v33 = v7;
  AGSubgraphSetCurrent();
  *&v48[12] = *(v3 + 116);
  v9 = *(v3 + 24);
  v10 = *(v3 + 88);
  v47[4] = *(v3 + 72);
  v47[5] = v10;
  *v48 = *(v3 + 104);
  v47[0] = *(v3 + 8);
  v47[1] = v9;
  v11 = *(v3 + 56);
  v47[2] = *(v3 + 40);
  v47[3] = v11;
  v12 = *&v48[16];
  v13 = v9;
  v46 = *(v3 + 8);
  v14 = *(v3 + 48);
  v40 = *(v3 + 32);
  v41 = v14;
  v45 = *(v3 + 112);
  v15 = *(v3 + 96);
  v43 = *(v3 + 80);
  v44 = v15;
  v42 = *(v3 + 64);
  v16 = *&v48[20];
  swift_beginAccess();
  v17 = v13[3];
  v49[1] = v13[2];
  v49[2] = v17;
  v18 = v13[5];
  v49[3] = v13[4];
  v49[4] = v18;
  v49[0] = v13[1];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for MutableBox<CachedEnvironment>, &type metadata for CachedEnvironment, type metadata accessor for MutableBox);
  v19 = swift_allocObject();
  memmove((v19 + 16), v13 + 1, 0x50uLL);
  outlined init with copy of _GestureInputs(v47, v52);
  outlined init with copy of CachedEnvironment(v49, v52);

  *&v52[0] = __PAIR64__(v34, v12);
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for AnyResetSeed<()>, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for AnyResetSeed);
  lazy protocol witness table accessor for type AnyResetSeed<()> and conformance AnyResetSeed<A>();
  v20 = Attribute.init<A>(body:value:flags:update:)();
  v50 = v46;
  *&v51[40] = v42;
  *&v51[56] = v43;
  *&v51[72] = v44;
  v30 = v19;
  *v51 = v19;
  *&v51[88] = v45;
  *&v51[8] = v40;
  *&v51[24] = v41;
  v29 = v20;
  *&v51[96] = v20;
  *&v51[100] = v16;
  *&v39[92] = *&v51[92];
  *&v39[48] = *&v51[48];
  *&v39[64] = *&v51[64];
  *&v39[80] = *&v51[80];
  v38 = v46;
  *v39 = *v51;
  *&v39[16] = *&v51[16];
  *&v39[32] = *&v51[32];
  v21 = *(*a1 + 96);
  outlined init with copy of _GestureInputs(&v50, v52);
  v21(&v35, a2, v34, &v38);
  v52[4] = *&v39[48];
  v52[5] = *&v39[64];
  v53[0] = *&v39[80];
  *(v53 + 12) = *&v39[92];
  v52[0] = v38;
  v52[1] = *v39;
  v52[2] = *&v39[16];
  v52[3] = *&v39[32];
  outlined destroy of _GestureInputs(v52);
  v22 = HIDWORD(v35);
  v23 = v36;
  v24 = v37;
  LODWORD(v21) = *(v3 + 140);
  v25 = *(v3 + 144);
  v26 = *(v3 + 152);

  AGGraphSetIndirectAttribute();
  if (v21 != v31 && v22 != v31)
  {
    AGGraphSetIndirectAttribute();
  }

  *&v38 = v25;
  DWORD2(v38) = v26;
  v35 = v23;
  LODWORD(v36) = v24;

  PreferencesOutputs.attachIndirectOutputs(to:)(&v35);

  v38 = v46;
  *&v39[40] = v42;
  *&v39[56] = v43;
  *&v39[72] = v44;
  *&v39[8] = v40;
  *v39 = v30;
  *&v39[88] = v45;
  *&v39[24] = v41;
  *&v39[96] = v29;
  *&v39[100] = v16;
  outlined destroy of _GestureInputs(&v38);

  v27 = v33;
  AGSubgraphSetCurrent();

  AGGraphSetUpdate();
  return a1;
}

double specialized _GestureOutputs.attachIndirectOutputs(_:)(unint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, int a6)
{
  v10 = HIDWORD(a1);
  v11 = HIDWORD(a4);
  AGGraphSetIndirectAttribute();
  if (*MEMORY[0x1E698D3F8] != v11 && *MEMORY[0x1E698D3F8] != v10)
  {
    AGGraphSetIndirectAttribute();
  }

  v16 = a5;
  v17 = a6;
  v14 = a2;
  v15 = a3;

  PreferencesOutputs.attachIndirectOutputs(to:)(&v14);

  return result;
}

uint64_t specialized _GestureOutputs.detachIndirectOutputs()(unint64_t a1, uint64_t a2)
{
  v3 = HIDWORD(a1);
  v4 = *MEMORY[0x1E698D3F8];
  result = AGGraphSetIndirectAttribute();
  if (v4 != v3)
  {
    result = AGGraphSetIndirectAttribute();
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = a2 + 48;
    do
    {
      v7 += 24;
      result = AGGraphSetIndirectAttribute();
      --v6;
    }

    while (v6);
  }

  return result;
}

double specialized Map2Phase.updateValue()(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (specialized ResettableGestureRule.resetIfNeeded()())
  {
    type metadata accessor for (_:_:)(0, a1, a2, a3);
    v13 = *AGGraphGetValue();
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);

    Value = AGGraphGetValue();
    v8 = *(Value + 8);
    v9 = *(Value + 16);
    v10 = *(Value + 24);
    *&v16 = *Value;
    *(&v16 + 1) = v8;
    *&v17 = v9;
    *(&v17 + 1) = v10;
    v18 = *(Value + 32);
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, a2, a3, type metadata accessor for GesturePhase);
    outlined copy of GesturePhase<TappableEvent>(v16, v8, v9, v10, v18, SHIBYTE(v18));
    v11 = AGGraphGetValue();
    v12 = *(v11 + 8);
    v14 = *v11;
    v15 = v12;
    v13(&v19, &v16, &v14);

    outlined consume of GesturePhase<TappableEvent>(v16, *(&v16 + 1), v17, *(&v17 + 1), v18, SHIBYTE(v18));
    v16 = v19;
    v17 = v20;
    v18 = v21;
    AGGraphSetOutputValue();
    return outlined consume of GesturePhase<TappableEvent>(v19, *(&v19 + 1), v20, *(&v20 + 1), v21, SHIBYTE(v21));
  }

  return result;
}

uint64_t specialized DurationPhase.updateValue()()
{
  result = specialized ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    if (*(v0 + 32))
    {
      type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
      if (*(AGGraphGetValue() + 33) - 1 < 2 || (type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for DurationGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for DurationGesture), *(AGGraphGetValue() + 16) == 1))
      {
        v2 = 0;
        *(v0 + 24) = *AGGraphGetValue();
        *(v0 + 32) = 0;
        v3 = 0.0;
      }

      else
      {
        v2 = 1;
        v3 = 0.0;
      }
    }

    else
    {
      v4 = *(v0 + 24);
      v2 = 0;
      v3 = *AGGraphGetValue() - v4;
    }

    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);
    result = AGGraphGetValue();
    if (*(result + 33) > 1u)
    {
      if (*(result + 33) != 2)
      {
        goto LABEL_33;
      }

      if ((v2 & 1) == 0)
      {
        type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for DurationGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for DurationGesture);
        if (*AGGraphGetValue() <= v3)
        {
          AGGraphGetValue();
        }

        goto LABEL_33;
      }

      __break(1u);
    }

    else
    {
      if (!*(result + 33))
      {
        goto LABEL_17;
      }

      if ((v2 & 1) == 0)
      {
        type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for DurationGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for DurationGesture);
        if (*AGGraphGetValue() > v3 || *(AGGraphGetValue() + 8) > v3)
        {
LABEL_17:
          if ((*(v0 + 32) & 1) == 0)
          {
            v5 = *(v0 + 24);
            if ((v2 & 1) != 0 || (type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for DurationGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for DurationGesture), *AGGraphGetValue() <= v3))
            {
              type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for DurationGesture<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for DurationGesture);
              Value = (AGGraphGetValue() + 8);
            }

            else
            {
              Value = AGGraphGetValue();
            }

            v7 = v5 + *Value;
            v8 = *(v0 + 16);
            specialized static GraphHost.currentHost.getter();
            if (v8 == 1)
            {
              type metadata accessor for GestureGraph();
              v9 = swift_dynamicCastClassUnconditional();
              v10 = *(v9 + 272);
              if (v7 < v10)
              {
                v10 = v7;
              }

              *(v9 + 272) = v10;
            }

            else
            {
              type metadata accessor for ViewGraph();
              v11 = swift_dynamicCastClassUnconditional();
              swift_beginAccess();
              v12 = *(v11 + 408);
              if (v7 < v12)
              {
                v12 = v7;
              }

              *(v11 + 408) = v12;
            }
          }
        }

LABEL_33:
        type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<Double>, MEMORY[0x1E69E63B0], type metadata accessor for GesturePhase);
        return AGGraphSetOutputValue();
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized State.wrappedValue.getter(uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v4 = one-time initialization token for sharedGraph;

    if (v4 != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v6 = *a2;
    if (!Counter)
    {
      (*(v6 + 120))(&v8);

      return v8;
    }

    (*(v6 + 104))(1);
  }

  return a1;
}

unint64_t specialized PreferenceValues.setValue<A>(_:of:at:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, double a5)
{
  v8 = HIDWORD(result);
  v9 = *v5;
  v10 = *(*v5 + 16);
  if (v10 == a4)
  {
    goto LABEL_5;
  }

  if (v10 > a4)
  {
    if (*(v9 + 56 * a4 + 32) == a2)
    {
      if (v8)
      {
        v6 = result;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v5 = v9;
        if (result)
        {
          goto LABEL_13;
        }

        goto LABEL_16;
      }

      specialized Array.remove(at:)(a4, &v13);
      return outlined destroy of PreferenceValues.Entry(&v13);
    }

LABEL_5:
    if (!v8)
    {
      return result;
    }

    v16 = MEMORY[0x1E69E6370];
    LOBYTE(v15) = result & 1;
    *&v13 = a2;
    *(&v13 + 1) = a3;
    v14 = HIDWORD(result);
    if (v10 < a4)
    {
      goto LABEL_15;
    }

    outlined init with copy of PreferenceValues.Entry(&v13, v12);
    specialized Array.replaceSubrange<A>(_:with:)(a4, a4, v12);
    return outlined destroy of PreferenceValues.Entry(&v13);
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  v9 = result;
  *v5 = result;
LABEL_13:
  if (*(v9 + 16) <= a4)
  {
    __break(1u);
  }

  else
  {
    v11 = v9 + 56 * a4;
    v15 = MEMORY[0x1E69E6370];
    LOBYTE(v13) = v6 & 1;
    __swift_destroy_boxed_opaque_existential_1((v11 + 56));
    result = outlined init with take of Any(&v13, (v11 + 56));
    *(v11 + 48) = v8;
    *v5 = v9;
  }

  return result;
}

uint64_t specialized PlatformItemRule.updateValue()()
{
  v111 = *MEMORY[0x1E69E9840];
  _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOi0_(&v96);
  if ((*(v0 + 24) & 8) != 0)
  {
    v2 = *AGGraphGetValue();
    v1 = v3 & 1;
    _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v67);
    *&v40[136] = v75;
    *&v40[152] = v76;
    *&v40[168] = *v77;
    *&v40[179] = *&v77[11];
    *&v40[72] = v71;
    *&v40[88] = v72;
    *&v40[104] = v73;
    *&v40[120] = v74;
    *&v40[8] = v67;
    *&v40[24] = v68;
    *&v40[40] = v69;
    *&v40[56] = v70;
    v39 = 0;
    v38 = 0;
    *v40 = 0;
    *&v40[200] = v2;
    LOBYTE(v41) = 0;
    *(&v41 + 1) = 0;
    _ViewInputs.base.modify();
    v93 = *&v40[176];
    v94 = *&v40[192];
    v95 = v41;
    v89 = *&v40[112];
    v90 = *&v40[128];
    v92 = *&v40[160];
    v91 = *&v40[144];
    v85 = *&v40[48];
    v86 = *&v40[64];
    v88 = *&v40[96];
    v87 = *&v40[80];
    v81 = 0u;
    v82 = *v40;
    v84 = *&v40[32];
    v83 = *&v40[16];
  }

  else
  {
    v1 = 0;
    v93 = v108;
    v94 = v109;
    v95 = v110;
    v89 = v104;
    v90 = v105;
    v92 = v107;
    v91 = v106;
    v85 = v100;
    v86 = v101;
    v88 = v103;
    v87 = v102;
    v81 = v96;
    v82 = v97;
    v84 = v99;
    v83 = v98;
  }

  v4 = *AGGraphGetValue() >> 1;
  if (v4 == *(v0 + 44) && (v5 = *(v0 + 40)) != 0)
  {
    v6 = 0;
  }

  else
  {
    v5 = static ViewIdentity.nextSeed;
    v6 = 1;
    if ((static ViewIdentity.nextSeed + 1) > 1)
    {
      v7 = static ViewIdentity.nextSeed + 1;
    }

    else
    {
      v7 = 1;
    }

    static ViewIdentity.nextSeed = v7;
    *(v0 + 40) = v5;
    *(v0 + 44) = v4;
  }

  if (AGGraphGetOutputValue())
  {
    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  if (((v8 | v1) & 1) == 0)
  {
    return outlined destroy of GlassEntryView?(&v81, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent, MEMORY[0x1E69E6720]);
  }

  v9 = *(v0 + 48) + 1;
  *(v0 + 48) = v9;
  v10 = MEMORY[0x1E69E6F90];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewIdentity>, &type metadata for ViewIdentity, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18DDA6EB0;
  *(v11 + 32) = v5;
  v12 = *(v0 + 32);
  v13 = *(v0 + 24);
  v14 = *(v0 + 33);
  v44 = 0u;
  v45 = 0u;
  v46 = xmmword_18DD85500;
  v47 = 1;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  memset(v65, 0, sizeof(v65));
  v38 = v11;
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItem.StaticKind>, &type metadata for PlatformItem.StaticKind, v10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18DDA6EB0;
  *(v15 + 32) = v12;
  v39 = v15;
  *v40 = v13;
  v40[8] = v14;
  *&v40[12] = v9;
  v66[12] = v108;
  v66[13] = v109;
  v66[14] = v110;
  v66[8] = v104;
  v66[9] = v105;
  v66[11] = v107;
  v66[10] = v106;
  v66[4] = v100;
  v66[5] = v101;
  v66[7] = v103;
  v66[6] = v102;
  v66[0] = v96;
  v66[1] = v97;
  v66[3] = v99;
  v66[2] = v98;
  outlined destroy of GlassEntryView?(v66, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent, MEMORY[0x1E69E6720]);
  v41 = v108;
  v42 = v109;
  v43 = v110;
  *&v40[144] = v104;
  *&v40[160] = v105;
  *&v40[176] = v106;
  *&v40[192] = v107;
  *&v40[80] = v100;
  *&v40[96] = v101;
  *&v40[112] = v102;
  *&v40[128] = v103;
  *&v40[16] = v96;
  *&v40[32] = v97;
  *&v40[48] = v98;
  *&v40[64] = v99;
  v78 = v93;
  v79 = v94;
  v80 = v95;
  v75 = v89;
  v76 = v90;
  *&v77[16] = v92;
  *v77 = v91;
  v71 = v85;
  v72 = v86;
  v74 = v88;
  v73 = v87;
  v67 = v81;
  v68 = v82;
  v70 = v84;
  v69 = v83;
  if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v67) != 1)
  {
    v22[12] = v41;
    v22[13] = v42;
    v22[14] = v43;
    v22[8] = *&v40[144];
    v22[9] = *&v40[160];
    v22[10] = *&v40[176];
    v22[11] = *&v40[192];
    v22[4] = *&v40[80];
    v22[5] = *&v40[96];
    v22[6] = *&v40[112];
    v22[7] = *&v40[128];
    v22[0] = *&v40[16];
    v22[1] = *&v40[32];
    v22[2] = *&v40[48];
    v22[3] = *&v40[64];
    v35 = v93;
    v36 = v94;
    v37 = v95;
    v31 = v89;
    v32 = v90;
    v33 = v91;
    v34 = v92;
    v27 = v85;
    v28 = v86;
    v29 = v87;
    v30 = v88;
    v23 = v81;
    v24 = v82;
    v25 = v83;
    v26 = v84;
    outlined init with copy of PlatformItem.PrimaryContent(&v23, v21);
    outlined destroy of GlassEntryView?(v22, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent, MEMORY[0x1E69E6720]);
    v41 = v93;
    v42 = v94;
    v43 = v95;
    *&v40[144] = v89;
    *&v40[160] = v90;
    *&v40[176] = v91;
    *&v40[192] = v92;
    *&v40[80] = v85;
    *&v40[96] = v86;
    *&v40[112] = v87;
    *&v40[128] = v88;
    *&v40[16] = v81;
    *&v40[32] = v82;
    *&v40[48] = v83;
    *&v40[64] = v84;
  }

  if (*(v0 + 36) != *MEMORY[0x1E698D3F8])
  {
    v16 = *AGGraphGetValue();

    *&v44 = v16;
  }

  v17 = *(v0 + 16);
  v18 = *&v40[12];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItem>, &type metadata for PlatformItem, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_18DDA6EB0;
  outlined init with copy of PlatformItem(&v38, v19 + 32);
  *&v23 = v17;
  DWORD2(v23) = v18;
  *&v24 = v19;
  AGGraphSetOutputValue();
  outlined destroy of GlassEntryView?(&v81, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent, MEMORY[0x1E69E6720]);

  return outlined destroy of PlatformItem(&v38);
}

{
  v109 = *MEMORY[0x1E69E9840];
  _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOi0_(&v94);
  if ((*(v0 + 24) & 2) != 0)
  {
    v1 = PlatformItemsTextRepresentable.PlatformItemContent.makeContent()(&v38);
    _ViewInputs.base.modify();
    v91 = v50;
    v92 = v51;
    v93 = v52;
    v87 = v46;
    v88 = v47;
    v90 = v49;
    v89 = v48;
    v83 = v42;
    v84 = v43;
    v86 = v45;
    v85 = v44;
    v79 = v38;
    v80 = v39;
    v3 = v40;
    v2 = v41;
  }

  else
  {
    v1 = 0;
    v91 = v106;
    v92 = v107;
    v93 = v108;
    v87 = v102;
    v88 = v103;
    v90 = v105;
    v89 = v104;
    v2 = v97;
    v83 = v98;
    v84 = v99;
    v86 = v101;
    v85 = v100;
    v79 = v94;
    v80 = v95;
    v3 = v96;
  }

  v82 = v2;
  v81 = v3;
  v4 = *AGGraphGetValue() >> 1;
  if (v4 == *(v0 + 44) && (v5 = *(v0 + 40)) != 0)
  {
    v6 = 0;
  }

  else
  {
    v5 = static ViewIdentity.nextSeed;
    v6 = 1;
    if ((static ViewIdentity.nextSeed + 1) > 1)
    {
      v7 = static ViewIdentity.nextSeed + 1;
    }

    else
    {
      v7 = 1;
    }

    static ViewIdentity.nextSeed = v7;
    *(v0 + 40) = v5;
    *(v0 + 44) = v4;
  }

  if (AGGraphGetOutputValue())
  {
    v8 = v6;
  }

  else
  {
    v8 = 1;
  }

  if (((v8 | v1) & 1) == 0)
  {
    return outlined destroy of GlassEntryView?(&v79, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent, MEMORY[0x1E69E6720]);
  }

  v9 = *(v0 + 48) + 1;
  *(v0 + 48) = v9;
  v10 = MEMORY[0x1E69E6F90];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewIdentity>, &type metadata for ViewIdentity, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18DDA6EB0;
  *(v11 + 32) = v5;
  v12 = *(v0 + 32);
  v13 = *(v0 + 24);
  v14 = *(v0 + 33);
  v55 = 0u;
  v56 = 0u;
  v57 = xmmword_18DD85500;
  v58 = 1;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  memset(v76, 0, sizeof(v76));
  *&v38 = v11;
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItem.StaticKind>, &type metadata for PlatformItem.StaticKind, v10);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_18DDA6EB0;
  *(v15 + 32) = v12;
  *(&v38 + 1) = v15;
  *&v39 = v13;
  BYTE8(v39) = v14;
  HIDWORD(v39) = v9;
  v77[12] = v106;
  v77[13] = v107;
  v77[14] = v108;
  v77[8] = v102;
  v77[9] = v103;
  v77[11] = v105;
  v77[10] = v104;
  v77[4] = v98;
  v77[5] = v99;
  v77[7] = v101;
  v77[6] = v100;
  v77[0] = v94;
  v77[1] = v95;
  v77[3] = v97;
  v77[2] = v96;
  outlined destroy of GlassEntryView?(v77, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent, MEMORY[0x1E69E6720]);
  v52 = v106;
  v53 = v107;
  v54 = v108;
  v48 = v102;
  v49 = v103;
  v50 = v104;
  v51 = v105;
  v44 = v98;
  v45 = v99;
  v46 = v100;
  v47 = v101;
  v40 = v94;
  v41 = v95;
  v42 = v96;
  v43 = v97;
  v78[12] = v91;
  v78[13] = v92;
  v78[14] = v93;
  v78[8] = v87;
  v78[9] = v88;
  v78[11] = v90;
  v78[10] = v89;
  v78[4] = v83;
  v78[5] = v84;
  v78[7] = v86;
  v78[6] = v85;
  v78[0] = v79;
  v78[1] = v80;
  v78[3] = v82;
  v78[2] = v81;
  if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(v78) != 1)
  {
    v22[12] = v52;
    v22[13] = v53;
    v22[14] = v54;
    v22[8] = v48;
    v22[9] = v49;
    v22[10] = v50;
    v22[11] = v51;
    v22[4] = v44;
    v22[5] = v45;
    v22[6] = v46;
    v22[7] = v47;
    v22[0] = v40;
    v22[1] = v41;
    v22[2] = v42;
    v22[3] = v43;
    v35 = v91;
    v36 = v92;
    v37 = v93;
    v31 = v87;
    v32 = v88;
    v33 = v89;
    v34 = v90;
    v27 = v83;
    v28 = v84;
    v29 = v85;
    v30 = v86;
    v23 = v79;
    v24 = v80;
    v25 = v81;
    v26 = v82;
    outlined init with copy of PlatformItem.PrimaryContent(&v23, v21);
    outlined destroy of GlassEntryView?(v22, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent, MEMORY[0x1E69E6720]);
    v52 = v91;
    v53 = v92;
    v54 = v93;
    v48 = v87;
    v49 = v88;
    v50 = v89;
    v51 = v90;
    v44 = v83;
    v45 = v84;
    v46 = v85;
    v47 = v86;
    v40 = v79;
    v41 = v80;
    v42 = v81;
    v43 = v82;
  }

  if (*(v0 + 36) != *MEMORY[0x1E698D3F8])
  {
    v16 = *AGGraphGetValue();

    *&v55 = v16;
  }

  v17 = *(v0 + 16);
  v18 = HIDWORD(v39);
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItem>, &type metadata for PlatformItem, MEMORY[0x1E69E6F90]);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_18DDA6EB0;
  outlined init with copy of PlatformItem(&v38, v19 + 32);
  *&v23 = v17;
  DWORD2(v23) = v18;
  *&v24 = v19;
  AGGraphSetOutputValue();
  outlined destroy of GlassEntryView?(&v79, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent, MEMORY[0x1E69E6720]);

  return outlined destroy of PlatformItem(&v38);
}

{
  v168 = *MEMORY[0x1E69E9840];
  _s7SwiftUI12PlatformItemV14PrimaryContentVSgWOi0_(&v153);
  if ((*(v0 + 24) & 4) != 0)
  {
    Value = AGGraphGetValue();
    v124 = *Value;
    v5 = Value[3];
    v7 = Value[1];
    v6 = Value[2];
    v128 = Value[4];
    v127 = v5;
    v125 = v7;
    v126 = v6;
    v8 = Value[7];
    v10 = Value[5];
    v9 = Value[6];
    v132 = Value[8];
    v131 = v8;
    v129 = v10;
    v130 = v9;
    v11 = Value[11];
    v13 = Value[9];
    v12 = Value[10];
    v135 = Value[12];
    *&v134[16] = v11;
    v133 = v13;
    *v134 = v12;
    v1 = v14 & 1;
    v15 = *(&v135 + 1);
    _s7SwiftUI5ImageVAAE8ResolvedVSgWOi0_(&v55);
    v49 = v63;
    v51 = v64;
    *v53 = *v65;
    *&v53[11] = *&v65[11];
    v41 = v59;
    v43 = v60;
    v45 = v61;
    v47 = v62;
    v33 = v55;
    v35 = v56;
    v37 = v57;
    v39 = v58;
    v77 = v132;
    v78 = v133;
    *v79 = *v134;
    *&v79[11] = *&v134[11];
    v73 = v128;
    v74 = v129;
    v75 = v130;
    v76 = v131;
    v69 = v124;
    v70 = v125;
    v71 = v126;
    v72 = v127;
    _ViewInputs.base.modify();
    v118 = v49;
    v119 = v51;
    *v120 = *v53;
    *&v120[11] = *&v53[11];
    v114 = v41;
    v115 = v43;
    v116 = v45;
    v117 = v47;
    v110 = v33;
    v111 = v35;
    v112 = v37;
    v113 = v39;
    outlined init with copy of PlatformImageRepresentableContext(&v124, &v83);
    outlined init with copy of Image.Resolved(&v124, &v83);
    outlined destroy of GlassEntryView?(&v110, &lazy cache variable for type metadata for Image.Resolved?, &type metadata for Image.Resolved, MEMORY[0x1E69E6720]);
    v50 = v77;
    v52 = v78;
    *v53 = *v79;
    *&v53[11] = *&v79[11];
    v42 = v73;
    v44 = v74;
    v46 = v75;
    v48 = v76;
    v34 = v69;
    v36 = v70;
    v38 = v71;
    v40 = v72;

    outlined destroy of PlatformImageRepresentableContext(&v124);
    *&v84[136] = v50;
    *&v84[152] = v52;
    *&v84[168] = *v53;
    *&v84[179] = *&v53[11];
    *&v84[72] = v42;
    *&v84[88] = v44;
    *&v84[104] = v46;
    *&v84[120] = v48;
    *&v84[8] = v34;
    *&v84[24] = v36;
    *&v84[40] = v38;
    v83 = 0uLL;
    *&v84[56] = v40;
    *v84 = 0;
    *&v84[200] = 0;
    LOBYTE(v85) = 1;
    *(&v85 + 1) = v15;
    _ViewInputs.base.modify();
    v150 = *&v84[176];
    v151 = *&v84[192];
    v152 = v85;
    v146 = *&v84[112];
    v147 = *&v84[128];
    v149 = *&v84[160];
    v148 = *&v84[144];
    v142 = *&v84[48];
    v143 = *&v84[64];
    v145 = *&v84[96];
    v144 = *&v84[80];
    v138 = v83;
    v139 = *v84;
    v3 = *&v84[16];
    v2 = *&v84[32];
  }

  else
  {
    v1 = 0;
    v150 = v165;
    v151 = v166;
    v152 = v167;
    v146 = v161;
    v147 = v162;
    v149 = v164;
    v148 = v163;
    v2 = v156;
    v142 = v157;
    v143 = v158;
    v145 = v160;
    v144 = v159;
    v138 = v153;
    v139 = v154;
    v3 = v155;
  }

  v141 = v2;
  v140 = v3;
  v16 = *AGGraphGetValue() >> 1;
  if (v16 == *(v0 + 44) && (v17 = *(v0 + 40)) != 0)
  {
    v18 = 0;
  }

  else
  {
    v17 = static ViewIdentity.nextSeed;
    v18 = 1;
    if ((static ViewIdentity.nextSeed + 1) > 1)
    {
      v19 = static ViewIdentity.nextSeed + 1;
    }

    else
    {
      v19 = 1;
    }

    static ViewIdentity.nextSeed = v19;
    *(v0 + 40) = v17;
    *(v0 + 44) = v16;
  }

  if (AGGraphGetOutputValue())
  {
    v20 = v18;
  }

  else
  {
    v20 = 1;
  }

  if (((v20 | v1) & 1) == 0)
  {
    return outlined destroy of GlassEntryView?(&v138, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent, MEMORY[0x1E69E6720]);
  }

  v21 = *(v0 + 48) + 1;
  *(v0 + 48) = v21;
  v22 = MEMORY[0x1E69E6F90];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ViewIdentity>, &type metadata for ViewIdentity, MEMORY[0x1E69E6F90]);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_18DDA6EB0;
  *(v23 + 32) = v17;
  v24 = *(v0 + 32);
  v25 = *(v0 + 24);
  v26 = *(v0 + 33);
  v88 = 0u;
  v89 = 0u;
  v90 = xmmword_18DD85500;
  v91 = 1;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  v107 = 0u;
  v108 = 0u;
  memset(v109, 0, sizeof(v109));
  *&v83 = v23;
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItem.StaticKind>, &type metadata for PlatformItem.StaticKind, v22);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_18DDA6EB0;
  *(v27 + 32) = v24;
  *(&v83 + 1) = v27;
  *v84 = v25;
  v84[8] = v26;
  *&v84[12] = v21;
  v121 = v165;
  v122 = v166;
  v123 = v167;
  v118 = v161;
  v119 = v162;
  *&v120[16] = v164;
  *v120 = v163;
  v114 = v157;
  v115 = v158;
  v117 = v160;
  v116 = v159;
  v110 = v153;
  v111 = v154;
  v113 = v156;
  v112 = v155;
  outlined destroy of GlassEntryView?(&v110, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent, MEMORY[0x1E69E6720]);
  v85 = v165;
  v86 = v166;
  v87 = v167;
  *&v84[144] = v161;
  *&v84[160] = v162;
  *&v84[176] = v163;
  *&v84[192] = v164;
  *&v84[80] = v157;
  *&v84[96] = v158;
  *&v84[112] = v159;
  *&v84[128] = v160;
  *&v84[16] = v153;
  *&v84[32] = v154;
  *&v84[48] = v155;
  *&v84[64] = v156;
  v135 = v150;
  v136 = v151;
  v137 = v152;
  v132 = v146;
  v133 = v147;
  *&v134[16] = v149;
  *v134 = v148;
  v128 = v142;
  v129 = v143;
  v131 = v145;
  v130 = v144;
  v124 = v138;
  v125 = v139;
  v127 = v141;
  v126 = v140;
  if (_s7SwiftUI12PlatformItemV14PrimaryContentVSgWOg(&v124) != 1)
  {
    v66 = v85;
    v67 = v86;
    v68 = v87;
    v63 = *&v84[144];
    v64 = *&v84[160];
    *v65 = *&v84[176];
    *&v65[16] = *&v84[192];
    v59 = *&v84[80];
    v60 = *&v84[96];
    v61 = *&v84[112];
    v62 = *&v84[128];
    v55 = *&v84[16];
    v56 = *&v84[32];
    v57 = *&v84[48];
    v58 = *&v84[64];
    v80 = v150;
    v81 = v151;
    v82 = v152;
    v77 = v146;
    v78 = v147;
    *v79 = v148;
    *&v79[16] = v149;
    v73 = v142;
    v74 = v143;
    v75 = v144;
    v76 = v145;
    v69 = v138;
    v70 = v139;
    v71 = v140;
    v72 = v141;
    outlined init with copy of PlatformItem.PrimaryContent(&v69, v54);
    outlined destroy of GlassEntryView?(&v55, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent, MEMORY[0x1E69E6720]);
    v85 = v150;
    v86 = v151;
    v87 = v152;
    *&v84[144] = v146;
    *&v84[160] = v147;
    *&v84[176] = v148;
    *&v84[192] = v149;
    *&v84[80] = v142;
    *&v84[96] = v143;
    *&v84[112] = v144;
    *&v84[128] = v145;
    *&v84[16] = v138;
    *&v84[32] = v139;
    *&v84[48] = v140;
    *&v84[64] = v141;
  }

  if (*(v0 + 36) != *MEMORY[0x1E698D3F8])
  {
    v28 = *AGGraphGetValue();

    *&v88 = v28;
  }

  v29 = *(v0 + 16);
  v30 = *&v84[12];
  type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<PlatformItem>, &type metadata for PlatformItem, MEMORY[0x1E69E6F90]);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_18DDA6EB0;
  outlined init with copy of PlatformItem(&v83, v31 + 32);
  *&v69 = v29;
  DWORD2(v69) = v30;
  *&v70 = v31;
  AGGraphSetOutputValue();
  outlined destroy of GlassEntryView?(&v138, &lazy cache variable for type metadata for PlatformItem.PrimaryContent?, &type metadata for PlatformItem.PrimaryContent, MEMORY[0x1E69E6720]);

  return outlined destroy of PlatformItem(&v83);
}

double specialized AnimatableAttribute.updateValue()()
{
  v9 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = Value[1];
  v7[0] = v2;
  v7[1] = v3;
  v8 = v4 & 1;
  v5 = *(v0 + 4);

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v7, 0, v5, (v0 + 8));
  if ((v8 & 1) != 0 || !AGGraphGetOutputValue())
  {
    AGGraphSetOutputValue();
  }

  return result;
}

{
  v11 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v3 = Value[1];
  v2 = Value[2];
  v4 = Value[3];
  v5 = Value[4];
  v9[0] = *Value;
  v9[1] = v3;
  v9[2] = v2;
  v9[3] = v4;
  v9[4] = v5;
  v10 = v6 & 1;
  v7 = *(v0 + 4);

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(v9, 0, v7, v0 + 8);
  if ((v10 & 1) != 0 || !AGGraphGetOutputValue())
  {
    AGGraphSetOutputValue();
  }

  else
  {
  }

  return result;
}

{
  v13 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 8);
  v3 = *(Value + 12);
  v4 = *(Value + 16);
  v8 = *Value;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5 & 1;
  v6 = *(v0 + 4);

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v8, 0, v6, v0 + 8);
  if ((v12 & 1) != 0 || !AGGraphGetOutputValue())
  {
    AGGraphSetOutputValue();
  }

  else
  {
  }

  return result;
}

{
  v6 = *MEMORY[0x1E69E9840];
  v4 = *AGGraphGetValue();
  v5 = v1 & 1;
  v2 = *(v0 + 4);

  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v4, 0, v2, v0 + 8);
  if ((v5 & 1) != 0 || !AGGraphGetOutputValue())
  {
    AGGraphSetOutputValue();
  }

  else
  {
  }

  return result;
}

void specialized AnimatableAttribute.updateValue()()
{
  v11 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v2 = *(Value + 24);
  v7 = *Value;
  v8 = *(Value + 8);
  v9 = v2;
  v10 = v3 & 1;
  v4 = *(v0 + 4);
  v5 = v7;
  specialized AnimatableAttributeHelper.update(value:defaultAnimation:environment:sampleCollector:)(&v7, 0, v4, (v0 + 8));
  if ((v10 & 1) != 0 || !AGGraphGetOutputValue())
  {
    v6 = v7;
    AGGraphSetOutputValue();
  }

  else
  {
    v6 = v7;
  }
}

uint64_t specialized AnimatableAttribute.updateValue()(uint64_t a1, void (*a2)(_OWORD *, __int128 *), void (*a3)(__int128 *, void, uint64_t, unsigned int *), uint64_t (*a4)(__int128 *))
{
  v24 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v10 = Value[1];
  v9 = Value[2];
  v11 = *Value;
  *&v23[9] = *(Value + 41);
  v22[1] = v10;
  *v23 = v9;
  v22[0] = v11;
  v12 = Value[1];
  v19 = *Value;
  v20 = v12;
  *v21 = Value[2];
  *&v21[9] = *(Value + 41);
  v21[25] = v13 & 1;
  v14 = *(v4 + 4);
  a2(v22, &v16);
  a3(&v19, 0, v14, (v4 + 8));
  if ((v21[25] & 1) != 0 || !AGGraphGetOutputValue())
  {
    v16 = v19;
    v17 = v20;
    v18[0] = *v21;
    *(v18 + 9) = *&v21[9];
    AGGraphSetOutputValue();
  }

  v16 = v19;
  v17 = v20;
  v18[0] = *v21;
  *(v18 + 10) = *&v21[10];
  return a4(&v16);
}

{
  v24 = *MEMORY[0x1E69E9840];
  Value = AGGraphGetValue();
  v10 = Value[1];
  v9 = Value[2];
  v11 = *Value;
  *&v23[9] = *(Value + 41);
  v22[1] = v10;
  *v23 = v9;
  v22[0] = v11;
  v12 = Value[1];
  v19 = *Value;
  v20 = v12;
  *v21 = Value[2];
  *&v21[9] = *(Value + 41);
  v21[25] = v13 & 1;
  v14 = *(v4 + 4);
  a2(v22, &v16);
  a3(&v19, 0, v14, (v4 + 8));
  if ((v21[25] & 1) != 0 || !AGGraphGetOutputValue())
  {
    v16 = v19;
    v17 = v20;
    v18[0] = *v21;
    *(v18 + 9) = *&v21[9];
    AGGraphSetOutputValue();
  }

  v16 = v19;
  v17 = v20;
  v18[0] = *v21;
  *(v18 + 10) = *&v21[10];
  return a4(&v16);
}

uint64_t specialized AnimatableAttribute.updateValue()(uint64_t (*a1)(void), void (*a2)(__int128 *, void, void, unsigned int *))
{
  v8 = *MEMORY[0x1E69E9840];
  a1(0);
  v6 = *AGGraphGetValue();
  v7 = v4 & 1;
  a2(&v6, 0, *(v2 + 4), (v2 + 8));
  if (v7)
  {
    return AGGraphSetOutputValue();
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    return AGGraphSetOutputValue();
  }

  return result;
}

double specialized ValueActionDispatcher.updateValue()()
{
  if (*(v0 + 32) != *AGGraphGetValue() >> 1)
  {
    *(v0 + 32) = *AGGraphGetValue() >> 1;
    outlined consume of _ValueActionModifier2<Int>?(*(v0 + 8), *(v0 + 16), *(v0 + 24));
    *(v0 + 24) = 0;
    *(v0 + 8) = 0u;
    *(v0 + 40) = 0xFFFFFFFFLL;
    *(v0 + 48) = 0;
  }

  type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for _ValueActionModifier2<Int>, MEMORY[0x1E69E6530], MEMORY[0x1E69E6550], type metadata accessor for _ValueActionModifier2);
  Value = AGGraphGetValue();
  v2 = *Value;
  v3 = Value[1];
  v4 = Value[2];
  v22 = v2;
  *&v23 = v3;
  *(&v23 + 1) = v4;
  MEMORY[0x1EEE9AC00](v4);
  v19[2] = &v22;
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);

  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF7SwiftUI21_ValueActionModifier2VySiG_s5NeverOSbTB5(partial apply for specialized closure #1 in ValueActionDispatcher.updateValue(), v19, v5, v6, v7);
  if (v8 != 2 && (v8 & 1) != 0)
  {
    AGGraphClearUpdate();
    v9 = *AGGraphGetValue();
    AGGraphSetUpdate();
    if (*(v0 + 40) == v9)
    {
      v10 = *(v0 + 44);
      if (!v10 || (v11 = v10 - 1, (*(v0 + 44) = v11) == 0))
      {
        if ((*(v0 + 48) & 1) == 0)
        {
          v20 = 0;
          v21 = 0xE000000000000000;
          _StringGuts.grow(_:)(44);

          v20 = 0xD000000000000018;
          v21 = 0x800000018DD75B70;
          MEMORY[0x193ABEDD0](0xD00000000000002ALL, 0x800000018DD75B90);
          specialized static Log.externalWarning(_:)(v20, v21);

          *(v0 + 48) = 1;
        }

        goto LABEL_12;
      }
    }

    else
    {
      *(v0 + 40) = v9;
      *(v0 + 44) = 2;
    }

    v12 = *(v0 + 8);
    v13 = *(v0 + 16);
    v14 = *(v0 + 24);
    LOBYTE(v20) = 1;
    v15 = v22;
    v16 = v23;
    v17 = swift_allocObject();
    *(v17 + 16) = v15;
    *(v17 + 24) = v16;
    *(v17 + 40) = v12;
    *(v17 + 48) = v13;
    *(v17 + 56) = v14;

    outlined copy of _ValueActionModifier2<Int>?(v12, v13, v14);
    static Update.enqueueAction(reason:_:)(&v20, partial apply for specialized closure #2 in ValueActionDispatcher.updateValue(), v17);
  }

LABEL_12:
  outlined consume of _ValueActionModifier2<Int>?(*(v0 + 8), *(v0 + 16), *(v0 + 24));
  *(v0 + 8) = v22;
  result = *&v23;
  *(v0 + 16) = v23;
  return result;
}

void specialized closure #1 in GestureBodyAccessor.updateBody(of:changed:)(double a1, double a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  v55 = v4;
  v56 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v48 = &v47[-v8];
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v9 = static Signpost.bodyInvoke;
    v10 = word_1ED539040;
    v11 = HIBYTE(word_1ED539040);
    v12 = byte_1ED539042;
    v13 = static os_signpost_type_t.begin.getter();
    v66 = v9;
    LOBYTE(v67) = v10;
    BYTE1(v67) = v11;
    BYTE2(v67) = v12;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v54 = *(&v9 + 1);
    LODWORD(v58) = v13;
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_18DDAB4C0;
    v15 = AGTypeID.description.getter();
    v17 = v16;
    v18 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v20 = v19;
    *(v14 + 64) = v19;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v21 = specialized static Tracing.libraryName(defining:)();
    *(v14 + 96) = v18;
    *(v14 + 104) = v20;
    *(v14 + 72) = v21;
    *(v14 + 80) = v22;
    v59 = v14;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v11)
    {
      v65 = v58;
      v63 = _signpostLog;
      v64 = &dword_18D018000;
      *&v66 = v9;
      *(&v66 + 1) = v54;
      LOBYTE(v67) = v10;
      v61[0] = "%{public}@.body [in %{public}@]";
      v61[1] = 31;
      v62 = 2;
      v60 = v59;
      v23 = v48;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v65, &v64, &v63, &v66, v48, v61, &v60);
      (*(v56 + 8))(v23, v55);
LABEL_34:

      break;
    }

    if (v9 == 20)
    {
      v24 = 3;
    }

    else
    {
      v24 = 4;
    }

    v25 = bswap32(v9) | (4 * WORD1(v9));
    v26 = v58;
    v27 = v56 + 16;
    v49 = *(v56 + 16);
    v28 = v49(v57, v48, v55);
    v29 = 0;
    LOBYTE(v61[0]) = 1;
    v53 = 16 * *(&v9 + 1);
    v56 = v27;
    v54 = (v27 - 8);
    v52 = v59 + 32;
    v51 = v9;
    v50 = *(&v9 + 1);
LABEL_11:
    v58 = v47;
    MEMORY[0x1EEE9AC00](v28);
    v31 = &v47[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v32 = v31 + 8;
    v33 = v24;
    v34 = v31 + 8;
    do
    {
      *(v34 - 1) = 0;
      *v34 = 0;
      v34 += 16;
      --v33;
    }

    while (v33);
    v35 = v52 + 40 * v29;
    while (1)
    {
      v36 = *(v59 + 16);
      if (v29 == v36)
      {
        LOBYTE(v61[0]) = 0;
LABEL_19:
        v40 = v51;
        if (v51 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v31[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v31[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v31[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v40 != 20 && v31[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v41 = v55;
        v42 = *v54;
        v43 = v57;
        (*v54)(v57, v55);
        v44 = __swift_project_value_buffer(v41, static OSSignpostID.continuation);
        v28 = v49(v43, v44, v41);
        v24 = v50;
        if ((v61[0] & 1) == 0)
        {
          v45 = v55;
          v42(v57, v55);
          v42(v48, v45);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v29 >= v36)
      {
        break;
      }

      ++v29;
      outlined init with copy of AnyTrackedValue(v35, &v66);
      v37 = v68;
      v38 = v69;
      __swift_project_boxed_opaque_existential_1(&v66, v68);
      *(v32 - 1) = CVarArg.kdebugValue(_:)(v25 | v26, v37, v38);
      *v32 = v39 & 1;
      v32 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v66);
      v35 += 40;
      if (!--v24)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  v46 = swift_allocObject();
  *(v46 + 16) = a2;
  *(v46 + 24) = a1;
  LOBYTE(v66) = 0;
  *(&v66 + 1) = partial apply for closure #1 in DistanceGesture.body.getter;
  v67 = v46;
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifierGesture<StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>, EventListener<SpatialEvent>>(0);
  AGGraphSetOutputValue();
}

uint64_t specialized closure #1 in GestureBodyAccessor.updateBody(of:changed:)()
{
  v66 = *MEMORY[0x1E69E9840];
  v49 = type metadata accessor for OSSignpostID();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v51 = &v41 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v42 = &v41 - v2;
  if (one-time initialization token for bodyInvoke != -1)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v3 = static Signpost.bodyInvoke;
    v4 = word_1ED539040;
    v5 = HIBYTE(word_1ED539040);
    v6 = byte_1ED539042;
    v7 = static os_signpost_type_t.begin.getter();
    v60 = v3;
    v61 = v4;
    v62 = v5;
    v63 = v6;
    if ((Signpost.isEnabled.getter() & 1) == 0)
    {
      break;
    }

    v48 = *(&v3 + 1);
    LODWORD(v52) = v7;
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for SingleTapGesture<TappableEvent>, &type metadata for TappableEvent, &protocol witness table for TappableEvent, type metadata accessor for SingleTapGesture);
    static OSSignpostID.exclusive.getter();
    type metadata accessor for TappableEventType?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<CVarArg>, &lazy cache variable for type metadata for CVarArg, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_18DDAB4C0;
    v9 = AGTypeID.description.getter();
    v11 = v10;
    v12 = MEMORY[0x1E69E6158];
    *(v8 + 56) = MEMORY[0x1E69E6158];
    lazy protocol witness table accessor for type String and conformance String();
    v14 = v13;
    *(v8 + 64) = v13;
    *(v8 + 32) = v9;
    *(v8 + 40) = v11;
    v15 = specialized static Tracing.libraryName(defining:)();
    *(v8 + 96) = v12;
    *(v8 + 104) = v14;
    *(v8 + 72) = v15;
    *(v8 + 80) = v16;
    v53 = v8;
    if (one-time initialization token for _signpostLog != -1)
    {
      swift_once();
    }

    if (v5)
    {
      v59 = v52;
      v58 = &dword_18D018000;
      v57 = _signpostLog;
      *&v60 = v3;
      *(&v60 + 1) = v48;
      v61 = v4;
      v55[0] = "%{public}@.body [in %{public}@]";
      v55[1] = 31;
      v56 = 2;
      v54 = v53;
      v17 = v42;
      specialized thunk for @escaping @callee_guaranteed (@unowned os_signpost_type_t, @unowned UnsafeRawPointer, @guaranteed OS_os_log, @unowned StaticString, @in_guaranteed OSSignpostID, @unowned StaticString, @guaranteed [CVarArg]) -> ()(&v59, &v58, &v57, &v60, v42, v55, &v54);
      (*(v50 + 8))(v17, v49);
LABEL_34:

      break;
    }

    if (v3 == 20)
    {
      v18 = 3;
    }

    else
    {
      v18 = 4;
    }

    v19 = bswap32(v3) | (4 * WORD1(v3));
    v20 = v52;
    v21 = v50 + 16;
    v43 = *(v50 + 16);
    v22 = v43(v51, v42, v49);
    v23 = 0;
    LOBYTE(v55[0]) = 1;
    v47 = 16 * *(&v3 + 1);
    v50 = v21;
    v48 = (v21 - 8);
    v46 = v53 + 32;
    v45 = v3;
    v44 = *(&v3 + 1);
LABEL_11:
    v52 = &v41;
    MEMORY[0x1EEE9AC00](v22);
    v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    v26 = v25 + 8;
    v27 = v18;
    v28 = v25 + 8;
    do
    {
      *(v28 - 1) = 0;
      *v28 = 0;
      v28 += 16;
      --v27;
    }

    while (v27);
    v29 = v46 + 40 * v23;
    while (1)
    {
      v30 = *(v53 + 16);
      if (v23 == v30)
      {
        LOBYTE(v55[0]) = 0;
LABEL_19:
        v34 = v45;
        if (v45 == 20)
        {
          OSSignpostID.rawValue.getter();
        }

        kdebug_trace();
        if (v25[8] == 1)
        {
          kdebug_trace_string();
        }

        if (v25[24] == 1)
        {
          kdebug_trace_string();
        }

        if (v25[40] == 1)
        {
          kdebug_trace_string();
        }

        if (v34 != 20 && v25[56] == 1)
        {
          kdebug_trace_string();
        }

        if (one-time initialization token for continuation != -1)
        {
          swift_once();
        }

        v35 = *v48;
        v36 = v51;
        v37 = v49;
        (*v48)(v51, v49);
        v38 = __swift_project_value_buffer(v37, static OSSignpostID.continuation);
        v22 = v43(v36, v38, v37);
        v18 = v44;
        if ((v55[0] & 1) == 0)
        {
          v39 = v49;
          v35(v51, v49);
          v35(v42, v39);
          goto LABEL_34;
        }

        goto LABEL_11;
      }

      if (v23 >= v30)
      {
        break;
      }

      ++v23;
      outlined init with copy of AnyTrackedValue(v29, &v60);
      v31 = v64;
      v32 = v65;
      __swift_project_boxed_opaque_existential_1(&v60, v64);
      *(v26 - 1) = CVarArg.kdebugValue(_:)(v19 | v20, v31, v32);
      *v26 = v33 & 1;
      v26 += 16;
      __swift_destroy_boxed_opaque_existential_1(&v60);
      v29 += 40;
      if (!--v18)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_37:
    swift_once();
  }

  AGGraphClearUpdate();
  specialized SingleTapGesture.body.getter(&v60);
  AGGraphSetUpdate();
  $defer #1 <A>() in traceRuleBody<A>(_:body:)();
  type metadata accessor for ModifierGesture<EventFilter<TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>>(0);
  AGGraphSetOutputValue();
  return outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(&v60, type metadata accessor for ModifierGesture<EventFilter<TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>, TappableEvent>, ModifierGesture<Map2Gesture<TappableEvent, ModifierGesture<DurationGesture<TappableEvent>, EventListener<TappableEvent>>, TappableEvent>, ModifierGesture<DependentGesture<TappableEvent>, ModifierGesture<MapGesture<TappableEvent, TappableEvent>, EventListener<TappableEvent>>>>>>);
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA017ConcentricPaddingC033_7079FF89BCF97F81EB250A589B9A5CEDLLVG_Tt1g5@<X0>(_BYTE *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    outlined init with copy of UnaryLayoutEngine<ConcentricPaddingLayout>(a1, v11);
    type metadata accessor for TracingLayoutEngineBox<UnaryLayoutEngine<ConcentricPaddingLayout>>(0);
    v4 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v6 = *MEMORY[0x1E698D3F8];
    outlined destroy of UnaryLayoutEngine<ConcentricPaddingLayout>(a1);
    if (CurrentAttribute == v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = CurrentAttribute;
    }

    *(v4 + 564) = v7;
    *(v4 + 568) = CurrentAttribute == v6;
    v8 = (v4 + 16);
    v9 = v11;
  }

  else
  {
    type metadata accessor for LayoutEngineBox<UnaryLayoutEngine<ConcentricPaddingLayout>>(0);
    v4 = swift_allocObject();
    v8 = (v4 + 16);
    v9 = a1;
  }

  result = memcpy(v8, v9, 0x221uLL);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA010GlassEntryC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt1B5@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<GlassEntryLayout>>(0);
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

    *(v4 + 816) = v7;
    *(v4 + 820) = v6;
  }

  else
  {
    type metadata accessor for LayoutEngineBox<ViewLayoutEngine<GlassEntryLayout>>(0);
    v4 = swift_allocObject();
  }

  result = memcpy((v4 + 16), a1, 0x320uLL);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA011GlassEffectC033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_Tt1B5@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<GlassEffectLayout>>(0);
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

    *(v4 + 416) = v7;
    *(v4 + 420) = v6;
  }

  else
  {
    type metadata accessor for LayoutEngineBox<ViewLayoutEngine<GlassEffectLayout>>(0);
    v4 = swift_allocObject();
  }

  result = memcpy((v4 + 16), a1, 0x190uLL);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA5ImageVAAE8ResolvedVG_Tt1B5@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for TracingLayoutEngineBox<LeafLayoutEngine<Image.Resolved>>(0);
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

    *(v4 + 372) = v7;
    *(v4 + 376) = v6;
  }

  else
  {
    type metadata accessor for LayoutEngineBox<LeafLayoutEngine<Image.Resolved>>(0);
    v4 = swift_allocObject();
  }

  result = memcpy((v4 + 16), a1, 0x161uLL);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05InsetcD0V0E0V_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<InsetLayoutComputer.Engine>, &type metadata for InsetLayoutComputer.Engine, &protocol witness table for InsetLayoutComputer.Engine, type metadata accessor for TracingLayoutEngineBox);
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

    *(v4 + 212) = v7;
    *(v4 + 216) = v6;
  }

  else
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for LayoutEngineBox<InsetLayoutComputer.Engine>, &type metadata for InsetLayoutComputer.Engine, &protocol witness table for InsetLayoutComputer.Engine, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  v8 = *(a1 + 176);
  *(v4 + 176) = *(a1 + 160);
  *(v4 + 192) = v8;
  *(v4 + 208) = *(a1 + 192);
  v9 = *(a1 + 112);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = v9;
  v10 = *(a1 + 144);
  *(v4 + 144) = *(a1 + 128);
  *(v4 + 160) = v10;
  v11 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v11;
  v12 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v12;
  result = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = result;
  *a2 = v4;
  a2[1] = 0;
  return result;
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA09_PositionC0VG_Tt1B5Tm@<X0>(const void *a1@<X0>, uint64_t (*a2)(void, __n128)@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    (a2)(0);
    v8 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v10 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v11 = 0;
    }

    else
    {
      v11 = CurrentAttribute;
    }

    *(v8 + 532) = v11;
    *(v8 + 536) = v10;
  }

  else
  {
    (a3)(0);
    v8 = swift_allocObject();
  }

  result = memcpy((v8 + 16), a1, 0x201uLL);
  *a4 = v8;
  a4[1] = 0;
  return result;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA018UnaryPositionAwarecE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA021ContainerCornerOffsetC033_1EB28CBBC8B70D90A6FD32242CBBC5E6LLVG_Tt1B5Tm@<Q0>(uint64_t a1@<X0>, uint64_t (*a2)(void, __n128)@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    (a2)(0);
    v8 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v10 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v11 = 0;
    }

    else
    {
      v11 = CurrentAttribute;
    }

    *(v8 + 212) = v11;
    *(v8 + 216) = v10;
  }

  else
  {
    (a3)(0);
    v8 = swift_allocObject();
  }

  v12 = *(a1 + 176);
  *(v8 + 176) = *(a1 + 160);
  *(v8 + 192) = v12;
  *(v8 + 208) = *(a1 + 192);
  v13 = *(a1 + 112);
  *(v8 + 112) = *(a1 + 96);
  *(v8 + 128) = v13;
  v14 = *(a1 + 144);
  *(v8 + 144) = *(a1 + 128);
  *(v8 + 160) = v14;
  v15 = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = v15;
  v16 = *(a1 + 80);
  *(v8 + 80) = *(a1 + 64);
  *(v8 + 96) = v16;
  result = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = result;
  *a4 = v8;
  a4[1] = 0;
  return result;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LazycD0V0E0VyAA0f6HStackC0V_G_Tt1B5Tm@<Q0>(uint64_t a1@<X0>, uint64_t (*a2)(void, __n128)@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t *a4@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    (a2)(0);
    v8 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v10 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v11 = 0;
    }

    else
    {
      v11 = CurrentAttribute;
    }

    *(v8 + 244) = v11;
    *(v8 + 248) = v10;
  }

  else
  {
    (a3)(0);
    v8 = swift_allocObject();
  }

  v12 = *(a1 + 208);
  *(v8 + 208) = *(a1 + 192);
  *(v8 + 224) = v12;
  *(v8 + 240) = *(a1 + 224);
  v13 = *(a1 + 144);
  *(v8 + 144) = *(a1 + 128);
  *(v8 + 160) = v13;
  v14 = *(a1 + 176);
  *(v8 + 176) = *(a1 + 160);
  *(v8 + 192) = v14;
  v15 = *(a1 + 80);
  *(v8 + 80) = *(a1 + 64);
  *(v8 + 96) = v15;
  v16 = *(a1 + 112);
  *(v8 + 112) = *(a1 + 96);
  *(v8 + 128) = v16;
  v17 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v17;
  result = *(a1 + 48);
  *(v8 + 48) = *(a1 + 32);
  *(v8 + 64) = result;
  *a4 = v8;
  a4[1] = 0;
  return result;
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04ViewcE0VyAA019FlexibleButtonFrameC0VG_Tt1B5@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for TracingLayoutEngineBox<ViewLayoutEngine<FlexibleButtonFrameLayout>>(0);
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

    *(v4 + 336) = v7;
    *(v4 + 340) = v6;
  }

  else
  {
    type metadata accessor for LayoutEngineBox<ViewLayoutEngine<FlexibleButtonFrameLayout>>(0);
    v4 = swift_allocObject();
  }

  result = memcpy((v4 + 16), a1, 0x140uLL);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA13AnimatedShapeVyAA024PartialContainerRelativeH0VGG_Tt1B5@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<PartialContainerRelativeShape>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<PartialContainerRelativeShape>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for TracingLayoutEngineBox);
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

    *(v4 + 428) = v7;
    *(v4 + 432) = v6;
  }

  else
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<PartialContainerRelativeShape>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<PartialContainerRelativeShape>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  result = memcpy((v4 + 16), a1, 0x199uLL);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA13AnimatedShapeVyAA22UnevenRoundedRectangleV6_InsetVGG_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<UnevenRoundedRectangle._Inset>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<UnevenRoundedRectangle._Inset>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for TracingLayoutEngineBox);
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

    *(v4 + 236) = v7;
    *(v4 + 240) = v6;
  }

  else
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<UnevenRoundedRectangle._Inset>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<UnevenRoundedRectangle._Inset>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  v8 = *(a1 + 176);
  *(v4 + 176) = *(a1 + 160);
  *(v4 + 192) = v8;
  *(v4 + 208) = *(a1 + 192);
  *(v4 + 217) = *(a1 + 201);
  v9 = *(a1 + 112);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = v9;
  v10 = *(a1 + 144);
  *(v4 + 144) = *(a1 + 128);
  *(v4 + 160) = v10;
  v11 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v11;
  v12 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v12;
  result = *a1;
  v14 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v14;
  *a2 = v4;
  a2[1] = 0;
  return result;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA015CombinedContentG033_6E67AD6866B38627EB183D41FF0BA80ALLVAA15ForegroundStyleVGG_Tt1B5Tm@<Q0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, unint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, a2, a3, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for TracingLayoutEngineBox);
    v10 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v12 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v13 = 0;
    }

    else
    {
      v13 = CurrentAttribute;
    }

    *(v10 + 196) = v13;
    *(v10 + 200) = v12;
  }

  else
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, a4, a3, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for LayoutEngineBox);
    v10 = swift_allocObject();
  }

  v14 = *(a1 + 144);
  *(v10 + 144) = *(a1 + 128);
  *(v10 + 160) = v14;
  *(v10 + 176) = *(a1 + 160);
  *(v10 + 192) = *(a1 + 176);
  v15 = *(a1 + 80);
  *(v10 + 80) = *(a1 + 64);
  *(v10 + 96) = v15;
  v16 = *(a1 + 112);
  *(v10 + 112) = *(a1 + 96);
  *(v10 + 128) = v16;
  v17 = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = v17;
  result = *(a1 + 32);
  v19 = *(a1 + 48);
  *(v10 + 48) = result;
  *(v10 + 64) = v19;
  *a5 = v10;
  a5[1] = 0;
  return result;
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA13AnimatedShapeVyAA19ConcentricRectangleVGG_Tt1B5@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<AnimatedShape<ConcentricRectangle>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<ConcentricRectangle>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for TracingLayoutEngineBox);
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

    *(v4 + 572) = v7;
    *(v4 + 576) = v6;
  }

  else
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<AnimatedShape<ConcentricRectangle>>>, type metadata accessor for LeafLayoutEngine<AnimatedShape<ConcentricRectangle>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  result = memcpy((v4 + 16), a1, 0x229uLL);
  *a2 = v4;
  a2[1] = 0;
  return result;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA18EllipticalGradientVGG_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<Rectangle, EllipticalGradient>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, EllipticalGradient>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for TracingLayoutEngineBox);
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

    *(v4 + 228) = v7;
    *(v4 + 232) = v6;
  }

  else
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<Rectangle, EllipticalGradient>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, EllipticalGradient>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  v8 = *(a1 + 176);
  *(v4 + 176) = *(a1 + 160);
  *(v4 + 192) = v8;
  *(v4 + 208) = *(a1 + 192);
  *(v4 + 224) = *(a1 + 208);
  v9 = *(a1 + 112);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = v9;
  v10 = *(a1 + 144);
  *(v4 + 144) = *(a1 + 128);
  *(v4 + 160) = v10;
  v11 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v11;
  v12 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v12;
  result = *a1;
  v14 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v14;
  *a2 = v4;
  a2[1] = 0;
  return result;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAAE17AsymmetricalInsetVAA15ForegroundStyleVGG_Tt1B5Tm@<Q0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, unint64_t *a4@<X3>, uint64_t *a5@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, a2, a3, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for TracingLayoutEngineBox);
    v10 = swift_allocObject();
    CurrentAttribute = AGGraphGetCurrentAttribute();
    v12 = CurrentAttribute == *MEMORY[0x1E698D3F8];
    if (CurrentAttribute == *MEMORY[0x1E698D3F8])
    {
      v13 = 0;
    }

    else
    {
      v13 = CurrentAttribute;
    }

    *(v10 + 220) = v13;
    *(v10 + 224) = v12;
  }

  else
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, a4, a3, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for LayoutEngineBox);
    v10 = swift_allocObject();
  }

  v14 = *(a1 + 176);
  *(v10 + 176) = *(a1 + 160);
  *(v10 + 192) = v14;
  *(v10 + 201) = *(a1 + 185);
  v15 = *(a1 + 112);
  *(v10 + 112) = *(a1 + 96);
  *(v10 + 128) = v15;
  v16 = *(a1 + 144);
  *(v10 + 144) = *(a1 + 128);
  *(v10 + 160) = v16;
  v17 = *(a1 + 48);
  *(v10 + 48) = *(a1 + 32);
  *(v10 + 64) = v17;
  v18 = *(a1 + 80);
  *(v10 + 80) = *(a1 + 64);
  *(v10 + 96) = v18;
  result = *(a1 + 16);
  *(v10 + 16) = *a1;
  *(v10 + 32) = result;
  *a5 = v10;
  a5[1] = 0;
  return result;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA15AngularGradientVGG_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<Rectangle, AngularGradient>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, AngularGradient>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for TracingLayoutEngineBox);
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

    *(v4 + 228) = v7;
    *(v4 + 232) = v6;
  }

  else
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<Rectangle, AngularGradient>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, AngularGradient>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  v8 = *(a1 + 176);
  *(v4 + 176) = *(a1 + 160);
  *(v4 + 192) = v8;
  *(v4 + 208) = *(a1 + 192);
  *(v4 + 224) = *(a1 + 208);
  v9 = *(a1 + 112);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = v9;
  v10 = *(a1 + 144);
  *(v4 + 144) = *(a1 + 128);
  *(v4 + 160) = v10;
  v11 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v11;
  v12 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v12;
  result = *a1;
  v14 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v14;
  *a2 = v4;
  a2[1] = 0;
  return result;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA14RadialGradientVGG_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<Rectangle, RadialGradient>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, RadialGradient>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for TracingLayoutEngineBox);
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

    *(v4 + 228) = v7;
    *(v4 + 232) = v6;
  }

  else
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<Rectangle, RadialGradient>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, RadialGradient>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  v8 = *(a1 + 176);
  *(v4 + 176) = *(a1 + 160);
  *(v4 + 192) = v8;
  *(v4 + 208) = *(a1 + 192);
  *(v4 + 224) = *(a1 + 208);
  v9 = *(a1 + 112);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = v9;
  v10 = *(a1 + 144);
  *(v4 + 144) = *(a1 + 128);
  *(v4 + 160) = v10;
  v11 = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = v11;
  v12 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v12;
  result = *a1;
  v14 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v14;
  *a2 = v4;
  a2[1] = 0;
  return result;
}

__n128 _s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA04LeafcE0VyAA10_ShapeViewVyAA9RectangleVAA12MeshGradientVGG_Tt1B5@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  swift_beginAccess();
  if (static LayoutTrace.recorder)
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for TracingLayoutEngineBox<LeafLayoutEngine<_ShapeView<Rectangle, MeshGradient>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, MeshGradient>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for TracingLayoutEngineBox);
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

    *(v4 + 244) = v7;
    *(v4 + 248) = v6;
  }

  else
  {
    type metadata accessor for ModifiedContent<_VariadicView.Tree<_LayoutRoot<GlassEntryLayout>, ForEach<[GlassContainer.Item], GlassContainer.Item.ID, GlassItemView>>, GlassEffectShapeModifier>(0, &lazy cache variable for type metadata for LayoutEngineBox<LeafLayoutEngine<_ShapeView<Rectangle, MeshGradient>>>, type metadata accessor for LeafLayoutEngine<_ShapeView<Rectangle, MeshGradient>>, &protocol witness table for LeafLayoutEngine<A>, type metadata accessor for LayoutEngineBox);
    v4 = swift_allocObject();
  }

  v8 = *(a1 + 208);
  *(v4 + 208) = *(a1 + 192);
  *(v4 + 224) = v8;
  *(v4 + 240) = *(a1 + 224);
  v9 = *(a1 + 144);
  *(v4 + 144) = *(a1 + 128);
  *(v4 + 160) = v9;
  v10 = *(a1 + 176);
  *(v4 + 176) = *(a1 + 160);
  *(v4 + 192) = v10;
  v11 = *(a1 + 80);
  *(v4 + 80) = *(a1 + 64);
  *(v4 + 96) = v11;
  v12 = *(a1 + 112);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 128) = v12;
  v13 = *(a1 + 16);
  *(v4 + 16) = *a1;
  *(v4 + 32) = v13;
  result = *(a1 + 48);
  *(v4 + 48) = *(a1 + 32);
  *(v4 + 64) = result;
  *a2 = v4;
  a2[1] = 0;
  return result;
}

uint64_t specialized TracingLayoutEngineBox.init(_:)(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 32) = 0;
  *(v2 + 36) = 1;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v10 = CurrentAttribute == *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    v11 = 0;
  }

  else
  {
    v11 = CurrentAttribute;
  }

  *(v2 + 32) = v11;
  *(v2 + 36) = v10;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v12 = *(a1 + 216);
  if (v12)
  {

    v13 = [v12 string];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = *(v2 + 32);
    v15 = *(v2 + 36);
    swift_beginAccess();
    v16 = static LayoutTrace.recorder;
    if (static LayoutTrace.recorder)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v14;
      }

      v25[0] = v17;
      swift_beginAccess();
      v18 = one-time initialization token for contentDescription;
      v19 = v16[2];

      if (v18 != -1)
      {
        swift_once();
      }

      static String.Encoding.utf8.getter();
      v20 = String.data(using:allowLossyConversion:)();
      v22 = v21;

      (*(v6 + 8))(v8, v5);
      v25[1] = v25[0];
      if (v22 >> 60 == 15)
      {
        isa = 0;
      }

      else
      {
        isa = Data._bridgeToObjectiveC()().super.isa;
      }

      AGGraphAddNamedTraceEvent();

      outlined consume of Data?(v20, v22);
    }

    else
    {
    }
  }

  return v2;
}

{
  v26 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for String.Encoding();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 32) = 0;
  *(v2 + 36) = 1;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v10 = CurrentAttribute == *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    v11 = 0;
  }

  else
  {
    v11 = CurrentAttribute;
  }

  *(v2 + 32) = v11;
  *(v2 + 36) = v10;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  specialized SizeFittingTextLayoutComputer.Engine.debugContentDescription.getter(a1, a2);
  v13 = v12;

  if (!v13)
  {
LABEL_17:

    return v2;
  }

  v14 = *(v2 + 32);
  v15 = *(v2 + 36);
  swift_beginAccess();
  v16 = static LayoutTrace.recorder;
  if (static LayoutTrace.recorder)
  {
    if (v15)
    {
      v17 = 0;
    }

    else
    {
      v17 = v14;
    }

    v25[0] = v17;
    swift_beginAccess();
    v18 = one-time initialization token for contentDescription;
    v19 = v16[2];

    if (v18 != -1)
    {
      swift_once();
    }

    static String.Encoding.utf8.getter();
    v20 = String.data(using:allowLossyConversion:)();
    v22 = v21;

    (*(v6 + 8))(v8, v5);
    v25[1] = v25[0];
    if (v22 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      isa = Data._bridgeToObjectiveC()().super.isa;
    }

    AGGraphAddNamedTraceEvent();

    outlined consume of Data?(v20, v22);

    goto LABEL_17;
  }

  return v2;
}

void *specialized ScalePulseModifier.body(content:)@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = *(v1 + 208);
  v74 = *(v1 + 192);
  v75 = v4;
  v76 = *(v1 + 224);
  v5 = *(v1 + 240);
  v77 = v5;
  if (!v5)
  {
    v9 = *(v2 + 208);
    v71 = *(v2 + 192);
    v72 = v9;
    v8 = *(v2 + 224);
    goto LABEL_7;
  }

  outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(&v74, v41, &lazy cache variable for type metadata for State<ScalePulseState>, &type metadata for ScalePulseState, type metadata accessor for State);
  if (one-time initialization token for sharedGraph != -1)
  {
    swift_once();
  }

  Counter = AGGraphGetCounter();
  v7 = *v5;
  if (Counter)
  {
    (*(v7 + 104))(1);
    outlined destroy of ScalePulseModifier<Int>(v2);
    v71 = v74;
    v72 = v75;
    v8 = v76;
LABEL_7:
    v73 = v8;
    goto LABEL_9;
  }

  (*(v7 + 120))(&v71);
  outlined destroy of ScalePulseModifier<Int>(v2);
LABEL_9:
  v10 = *(&v71 + 1);
  v36 = *(&v72 + 1);
  v37 = v72;
  v38 = v73;
  v12 = *(v2 + 40);
  v11 = *(v2 + 48);
  v14 = *(v2 + 56);
  v13 = *(v2 + 64);
  v15 = *(v2 + 160);
  v16 = *(v2 + 24);
  v17 = *(v2 + 32);
  if (v5)
  {
    outlined init with copy of ScalePulseModifier<Int>(v2, v41);
    if (one-time initialization token for sharedGraph != -1)
    {
      swift_once();
    }

    v18 = AGGraphGetCounter();
    v19 = *v5;
    if (!v18)
    {
      (*(v19 + 120))(v68);
      outlined destroy of ScalePulseModifier<Int>(v2);
      goto LABEL_16;
    }

    (*(v19 + 104))(1);
    outlined destroy of ScalePulseModifier<Int>(v2);
  }

  v68[0] = v74;
  v68[1] = v75;
  v69 = v76;
LABEL_16:
  v20 = v15 * *(&v69 + 1);
  v21 = swift_allocObject();
  v22 = *(v2 + 208);
  v23 = *(v2 + 224);
  v24 = *(v2 + 176);
  *(v21 + 208) = *(v2 + 192);
  *(v21 + 224) = v22;
  *(v21 + 240) = v23;
  v25 = *(v2 + 144);
  v26 = *(v2 + 160);
  v27 = *(v2 + 112);
  *(v21 + 144) = *(v2 + 128);
  *(v21 + 160) = v25;
  *(v21 + 176) = v26;
  *(v21 + 192) = v24;
  v28 = *(v2 + 80);
  v29 = *(v2 + 96);
  v30 = *(v2 + 48);
  *(v21 + 80) = *(v2 + 64);
  *(v21 + 96) = v28;
  *(v21 + 112) = v29;
  *(v21 + 128) = v27;
  v31 = *(v2 + 16);
  v32 = *(v2 + 32);
  *(v21 + 16) = *v2;
  *(v21 + 32) = v31;
  *(v21 + 256) = *(v2 + 240);
  *(v21 + 48) = v32;
  *(v21 + 64) = v30;
  v33 = *v2;
  v34 = *(v2 + 8);
  __src[0] = v10;
  __src[1] = 0x3FF0000000000000;
  __src[2] = v16;
  __src[3] = v17;
  __src[4] = sqrt(v12);
  __src[5] = 0x3FF0000000000000;
  __src[6] = v14;
  __src[7] = 0;
  __src[8] = v36;
  __src[9] = 0x3FF0000000000000;
  __src[10] = v16;
  __src[11] = v17;
  __src[12] = __src[4];
  __src[13] = 0x3FF0000000000000;
  __src[14] = v14;
  *&__src[15] = xmmword_18DDAB500;
  __src[17] = v37;
  __src[18] = v16;
  __src[19] = v17;
  __src[20] = 0x3FF0000000000000;
  __src[21] = sqrt(v11);
  __src[22] = 0;
  __src[23] = v13;
  __src[24] = 0x3FF0000000000000;
  __src[25] = v38;
  __src[26] = v16;
  __src[27] = v17;
  __src[28] = 0x3FF0000000000000;
  __src[29] = __src[21];
  __src[30] = 0;
  __src[31] = v13;
  *&__src[32] = v20;
  LOBYTE(__src[33]) = 0;
  __src[34] = v33;
  __src[35] = v34;
  __src[36] = 0;
  __src[37] = &async function pointer to partial apply for specialized implicit closure #2 in implicit closure #1 in ScalePulseModifier.body(content:);
  __src[38] = v21;
  __src[40] = 0;
  __src[39] = 0;
  v41[0] = v10;
  v41[1] = 0x3FF0000000000000;
  v41[2] = v16;
  v41[3] = v17;
  v41[4] = __src[4];
  v41[5] = 0x3FF0000000000000;
  v41[6] = v14;
  v41[7] = 0;
  v41[8] = v36;
  v41[9] = 0x3FF0000000000000;
  v41[10] = v16;
  v41[11] = v17;
  v41[12] = __src[4];
  v41[13] = 0x3FF0000000000000;
  v41[14] = v14;
  v42 = xmmword_18DDAB500;
  v43 = v37;
  v44 = v16;
  v45 = v17;
  v46 = 0x3FF0000000000000;
  v47 = __src[21];
  v48 = 0;
  v49 = v13;
  v50 = 0x3FF0000000000000;
  v51 = v38;
  v52 = v16;
  v53 = v17;
  v54 = 0x3FF0000000000000;
  v55 = __src[21];
  v56 = 0;
  v57 = v13;
  v58 = v20;
  v59 = 0;
  *v60 = *v70;
  *&v60[3] = *&v70[3];
  v61 = v33;
  v62 = v34;
  v63 = 0;
  v64 = &async function pointer to partial apply for specialized implicit closure #2 in implicit closure #1 in ScalePulseModifier.body(content:);
  v65 = v21;
  v66 = 0;
  v67 = 0;
  outlined init with copy of ScalePulseModifier<Int>(v2, v39);
  outlined init with copy of ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>(__src, v39, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>);
  outlined destroy of _VariadicView.Tree<_LayoutRoot<GeometryReaderLayout>, ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>(v41, type metadata accessor for ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<ScalePulseModifier<Int>>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, ScalePulseEffect>, _BlurEffect>, ScheduledAnimationModifier<Int>>);
  return memcpy(a1, __src, 0x148uLL);
}

uint64_t specialized ScalePulseModifier.animate()()
{
  *(v1 + 696) = v0;
  v2 = type metadata accessor for ContinuousClock();
  *(v1 + 704) = v2;
  *(v1 + 712) = *(v2 - 8);
  *(v1 + 720) = swift_task_alloc();
  *(v1 + 728) = swift_task_alloc();
  v3 = *(v0 + 192);
  v4 = *(v0 + 208);
  *(v1 + 512) = v3;
  *(v1 + 528) = v4;
  v5 = *(v0 + 224);
  *(v1 + 544) = v5;
  v6 = *(v0 + 240);
  *(v1 + 736) = v6;
  *(v1 + 208) = v3;
  *(v1 + 224) = v4;
  *(v1 + 240) = v5;
  *(v1 + 256) = v6;
  v7 = *(v0 + 144);
  *(v1 + 144) = *(v0 + 128);
  *(v1 + 160) = v7;
  v8 = *(v0 + 176);
  *(v1 + 176) = *(v0 + 160);
  *(v1 + 192) = v8;
  v9 = *(v0 + 80);
  *(v1 + 80) = *(v0 + 64);
  *(v1 + 96) = v9;
  v10 = *(v0 + 112);
  *(v1 + 112) = *(v0 + 96);
  *(v1 + 128) = v10;
  v11 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v11;
  v12 = *(v0 + 48);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 64) = v12;
  type metadata accessor for MainActor();
  *(v1 + 744) = static MainActor.shared.getter();
  v14 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 752) = v14;
  *(v1 + 760) = v13;

  return MEMORY[0x1EEE6DFA0](specialized ScalePulseModifier.animate(), v14, v13);
}

{
  v45 = v0;
  v1 = *(v0 + 736);
  if (!v1)
  {
    goto LABEL_6;
  }

  outlined init with copy of ScalePulseModifier<Int>(*(v0 + 696), v0 + 264);
  if (one-time initialization token for sharedGraph != -1)
  {
    swift_once();
  }

  Counter = AGGraphGetCounter();
  v3 = *v1;
  v4 = *(v0 + 696);
  if (Counter)
  {
    (*(v3 + 104))(1);
    outlined destroy of ScalePulseModifier<Int>(v4);
LABEL_6:
    v5 = *(v0 + 528);
    *(v0 + 560) = *(v0 + 512);
    *(v0 + 576) = v5;
    *(v0 + 592) = *(v0 + 544);
    goto LABEL_8;
  }

  (*(v3 + 120))();
  outlined destroy of ScalePulseModifier<Int>(v4);
LABEL_8:
  v6 = *(v0 + 568);
  v7 = *(v0 + 576);
  v8 = *(v0 + 592);
  *(v0 + 608) = (*(v0 + 560) & 1) == 0;
  *(v0 + 616) = v6;
  *(v0 + 624) = v7;
  *(v0 + 640) = v8;
  if (v1)
  {
    (*(**(v0 + 736) + 128))(v0 + 608, 0);
  }

  v9 = v0 + 16;
  v10 = *(v0 + 696);
  v12 = *(v10 + 72);
  v11 = *(v10 + 80);
  *(v0 + 768) = *(v10 + 96);
  *(v0 + 776) = *(v10 + 104);
  *(v0 + 784) = *(v10 + 120);
  *(v0 + 792) = *(v10 + 128);
  *(v0 + 800) = *(v10 + 136);
  *(v0 + 808) = *(v10 + 152);
  v13 = *(v10 + 168);
  *(v0 + 816) = v13;
  v14 = *(v10 + 176);
  *(v0 + 824) = v14;
  v15 = v11 * v11;
  v16 = v11 * 0.5;
  v17 = v12 * v12;
  if (v12 >= 0.0)
  {
    v18 = v16 * (-6.28318531 / sqrt(v17 + v15)) / 3.14159265;
    v19 = 1.0;
  }

  else
  {
    v18 = 1.0 / (v16 * (6.28318531 / sqrt(v15 - v17)) / 3.14159265);
    v19 = -1.0;
  }

  v20 = v18 + v19;
  v21 = 6.28318531 / sqrt(v15 + v12 * (v12 * v19));
  if (v20 <= -1.0)
  {
    v22 = INFINITY;
  }

  else if (v20 >= 0.0)
  {
    v22 = 1.0;
    if (v20 != 0.0)
    {
      if (v20 <= 1.0)
      {
        v23 = v20;
      }

      else
      {
        v23 = 1.0;
      }

      v22 = 1.0 - v23;
    }
  }

  else
  {
    v22 = 1.0 / (v20 + 1.0);
  }

  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for InternalAnimationBox<FluidSpringAnimation>, lazy protocol witness table accessor for type FluidSpringAnimation and conformance FluidSpringAnimation, &type metadata for FluidSpringAnimation, type metadata accessor for InternalAnimationBox);
  *(v0 + 832) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = v21;
  *(v25 + 24) = v22;
  *(v25 + 32) = 0;
  *(swift_task_alloc() + 16) = v9;
  v44[0] = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v44, v25);

  specialized closure #1 in withTransaction<A>(_:_:)(v26, partial apply for specialized closure #1 in ScalePulseModifier.animate());

  v27 = *(*(v0 + 696) + 16);
  *(v0 + 896) = v27;

  if (v27)
  {
    v28 = v14 * v14;
    v29 = v14 * 0.5;
    v30 = v13 * v13;
    if (v13 >= 0.0)
    {
      v31 = v29 * (-6.28318531 / sqrt(v30 + v28)) / 3.14159265;
      v32 = 1.0;
    }

    else
    {
      v31 = 1.0 / (v29 * (6.28318531 / sqrt(v28 - v30)) / 3.14159265);
      v32 = -1.0;
    }

    v33 = v31 + v32;
    v34 = 6.28318531 / sqrt(v28 + v13 * (v13 * v32));
    if (v33 <= -1.0)
    {
      v35 = INFINITY;
    }

    else if (v33 >= 0.0)
    {
      v35 = 1.0;
      if (v33 != 0.0)
      {
        if (v33 <= 1.0)
        {
          v36 = v33;
        }

        else
        {
          v36 = 1.0;
        }

        v35 = 1.0 - v36;
      }
    }

    else
    {
      v35 = 1.0 / (v33 + 1.0);
    }

    v37 = swift_allocObject();
    *(v37 + 16) = v34;
    *(v37 + 24) = v35;
    *(v37 + 32) = 0;
    *(swift_task_alloc() + 16) = v9;
    v44[0] = 0;

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v44, v37);

    specialized closure #1 in withTransaction<A>(_:_:)(v38, partial apply for specialized closure #2 in ScalePulseModifier.animate());
  }

  v39 = static Duration.seconds(_:)();
  v41 = v40;
  static Clock<>.continuous.getter();
  v42 = swift_task_alloc();
  *(v0 + 840) = v42;
  *v42 = v0;
  v42[1] = specialized ScalePulseModifier.animate();

  return specialized Clock.sleep(for:tolerance:)(v39, v41, 0, 0, 1);
}

{
  v21 = v0;
  v1 = *(v0 + 848);
  *(v0 + 872) = *(v0 + 856);
  v2 = *(v0 + 776);
  v3 = *(v0 + 768);
  v4 = v2 * v2;
  v5 = v2 * 0.5;
  v6 = v3 * v3;
  if (v3 >= 0.0)
  {
    v7 = v5 * (-6.28318531 / sqrt(v4 + v6)) / 3.14159265;
    v8 = 1.0;
  }

  else
  {
    v7 = 1.0 / (v5 * (6.28318531 / sqrt(v4 - v6)) / 3.14159265);
    v8 = -1.0;
  }

  v9 = v7 + v8;
  v10 = 6.28318531 / sqrt(v4 + v3 * (v3 * v8));
  if (v9 <= -1.0)
  {
    v11 = INFINITY;
  }

  else if (v9 >= 0.0)
  {
    v11 = 1.0;
    if (v9 != 0.0)
    {
      if (v9 <= 1.0)
      {
        v12 = v9;
      }

      else
      {
        v12 = 1.0;
      }

      v11 = 1.0 - v12;
    }
  }

  else
  {
    v11 = 1.0 / (v9 + 1.0);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  *(v13 + 32) = 0;
  *(swift_task_alloc() + 16) = v0 + 16;
  v20 = 0;

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v20, v13);
  if (!v1)
  {

    specialized closure #1 in withTransaction<A>(_:_:)(v15, partial apply for specialized closure #3 in ScalePulseModifier.animate());

    v16 = static Duration.seconds(_:)();
    v18 = v17;
    static Clock<>.continuous.getter();
    v19 = swift_task_alloc();
    *(v0 + 880) = v19;
    *v19 = v0;
    v19[1] = specialized ScalePulseModifier.animate();

    return specialized Clock.sleep(for:tolerance:)(v16, v18, 0, 0, 1);
  }

  return result;
}

{
  v20 = v0;
  *(v0 + 872) = *(v0 + 864);
  v1 = *(v0 + 776);
  v2 = *(v0 + 768);
  v3 = v1 * v1;
  v4 = v1 * 0.5;
  v5 = v2 * v2;
  if (v2 >= 0.0)
  {
    v6 = v4 * (-6.28318531 / sqrt(v3 + v5)) / 3.14159265;
    v7 = 1.0;
  }

  else
  {
    v6 = 1.0 / (v4 * (6.28318531 / sqrt(v3 - v5)) / 3.14159265);
    v7 = -1.0;
  }

  v8 = v6 + v7;
  v9 = 6.28318531 / sqrt(v3 + v2 * (v2 * v7));
  if (v8 <= -1.0)
  {
    v10 = INFINITY;
  }

  else if (v8 >= 0.0)
  {
    v10 = 1.0;
    if (v8 != 0.0)
    {
      if (v8 <= 1.0)
      {
        v11 = v8;
      }

      else
      {
        v11 = 1.0;
      }

      v10 = 1.0 - v11;
    }
  }

  else
  {
    v10 = 1.0 / (v8 + 1.0);
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v10;
  *(v12 + 32) = 0;
  *(swift_task_alloc() + 16) = v0 + 16;
  v19 = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(&v19, v12);

  specialized closure #1 in withTransaction<A>(_:_:)(v13, partial apply for specialized closure #3 in ScalePulseModifier.animate());

  v14 = static Duration.seconds(_:)();
  v16 = v15;
  static Clock<>.continuous.getter();
  v17 = swift_task_alloc();
  *(v0 + 880) = v17;
  *v17 = v0;
  v17[1] = specialized ScalePulseModifier.animate();

  return specialized Clock.sleep(for:tolerance:)(v14, v16, 0, 0, 1);
}

{
  v33 = v0;
  v1 = v0 + 16;
  v2 = *(v0 + 888);
  v3 = *(v0 + 800);
  v4 = *(v0 + 792);

  v5 = v3 * v3;
  v6 = v3 * 0.5;
  v7 = v4 * v4;
  if (v4 >= 0.0)
  {
    v8 = v6 * (-6.28318531 / sqrt(v5 + v7)) / 3.14159265;
    v9 = 1.0;
  }

  else
  {
    v8 = 1.0 / (v6 * (6.28318531 / sqrt(v5 - v7)) / 3.14159265);
    v9 = -1.0;
  }

  v10 = v8 + v9;
  v11 = 6.28318531 / sqrt(v5 + *(v0 + 792) * (v9 * *(v0 + 792)));
  if (v10 <= -1.0)
  {
    v12 = INFINITY;
  }

  else if (v10 >= 0.0)
  {
    v12 = 1.0;
    if (v10 != 0.0)
    {
      if (v10 <= 1.0)
      {
        v13 = v10;
      }

      else
      {
        v13 = 1.0;
      }

      v12 = 1.0 - v13;
    }
  }

  else
  {
    v12 = 1.0 / (v10 + 1.0);
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v12;
  *(v14 + 32) = 0;
  *(swift_task_alloc() + 16) = v1;
  v32[0] = 0;

  result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v32, v14);
  if (!v2)
  {

    specialized closure #1 in withTransaction<A>(_:_:)(v16, partial apply for specialized closure #4 in ScalePulseModifier.animate());
    v17 = *(v0 + 896);

    if (v17)
    {
      v18 = *(v0 + 824);
      v19 = *(v0 + 816);
      v20 = v18 * v18;
      v21 = v18 * 0.5;
      v22 = v19 * v19;
      if (v19 >= 0.0)
      {
        v23 = v21 * (-6.28318531 / sqrt(v20 + v22)) / 3.14159265;
        v24 = 1.0;
      }

      else
      {
        v23 = 1.0 / (v21 * (6.28318531 / sqrt(v20 - v22)) / 3.14159265);
        v24 = -1.0;
      }

      v25 = v23 + v24;
      v26 = 6.28318531 / sqrt(v20 + v19 * (v19 * v24));
      if (v25 <= -1.0)
      {
        v27 = INFINITY;
      }

      else if (v25 >= 0.0)
      {
        v27 = 1.0;
        if (v25 != 0.0)
        {
          if (v25 <= 1.0)
          {
            v28 = v25;
          }

          else
          {
            v28 = 1.0;
          }

          v27 = 1.0 - v28;
        }
      }

      else
      {
        v27 = 1.0 / (v25 + 1.0);
      }

      v29 = swift_allocObject();
      *(v29 + 16) = v26;
      *(v29 + 24) = v27;
      *(v29 + 32) = 0;
      *(swift_task_alloc() + 16) = v1;
      v32[0] = 0;

      _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v32, v29);

      specialized closure #1 in withTransaction<A>(_:_:)(v30, partial apply for specialized closure #5 in ScalePulseModifier.animate());
    }

    v31 = *(v0 + 8);

    return v31();
  }

  return result;
}

{
  v32 = v0;
  v1 = v0 + 16;
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);

  v4 = v2 * v2;
  v5 = v2 * 0.5;
  v6 = v3 * v3;
  if (v3 >= 0.0)
  {
    v7 = v5 * (-6.28318531 / sqrt(v4 + v6)) / 3.14159265;
    v8 = 1.0;
  }

  else
  {
    v7 = 1.0 / (v5 * (6.28318531 / sqrt(v4 - v6)) / 3.14159265);
    v8 = -1.0;
  }

  v9 = v7 + v8;
  v10 = 6.28318531 / sqrt(v4 + *(v0 + 792) * (v8 * *(v0 + 792)));
  if (v9 <= -1.0)
  {
    v11 = INFINITY;
  }

  else if (v9 >= 0.0)
  {
    v11 = 1.0;
    if (v9 != 0.0)
    {
      if (v9 <= 1.0)
      {
        v12 = v9;
      }

      else
      {
        v12 = 1.0;
      }

      v11 = 1.0 - v12;
    }
  }

  else
  {
    v11 = 1.0 / (v9 + 1.0);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  *(v13 + 24) = v11;
  *(v13 + 32) = 0;
  *(swift_task_alloc() + 16) = v1;
  v31[0] = 0;

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v31, v13);

  specialized closure #1 in withTransaction<A>(_:_:)(v14, partial apply for specialized closure #4 in ScalePulseModifier.animate());
  v15 = *(v0 + 896);

  if (v15)
  {
    v16 = *(v0 + 824);
    v17 = *(v0 + 816);
    v18 = v16 * v16;
    v19 = v16 * 0.5;
    v20 = v17 * v17;
    if (v17 >= 0.0)
    {
      v21 = v19 * (-6.28318531 / sqrt(v18 + v20)) / 3.14159265;
      v22 = 1.0;
    }

    else
    {
      v21 = 1.0 / (v19 * (6.28318531 / sqrt(v18 - v20)) / 3.14159265);
      v22 = -1.0;
    }

    v23 = v21 + v22;
    v24 = 6.28318531 / sqrt(v18 + v17 * (v17 * v22));
    if (v23 <= -1.0)
    {
      v25 = INFINITY;
    }

    else if (v23 >= 0.0)
    {
      v25 = 1.0;
      if (v23 != 0.0)
      {
        if (v23 <= 1.0)
        {
          v26 = v23;
        }

        else
        {
          v26 = 1.0;
        }

        v25 = 1.0 - v26;
      }
    }

    else
    {
      v25 = 1.0 / (v23 + 1.0);
    }

    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    *(v27 + 24) = v25;
    *(v27 + 32) = 0;
    *(swift_task_alloc() + 16) = v1;
    v31[0] = 0;

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011TransactioncF033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationF033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt2g5(v31, v27);

    specialized closure #1 in withTransaction<A>(_:_:)(v28, partial apply for specialized closure #5 in ScalePulseModifier.animate());
  }

  v29 = *(v0 + 8);

  return v29();
}

uint64_t specialized ScalePulseModifier.animate()(__n128 a1)
{
  v3 = *v2;
  v3[106] = v1;

  v4 = v3[91];
  v5 = v3[89];
  v6 = v3[88];
  if (v1)
  {

    v7 = *(v5 + 8);
    v3[108] = v7;
    v7(v4, v6);
    v8 = v3[95];
    v9 = v3[94];
    v10 = specialized ScalePulseModifier.animate();
  }

  else
  {
    v11 = *(v5 + 8);
    v3[107] = v11;
    v11(v4, v6);
    v8 = v3[95];
    v9 = v3[94];
    v10 = specialized ScalePulseModifier.animate();
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, v8);
}

{
  v3 = *v2;
  v3[111] = v1;

  v4 = v3[109];
  v5 = v3[90];
  v6 = v3[88];
  if (v1)
  {

    v4(v5, v6);
    v7 = v3[95];
    v8 = v3[94];
    v9 = specialized ScalePulseModifier.animate();
  }

  else
  {
    v4(v5, v6);
    v7 = v3[95];
    v8 = v3[94];
    v9 = specialized ScalePulseModifier.animate();
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t specialized closure #1 in ScalePulseModifier.animate()(uint64_t a1)
{
  v2 = *(a1 + 208);
  v21 = *(a1 + 192);
  v22 = v2;
  v23 = *(a1 + 224);
  v3 = *(a1 + 240);
  if (v3)
  {
    outlined init with copy of ScalePulseModifier<Int>(a1, v18);
    if (one-time initialization token for sharedGraph != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v5 = *v3;
    if (Counter)
    {
      (*(v5 + 104))(1);
      outlined destroy of ScalePulseModifier<Int>(a1);
      *v20 = v21;
      *&v20[16] = v22;
      *&v20[32] = v23;
      if (v21)
      {
LABEL_6:
        outlined init with copy of ScalePulseModifier<Int>(a1, v18);
        if (one-time initialization token for sharedGraph != -1)
        {
          swift_once();
        }

        v6 = AGGraphGetCounter();
        v7 = *v3;
        if (!v6)
        {
          (*(v7 + 120))(v20);
          outlined destroy of ScalePulseModifier<Int>(a1);
LABEL_20:
          v18[0] = v20[0];
          *v19 = 0x3FF0000000000000;
          *&v19[8] = *&v20[16];
          *&v19[24] = *&v20[32];
          if (v3)
          {
            (*(*v3 + 128))(v18, 0);
            outlined init with copy of ScalePulseModifier<Int>(a1, v18);
            if (one-time initialization token for sharedGraph != -1)
            {
              swift_once();
            }

            v13 = AGGraphGetCounter();
            v14 = *v3;
            if (!v13)
            {
              (*(v14 + 120))(v20);
LABEL_34:
              v18[0] = v20[0];
              *v19 = *&v20[8];
              *&v19[8] = 0x3FF0000000000000;
              *&v19[16] = *&v20[24];
              *&v19[32] = *&v20[40];
              if (!v3)
              {
                return outlined destroy of ScalePulseModifier<Int>(a1);
              }

              goto LABEL_38;
            }

            (*(v14 + 104))(1);
          }

          *v20 = v21;
          *&v20[16] = v22;
          *&v20[32] = v23;
          goto LABEL_34;
        }

        (*(v7 + 104))(1);
        outlined destroy of ScalePulseModifier<Int>(a1);
        *v20 = v21;
        *&v20[16] = v22;
        v8 = v23;
LABEL_12:
        *&v20[32] = v8;
        goto LABEL_20;
      }
    }

    else
    {
      (*(v5 + 120))(v20);
      outlined destroy of ScalePulseModifier<Int>(a1);
      if (v20[0])
      {
        goto LABEL_6;
      }
    }

    outlined init with copy of ScalePulseModifier<Int>(a1, v18);
    if (one-time initialization token for sharedGraph != -1)
    {
      swift_once();
    }

    v10 = AGGraphGetCounter();
    v11 = *v3;
    if (v10)
    {
      (*(v11 + 104))(1);
      outlined destroy of ScalePulseModifier<Int>(a1);
      *v20 = v21;
      *&v20[16] = v22;
      *&v20[32] = v23;
    }

    else
    {
      (*(v11 + 120))(v20);
      outlined destroy of ScalePulseModifier<Int>(a1);
    }
  }

  else
  {
    *v20 = *(a1 + 192);
    if (v20[0])
    {
      v9 = *(a1 + 208);
      *v20 = *(a1 + 192);
      *&v20[16] = v9;
      v8 = *(a1 + 224);
      goto LABEL_12;
    }

    v12 = *(a1 + 208);
    *v20 = *(a1 + 192);
    *&v20[16] = v12;
    *&v20[32] = *(a1 + 224);
  }

  v18[0] = v20[0];
  *v19 = *&v20[8];
  *&v19[16] = 0x3FF0000000000000;
  *&v19[24] = *&v20[32];
  if (!v3)
  {
    goto LABEL_32;
  }

  (*(*v3 + 128))(v18, 0);
  outlined init with copy of ScalePulseModifier<Int>(a1, v18);
  if (one-time initialization token for sharedGraph != -1)
  {
    swift_once();
  }

  v15 = AGGraphGetCounter();
  v16 = *v3;
  if (v15)
  {
    (*(v16 + 104))(1);
LABEL_32:
    *v20 = v21;
    *&v20[16] = v22;
    *&v20[32] = v23;
    goto LABEL_37;
  }

  (*(v16 + 120))(v20);
LABEL_37:
  v18[0] = v20[0];
  *v19 = *&v20[8];
  *&v19[16] = *&v20[24];
  *&v19[24] = 0x3FF0000000000000;
  *&v19[32] = *&v20[40];
  if (v3)
  {
LABEL_38:
    (*(*v3 + 128))(v18, 0);
  }

  return outlined destroy of ScalePulseModifier<Int>(a1);
}

uint64_t specialized closure #3 in ScalePulseModifier.animate()(uint64_t a1)
{
  v2 = *(a1 + 208);
  v19 = *(a1 + 192);
  v20 = v2;
  v21 = *(a1 + 224);
  v3 = *(a1 + 240);
  if (v3)
  {
    outlined init with copy of ScalePulseModifier<Int>(a1, v14);
    if (one-time initialization token for sharedGraph != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v5 = *v3;
    if (Counter)
    {
      (*(v5 + 104))(1);
      outlined destroy of ScalePulseModifier<Int>(a1);
      *v18 = v19;
      *&v18[16] = v20;
      *&v18[32] = v21;
      if (v19)
      {
LABEL_6:
        outlined init with copy of ScalePulseModifier<Int>(a1, v14);
        if (one-time initialization token for sharedGraph != -1)
        {
          swift_once();
        }

        v6 = AGGraphGetCounter();
        v7 = *v3;
        if (!v6)
        {
          (*(v7 + 120))(v18);
LABEL_20:
          v14[0] = v18[0];
          v15 = *&v18[8];
          v16 = *&v18[24];
          v17 = *&v18[40];
          if (!v3)
          {
            return outlined destroy of ScalePulseModifier<Int>(a1);
          }

          goto LABEL_24;
        }

        (*(v7 + 104))(1);
        *v18 = v19;
        *&v18[16] = v20;
        v8 = v21;
LABEL_12:
        *&v18[32] = v8;
        goto LABEL_20;
      }
    }

    else
    {
      (*(v5 + 120))(v18);
      outlined destroy of ScalePulseModifier<Int>(a1);
      if (v18[0])
      {
        goto LABEL_6;
      }
    }

    outlined init with copy of ScalePulseModifier<Int>(a1, v14);
    if (one-time initialization token for sharedGraph != -1)
    {
      swift_once();
    }

    v10 = AGGraphGetCounter();
    v11 = *v3;
    if (v10)
    {
      (*(v11 + 104))(1);
      *v18 = v19;
      *&v18[16] = v20;
      *&v18[32] = v21;
    }

    else
    {
      (*(v11 + 120))(v18);
    }
  }

  else
  {
    *v18 = *(a1 + 192);
    if (v18[0])
    {
      v9 = *(a1 + 208);
      *v18 = *(a1 + 192);
      *&v18[16] = v9;
      v8 = *(a1 + 224);
      goto LABEL_12;
    }

    v12 = *(a1 + 208);
    *v18 = *(a1 + 192);
    *&v18[16] = v12;
    *&v18[32] = *(a1 + 224);
  }

  v14[0] = v18[0];
  v15 = *&v18[8];
  v16 = *&v18[24];
  v17 = *&v18[40];
  if (v3)
  {
LABEL_24:
    (*(*v3 + 128))(v14, 0);
  }

  return outlined destroy of ScalePulseModifier<Int>(a1);
}

uint64_t specialized closure #4 in ScalePulseModifier.animate()(uint64_t a1)
{
  v2 = *(a1 + 208);
  v19 = *(a1 + 192);
  v20 = v2;
  v21 = *(a1 + 224);
  v3 = *(a1 + 240);
  if (v3)
  {
    outlined init with copy of ScalePulseModifier<Int>(a1, v14);
    if (one-time initialization token for sharedGraph != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v5 = *v3;
    if (Counter)
    {
      (*(v5 + 104))(1);
      outlined destroy of ScalePulseModifier<Int>(a1);
      v17[0] = v19;
      v17[1] = v20;
      v18 = v21;
      if (v19)
      {
LABEL_6:
        outlined init with copy of ScalePulseModifier<Int>(a1, v14);
        if (one-time initialization token for sharedGraph != -1)
        {
          swift_once();
        }

        v6 = AGGraphGetCounter();
        v7 = *v3;
        if (!v6)
        {
          (*(v7 + 120))(v17);
LABEL_20:
          v14[0] = v17[0];
          *v15 = *(v17 + 8);
          *&v15[16] = 0;
          v16 = v18;
          if (!v3)
          {
            return outlined destroy of ScalePulseModifier<Int>(a1);
          }

          goto LABEL_24;
        }

        (*(v7 + 104))(1);
        v17[0] = v19;
        v17[1] = v20;
        v8 = v21;
LABEL_12:
        v18 = v8;
        goto LABEL_20;
      }
    }

    else
    {
      (*(v5 + 120))(v17);
      outlined destroy of ScalePulseModifier<Int>(a1);
      if (v17[0])
      {
        goto LABEL_6;
      }
    }

    outlined init with copy of ScalePulseModifier<Int>(a1, v14);
    if (one-time initialization token for sharedGraph != -1)
    {
      swift_once();
    }

    v10 = AGGraphGetCounter();
    v11 = *v3;
    if (v10)
    {
      (*(v11 + 104))(1);
      v17[0] = v19;
      v17[1] = v20;
      v18 = v21;
    }

    else
    {
      (*(v11 + 120))(v17);
    }
  }

  else
  {
    v17[0] = *(a1 + 192);
    if (v17[0])
    {
      v9 = *(a1 + 208);
      v17[0] = *(a1 + 192);
      v17[1] = v9;
      v8 = *(a1 + 224);
      goto LABEL_12;
    }

    v12 = *(a1 + 208);
    v17[0] = *(a1 + 192);
    v17[1] = v12;
    v18 = *(a1 + 224);
  }

  v14[0] = v17[0];
  *v15 = 0;
  *&v15[8] = v17[1];
  v16 = v18;
  if (v3)
  {
LABEL_24:
    (*(*v3 + 128))(v14, 0);
  }

  return outlined destroy of ScalePulseModifier<Int>(a1);
}

uint64_t specialized closure #2 in ScalePulseModifier.animate()(uint64_t result, double a2)
{
  v3 = result;
  v4 = *(result + 208);
  v12 = *(result + 192);
  v13 = v4;
  v14 = *(result + 224);
  v5 = *(result + 240);
  if (v5)
  {
    outlined init with copy of ScalePulseModifier<Int>(result, &v9);
    if (one-time initialization token for sharedGraph != -1)
    {
      swift_once();
    }

    Counter = AGGraphGetCounter();
    v7 = *v5;
    if (Counter)
    {
      (*(v7 + 104))(1);
      result = outlined destroy of ScalePulseModifier<Int>(v3);
      v9 = v12;
      v10 = v13;
      v11 = v14;
    }

    else
    {
      (*(v7 + 120))(&v9);
      result = outlined destroy of ScalePulseModifier<Int>(v3);
    }
  }

  else
  {
    v8 = *(result + 208);
    v9 = *(result + 192);
    v10 = v8;
    v11 = *(result + 224);
  }

  *(&v11 + 1) = a2;
  if (v5)
  {
    return (*(*v5 + 128))(&v9, 0);
  }

  return result;
}

uint64_t specialized SingleTapGesture.body.getter@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 128) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 2;
  *(a1 + 80) = xmmword_18DDAB510;
  *(a1 + 96) = 0u;
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  *(a1 + 144) = specialized closure #1 in Gesture.gated<A>(by:);
  *(a1 + 152) = 0;
  *a1 = 0;
  *(a1 + 8) = partial apply for specialized closure #1 in Gesture.discrete(_:);
  *(a1 + 16) = v2;
  *(a1 + 24) = 3;
  *(a1 + 32) = 0;
  *(a1 + 40) = xmmword_18DDAB520;
  *(a1 + 56) = 0;
  *(a1 + 64) = specialized closure #1 in Gesture.gated<A>(by:);
  *(a1 + 72) = 0;
  result = swift_allocObject();
  *(result + 16) = 1;
  *(result + 24) = closure #1 in SingleTapGesture.body.getter;
  *(result + 32) = 0;
  *(a1 + 160) = partial apply for specialized closure #1 in Gesture.eventFilter<A>(_:allowOtherTypes:_:);
  *(a1 + 168) = result;
  return result;
}

uint64_t _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E69E85F0];
  v9 = MEMORY[0x1E69E6720];
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v23 - v11;
  outlined init with copy of ObservationTracking._AccessList?(a3, v23 - v11, &lazy cache variable for type metadata for TaskPriority?, v8, v9);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  LODWORD(v8) = (*(v14 + 48))(v12, 1, v13);

  if (v8 == 1)
  {
    outlined destroy of ObservationTracking._AccessList?(v12, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      outlined destroy of ObservationTracking._AccessList?(a3, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of ObservationTracking._AccessList?(a3, &lazy cache variable for type metadata for TaskPriority?, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720], type metadata accessor for ObservationTracking._AccessList?);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void specialized ForEachState.invalidateViewCounts()()
{
  v1 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 256);
  if (isUniquelyReferenced_nonNull_native)
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(v3 + 16));
  }

  else
  {
    *(v1 + 256) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(0, *(v3 + 24) >> 1);
  }

  *(v1 + 264) = 2;
}

void specialized SizeThatFitsRule.updateValue()()
{
  v104 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 56);
  if (!*(v1 + 16))
  {
    type metadata accessor for [_ProposedSize : CGSize](0);
    OutputValue = AGGraphGetOutputValue();
    if (OutputValue && !*(*OutputValue + 16))
    {
      return;
    }

    goto LABEL_12;
  }

  WeakValue = AGGraphGetWeakValue();
  if (!WeakValue)
  {
LABEL_11:
    type metadata accessor for [_ProposedSize : CGSize](0);
    if (AGGraphGetOutputValue())
    {
      return;
    }

LABEL_12:
    *&v94 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI13_ProposedSizeV_So6CGSizeVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    AGGraphSetOutputValue();
    goto LABEL_13;
  }

  v92 = *WeakValue;

  v3 = AGGraphGetWeakValue();
  if (!v3 || (v4 = *v3, (v5 = AGGraphGetWeakValue()) == 0))
  {

    goto LABEL_11;
  }

  v7 = *v5;
  v6 = v5[1];

  v82 = v6;
  outlined copy of SafeAreaInsets.OptionalValue?(v6);
  AGGraphClearUpdate();
  outlined init with copy of SizeThatFitsRule<SizeThatFitsMeasurer>(v0, &v94);
  v8 = AGGraphGetWeakValue();
  if (v8)
  {
    v81 = *v8;
  }

  else
  {
    v81 = 1;
  }

  outlined destroy of SizeThatFitsRule<SizeThatFitsMeasurer>(&v94);
  AGGraphSetUpdate();
  v10 = *(v7 + 16);
  if (!v10)
  {
    v12 = 0uLL;
    v13 = 0uLL;
    goto LABEL_25;
  }

  if (v10 == 1)
  {
    v11 = 0;
    v12 = 0uLL;
    v13 = 0uLL;
LABEL_23:
    v20 = v10 - v11;
    v21 = (v7 + 112 * v11 + 40);
    do
    {
      v22 = *v21;
      v23 = v21[1];
      v21 += 7;
      v13 = vaddq_f64(v13, v23);
      v12 = vaddq_f64(v12, v22);
      --v20;
    }

    while (v20);
    goto LABEL_25;
  }

  v11 = v10 & 0x7FFFFFFFFFFFFFFELL;
  v14 = (v7 + 152);
  v12 = 0uLL;
  v15 = v10 & 0x7FFFFFFFFFFFFFFELL;
  v13 = 0uLL;
  do
  {
    v17 = v14[-7];
    v16 = v14[-6];
    v18 = *v14;
    v19 = v14[1];
    v14 += 14;
    v13 = vaddq_f64(vaddq_f64(v13, v16), v19);
    v12 = vaddq_f64(vaddq_f64(v12, v17), v18);
    v15 -= 2;
  }

  while (v15);
  if (v10 != v11)
  {
    goto LABEL_23;
  }

LABEL_25:
  v90 = v12.f64[0];
  v87 = v13.f64[0];
  if (v4)
  {
    v24 = v12.f64[1];
  }

  else
  {
    v24 = v13.f64[1];
  }

  if (v4)
  {
    v25 = v13.f64[1];
  }

  else
  {
    v25 = v12.f64[1];
  }

  if (v12.f64[1] == v13.f64[1])
  {
    v26 = v13.f64[1];
  }

  else
  {
    v26 = v24;
  }

  if (v12.f64[1] == v13.f64[1])
  {
    v27 = v12.f64[1];
  }

  else
  {
    v27 = v25;
  }

  type metadata accessor for [_ProposedSize : CGSize](0);
  v28 = AGGraphGetOutputValue();
  v83 = v0;
  if (v28)
  {
    v29 = *v28;
  }

  else
  {
    v29 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI13_ProposedSizeV_So6CGSizeVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  }

  v84 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI13_ProposedSizeV_So6CGSizeVTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v30 = v1 + 56;
  v31 = 1 << *(v1 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v1 + 56);
  v34 = (v31 + 63) >> 6;
  v35 = v27 + v26;
  v36 = v90 + v87;
  v37 = -v26 - v27;
  v38 = -v87 - v90;

  v39 = 0;
  v88 = v29;
  v89 = v1;
  while (1)
  {
    do
    {
      if (v33)
      {
        goto LABEL_48;
      }

      do
      {
        v40 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
        }

        if (v40 >= v34)
        {

          if (AGGraphGetOutputValue())
          {
            v74 = v83;
            v75 = v84;
            if (*(v84 + 16))
            {
              outlined init with copy of SizeThatFitsRule<SizeThatFitsMeasurer>(v83, &v94);
              v76 = AGGraphGetOutputValue();
              if (!v76)
              {
                __break(1u);
LABEL_101:
                _assertionFailure(_:_:file:line:flags:)();
                __break(1u);
                goto LABEL_102;
              }

              v77 = *v76;

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v93 = v77;
              specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v84, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v93);

              AGGraphSetOutputValue();

              outlined destroy of SizeThatFitsRule<SizeThatFitsMeasurer>(&v94);
            }

            if (*(v84 + 16))
            {
LABEL_91:
              (*(v74 + 40))(v102, v75);

              if (swift_weakLoadStrong())
              {
                v101[0] = v103[0];
                *(v101 + 10) = *(v103 + 10);
                v96 = v102[2];
                v97 = v102[3];
                v99 = v102[5];
                v100 = v102[6];
                v98 = v102[4];
                v94 = v102[0];
                v95 = v102[1];
                SizingPreferencesChangeDispatcher.contentSizeDidChange(sizingPreferences:transaction:)(&v94, v81);
              }

              else
              {
              }

              outlined consume of SafeAreaInsets.OptionalValue?(v82);
              outlined consume of SafeAreaInsets.OptionalValue?(v81);
              return;
            }
          }

          else
          {
            v75 = v84;
            *&v94 = v84;
            AGGraphSetOutputValue();
            v74 = v83;
            if (*(v84 + 16))
            {
              goto LABEL_91;
            }
          }

          outlined consume of SafeAreaInsets.OptionalValue?(v82);
          outlined consume of SafeAreaInsets.OptionalValue?(v81);
LABEL_13:

          return;
        }

        v33 = *(v30 + 8 * v40);
        ++v39;
      }

      while (!v33);
      v39 = v40;
LABEL_48:
      v41 = *(v1 + 48) + ((v39 << 11) | (32 * __clz(__rbit64(v33))));
      v42 = *(v41 + 8);
      v43 = *(v41 + 16);
      v44 = *(v41 + 24);
      v45 = *v41 - v35;
      if (v45 < 0.0)
      {
        v45 = 0.0;
      }

      v91 = *v41;
      if (*(v41 + 8))
      {
        v46 = *v41;
      }

      else
      {
        v46 = v45;
      }

      v47 = v43 - v36;
      if (v43 - v36 < 0.0)
      {
        v47 = 0.0;
      }

      if (*(v41 + 24))
      {
        v48 = *(v41 + 16);
      }

      else
      {
        v48 = v47;
      }

      v49 = one-time initialization token for lockAssertionsAreEnabled;

      if (v49 != -1)
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
          goto LABEL_101;
        }
      }

      v33 &= v33 - 1;
      *&v94 = v46;
      BYTE8(v94) = v42;
      *&v95 = v48;
      BYTE8(v95) = v44;
      v50 = (*(*v92 + 120))(&v94);
      v52 = v51;

      if (v50 - v37 < 0.0)
      {
        v53 = 0.0;
      }

      else
      {
        v53 = v50 - v37;
      }

      if (v52 - v38 < 0.0)
      {
        v54 = 0.0;
      }

      else
      {
        v54 = v52 - v38;
      }

      v1 = v89;
      if (!*(v88 + 16))
      {
        break;
      }

      LOBYTE(v94) = v42;
      LOBYTE(v93) = v44;
      v55 = specialized __RawDictionaryStorage.find<A>(_:)(*&v91, v42, *&v43, v44);
      if ((v56 & 1) == 0)
      {
        break;
      }

      v57 = (*(v88 + 56) + 16 * v55);
    }

    while (*v57 == v53 && v57[1] == v54);
    v79 = swift_isUniquelyReferenced_nonNull_native();
    *&v94 = v84;
    LOBYTE(v93) = v42;
    v60 = specialized __RawDictionaryStorage.find<A>(_:)(*&v91, v42, *&v43, v44);
    v61 = *(v84 + 16);
    v62 = (v59 & 1) == 0;
    v63 = v61 + v62;
    if (__OFADD__(v61, v62))
    {
      goto LABEL_98;
    }

    if (*(v84 + 24) < v63)
    {
      break;
    }

    if ((v79 & 1) == 0)
    {
      v86 = v59;
      v80 = v60;
      specialized _NativeDictionary.copy()();
      v60 = v80;
      v59 = v86;
    }

LABEL_82:
    v67 = v94;
    v84 = v94;
    if (v59)
    {
      v68 = (*(v94 + 56) + 16 * v60);
      *v68 = v53;
      v68[1] = v54;
    }

    else
    {
      *(v94 + 8 * (v60 >> 6) + 64) |= 1 << v60;
      v69 = v67[6] + 32 * v60;
      *v69 = v91;
      *(v69 + 8) = v42;
      *(v69 + 16) = v43;
      *(v69 + 24) = v44;
      v70 = (v67[7] + 16 * v60);
      *v70 = v53;
      v70[1] = v54;
      v71 = v67[2];
      v72 = __OFADD__(v71, 1);
      v73 = v71 + 1;
      if (v72)
      {
        goto LABEL_99;
      }

      v67[2] = v73;
    }
  }

  v85 = v59;
  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v63, v79);
  LOBYTE(v93) = v42;
  v64 = specialized __RawDictionaryStorage.find<A>(_:)(*&v91, v42, *&v43, v44);
  v66 = v65 & 1;
  v59 = v85;
  if ((v85 & 1) == v66)
  {
    v60 = v64;
    goto LABEL_82;
  }

LABEL_102:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

double specialized AnimatedShape.shape(in:)(uint64_t a1, __int16 a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  if (one-time initialization token for v5 != -1)
  {
    swift_once();
  }

  v10 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    *&a5 &= ~1uLL;
    goto LABEL_10;
  }

  if (static Semantics.forced >= v10)
  {
    goto LABEL_9;
  }

LABEL_10:
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = a3;
  v17.size.height = a4;
  v18 = CGRectInset(v17, a5, a5);
  Capsule.path(in:)(v15, v18.origin.x, v18.origin.y, v18.size.width, v18.size.height);
  v11 = v16;
  v12 = v15[1];
  *a1 = v15[0];
  *(a1 + 16) = v12;
  v13 = 256;
  if ((a2 & 1) == 0)
  {
    v13 = 0;
  }

  *(a1 + 32) = v13 & 0xFFFFFFFFFFFEFFFFLL | ((((a2 & 0x100) >> 8) & 1) << 16) | v11;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0;
  return 0.0;
}

uint64_t specialized Clock.sleep(for:tolerance:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
}

uint64_t specialized Clock.sleep(for:tolerance:)()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type ContinuousClock and conformance ContinuousClock, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  v6 = v5;
  dispatch thunk of Clock.now.getter();
  lazy protocol witness table accessor for type TouchEvent and conformance TouchEvent(&lazy protocol witness table cache variable for type ContinuousClock.Instant and conformance ContinuousClock.Instant, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v7 = *(v3 + 8);
  v0[12] = v7;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  v8 = swift_task_alloc();
  v0[14] = v8;
  *v8 = v0;
  v8[1] = specialized Clock.sleep(for:tolerance:);
  v9 = v0[11];

  return MEMORY[0x1EEE6DE58](v9, v0 + 2, v4, v6);
}

uint64_t specialized Clock.sleep(for:tolerance:)(__n128 a1)
{
  v3 = *(*v2 + 96);
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(v6 + 120) = v1;

  v3(v4, v5);
  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](specialized Clock.sleep(for:tolerance:), 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7();
  }
}

{

  v2 = *(v1 + 8);

  return v2();
}

void (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())()
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9ViewFrameV_AK010AnimatablejA0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9ViewFrameV_AK010AnimatablejA3VFDVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK05UnaryiJ033_1C3B77B617AD058A6802F719E38F5D79LLVyAK023IgnoresAutomaticPaddingI033_47C1BD8C61550BB60F4F3D12F752D53DLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK05UnaryiJ033_1C3B77B617AD058A6802F719E38F5D79LLVyAK14MoveTransitionV0uI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK018UnaryPositionAwareiJ033_1C3B77B617AD058A6802F719E38F5D79LLVyAK021ContainerCornerOffsetI033_1EB28CBBC8B70D90A6FD32242CBBC5E6LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK05UnaryiJ033_1C3B77B617AD058A6802F719E38F5D79LLVyAK28AutomaticPaddingViewModifier33_47C1BD8C61550BB60F4F3D12F752D53DLLV0vI0V07WrappedI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK07DynamiciJ033_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLVyAK014GeometryReaderI033_7D6D22DF7076CCC1FC5284D8E2D1B049LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI21FocusableFillerBoundsVG_AK04LazyijK8ProviderVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK04LeafJ6FilterVyAK08BackdropI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK12BackdropViewVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K3SetV7WrapperVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06SpaceriJ033_81D5572A9475F8358655E25B09BAFBA9LLVyAK011ConditionalK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK07OpacityJ6FilterVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK08FillMaskiJ033_09A110AC5BACB75B719ABBC0079FF1BALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18ResolvedStyledTextCSg_AK0i8OptionalK6FilterVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18ScrollStateRequest_pSg_AK0I23PositionBindingModifierV04MakeK0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK018GlassEffectContextiJ033_62A32D59B8A902A88963544196023CF7LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI30GlassEffectContextResolvedData33_62A32D59B8A902A88963544196023CF7LLV0M0VSg_ANTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI24GlassMaterialContextDataV_AM4InitVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK012DrawingGroupiJ033_13DB74067CC303A724F4EF8CA51D6069LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySay7SwiftUI14GlassContainerO4ItemVGzc_AK15ZIndexTransform33_85C8E74E35AEC2A9A8FB7892C121E809LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI16AppearanceEffectVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8MaterialVSg_AK015GlassEffectItemI008_3DF70D9N23D7473F4D189A049B764CFEFLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK04LeafJ6FilterVyAK05ColorI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK01_kI0VyAK9RectangleVAKE17AsymmetricalInsetVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK012InterpolatediJ033_7377A3587909D054D379011E12826F37LLVyAK5ImageVAKE8ResolvedVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK5ImageVAKE8ResolvedVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18ResolvedStyledTextC_AK0iK6Filter33_641995D812913A47B866B20B88782376LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK015SizeFittingTextiJ0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18ResolvedStyledTextC_AK011SizeFittingK6FilterVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK05ChildI033_3B04936F6043A290A3E53AE94FE09355LLVySbGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14GlassContainerO7StorageV_AK07UpdatedjK033_0D94FA50AC33D329AB9E24A7FB1C1182LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK05UnaryiJ033_1C3B77B617AD058A6802F719E38F5D79LLVyAK0i8PriorityI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI6ShaderV08ResolvedI0V_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI6ShaderV08ResolvedI0V_AK01_I12FilterEffectV0jL033_2BFAEFF753052DBF4DEF07051FF899A7LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK022GlassContainerResolvedI033_04178B540DC3B0BFBD7679A049CE48C7LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK0L15TextContentViewVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K4ViewVyAK015CombinedContentK033_6E67AD6866B38627EB183D41FF0BA80ALLVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15DynamicTextView33_641995D812913A47B866B20B88782376LLV0iJ6FilterVAEV_APTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyAK13TappableEventVG_AK06RepeatJ033_BECD07FC80B4CA0BF429B041392E806ALLVyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9ViewFrameVSg_AA011AnyOptionalA0Vt_AK06SharedJ033_F035CBEF00D3D777B3359545F684D774LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14AnyGestureInfo33_9726BF9F3BA5F571B5F201AD7C8C86F0LLVAEVyyt_G_ANyytGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySay7SwiftUI18ScrollStateRequest_pGzc_AK0ijK9TransformVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK04LazyI033_EB2336F1CBB87914F55D10FF4F9B475ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SDy7SwiftUI13_ProposedSizeVSo6CGSizeVG_AK0j8ThatFitsE0VyAK0jlM8MeasurerVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK05UnaryiJ033_1C3B77B617AD058A6802F719E38F5D79LLVyAK09_PositionI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK05UnaryiJ033_1C3B77B617AD058A6802F719E38F5D79LLVyAK010_AlignmentI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK05UnaryiJ033_1C3B77B617AD058A6802F719E38F5D79LLVyAK010_FixedSizeI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK05UnaryiJ033_1C3B77B617AD058A6802F719E38F5D79LLVyAK012_AspectRatioI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK018UnaryPositionAwareiJ033_1C3B77B617AD058A6802F719E38F5D79LLVyAK017_SafeAreaIgnoringI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI21LazySubviewPrefetcherVyAK0I12HStackLayoutVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI25_LazyLayout_PlacedSubviewVG_AK0iL10PlacementsVyAK0i6HStackJ0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI21LazySubviewPrefetcherVyAK0I12VStackLayoutVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI25_LazyLayout_PlacedSubviewVG_AK0iL10PlacementsVyAK0i6VStackJ0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK07DynamiciJ033_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLVyAK019FlexibleButtonFrameI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9ColorViewV_AK013EnvironmentalJ5ChildVyAK0I0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK01_kI0VyAK9RectangleVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK9RectangleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK03AnyK0VGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK01_kI0VyAK7EllipseVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK7EllipseV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK01_kI0VyAK7CapsuleVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK7CapsuleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK01_kI0VyAK6CircleVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK6CircleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK01_kI0VyAK4PathVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K4ViewVyAK4PathVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK024PartialContainerRelativeK0VGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK01_kI0VyAK018DefaultGlassEffectK0VAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK22UnevenRoundedRectangleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK22UnevenRoundedRectangleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK01_kI0VyAK017ImplicitContainerK0VAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK01_kI0VyAK017ContainerRelativeK0VAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK017ContainerRelativeK0V6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK05ChildI033_3B04936F6043A290A3E53AE94FE09355LLVyAK4FontVSgGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK19ConcentricRectangleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK01_kI0VyAK9RectangleVAK18EllipticalGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK16RoundedRectangleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK16RoundedRectangleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK01_kI0VyAK9RectangleVAK15AngularGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK01_kI0VyAK9RectangleVAK14RadialGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK01_kI0VyAK9RectangleVAK14LinearGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK01_kI0VyAK9RectangleVAK12MeshGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K4ViewVyAK9RectangleVAK12MeshGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13_ShadowEffectV9_ResolvedV_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK013EnvironmentalM8Accessor33_A1B6966B83442495FADFE75F475ECBE2LLVyAMGAK16AsyncThreadFlagsAQLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK07DynamiciJ033_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLVyAK03AnyI0VGTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())()
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16_ShapeStyle_PackV_AK0iJ8ResolverVyAK03AnyiJ0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12KickModifier33_02B8A9C041E17C70E13F37D6E2D14302LLV_AK010AnimatableA0VyANGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14MaterialEffectV4Fill33_E3B0FF576136F59061E5D7766373CC25LLV_AK010AnimatableA0VyAPGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16ScalePulseEffect33_5B41BB980C958F118A8AF82B3D90BAC0LLV_AK010AnimatableA0VyANGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19GlassContainerCacheC17UnwrappedMaterialV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI24GlassEffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLV_AK010AnimatableA0VyANGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI26GlassAppearanceScaleEffect33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_AK010AnimatableA0VyANGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9_ShapeSetV7WrapperV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK05UnaryiJ033_1C3B77B617AD058A6802F719E38F5D79LLVyAK07SpacingI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK05UnaryiJ033_1C3B77B617AD058A6802F719E38F5D79LLVyAK017ConcentricPaddingI033_7079FF89BCF97F81EB250A589B9A5CEDLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16DynamicContainerV4InfoV_AK0ijK0VyAK0I17LayoutViewAdaptorVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK07DynamiciJ033_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLVyAK011GlassEffectI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK07DynamiciJ033_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLVyAK07_ZStackI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19LazyLayoutViewCacheC_AK06UpdatekL033_EB2336F1CBB87914F55D10FF4F9B475ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K3SetV7WrapperVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06SpaceriJ033_81D5572A9475F8358655E25B09BAFBA9LLVyAK021_TextBaselineRelativeK0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17_Rotation3DEffectV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15_RotationEffectV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12_ScaleEffectV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK014MaterialEffectiJ033_E3B0FF576136F59061E5D7766373CC25LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI26MaterialEffectResolvedData33_E3B0FF576136F59061E5D7766373CC25LLV0L0VSg_ANTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14_OpacityEffectV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK018GlassEffectContextI033_62A32D59B8A902A88963544196023CF7LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20GlassMaterialContextC5StateV_AK0i6EffectkL033_62A32D59B8A902A88963544196023CF7LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI21OpacityRendererEffectV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewIdentityV_AK17GlassEffectItemID08_3DF70D9P23D7473F4D189A049B764CFEFLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20RectangleCornerRadiiV_AK015GlassEffectItemK008_3DF70D9P23D7473F4D189A049B764CFEFLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK010ConcentriciJ033_7079FF89BCF97F81EB250A589B9A5CEDLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13PlatformItemsV_AK011GlassEffectI12ItemModifier33_D12F2F25A0BD65FFBD3A7636B60067DFLLV0kimE0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13PlatformItemsV_AK0iJ17TextRepresentableV0I11ItemContent33_391C8788DFD73AA8AB21B496A57C73FFLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13PlatformItemsV_AK0iJ18ImageRepresentableV0I11ItemContent33_391C8788DFD73AA8AB21B496A57C73FFLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI25_AppearanceActionModifierV_AM15MergedCallbacks33_3EDE22C3B37C9BBEF12EC9D1A4B340F3LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewList_p_AK07DynamiciJ0031_3FB6ABB0477B815AB3C89DD5EDC9F0S0LLVyAK016DebugReplaceableI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewList_p_AK07DynamiciJ0031_3FB6ABB0477B815AB3C89DD5EDC9F0S0LLVyAK03AnyI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06SpaceriJ033_81D5572A9475F8358655E25B09BAFBA9LLVyAK0K0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06SpaceriJ033_81D5572A9475F8358655E25B09BAFBA9LLVyAK8_HSpacerVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06SpaceriJ033_81D5572A9475F8358655E25B09BAFBA9LLVyAK8_VSpacerVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK9ColorViewVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9ColorViewV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K4ViewVyAK9RectangleVAKE17AsymmetricalInsetVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK9RectangleVAKE17AsymmetricalInsetVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jQ8AccessorVyAQGAK16AsyncThreadFlagsAVLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK9RectangleVAKE17AsymmetricalInsetVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jQ8AccessorVyAQGAK16AsyncThreadFlagsAVLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK14GeometryReaderVyAMyAK22GlassContainerResolverVyAMyAK6ZStackVyAK7ForEachVySayAK0mN0O6EffectVGAW15DisplayMaterialV2IDVAMyAK0mS4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAK21_TraitWritingModifierVyAK18TransitionTraitKeyVGGGGAK0mN18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAK21_BackdropGroupEffect2VGGAK01_k5GroupS0VG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0W12BodyAccessorVyAK01_mn7StorageW0VGAK16AsyncThreadFlagsA27_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK14GeometryReaderVyAMyAK22GlassContainerResolverVyAMyAK6ZStackVyAK7ForEachVySayAK0mN0O6EffectVGAW15DisplayMaterialV2IDVAMyAK0mS4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAK21_TraitWritingModifierVyAK18TransitionTraitKeyVGGGGAK0mN18TintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAK21_BackdropGroupEffect2VGGAK01_k5GroupS0VG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0W12BodyAccessorVyAK01_mn7StorageW0VGAK16AsyncThreadFlagsA27_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewList_p_AK07ForEachJ033_1A3DD35AB7F6976908CD7AF959F34D1FLLV4InitVys5SliceVyAK18SubviewsCollectionVGAK7SubviewV2IDVAX_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14GeometryReaderVyAK14GlassEntryView33_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0mX8AccessorVyAK0kl9ContainerM0AOLLVGAK16AsyncThreadFlagsASLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14GeometryReaderVyAK14GlassEntryView33_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0mX8AccessorVyAK0kl9ContainerM0AOLLVGAK16AsyncThreadFlagsASLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewList_p_AK07ForEachJ033_1A3DD35AB7F6976908CD7AF959F34D1FLLV4InitVyAK09_VariadicI9_ChildrenVs11AnyHashableVAS7ElementV_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK015CombinedContentI033_6E67AD6866B38627EB183D41FF0BA80ALLVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jW8AccessorVyAPGAK16AsyncThreadFlagsAULLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK015CombinedContentI033_6E67AD6866B38627EB183D41FF0BA80ALLVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jW8AccessorVyAPGAK16AsyncThreadFlagsAULLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK014_ViewModifier_J0VyAK018ScheduledAnimationL033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGAK01_C15ActionModifier2VySiGG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0L12BodyAccessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyASGAK16AsyncThreadFlagsAZLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK014_ViewModifier_J0VyAK018ScheduledAnimationL033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGGAK01_C15ActionModifier2VySiGG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0L12BodyAccessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyASGAK16AsyncThreadFlagsAZLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK014_ViewModifier_J0VyAK04KickL033_02B8A9C041E17C70E13F37D6E2D14302LLVGAK16_TransformEffectVG_AK10StaticBody029_A4C1D658B3717A3062FEFC91A812U2EBLLVyAK0L12BodyAccessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyARGAK16AsyncThreadFlagsAXLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK014_ViewModifier_J0VyAK04KickL033_02B8A9C041E17C70E13F37D6E2D14302LLVGAK16_TransformEffectVG_AK11DynamicBody029_A4C1D658B3717A3062FEFC91A812U2EBLLVyAK0L12BodyAccessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyARGAK16AsyncThreadFlagsAXLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAK014_ViewModifier_J0VyAK015TranslationKickL033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGAK0nL0AQLLVGAK018ScheduledAnimationL033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_AK10StaticBody029_A4C1D658B3717A3062FEFC91A812V2EBLLVyAK0L12BodyAccessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyASGAK16AsyncThreadFlagsA2_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAK014_ViewModifier_J0VyAK015TranslationKickL033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGGAK0nL0AQLLVGAK018ScheduledAnimationL033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_AK11DynamicBody029_A4C1D658B3717A3062FEFC91A812V2EBLLVyAK0L12BodyAccessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyASGAK16AsyncThreadFlagsA2_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAMyAMyAMyAMyAK014_ViewModifier_J0VyAK010ScalePulseL033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAK0mN6EffectAQLLVGAVGAVGAVGAK05_BlurX0VGAK018ScheduledAnimationL033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0L12BodyAccessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyASGAK16AsyncThreadFlagsA8_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAMyAMyAMyAMyAK014_ViewModifier_J0VyAK010ScalePulseL033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAK0mN6EffectAQLLVGAVGAVGAVGAK05_BlurX0VGAK018ScheduledAnimationL033_94C2570E898B27608B6F2D65EF8A1A07LLVySiGG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0L12BodyAccessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyASGAK16AsyncThreadFlagsA8_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAMyAMyAMyAK014_ViewModifier_J0VyAK020GlassTransitionStateL033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAK14_OpacityEffectVGAK05_BlurZ0VGAK0m15AppearanceScaleZ0AQLLVGAK010ScalePulseL033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAK015TranslationKickL033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0L12BodyAccessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyARGAK16AsyncThreadFlagsA12_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAMyAMyAMyAK014_ViewModifier_J0VyAK020GlassTransitionStateL033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAK14_OpacityEffectVGAK05_BlurZ0VGAK0m15AppearanceScaleZ0AQLLVGAK010ScalePulseL033_5B41BB980C958F118A8AF82B3D90BAC0LLVySiGGAK015TranslationKickL033_02B8A9C041E17C70E13F37D6E2D14302LLVySiGG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0L12BodyAccessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyARGAK16AsyncThreadFlagsA12_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK014_ViewModifier_J0VyAK016GlassEffectShapeL033_62A32D59B8A902A88963544196023CF7LLVGAK014_AnchorWritingL0VySo6CGRectVAK0m8MaterialO3KeyAQLLVGG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0L12BodyAccessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyARGAK16AsyncThreadFlagsA1_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK014_ViewModifier_J0VyAK016GlassEffectShapeL033_62A32D59B8A902A88963544196023CF7LLVGAK014_AnchorWritingL0VySo6CGRectVAK0m8MaterialO3KeyAQLLVGG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0L12BodyAccessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyARGAK16AsyncThreadFlagsA1_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAK014_ViewModifier_J0VyAK016GlassEffectLocalL008_3DF70D9Q23D7473F4D189A049B764CFEFLLVGAK0mn9ContainerL0AQLLVGAkT33_0D94FA50AC33D329AB9E24A7FB1C1182LLVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0K12BodyAccessorVyAK01_mnX0VyAVGGAK16AsyncThreadFlagsA_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAK014_ViewModifier_J0VyAK016GlassEffectLocalL008_3DF70D9Q23D7473F4D189A049B764CFEFLLVGAK0mn9ContainerL0AQLLVGAkT33_0D94FA50AC33D329AB9E24A7FB1C1182LLVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0K12BodyAccessorVyAK01_mnX0VyAVGGAK16AsyncThreadFlagsA_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI21_GlassEffectContainerVyAK15ModifiedContentVyAK014_ViewModifier_M0VyAK0ij5LocalO008_3DF70D9R23D7473F4D189A049B764CFEFLLVGAK0ijkO0ASLLVGG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0oZ8Accessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyATGAK16AsyncThreadFlagsA_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI21_GlassEffectContainerVyAK15ModifiedContentVyAK014_ViewModifier_M0VyAK0ij5LocalO008_3DF70D9R23D7473F4D189A049B764CFEFLLVGAK0ijkO0ASLLVGG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0oZ8Accessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyATGAK16AsyncThreadFlagsA_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK014_ViewModifier_J0VyAK015FlexInteractionL0VGAK0m5StateL033_404CBE866CEDD57705E9BEB28E77402CLLVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0lV8Accessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAQGAK16AsyncThreadFlagsAXLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK014_ViewModifier_J0VyAK015FlexInteractionL0VGAK0m5StateL033_404CBE866CEDD57705E9BEB28E77402CLLVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0lV8Accessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAQGAK16AsyncThreadFlagsAXLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17VariableBlurStyleV_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK013EnvironmentalM8Accessor33_A1B6966B83442495FADFE75F475ECBE2LLVyAK0iJ6Effect33_6A2330B0C22A93F083499CFD6C3BD5B1LLVGAK16AsyncThreadFlagsAOLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17VariableBlurStyleV_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK013EnvironmentalM8Accessor33_A1B6966B83442495FADFE75F475ECBE2LLVyAK0iJ6Effect33_6A2330B0C22A93F083499CFD6C3BD5B1LLVGAK16AsyncThreadFlagsAOLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewList_p_AK07ForEachJ033_1A3DD35AB7F6976908CD7AF959F34D1FLLV4InitVySayAK14GlassContainerO5EntryVGAU8StableIDVAK15ModifiedContentVyAZyAK6ZStackVyAK0vxwI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAK21_TraitWritingModifierVyAK12_LayoutTraitVyAK0V12EffectLayoutA2_LLV3KeyVGGGA6_yAK18TransitionTraitKeyVGG_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK13_VariadicViewO4TreeVy_AK11_LayoutRootVyAK011GlassEffectN033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAK7ForEachVySayAK0P9ContainerO5EntryVGA1_8StableIDVAMyAMyAK6ZStackVyAK0p14EntryContainerL0AULLVGAK21_TraitWritingModifierVyAK01_N5TraitVyAV3KeyVGGGA11_yAK18TransitionTraitKeyVGGGGAK0p8MaterialQ033_62A32D59B8A902A88963544196023CF7LLVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0L12BodyAccessorVyAK0pqL0AULLVGAK16AsyncThreadFlagsA30_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK13_VariadicViewO4TreeVy_AK11_LayoutRootVyAK011GlassEffectN033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAK7ForEachVySayAK0P9ContainerO5EntryVGA1_8StableIDVAMyAMyAK6ZStackVyAK0p14EntryContainerL0AULLVGAK21_TraitWritingModifierVyAK01_N5TraitVyAV3KeyVGGGA11_yAK18TransitionTraitKeyVGGGGAK0p8MaterialQ033_62A32D59B8A902A88963544196023CF7LLVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0L12BodyAccessorVyAK0pqL0AULLVGAK16AsyncThreadFlagsA30_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewList_p_AK07ForEachJ033_1A3DD35AB7F6976908CD7AF959F34D1FLLV4InitVySayAK14GlassContainerO4ItemVGAU2IDVAK0vxI033_D12F2F25A0BD65FFBD3A7636B60067DFLLV_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAMyAMyAMyAMyAK13_VariadicViewO4TreeVy_AK11_LayoutRootVyAK010GlassEntryN033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAK7ForEachVySayAK0P9ContainerO4ItemVGA1_2IDVAK0p4ItemL0AULLVGGAK0P19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGAK0P26EffectPlatformItemModifierAULLVGAK0pQ19InteractionModifierAULLVGAK0pQ23FlexInteractionModifierAULLVGAK0P23TransitionStateModifierAULLVGAK26ScheduledAnimationModifier020_94C2570E898B27608B6S11D65EF8A1A07LLVySiGG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0L12BodyAccessorVyAK0pqL0AULLVGAK16AsyncThreadFlagsA31_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAMyAMyAMyAMyAK13_VariadicViewO4TreeVy_AK11_LayoutRootVyAK010GlassEntryN033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAK7ForEachVySayAK0P9ContainerO4ItemVGA1_2IDVAK0p4ItemL0AULLVGGAK0P19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGAK0P26EffectPlatformItemModifierAULLVGAK0pQ19InteractionModifierAULLVGAK0pQ23FlexInteractionModifierAULLVGAK0P23TransitionStateModifierAULLVGAK26ScheduledAnimationModifier020_94C2570E898B27608B6S11D65EF8A1A07LLVySiGG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0L12BodyAccessorVyAK0pqL0AULLVGAK16AsyncThreadFlagsA31_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK5ImageVAK25_ForegroundStyleModifier2VyAK15AngularGradientVAK5ColorVGG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK04ViewS8AccessorVyAK13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVGAK16AsyncThreadFlagsAYLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK5ImageVAK25_ForegroundStyleModifier2VyAK15AngularGradientVAK5ColorVGG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK04ViewS8AccessorVyAK13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVGAK16AsyncThreadFlagsAYLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAMyAMyAK22PrimitiveGlassItemView33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAK0L23TransitionStateModifierAOLLVGAK20_GeometryGroupEffectVGAK013_TraitWritingZ0VyAK0X8TraitKeyVGGAXyAK12_LayoutTraitVyAK0L11EntryLayoutAOLLV3KeyVGGG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0N12BodyAccessorVyAK0lmN0AOLLVGAK16AsyncThreadFlagsA11_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAMyAMyAK22PrimitiveGlassItemView33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAK0L23TransitionStateModifierAOLLVGAK20_GeometryGroupEffectVGAK013_TraitWritingZ0VyAK0X8TraitKeyVGGAXyAK12_LayoutTraitVyAK0L11EntryLayoutAOLLV3KeyVGGG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0N12BodyAccessorVyAK0lmN0AOLLVGAK16AsyncThreadFlagsA11_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAMyAMyAK22PrimitiveGlassItemView33_D12F2F25A0BD65FFBD3A7636B60067DFLLVAK0L23TransitionStateModifierAOLLVGAK20_GeometryGroupEffectVGAK013_TraitWritingZ0VyAK0X8TraitKeyVGGAXyAK12_LayoutTraitVyAK0L11EntryLayoutAOLLV3KeyVGGG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0N12BodyAccessorVyAK0lmN0AOLLVGAK16AsyncThreadFlagsA11_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK5ImageVAKE8ResolvedVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK5ImageVAKE8ResolvedVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11_BlurEffectV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17VariableBlurStyleV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13_VariadicViewO4TreeVy_AK11_LayoutRootVyAK014GeometryReaderL033_7D6D22DF7076CCC1FC5284D8E2D1B049LLVGAK15ModifiedContentVyAK22GlassContainerResolverVyAWyAK6ZStackVyAK7ForEachVySayAK14GlassContainerO6EffectVGA3_15DisplayMaterialV2IDVAWyAK011GlassEffectJ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAK21_TraitWritingModifierVyAK18TransitionTraitKeyVGGGGAK32GlassContainerTintConfigModifier33_EC08899B622ECCACC85E95BA1EEBE316LLVGGAK21_BackdropGroupEffect2VGG_AK0nO0V5ChildASLLVyA29__GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13_VariadicViewO4TreeVy_AK11_LayoutRootVyAK014GeometryReaderL033_7D6D22DF7076CCC1FC5284D8E2D1B049LLVGAK010GlassEntryJ033_D12F2F25A0BD65FFBD3A7636B60067DFLLVG_AK0nO0V5ChildASLLVyAX_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK012InterpolatediJ033_7377A3587909D054D379011E12826F37LLVyAK18ResolvedStyledTextCGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK0l11TextContentI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK015CombinedContentR033_6E67AD6866B38627EB183D41FF0BA80ALLVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK01_kI0VyAK015CombinedContentK033_6E67AD6866B38627EB183D41FF0BA80ALLVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13SubviewsPhase33_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLVAEV_ANTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18EventListenerPhase33_D4E5D14C6252B45A30FB249B3DBDFD35LLVAEVyAK07SpatialI0V_G_ANyAQGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifierGestureVyAK014StateContainerJ0VyAK08DistanceJ0V0K4TypeVAK12SpatialEventV12CoreGraphics7CGFloatVGAK0P8ListenerVyAUGG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jV8Accessor33_5DF390A778F4D193C5F92C06542566B0LLVyAQGAK16AsyncThreadFlagsA3_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifierGestureVyAK014StateContainerJ0VyAK08DistanceJ0V0K4TypeVAK12SpatialEventV12CoreGraphics7CGFloatVGAK0P8ListenerVyAUGG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jV8Accessor33_5DF390A778F4D193C5F92C06542566B0LLVyAQGAK16AsyncThreadFlagsA3_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOySdG_AK08DurationJ033_C4CC4B4F23572B057F5F0CA55A7B1301LLVyAK13TappableEventVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18EventListenerPhase33_D4E5D14C6252B45A30FB249B3DBDFD35LLVAEVyAK08TappableI0V_G_ANyAQGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifierGestureVyAK11EventFilterVyAK08TappableK0VGAMyAK04Map2J0VyAqMyAK015CoordinateSpaceJ0Vy12CoreGraphics7CGFloatVGAK08DistanceJ0VGAQGAMyATyAqMyAK08DurationJ0VyAQGAK0K8ListenerVyAQGGAQGAMyAK09DependentJ033_8687835E41FEE17B108D67665C1D2D0BLLVyAQGAMyAK03MapJ0VyA2QGA8_GGGGG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0J12BodyAccessor33_5DF390A778F4D193C5F92C06542566B0LLVyAK09SingleTapJ0VyAQGGAK16AsyncThreadFlagsA24_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifierGestureVyAK11EventFilterVyAK08TappableK0VGAMyAK04Map2J0VyAqMyAK015CoordinateSpaceJ0Vy12CoreGraphics7CGFloatVGAK08DistanceJ0VGAQGAMyATyAqMyAK08DurationJ0VyAQGAK0K8ListenerVyAQGGAQGAMyAK09DependentJ033_8687835E41FEE17B108D67665C1D2D0BLLVyAQGAMyAK03MapJ0VyA2QGA8_GGGGG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0J12BodyAccessor33_5DF390A778F4D193C5F92C06542566B0LLVyAK09SingleTapJ0VyAQGGAK16AsyncThreadFlagsA24_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK07DynamicI033_E7D4CD2D59FB8C77D6C7E9C534464C17LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK013DynamicLayouti5ChildJ033_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20HiddenForReuseEffect33_EB2336F1CBB87914F55D10FF4F9B475ALLV_AK22LazyDisplayListWrapperAMLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12RootSizeInfoVSg_AK08AnimatediJ0029_5DCEEE14B788CEE70E82B0FD4305Q2C7LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_12CoreGraphics7CGFloatV_7SwiftUI010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10EdgeInsetsV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12MeshGradientV6_PaintV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13_OffsetEffectV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13_ShadowEffectV9_ResolvedV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LinearGradientV13AbsolutePaintV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LinearGradientV6_PaintV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14RadialGradientV6_PaintV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15AngularGradientV6_PaintV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15_ContrastEffectV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16RoundedRectangleV6_InsetV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16RoundedRectangleV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16_GrayscaleEffectV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16_ShapeStyle_PackV0J0V_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16_ShapeStyle_PackV4FillO_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16_ShapeStyle_PackV6EffectV4KindO_AK010AnimatableA0VyAQGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16_ShapeStyle_PackV6EffectV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17_BrightnessEffectV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17_SaturationEffectV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18EllipticalGradientV6_PaintV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18_HueRotationEffectV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ConcentricRectangleV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ResolvedShadowStyleV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20RectangleCornerRadiiV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20_ColorMultiplyEffectV9_ResolvedV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI21_AlphaThresholdEffectV9_ResolvedV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI22ContainerRelativeShapeV6_InsetV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI22UnevenRoundedRectangleV6_InsetV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI22UnevenRoundedRectangleV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI22_ColorMonochromeEffectV9_ResolvedV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI26CornerMaskingConfigurationV0I5StyleV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI26CornerMaskingConfigurationV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI29PartialContainerRelativeShapeV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI30RoundedRectangularShapeCornersV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI4EdgeOAKE6CornerO5StyleV_AK010AnimatableA0VyAQGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI5AngleV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI5ColorV15ResolvedDuotoneV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI5ColorV8ResolvedV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI5ColorVAKE11ResolvedHDRV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI6CircleV6_InsetV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI7CapsuleV6_InsetV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI7EllipseV6_InsetV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8UnitRectV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewSizeV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9BlurStyleV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9RectangleV6_InsetV_AK010AnimatableA0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9UnitPointV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9ViewFrameV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Sd_7SwiftUI010AnimatableA0VySdGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So6CGRectV_7SwiftUI010AnimatableA0VyALGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So6CGSizeV_7SwiftUI010AnimatableA0VyALGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So7CGPointV_7SwiftUI010AnimatableA0VyALGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK07DynamiciJ033_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLVyAK07_HStackI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK07DynamiciJ033_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLVyAK07_VStackI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LazyiJ0VyAK0k6HStackI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LazyiJ0VyAK0k6VStackI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK014_ViewModifier_J0VyAK0j17CaptureProtectionkL0VGAK0jmN16PreferenceWriter33_0D6CD02499D969DD550B3CDDD0903EA3LLVG_AK11DynamicBody029_A4C1D658B3717A3062FEFC91A812Q2EBLLVyAK0lY8Accessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAQGAK16AsyncThreadFlagsAXLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK014_ViewModifier_J0VyAK0j17CaptureProtectionkL0VGAK0jmN16PreferenceWriter33_0D6CD02499D969DD550B3CDDD0903EA3LLVG_AK10StaticBody029_A4C1D658B3717A3062FEFC91A812Q2EBLLVyAK0lY8Accessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAQGAK16AsyncThreadFlagsAXLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13_VariadicViewO4TreeVy_AK11_LayoutRootVyAK019FlexibleButtonFrameL0VGAK01_J16Modifier_ContentVyAK0nopQ0VGG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0qT8Accessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAXGAK16AsyncThreadFlagsA0_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13_VariadicViewO4TreeVy_AK11_LayoutRootVyAK019FlexibleButtonFrameL0VGAK01_J16Modifier_ContentVyAK0nopQ0VGG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0qT8Accessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAXGAK16AsyncThreadFlagsA0_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAMyAMyAK014_ViewModifier_J0VyAK015SafeAreaPaddingL0VGAK06_InsetkL0VyAMyAK5ColorVAK12_FrameLayoutVGGGAZGAZGAZG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0lU8Accessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAQGAK16AsyncThreadFlagsA4_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAMyAMyAK014_ViewModifier_J0VyAK015SafeAreaPaddingL0VGAK06_InsetkL0VyAMyAK5ColorVAK12_FrameLayoutVGGGAZGAZGAZG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0lU8Accessor33_2BA0A33A15B7F322F46AFB9D0D1A262DLLVyAQGAK16AsyncThreadFlagsA4_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI22_ColorMonochromeEffectV9_ResolvedV_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK013EnvironmentalN8Accessor33_A1B6966B83442495FADFE75F475ECBE2LLVyAMGAK16AsyncThreadFlagsAQLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI22_ColorMonochromeEffectV9_ResolvedV_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK013EnvironmentalN8Accessor33_A1B6966B83442495FADFE75F475ECBE2LLVyAMGAK16AsyncThreadFlagsAQLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI21_AlphaThresholdEffectV9_ResolvedV_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK013EnvironmentalN8Accessor33_A1B6966B83442495FADFE75F475ECBE2LLVyAMGAK16AsyncThreadFlagsAQLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI21_AlphaThresholdEffectV9_ResolvedV_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK013EnvironmentalN8Accessor33_A1B6966B83442495FADFE75F475ECBE2LLVyAMGAK16AsyncThreadFlagsAQLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20_ColorMultiplyEffectV9_ResolvedV_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK013EnvironmentalN8Accessor33_A1B6966B83442495FADFE75F475ECBE2LLVyAMGAK16AsyncThreadFlagsAQLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20_ColorMultiplyEffectV9_ResolvedV_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK013EnvironmentalN8Accessor33_A1B6966B83442495FADFE75F475ECBE2LLVyAMGAK16AsyncThreadFlagsAQLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K4ViewVyAK9RectangleVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK9RectangleVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK9RectangleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK9RectangleV6_InsetVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jP8AccessorVyAQGAK16AsyncThreadFlagsAVLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK9RectangleV6_InsetVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jP8AccessorVyAQGAK16AsyncThreadFlagsAVLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI7AnyViewV_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jL8AccessorVyAK8_TestAppV04RootJ0VGAK16AsyncThreadFlagsAOLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI7AnyViewV_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jL8AccessorVyAK8_TestAppV04RootJ0VGAK16AsyncThreadFlagsAOLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK03AnyS0VGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK011ShapeStyledJ6Filter33_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK03AnyK0VGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK03AnyI0VAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K4ViewVyAK7EllipseVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK7EllipseVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK7EllipseV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK7EllipseV6_InsetVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jP8AccessorVyAQGAK16AsyncThreadFlagsAVLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK7EllipseV6_InsetVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jP8AccessorVyAQGAK16AsyncThreadFlagsAVLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K4ViewVyAK7CapsuleVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK7CapsuleVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK7CapsuleVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK7CapsuleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK7CapsuleV6_InsetVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jP8AccessorVyAQGAK16AsyncThreadFlagsAVLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK7CapsuleV6_InsetVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jP8AccessorVyAQGAK16AsyncThreadFlagsAVLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K4ViewVyAK6CircleVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK6CircleVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK6CircleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK6CircleV6_InsetVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jP8AccessorVyAQGAK16AsyncThreadFlagsAVLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK6CircleV6_InsetVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jP8AccessorVyAQGAK16AsyncThreadFlagsAVLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK4PathVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK4PathVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK024PartialContainerRelativeK0VGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK024PartialContainerRelativeI0VAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jQ8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK024PartialContainerRelativeI0VAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jQ8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K4ViewVyAK018DefaultGlassEffectK0VAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK018DefaultGlassEffectI0VAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jQ8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK018DefaultGlassEffectI0VAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jQ8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK22UnevenRoundedRectangleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK22UnevenRoundedRectangleVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jQ8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK22UnevenRoundedRectangleVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jQ8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK22UnevenRoundedRectangleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK22UnevenRoundedRectangleV6_InsetVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jR8AccessorVyAQGAK16AsyncThreadFlagsAVLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK22UnevenRoundedRectangleV6_InsetVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jR8AccessorVyAQGAK16AsyncThreadFlagsAVLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K4ViewVyAK017ImplicitContainerK0VAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK017ImplicitContainerI0VAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jP8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK017ImplicitContainerI0VAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jP8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K4ViewVyAK017ContainerRelativeK0VAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK017ContainerRelativeI0VAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jP8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK017ContainerRelativeK0V6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK017ContainerRelativeI0V6_InsetVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jQ8AccessorVyAQGAK16AsyncThreadFlagsAVLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK017ContainerRelativeI0V6_InsetVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jQ8AccessorVyAQGAK16AsyncThreadFlagsAVLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAK13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAK01_C19TransactionModifierVySbGGAK022_EnvironmentKeyWritingU0VyAK4FontVSgGG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK16ViewBodyAccessorVyAK20_IntelligenceSupportO09AnimatingkL0VGAK16AsyncThreadFlagsA1_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAMyAK13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAK01_C19TransactionModifierVySbGGAK022_EnvironmentKeyWritingU0VyAK4FontVSgGG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK16ViewBodyAccessorVyAK20_IntelligenceSupportO09AnimatingkL0VGAK16AsyncThreadFlagsA1_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewList_p_AK07ForEachJ033_1A3DD35AB7F6976908CD7AF959F34D1FLLV4InitVySnySiGSiAK15ModifiedContentVyATyAK13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAK01_C19TransactionModifierVySdGGAK13_OffsetEffectVG_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK4TextVAK26_OverlayPreferenceModifierVyAO9LayoutKeyVAK7ForEachVySnySiGSiAMyAMyAK13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAK01_c11TransactionN0VySdGGAK13_OffsetEffectVGGGG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK16ViewBodyAccessorVyAK20_IntelligenceSupportO09AnimatingK0VGAK16AsyncThreadFlagsA9_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK4TextVAK26_OverlayPreferenceModifierVyAO9LayoutKeyVAK7ForEachVySnySiGSiAMyAMyAK13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAK01_c11TransactionN0VySdGGAK13_OffsetEffectVGGGG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK16ViewBodyAccessorVyAK20_IntelligenceSupportO09AnimatingK0VGAK16AsyncThreadFlagsA9_LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK19ConcentricRectangleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK19ConcentricRectangleVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jP8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK19ConcentricRectangleVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jP8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK9RectangleVAK18EllipticalGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K4ViewVyAK9RectangleVAK18EllipticalGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK9RectangleVAK18EllipticalGradientVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAQGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK16RoundedRectangleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK16RoundedRectangleVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jP8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK08AnimatedK0VyAK16RoundedRectangleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK16RoundedRectangleV6_InsetVAK15ForegroundStyleVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jQ8AccessorVyAQGAK16AsyncThreadFlagsAVLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK16RoundedRectangleV6_InsetVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jQ8AccessorVyAQGAK16AsyncThreadFlagsAVLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK9RectangleVAK15AngularGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K4ViewVyAK9RectangleVAK15AngularGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK9RectangleVAK15AngularGradientVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAQGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK9RectangleVAK14RadialGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K4ViewVyAK9RectangleVAK14RadialGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK9RectangleVAK14RadialGradientVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAQGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16_ShapeStyle_PackV_AK0iJ8ResolverVyAK14LinearGradientVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK9RectangleVAK14LinearGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK011ShapeStylediJ033_E1641985C375D8826E6966D4F238A1B8LLVyAK01_K4ViewVyAK9RectangleVAK14LinearGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK9RectangleVAK14LinearGradientVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAQGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK9RectangleVAK14LinearGradientVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAQGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK9RectangleVAK12MeshGradientVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK9RectangleVAK12MeshGradientVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAQGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK9RectangleVAK12MeshGradientVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAQGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13_ShadowEffectV9_ResolvedV_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK013EnvironmentalM8Accessor33_A1B6966B83442495FADFE75F475ECBE2LLVyAMGAK16AsyncThreadFlagsAQLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK07DynamiciJ033_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLVyAK06ZStackI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK07DynamiciJ033_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLVyAK06VStackI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK07DynamiciJ033_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLVyAK06HStackI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK010UnaryChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK29IgnoresAutomaticPaddingLayout33_47C1BD8C61550BB60F4F3D12F752D53DLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySDy7SwiftUI16ScrollTargetRoleV0J0OSayAK20ScrollableCollection_pGGzc_AM9SetLayoutVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK04RootI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK05ChildH033_530459AF10BEFD7ED901D8CE93C1E289LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK014MaterialEffectH033_E3B0FF576136F59061E5D7766373CC25LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK05ChildcH033_A1B10B5AB036C34AB7DD2EE8825FCA93LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK26_ContentTransitionModifierV05ChildH033_91D8F0C7DA490950AB41112E50631DCALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK25_ForegroundStyleModifier2V0jkH033_BEFE9363F68E039B4AB6422B8AA4535ALLVyAK15AngularGradientVAK5ColorV_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI18GlassMaterialShape33_62A32D59B8A902A88963544196023CF7LLVG_AK12AnchorWriter33_B89A89B33C45D9502AF2C3A074918EE9LLVySo6CGRectVAK0hiJ3KeyAMLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI34GestureComponentAttachmentModifierVy8Gestures03TapI0VyAN10TouchEventVGG_AK0mhK033_067A6A2846A89ACCD702678B6B8D0D6FLLV0L14FrameworkChildVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI4TextV9LayoutKeyV08AnchoredI0VG_AK0hI5Query33_641995D812913A47B866B20B88782376LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK21StyledTextContentViewV018ArchivedTransitionH033_641995D812913A47B866B20B88782376LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GestureDebugO4DataV_AK07DefaultD0VyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK010UnaryChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK14_PaddingLayoutVGTt1g5;
}

double (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())()
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLV_AK010AnimatableA0VyANGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK010LeafLayoutI033_6401BBC0F2663213443101ED0E1CE437LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19MaterialEffectState33_E3B0FF576136F59061E5D7766373CC25LLVAEV_ANTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySay7SwiftUI14GlassContainerO4ItemVGzc_AK0K11IDTransform33_55D2462D268E3CDB724429AD260FBFB3LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySay7SwiftUI14GlassContainerO4ItemVGzc_AK0I19EffectGroupModifier33_ACD5779F0FE4442376126A709C92E700LLV0K9TransformVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySay7SwiftUI14GlassContainerO4ItemVGzc_AK0I20EffectHiddenModifier08_3DF70D9P23D7473F4D189A049B764CFEFLLV9TransformVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK017AlignmentModifiediJ033_1A9A538762FDCD24410B0F017CAED17ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK22AllowsHitTestingFilter33_0DA0B6FBFACBDA8275B06C3CD0F4D8CALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI14GlassContainerO4ItemVG_AK0i6EffectK4Init08_3DF70D9O23D7473F4D189A049B764CFEFLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI37GlassEffectContainerTintConfigurationV_AK0ik8ResolvedL6Config33_EC08899B622ECCACC85E95BA1EEBE316LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySay7SwiftUI14GlassContainerO4ItemVGzc_AK22BackdropProxyTransform33_FD0C880ACFE431F75FFFB08913C85A9CLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK013BackdropProxyI033_FD0C880ACFE431F75FFFB08913C85A9CLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK015ForegroundLayeriJ033_BCBFDABE28FEE061FC04EF9B5F079DC4LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16PreferenceValuesV_AK21HostPreferencesWriter33_62AFEFEED1A7034F09E120B80AB01BF9LLVyAK024ContentCaptureProtectionI3KeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI0C16ActionDispatcherVyAK01_cI9Modifier2VySiGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13CanvasSymbols027_F41195D4CD7D6A29110580DFD3L4F891LLV5ChildVG_ANTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK05ChildI033_3B04936F6043A290A3E53AE94FE09355LLVyAK16RedactionReasonsVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContainerStorageView33_0D94FA50AC33D329AB9E24A7FB1C1182LLV_AN4InitVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK13GestureFilter33_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLVyAK03AddK8ModifierVyAK06_EndedK0VyAK03TapK0VGAK07DefaultK8CombinerVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK13GestureFilter33_08277CBBA2E58018469F76809601658CLLVy8Gestures12TapComponentVyAR10TouchEventVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyAK13TappableEventVG_AK04Map2J033_BE6C3883808EC258A2B6649DC967D317LLVyAO12CoreGraphics7CGFloatVAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyAK13TappableEventVG_AK04Map2J033_BE6C3883808EC258A2B6649DC967D317LLVyAOSdAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK20HitTestBindingFilter33_D16C83991EAE21A87411739F6DC01498LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11StrokeStyleV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16ResolvedGradientV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16_ShapeStyle_PackV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8AnyShapeV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9AnyLayoutV_AK010AnimatableA0VyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK9RectangleVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK03AnyI0VAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK7EllipseVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK6CircleVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK4PathVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK017ContainerRelativeI0VAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jP8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16_ShapeStyle_PackV_AK0iJ8ResolverVyAK18EllipticalGradientVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK9RectangleVAK18EllipticalGradientVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAQGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK16RoundedRectangleVAK15ForegroundStyleVG_AK10StaticBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jP8AccessorVyAOGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16_ShapeStyle_PackV_AK0iJ8ResolverVyAK15AngularGradientVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK9RectangleVAK15AngularGradientVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAQGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16_ShapeStyle_PackV_AK0iJ8ResolverVyAK14RadialGradientVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10_ShapeViewVyAK9RectangleVAK14RadialGradientVG_AK11DynamicBody33_A4C1D658B3717A3062FEFC91A812D6EBLLVyAK0jO8AccessorVyAQGAK16AsyncThreadFlagsATLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16_ShapeStyle_PackV_AK0iJ8ResolverVyAK12MeshGradientVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK04MaskhI033_54E6DAD00141A3A8A16D035537438F55LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI12ViewGeometryVG_AK21LayoutChildGeometriesVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14SafeAreaInsetsV_AK01_hiJ8ModifierV0J033_C4DC82F2A500E9B6DEA3064A36584B42LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI4PathV_AK012ContentShapeH0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14SafeAreaInsetsV_AK012InsetPrimaryH5AreasVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK04RootI033_7D9EDEF832940A362646A6E979F296C8LLVTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(unsigned int *a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06StaticiJ033_A7DFBD5AC47BCDAAE5525781FBD33CF6LLVyAK010GlassEntryI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06StaticiJ033_A7DFBD5AC47BCDAAE5525781FBD33CF6LLVyAK011GlassEffectI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06StaticiJ033_A7DFBD5AC47BCDAAE5525781FBD33CF6LLVyAK014GeometryReaderI033_7D6D22DF7076CCC1FC5284D8E2D1B049LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK013ResolvedImageiJ033_A3C1DB6976F54697C11EFA754256BBD1LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOy12CoreGraphics7CGFloatVG_AK014StateContainerJ033_EA62389F5A6356B5DBAFB6A6AFC6ECC7LLVyAK08DistanceI0V0N4TypeVApK12SpatialEventVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_12CoreGraphics7CGFloatV_AA3MapVy7SwiftUI17EnvironmentValuesVAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI01_B6InputsV5PhaseV_AK18ResetDeltaModifier33_C38EF38637B6130AEFD462CBD5EAC727LLV05ChildI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewSizeV_AK07RoundedI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Sb_AA3MapVy7SwiftUI17EnvironmentValuesVSbGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI4AxisO3SetV_AA3MapVyAK17EnvironmentValuesVAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10EdgeInsetsV_AA3MapVyAK17EnvironmentValuesVAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So7CGPointV_7SwiftUI19LayoutPositionQueryVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewList_p_AK01_hI7OutputsVAKE14ApplyModifiers33_E479C0E92CDD045BAF2EF653123E2E0BLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI4AxisOSg_AK19AnyLayoutPropertiesVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12PlatformItemV_AK12_ViewOutputsVAKE05FirstI033_391C8788DFD73AA8AB21B496A57C73FFLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI4TextVSg_AK0H14SuffixModifier33_3A0E49913D84545BECD562BC22E4DF1CLLV08OptionalH0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9UnitPointVSg_AK29ScrollPositionBindingModifierV14AdjustedAnchorVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI24GestureConstantsProvider_pXpSg_AA3MapVyAK17EnvironmentValuesVAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8MaterialVSg_AK025GlassEffectContextUpdatedH033_62A32D59B8A902A88963544196023CF7LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19GlassContainerCacheC17UnwrappedMaterialV_AK0h13EffectContextkL033_62A32D59B8A902A88963544196023CF7LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI5ImageV12DynamicRangeVSg_AK012DrawingGroupiJ033_13DB74067CC303A724F4EF8CA51D6069LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18TintAdjustmentModeV_AA3MapVyAK17EnvironmentValuesVAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16RedactionReasonsV_AA3MapVyAK17EnvironmentValuesVAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18ContainerShapeDataV_AA3MapVyAK17EnvironmentValuesVAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewSizeV_AK010ConcentricI033_7079FF89BCF97F81EB250A589B9A5CEDLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So7CGPointV_7SwiftUI18ConcentricPosition33_7079FF89BCF97F81EB250A589B9A5CEDLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Si_7SwiftUI15_ViewListInputsVAKE21ContentOffsetMutation022_0A5F33F1FD54F6946F5E3P9CF78D7A25LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Si_AA3MapVy7SwiftUI8ViewList_pSiGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI7ForEachVys5SliceVyAK18SubviewsCollectionVGAK7SubviewV2IDVATG_AK0klJ0V5Child33_B0B39CD9AD4D5C78B1166BFF4E214610LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI7ForEachVyAK22_VariadicView_ChildrenVs11AnyHashableVAO7ElementVG_AO5Child33_9B09D1820E97ECBB666F7560EA2A2D2CLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI33PlatformImageRepresentableContextV_AK0I0VAKE8ResolvedV04MakejK033_A3C1DB6976F54697C11EFA754256BBD1LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI23FlexInteractionModifierV_AK010GlassEntryhiJ033_D12F2F25A0BD65FFBD3A7636B60067DFLLV04InitJ0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11GestureMaskV_AA3MapVyAK03AddH8ModifierVyAK06_EndedH0VyAK03TapH0VGAK07DefaultH8CombinerVGAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI26_GlassContainerStorageViewV_AM4InitVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewSizeV_AK06SwitchD033_FA9894D0C4D7B26BF15DCFDACF212F4BLLVyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So7CGPointV_7SwiftUI06SwitchD033_FA9894D0C4D7B26BF15DCFDACF212F4BLLVyALGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_s6UInt32V_7SwiftUI15RepeatResetSeed33_BECD07FC80B4CA0BF429B041392E806ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyytG_AK03TapH0V0I033_067A6A2846A89ACCD702678B6B8D0D6FLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15GestureCategoryV_AK0iH0V8Combiner33_BD70527AFCE562B27D7DD6D56847C2B8LLVyAK13TappableEventV_ATGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16ArrayWith2InlineVySS_SStG_AA3MapVyAK18EventListenerPhase33_D4E5D14C6252B45A30FB249B3DBDFD35LLVAEVyAK07SpatialL0V_GANGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16ArrayWith2InlineVySS_SStG_AA3MapVyAK18EventListenerPhase33_D4E5D14C6252B45A30FB249B3DBDFD35LLVAEVyAK08TappableL0V_GANGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifierGestureVyAK22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLVyAK13TappableEventVGAMyAK08CategoryI0VyARGAMyAK06RepeatI0VyARGAK06SinglekI0VyARGGGG_AK0kI0V5Child33_067A6A2846A89ACCD702678B6B8D0D6FLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18HoverEffectContextVSg_AA3MapVyAK17EnvironmentValuesVANGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewSizeV_AK04MakehI033_C0D10AA931311CA6CC13B4B7FD14DCB3LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI16TimelineSchedule_pSg_AA3MapVyAK18ResolvedStyledTextCAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11ControlSizeO_AA3MapVyAK17EnvironmentValuesVAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_s6UInt32V_7SwiftUI12AnyResetSeed33_9726BF9F3BA5F571B5F201AD7C8C86F0LLVyytGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyytG_AK06LayoutI033_05F3243F43C616B77CCF383885E80E96LLVyAK07DefaultjH0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK011LayoutChildI033_A7DFBD5AC47BCDAAE5525781FBD33CF6LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI01_B6InputsV5PhaseV_AK015PlaceholderViewI033_9B09D1820E97ECBB666F7560EA2A2D2CLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI22UserInterfaceSizeClassOSg_AA3MapVyAK17EnvironmentValuesVANGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK024PartialContainerRelativeI0VG_AM4InitVyAO_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK22UnevenRoundedRectangleVG_AM4InitVyAO_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK22UnevenRoundedRectangleV6_InsetVG_AM4InitVyAQ_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK19ConcentricRectangleVG_AM4InitVyAO_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK16RoundedRectangleVG_AM4InitVyAO_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK16RoundedRectangleV6_InsetVG_AM4InitVyAQ_GTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(unsigned int *a1, uint64_t a2)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06StaticiJ033_A7DFBD5AC47BCDAAE5525781FBD33CF6LLVyAK07_ZStackI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06StaticiJ033_A7DFBD5AC47BCDAAE5525781FBD33CF6LLVyAK07_HStackI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06StaticiJ033_A7DFBD5AC47BCDAAE5525781FBD33CF6LLVyAK07_VStackI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK9RectangleVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK9RectangleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK7EllipseVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK7EllipseV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK7CapsuleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK6CircleVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK6CircleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK017ImplicitContainerR0VAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK017ContainerRelativeR0VAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK017ContainerRelativeS0V6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06StaticiJ033_A7DFBD5AC47BCDAAE5525781FBD33CF6LLVyAK06ZStackI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06StaticiJ033_A7DFBD5AC47BCDAAE5525781FBD33CF6LLVyAK06VStackI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06StaticiJ033_A7DFBD5AC47BCDAAE5525781FBD33CF6LLVyAK06HStackI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15LayoutDirectionO_AA3MapVyAK17EnvironmentValuesVAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11ColorSchemeO_AA3MapVyAK17EnvironmentValuesVAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK9RectangleV6_InsetVG_AM4InitVyAQ_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK7EllipseV6_InsetVG_AM4InitVyAQ_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK7CapsuleV6_InsetVG_AM4InitVyAQ_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK6CircleV6_InsetVG_AM4InitVyAQ_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK017ContainerRelativeI0V6_InsetVG_AM4InitVyAQ_GTt1g5;
}

uint64_t *(*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())()
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20DynamicViewContainer031_3FB6ABB0477B815AB3C89DD5EDC9F0S0LLVAEVyAK016DebugReplaceableJ0V_G_ANyAQGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20DynamicViewContainer031_3FB6ABB0477B815AB3C89DD5EDC9F0S0LLVAEVyAK03AnyJ0V_G_ANyAQGTt1g5;
}

uint64_t (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(uint64_t a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13GeometryProxyV_AK010ConcentricJ033_7079FF89BCF97F81EB250A589B9A5CEDLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK05UnaryiJ033_1C3B77B617AD058A6802F719E38F5D79LLVyAK06_FrameI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK05UnaryiJ033_1C3B77B617AD058A6802F719E38F5D79LLVyAK08_PaddingI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK05UnaryiJ033_1C3B77B617AD058A6802F719E38F5D79LLVyAK010_FlexFrameI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK018UnaryPositionAwareiJ033_1C3B77B617AD058A6802F719E38F5D79LLVyAK024_SafeAreaRegionsIgnoringI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewList_p_AK04BasehI033_E479C0E92CDD045BAF2EF653123E2E0BLLV4InitVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK023UnaryPositionAwareChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK27ContainerCornerOffsetLayout33_1EB28CBBC8B70D90A6FD32242CBBC5E6LLVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_So7CGPointV_7SwiftUI14OffsetPosition33_72FB21917F353796516DFC9915156779LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI32ScrapeableAttachmentViewModifier010_0EC4D15D4N21D8FD0340271BA6BA4D1B4LLV0I0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AMt_AK010InsetChildI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI15ModifiedContentVyAK28AutomaticPaddingViewModifier33_47C1BD8C61550BB60F4F3D12F752D53DLLV0K6LayoutV07WrappedW0VAK015_SafeAreaInsetsM0VG_ARTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI8ViewList_p_AK11MakeSection33_C1B8B6896BB94C69479F427820712D02LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ViewGeometryV_AK023UnaryPositionAwareChildI033_1C3B77B617AD058A6802F719E38F5D79LLVyAK30_SafeAreaRegionsIgnoringLayoutVGTt1g5;
}

void (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(unsigned int *a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK9RectangleVAKE17AsymmetricalInsetVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06StaticiJ033_A7DFBD5AC47BCDAAE5525781FBD33CF6LLVyAK019FlexibleButtonFrameI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK7CapsuleVAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK018DefaultGlassEffectR0VAK15ForegroundStyleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK22UnevenRoundedRectangleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK22UnevenRoundedRectangleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK19ConcentricRectangleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK16RoundedRectangleVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK013ResetPositionI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK014ContainerShapeI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK020CoreInteractionChildI033_03AF342AA286115256FF95C286FEA7E3LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK012InsetPrimaryI0VTt1g5;
}

double (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(uint64_t *a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK010StyledTextJ6FilterVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06MergedH033_9FF97745734808976F608CE0DC13C39CLLVTt1g5;
}

double (*specialized closure #1 in closure #1 in Attribute.init<A>(_:)())(unsigned int *a1)
{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK010StyledTextiJ033_641995D812913A47B866B20B88782376LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyAK13TappableEventVG_AK03MapJ033_EA8BFBF553A9179E7F3A85C72F795A9FLLVyA2OGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK16RoundedRectangleV6_InsetVGGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06StaticiJ033_A7DFBD5AC47BCDAAE5525781FBD33CF6LLVyAK03AnyI0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataVSg_AK10ToOptional33_372497ED4F569296C4450147CA418CD0LLVyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK21MaskDefaultForegroundVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI18ScrollStateRequest_pG_AK19PreferenceTransform33_D3405DB583003A73D556A7797845B7F4LLVyAK06UpdatehiJ3KeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_SDy7SwiftUI16ScrollTargetRoleV0J0OSayAK20ScrollableCollection_pGG_AK19PreferenceTransform33_D3405DB583003A73D556A7797845B7F4LLVyAM10ContentKeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI25_LazyLayout_PlacedSubviewVG_AK0H26PreferencePrefetchSubviews33_EB2336F1CBB87914F55D10FF4F9B475ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI25_LazyLayout_PlacedSubviewVG_AK0H19CollectedPlacements33_EB2336F1CBB87914F55D10FF4F9B475ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI9_ShapeSetV7WrapperV_AO4InitVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AK20MountableViewOutputsV0hi5ProxyK0V04MakehI033_C0D10AA931311CA6CC13B4B7FD14DCB3LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK22PrimitiveGlassItemView33_D12F2F25A0BD65FFBD3A7636B60067DFLLV0lhI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06UpdateH033_E370275CDB55AC7AD9ACF0420859A9E8LLVyAK17LineLimitModifierVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK18TextSuffixModifier33_3A0E49913D84545BECD562BC22E4DF1CLLV05ChildH0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK05ChildH033_A1B10B5AB036C34AB7DD2EE8825FCA93LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK018GlassEffectContextH033_62A32D59B8A902A88963544196023CF7LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK19_DrawingGroupEffectV05ChildH033_13DB74067CC303A724F4EF8CA51D6069LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI14GlassContainerO4ItemVG_AK19PreferenceTransform33_D3405DB583003A73D556A7797845B7F4LLVyAO3KeyVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK24_ForegroundColorModifierV05ChildH033_C468F93725C18A8D97E53626AB610118LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20ContentShapePathDataVSg_AK19PreferenceTransform33_D3405DB583003A73D556A7797845B7F4LLVyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14PreferenceKeysV_AK14makeHiddenView07allowedI06inputs4bodyAK01_L7OutputsVAK07Allowedhi5WhileK0V_AK01_L6InputsVAsK01_B0V_AWtctF04HostI0L_VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK014ContainerShapeH033_E7F652304F78E63E0DE3A54ABB60E18ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI23ContentTransitionEffectV_AA3MapVyAK17EnvironmentValuesVAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK017GlassEffectHiddenH008_3DF70D9N23D7473F4D189A049B764CFEFLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI27GlassEffectBackdropObserverCSg_AA3MapVyAK17EnvironmentValuesVANGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI6_GlassV_AK0h10EffectItemH008_3DF70D9L23D7473F4D189A049B764CFEFLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySay7SwiftUI14GlassContainerO4ItemVGzc_AK0H24EffectTransitionModifier33_44FBBCADDAFBB91038EC35E704B81E23LLV9TransformVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12PlatformItemV15GeometryContentV_AO4InitVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK018GlassContainerTintH033_EC08899B622ECCACC85E95BA1EEBE316LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI16ScrollPhaseStateVG_AK0hI8ProviderVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK26_PreferenceWritingModifierVA2K23PreferredColorSchemeKeyVRszrlE0nO3Env33_E52508E85535897B9A366B470195B29DLLVyAQ_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK26_PreferenceWritingModifierVA2K23PreferredColorSchemeKeyVRszrlE0opI033_E52508E85535897B9A366B470195B29DLLVyAQ_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ForEachStateC4InfoVys5SliceVyAK18SubviewsCollectionVGAK7SubviewV2IDVAV_G_AO4InitVyAtxV__GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ForEachStateC4InfoVyAK22_VariadicView_ChildrenVs11AnyHashableVAQ7ElementV_G_AO4InitVyAqsU__GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ForEachStateC4InfoVySayAK14GlassContainerO5EntryVGAS8StableIDVAK15ModifiedContentVyAXyAK6ZStackVyAK0lnM4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAK21_TraitWritingModifierVyAK12_LayoutTraitVyAK0L12EffectLayoutA0_LLV3KeyVGGGA4_yAK18TransitionTraitKeyVGG_G_AO4InitVyAtVA17___GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ForEachStateC4InfoVySayAK14GlassContainerO4ItemVGAS2IDVAK0lN4View33_D12F2F25A0BD65FFBD3A7636B60067DFLLV_G_AO4InitVyAtvY__GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK01_I15WritingModifierV03AddI033_48526BA25CDCBF890FA91D018A5421B4LLVyAK07_LayoutI0VyAK010GlassEntryT033_D12F2F25A0BD65FFBD3A7636B60067DFLLV3KeyVG_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK01_I15WritingModifierV03AddI033_48526BA25CDCBF890FA91D018A5421B4LLVyAK010TransitionI3KeyV_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI38PlatformNamedImageRepresentableContextV_AK0J0V04MakekL033_BE2D783904D422377BBEBAC3C942583CLLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI38_ForegroundLayerLevelColorMatrixEffectV_AA5FocusVyAK01_hiklM0VAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI18AddGestureModifierVyAK06_EndedI0VyAK03TapI0VGAK07DefaultI8CombinerVG_AK0liJ033_067A6A2846A89ACCD702678B6B8D0D6FLLV0I5ChildVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14PreferenceKeysV_AK06SwitchD033_FA9894D0C4D7B26BF15DCFDACF212F4BLLVyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11TransactionV_AK06SwitchD033_FA9894D0C4D7B26BF15DCFDACF212F4BLLVyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06SwitchD033_FA9894D0C4D7B26BF15DCFDACF212F4BLLVyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13ViewTransformV_AK06SwitchD033_FA9894D0C4D7B26BF15DCFDACF212F4BLLVyAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_ySiSgzc_7SwiftUI22RequiredTapCountWriter33_7C0ADFDC1D38FCDDCFDE5CE8530A0B2ELLV5ChildVyAL13TappableEventV_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyAK13TappableEventVG_AK0k6FilterI033_DE98B8F5384114B687077BAB0EFA27D9LLVyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14FilteredEvents33_DE98B8F5384114B687077BAB0EFA27D9LLV_AK011EventFilterI0AMLLVyAK08TappableQ0VGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyAK13TappableEventVGAP_AMy12CoreGraphics7CGFloatVGtc_AA5FocusVyAK04Map2H0VyAoK08ModifierH0VyAK015CoordinateSpaceH0VyASGAK08DistanceH0VGAOGA2P_ATtcGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyAK13TappableEventVGAP_AMySdGtc_AA5FocusVyAK04Map2H0VyAoK08ModifierH0VyAK08DurationH0VyAOGAK0K8ListenerVyAOGGAOGA2P_AQtcGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyAK13TappableEventVG_AK09DependentI033_8687835E41FEE17B108D67665C1D2D0BLLVyAOGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06UpdateH24CustomHoverEffectContext33_B2E20BEC96D7E01EE3D55A38320E6294LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK033ClearCustomHoverEffectContextFromH033_B2E20BEC96D7E01EE3D55A38320E6294LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ViewTraitCollectionV_AK05DepthI0VTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI25ViewListArchivedAnimation33_FF3C661D9D8317A1C8FE2B7FD4EDE12CLLV6EffectV_ANTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20MountableViewOutputsV016DisplayListProxyI0V_AK04MakehikL033_C0D10AA931311CA6CC13B4B7FD14DCB3LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI20MountableViewOutputsV14LayoutComputerV_AK04MakehikL033_C0D10AA931311CA6CC13B4B7FD14DCB3LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI10AnyGestureVyytG_AA3MapVyAK18ResolvedStyledTextCANGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI19ScrollAnchorStorageV_AA3MapVyAK17EnvironmentValuesVAMGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI19LazyLayoutCacheItemCG_AK0H23PreferencePrefetchItems33_EB2336F1CBB87914F55D10FF4F9B475ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14PreferenceKeysV_AK05MergehI033_DF57A19C61B44C613EB77C1D47FC679ALLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI11DisplayListV_AM7VersionVt_AK04RoothI033_7D9EDEF832940A362646A6E979F296C8LLVTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI17EnvironmentValuesV_AK06UpdateH033_E370275CDB55AC7AD9ACF0420859A9E8LLVyAK25SystemColorSchemeModifierVGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI13AnimatedShapeVyAK03AnyI0VG_AM4InitVyAO_GTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_y7SwiftUI11TransactionVzc_AA3MapVyAK01_cH8ModifierVySbGyAMzcGTt1g5;
}

{
  return _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA4RuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12ForEachStateC4InfoVySnySiGSiAK15ModifiedContentVyARyAK13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAK01_C19TransactionModifierVySdGGAK13_OffsetEffectVG_G_AO4InitVyAPSiA0___GTt1g5;
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06StaticiJ033_A7DFBD5AC47BCDAAE5525781FBD33CF6LLVyAK010GlassEntryI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGTt1g5(unsigned int *a1)
{
  Value = AGGraphGetValue();
  memcpy(__dst, Value, sizeof(__dst));
  v3 = a1[1];
  v4 = *(a1 + 1);
  outlined init with copy of GlassEntryLayout(__dst, &v6);
  specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(__dst, v3, v4);
  return outlined destroy of GlassEntryLayout(__dst);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06StaticiJ033_A7DFBD5AC47BCDAAE5525781FBD33CF6LLVyAK011GlassEffectI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGTt1g5(unsigned int *a1)
{
  Value = AGGraphGetValue();
  v3 = *(Value + 16);
  v11[0] = *Value;
  v11[1] = v3;
  v5 = *(Value + 48);
  v4 = *(Value + 64);
  v6 = *(Value + 80);
  v11[2] = *(Value + 32);
  v12 = v6;
  v11[3] = v5;
  v11[4] = v4;
  v7 = a1[1];
  v8 = *(a1 + 1);
  outlined init with copy of GlassEffectLayout(v11, v10);
  specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v11, v7, v8);
  return outlined destroy of GlassEffectLayout(v11);
}

void _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_yt_7SwiftUI24ConcentricPaddingUpdater33_7079FF89BCF97F81EB250A589B9A5CEDLLVTt1g5(double *a1)
{
  Value = AGGraphGetValue();
  v3 = *Value;
  v4 = Value[1];
  v5 = Value[2];
  v6 = Value[3];
  if (ConcentricPaddingUpdater.oldValue.getter() != v3 || v7 != v4 || v8 != v5 || v9 != v6)
  {
    v13 = AGCreateWeakAttribute();
    specialized static GraphHost.currentHost.getter();
    *&v14 = v13;
    BYTE8(v14) = 0;
    v15 = v3;
    v16 = v4;
    v17 = v5;
    v18 = v6;
    specialized GraphHost.continueTransaction<A>(_:)(&v14);
  }

  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
  a1[5] = v6;
  *(a1 + 48) = 0;
}

void _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK9RectangleVAKE17AsymmetricalInsetVAK15ForegroundStyleVGGTt1g5(unsigned int *a1)
{
  type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>(0);
  Value = AGGraphGetValue();
  v2 = *(Value + 32);
  v3 = *(Value + 33);
  LOBYTE(v5[0]) = 1;
  v4 = *(Value + 16);
  v5[0] = *Value;
  v5[1] = v4;
  v6 = v2;
  v7 = v3;
  v10 = 0u;
  v9 = 0u;
  v8 = 0u;
  v11 = 1;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v15 = 1;
  v18 = 0u;
  v17 = 0u;
  v16 = 0u;
  v19 = 1;
  specialized StatefulRule<>.update<A>(to:)(v5);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK013ResolvedImageiJ033_A3C1DB6976F54697C11EFA754256BBD1LLVTt1g5(unsigned int *a1)
{
  Value = AGGraphGetValue();
  v2 = Value[3];
  v4 = *Value;
  v3 = Value[1];
  v22[2] = Value[2];
  v22[3] = v2;
  v22[0] = v4;
  v22[1] = v3;
  v5 = Value[7];
  v7 = Value[4];
  v6 = Value[5];
  v22[6] = Value[6];
  v22[7] = v5;
  v22[4] = v7;
  v22[5] = v6;
  v9 = Value[9];
  v8 = Value[10];
  v10 = Value[8];
  *(v23 + 11) = *(Value + 171);
  v22[9] = v9;
  v23[0] = v8;
  v22[8] = v10;
  v11 = Value[9];
  v32 = Value[8];
  v33 = v11;
  v34[0] = Value[10];
  *(v34 + 11) = *(Value + 171);
  v12 = Value[5];
  v28 = Value[4];
  v29 = v12;
  v13 = Value[7];
  v30 = Value[6];
  v31 = v13;
  v14 = Value[1];
  v24 = *Value;
  v25 = v14;
  v15 = Value[3];
  v26 = Value[2];
  v27 = v15;
  v20[8] = v32;
  v20[9] = v33;
  v21[0] = v34[0];
  *(v21 + 11) = *(v34 + 11);
  v20[4] = v28;
  v20[5] = v29;
  v20[6] = v30;
  v20[7] = v31;
  v20[0] = v24;
  v20[1] = v25;
  v20[2] = v26;
  v20[3] = v15;
  v18 = v20;
  outlined init with copy of Image.Resolved(v22, v19);
  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v17, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));
  return outlined destroy of Image.Resolved(v22);
}

void _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK05InsetiJ0VTt1g5(__int128 *a1)
{
  CurrentAttribute = AGGraphGetCurrentAttribute();
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v3 = *(a1 + 6);
    LOBYTE(v4) = 1;
    v4 = *a1;
    v5 = *(a1 + 2);
    v6 = v3;
    v7 = CurrentAttribute;
    v9 = 0u;
    v10 = 0u;
    v8 = 0u;
    v11 = 1;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v15 = 1;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    v19 = 1;
    specialized StatefulRule<>.update<A>(to:)(&v4);
  }
}

double _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_Say7SwiftUI13ViewResponderCG_AK010StyledTextJ6FilterVTt1g5(uint64_t *a1)
{
  v1 = *a1;
  StyledTextResponder.update()();
  type metadata accessor for ObservationTracking._AccessList?(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
  if (!AGGraphGetOutputValue())
  {
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Swift.AnyObject>, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_18DDAB4D0;
    *(v3 + 32) = v1;

    AGGraphSetOutputValue();
  }

  return result;
}

double _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK010StyledTextiJ033_641995D812913A47B866B20B88782376LLVTt1g5(unsigned int *a1)
{
  v1 = *AGGraphGetValue();

  v2 = *(AGGraphGetValue() + 8);
  v6[0] = v1;
  v6[1] = v2;
  v5 = v6;

  specialized StatefulRule<>.update<A>(modify:create:)(partial apply for specialized closure #1 in StatefulRule<>.update<A>(to:), v4, partial apply for specialized closure #2 in StatefulRule<>.update<A>(to:));

  return result;
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOy12CoreGraphics7CGFloatVG_AK014StateContainerJ033_EA62389F5A6356B5DBAFB6A6AFC6ECC7LLVyAK08DistanceI0V0N4TypeVApK12SpatialEventVGTt1g5(unsigned int *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  result = specialized ResettableGestureRule.resetIfNeeded()();
  if (result)
  {
    type metadata accessor for StateContainerGesture<DistanceGesture.StateType, SpatialEvent, CGFloat>();
    v3 = *AGGraphGetValue();
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<SpatialEvent>, &type metadata for SpatialEvent, type metadata accessor for GesturePhase);

    Value = AGGraphGetValue();
    v5 = *(Value + 16);
    v21[0] = *Value;
    v21[1] = v5;
    v6 = *(Value + 32);
    v7 = *(Value + 48);
    v8 = *(Value + 64);
    v22 = *(Value + 80);
    v21[3] = v7;
    v21[4] = v8;
    v21[2] = v6;
    v9 = *(Value + 16);
    v13 = *Value;
    v14 = v9;
    v10 = *(Value + 32);
    v11 = *(Value + 48);
    v12 = *(Value + 64);
    v18 = *(Value + 80);
    v16 = v11;
    v17 = v12;
    v15 = v10;
    outlined init with copy of UncheckedSendable<GlassEffectShapeModifier>(v21, v23, &lazy cache variable for type metadata for GesturePhase<SpatialEvent>, &type metadata for SpatialEvent, type metadata accessor for GesturePhase);
    v3(&v19, a1 + 4, &v13);

    v23[2] = v15;
    v23[3] = v16;
    v23[4] = v17;
    v24 = v18;
    v23[0] = v13;
    v23[1] = v14;
    outlined destroy of GlassEntryView?(v23, &lazy cache variable for type metadata for GesturePhase<SpatialEvent>, &type metadata for SpatialEvent, type metadata accessor for GesturePhase);
    *&v13 = v19;
    WORD4(v13) = v20;
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<CGFloat>, MEMORY[0x1E69E7DE0], type metadata accessor for GesturePhase);
    return AGGraphSetOutputValue();
  }

  return result;
}

double _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI12GesturePhaseOyAK13TappableEventVG_AK03MapJ033_EA8BFBF553A9179E7F3A85C72F795A9FLLVyA2OGTt1g5(unsigned int *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (specialized ResettableGestureRule.resetIfNeeded()())
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(0, &lazy cache variable for type metadata for MapGesture<TappableEvent, TappableEvent>, &type metadata for TappableEvent, &type metadata for TappableEvent, type metadata accessor for MapGesture);
    v2 = *AGGraphGetValue();
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, &lazy cache variable for type metadata for GesturePhase<TappableEvent>, &type metadata for TappableEvent, type metadata accessor for GesturePhase);

    Value = AGGraphGetValue();
    v4 = *(Value + 8);
    v5 = *(Value + 16);
    v6 = *(Value + 24);
    *&v8 = *Value;
    *(&v8 + 1) = v4;
    *&v9 = v5;
    *(&v9 + 1) = v6;
    v10 = *(Value + 32);
    v7 = outlined copy of GesturePhase<TappableEvent>(v8, v4, v5, v6, v10, SHIBYTE(v10));
    v2(&v11, &v8, v7);

    outlined consume of GesturePhase<TappableEvent>(v8, *(&v8 + 1), v9, *(&v9 + 1), v10, SHIBYTE(v10));
    v8 = v11;
    v9 = v12;
    v10 = v13;
    AGGraphSetOutputValue();
    return outlined consume of GesturePhase<TappableEvent>(v11, *(&v11 + 1), v12, *(&v12 + 1), v13, SHIBYTE(v13));
  }

  return result;
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK9RectangleVAK15ForegroundStyleVGGTt1g5Tm(unsigned int *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(_BYTE *))
{
  (a3)(0, a2);
  Value = AGGraphGetValue();
  v6 = Value[1];
  v8[0] = *Value;
  v8[1] = v6;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v12 = 1;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v16 = 1;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v20 = 1;
  return a4(v8);
}

uint64_t _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK9RectangleV6_InsetVGGTt1g5Tm(unsigned int *a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t *))
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, a3, a4, a5, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v8 = *(Value + 8);
  v9 = *(Value + 9);
  v11 = *Value;
  v12 = v8;
  v13 = v9;
  v16 = 0u;
  v15 = 0u;
  v14 = 0u;
  v17 = 1;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v21 = 1;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  v25 = 1;
  return a6(&v11);
}

void _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK7CapsuleVAK15ForegroundStyleVGGTt1g5(unsigned int *a1)
{
  type metadata accessor for _ShapeView<Capsule, ForegroundStyle>(0);
  Value = AGGraphGetValue();
  v2 = Value[1];
  v3 = Value[2];
  v4[0] = *Value;
  v4[1] = v2;
  v4[2] = v3;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v8 = 1;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v12 = 1;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v16 = 1;
  specialized StatefulRule<>.update<A>(to:)(v4);
}

__n128 _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK024PartialContainerRelativeS0VGGTt1g5(unsigned int *a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<PartialContainerRelativeShape>, lazy protocol witness table accessor for type PartialContainerRelativeShape and conformance PartialContainerRelativeShape, &type metadata for PartialContainerRelativeShape, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v2 = *(Value + 192);
  v3 = *(Value + 224);
  __src[13] = *(Value + 208);
  __src[14] = v3;
  v4 = *(Value + 128);
  v5 = *(Value + 160);
  v6 = *(Value + 176);
  __src[9] = *(Value + 144);
  __src[10] = v5;
  __src[11] = v6;
  __src[12] = v2;
  v7 = *(Value + 80);
  __src[4] = *(Value + 64);
  __src[5] = v7;
  v8 = *(Value + 112);
  __src[6] = *(Value + 96);
  v13 = *(Value + 240);
  __src[7] = v8;
  __src[8] = v4;
  v9 = *(Value + 16);
  __src[0] = *Value;
  __src[1] = v9;
  v10 = *(Value + 48);
  __src[2] = *(Value + 32);
  __src[3] = v10;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v17 = 1;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 1;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 1;
  specialized StatefulRule<>.update<A>(to:)(__src);
  return result;
}

void _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK10_ShapeViewVyAK018DefaultGlassEffectR0VAK15ForegroundStyleVGGTt1g5(unsigned int *a1)
{
  type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>(0);
  Value = AGGraphGetValue();
  v2 = Value[1];
  v3 = Value[2];
  v4[0] = *Value;
  v4[1] = v2;
  v4[2] = v3;
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v8 = 1;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v12 = 1;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v16 = 1;
  specialized StatefulRule<>.update<A>(to:)(v4);
}

void _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK22UnevenRoundedRectangleVGGTt1g5(unsigned int *a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle>, lazy protocol witness table accessor for type UnevenRoundedRectangle and conformance UnevenRoundedRectangle, &type metadata for UnevenRoundedRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v2 = *(Value + 32);
  v3 = *(Value + 33);
  v4 = *(Value + 34);
  LOBYTE(v6[0]) = 1;
  v5 = *(Value + 16);
  v6[0] = *Value;
  v6[1] = v5;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  v12 = 0u;
  v11 = 0u;
  v10 = 0u;
  v13 = 1;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v17 = 1;
  v20 = 0u;
  v19 = 0u;
  v18 = 0u;
  v21 = 1;
  specialized StatefulRule<>.update<A>(to:)(v6);
}

void _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK22UnevenRoundedRectangleV6_InsetVGGTt1g5(unsigned int *a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<UnevenRoundedRectangle._Inset>, lazy protocol witness table accessor for type UnevenRoundedRectangle._Inset and conformance UnevenRoundedRectangle._Inset, &type metadata for UnevenRoundedRectangle._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v3[0] = *Value;
  v3[1] = v2;
  v3[2] = *(Value + 32);
  v4 = *(Value + 48);
  v7 = 0u;
  v6 = 0u;
  v5 = 0u;
  v8 = 1;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  v12 = 1;
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v16 = 1;
  specialized StatefulRule<>.update<A>(to:)(v3);
}

unsigned __int8 *_s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_s6UInt32V_7SwiftUI0C15TransactionSeedVySbGTt1g5(unsigned int *a1)
{
  result = AGGraphGetValue();
  v3 = *result;
  v4 = *(a1 + 8);
  if (v4 != 2)
  {
    if (((v3 ^ v4) & 1) == 0)
    {
      return result;
    }

    AGGraphClearUpdate();
    AGGraphGetValue();
    AGGraphSetUpdate();
  }

  result = AGGraphSetOutputValue();
  *(a1 + 8) = v3;
  return result;
}

void _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK19ConcentricRectangleVGGTt1g5(unsigned int *a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<ConcentricRectangle>, lazy protocol witness table accessor for type ConcentricRectangle and conformance ConcentricRectangle, &type metadata for ConcentricRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  memcpy(__dst, Value, 0x182uLL);
  v3 = 0u;
  v4 = 0u;
  v5 = 0u;
  v6 = 1;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 1;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v14 = 1;
  specialized StatefulRule<>.update<A>(to:)(__dst);
}

void _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK16RoundedRectangleVGGTt1g5(unsigned int *a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle>, lazy protocol witness table accessor for type RoundedRectangle and conformance RoundedRectangle, &type metadata for RoundedRectangle, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v3 = *(Value + 17);
  v4 = *(Value + 18);
  LOBYTE(v5) = 1;
  v5 = *Value;
  v6 = v2;
  v7 = v3;
  v8 = v4;
  v11 = 0u;
  v10 = 0u;
  v9 = 0u;
  v12 = 1;
  v14 = 0u;
  v15 = 0u;
  v13 = 0u;
  v16 = 1;
  v19 = 0u;
  v18 = 0u;
  v17 = 0u;
  v20 = 1;
  specialized StatefulRule<>.update<A>(to:)(&v5);
}

double _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK04LeafiJ033_65609C35608651F66D749EB1BD9D2226LLVyAK13AnimatedShapeVyAK16RoundedRectangleV6_InsetVGGTt1g5(unsigned int *a1)
{
  type metadata accessor for ViewLayoutEngine<GeometryReaderLayout>(0, &lazy cache variable for type metadata for AnimatedShape<RoundedRectangle._Inset>, lazy protocol witness table accessor for type RoundedRectangle._Inset and conformance RoundedRectangle._Inset, &type metadata for RoundedRectangle._Inset, type metadata accessor for AnimatedShape);
  Value = AGGraphGetValue();
  v2 = *(Value + 16);
  v3 = *(Value + 24);
  v4 = *(Value + 32);
  v5 = *(Value + 33);
  LOBYTE(v7) = 1;
  v7 = *Value;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v14 = 0u;
  v13 = 0u;
  v12 = 0u;
  v15 = 1;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v19 = 1;
  v22 = 0u;
  v21 = 0u;
  v20 = 0u;
  v23 = 1;
  specialized StatefulRule<>.update<A>(to:)(&v7);
  return result;
}

double _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_ySv_So11AGAttributeatcyXEfU_ySv_AJtcfu_7SwiftUI14LayoutComputerV_AK06StaticiJ033_A7DFBD5AC47BCDAAE5525781FBD33CF6LLVyAK03AnyI0VGTt1g5(unsigned int *a1)
{
  AGGraphGetValue();
  v2 = a1[1];
  v3 = *(a1 + 1);

  specialized StatefulRule<>.updateLayoutComputer<A>(layout:environment:attributes:)(v4, v2, v3);

  return result;
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(unsigned int **a1, uint64_t a2)
{
  v5 = a1[1];
  v6 = _minimumMergeRunLength(_:)(v5);
  if (v6 < v5)
  {
    if (v5 < -1)
    {
      goto LABEL_30;
    }

    v8 = v6;
    v9 = v5 / 2;
    if (v5 <= 1)
    {
      v10 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v10 + 16) = v9;
    }

    v28[0] = (v10 + 32);
    v28[1] = v9;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v28, v7, v29, a1, v8, a2);
    *(v10 + 16) = 0;

    return;
  }

  if (v5 < 0)
  {
    goto LABEL_31;
  }

  if (v5)
  {
    v27[0] = v27;
    v27[1] = v2;
    if (v5 != 1)
    {
      v11 = *a1;
      v12 = -1;
      v13 = 1;
      v14 = *a1;
LABEL_14:
      v15 = *(v11 + 4 * v13);
      v16 = v12;
      v17 = v14;
      while (1)
      {
        v18 = *v17;
        v19 = *(a2 + 136);
        if ((v19 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x193AC03C0](v15);
        }

        else
        {
          if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v15)
          {
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            return;
          }
        }

        v21 = *(v20 + 64);

        v22 = *(a2 + 136);
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x193AC03C0](v18);
        }

        else
        {
          if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v18)
          {
            goto LABEL_29;
          }
        }

        v24 = *(v23 + 64);

        if (v21 < v24)
        {
          if (!v11)
          {
            goto LABEL_32;
          }

          v25 = *v17;
          v15 = v17[1];
          *v17 = v15;
          v17[1] = v25;
          --v17;
          if (!__CFADD__(v16++, 1))
          {
            continue;
          }
        }

        ++v13;
        v14 += 4;
        --v12;
        if (v13 == v5)
        {
          return;
        }

        goto LABEL_14;
      }
    }
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(unsigned int **a1, __n128 a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v7 = a4[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_104:
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v7 = v98;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_106:
      v89 = *(v9 + 2);
      if (v89 >= 2)
      {
        while (*a4)
        {
          v90 = *&v9[16 * v89];
          v91 = *&v9[16 * v89 + 24];
          specialized _merge<A>(low:mid:high:buffer:by:)((*a4 + 4 * v90), (*a4 + 4 * *&v9[16 * v89 + 16]), (*a4 + 4 * v91), v10, a6);
          if (v7)
          {
            goto LABEL_114;
          }

          if (v91 < v90)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
          }

          if (v89 - 2 >= *(v9 + 2))
          {
            goto LABEL_134;
          }

          v92 = &v9[16 * v89];
          *v92 = v90;
          *(v92 + 1) = v91;
          specialized Array.remove(at:)(v89 - 1);
          v89 = *(v9 + 2);
          if (v89 <= 1)
          {
            goto LABEL_114;
          }
        }

        goto LABEL_144;
      }

LABEL_114:

      return;
    }

LABEL_140:
    v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    goto LABEL_106;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = (*a4 + 4 * v10);
      v13 = *v11;
      v12 = v11 + 2;
      v14 = specialized lessThan #1 <A>(_:_:) in DynamicContainerInfo.updateValue()(*(*a4 + 4 * v8), v13, a6);
      v15 = (v10 + 2);
      while (v7 != v15)
      {
        v17 = *(v12 - 1);
        v16 = *v12;
        v18 = *(a6 + 136);
        if ((v18 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x193AC03C0](v16);
        }

        else
        {
          if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v16)
          {
            goto LABEL_117;
          }
        }

        v20 = *(v19 + 64);

        v21 = *(a6 + 136);
        if ((v21 & 0xC000000000000001) != 0)
        {
          v22 = MEMORY[0x193AC03C0](v17);
        }

        else
        {
          if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v17)
          {
            goto LABEL_118;
          }
        }

        v23 = *(v22 + 64);

        ++v15;
        ++v12;
        if (((v14 ^ (v20 >= v23)) & 1) == 0)
        {
          v7 = (v15 - 1);
          break;
        }
      }

      if (v14)
      {
        if (v7 < v10)
        {
          goto LABEL_139;
        }

        if (v10 < v7)
        {
          v24 = v7 - 1;
          v25 = v10;
          do
          {
            if (v25 != v24)
            {
              v27 = *a4;
              if (!*a4)
              {
                goto LABEL_143;
              }

              v28 = *(v27 + 4 * v25);
              *(v27 + 4 * v25) = *(v27 + 4 * v24);
              *(v27 + 4 * v24) = v28;
            }
          }

          while (++v25 < v24--);
        }
      }

      v8 = v7;
    }

    v29 = a4[1];
    if (v8 < v29)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a5)
      {
        v30 = v10 + a5;
        if (__OFADD__(v10, a5))
        {
          goto LABEL_137;
        }

        if (v30 >= v29)
        {
          v30 = a4[1];
        }

        if (v30 < v10)
        {
          goto LABEL_138;
        }

        if (v8 != v30)
        {
          break;
        }
      }
    }

LABEL_52:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v45 = *(v9 + 2);
    v44 = *(v9 + 3);
    v7 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v9);
    }

    *(v9 + 2) = v7;
    v46 = &v9[16 * v45];
    *(v46 + 4) = v10;
    *(v46 + 5) = v8;
    v47 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v45)
    {
      while (1)
      {
        v48 = v7 - 1;
        if (v7 >= 4)
        {
          break;
        }

        if (v7 == 3)
        {
          v49 = *(v9 + 4);
          v50 = *(v9 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_72:
          if (v52)
          {
            goto LABEL_124;
          }

          v65 = &v9[16 * v7];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_127;
          }

          v71 = &v9[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_131;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v7 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v75 = &v9[16 * v7];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_86:
        if (v70)
        {
          goto LABEL_126;
        }

        v78 = &v9[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_129;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_93:
        v86 = v48 - 1;
        if (v48 - 1 >= v7)
        {
          goto LABEL_119;
        }

        if (!*a4)
        {
          goto LABEL_142;
        }

        v87 = *&v9[16 * v86 + 32];
        v10 = *&v9[16 * v48 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a4 + 4 * v87), (*a4 + 4 * *&v9[16 * v48 + 32]), (*a4 + 4 * v10), v47, a6);
        v7 = v98;
        if (v98)
        {
          goto LABEL_114;
        }

        if (v10 < v87)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v86 >= *(v9 + 2))
        {
          goto LABEL_121;
        }

        v98 = 0;
        v88 = &v9[16 * v86];
        *(v88 + 4) = v87;
        *(v88 + 5) = v10;
        specialized Array.remove(at:)(v48);
        v7 = *(v9 + 2);
        if (v7 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v9[16 * v7 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_122;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_123;
      }

      v60 = &v9[16 * v7];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_125;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_128;
      }

      if (v64 >= v56)
      {
        v82 = &v9[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_132;
        }

        if (v51 < v85)
        {
          v48 = v7 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v7 = a4[1];
    if (v8 >= v7)
    {
      goto LABEL_104;
    }
  }

  v7 = *a4;
  v31 = *a4 + 4 * v8 - 4;
  v93 = v10;
  v32 = (v10 - v8);
  v96 = v30;
LABEL_37:
  v33 = *(v7 + 4 * v8);
  v34 = v32;
  v10 = v31;
  while (1)
  {
    v35 = *v10;
    v36 = *(a6 + 136);
    if ((v36 & 0xC000000000000001) == 0)
    {
      if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) > v33)
      {

        goto LABEL_41;
      }

      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
LABEL_130:
      __break(1u);
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
LABEL_133:
      __break(1u);
LABEL_134:
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v37 = MEMORY[0x193AC03C0](v33);
LABEL_41:
    v38 = *(v37 + 64);

    v39 = *(a6 + 136);
    if ((v39 & 0xC000000000000001) != 0)
    {
      v40 = MEMORY[0x193AC03C0](v35);
    }

    else
    {
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v35)
      {
        goto LABEL_116;
      }
    }

    v41 = *(v40 + 64);

    if (v38 >= v41)
    {
LABEL_36:
      ++v8;
      v31 += 4;
      --v32;
      if (v8 == v96)
      {
        v8 = v96;
        v10 = v93;
        goto LABEL_52;
      }

      goto LABEL_37;
    }

    if (!v7)
    {
      break;
    }

    v42 = *v10;
    v33 = *(v10 + 4);
    *v10 = v33;
    *(v10 + 4) = v42;
    v10 -= 4;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

void specialized _merge<A>(low:mid:high:buffer:by:)(char *__dst, char *__src, char *a3, unsigned int *a4, uint64_t a5)
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 2;
  v13 = a3 - __src;
  v14 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 2;
  if (v12 < v14 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v12] <= a4)
    {
      memmove(a4, __dst, 4 * v12);
    }

    v16 = &v6[v12];
    if (v10 < 4)
    {
LABEL_10:
      v8 = v9;
LABEL_51:
      if (v8 != v6 || v8 >= (v6 + ((v16 - v6 + (v16 - v6 < 0 ? 3uLL : 0)) & 0xFFFFFFFFFFFFFFFCLL)))
      {
        memmove(v8, v6, 4 * (v16 - v6));
      }

      return;
    }

    while (1)
    {
      if (v8 >= v7)
      {
        goto LABEL_10;
      }

      v19 = *v8;
      v20 = *v6;
      v21 = *(a5 + 136);
      if ((v21 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x193AC03C0](v19);
      }

      else
      {
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v19)
        {
          goto LABEL_56;
        }
      }

      v23 = *(v22 + 64);

      v24 = *(a5 + 136);
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x193AC03C0](v20);
      }

      else
      {
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v20)
        {
          goto LABEL_58;
        }
      }

      v26 = *(v25 + 64);

      if (v23 < v26)
      {
        break;
      }

      v17 = v6;
      v18 = v9 == v6++;
      if (!v18)
      {
        goto LABEL_12;
      }

LABEL_13:
      v9 += 4;
      if (v6 >= v16)
      {
        goto LABEL_10;
      }
    }

    v17 = v8;
    v18 = v9 == v8++;
    if (v18)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v9 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v15] <= a4)
  {
    memmove(a4, __src, 4 * v15);
  }

  v16 = &v6[v15];
  if (v13 < 4 || v8 <= v9)
  {
    goto LABEL_51;
  }

LABEL_32:
  v27 = v8 - 1;
  v7 -= 4;
  v28 = v16;
  while (1)
  {
    v30 = *--v28;
    v29 = v30;
    v31 = *v27;
    v32 = *(a5 + 136);
    if ((v32 & 0xC000000000000001) == 0)
    {
      break;
    }

    v33 = MEMORY[0x193AC03C0](v29);
LABEL_37:
    v34 = *(v33 + 64);

    v35 = *(a5 + 136);
    if ((v35 & 0xC000000000000001) != 0)
    {
      v36 = MEMORY[0x193AC03C0](v31);
    }

    else
    {
      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) <= v31)
      {
        goto LABEL_57;
      }
    }

    v37 = *(v36 + 64);

    v38 = (v7 + 4);
    if (v34 < v37)
    {
      if (v38 != v8)
      {
        *v7 = *v27;
      }

      if (v16 <= v6 || (--v8, v27 <= v9))
      {
        v8 = v27;
        goto LABEL_51;
      }

      goto LABEL_32;
    }

    if (v38 != v16)
    {
      *v7 = *v28;
    }

    v7 -= 4;
    v16 = v28;
    if (v28 <= v6)
    {
      v16 = v28;
      goto LABEL_51;
    }
  }

  if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) > v29)
  {

    goto LABEL_37;
  }

  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}