void one-time initialization function for privateSystemAssetManager()
{
  v0 = [objc_opt_self() private];
  if (v0)
  {
    v1 = v0;
    v2 = v0;
    v3 = private_nofill_to_fill.getter();
    v4 = private_name_aliases.getter();
    v5 = private_symbol_order.getter();
    v6 = objc_allocWithZone(MEMORY[0x1E6999368]);
    v7 = specialized @nonobjc CUICatalog.init(name:from:error:)(0x737465737341, 0xE600000000000000, v1);

    static Image.Location.privateSystemAssetManager = v7;
    off_1ED52C9C8 = v3;
    off_1ED52C9D0 = v4;
    unk_1ED52C9D8 = v5;
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

void lazy protocol witness table accessor for type AllowsHitTestingFilter and conformance AllowsHitTestingFilter()
{
  if (!lazy protocol witness table cache variable for type AllowsHitTestingFilter and conformance AllowsHitTestingFilter)
  {
    swift_getWitnessTable(protocol conformance descriptor for AllowsHitTestingFilter, &unk_1F00B2198, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type AllowsHitTestingFilter and conformance AllowsHitTestingFilter);
  }
}

void *_s7SwiftUI14LayoutComputerVyACxcAA0C6EngineRzlufCAA05UnarycE033_1C3B77B617AD058A6802F719E38F5D79LLVyAA023IgnoresAutomaticPaddingC033_47C1BD8C61550BB60F4F3D12F752D53DLLVG_Tt1B5Tm@<X0>(const void *a1@<X0>, uint64_t (*a2)(void, __n128)@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t *a4@<X8>)
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

    *(v8 + 524) = v11;
    *(v8 + 528) = v10;
  }

  else
  {
    (a3)(0);
    v8 = swift_allocObject();
  }

  result = memcpy((v8 + 16), a1, 0x1F9uLL);
  *a4 = v8;
  a4[1] = 0;
  return result;
}

uint64_t static Animatable.makeAnimatable(value:inputs:)(unsigned int *a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v7[2] = a2[2];
  v8 = v4;
  (*(a4 + 48))(&v8, v7, a3);
  return v8;
}

double outlined copy of EnvironmentValues?(uint64_t a1, uint64_t a2)
{
  if (a1 != 1)
  {
  }

  return result;
}

double _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  v10 = a3 >> 40;
  v11 = a3 & 0x1000000000000;
  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA17ContentTransitionV5StateVG_Tt0g5(*a1);
  if (!v12)
  {
    v20 = HIWORD(v11);
    goto LABEL_5;
  }

  v13 = v12[9];
  v14 = *(v12 + 42);
  v15 = *(v12 + 20);
  v16 = *(v12 + 86);
  v17 = *(v12 + 87);
  v18 = v12[11];
  v19 = *(v12 + 24);
  v33 = a2;
  v35 = BYTE4(a3);
  v34 = a3;
  v36 = v10;
  v20 = HIWORD(v11);
  v37 = v20;
  v38 = HIBYTE(a3);
  v39 = a4;
  v40 = a5;
  v26 = v13;
  v27 = v15;
  v28 = v14;
  v29 = v16;
  v30 = v17;
  v31 = v18;
  v32 = v19;
  if (!specialized static ContentTransition.State.== infix(_:_:)(&v33, &v26))
  {
LABEL_5:
    v25 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<ContentTransition.State>>(0);
    v22 = swift_allocObject();
    *(v22 + 72) = a2;
    *(v22 + 84) = BYTE4(a3);
    *(v22 + 80) = a3;
    *(v22 + 85) = v10;
    *(v22 + 86) = v20;
    *(v22 + 87) = HIBYTE(a3);
    *(v22 + 88) = a4;
    *(v22 + 96) = a5;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContentTransition.State>, &type metadata for ContentTransition.State, &protocol witness table for ContentTransition.State, type metadata accessor for EnvironmentPropertyKey);
    v24 = v23;

    outlined copy of ContentTransition.Storage(a2, a3, v10);

    *a1 = PropertyList.Element.init(keyType:before:after:)(v24, 0, v25);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<ContentTransition.State>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ContentTransition.State>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContentTransition.State>, &type metadata for ContentTransition.State, &protocol witness table for ContentTransition.State, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<ContentTransition.State> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<ContentTransition.State>>);
    }
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<ContentTransition.State> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContentTransition.State> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ContentTransition.State>, &type metadata for ContentTransition.State, &protocol witness table for ContentTransition.State, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ContentTransition.State> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type StaticLayoutComputer<_HStackLayout> and conformance StaticLayoutComputer<A>()
{
  if (!lazy protocol witness table cache variable for type StaticLayoutComputer<_HStackLayout> and conformance StaticLayoutComputer<A>)
  {
    type metadata accessor for IndexingIterator<LayoutSubviews>(255, &lazy cache variable for type metadata for StaticLayoutComputer<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for StaticLayoutComputer);
    swift_getWitnessTable(protocol conformance descriptor for StaticLayoutComputer<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type StaticLayoutComputer<_HStackLayout> and conformance StaticLayoutComputer<A>);
  }
}

void TextSizeCache.update(environment:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;

  v4 = PropertyList.Tracker.hasDifferentUsedValues(_:)(v3);

  if (v4)
  {

    PropertyList.Tracker.reset()();

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v1[4];
    if (isUniquelyReferenced_nonNull_native)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v6 + 16));
    }

    else
    {
      v2[4] = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI13TextSizeCache33_3E59416AD37DE6953C726BD1E5230CEALLC5EntryV_Tt1g5(0, *(v6 + 24) >> 1);
    }

    swift_endAccess();
    v12 = v2[5];
    swift_beginAccess();

    v13 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *(v12 + 16);
    if (v13)
    {
      specialized Array.replaceSubrange<A>(_:with:)(0, *(v14 + 16));
    }

    else
    {
      *(v12 + 16) = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI11SuffixCache33_3E59416AD37DE6953C726BD1E5230CEALLC5EntryV_Tt1g5(0, *(v14 + 24) >> 1);
    }

    swift_endAccess();
    goto LABEL_20;
  }

  swift_beginAccess();
  v7 = *(v1[4] + 16);
  if (!v7)
  {
LABEL_19:

    SuffixCache.removeUnused()();

    SuffixCache.resetUsedState()();
LABEL_20:

    v2[2] = v3;

    return;
  }

  v8 = 120 * v7 + 24;
  while (1)
  {
    v9 = v2[4];
    if (v7 > *(v9 + 2))
    {
      break;
    }

    v10 = v7 - 1;
    if (v9[v8])
    {
      swift_beginAccess();
      v11 = swift_isUniquelyReferenced_nonNull_native();
      v2[4] = v9;
      if ((v11 & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
      }

      if (v7 > *(v9 + 2))
      {
        goto LABEL_22;
      }

      v9[v8] = 0;
      v2[4] = v9;
      swift_endAccess();
    }

    else
    {
      swift_beginAccess();
      specialized Array.remove(at:)(v7 - 1, v15);
      swift_endAccess();
      v17[5] = v15[5];
      v17[6] = v15[6];
      v17[0] = v15[0];
      v17[1] = v15[1];
      v17[2] = v15[2];
      v18 = v16;
      v17[3] = v15[3];
      v17[4] = v15[4];
      outlined destroy of TextSizeCache.Entry(v17);
    }

    v8 -= 120;
    --v7;
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t protocol witness for DynamicPropertyBox.update(property:phase:) in conformance Text.Measurements.Box(void *a1)
{

  *a1 = *(v1 + 8);

  Value = AGGraphGetValue();
  v5 = *Value;
  v4 = Value[1];
  v8[0] = v5;
  v8[1] = v4;

  TextSizeCache.update(environment:)(v8);
  LOBYTE(v5) = v6;

  return v5 & 1;
}

void SuffixCache.removeUnused()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 2);
  if (!v2)
  {
LABEL_5:
    v5 = *(v1 + 2);
    goto LABEL_23;
  }

  v3 = 0;
  v4 = 0;
  while (v1[v3 + 128] == 1)
  {
    ++v4;
    v3 += 104;
    if (v2 == v4)
    {
      goto LABEL_5;
    }
  }

  if (__OFADD__(v4, 1))
  {
    goto LABEL_30;
  }

  if (v4 + 1 != v2)
  {
    v6 = v4 + 1;
    while (v6 < v2)
    {
      v7 = &v1[v3];
      if (v1[v3 + 232])
      {
        if (v6 != v4)
        {
          if (v4 >= v2)
          {
            goto LABEL_26;
          }

          v8 = 104 * v4;
          v9 = &v1[104 * v4 + 32];
          v10 = *v9;
          v11 = *(v9 + 32);
          v49 = *(v9 + 16);
          v50 = v11;
          v48 = v10;
          v12 = *(v9 + 48);
          v13 = *(v9 + 64);
          v14 = *(v9 + 80);
          v54 = *(v9 + 96);
          v52 = v13;
          v53 = v14;
          v51 = v12;
          v15 = *(v7 + 200);
          v16 = *(v7 + 216);
          v17 = *(v7 + 184);
          v61 = v7[232];
          v59 = v15;
          v60 = v16;
          v58 = v17;
          v18 = *(v7 + 136);
          v19 = *(v7 + 168);
          v56 = *(v7 + 152);
          v57 = v19;
          v55 = v18;
          outlined init with copy of SuffixCache.Entry(&v48, v46);
          outlined init with copy of SuffixCache.Entry(&v55, v46);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 16) = v1;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v1 = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
            *(v0 + 16) = v1;
          }

          if (v4 >= *(v1 + 2))
          {
            goto LABEL_27;
          }

          v21 = &v1[v8];
          v22 = *&v1[v8 + 32];
          v23 = *&v1[v8 + 64];
          v44[1] = *&v1[v8 + 48];
          v44[2] = v23;
          v44[0] = v22;
          v24 = *&v1[v8 + 80];
          v25 = *&v1[v8 + 96];
          v26 = *&v1[v8 + 112];
          v45 = v1[v8 + 128];
          v44[4] = v25;
          v44[5] = v26;
          v44[3] = v24;
          v28 = v59;
          v27 = v60;
          v29 = v58;
          v21[128] = v61;
          *(v21 + 6) = v28;
          *(v21 + 7) = v27;
          *(v21 + 5) = v29;
          v30 = v55;
          v31 = v57;
          *(v21 + 3) = v56;
          *(v21 + 4) = v31;
          *(v21 + 2) = v30;
          outlined destroy of SuffixCache.Entry(v44);
          *(v0 + 16) = v1;
          if (v6 >= *(v1 + 2))
          {
            goto LABEL_28;
          }

          v32 = &v1[v3];
          v33 = *&v1[v3 + 136];
          v34 = *&v1[v3 + 168];
          v46[1] = *&v1[v3 + 152];
          v46[2] = v34;
          v46[0] = v33;
          v35 = *&v1[v3 + 184];
          v36 = *&v1[v3 + 200];
          v37 = *&v1[v3 + 216];
          v47 = v1[v3 + 232];
          v46[4] = v36;
          v46[5] = v37;
          v46[3] = v35;
          v39 = v52;
          v38 = v53;
          v40 = v54;
          *(v32 + 184) = v51;
          v32[232] = v40;
          *(v32 + 216) = v38;
          *(v32 + 200) = v39;
          v41 = v48;
          v42 = v49;
          *(v32 + 168) = v50;
          *(v32 + 152) = v42;
          *(v32 + 136) = v41;
          outlined destroy of SuffixCache.Entry(v46);
          *(v0 + 16) = v1;
        }

        ++v4;
      }

      v43 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      v2 = *(v1 + 2);
      ++v6;
      v3 += 104;
      if (v43 == v2)
      {
        v2 = v43;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_22:
  v5 = v2;
  v2 = v4;
  if (v5 >= v4)
  {
LABEL_23:
    specialized Array.replaceSubrange<A>(_:with:)(v2, v5);
    swift_endAccess();
    return;
  }

LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
}

double SuffixCache.resetUsedState()()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  v3 = *(v2 + 2);
  if (v3)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 16) = v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_15:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    }

    v5 = *(v2 + 2);
    v6 = v3 - 1;
    if (v5 < v3 - 1)
    {
      v6 = *(v2 + 2);
    }

    if (v6 >= 2)
    {
      v7 = v6 & 0x7FFFFFFFFFFFFFFELL;
      v8 = v2 + 232;
      v9 = v7;
      do
      {
        *(v8 - 104) = 0;
        *v8 = 0;
        v8 += 208;
        v9 -= 2;
      }

      while (v9);
    }

    else
    {
      v7 = 0;
    }

    v10 = 104 * v7 + 128;
    do
    {
      if (v7 >= v5)
      {
        __break(1u);
        goto LABEL_15;
      }

      ++v7;
      v2[v10] = 0;
      v10 += 104;
    }

    while (v3 != v7);
    *(v0 + 16) = v2;
    swift_endAccess();
  }

  return result;
}

void type metadata accessor for Attribute<EnvironmentValues>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void _s14AttributeGraph0A0Vy7SwiftUI17EnvironmentValuesVGMaTm_0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t initializeWithCopy for CanvasDisplayList(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);

  return a1;
}

double destroy for CanvasDisplayList(uint64_t a1)
{

  return result;
}

uint64_t protocol witness for static ViewModifier._makeViewList(modifier:inputs:body:) in conformance TapGestureModifier(unsigned int *a1, __int128 *a2, void (*a3)(void))
{
  v4 = *a1;
  a3();
  return specialized _ViewListOutputs.multiModifier<A>(_:inputs:)(v4, a2);
}

double View.fontWeight(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  KeyPath = swift_getKeyPath();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v4 & 1;
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.fontWeight(_:), v7, a3);

  return result;
}

void lazy protocol witness table accessor for type _EndedGesture<TapGesture> and conformance _EndedGesture<A>()
{
  if (!lazy protocol witness table cache variable for type _EndedGesture<TapGesture> and conformance _EndedGesture<A>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for _EndedGesture<TapGesture>, &type metadata for TapGesture, &protocol witness table for TapGesture, type metadata accessor for _EndedGesture);
    swift_getWitnessTable(protocol conformance descriptor for _EndedGesture<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type _EndedGesture<TapGesture> and conformance _EndedGesture<A>);
  }
}

uint64_t specialized implicit closure #1 in static GestureViewModifier.makeView(modifier:inputs:body:)(int a1)
{
  type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>(0);
  lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>, protocol conformance descriptor for AddGestureModifier<A, B>);
  swift_getKeyPath();
  protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
  type metadata accessor for Map<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>, GestureMask>(0);
  lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type Map<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>, GestureMask> and conformance Map<A, B>, type metadata accessor for Map<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>, GestureMask>, MEMORY[0x1E698D3A0]);

  v1 = Attribute.init<A>(body:value:flags:update:)();

  return v1;
}

uint64_t sub_18D20D9E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _DWORD *a3@<X8>)
{
  result = (*(*(a1 + a2 - 8) + 72))(*(a1 + a2 - 16));
  *a3 = result;
  return result;
}

__n128 sub_18D20DA3C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

id _s7SwiftUI19GestureViewModifierPAAE04makeD08modifier6inputs4bodyAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVAiA01_K0V_ANtctFZAA03AddcE0VyAA06_EndedC0VyAA03TapC0VGAA07DefaultC8CombinerVG_Tt3B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, _BYTE *)@<X2>, void *a4@<X8>)
{
  v5 = a1;
  v32 = *MEMORY[0x1E69E9840];
  v7 = a2[3];
  *&v30[32] = a2[2];
  *&v30[48] = v7;
  *&v30[64] = a2[4];
  *&v30[80] = *(a2 + 20);
  v8 = a2[1];
  *v30 = *a2;
  *&v30[16] = v8;
  a3(v21, a1, v30);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(*(a2 + 6)) & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v21[0]);
  v10 = v9;
  if ((v9 & 0x100000000) != 0)
  {
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    _sSay7SwiftUI13ViewResponderCGMaTm_7(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
    v10 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v11, 0);
  }

  result = AGSubgraphGetCurrent();
  if (result)
  {
    *&v30[88] = *(a2 + 20);
    v13 = a2[3];
    *&v30[72] = a2[4];
    v14 = a2[2];
    *&v30[56] = v13;
    *&v30[40] = v14;
    v15 = *a2;
    *&v30[24] = a2[1];
    *&v30[8] = v15;
    *v30 = v10;
    *&v30[4] = v5;
    v31 = result;
    v27 = *&v30[64];
    v28 = *&v30[80];
    v29 = result;
    v23 = *v30;
    v24 = *&v30[16];
    v25 = *&v30[32];
    v26 = *&v30[48];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    outlined init with copy of _ViewInputs(a2, &v22);
    _sSay7SwiftUI13ViewResponderCGMaTm_7(0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
    type metadata accessor for GestureFilter<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>>(0);
    lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type GestureFilter<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>> and conformance GestureFilter<A>, type metadata accessor for GestureFilter<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>>, protocol conformance descriptor for GestureFilter<A>);
    v16 = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(v30, type metadata accessor for GestureFilter<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>>);
    LOBYTE(v23) = 0;
    PreferencesOutputs.subscript.setter(v16, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
LABEL_6:
    v17 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE028GestureAccessibilityProviderF033_9DF46B4E935FF03A55FF3DDFB0B1FF2BLLV_Tt2g5(*a2);
    MEMORY[0x1EEE9AC00](v17);
    v18 = a2[3];
    *&v30[32] = a2[2];
    *&v30[48] = v18;
    *&v30[64] = a2[4];
    *&v30[80] = *(a2 + 20);
    v19 = a2[1];
    *v30 = *a2;
    *&v30[16] = v19;
    result = (*(v20 + 8))(partial apply for specialized implicit closure #1 in static GestureViewModifier.makeView(modifier:inputs:body:));
    *a4 = v21[0];
    a4[1] = v21[1];
    return result;
  }

  __break(1u);
  return result;
}

uint64_t outlined destroy of ModifierGesture<CoordinateSpaceGesture<CGFloat>, DistanceGesture>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *static TapGestureModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, _BYTE *)@<X2>, void *a5@<X8>)
{
  v39 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v8 = *(a2 + 16);
  v33 = *a2;
  v34 = v8;
  v9 = *(a2 + 48);
  v35 = *(a2 + 32);
  v36 = v9;
  v37 = *(a2 + 64);
  v38 = *(a2 + 80);
  if (_s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA38TapGestureUsesGesturesFrameworkFeatureV_Tt2g5(v33))
  {
    if (one-time initialization token for gestureConstantsProvider != -1)
    {
      swift_once();
    }

    v10 = static CachedEnvironment.ID.gestureConstantsProvider;
    swift_beginAccess();
    v11 = specialized CachedEnvironment.attribute<A>(id:_:)(v10, specialized implicit closure #1 in _GraphInputs.gestureConstantsProvider.getter, 0);
    swift_endAccess();
    *&v27 = __PAIR64__(v11, v7);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for GestureComponentAttachmentModifier<TapComponent<TouchEvent>>(0, &lazy cache variable for type metadata for GestureComponentAttachmentModifier<TapComponent<TouchEvent>>, type metadata accessor for GestureComponentAttachmentModifier);
    lazy protocol witness table accessor for type TapGestureModifier.GesturesFrameworkChild and conformance TapGestureModifier.GesturesFrameworkChild();
    v12 = Attribute.init<A>(body:value:flags:update:)();
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v35;
    v24 = v36;
    v25 = v37;
    v21 = v33;
    v22 = v34;
    v14 = v35;
    v26 = v38;
    LODWORD(v23) = 0;
    v32 = v38;
    v30 = v36;
    v31 = v37;
    v27 = v33;
    v28 = v34;
    v29 = v23;
    outlined init with copy of _ViewInputs(&v33, v19);
    outlined init with copy of _ViewInputs(&v27, v19);
    _s7SwiftUI34GestureComponentAttachmentModifierV9_makeView8modifier6inputs4bodyAA01_H7OutputsVAA11_GraphValueVyACyxGG_AA01_H6InputsVAiA01_M0V_AOtctFZ8Gestures03TapD0VyAR10TouchEventVG_Tt3B5(v12, &v27, a3, a5);
    outlined destroy of _ViewInputs(&v27);
    LODWORD(v23) = v14;
    if (ShouldRecordTree)
    {
LABEL_11:
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a5, &v21);
      AGSubgraphEndTreeElement();
    }
  }

  else
  {
    LODWORD(v27) = v7;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>(0);
    lazy protocol witness table accessor for type TapGestureModifier.GestureChild and conformance TapGestureModifier.GestureChild();
    v15 = Attribute.init<A>(body:value:flags:update:)();
    v16 = AGSubgraphShouldRecordTree();
    if (v16)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v35;
    v24 = v36;
    v25 = v37;
    v21 = v33;
    v22 = v34;
    v17 = v35;
    v26 = v38;
    LODWORD(v23) = 0;
    v32 = v38;
    v30 = v36;
    v31 = v37;
    v27 = v33;
    v28 = v34;
    v29 = v23;
    outlined init with copy of _ViewInputs(&v33, v19);
    outlined init with copy of _ViewInputs(&v27, v19);
    _s7SwiftUI19GestureViewModifierPAAE04makeD08modifier6inputs4bodyAA01_D7OutputsVAA11_GraphValueVyxG_AA01_D6InputsVAiA01_K0V_ANtctFZAA03AddcE0VyAA06_EndedC0VyAA03TapC0VGAA07DefaultC8CombinerVG_Tt3B5(v15, &v27, a3, a5);
    outlined destroy of _ViewInputs(&v27);
    LODWORD(v23) = v17;
    if (v16)
    {
      goto LABEL_11;
    }
  }

  v19[2] = v23;
  v19[3] = v24;
  v19[4] = v25;
  v20 = v26;
  v19[0] = v21;
  v19[1] = v22;
  return outlined destroy of _ViewInputs(v19);
}

uint64_t _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA38TapGestureUsesGesturesFrameworkFeatureV_Tt2g5(uint64_t a1)
{
  BloomFilter.init(hashValue:)(&type metadata for TapGestureUsesGesturesFrameworkFeature);
  v2 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA38TapGestureUsesGesturesFrameworkFeatureV_Tt0B5(a1, v4);
  if (v2)
  {
    return *(v2 + 72);
  }

  else
  {
    return _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA031TapGestureUsesGesturesFrameworkC0V_Ttg5() & 1;
  }
}

void type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>)
  {
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>(255, &lazy cache variable for type metadata for _EndedGesture<TapGesture>, &type metadata for TapGesture, &protocol witness table for TapGesture, type metadata accessor for _EndedGesture);
    v3 = v2;
    lazy protocol witness table accessor for type _EndedGesture<TapGesture> and conformance _EndedGesture<A>();
    v5 = v4;
    lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner();
    v9[0] = v3;
    v9[1] = &type metadata for DefaultGestureCombiner;
    v9[2] = v5;
    v9[3] = v6;
    v7 = type metadata accessor for AddGestureModifier(a1, v9);
    if (!v8)
    {
      atomic_store(v7, &lazy cache variable for type metadata for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>);
    }
  }
}

void type metadata accessor for GestureFilter<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GestureFilter<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>>)
  {
    type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>(255);
    v3 = v2;
    lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(&lazy protocol witness table cache variable for type AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner> and conformance AddGestureModifier<A, B>, type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>, protocol conformance descriptor for AddGestureModifier<A, B>);
    v6 = type metadata accessor for GestureFilter(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for GestureFilter<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>>);
    }
  }
}

void lazy protocol witness table accessor for type ModifierGesture<RepeatGesture<TappableEvent>, SingleTapGesture<TappableEvent>> and conformance ModifierGesture<A, B>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void type metadata accessor for Map<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>, GestureMask>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Map<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>, GestureMask>)
  {
    type metadata accessor for AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>(255);
    v1 = type metadata accessor for Map();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Map<AddGestureModifier<_EndedGesture<TapGesture>, DefaultGestureCombiner>, GestureMask>);
    }
  }
}

uint64_t _s7SwiftUI7FeaturePAAE12defaultValueSbvgZAA031TapGestureUsesGesturesFrameworkC0V_Ttg5()
{
  swift_beginAccess();
  v0 = static TapGestureUsesGesturesFrameworkFeature.cachedValue;
  if (static TapGestureUsesGesturesFrameworkFeature.cachedValue == 2)
  {
    v1 = objc_opt_self();
    v2 = [v1 standardUserDefaults];
    v3 = MEMORY[0x193ABEC20](0xD000000000000031, 0x800000018DD77070);
    v4 = [v2 objectForKey_];

    if (v4)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined destroy of Any?(v8);
      v5 = [v1 standardUserDefaults];
      v6 = MEMORY[0x193ABEC20](0xD000000000000031, 0x800000018DD77070);
      v0 = [v5 BOOLForKey_];

      static TapGestureUsesGesturesFrameworkFeature.cachedValue = v0;
    }

    else
    {
      memset(v8, 0, sizeof(v8));
      outlined destroy of Any?(v8);
      v0 = 0;
      static TapGestureUsesGesturesFrameworkFeature.cachedValue = 0;
    }
  }

  return v0 & 1;
}

uint64_t _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA38TapGestureUsesGesturesFrameworkFeatureV_Tt0B5(uint64_t result, uint64_t a2)
{
  if (result)
  {
    while (1)
    {
      while ((a2 & ~*(result + 56)) != 0)
      {
        result = *(result + 40);
        if (!result)
        {
          return result;
        }
      }

      if (*(result + 24))
      {
        v2 = result;
        v3 = a2;
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA38TapGestureUsesGesturesFrameworkFeatureV_Tt0B5(*(result + 24), a2);
        a2 = v3;
        v5 = v4;
        result = v2;
        if (v5)
        {
          break;
        }
      }

      if (*(result + 16) != &type metadata for TapGestureUsesGesturesFrameworkFeature)
      {
        result = *(result + 32);
        if (result)
        {
          continue;
        }
      }

      return result;
    }

    return v5;
  }

  return result;
}

void lazy protocol witness table accessor for type TapGestureModifier.GestureChild and conformance TapGestureModifier.GestureChild()
{
  if (!lazy protocol witness table cache variable for type TapGestureModifier.GestureChild and conformance TapGestureModifier.GestureChild)
  {
    swift_getWitnessTable(protocol conformance descriptor for TapGestureModifier.GestureChild, &unk_1F00A58F0, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type TapGestureModifier.GestureChild and conformance TapGestureModifier.GestureChild);
  }
}

double EnvironmentValues.defaultFont.getter(void (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v3 = *v2;
  if (v2[1])
  {

    a1(v3);
  }

  else if (a2(v3))
  {
  }

  return result;
}

uint64_t outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7SwiftUI22ShapeStyledDisplayList33_E1641985C375D8826E6966D4F238A1B8LLVyAA01_C4ViewVyAA9RectangleVAA14LinearGradientVGGWOhTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void type metadata accessor for _ShapeView<Rectangle, LinearGradient>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _ShapeView<Rectangle, LinearGradient>)
  {
    lazy protocol witness table accessor for type Rectangle and conformance Rectangle();
    v5[0] = &type metadata for Rectangle;
    v5[1] = &type metadata for LinearGradient;
    v5[2] = v2;
    v5[3] = &protocol witness table for LinearGradient;
    v3 = type metadata accessor for _ShapeView(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &lazy cache variable for type metadata for _ShapeView<Rectangle, LinearGradient>);
    }
  }
}

uint64_t AccessibilityProperties.init<A>(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = v20 - v9;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 1;
  *(a4 + 64) = 0;
  *(a4 + 72) = 0;
  *(a4 + 80) = 0;
  *(a4 + 88) = 1;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0;
  *(a4 + 96) = 0;
  *(a4 + 120) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v21);
  v11 = v21[7];
  *(a4 + 224) = v21[6];
  *(a4 + 240) = v11;
  *(a4 + 256) = v21[8];
  *(a4 + 272) = v22;
  v12 = v21[3];
  *(a4 + 160) = v21[2];
  *(a4 + 176) = v12;
  v13 = v21[5];
  *(a4 + 192) = v21[4];
  *(a4 + 208) = v13;
  v14 = v21[1];
  *(a4 + 128) = v21[0];
  *(a4 + 144) = v14;
  v15 = type metadata accessor for AnyAccessibilityPropertiesEntry();
  *(a4 + 280) = MEMORY[0x193ABE660](1, MEMORY[0x1E69E5FE0], v15, MEMORY[0x1E69E5FE8]);
  (*(v8 + 16))(v10, a1, AssociatedTypeWitness);
  v20[3] = type metadata accessor for AccessibilityPropertiesEntry(0, AssociatedTypeWitness, v16, v17);
  v20[4] = &protocol witness table for AccessibilityPropertiesEntry<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(v8 + 32))(boxed_opaque_existential_1, v10, AssociatedTypeWitness);
  specialized Dictionary.subscript.setter(v20, a2);
  return (*(v8 + 8))(a1, AssociatedTypeWitness);
}

void type metadata accessor for StaticBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<LinearGradient>, &type metadata for LinearGradient, &protocol witness table for LinearGradient, type metadata accessor for ViewBodyAccessor);
    v3 = v2;
    lazy protocol witness table accessor for type ViewBodyAccessor<LinearGradient> and conformance ViewBodyAccessor<A>();
    v7[0] = v3;
    v7[1] = &type metadata for MainThreadFlags;
    v7[2] = v4;
    v7[3] = &protocol witness table for MainThreadFlags;
    v5 = type metadata accessor for StaticBody(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<LinearGradient>, MainThreadFlags>);
    }
  }
}

void *specialized static View.makeView(view:inputs:)@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x72477261656E694CLL, 0xEE00746E65696461);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for LinearGradient, type metadata accessor for LinearGradient.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<Rectangle, LinearGradient>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA14LinearGradientVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000010, 0x800000018DD78EF0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for RoundedRectangle, type metadata accessor for RoundedRectangle.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<RoundedRectangle, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA16RoundedRectangleV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x656C63726943, 0xE600000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Circle, type metadata accessor for Circle.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<Circle, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA6CircleV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](1752457552, 0xE400000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Path, type metadata accessor for Path.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<Path, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA4PathV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x6C676E6174636552, 0xE900000000000065);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Rectangle, type metadata accessor for Rectangle.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<Rectangle, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000011, 0x800000018DD78DF0);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Rectangle.AsymmetricalInset, type metadata accessor for Rectangle.AsymmetricalInset.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      type metadata accessor for _ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>(0);
      outlined init with copy of _ViewInputs(&v27, &v39);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v27, &v39);
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleVAAE17AsymmetricalInsetV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v27);
    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD00000000000001ALL, 0x800000018DD78D90);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for _GlassContainerStorageView, type metadata accessor for _GlassContainerStorageView.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      _s7SwiftUI15ModifiedContentVyAA13_VariadicViewO4TreeVy_AA11_LayoutRootVyAA010GlassEntryH033_D12F2F25A0BD65FFBD3A7636B60067DFLLVGAA7ForEachVySayAA0J9ContainerO4ItemVGAS2IDVAA0jxF0AKLLVGGAA0J19EffectShapeModifier33_62A32D59B8A902A88963544196023CF7LLVGMaTm_0(0, &lazy cache variable for type metadata for ModifiedContent<GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, _GeometryGroupEffect>, type metadata accessor for GeometryReader<ModifiedContent<GlassContainerResolver<ModifiedContent<ZStack<ForEach<[GlassContainer.Effect], GlassContainer.DisplayMaterial.ID, ModifiedContent<GlassEffectView, _TraitWritingModifier<TransitionTraitKey>>>>, GlassContainerTintConfigModifier>>, _BackdropGroupEffect2>>, &type metadata for _GeometryGroupEffect, type metadata accessor for ModifiedContent);
      outlined init with copy of _ViewInputs(&v27, &v39);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v27, &v39);
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA14GeometryReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0pQ0O6EffectVGAZ15DisplayMaterialV2IDVACyAA0pvE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0pq10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_BackdropGroupEffect2VGG_AA01_n5GroupV0VTt2B5Tm(v13, &v39, _s7SwiftUI15_RendererEffectPAAE05_makecD06effect6inputs4bodyAA12_ViewOutputsVAA11_GraphValueVyxG_AA01_I6InputsVAiA01_K0V_ANtctFZAA014_GeometryGroupD0V_Tt3B503_s7a24UI15ModifiedContentVA2A4i23RzAA0E8ModifierR_rlE05_e21E04view6inputsAA01_E7j6VAA11_kl18VyACyxq_GG_AA01_E6m26VtFZAjA01_K0V_APtcfU0_AA14n76ReaderVyACyAA22GlassContainerResolverVyACyAA6ZStackVyAA7ForEachVySayAA0pQ0O6d196VGA0_15DisplayMaterialV2IDVACyAA0pvE033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingF0VyAA18TransitionTraitKeyVGGGGAA0pq10TintConfigF033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA21_Backdropo18Effect2VGG_AA01_n5O6V0VTG5AKyAA0rS0VyAA0N6ReaderVyAUyAA22GlassContainerResolverVyAUyAA6ZStackVyAA7ForEachVySayAA14GlassContainerO0D0VGA3_15DisplayMaterialV2IDVAUyAA05GlassdI033_D12F2F25A0BD65FFBD3A7636B60067DFLLVAA013_TraitWritingY0VyAA18TransitionTraitKeyVGGGGAA024GlassContainerTintConfigY033_EC08899B622ECCACC85E95BA1EEBE316LLVGGAA09_BackdropO7Effect2VGGARGGTf1nnnc_n, specialized closure #2 in static ModifiedContent<>._makeView(view:inputs:), a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v27);
    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD00000000000003BLL, 0x800000018DD78E10);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for CombinedContentShape, type metadata accessor for CombinedContentShape.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      type metadata accessor for _ShapeView<CombinedContentShape, ForegroundStyle>(0);
      outlined init with copy of _ViewInputs(&v27, &v39);
      AGSubgraphBeginTreeElement();
    }

    else
    {
      outlined init with copy of _ViewInputs(&v27, &v39);
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA015CombinedContentC033_6E67AD6866B38627EB183D41FF0BA80ALLV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    outlined destroy of _ViewInputs(&v27);
    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x77656956746F6F52, 0xE800000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for _TestApp.RootView, type metadata accessor for _TestApp.RootView.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI11DynamicViewPAAE04makecD08metadata4view6inputsAA01_D7OutputsV8MetadataQz_AA11_GraphValueVyxGAA01_D6InputsVtFZAA03AnyD0V_Tt3B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x657370696C6C45, 0xE700000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Ellipse, type metadata accessor for Ellipse.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<Ellipse, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA7EllipseV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x656C7573706143, 0xE700000000000000);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for Capsule, type metadata accessor for Capsule.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<Capsule, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA7CapsuleV_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000017, 0x800000018DDB6B10);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for DefaultGlassEffectShape, type metadata accessor for DefaultGlassEffectShape.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<DefaultGlassEffectShape, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA018DefaultGlassEffectC0V_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD78E70);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for ImplicitContainerShape, type metadata accessor for ImplicitContainerShape.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<ImplicitContainerShape, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA017ImplicitContainerC0V_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v45 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v39);
  v8 = v39;
  v9 = v40;
  v10 = DWORD1(v40);
  v11 = a2[3];
  v35 = a2[2];
  v36 = v11;
  v37 = a2[4];
  v38 = *(a2 + 20);
  v12 = a2[1];
  v33 = *a2;
  v34 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v39);
    _StringGuts.grow(_:)(70);
    v39 = v27;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD78E90);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v39);
    LOBYTE(v39) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v33, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v39);
    v13 = v39;
    if ((BYTE8(v40) & 1) == 0)
    {
      LOBYTE(v39) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v39 + 1), v40, &type metadata for ContainerRelativeShape, type metadata accessor for ContainerRelativeShape.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for _ShapeView<ContainerRelativeShape, ForegroundStyle>(0);
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v32 = v38;
    v27 = v33;
    v28 = v34;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v23 = v29;
    v24 = v30;
    v25 = v31;
    v26 = v32;
    v21 = v27;
    v22 = v28;
    v15 = v29;
    LODWORD(v23) = 0;
    v44 = v32;
    v42 = v30;
    v43 = v31;
    v39 = v27;
    v40 = v28;
    v41 = v23;
    outlined init with copy of _ViewInputs(&v27, v19);
    outlined init with copy of _ViewInputs(&v39, v19);
    _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA017ContainerRelativeC0V_AA15ForegroundStyleVTt2B5(v13, &v39, a3);
    outlined destroy of _ViewInputs(&v39);
    LODWORD(v23) = v15;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v21);
      AGSubgraphEndTreeElement();
    }

    v17[2] = v35;
    v17[3] = v36;
    v17[4] = v37;
    v18 = v38;
    v17[0] = v33;
    v17[1] = v34;
    outlined destroy of _ViewInputs(v17);
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v20 = v26;
    v19[0] = v21;
    v19[1] = v22;
    return outlined destroy of _ViewInputs(v19);
  }

  return result;
}

{
  v4 = v3;
  v44 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v38);
  v8 = v38;
  v9 = v39;
  v10 = DWORD1(v39);
  v11 = a2[3];
  v34 = a2[2];
  v35 = v11;
  v36 = a2[4];
  v37 = *(a2 + 20);
  v12 = a2[1];
  v32 = *a2;
  v33 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v38);
    _StringGuts.grow(_:)(70);
    v38 = v26;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0xD000000000000016, 0x800000018DD78F10);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v38);
    LOBYTE(v38) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v32, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v38);
    if ((BYTE8(v39) & 1) == 0)
    {
      LOBYTE(v38) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v38 + 1), v39, &type metadata for _IntelligenceSupport.AnimatingSummarySymbol, type metadata accessor for _IntelligenceSupport.AnimatingSummarySymbol.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Bool>>, _EnvironmentKeyWritingModifier<Font?>>(0);
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    v14 = v28;
    LODWORD(v22) = 0;
    v43 = v31;
    v41 = v29;
    v42 = v30;
    v38 = v26;
    v39 = v27;
    v40 = v22;
    outlined init with copy of _ViewInputs(&v26, v18);
    outlined init with copy of _ViewInputs(&v38, v18);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_l11TransactionF0VySbGG_AA022_EnvironmentKeyWritingF0VyAA4FontVSgGTt2B5(&v38, a3);
    outlined destroy of _ViewInputs(&v38);
    LODWORD(v22) = v14;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v20);
      AGSubgraphEndTreeElement();
    }

    v16[2] = v34;
    v16[3] = v35;
    v16[4] = v36;
    v17 = v37;
    v16[0] = v32;
    v16[1] = v33;
    outlined destroy of _ViewInputs(v16);
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    return outlined destroy of _ViewInputs(v18);
  }

  return result;
}

{
  v4 = v3;
  v44 = *MEMORY[0x1E69E9840];
  static DynamicPropertyCache.fields(of:)(v4, &v38);
  v8 = v38;
  v9 = v39;
  v10 = DWORD1(v39);
  v11 = a2[3];
  v34 = a2[2];
  v35 = v11;
  v36 = a2[4];
  v37 = *(a2 + 20);
  v12 = a2[1];
  v32 = *a2;
  v33 = v12;
  if (AGTypeGetKind() - 2 > 3)
  {
    *&v26 = 0;
    *(&v26 + 1) = 0xE000000000000000;
    outlined init with copy of _ViewInputs(a2, &v38);
    _StringGuts.grow(_:)(70);
    v38 = v26;
    MEMORY[0x193ABEDD0](0xD000000000000038, 0x800000018DD78610);
    MEMORY[0x193ABEDD0](0x6E6974616D696E41, 0xED00007478655467);
    MEMORY[0x193ABEDD0](0x6C63206120736920, 0xEC0000002E737361);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    outlined init with copy of _ViewInputs(a2, &v38);
    LOBYTE(v38) = v9;
    specialized closure #1 in BodyAccessor.makeBody(container:inputs:fields:)(&v32, v8, *(&v8 + 1), v9 | (v10 << 32), a1, &v38);
    if ((BYTE8(v39) & 1) == 0)
    {
      LOBYTE(v38) = v9;
      specialized _DynamicPropertyBuffer.traceMountedProperties<A>(to:fields:)(a1, v8, *(&v8 + 1), v9, *(&v38 + 1), v39, &type metadata for _IntelligenceSupport.AnimatingText, type metadata accessor for _IntelligenceSupport.AnimatingText.Type);
    }

    outlined consume of DynamicPropertyCache.Fields.Layout(v8, *(&v8 + 1), v9);
    type metadata accessor for ModifiedContent<Text, _OverlayPreferenceModifier<Text.LayoutKey, ForEach<Range<Int>, Int, ModifiedContent<ModifiedContent<SummarySymbol, _ValueTransactionModifier<Double>>, _OffsetEffect>>>>(0);
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v31 = v37;
    v26 = v32;
    v27 = v33;
    ShouldRecordTree = AGSubgraphShouldRecordTree();
    if (ShouldRecordTree)
    {
      AGSubgraphBeginTreeElement();
    }

    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v20 = v26;
    v21 = v27;
    v14 = v28;
    LODWORD(v22) = 0;
    v43 = v31;
    v41 = v29;
    v42 = v30;
    v38 = v26;
    v39 = v27;
    v40 = v22;
    outlined init with copy of _ViewInputs(&v26, v18);
    outlined init with copy of _ViewInputs(&v38, v18);
    _s7SwiftUI15ModifiedContentVA2A4ViewRzAA0E8ModifierR_rlE05_makeE04view6inputsAA01_E7OutputsVAA11_GraphValueVyACyxq_GG_AA01_E6InputsVtFZAA4TextV_AA018_OverlayPreferenceF0VyAR9LayoutKeyVAA7ForEachVySnySiGSiACyACyAA13SummarySymbol33_5039765D26D33F565D3CDFCA69D19B23LLVAA01_l11TransactionF0VySdGGAA13_OffsetEffectVGGGTt2B5(&v38, a3);
    outlined destroy of _ViewInputs(&v38);
    LODWORD(v22) = v14;
    if (ShouldRecordTree)
    {
      _s7SwiftUI10_ViewDebugOAAE10reallyWrap33_43DA1754B0518AF1D72B90677BF266DBLL_5value6inputsyAA01_C7OutputsVz_AA11_GraphValueVyxGSPyAA01_C6InputsVGtlFZAA09_VariadicC9_ChildrenV7ElementV_Tt0t2g5(a3, &v20);
      AGSubgraphEndTreeElement();
    }

    v16[2] = v34;
    v16[3] = v35;
    v16[4] = v36;
    v17 = v37;
    v16[0] = v32;
    v16[1] = v33;
    outlined destroy of _ViewInputs(v16);
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v19 = v25;
    v18[0] = v20;
    v18[1] = v21;
    return outlined destroy of _ViewInputs(v18);
  }

  return result;
}

void *protocol witness for static View._makeView(view:inputs:) in conformance LinearGradient@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
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
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA14LinearGradientVTt2B5@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 6);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v26 = a3;
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v25 = *(a2 + 2);
    v9 = *(a2 + 2);
    v11 = *(a2 + 6);
    v10 = *(a2 + 7);
    v12 = *(a2 + 9);
    swift_beginAccess();
    v13 = *(v9 + 16);
    v14 = a2[3];
    v32 = a2[2];
    v33 = v14;
    v34 = a2[4];
    v35 = *(a2 + 20);
    v15 = a2[1];
    v30 = *a2;
    v31 = v15;
    _ViewInputs.materialSubstrate.getter(&v36 + 13);
    v16 = v4;
    v17 = *MEMORY[0x1E698D3F8];
    type metadata accessor for PropertyList.Tracker();
    v18 = swift_allocObject();
    type metadata accessor for AtomicBuffer<TrackerData>(0, &lazy cache variable for type metadata for AtomicBuffer<TrackerData>, &type metadata for TrackerData, type metadata accessor for AtomicBuffer);
    v19 = swift_allocObject();
    *(v19 + 16) = 0;
    v20 = MEMORY[0x1E69E7CC8];
    *(v19 + 24) = 0;
    *(v19 + 32) = v20;
    v21 = MEMORY[0x1E69E7CC0];
    *(v19 + 40) = v20;
    *(v19 + 48) = v21;
    *(v19 + 56) = 0;
    *(v18 + 16) = v19;
    *&v36 = __PAIR64__(v17, OffsetAttribute2);
    DWORD2(v36) = v13;
    BYTE12(v36) = 0;
    BYTE14(v36) = v12 & 1;
    *&v37 = __PAIR64__(v25, v11);
    DWORD2(v37) = v10;
    *&v38 = 0;
    BYTE8(v38) = 0;
    *&v39 = 0;
    DWORD2(v39) = 0;
    v40 = v18;
    v32 = v38;
    v33 = v39;
    *&v34 = v18;
    v30 = v36;
    v31 = v37;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for ShapeStyleResolver<LinearGradient>, &type metadata for LinearGradient, &protocol witness table for LinearGradient, type metadata accessor for ShapeStyleResolver);
    lazy protocol witness table accessor for type ShapeStyleResolver<LinearGradient> and conformance ShapeStyleResolver<A>();
    LODWORD(v18) = Attribute.init<A>(body:value:flags:update:)();
    outlined destroy of ShapeStyleResolver<LinearGradient>(&v36);
    AGGraphSetFlags();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAA14LinearGradientVG_Tt5B5(v16, a2, v18, 0, &v27);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v22 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v22)
    {
      goto LABEL_13;
    }

    if ((v12 & 2) != 0)
    {
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle, LinearGradient>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<Rectangle, LinearGradient>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle, LinearGradient>>, "]");
      result = Attribute.init<A>(body:value:flags:update:)();
      v23 = v28 | 0x80;
LABEL_14:
      *v26 = v27;
      *(v26 + 8) = v23;
      *(v26 + 12) = result;
      return result;
    }

LABEL_13:
    v23 = v28;
    result = v29;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v24 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v24;
  return result;
}

void lazy protocol witness table accessor for type ShapeStyleResolver<LinearGradient> and conformance ShapeStyleResolver<A>()
{
  if (!lazy protocol witness table cache variable for type ShapeStyleResolver<LinearGradient> and conformance ShapeStyleResolver<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ShapeStyleResolver<LinearGradient>, &type metadata for LinearGradient, &protocol witness table for LinearGradient, type metadata accessor for ShapeStyleResolver);
    swift_getWitnessTable(protocol conformance descriptor for ShapeStyleResolver<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type ShapeStyleResolver<LinearGradient> and conformance ShapeStyleResolver<A>);
  }
}

uint64_t outlined destroy of ShapeStyleResolver<LinearGradient>(uint64_t a1)
{
  type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(0, &lazy cache variable for type metadata for ShapeStyleResolver<LinearGradient>, &type metadata for LinearGradient, &protocol witness table for LinearGradient, type metadata accessor for ShapeStyleResolver);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAA14LinearGradientVG_Tt5B5(unsigned int a1@<W0>, uint64_t *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v57 = MEMORY[0x1E69E7CC0];
  LODWORD(v58) = 0;
  HIDWORD(v58) = *MEMORY[0x1E698D3F8];
  v53 = *MEMORY[0x1E698D3F8];
  v56 = a2[6];
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v56) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = a2[2];
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v13;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v14 = *(a2 + 1);
    v60 = *a2;
    v61 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v60);
    v16 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v16;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v17 = *(a2 + 1);
    v60 = *a2;
    v61 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v60);
    v52 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v48 = v21;
    v49 = *(a2 + 15);
    v50 = *(a2 + 17);
    v51 = *(a2 + 19);
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v19);
    LOBYTE(v63) = v21;
    WORD1(v63) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>, protocol conformance descriptor for ShapeStyledDisplayList<A>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = a4;
    *(&v60 + 1) = __PAIR64__(a1, v9);
    *&v61 = __PAIR64__(OffsetAttribute2, a3);
    *(&v61 + 1) = __PAIR64__(v18, v15);
    *&v62 = __PAIR64__(v49, v50);
    *(&v62 + 1) = __PAIR64__(v51, v22);
    LOBYTE(v63) = v48;
    WORD1(v63) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v60, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>);
    LOBYTE(v59[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v52;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 3);
    v25 = *(a2 + 4);
    v26 = *(a2 + 1);
    v62 = *(a2 + 2);
    v63 = v24;
    v64 = v25;
    v65 = *(a2 + 20);
    v60 = *a2;
    v61 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v60);
    v28 = *(a2 + 3);
    v62 = *(a2 + 2);
    v63 = v28;
    v64 = *(a2 + 4);
    v65 = *(a2 + 20);
    v29 = *(a2 + 1);
    v60 = *a2;
    v61 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v60);
    swift_endAccess();
    v31 = *(a2 + 15);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>>, type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, LinearGradient>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = 0u;
    *(v32 + 136) = 0u;
    *(v32 + 152) = 0;
    *(v32 + 160) = v8;
    *(v32 + 24) = 0;
    *(v32 + 168) = 0u;
    *(v32 + 184) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v56;
    *&v60 = v56;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v56 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v56 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v60 = __PAIR64__(a3, a1);
        *(&v60 + 1) = __PAIR64__(v30, v27);
        LODWORD(v61) = v31;
        *(&v61 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Rectangle, LinearGradient>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Rectangle, LinearGradient>>, protocol conformance descriptor for ShapeStyledResponderFilter<A>);
        v35 = v56;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 16);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v60 = __PAIR64__(v40, v31);
    *(&v60 + 1) = __PAIR64__(a1, v41);
    LODWORD(v61) = v53;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle, LinearGradient>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<Rectangle, LinearGradient>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle, LinearGradient>>, protocol conformance descriptor for ContentResponderPathDataRule<A>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v60 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v56 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v60) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v60) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v57;
      a5[1] = v58;
      return;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v60);
  Attribute = AGWeakAttributeGetAttribute();
  if (Attribute != v53)
  {
    v59[0] = v9;
    v46 = Attribute<A>.subscript.modify(&v60, Attribute);
    v47 = _DisplayList_StableIdentityScope.pushIdentity(_:)(v59);
    (v46)(&v60, 0, v47);
    goto LABEL_3;
  }

  __break(1u);
}

void type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  if (!*a1)
  {
    v5 = a2(255);
    swift_getWitnessTable(a3, v5);
    atomic_store(v6, a1);
  }
}

void *initializeBufferWithCopyOfBuffer for DelayedGesture(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a2[2];
  *a1 = *a2;
  a1[1] = v3;
  a1[2] = v4;

  return a1;
}

void *assignWithCopy for _AlignmentWritingModifier(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2[2];
  a1[1] = a2[1];
  a1[2] = v3;

  return a1;
}

void lazy protocol witness table accessor for type RendererEffectDisplayList<_BlendModeEffect> and conformance RendererEffectDisplayList<A>()
{
  if (!lazy protocol witness table cache variable for type RendererEffectDisplayList<_BlendModeEffect> and conformance RendererEffectDisplayList<A>)
  {
    type metadata accessor for RendererEffectDisplayList<GraphicsBlendModeEffect>(255, &lazy cache variable for type metadata for RendererEffectDisplayList<_BlendModeEffect>, &type metadata for _BlendModeEffect, &protocol witness table for _BlendModeEffect, type metadata accessor for RendererEffectDisplayList);
    swift_getWitnessTable(protocol conformance descriptor for RendererEffectDisplayList<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type RendererEffectDisplayList<_BlendModeEffect> and conformance RendererEffectDisplayList<A>);
  }
}

void lazy protocol witness table accessor for type SimultaneousGestureCombiner and conformance SimultaneousGestureCombiner()
{
  if (!lazy protocol witness table cache variable for type SimultaneousGestureCombiner and conformance SimultaneousGestureCombiner)
  {
    swift_getWitnessTable(protocol conformance descriptor for SimultaneousGestureCombiner, &type metadata for SimultaneousGestureCombiner, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type SimultaneousGestureCombiner and conformance SimultaneousGestureCombiner);
  }
}

uint64_t View.gesture<A>(_:including:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v28 = a5;
  v26 = a8;
  v27 = a3;
  v25 = a2;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](a1);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = v16(v13);
  v29[0] = a4;
  v29[1] = a7;
  v29[2] = a6;
  v29[3] = v17;
  v18 = type metadata accessor for AddGestureModifier(0, v29);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v24[-v21];
  (*(v12 + 16))(v15, a1, a4, v20);
  AddGestureModifier.init(_:name:gestureMask:)(v15, 0, 0, v25, a4, a7, a6, v17, v22);
  View.modifier<A>(_:)();
  return (*(v19 + 8))(v22, v18);
}

uint64_t AddGestureModifier.init(_:name:gestureMask:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v18[0] = a5;
  v18[1] = a6;
  v18[2] = a7;
  v18[3] = a8;
  v15 = type metadata accessor for AddGestureModifier(0, v18);
  v16 = (a9 + *(v15 + 52));
  result = (*(*(a5 - 8) + 32))(a9, a1, a5);
  *v16 = a2;
  v16[1] = a3;
  *(a9 + *(v15 + 56)) = a4;
  return result;
}

uint64_t initializeWithCopy for AddGestureModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  *((v7 + 19) & 0xFFFFFFFFFFFFFFF8) = *((v8 + 19) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t destroy for AddGestureModifier(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();
}

uint64_t Font.ModifierProvider.resolveDescriptor(in:)(_OWORD *a1, uint64_t a2)
{
  v4 = a1[1];
  v10[0] = *a1;
  v10[1] = v4;
  v6 = *a1;
  v5 = a1[1];
  v10[2] = a1[2];
  v11[0] = v6;
  v7 = *v2;
  v8 = a1[2];
  v11[1] = v5;
  v11[2] = v8;
  *&v11[0] = (*(*v7 + 96))(v11);
  (*(*(a2 + 24) + 32))(v11, v10, *(a2 + 16));
  return *&v11[0];
}

void key path getter for EnvironmentValues.minimumScaleFactor : EnvironmentValues(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  if (a1[1])
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018MinimumScaleFactorI0VG_Tt1g5(v3);
  }

  else
  {
    v5 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018MinimumScaleFactorS0VG_Tt0g5(*a1);
    if (v5)
    {
      v4 = v5[9];
    }

    else
    {
      v4 = 1.0;
    }
  }

  *a2 = v4;
}

void key path setter for EnvironmentValues.minimumScaleFactor : EnvironmentValues(double *a1, uint64_t *a2)
{
  if (*a1 <= 1.0 && *a1 > 0.0)
  {
    v4 = *a1;
  }

  else
  {
    v4 = 1.0;
  }

  v5 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018MinimumScaleFactorF0VG_Tt2g5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA018MinimumScaleFactorK0VG_Ttg5(v5, *a2);
  }
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA018MinimumScaleFactorF0VG_Tt2g5(uint64_t *a1, double a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018MinimumScaleFactorS0VG_Tt0g5(*a1);
  if (!v4 || v4[9] != a2)
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<MinimumScaleFactorKey>>(0);
    *(swift_allocObject() + 72) = a2;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumScaleFactorKey>, &type metadata for MinimumScaleFactorKey, &protocol witness table for MinimumScaleFactorKey, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<MinimumScaleFactorKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<MinimumScaleFactorKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<MinimumScaleFactorKey>, &type metadata for MinimumScaleFactorKey, &protocol witness table for MinimumScaleFactorKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<MinimumScaleFactorKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<MinimumScaleFactorKey>>);
    }
  }
}

uint64_t type metadata completion function for ContentShapeKindResponder(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for _ContentShapeKindModifier(255, *(a1 + 400), *(a1 + 408), a4);
  result = type metadata accessor for ContentResponderHelper(319, v4, &protocol witness table for _ContentShapeKindModifier<A>, v5);
  if (v7 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id ContentShapeKindResponder.init(inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v6;
  v12[4] = *(a1 + 64);
  v13 = *(a1 + 80);
  v7 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v7;
  v4[27] = 1;
  v8 = v5[53];
  v9 = type metadata accessor for _ContentShapeKindModifier(0, v5[50], v5[51], a4);
  ContentResponderHelper.init()(v9, &protocol witness table for _ContentShapeKindModifier<A>, v10, v4 + v8);
  return DefaultLayoutViewResponder.init(inputs:)(v12);
}

uint64_t implicit closure #1 in static _ContentShapeKindModifier._makeView(modifier:inputs:body:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[1] = a1;
  v4 = type metadata accessor for _ContentShapeKindModifier(255, a2, a3, a4);
  type metadata accessor for _GraphValue(0, v4, v5, v6);
  _GraphValue.subscript.getter(partial apply for closure #1 in implicit closure #1 in static _ContentShapeKindModifier._makeView(modifier:inputs:body:), &type metadata for ContentShapeKinds, v8);
  return v8[0];
}

uint64_t closure #1 in implicit closure #1 in static _ContentShapeKindModifier._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for _ContentShapeKindModifier(0, a2, a3, a4);
  v6 = *(v5 + 40);
  v10[2] = v5;
  v7 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v6, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_7, v10, &type metadata for ContentShapeKinds, MEMORY[0x1E69E73E0], v7, MEMORY[0x1E69E7410], v8);
  return v10[5];
}

_DWORD *storeEnumTagSinglePayload for _ContentShapeKindModifier(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 16;
  if ((v8 & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if ((v8 & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if ((v8 & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, (v8 & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0xFE)
  {
    *(result + v8) = a2 + 1;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t Font.weight(_:)(uint64_t a1, uint64_t (*a2)(void), double a3)
{
  a2(0);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a3;

  return v5;
}

void type metadata accessor for FontBox<Font.ModifierProvider<Font.WeightModifier>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.WeightModifier>>)
  {
    type metadata accessor for AnyDynamicFontModifier<Font.WeightModifier>(255, &lazy cache variable for type metadata for Font.ModifierProvider<Font.WeightModifier>, lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier, &type metadata for Font.WeightModifier, type metadata accessor for Font.ModifierProvider);
    v3 = v2;
    lazy protocol witness table accessor for type Font.ModifierProvider<Font.WeightModifier> and conformance Font.ModifierProvider<A>();
    v6 = type metadata accessor for FontBox(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for FontBox<Font.ModifierProvider<Font.WeightModifier>>);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for Font.ScalePointSizeModifier(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

void lazy protocol witness table accessor for type Font.WeightModifier and conformance Font.WeightModifier()
{
  if (!lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.WeightModifier, &type metadata for Font.WeightModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.WeightModifier, &type metadata for Font.WeightModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.WeightModifier, &type metadata for Font.WeightModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier);
  }
}

{
  if (!lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier)
  {
    swift_getWitnessTable(protocol conformance descriptor for Font.WeightModifier, &type metadata for Font.WeightModifier, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type Font.WeightModifier and conformance Font.WeightModifier);
  }
}

uint64_t Gesture.onEnded(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for EndedCallbacks(255, AssociatedTypeWitness, v11, v12);
  swift_getWitnessTable(protocol conformance descriptor for EndedCallbacks<A>, v13);
  v16 = type metadata accessor for CallbacksGesture(255, v13, v14, v15);
  swift_getWitnessTable(protocol conformance descriptor for CallbacksGesture<A>, v16);
  v22 = v16;
  v23 = a3;
  v24 = v17;
  v25 = a4;
  v18 = type metadata accessor for ModifierGesture(0, &v22);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v22 - v19;
  v22 = a1;
  v23 = a2;

  Gesture.callbacks<A>(_:)(&v22, a3, v13, a4, v20);

  return _EndedGesture.init(_body:)(v20, a3, a4, a5);
}

uint64_t Gesture.callbacks<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CallbacksGesture(0, v13, v15, v14);
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v23 - v19;
  (*(v10 + 16))(v12, a1, a3, v18);
  (*(v10 + 32))(v20, v12, a3);
  swift_getWitnessTable(protocol conformance descriptor for CallbacksGesture<A>, v16);
  Gesture.modifier<A>(_:)(v20, a2, v16, a4, v21, a5);
  return (*(v17 + 8))(v20, v16);
}

uint64_t _EndedGesture.init(_body:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for EndedCallbacks(255, AssociatedTypeWitness, v9, v10);
  swift_getWitnessTable(protocol conformance descriptor for EndedCallbacks<A>, v11);
  v14 = type metadata accessor for CallbacksGesture(255, v11, v12, v13);
  swift_getWitnessTable(protocol conformance descriptor for CallbacksGesture<A>, v14);
  v18[0] = v14;
  v18[1] = a2;
  v18[2] = v15;
  v18[3] = a3;
  v16 = type metadata accessor for ModifierGesture(0, v18);
  return (*(*(v16 - 8) + 32))(a4, a1, v16);
}

void lazy protocol witness table accessor for type DefaultGestureCombiner and conformance DefaultGestureCombiner()
{
  if (!lazy protocol witness table cache variable for type DefaultGestureCombiner and conformance DefaultGestureCombiner)
  {
    swift_getWitnessTable(protocol conformance descriptor for DefaultGestureCombiner, &type metadata for DefaultGestureCombiner, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DefaultGestureCombiner and conformance DefaultGestureCombiner);
  }
}

void FontProvider.resolveTraits(in:)(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v7[2] = a1[2];
  v6 = (*(a3 + 32))(v7, a2);

  Font.ResolvedTraits.init(_:)(v6, a4);
}

void Font.ResolvedTraits.init(_:)(const __CTFontDescriptor *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0;
  if (CTFontDescriptorCopyAttribute(a1, *MEMORY[0x1E6965848]) && (swift_dynamicCast() & 1) != 0)
  {
    v4 = v6;
  }

  Weight = CTFontDescriptorGetWeight();

  *a2 = v4;
  *(a2 + 8) = Weight;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
}

void specialized ColorProvider._apply(color:to:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v12 = *(a2 + 24);
  if (v12 <= 2)
  {
    v53 = v11;
    v54 = v10;
    v55 = v9;
    v56 = v8;
    v57 = v7;
    v58 = v6;
    v59 = v4;
    v60 = v5;
    v14 = *a2;
    if (v12)
    {
      if (v12 == 1)
      {
        v15 = *(a2 + 8);
        if (v15 == *(a2 + 16))
        {
          return;
        }

        v46 = *(a2 + 48);
        v18 = (*(*a3 + 112))(&v46);
        v20 = v19;
        v22 = v21;
        v23 = a4;
        v25 = v24 * v23;
        v26 = *(a2 + 56);
        *&v46 = *(a2 + 48);
        *(&v46 + 1) = v26;
        v27 = *(*a1 + 168);

        LODWORD(a4) = v27(v15, &v46);

        *&v46 = __PAIR64__(v20, LODWORD(v18));
        DWORD2(v46) = v22;
        *(&v46 + 3) = v25 * *&a4;
        v47 = 2143289344;
        v48 = 0;
        v49 = 1065353216;
        v50 = 0;
        v51 = -1;
        v28 = MEMORY[0x1E69E7CC0];
        v52 = MEMORY[0x1E69E7CC0];
        v45 = v14;
        if (*(a2 + 40) == 1)
        {
          v28 = *(a2 + 32);

          outlined consume of _ShapeStyle_Shape.Result(v29, 1u);
          *(a2 + 32) = 0;
          *(a2 + 40) = 5;
        }

        _ShapeStyle_Pack.subscript.setter(&v46, &v45, v15);
        outlined consume of _ShapeStyle_Shape.Result(*(a2 + 32), *(a2 + 40));
        *(a2 + 32) = v28;
        v30 = 1;
      }

      else
      {
        v38 = a1;
        if (v14 >= 1)
        {
          v39 = *(a2 + 56);
          *&v46 = *(a2 + 48);
          *(&v46 + 1) = v39;
          v40 = *(*a1 + 168);

          v42 = v40(v14, &v46);

          type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
          v38 = swift_allocObject();
          *(v38 + 16) = a1;
          *(v38 + 24) = v42;
        }

        v43 = *(a2 + 32);
        v44 = *(a2 + 40);

        outlined consume of _ShapeStyle_Shape.Result(v43, v44);
        *(a2 + 32) = v38;
        v30 = 3;
      }

      *(a2 + 40) = v30;
    }

    else
    {
      v31 = a1;
      if (v14 >= 1)
      {
        v32 = *(a2 + 56);
        *&v46 = *(a2 + 48);
        *(&v46 + 1) = v32;
        v33 = *(*a1 + 168);

        v35 = v33(v14, &v46);

        type metadata accessor for KeyedEncodingContainer<SystemColorType.QuaternaryFillCodingKeys>(0, &lazy cache variable for type metadata for ColorBox<Color.OpacityColor>, lazy protocol witness table accessor for type Color.OpacityColor and conformance Color.OpacityColor, &type metadata for Color.OpacityColor, type metadata accessor for ColorBox);
        v31 = swift_allocObject();
        *(v31 + 16) = a1;
        *(v31 + 24) = v35;
      }

      v36 = *(a2 + 32);
      v37 = *(a2 + 40);

      outlined consume of _ShapeStyle_Shape.Result(v36, v37);
      *(a2 + 32) = v31;
      *(a2 + 40) = 0;
    }
  }
}

uint64_t View.overlay<A>(alignment:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(double)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v24[2] = a6;
  v24[0] = a7;
  v24[1] = a4;
  v11 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for _OverlayModifier(0, v15, v16, v14);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v24 - v20;
  a3(v19);
  (*(v11 + 32))(v21, v13, a5);
  v22 = &v21[*(v17 + 36)];
  *v22 = a1;
  *(v22 + 1) = a2;
  View.modifier<A>(_:)();
  return (*(v18 + 8))(v21, v17);
}

uint64_t static ViewModifier<>._viewListCount(inputs:body:)(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return a2(v5);
}

double static _ContentShapeKindModifier._makeView(modifier:inputs:body:)@<D0>(unsigned int *a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, __int128 *)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, double *a6@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 48);
  v11 = *(a2 + 16);
  v55 = *(a2 + 32);
  v56 = v10;
  v12 = *(a2 + 48);
  v57 = *(a2 + 64);
  v13 = *(a2 + 16);
  v53 = *a2;
  v54 = v13;
  v49 = v55;
  v50 = v12;
  v51 = *(a2 + 64);
  v14 = *a1;
  v58 = *(a2 + 80);
  v52 = *(a2 + 80);
  v47 = v53;
  v48 = v11;
  v15 = outlined init with copy of _ViewInputs(&v53, v59);
  a3(&v44, v15, &v47);
  v59[2] = v49;
  v59[3] = v50;
  v59[4] = v51;
  v60 = v52;
  v59[0] = v47;
  v59[1] = v48;
  outlined destroy of _ViewInputs(v59);
  v16 = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v56);
  if (v16)
  {
    v42 = v53;
    v43 = a6;
    v49 = v55;
    v50 = v56;
    v51 = v57;
    v52 = v58;
    v47 = v53;
    v48 = v54;
    swift_beginAccess();
    v17 = CachedEnvironment.animatedPosition(for:)(&v47);
    v49 = v55;
    v50 = v56;
    v51 = v57;
    v52 = v58;
    v47 = v53;
    v48 = v54;
    v18 = CachedEnvironment.animatedSize(for:)(&v47);
    swift_endAccess();
    v19 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v44);
    v21 = v19;
    if ((v19 & 0x100000000) != 0)
    {
      specialized static GraphHost.currentHost.getter();
      type metadata accessor for ViewGraph();
      swift_dynamicCastClassUnconditional();
      type metadata accessor for [ViewResponder](0);
      v21 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v22, 0);
    }

    v23 = HIDWORD(v56);
    type metadata accessor for ContentShapeKindResponder(0, a4, a5, v20);
    v49 = v55;
    v50 = v56;
    v51 = v57;
    v52 = v58;
    v47 = v53;
    v48 = v54;
    outlined init with copy of _ViewInputs(&v53, v46);
    swift_allocObject();
    v27 = ContentShapeKindResponder.init(inputs:)(&v47, v24, v25, v26);
    *&v47 = __PAIR64__(v17, v14);
    *(&v47 + 1) = __PAIR64__(v23, v18);
    LODWORD(v48) = v21;
    *(&v48 + 1) = v27;
    MEMORY[0x1EEE9AC00](v27);
    v40 = type metadata accessor for ContentShapeKindResponderFilter(0, a4, a5, v28);
    swift_getWitnessTable(protocol conformance descriptor for ContentShapeKindResponderFilter<A>, v40);
    v41 = v29;
    _sSay7SwiftUI13ViewResponderCGMaTm_3(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v47, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, &v38, v40, MEMORY[0x1E69E73E0], v30, MEMORY[0x1E69E7410], v31);

    LOBYTE(v47) = 0;
    PreferencesOutputs.subscript.setter(v46[0], &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
    v32 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA12_GraphInputsVAAE033ContentShapeAccessibilityProviderF033_8830DB57DA6E30576C7025120AC232CCLLV_Tt2g5(v42);
    MEMORY[0x1EEE9AC00](v32);
    v38 = a4;
    v39 = a5;
    LODWORD(v40) = v14;
    v49 = v55;
    v50 = v56;
    v51 = v57;
    v52 = v58;
    v47 = v53;
    v48 = v54;
    v16 = (*(v33 + 8))(partial apply for implicit closure #1 in static _ContentShapeKindModifier._makeView(modifier:inputs:body:));
    a6 = v43;
  }

  v49 = v55;
  v50 = v56;
  v51 = v57;
  v52 = v58;
  v47 = v53;
  v48 = v54;
  MEMORY[0x1EEE9AC00](v16);
  v38 = a4;
  v39 = a5;
  LODWORD(v40) = v14;
  type metadata accessor for _ContentShapeKindModifier(0, a4, a5, v34);
  OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
  _ViewOutputs.appendContentShapePreference<A>(inputs:shape:kinds:)(&v47, partial apply for implicit closure #2 in static _ContentShapeModifier._makeView(modifier:inputs:body:), &v37, OffsetAttribute2, a4, a5);
  *a6 = v44;
  result = v45;
  a6[1] = v45;
  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA20BackgroundProminenceVAAE0V0VG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA20BackgroundProminenceVAAE0V0VG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundProminence.Key>, &type metadata for BackgroundProminence.Key, &protocol witness table for BackgroundProminence.Key, type metadata accessor for EnvironmentPropertyKey);
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

void *_s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA20BackgroundProminenceVAAE0S0VG_Tt0g5(void *a1)
{
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundProminence.Key>, &type metadata for BackgroundProminence.Key, &protocol witness table for BackgroundProminence.Key, type metadata accessor for EnvironmentPropertyKey);

  return _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA20BackgroundProminenceVAAE0V0VG_Tt0B5(a1, (1 << (v2 >> 4)) | (1 << (v2 >> 10)) | (1 << SBYTE2(v2)));
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA20BackgroundProminenceVAAE0F0VG_Tt2B5(uint64_t *a1, char a2)
{
  v4 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA20BackgroundProminenceVAAE0S0VG_Tt0g5(*a1);
  if (!v4 || *(v4 + 72) != (a2 & 1))
  {
    v5 = *a1;
    type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundProminence.Key>>(0);
    *(swift_allocObject() + 72) = a2 & 1;
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundProminence.Key>, &type metadata for BackgroundProminence.Key, &protocol witness table for BackgroundProminence.Key, type metadata accessor for EnvironmentPropertyKey);
    v7 = v6;

    *a1 = PropertyList.Element.init(keyType:before:after:)(v7, 0, v5);
  }
}

double EnvironmentValues.backgroundProminence.setter(char *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA20BackgroundProminenceVAAE0F0VG_Tt2B5(v2, v3);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA20BackgroundProminenceVAAE0K0VG_Ttg5(v4, *v2);
  }

  return result;
}

void type metadata accessor for TypedElement<EnvironmentPropertyKey<BackgroundProminence.Key>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundProminence.Key>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<BackgroundProminence.Key>, &type metadata for BackgroundProminence.Key, &protocol witness table for BackgroundProminence.Key, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<BackgroundProminence.Key> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TypedElement(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TypedElement<EnvironmentPropertyKey<BackgroundProminence.Key>>);
    }
  }
}

uint64_t LayoutProxy.requiresSpacingProjection.getter()
{
  if (*(v0 + 4) == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    InputValue = &static LayoutComputer.defaultValue;
  }

  else
  {
    InputValue = AGGraphGetInputValue();
  }

  v2 = *InputValue;
  v3 = one-time initialization token for lockAssertionsAreEnabled;

  if (v3 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_12;
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
LABEL_12:
    v4 = (*(*v2 + 104))();

    return v4 & 1;
  }

  return result;
}

uint64_t one-time initialization function for sharedPrimary()
{
  type metadata accessor for OffsetShapeStyle<AnyShapeStyle>(0, &lazy cache variable for type metadata for ShapeStyleBox<HierarchicalShapeStyle>, &type metadata for HierarchicalShapeStyle, &protocol witness table for HierarchicalShapeStyle, type metadata accessor for ShapeStyleBox);
  result = swift_allocObject();
  *(result + 16) = 0;
  static HierarchicalShapeStyle.sharedPrimary = result;
  return result;
}

uint64_t AccessibilityAttachment.init(properties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  *(a2 + 120) = 1;
  _s7SwiftUI33AccessibilityTextLayoutPropertiesOSgWOi0_(v9);
  v4 = v9[7];
  *(a2 + 224) = v9[6];
  *(a2 + 240) = v4;
  *(a2 + 256) = v9[8];
  *(a2 + 272) = v10;
  v5 = v9[3];
  *(a2 + 160) = v9[2];
  *(a2 + 176) = v5;
  v6 = v9[5];
  *(a2 + 192) = v9[4];
  *(a2 + 208) = v6;
  v7 = v9[1];
  *(a2 + 128) = v9[0];
  *(a2 + 144) = v7;
  *(a2 + 280) = MEMORY[0x1E69E7CC8];
  *(a2 + 288) = 0;
  return outlined assign with take of AccessibilityProperties(a1, a2);
}

uint64_t getEnumTagSinglePayload for AccessibilityValueStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
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

double View.defaultForegroundColor(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  KeyPath = swift_getKeyPath();
  v9 = a1;
  View.environment<A>(_:_:)(KeyPath, &v9, a2, a3);

  return result;
}

uint64_t one-time initialization function for textToText(uint64_t a1)
{
  result = AGMakeUniqueID();
  static Spacing.Category.textToText = result;
  return result;
}

char *static CALayerPlatformViewDefinition.makeDrawingView(options:)(int *a1)
{
  v1 = *a1;
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = a1[2];
  v5 = *(a1 + 12);
  if ((v4 & 1) != 0 && [objc_opt_self() isSupported])
  {
    LODWORD(v12) = v1;
    BYTE4(v12) = v2;
    BYTE5(v12) = v3;
    LODWORD(v13) = v4;
    BYTE4(v13) = v5;
    v6 = objc_allocWithZone(type metadata accessor for RBDrawingLayer());
    v7 = RBDrawingLayer.init(options:)(&v12);
  }

  else
  {
    LODWORD(v12) = v1;
    BYTE4(v12) = v2;
    BYTE5(v12) = v3;
    LODWORD(v13) = v4;
    BYTE4(v13) = v5;
    v8 = objc_allocWithZone(type metadata accessor for CGDrawingLayer());
    v7 = CGDrawingLayer.init(options:)(&v12);
  }

  v9 = *MEMORY[0x1E6979E08];
  v10 = v7;
  [v10 setContentsGravity_];
  [v10 setCoordinatedAnimationDelegate];
  [v10 setAnchorPoint_];

  return v10;
}

char *CGDrawingLayer.init(options:)(int *a1)
{
  ObjectType = swift_getObjectType();
  v4 = *a1;
  v5 = *(a1 + 2);
  v6 = a1[2];
  v7 = *(a1 + 12);
  v8 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content];
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v8[40] = 5;
  v9 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_state];
  *v9 = 3;
  *(v9 + 1) = 0;
  v10 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options];
  *v10 = v4;
  *(v10 + 2) = v5;
  *(v10 + 2) = v6;
  v10[12] = v7;
  v20.receiver = v1;
  v20.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v20, sel_init);
  v12 = v11 + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options;
  v13 = (*(v11 + OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_options + 8) >> 1) & 1;
  v14 = v11;
  [v14 setOpaque_];
  v15 = *(v12 + 2);
  v16 = MEMORY[0x1E6979658];
  if ((v15 & 0x100) != 0)
  {
    v16 = MEMORY[0x1E6979660];
  }

  if ((v15 & 0x40) != 0)
  {
    v17 = MEMORY[0x1E6979648];
  }

  else
  {
    v17 = v16;
  }

  v18 = *v17;
  [v14 setContentsFormat_];

  return v14;
}

uint64_t protocol witness for PlatformDrawable.update(content:required:) in conformance CGDrawingLayer(void **a1)
{
  v2 = *(a1 + 40);
  if (v2 != 255)
  {
    v3 = a1[3];
    v4 = a1[4];
    v5 = a1[1];
    v6 = a1[2];
    v7 = *a1;
    v8 = &v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content];
    v9 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content];
    v10 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 8];
    v11 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 16];
    v12 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 24];
    v13 = *&v1[OBJC_IVAR____TtC7SwiftUIP33_863CCF9D49B535DAEB1C7D61BEE53B5914CGDrawingLayer_content + 32];
    *v8 = v7;
    *(v8 + 1) = v5;
    *(v8 + 2) = v6;
    *(v8 + 3) = v3;
    *(v8 + 4) = v4;
    v14 = v8[40];
    v8[40] = v2;
    outlined copy of PlatformDrawableContent.Storage(v7, v5, v6, v3, v4, v2);
    outlined consume of PlatformDrawableContent.Storage(v9, v10, v11, v12, v13, v14);
  }

  [v1 setNeedsDisplay];
  return 1;
}

uint64_t DisplayList.ViewUpdater.Platform.updateDrawingView(_:options:contentsScale:)(uint64_t *a1, int *a2, double a3)
{
  v6 = *a2;
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = a2[2];
  v10 = *(a2 + 12);
  v11 = *v3;
  v12 = *a1;
  swift_getObjectType();
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v12 == 0;
  }

  else
  {
    v14 = 1;
  }

  v27 = v11;
  if (v14)
  {
    swift_unknownObjectRelease();
    LODWORD(v32) = v6;
    BYTE4(v32) = v7;
    BYTE5(v32) = v8;
    v33 = v9;
    v34 = v10;
    v12 = (*((v11 & 0xFFFFFFFFFFFFFFF8) + 120))(&v32);
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  (*(v16 + 8))(&v32, ObjectType, v16);
  swift_unknownObjectRelease();
  v18 = v32;
  v19 = WORD2(v32);
  v20 = v33;
  v21 = v34;
  LODWORD(v32) = v6;
  BYTE4(v32) = v7;
  BYTE5(v32) = v8;
  v33 = v9;
  v34 = v10;
  v28 = v18;
  v29 = v19;
  v30 = v20;
  v31 = v21;
  if (!specialized static RasterizationOptions.== infix(_:_:)(&v32, &v28))
  {
    LODWORD(v32) = v6;
    BYTE4(v32) = v7;
    BYTE5(v32) = v8;
    v33 = v9;
    v34 = v10;
    if ((v9 ^ ((v20 & 1) == 0)))
    {
      (*(v16 + 16))(&v32, ObjectType, v16);
    }

    else
    {
      v22 = (*((v27 & 0xFFFFFFFFFFFFFFF8) + 120))(&v32);
      v16 = v23;
      swift_unknownObjectRelease();
      v12 = v22;
    }
  }

  v24 = swift_getObjectType();
  v25 = *(v16 + 56);
  swift_unknownObjectRetain_n();
  v25(v24, v16, a3);
  swift_unknownObjectRelease();
  *a1 = v12;
  return v12;
}

void protocol witness for PlatformDrawable.options.getter in conformance CGDrawingLayer(void *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = *(v3 + 2);
  v6 = v3[2];
  LOBYTE(v3) = *(v3 + 12);
  *a2 = v4;
  *(a2 + 4) = v5;
  *(a2 + 8) = v6;
  *(a2 + 12) = v3;
}

BOOL specialized static RasterizationOptions.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v4 = *(a1 + 5);
  v5 = *(a2 + 5);
  if (v4 == 3)
  {
    if (v5 != 3)
    {
      return 0;
    }
  }

  else if (v5 == 3 || v4 != v5)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12);
}

double outlined copy of PlatformDrawableContent.Storage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 1u)
  {
  }

  else
  {
    switch(a6)
    {
      case 2u:

        break;
      case 3u:
        swift_unknownObjectRetain();
        break;
      case 4u:
        v6 = a1;
        break;
    }
  }

  return result;
}

void outlined consume of PlatformDrawableContent.Storage(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 <= 1u)
  {
  }

  else
  {
    switch(a6)
    {
      case 2u:

        break;
      case 3u:
        swift_unknownObjectRelease();
        break;
      case 4u:

        break;
    }
  }
}

void outlined consume of PlatformDrawableContent?(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 != 0xFF)
  {
    outlined consume of PlatformDrawableContent.Storage(a1, a2, a3, a4, a5, a6);
  }
}

void type metadata accessor for ShapeStyledDisplayList<StyledTextContentView>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = type metadata accessor for ShapeStyledDisplayList(0, a3, a4, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void specialized _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4, uint64_t *a5, __n128 a6)
{
  v14 = v6;
  v16 = a2;
  v17 = &v326;
  v355 = *MEMORY[0x1E69E9840];
  v18 = *a1;
  v19 = *(a1 + 29);
  v20 = *a3;
  v21 = *a4;
  *aBlock = *a4;
  v249 = v20;
  LOBYTE(v326.a) = v20;
  _ShapeStyle_Pack.Slice.init(pack:name:)(aBlock, &v326, &v290);
  v22 = dword_18DDD0D14[v16];
  v253 = v19;
  if (v19)
  {
    *&v23 = v22;
  }

  else
  {
    *&v23 = v22 | 0x20;
  }

  v243 = v21;

  v240 = v18;
  v24 = [v18 beginUpdateWithRenderingMode:255 position:v14 + 112 size:v14 + 128 flags:*&v23];
  RBSymbolUpdateNextTime();
  v247 = v25;
  v250 = *(&v291 + 1) >> 1;
  v251 = v291;
  v26 = (*(&v291 + 1) >> 1) - v291;
  if (__OFSUB__(*(&v291 + 1) >> 1, v291))
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  if (__OFADD__(v292, v26))
  {
LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  v7 = &v333;
  v248 = *(&v290 + 1);
  v254 = (v292 + v26);
  v257 = v24;
  v258 = v292;
  if (!((v254 == v292) | v253 & 1))
  {
    v27 = RBSymbolUpdateTemplateImage();
    if (v27)
    {
      v18 = v27;
      Width = CGImageGetWidth(v27);
      Height = CGImageGetHeight(v18);
      v23 = *&v258;
      *(&v287 + 1) = v18;
      outlined consume of GraphicsImage.Contents?(0, 0xFFu);
      aBlock[0] = 0;
      v24 = 0;
      v28 = *(v14 + 80);
      v324 = *(v14 + 64);
      v325[0] = v28;
      *(v325 + 12) = *(v14 + 92);
      v29 = *(v14 + 16);
      v320 = *v14;
      v321 = v29;
      v30 = *(v14 + 48);
      v322 = *(v14 + 32);
      v323 = v30;
      outlined destroy of _ShapeStyle_RenderedShape.Shape(&v320);
      *v14 = v18;
      *(v14 + 8) = 0;
      *(v14 + 16) = 0x3FF0000000000000;
      *(v14 + 24) = Width;
      *(v14 + 32) = Height;
      *(v14 + 40) = v16;
      __asm { FMOV            V0.4S, #1.0 }

      *(v14 + 44) = _Q0;
      *(v14 + 60) = 2143289344;
      *(v14 + 64) = 0;
      *(v14 + 72) = 0u;
      *(v14 + 88) = 0u;
      *(v14 + 104) = 1610678530;
      if ((v251 + *&v23 < 0) ^ __OFADD__(v251, *&v23) | (v251 + *&v23 == 0) && v250 > -v258)
      {
        v35 = (v248 - (v258 << 7));
        v36 = *v35;
        v37 = v35[1];
        v38 = v35[3];
        *&aBlock[32] = v35[2];
        *&aBlock[48] = v38;
        *aBlock = v36;
        *&aBlock[16] = v37;
        v39 = v35[4];
        v40 = v35[5];
        v41 = v35[7];
        *&aBlock[96] = v35[6];
        *&aBlock[112] = v41;
        *&aBlock[64] = v39;
        *&aBlock[80] = v40;
        v42 = *(v35 + 8);
        v43 = *(v35 + 40);
        v44 = *(v35 + 56);
        *&v294.c = *(v35 + 24);
        *&v294.tx = v43;
        *&v294.a = v42;
        v45 = *(v35 + 72);
        v46 = *(v35 + 88);
        v47 = *(v35 + 104);
        v299 = *(v35 + 15);
        v297 = v46;
        v298 = v47;
        v295 = v44;
        v296 = v45;
        outlined init with copy of (DisplayList.Item, alphaOnly: Bool)(aBlock, &v326, &lazy cache variable for type metadata for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), &type metadata for _ShapeStyle_Pack.Key, &type metadata for _ShapeStyle_Pack.Style, "key style ");
        _ShapeStyle_Pack.Style.modifyStyle(for:)(v257, 0, 0);
        _ShapeStyle_Pack.Style.applyOpacity(_:)(1.0);
        *&v345.a = v249;
        LOBYTE(v345.c) = 0;
        v335 = v296;
        v336[0] = v297;
        v336[1] = v298;
        v337 = v299;
        v333 = v294;
        v334 = v295;
        outlined init with copy of _ShapeStyle_Pack.Style(&v333, &v326);
        _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(&v345, &v294, v14);
        *&v339[48] = v296;
        *&v339[64] = v297;
        *&v339[80] = v298;
        v340 = v299;
        v338 = *&v294.a;
        *v339 = *&v294.c;
        *&v339[16] = *&v294.tx;
        *&v339[32] = v295;
        outlined destroy of _ShapeStyle_Pack.Style?(&v338, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);
        *&v342[48] = v296;
        *&v342[64] = v297;
        v343 = v298;
        v341 = *&v294.a;
        *v342 = *&v294.c;
        *&v342[16] = *&v294.tx;
        *&v342[32] = v295;
        v328 = v296;
        v329[0] = v297;
        v329[1] = v298;
        v326 = v294;
        v344 = v299;
        *&v330 = v299;
        v327 = v295;
        outlined init with copy of _ShapeStyle_Pack.Style(&v341, &v345);
        _ShapeStyle_RenderedShape.render(style:)(&v326);
        *v347 = v328;
        *&v347[16] = v329[0];
        v348 = v329[1];
        v349 = v330;
        v345 = v326;
        v346 = v327;
        outlined destroy of _ShapeStyle_Pack.Style(&v345);
        _ShapeStyle_RenderedLayers.endLayer(shape:)(v14);

        v328 = v296;
        v329[0] = v297;
        v329[1] = v298;
        *&v330 = v299;
        v326 = v294;
        v327 = v295;
        outlined destroy of _ShapeStyle_Pack.Style(&v326);
        [v240 endUpdate_];
LABEL_169:
        outlined destroy of _ShapeStyle_Pack.Slice(&v290);
        v69 = 0;
        v70 = 0;
        goto LABEL_170;
      }

      goto LABEL_179;
    }
  }

  updated = RBSymbolUpdateGroupCount();
  v282 = a5;
  if ((MEMORY[0x193AC3780](v24) & 0x1000) == 0 && updated == 1 && RBSymbolUpdateGroupSize() == 1)
  {
LABEL_35:
    v242 = updated;
    v256 = 0;
    v71 = 0.0;
    v18 = &v345;
    v72 = v254;
    v241 = v21 + 33;
    v10 = 0.0;
    while (1)
    {
      if (__OFADD__(*&v71, 1))
      {
        goto LABEL_174;
      }

      *&v246 = *&v71 + 1;
      v270 = v71;
      v73 = RBSymbolUpdateGroupSize();
      if (v73 < 0)
      {
        break;
      }

      if (v73)
      {
        v23 = 0.0;
        v264 = v73;
        do
        {
          *aBlock = v24;
          *&aBlock[8] = v270;
          *&aBlock[16] = v23;
          RBSymbolUpdateLayerDrawingOpacity();
          LODWORD(v13) = v75;
          *aBlock = v24;
          *&aBlock[8] = v270;
          v283 = v23;
          *&aBlock[16] = v23;
          v76 = RBSymbolUpdateLayerStyle();
          if (*&v13 <= 0.0 || v76 == 10)
          {
            goto LABEL_44;
          }

          if (v76 > 6)
          {
            switch(v76)
            {
              case 7:
                if (v72 == v258)
                {
                  goto LABEL_44;
                }

                v78 = 3;
                break;
              case 8:
                if (v72 == v258)
                {
                  goto LABEL_44;
                }

                v78 = 4;
                break;
              case 9:
                *aBlock = v24;
                *&aBlock[8] = v270;
                *&aBlock[16] = v23;
                v79 = RBSymbolUpdateLayerColorName();
                if (!v79)
                {
                  goto LABEL_44;
                }

                v80 = v79;
                *&v287 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                *(&v287 + 1) = v81;

                v82 = *(v243 + 16);
                if (v82)
                {
                  v83 = 0;
                  v84 = v241;
                  while (1)
                  {
                    v85 = *(v84 - 1);
                    if (v85 == 2 && *v84 == 0)
                    {
                      v217 = *(v84 + 63);
                      v218 = *(v84 + 79);
                      v219 = *(v84 + 111);
                      *&aBlock[96] = *(v84 + 95);
                      *&aBlock[112] = v219;
                      v220 = *(v84 - 1);
                      v221 = *(v84 + 15);
                      v222 = *(v84 + 31);
                      v223 = *(v84 + 47);
LABEL_150:
                      *&aBlock[32] = v222;
                      *&aBlock[48] = v223;
                      *aBlock = v220;
                      *&aBlock[16] = v221;
                      *&aBlock[64] = v217;
                      *&aBlock[80] = v218;
                      LODWORD(Width) = *&aBlock[96];
                      v286 = *&aBlock[104];
                      v227 = aBlock[112];
                      v228 = *&aBlock[120];
                      outlined init with copy of (DisplayList.Item, alphaOnly: Bool)(aBlock, &v326, &lazy cache variable for type metadata for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), &type metadata for _ShapeStyle_Pack.Key, &type metadata for _ShapeStyle_Pack.Style, "key style ");
                      *&v345.tx = *&aBlock[40];
                      v346 = *&aBlock[56];
                      *v347 = *&aBlock[72];
                      *&v347[14] = *&aBlock[86];
                      v229 = *&aBlock[8];
                      v230 = *&aBlock[24];
                      goto LABEL_154;
                    }

                    v87 = *v84 && v85 == 2;
                    if (v85 > 2 || v87)
                    {
                      break;
                    }

                    ++v83;
                    v84 += 128;
                    if (v82 == v83)
                    {
                      goto LABEL_151;
                    }
                  }

                  if (v83)
                  {
                    v225 = *(v84 - 129);
                    v224 = (v84 - 129);
                    if (v225 == 2)
                    {
                      v217 = v224[4];
                      v218 = v224[5];
                      v226 = v224[7];
                      *&aBlock[96] = v224[6];
                      *&aBlock[112] = v226;
                      v220 = *v224;
                      v221 = v224[1];
                      v222 = v224[2];
                      v223 = v224[3];
                      goto LABEL_150;
                    }
                  }
                }

LABEL_151:
                if (one-time initialization token for clear != -1)
                {
                  swift_once();
                }

                *&aBlock[80] = xmmword_1ED51ECC0;
                *&aBlock[96] = xmmword_1ED51ECD0;
                v228 = qword_1ED51ECE0;
                *&aBlock[112] = qword_1ED51ECE0;
                *aBlock = static _ShapeStyle_Pack.Style.clear;
                *&aBlock[16] = *&dword_1ED51EC80;
                *&aBlock[32] = xmmword_1ED51EC90;
                *&aBlock[48] = unk_1ED51ECA0;
                *&aBlock[64] = xmmword_1ED51ECB0;
                v286 = xmmword_1ED51ECD0;
                v227 = BYTE8(xmmword_1ED51ECD0);
                LODWORD(Width) = DWORD2(xmmword_1ED51ECC0);
                outlined init with copy of _ShapeStyle_Pack.Style(aBlock, &v326);
                *&v345.tx = *&aBlock[32];
                v346 = *&aBlock[48];
                *v347 = *&aBlock[64];
                *&v347[14] = *&aBlock[78];
                v229 = *aBlock;
                v230 = *&aBlock[16];
LABEL_154:
                *&v345.a = v229;
                *&v345.c = v230;
                *&aBlock[32] = *&v345.tx;
                *&aBlock[48] = v346;
                *&aBlock[64] = *v347;
                *&aBlock[78] = *&v347[14];
                *aBlock = v229;
                *&aBlock[16] = v230;
                *&aBlock[88] = LODWORD(Width);
                *&aBlock[96] = v286;
                aBlock[104] = v227;
                *&aBlock[112] = v228;
                outlined init with copy of _ShapeStyle_Pack.Fill(&v345, &v326);
                outlined destroy of _ShapeStyle_Pack.Style(aBlock);
                if (v347[21] == 6)
                {
                  *&v326.a = *&v345.a;
                  *&v326.c = *&v345.c;
                  v269 = ResolvedMulticolorStyle.resolveHDR(name:)(v287, *(&v287 + 1));
                  v265 = v231;
                  v233 = v232;
                  outlined destroy of _ShapeStyle_Pack.Fill(&v345);
                  v72 = v254;
                  v18 = &v345;
                  if ((v233 & 0x100000000) == 0)
                  {
                    LODWORD(b) = v233;
LABEL_165:
                    v266 = 0;
                    v260 = 0;
                    v263 = HIDWORD(v265);
                    LODWORD(Width) = 1.0;
                    v285 = 2;
                    v259 = -1;
                    v267 = MEMORY[0x1E69E7CC0];
                    goto LABEL_89;
                  }
                }

                else
                {
                  outlined destroy of _ShapeStyle_Pack.Fill(&v345);
                  v72 = v254;
                  v18 = &v345;
                }

                *&v326.a = v24;
                v326.b = v270;
                v326.c = v283;
                v234 = RBSymbolUpdateLayerDefaultColor();
                if (!v234)
                {

                  goto LABEL_44;
                }

                v235 = v234;
                v269 = specialized Color.Resolved.init(failableCGColor:)(v235);
                v265 = v236;
                if (v237)
                {

                  goto LABEL_44;
                }

                CGColorGetContentHeadroom();
                v239 = v238;

                if (v239 == 0.0)
                {
                  *&b = NAN;
                }

                else
                {
                  *&b = v239;
                }

                goto LABEL_165;
              default:
                goto LABEL_44;
            }
          }

          else if (v76)
          {
            if (v76 == 5)
            {
              if (v72 == v258)
              {
                goto LABEL_44;
              }

              v78 = 1;
            }

            else
            {
              if (v76 != 6 || v72 == v258)
              {
                goto LABEL_44;
              }

              v78 = 2;
            }
          }

          else
          {
            if (v72 == v258)
            {
              goto LABEL_44;
            }

            v78 = 0;
          }

          if (v72 < v258)
          {
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
            goto LABEL_175;
          }

          v89 = v254 + ~v258;
          if (v89 >= v78)
          {
            v89 = v78;
          }

          v90 = v89 - v258;
          if (v90 < v251 || v90 >= v250)
          {
            goto LABEL_172;
          }

          v91 = v248 + (v90 << 7);
          v92 = *(v91 + 64);
          v93 = *(v91 + 80);
          v94 = *(v91 + 112);
          *&aBlock[96] = *(v91 + 96);
          *&aBlock[112] = v94;
          v95 = *(v91 + 32);
          v96 = *(v91 + 48);
          v97 = *(v91 + 16);
          *aBlock = *v91;
          *&aBlock[16] = v97;
          *&aBlock[32] = v95;
          *&aBlock[48] = v96;
          *&aBlock[64] = v92;
          *&aBlock[80] = v93;
          LODWORD(Width) = *&aBlock[96];
          v267 = *&aBlock[120];
          v269 = *&aBlock[8];
          LODWORD(v265) = v97;
          LODWORD(v263) = DWORD1(v97);
          LODWORD(b) = DWORD2(v97);
          v98 = *(v91 + 28);
          v99 = *(v91 + 44);
          v100 = *(v91 + 60);
          v101 = *(v91 + 76);
          v354 = *(v91 + 92);
          v352 = v100;
          v353 = v101;
          v350 = v98;
          v351 = v99;
          v266 = aBlock[93];
          v261 = *&aBlock[100];
          v262 = *&aBlock[94];
          v260 = *&aBlock[104];
          v259 = aBlock[112];
          v102 = *(v91 + 113);
          *(v293 + 3) = *(v91 + 116);
          v287 = v249 | (v78 << 16);
          v293[0] = v102;
          outlined init with copy of (DisplayList.Item, alphaOnly: Bool)(aBlock, &v326, &lazy cache variable for type metadata for (key: _ShapeStyle_Pack.Key, style: _ShapeStyle_Pack.Style), &type metadata for _ShapeStyle_Pack.Key, &type metadata for _ShapeStyle_Pack.Style, "key style ");
          v285 = 0;
LABEL_89:
          v103 = v270;
          *aBlock = v24;
          *&aBlock[8] = v270;
          *&aBlock[16] = v283;
          if (RBSymbolUpdateLayerGetFillType() == 2 && !v266)
          {
            v288.n128_u64[0] = v269;
            v288.n128_u64[1] = __PAIR64__(v263, v265);
            v289 = LODWORD(b);
            *&v326.a = v24;
            v326.b = v270;
            v326.c = v283;
            RBSymbolUpdateLayerGetGradientAxis();
            v284 = LODWORD(Width);
            v105 = v104;
            v107 = v106;
            v109 = v108;
            v111 = v110;
            *&v326.a = v24;
            v326.b = v270;
            v326.c = v283;
            RBSymbolUpdateLayerFillRect();
            point = v113 + v107 * v112;
            v275 = v115 + v109 * v114;
            v271 = v115 + v105 * v114;
            v273 = v113 + v111 * v112;
            *&v345.a = v24;
            v345.b = v270;
            v345.c = v283;
            RBSymbolUpdateLayerFillTransform();
            LODWORD(v107) = LODWORD(b);
            a = v326.a;
            b = v326.b;
            c = v326.c;
            d = v326.d;
            tx = v326.tx;
            Width = v326.ty;
            LOBYTE(v266) = 1;
            ResolvedGradient.init(standardColor:style:)(&v288, &v326);
            v119 = v326.a;
            b_low = LOBYTE(v326.b);
            b_high = HIDWORD(v326.b);
            c_low = LOBYTE(v326.c);
            v326.a = a;
            v326.b = b;
            v326.c = c;
            v326.d = d;
            v326.tx = tx;
            v326.ty = Width;
            v356.x = v271;
            v356.y = point;
            v123 = CGPointApplyAffineTransform(v356, &v326);
            v326.a = a;
            v326.b = b;
            v10 = 0.0;
            LODWORD(b) = LODWORD(v107);
            v326.c = c;
            v326.d = d;
            v326.tx = tx;
            v326.ty = Width;
            LODWORD(Width) = v284;
            v357.y = v273;
            v357.x = v275;
            v124 = CGPointApplyAffineTransform(v357, &v326);
            Height = v124.x;
            LOBYTE(v326.a) = c_low;
            _s7SwiftUI13AnimatedShapeVyAA024PartialContainerRelativeD0VGMaTm_0(0, &lazy cache variable for type metadata for _AnyResolvedPaint<LinearGradient.AbsolutePaint>, lazy protocol witness table accessor for type LinearGradient.AbsolutePaint and conformance LinearGradient.AbsolutePaint, &type metadata for LinearGradient.AbsolutePaint, type metadata accessor for _AnyResolvedPaint);
            v125 = swift_allocObject();
            *(v125 + 16) = v119;
            v103 = v270;
            *(v125 + 24) = b_low;
            v18 = &v345;
            *(v125 + 28) = b_high;
            *(v125 + 32) = c_low;
            v24 = v257;
            *(v125 + 40) = v123;
            *(v125 + 56) = v124;
            *(v125 + 72) = 0;
            *aBlock = v269;
            *&aBlock[8] = __PAIR64__(v263, v265);
            *&aBlock[16] = LODWORD(v107);
            *&aBlock[36] = v351;
            *&aBlock[52] = v352;
            *&aBlock[68] = v353;
            *&aBlock[84] = v354;
            *&aBlock[20] = v350;
            outlined destroy of _ShapeStyle_Pack.Fill(aBlock);
            v269 = v125;
          }

          v126 = v267;
          v23 = *(v267 + 16);
          if (v23 != 0.0)
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v126 = v267;
            }

            else
            {
              v126 = specialized _ArrayBuffer._consumeAndCreateNew()(v267);
            }

            if (*&v23 > *(v126 + 2))
            {
              goto LABEL_173;
            }

            v127 = 0;
            v128 = *&v23 - 1;
            if (*&v23 == 1)
            {
              goto LABEL_97;
            }

            v206 = !is_mul_ok(v128, 0x50uLL);
            if (&v126[80 * v128 + 88] < v126 + 88)
            {
              goto LABEL_97;
            }

            if (v206)
            {
              goto LABEL_97;
            }

            v127 = *&v23 & 0x7FFFFFFFFFFFFFFELL;
            v207 = (v126 + 168);
            v208 = *&v23 & 0x7FFFFFFFFFFFFFFELL;
            do
            {
              v209 = *&v13 * *v207;
              *(v207 - 20) = *&v13 * *(v207 - 20);
              *v207 = v209;
              v207 += 40;
              v208 -= 2;
            }

            while (v208);
            if (*&v23 != v127)
            {
LABEL_97:
              v129 = (*&v23 - v127);
              v130 = 80 * v127 + 88;
              do
              {
                *&v126[v130] = *&v13 * *&v126[v130];
                v130 += 80;
                --v129;
              }

              while (v129);
            }
          }

          *&c = *&v13 * *&Width;
          *&v341 = v269;
          *(&v341 + 1) = __PAIR64__(v263, v265);
          *v342 = LODWORD(b);
          v342[68] = v354;
          *&v342[52] = v353;
          *&v342[36] = v352;
          *&v342[20] = v351;
          *&v342[4] = v350;
          v342[69] = v266;
          *&v342[70] = v262;
          *&v342[72] = *&v13 * *&Width;
          *&v342[76] = v261;
          *&v343 = v260;
          BYTE8(v343) = v259;
          HIDWORD(v343) = *(v293 + 3);
          *(&v343 + 9) = v293[0];
          v344 = v126;
          *&v345.tx = *&v342[16];
          v346 = *&v342[32];
          *&v345.a = v341;
          *&v345.c = *v342;
          v268 = v126;
          v349 = v126;
          *&v347[16] = *&v342[64];
          v348 = v343;
          *v347 = *&v342[48];
          if (*a5)
          {
            outlined init with copy of _ShapeStyle_Pack.Style(&v341, aBlock);

            while (1)
            {
              *&v333.a = v287;
              LOBYTE(v333.c) = v285;
              *&v339[48] = *v347;
              *&v339[64] = *&v347[16];
              *&v339[80] = v348;
              v340 = v349;
              v338 = *&v345.a;
              *v339 = *&v345.c;
              *&v339[16] = *&v345.tx;
              *&v339[32] = v346;
              _ShapeStyle_InterpolatorGroup.addLayer(id:style:)(&v333, &v338, &v326);
              *&aBlock[96] = v329[1];
              *&aBlock[112] = v330;
              *&aBlock[128] = v331;
              *aBlock = v326;
              *&aBlock[48] = v327;
              *&aBlock[64] = v328;
              *&aBlock[80] = v329[0];
              if (_s7SwiftUI29_ShapeStyle_InterpolatorGroupC14AddLayerResult33_3890C65F12EA82A4BC5FBD33046B67FALLOWOg(aBlock) != 1)
              {
                break;
              }

              v150 = sub_18D130FB8(aBlock);
              v151 = *(v150 + 120);
              v152 = *(v150 + 128);
              v153 = *(v14 + 80);
              v324 = *(v14 + 64);
              v325[0] = v153;
              *(v325 + 12) = *(v14 + 92);
              v154 = *(v14 + 16);
              v320 = *v14;
              v321 = v154;
              v155 = *(v14 + 48);
              v322 = *(v14 + 32);
              v323 = v155;
              *&v333.a = v320;
              *&v333.c = v154;
              *&v333.tx = v322;
              *(v336 + 12) = *(v325 + 12);
              v335 = v324;
              v336[0] = v153;
              v334 = v155;
              *(v14 + 96) = 0;
              *(v14 + 64) = 0u;
              *(v14 + 80) = 0u;
              *(v14 + 32) = 0u;
              *(v14 + 48) = 0u;
              *v14 = 0u;
              *(v14 + 16) = 0u;
              *(v14 + 104) = -1610612736;

              outlined init with copy of _ShapeStyle_RenderedShape.Shape(&v320, &v338);
              outlined destroy of _ShapeStyle_RenderedShape.Shape(&v333);

              *(v14 + 144) = v151;
              *(v14 + 152) = v152;
              v156 = *(v150 + 112);
              if (v156)
              {
                *&v339[32] = *(v150 + 48);
                *&v339[48] = *(v150 + 64);
                *&v339[64] = *(v150 + 80);
                *&v339[80] = *(v150 + 96);
                v338 = *v150;
                *v339 = *(v150 + 16);
                *&v339[16] = *(v150 + 32);
                v340 = v156;
                _ShapeStyle_RenderedShape.render(style:)(&v338);
              }

              _ShapeStyle_RenderedShape.commitItem()(&v312);
              v157 = *(a5 + 1);
              *&v319[12] = *(a5 + 68);
              v158 = *(a5 + 3);
              v316 = v157;
              v317 = v158;
              v159 = *(a5 + 7);
              v318 = *(a5 + 5);
              *v319 = v159;
              v160 = v157;
              v161 = (*&v319[16] >> 28) & 3;
              if (v161)
              {
                if (v161 == 1)
                {
                  v312 = vsubq_f64(v312, *(v14 + 112));
                  *&v315[24] = 0;
                  *&v339[16] = v314;
                  *&v339[32] = *v315;
                  *&v339[44] = *&v315[12];
                  v338 = v312;
                  *v339 = v313;
                  outlined init with copy of _ShapeStyle_RenderedLayers.Layers(&v316, &v308);
                  outlined init with copy of DisplayList.Item(&v338, &v308);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v160 + 2) + 1, 1, v160);
                  }

                  v163 = *(v160 + 2);
                  v162 = *(v160 + 3);
                  if (v163 >= v162 >> 1)
                  {
                    v160 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v162 > 1), v163 + 1, 1, v160);
                  }

                  v306 = v314;
                  *v307 = *v315;
                  *&v307[12] = *&v315[12];
                  v304 = v312;
                  v305 = v313;
                  outlined destroy of DisplayList.Item(&v304);
                  *(v160 + 2) = v163 + 1;
                  v164 = &v160[80 * v163];
                  *(v164 + 2) = v338;
                  v166 = *&v339[16];
                  v165 = *&v339[32];
                  v167 = *v339;
                  *(v164 + 92) = *&v339[44];
                  *(v164 + 4) = v166;
                  *(v164 + 5) = v165;
                  *(v164 + 3) = v167;
                  a5 = v282;
                  *(v311 + 12) = *(v282 + 68);
                  v168 = *(v282 + 7);
                  v310 = *(v282 + 5);
                  v311[0] = v168;
                  v169 = *(v282 + 3);
                  v308 = *(v282 + 1);
                  v309 = v169;
                  outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v308);

                  outlined destroy of _ShapeStyle_Pack.Style?(v150, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);

                  v282[1] = v160;
                  v278 = v278 & 0xFFFFFFFFC000FFFFLL | 0x10000000;
                  v279 &= 0x1FFFFFFFFFuLL;
                  v282[7] = v279;
                  v282[9] = v278;
                  v17 = &v326;
                }

                else
                {
                  v170 = *&v314.f64[1];
                  v277 = *&v314.f64[0];
                  v171 = *&v315[8];
                  v172 = *&v315[24];
                  v173 = *v315 & 0x1FFFFFFFFFLL;
                  v174 = *&v315[16] & 0xFFFFFFFFC000FFFFLL;
                  v175 = *(a5 + 3);
                  v176 = *(a5 + 7);
                  *&v339[16] = *(a5 + 5);
                  *&v339[32] = v176;
                  *&v339[44] = *(a5 + 68);
                  v338 = *(a5 + 1);
                  *v339 = v175;
                  outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v338);

                  outlined destroy of _ShapeStyle_Pack.Style?(v150, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);

                  v177 = v312;
                  *(a5 + 3) = v313;
                  *(a5 + 1) = v177;
                  a5[5] = v277;
                  a5[6] = v170;
                  a5[7] = v173;
                  a5[8] = v171;
                  a5[9] = v174;
                  v17 = &v326;
                  *(a5 + 20) = v172;
                  v7 = &v333;
                }
              }

              else
              {
                v274 = *v319;
                v276 = *&v319[8];
                v272 = *(&v318 + 1);
                v131 = v318;
                v132 = *(&v317 + 1);
                v133 = v317;
                v134 = *&v319[16] & 0xFFFFFFFFCFFFFFFFLL;
                v135 = *(v14 + 112);
                Width = *&v157 - v135.f64[0];
                Height = *(&v316 + 1) - *(v14 + 120);
                v312 = vsubq_f64(v312, v135);
                *&v315[24] = 0;
                type metadata accessor for _ShapeStyle_Pack.Style?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<DisplayList.Item>, &type metadata for DisplayList.Item, MEMORY[0x1E69E6F90]);
                v136 = swift_allocObject();
                *v300 = Width;
                *(v300 + 1) = Height;
                v300[1] = __PAIR128__(v132, v133);
                v300[2] = __PAIR128__(v272, v131);
                *v301 = v274;
                *&v301[8] = v276;
                *&v301[16] = v134;
                *&v301[24] = 0;
                v137 = *v301;
                v138 = v300[0];
                v136[3] = __PAIR128__(v132, v133);
                v136[4] = __PAIR128__(v272, v131);
                v136[5] = v137;
                *(v136 + 92) = *&v301[12];
                v136[1] = xmmword_18DDAB4C0;
                v136[2] = v138;
                v302[0] = v312;
                *(v303 + 12) = *&v315[12];
                v302[2] = v314;
                v303[0] = *v315;
                v302[1] = v313;
                v139 = v312;
                v140 = v313;
                *(v136 + 172) = *&v315[12];
                v141 = *v315;
                v136[9] = v314;
                v136[10] = v141;
                v136[7] = v139;
                v136[8] = v140;
                v304.f64[0] = Width;
                v304.f64[1] = Height;
                v305 = __PAIR128__(v132, v133);
                a5 = v282;
                v17 = &v326;
                v306 = __PAIR128__(v272, v131);
                v7 = &v333;
                *v307 = v274;
                *&v307[8] = v276;
                *&v307[16] = v134;
                *&v307[24] = 0;
                outlined init with copy of _ShapeStyle_RenderedLayers.Layers(&v316, &v338);
                outlined init with copy of DisplayList.Item(v300, &v338);
                outlined init with copy of DisplayList.Item(v302, &v338);
                outlined destroy of DisplayList.Item(&v304);
                v310 = v314;
                v311[0] = *v315;
                *(v311 + 12) = *&v315[12];
                v308 = v312;
                v309 = v313;
                outlined destroy of DisplayList.Item(&v308);
                v142 = *(v282 + 3);
                v143 = *(v282 + 7);
                *&v339[16] = *(v282 + 5);
                *&v339[32] = v143;
                *&v339[44] = *(v282 + 68);
                v338 = *(v282 + 1);
                *v339 = v142;
                outlined destroy of _ShapeStyle_RenderedLayers.Layers(&v338);

                outlined destroy of _ShapeStyle_Pack.Style?(v150, &lazy cache variable for type metadata for _ShapeStyle_Pack.Style?, &type metadata for _ShapeStyle_Pack.Style, MEMORY[0x1E69E6720], type metadata accessor for _ShapeStyle_Pack.Style?);

                v282[1] = v136;
                v280 = v280 & 0xFFFFFFFFC000FFFFLL | 0x10000000;
                v281 &= 0x1FFFFFFFFFuLL;
                v282[7] = v281;
                v282[9] = v280;
              }

              v144 = *(v14 + 80);
              *&v339[48] = *(v14 + 64);
              *&v339[64] = v144;
              *&v339[76] = *(v14 + 92);
              v145 = *(v14 + 16);
              v338 = *v14;
              *v339 = v145;
              v146 = *(v14 + 48);
              *&v339[16] = *(v14 + 32);
              *&v339[32] = v146;
              outlined destroy of _ShapeStyle_RenderedShape.Shape(&v338);
              v147 = v325[0];
              *(v14 + 64) = v324;
              *(v14 + 80) = v147;
              *(v14 + 92) = *(v325 + 12);
              v148 = v321;
              *v14 = v320;
              *(v14 + 16) = v148;
              v149 = v323;
              *(v14 + 32) = v322;
              *(v14 + 48) = v149;
            }

            v178 = sub_18D130FB8(aBlock);
            v179 = *v178;
            v180 = *(v178 + 8);
            outlined destroy of _ShapeStyle_Pack.Style(&v341);
            outlined consume of _ShapeStyle_LayerID(v287, *(&v287 + 1), v285);

            *(v14 + 144) = v179;
            *(v14 + 152) = v180;
            v24 = v257;
            v103 = v270;
            if (v253)
            {
LABEL_115:
              v181 = v256;
              if (!v256)
              {
                goto LABEL_120;
              }

              goto LABEL_122;
            }
          }

          else
          {
            outlined consume of _ShapeStyle_LayerID(v287, *(&v287 + 1), v285);
            if (v253)
            {
              goto LABEL_115;
            }
          }

          memset(&v326, 0, sizeof(v326));
          *aBlock = v24;
          *&aBlock[8] = v103;
          *&aBlock[16] = v283;
          v182 = RBSymbolUpdateLayerPath();
          if (!RBPathIsNull(v182, v183))
          {
            *aBlock = v326;
            v210 = RBPathCopyTransformedPath();
            v212 = v211;
            type metadata accessor for Path.PathBox();
            v213 = swift_allocObject();
            *(v213 + 40) = 0u;
            *(v213 + 56) = 0u;
            *(v213 + 72) = 0u;
            *(v213 + 88) = 0u;
            *(v213 + 104) = 0u;
            *(v213 + 16) = 1;
            *(v213 + 24) = v210;
            *(v213 + 32) = v212;
            v214 = *(v14 + 80);
            *&aBlock[64] = *(v14 + 64);
            *&aBlock[80] = v214;
            *&aBlock[92] = *(v14 + 92);
            v215 = *(v14 + 16);
            *aBlock = *v14;
            *&aBlock[16] = v215;
            v216 = *(v14 + 48);
            *&aBlock[32] = *(v14 + 32);
            *&aBlock[48] = v216;
            outlined destroy of _ShapeStyle_RenderedShape.Shape(aBlock);
            *v14 = v213;
            *(v14 + 8) = 0;
            v18 = &v345;
            *(v14 + 16) = 0;
            *(v14 + 24) = 0;
            *(v14 + 32) = 65541;
            v245 &= 0xFFFFFFFFC000FFFFLL;
            *(v14 + 64) = v245;
            v244 &= 0x30301FFu;
            *(v14 + 104) = v244;
            goto LABEL_42;
          }

          v103 = v270;
          v181 = v256;
          if (!v256)
          {
LABEL_120:
            v184 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
            if (!v184)
            {
              __break(1u);
            }

            v181 = v184;
          }

LABEL_122:
          RBDisplayListGetState();
          *&v326.a = v24;
          v326.b = v103;
          v326.c = v283;
          RBSymbolUpdateLayerDraw();
          memcpy(aBlock, v14, sizeof(aBlock));
          outlined init with copy of _ShapeStyle_RenderedShape(aBlock, &v326);
          v256 = v181;
          v185 = [v181 moveContents];
          [v185 boundingRect];
          x = v360.origin.x;
          y = v360.origin.y;
          v188 = v360.size.width;
          v189 = v360.size.height;
          IsNull = CGRectIsNull(v360);
          if (IsNull)
          {
            v191 = 0.0;
          }

          else
          {
            v191 = x;
          }

          if (IsNull)
          {
            v192 = 0.0;
          }

          else
          {
            v192 = y;
          }

          if (IsNull)
          {
            v193 = 0.0;
          }

          else
          {
            v193 = v188;
          }

          if (IsNull)
          {
            v194 = 0.0;
          }

          else
          {
            v194 = v189;
          }

          v195 = *&aBlock[108];
          v196 = *&aBlock[192];
          v361 = CGRectIntegral(*&v191);
          v197 = v361.origin.x;
          v198 = v361.origin.y;
          v13 = v361.size.width;
          v199 = v361.size.height;
          v200 = swift_allocObject();
          *(v200 + 16) = v185;
          *(v200 + 24) = v197;
          *(v200 + 32) = v198;
          v201 = one-time initialization token for defaultFlags;
          swift_unknownObjectRetain();
          if (v201 != -1)
          {
            swift_once();
          }

          v202 = static RasterizationOptions.Flags.defaultFlags;
          swift_unknownObjectRelease();
          outlined destroy of _ShapeStyle_RenderedShape(aBlock);
          *(v200 + 40) = -1;
          *(v200 + 44) = 768;
          *(v200 + 48) = v202 | 0x40;
          *(v200 + 52) = 3;
          Height = v197 + 0.0;
          Width = v198 + 0.0;
          v203 = *(v14 + 80);
          v328 = *(v14 + 64);
          v329[0] = v203;
          *(v329 + 12) = *(v14 + 92);
          v204 = *(v14 + 16);
          *&v326.a = *v14;
          *&v326.c = v204;
          v205 = *(v14 + 48);
          *&v326.tx = *(v14 + 32);
          v327 = v205;
          outlined destroy of _ShapeStyle_RenderedShape.Shape(&v326);
          *v14 = v197 + 0.0;
          *(v14 + 8) = Width;
          *(v14 + 16) = v13;
          *(v14 + 24) = v199;
          *(v14 + 32) = v196;
          *(v14 + 40) = v200 | 0xC000000000000000;
          *(v14 + 48) = v195;
          *(v14 + 56) = 0;
          *(v14 + 64) = 0;
          *(v14 + 72) = 0x100000000;
          v255 = v255 & 0x30301FF | 0x80000000;
          *(v14 + 104) = v255;
          if ((v247 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
          {
            v7 = &v333;
            v18 = &v345;
            v74 = v268;
            if ((aBlock[264] & 1) == 0)
            {
              *(v14 + 264) = aBlock[264] | 1;
            }

            goto LABEL_43;
          }

          v7 = &v333;
          v18 = &v345;
LABEL_42:
          v74 = v268;
LABEL_43:
          *&v338.f64[0] = v269;
          *&v338.f64[1] = __PAIR64__(v263, v265);
          *v339 = LODWORD(b);
          v339[68] = v354;
          *&v339[52] = v353;
          *&v339[36] = v352;
          *&v339[20] = v351;
          *&v339[4] = v350;
          v339[69] = v266;
          *&v339[70] = v262;
          *&v339[72] = LODWORD(c);
          *&v339[76] = v261;
          *&v339[80] = v260;
          v339[88] = v259;
          *&v339[89] = v293[0];
          *&v339[92] = *(v293 + 3);
          v340 = v74;
          v335 = *&v339[48];
          v336[0] = *&v339[64];
          v336[1] = *&v339[80];
          v337 = v74;
          *&v333.a = v338;
          *&v333.c = *v339;
          *&v333.tx = *&v339[16];
          v334 = *&v339[32];
          outlined init with copy of _ShapeStyle_Pack.Style(&v338, &v326);
          _ShapeStyle_RenderedShape.render(style:)(&v333);
          v328 = v335;
          v329[0] = v336[0];
          v329[1] = v336[1];
          *&v330 = v337;
          v326 = v333;
          v327 = v334;
          outlined destroy of _ShapeStyle_Pack.Style(&v326);
          _ShapeStyle_RenderedLayers.endLayer(shape:)(v14);
          *&aBlock[16] = LODWORD(b);
          *&aBlock[36] = v351;
          *&aBlock[52] = v352;
          *&aBlock[68] = v353;
          *aBlock = v269;
          *&aBlock[8] = __PAIR64__(v263, v265);
          aBlock[84] = v354;
          *&aBlock[20] = v350;
          aBlock[85] = v266;
          *&aBlock[86] = v262;
          *&aBlock[88] = __PAIR64__(v261, LODWORD(c));
          *&aBlock[96] = v260;
          aBlock[104] = v259;
          *&aBlock[108] = *(v293 + 3);
          *&aBlock[105] = v293[0];
          *&aBlock[112] = v268;
          outlined destroy of _ShapeStyle_Pack.Style(aBlock);
          v72 = v254;
          v24 = v257;
LABEL_44:
          *&v23 = *&v283 + 1;
        }

        while (*&v283 + 1 != v264);
      }

      v71 = v246;
      if (*&v246 == v242)
      {

        goto LABEL_168;
      }
    }

LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

  v18 = updated;
  *aBlock = v290;
  *&aBlock[16] = v291;
  aBlock[32] = v292;
  v23 = COERCE_DOUBLE(aBlock);
  _ShapeStyle_Pack.Slice.allColors.getter();
  if ((v49 & 1) == 0)
  {
    if (updated < 0)
    {
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    if (!updated)
    {
LABEL_168:
      [v240 endUpdate_];
      goto LABEL_169;
    }

    goto LABEL_35;
  }

  v50 = [objc_allocWithZone(MEMORY[0x1E69C70A8]) init];
  RBDisplayListGetState();
  v51 = swift_allocObject();
  v52 = v291;
  *(v51 + 16) = v290;
  *(v51 + 32) = v52;
  *(v51 + 48) = v292;
  v7 = v243;
  *(v51 + 56) = v243;
  v18 = swift_allocObject();
  *(v18 + 16) = partial apply for closure #1 in _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:);
  *(v18 + 24) = v51;
  *(&v287 + 1) = v51;
  *&aBlock[32] = partial apply for thunk for @callee_guaranteed (@unowned RBSymbolStyle, @guaranteed String?) -> (@unowned RBColor);
  *&aBlock[40] = v18;
  *aBlock = MEMORY[0x1E69E9820];
  *&aBlock[8] = 1107296256;
  *&aBlock[16] = thunk for @escaping @callee_guaranteed (@unowned RBSymbolStyle, @guaranteed String?) -> (@unowned RBColor);
  *&aBlock[24] = &block_descriptor_11;
  v24 = _Block_copy(aBlock);
  v23 = COERCE_DOUBLE(&v326);
  v17 = *&aBlock[40];

  outlined init with copy of _ShapeStyle_Pack.Slice(&v290, &v326);

  RBSymbolUpdateDrawWithStyleResolver();
  _Block_release(v24);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v7 = &v312;
    v326.a = 0.0;
    v326.b = 0.0;
    LOBYTE(v326.c) = 3;
    memset(aBlock, 0, 120);
    _ShapeStyle_RenderedLayers.beginLayer(id:style:shape:)(&v326, aBlock, v14);
    memcpy(aBlock, v14, sizeof(aBlock));
    outlined init with copy of _ShapeStyle_RenderedShape(aBlock, &v326);
    v24 = v50;
    v54 = [v50 moveContents];
    [v54 boundingRect];
    v55 = v358.origin.x;
    v56 = v358.origin.y;
    v57 = v358.size.width;
    v58 = v358.size.height;
    v59 = CGRectIsNull(v358);
    v60 = 0.0;
    if (v59)
    {
      v61 = 0.0;
    }

    else
    {
      v61 = v55;
    }

    if (v59)
    {
      v62 = 0.0;
    }

    else
    {
      v62 = v56;
    }

    if (v59)
    {
      v63 = 0.0;
    }

    else
    {
      v63 = v57;
    }

    if (!v59)
    {
      v60 = v58;
    }

    v13 = *&aBlock[168];
    Width = *&aBlock[160];
    v17 = *&aBlock[108];
    a5 = *&aBlock[192];
    v359 = CGRectIntegral(*(&v60 - 3));
    b = v359.origin.x;
    c = v359.origin.y;
    Height = v359.size.width;
    v10 = v359.size.height;
    v18 = swift_allocObject();
    *(v18 + 16) = v54;
    *(v18 + 24) = b;
    *(v18 + 32) = c;
    v64 = one-time initialization token for defaultFlags;
    swift_unknownObjectRetain();
    if (v64 == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_181;
  }

LABEL_180:
  __break(1u);
LABEL_181:
  swift_once();
LABEL_29:
  v65 = static RasterizationOptions.Flags.defaultFlags;
  swift_unknownObjectRelease();
  outlined destroy of _ShapeStyle_RenderedShape(aBlock);
  v66 = *(v14 + 192);
  v67 = *(v14 + 208);
  v68 = *(v14 + 160);
  *&v7[6].a = *(v14 + 176);
  *&v7[6].c = v66;
  *(v18 + 40) = -1;
  *(v18 + 44) = 768;
  *(v18 + 48) = v65;
  *(v18 + 52) = 3;
  *&v7[6].tx = v67;
  *(*&v23 + 60) = *(v14 + 220);
  **&v23 = v68;
  outlined destroy of DisplayList.Item(&v326);
  *(v14 + 160) = Width + b;
  *(v14 + 168) = v13 + c;
  *(v14 + 176) = Height;
  *(v14 + 184) = v10;
  *(v14 + 192) = a5;
  *(v14 + 200) = v18 | 0xC000000000000000;
  *(v14 + 216) = 0;
  *(v14 + 224) = 0;
  *(v14 + 208) = v17;
  *(v14 + 232) = 0;
  if ((v247 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL && (aBlock[264] & 1) == 0)
  {
    *(v14 + 264) = aBlock[264] | 1;
  }

  _ShapeStyle_RenderedLayers.endLayer(shape:)(v14);

  [v240 endUpdate_];
  outlined destroy of _ShapeStyle_Pack.Slice(&v290);
  v69 = partial apply for closure #1 in _ShapeStyle_RenderedShape.renderVectorGlyph(_:size:orientation:name:styles:layers:);
  v70 = *(&v287 + 1);
LABEL_170:
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v69, v70);
}

uint64_t sub_18D214FF8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t _ShapeStyle_Pack.Slice.init(pack:name:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v13 = *a1;
  v12 = v5;
  result = _ShapeStyle_Pack.indices(of:)(&v12);
  if (result == v7)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_14;
    }

    v8 = 0;
    v9 = *(v4 + 16);
LABEL_7:
    if (v9 >= result)
    {
      v11 = __OFSUB__(v9, v7);
      v10 = (v9 - v7) < 0;
    }

    else
    {
      v11 = 0;
      v10 = 1;
    }

    if (v10 == v11)
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        *a3 = v4;
        *(a3 + 8) = v4 + 32;
        *(a3 + 16) = result;
        *(a3 + 24) = (2 * v7) | 1;
        *(a3 + 32) = v8;
        return result;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(v4 + 16);
  if (result < v9)
  {
    v8 = *(v4 + (result << 7) + 33);
    goto LABEL_7;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SpeedAnimation()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x193AC11E0](*&v1);
}

void _FrameLayout.spacing(in:child:)(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *a2;
  v22 = *(a2 + 1);
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v6 = static Semantics_v3.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
LABEL_10:
      if (v22 == *MEMORY[0x1E698D3F8])
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        InputValue = &static LayoutComputer.defaultValue;
      }

      else
      {
        InputValue = AGGraphGetInputValue();
      }

      v8 = *InputValue;
      v9 = one-time initialization token for lockAssertionsAreEnabled;

      if (v9 != -1)
      {
        swift_once();
      }

      if (!lockAssertionsAreEnabled)
      {
        goto LABEL_21;
      }

      if (one-time initialization token for _lock != -1)
      {
        swift_once();
      }

      if (_MovableLockIsOwner(static Update._lock))
      {
LABEL_21:
        (*(*v8 + 112))();

        return;
      }

      goto LABEL_34;
    }
  }

  else if (static Semantics.forced < v6)
  {
    goto LABEL_10;
  }

  v23 = v5;
  v24 = v22;
  if (LayoutProxy.requiresSpacingProjection.getter())
  {
    goto LABEL_10;
  }

  if (v22 == *MEMORY[0x1E698D3F8])
  {
    if (one-time initialization token for defaultValue != -1)
    {
      swift_once();
    }

    v10 = &static LayoutComputer.defaultValue;
  }

  else
  {
    v10 = AGGraphGetInputValue();
  }

  v11 = *v10;
  v12 = one-time initialization token for lockAssertionsAreEnabled;

  if (v12 != -1)
  {
    swift_once();
  }

  if (!lockAssertionsAreEnabled)
  {
    goto LABEL_33;
  }

  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  if (_MovableLockIsOwner(static Update._lock))
  {
LABEL_33:
    (*(*v11 + 112))(&v25);

    KeyPath = swift_getKeyPath();
    v26 = v4;
    v27 = KeyPath;
    type metadata accessor for EnvironmentFetch<LayoutDirection>(0, v14, v15, v16);
    Hasher.init(_seed:)();
    Hasher._combine(_:)(v4);
    type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>();
    dispatch thunk of Hashable.hash(into:)();
    Hasher._finalize()();
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_1(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>, protocol conformance descriptor for EnvironmentFetch<A>, v17, v18);
    _s7SwiftUI16EnvironmentFetch33_BA60BF7120E939C5C25B2A488163D4ACLLVyAA15LayoutDirectionOGADyxG14AttributeGraph4RuleAAWlTm_1(&lazy protocol witness table cache variable for type EnvironmentFetch<LayoutDirection> and conformance EnvironmentFetch<A>, protocol conformance descriptor for EnvironmentFetch<A>, v19, v20);
    LOBYTE(v23) = 0;
    v21 = *static Rule<>._cachedValue(options:owner:hashValue:bodyPtr:update:)();

    LOBYTE(v23) = v21;
    AbsoluteEdge.Set.init(_:layoutDirection:)(&v23, &v26);
    Spacing.reset(_:)(&v26);
    *a3 = v25;
    return;
  }

LABEL_34:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t LayoutEngineBox.requiresSpacingProjection()(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v1 + *(v2 + 192), v3, v5);
  LOBYTE(v2) = (*(*(v2 + 184) + 24))(v3);
  (*(v4 + 8))(v7, v3);
  return v2 & 1;
}

void type metadata accessor for KeyPath<EnvironmentValues, LayoutDirection>()
{
  if (!lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>)
  {
    v0 = type metadata accessor for KeyPath();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for KeyPath<EnvironmentValues, LayoutDirection>);
    }
  }
}

void type metadata accessor for EnvironmentFetch<LayoutDirection>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>)
  {
    v4 = type metadata accessor for EnvironmentFetch(0, &type metadata for LayoutDirection, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &lazy cache variable for type metadata for EnvironmentFetch<LayoutDirection>);
    }
  }
}

double key path setter for EnvironmentValues.multilineTextAlignment : EnvironmentValues(unsigned __int8 *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t *), void (*a6)(uint64_t, void, __n128))
{
  v9 = *a2;
  v10 = *a1;
  swift_retain_n();
  a5(a2, v10, &v12);

  if (a2[1])
  {
    (a6)(v9, *a2);
  }

  return result;
}

void ResolvedStyledText.StringDrawing.draw(in:with:applyingMarginOffsets:containsResolvable:context:renderer:)(char a1, char a2, uint64_t a3, CGFloat a4, double a5, double a6, double a7, double a8, double a9)
{
  v10 = *(v9 + 27);
  if (!v10)
  {
    return;
  }

  v11 = v9;
  swift_beginAccess();
  v18 = v9[21];
  v19 = v9[22];
  v21 = v9[23];
  v20 = v9[24];
  swift_beginAccess();
  v22 = one-time initialization token for shared;
  v23 = v10;
  if (v22 != -1)
  {
    swift_once();
  }

  NSAttributedString.MetricsCache.metrics(requestedSize:layoutMargins:wantsNumberOfLineFragments:context:)(0, *&static TextDrawingContext.shared, v85, a8, a9, v18, v19, v21, v20);
  swift_endAccess();
  v24 = v11 + 25;
  swift_beginAccess();
  if (*(v11 + 208) != 1)
  {
    goto LABEL_7;
  }

  swift_beginAccess();
  v25 = 1.0;
  if (v11[6] != 1.0)
  {
    v24 = v86;
LABEL_7:
    v25 = *v24;
  }

  v26 = 0;
  if (v25 == 1.0 && (a2 & 1) == 0)
  {
    v26 = *(v11 + 44);
    swift_unknownObjectRetain();
  }

  v28 = *v85;
  v27 = *&v85[1];
  v29 = v86[3] + a5;
  swift_beginAccess();
  v30 = v28 + v11[13];
  if (a1)
  {
    v31 = CGRect.inset(by:)(v11[21], v11[22], v11[23], v11[24], a4, v29, v30, v27);
    v33 = v32;
    v30 = v34;
    v27 = v35;
    ResolvedStyledText.StringDrawing.drawingMargins.getter();
    a4 = v31 + v36 - v11[22];
    ResolvedStyledText.StringDrawing.drawingMargins.getter();
    v29 = v33 + v37 - v11[21];
  }

  if (*(v11 + 425) == 1)
  {
    v38 = v87;
    if (v87 != INFINITY)
    {
      if (*(v11 + 42))
      {
        if (*(v11 + 42) == 1)
        {
          v65 = (v30 - v87) * 0.5;
LABEL_51:
          a4 = a4 + v65;
          goto LABEL_16;
        }

        v65 = 0.0;
        if (*(v11 + 43))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v65 = 0.0;
        if ((*(v11 + 43) & 1) == 0)
        {
          goto LABEL_51;
        }
      }

      v65 = v30 - v87;
      goto LABEL_51;
    }
  }

  v38 = v30;
LABEL_16:
  v39 = [objc_opt_self() current];
  if (v39)
  {
    v40 = v39;
    v41 = [v39 CGContext];

    if (v41)
    {
      v42 = MEMORY[0x193AC3360](v41, 0, 0);

      if (!v42)
      {
        v75 = 0;
        v76 = 0;
        goto LABEL_23;
      }

      v43 = RBDrawingStateGetDisplayList();
      if (v43)
      {
        v44 = v43;
        v45 = [v43 CGStyleHandler];
        if (v45)
        {
          v46 = v45;
          v47 = swift_allocObject();
          *(v47 + 16) = v46;
          v75 = v47;
          v76 = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned RBDrawingState, @unowned Int) -> ();
        }

        else
        {
          v75 = 0;
          v76 = 0;
        }

        v66 = *(v11 + 34);
        v42 = v44;
        if (*(v66 + 16))
        {
          v67 = v23;
          v68 = *(v11 + 43);
          v69 = *(v11 + 44);
          v70 = swift_allocObject();
          *(v70 + 16) = v66;
          *(v70 + 24) = v69;
          *(v70 + 25) = v68;
          v23 = v67;
          v82 = partial apply for closure #1 in ResolvedStyledText.cgStyleHandler.getter;
          v83 = v70;
          aBlock = MEMORY[0x1E69E9820];
          v79 = 1107296256;
          v80 = thunk for @escaping @callee_guaranteed (@unowned RBDrawingState, @unowned Int) -> ();
          v81 = &block_descriptor_15_0;
          v71 = _Block_copy(&aBlock);
          v72 = v42;
        }

        else
        {
          v73 = v44;
          v71 = 0;
        }

        [v42 setCGStyleHandler_];
        _Block_release(v71);

        goto LABEL_23;
      }
    }
  }

  v75 = 0;
  v76 = 0;
  v42 = 0;
LABEL_23:
  v48 = *(v11 + 2);
  v74 = *(v11 + 24);
  v84 = 0;
  if (one-time initialization token for kitLink != -1)
  {
    swift_once();
  }

  v49 = static NSAttributedStringKey.kitLink;
  v50 = [v23 length];
  v51 = swift_allocObject();
  *(v51 + 16) = &v84;
  v52 = swift_allocObject();
  *(v52 + 16) = partial apply for closure #1 in NSAttributedString.hasLinkAttributes.getter;
  *(v52 + 24) = v51;
  v82 = _sypSgSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIgnyy_AacGIegnyy_TRTA_0;
  v83 = v52;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v81 = &block_descriptor_17;
  v53 = _Block_copy(&aBlock);

  [v23 enumerateAttribute:v49 inRange:0 options:v50 usingBlock:{0, v53}];
  _Block_release(v53);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v55 = v84;

    v56 = *(a3 + 16);

    os_unfair_lock_lock((v56 + 16));
    v57 = *(v56 + 24);
    [v57 setMinimumScaleFactor_];
    [v57 setScaledLineHeight_];
    [v57 setScaledBaselineOffset_];
    if (v48 <= 1)
    {
      v58 = 1;
    }

    else
    {
      v58 = v48;
    }

    if (v74)
    {
      v59 = 0;
    }

    else
    {
      v59 = v58;
    }

    [v57 setMaximumNumberOfLines_];
    [v57 setCachesLayout_];
    [v57 setLayout_];
    [v57 setWantsNumberOfLineFragments_];
    if (v55)
    {
      v60 = 8;
    }

    else
    {
      v60 = 0;
    }

    [v57 setActiveRenderers_];
    v82 = closure #2 in closure #1 in TextDrawingContext.withStringDrawingContext<A>(minScaleFactor:lineLimit:kitCache:useNSLayoutManager:do:);
    v83 = 0;
    aBlock = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any]?, @unowned Int) -> (@owned [NSAttributedStringKey : Any]?);
    v81 = &block_descriptor_6_0;
    v61 = _Block_copy(&aBlock);
    [v57 setLinkTextAttributesProvider_];
    _Block_release(v61);
    if (v25 == 1.0)
    {
      v62 = v23;
    }

    else
    {
      v62 = [v23 _ui_attributedSubstringFromRange_scaledByScaleFactor_];
    }

    v63 = v62;
    [v62 drawWithRect:1048577 options:v57 context:{a4, v29, v38, v27}];

    os_unfair_lock_unlock((v56 + 16));

    if (v42)
    {
      if (v76)
      {
        v82 = v76;
        v83 = v75;
        aBlock = MEMORY[0x1E69E9820];
        v79 = 1107296256;
        v80 = thunk for @escaping @callee_guaranteed (@unowned RBDrawingState, @unowned Int) -> ();
        v81 = &block_descriptor_9;
        v64 = _Block_copy(&aBlock);
      }

      else
      {
        v64 = 0;
      }

      [v42 setCGStyleHandler_];

      swift_unknownObjectRelease();
      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v76, v75);
      _Block_release(v64);
    }

    else
    {
      swift_unknownObjectRelease();

      outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v76, v75);
    }
  }
}

uint64_t sub_18D2161E8()
{

  return swift_deallocObject();
}

uint64_t sub_18D216220()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

void PlatformDrawableContent.draw(in:size:contentsScale:state:)(CGContext *a1, uint64_t a2, double a3, double a4, double a5)
{
  v8 = *v5;
  v9 = *(v5 + 8);
  v11 = *(v5 + 16);
  v10 = *(v5 + 24);
  v12 = *(v5 + 32);
  v13 = *(v5 + 40);
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      swift_unknownObjectRetain();
      CGContextTranslateCTM(a1, COERCE_CGFLOAT(v9 ^ 0x8000000000000000), COERCE_CGFLOAT(v11 ^ 0x8000000000000000));
      type metadata accessor for _ContiguousArrayStorage<(RBDisplayListRenderKey, Any)>(0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18DDA6EB0;
      v28 = *MEMORY[0x1E69C7160];
      *(inited + 32) = *MEMORY[0x1E69C7160];
      *(inited + 64) = MEMORY[0x1E69E7DE0];
      *(inited + 40) = a5;
      v29 = v28;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo22RBDisplayListRenderKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of (RBDisplayListRenderKey, Any)(inited + 32);
      type metadata accessor for RBDisplayListRenderKey(0);
      lazy protocol witness table accessor for type RBDisplayListRenderKey and conformance RBDisplayListRenderKey();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v8 renderInContext:a1 options:isa];

      outlined consume of PlatformDrawableContent.Storage(v8, v9, v11, v10, v12, 3u);
      return;
    }

    if (v13 != 4)
    {
      return;
    }

    outlined copy of PlatformDrawableContent.Storage(v8, v9, v11, v10, v12, 4u);
    EnvironmentValues.init()(&v33);
    v32 = v33;
    specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(a1, &v32, *&a5, 0, v8, *&v11, *&v10, *&v9);
    v18 = v8;
    v19 = v9;
    v20 = v11;
    v21 = v10;
    v22 = v12;
    v23 = 4;
    goto LABEL_13;
  }

  if (!*(v5 + 40))
  {
    outlined copy of PlatformDrawableContent.Storage(v8, v9, v11, v10, v12, 0);
    EnvironmentValues.init()(&v33);
    v32 = v33;
    specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(a1, &v32, *&a5, 0, v8, a3, a4);
    v18 = v8;
    v19 = v9;
    v20 = v11;
    v21 = v10;
    v22 = v12;
    v23 = 0;
LABEL_13:
    outlined consume of PlatformDrawableContent.Storage(v18, v19, v20, v21, v22, v23);

    return;
  }

  if (v13 != 1)
  {
    outlined copy of PlatformDrawableContent.Storage(v8, v9, v11, v10, v12, 2u);
    EnvironmentValues.init()(&v33);
    v32 = v33;
    specialized static GraphicsContext.renderingTo(cgContext:environment:deviceScale:content:)(a1, &v32, *&a5, 0, a2, v8, v9 & 0xFFFFFFFF0000FFFFLL, *&v11, *&v10, *&v12);
    v18 = v8;
    v19 = v9;
    v20 = v11;
    v21 = v10;
    v22 = v12;
    v23 = 2;
    goto LABEL_13;
  }

  v16 = objc_allocWithZone(CoreGraphicsContext);

  v17 = [v16 initWithCGContext_];
  (v8)([v17 push], a3, a4);
  [v17 pop];

  outlined consume of PlatformDrawableContent.Storage(v8, v9, v11, v10, v12, 1u);
}

uint64_t closure #1 in DisplayList.ViewUpdater.Platform.updateItemView(_:index:item:state:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static TextDrawingContext.shared;
  if (a1[27])
  {
    v13 = NSAttributedString.isDynamic.getter();
  }

  else
  {
    v13 = 0;
  }

  return (*(*a1 + 296))(1, v13, v12, a2, 0.0, 0.0, a3, a4, a5, a6);
}

void protocol witness for FontModifier.modify(descriptor:in:) in conformance Font.WeightModifier(const __CTFontDescriptor **a1, uint64_t a2)
{
  if ((*(a2 + 25) & 1) == 0)
  {
    v3 = *v2;
    v4 = *a1;
    v6 = CTFontDescriptorRef.weight(_:)(v3);

    *a1 = v6;
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0x10101, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = result;
      specialized _NativeDictionary.copy()();
      result = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0x10101, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_14:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 24 * result;
    *v24 = *a1;
    *(v24 + 13) = *(a1 + 13);
  }

  else
  {

    return specialized _NativeDictionary._insert(at:key:value:)(result, a2, a3 & 0x10101, a4, a1, v23);
  }

  return result;
}

SwiftUI::BlendMode __swiftcall BlendMode.init(_:)(CGBlendMode a1)
{
  if ((a1 - 1) > 0x1A)
  {
    *v1 = 0;
  }

  else
  {
    *v1 = byte_18DDD8CB6[a1 - 1];
  }

  return a1;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3 & 1;
  *(v6 + 9) = BYTE1(a3) & 1;
  *(v6 + 10) = BYTE2(a3) & 1;
  *(v6 + 16) = a4;
  v7 = a6[7] + 24 * result;
  *v7 = *a5;
  *(v7 + 13) = *(a5 + 13);
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t one-time initialization function for topLeading()
{
  if (one-time initialization token for leading != -1)
  {
    result = swift_once();
  }

  v0 = static HorizontalAlignment.leading;
  if (one-time initialization token for top != -1)
  {
    result = swift_once();
  }

  *&static Alignment.topLeading = v0;
  *(&static Alignment.topLeading + 1) = static VerticalAlignment.top;
  return result;
}

uint64_t _s7SwiftUI6LayoutPAAE14makeStaticView4root6inputs10properties4listAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsVAA0C10PropertiesVAA01_F13List_Elements_ptFZAA07_HStackC0V_Tt4B5@<X0>(unsigned int a1@<W0>, __int128 *a2@<X1>, int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  result = (*(v11 + 8))(v10, v11);
  if (result == 1)
  {
    if ((a3 & 0x10000) != 0)
    {
      v32 = a4[3];
      v33 = a4[4];
      __swift_project_boxed_opaque_existential_1(a4, v32);
      v58[0] = 0;
      v34 = a2[3];
      v54 = a2[2];
      v55 = v34;
      v56 = a2[4];
      v57 = *(a2 + 20);
      v35 = a2[1];
      v52 = *a2;
      v53 = v35;
      (*(v33 + 16))(v51, v58, &v52, 0, specialized closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:), 0, v32, v33);
      v37 = v51[0];
      v36 = v51[1];
      result = swift_isEscapingClosureAtFileLocation();
      if ((result & 1) == 0)
      {
        if (v37)
        {
          *a5 = v37;
          *(a5 + 8) = v36;
          return result;
        }

        goto LABEL_25;
      }

LABEL_28:
      __break(1u);
    }
  }

  else if (!result && (a3 & 0x100) != 0)
  {
LABEL_25:
    *a5 = MEMORY[0x1E69E7CC0];
    v38 = *MEMORY[0x1E698D3F8];
    *(a5 + 8) = 0;
    *(a5 + 12) = v38;
    return result;
  }

  v49 = 0;
  v50 = 1;
  v44 = *(a2 + 9);
  v45 = v44 & 0x22;
  if ((v44 & 0x22) != 0)
  {
    v13 = *(a2 + 2);
    swift_beginAccess();
    *&v52 = __PAIR64__(*(v13 + 16), a1);
    *(&v52 + 1) = MEMORY[0x1E69E7CC0];
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for StaticLayoutComputer);
    lazy protocol witness table accessor for type StaticLayoutComputer<_HStackLayout> and conformance StaticLayoutComputer<A>();
    v14 = Attribute.init<A>(body:value:flags:update:)();
    v15 = *(a2 + 16);
    LODWORD(v52) = *(a2 + 18);
    *(&v52 + 4) = __PAIR64__(v14, v15);
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for Axis?(0, &lazy cache variable for type metadata for [ViewGeometry], &type metadata for ViewGeometry, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type LayoutChildGeometries and conformance LayoutChildGeometries();
    v49 = Attribute.init<A>(body:value:flags:update:)();
    v50 = 0;
  }

  else
  {
    v14 = 0;
  }

  v47 = 0;
  v48 = MEMORY[0x1E69E7CC0];
  v16 = a4[4];
  v17 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
  MEMORY[0x1EEE9AC00](v17);
  v42[0] = &v49;
  v42[1] = &v47;
  v43 = &v48;
  v18 = swift_allocObject();
  *(v18 + 16) = closure #2 in static Layout.makeStaticView(root:inputs:properties:list:)partial apply;
  *(v18 + 24) = v41;
  v46 = 0;
  v19 = a2[3];
  v54 = a2[2];
  v55 = v19;
  v56 = a2[4];
  v57 = *(a2 + 20);
  v20 = a2[1];
  v52 = *a2;
  v53 = v20;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v39 = thunk for @callee_guaranteed (@in_guaranteed _ViewInputs, @guaranteed @escaping @callee_guaranteed (@in_guaranteed _ViewInputs) -> (@out _ViewOutputs)) -> (@out _ViewOutputs?)partial apply;
  v40 = v22;
  (*(v16 + 16))(v58, &v46, &v52, 0, closure #1 in closure #1 in _ViewList_Elements.makeAllElements(inputs:indirectMap:body:)partial apply, v21);
  v23 = v58[0];
  v24 = v58[1];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_28;
  }

  v27 = v44 & 2;
  v28 = v23 == 0;
  if (v23)
  {
    v29 = HIDWORD(v24);
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
    v29 = *MEMORY[0x1E698D3F8];
  }

  if (v28)
  {
    LODWORD(v24) = 0;
  }

  if (v45)
  {
    MEMORY[0x1EEE9AC00](v26);
    v43 = &v48;
    type metadata accessor for IndexingIterator<LayoutSubviews>(0, &lazy cache variable for type metadata for StaticLayoutComputer<_HStackLayout>, lazy protocol witness table accessor for type _HStackLayout and conformance _HStackLayout, &type metadata for _HStackLayout, type metadata accessor for StaticLayoutComputer);
    MEMORY[0x1EEE9AC00](v30);
    v41[0] = partial apply for specialized closure #3 in static Layout.makeStaticView(root:inputs:properties:list:);
    v41[1] = v42;
    AGGraphMutateAttribute();
  }

  else
  {
    v14 = *MEMORY[0x1E698D3F8];
  }

  if (v27)
  {
    v31 = v14;
  }

  else
  {
    v31 = v29;
  }

  *a5 = v23;
  *(a5 + 8) = v24 | (v27 << 6);
  *(a5 + 12) = v31;
}

BOOL OptionalEdgeInsets.init(_:edges:)@<W0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = Edge.Set.contains(_:)(SwiftUI_Edge_top);
  if (v6)
  {
    v7 = a1;
  }

  else
  {
    v7 = 0;
  }

  v16 = a2 & 1 | !v6;
  v8 = Edge.Set.contains(_:)(SwiftUI_Edge_leading);
  if (v8)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  v15 = a2 & 1 | !v8;
  v10 = Edge.Set.contains(_:)(SwiftUI_Edge_bottom);
  if (v10)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  v14 = a2 & 1 | !v10;
  result = Edge.Set.contains(_:)(SwiftUI_Edge_trailing);
  if (result)
  {
    v13 = a1;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = v16;
  *(a3 + 16) = v9;
  *(a3 + 24) = v15;
  *(a3 + 32) = v11;
  *(a3 + 40) = v14;
  *(a3 + 48) = v13;
  *(a3 + 56) = a2 & 1 | !result;
  return result;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<FontKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<FontKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontKey>, &type metadata for FontKey, &protocol witness table for FontKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<FontKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.LineLimitKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LineLimitKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.LineLimitKey>, &type metadata for EnvironmentValues.LineLimitKey, &protocol witness table for EnvironmentValues.LineLimitKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.LineLimitKey> and conformance EnvironmentPropertyKey<A>);
  }
}

SwiftUI::LocalizedStringKey::StringInterpolation __swiftcall LocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)(Swift::Int literalCapacity, Swift::Int interpolationCount)
{
  v3 = v2;
  *v2 = 0;
  v2[1] = 0xE000000000000000;
  v2[3] = 0;
  if (interpolationCount + 0x4000000000000000 < 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = __OFADD__(literalCapacity, 2 * interpolationCount);
  literalCapacity += 2 * interpolationCount;
  if (v5)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  MEMORY[0x193ABED40](literalCapacity);
  literalCapacity = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, interpolationCount & ~(interpolationCount >> 63), 0, MEMORY[0x1E69E7CC0]);
  v3[2] = literalCapacity;
LABEL_6:
  result.seed.nextID = v7;
  result.arguments._rawValue = v6;
  result.key._object = interpolationCount;
  result.key._countAndFlagsBits = literalCapacity;
  return result;
}

uint64_t type metadata completion function for LocalizedStringKey.FormatArgument(uint64_t a1)
{
  result = type metadata accessor for LocalizedStringKey.FormatArgument.Storage(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for LocalizedStringKey.FormatArgument.Storage(uint64_t a1)
{
  result = type metadata accessor for AttributedString();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for LocalizedStringResource();
    if (v3 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall LocalizedStringKey.StringInterpolation.appendLiteral(_:)(Swift::String a1)
{
  lazy protocol witness table accessor for type String and conformance String();
  v1 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
  MEMORY[0x193ABEDD0](v1);
}

double LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(uint64_t a1)
{
  type metadata accessor for AttachmentTextStorage();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;

  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v2, 0, 1, MEMORY[0x1E69E7CC0]);

  return result;
}

{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - v7;
  v9 = type metadata accessor for DateInterval();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ClosedRange<Date>(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ClosedRange<Date>(a1, v16, type metadata accessor for ClosedRange<Date>);
  v17 = *(v3 + 16);
  v17(v8, v16, v2);
  v17(v5, &v16[*(v14 + 44)], v2);
  DateInterval.init(start:end:)();
  outlined destroy of ClosedRange<Date>(v16, type metadata accessor for ClosedRange<Date>);
  type metadata accessor for DateTextStorage(0);
  v18 = swift_allocObject();
  (*(v10 + 32))(v18 + OBJC_IVAR____TtC7SwiftUIP33_AEE0E21EC7C6B2D1204F94F94CBF738915DateTextStorage_storage, v12, v9);
  type metadata accessor for DateTextStorage.Storage(0);
  swift_storeEnumTagMultiPayload();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v18, 0, 1, MEMORY[0x1E69E7CC0]);

  return result;
}

{
  v2 = type metadata accessor for DateInterval();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2, v4);
  type metadata accessor for DateTextStorage(0);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + OBJC_IVAR____TtC7SwiftUIP33_AEE0E21EC7C6B2D1204F94F94CBF738915DateTextStorage_storage, v6, v2);
  type metadata accessor for DateTextStorage.Storage(0);
  swift_storeEnumTagMultiPayload();
  LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v7, 0, 1, MEMORY[0x1E69E7CC0]);

  return result;
}

uint64_t LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v9 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  v16 = *(v4 + 24);
  *(v4 + 24) = v16 + 1;
  *v15 = a1;
  *(v15 + 1) = a2;
  a3 &= 1u;
  v15[16] = a3;
  *(v15 + 3) = a4;
  *(v15 + 4) = v16;
  type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  swift_storeEnumTagMultiPayload();
  outlined copy of Text.Storage(a1, a2, a3);

  MEMORY[0x193ABEDD0](16421, 0xE200000000000000);
  outlined init with copy of LocalizedStringKey.FormatArgument(v15, v12, type metadata accessor for LocalizedStringKey.FormatArgument);
  v17 = *(v4 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
  }

  v19 = v17[2];
  v18 = v17[3];
  if (v19 >= v18 >> 1)
  {
    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v17);
  }

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v15, type metadata accessor for LocalizedStringKey.FormatArgument);
  v17[2] = v19 + 1;
  result = outlined init with take of LocalizedStringKey.FormatArgument(v12, v17 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v19, type metadata accessor for LocalizedStringKey.FormatArgument);
  *(v4 + 16) = v17;
  return result;
}

uint64_t outlined init with copy of LocalizedStringKey.FormatArgument(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t initializeWithCopy for LocalizedStringKey.FormatArgument(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v8 = type metadata accessor for AttributedString();
    }

    else
    {
      v8 = type metadata accessor for LocalizedStringResource();
    }

    (*(*(v8 - 8) + 16))(a1, a2, v8);
  }

  else if (EnumCaseMultiPayload)
  {
    v9 = *a2;
    v10 = *(a2 + 8);
    v11 = *(a2 + 16);
    outlined copy of Text.Storage(*a2, v10, v11);
    *a1 = v9;
    *(a1 + 8) = v10;
    *(a1 + 16) = v11;
    v12 = *(a2 + 32);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = v12;
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 24) = v5;
    (**(v5 - 8))(a1, a2);
    v6 = *(a2 + 40);
    *(a1 + 40) = v6;
    v7 = v6;
  }

  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t outlined init with take of LocalizedStringKey.FormatArgument(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

Swift::Void __swiftcall LocalizedStringKey.StringInterpolation.appendInterpolation(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = type metadata accessor for LocalizedStringKey.FormatArgument(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  v17 = MEMORY[0x1E69E6158];
  lazy protocol witness table accessor for type String and conformance String();
  v18 = v11;
  *&v16 = countAndFlagsBits;
  *(&v16 + 1) = object;
  outlined init with take of AnyTrackedValue(&v16, v10);
  *(v10 + 5) = 0;
  type metadata accessor for LocalizedStringKey.FormatArgument.Storage(0);
  swift_storeEnumTagMultiPayload();

  MEMORY[0x193ABEDD0](16421, 0xE200000000000000);
  outlined init with copy of LocalizedStringKey.FormatArgument(v10, v7, type metadata accessor for LocalizedStringKey.FormatArgument);
  v12 = *(v1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
  }

  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
  }

  _s7SwiftUI4TextV14ResolvedStringVWOhTm_0(v10, type metadata accessor for LocalizedStringKey.FormatArgument);
  v12[2] = v14 + 1;
  outlined init with take of LocalizedStringKey.FormatArgument(v7, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14, type metadata accessor for LocalizedStringKey.FormatArgument);
  *(v1 + 16) = v12;
}

uint64_t MakeScrapeableResolvedRepresentation.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = type metadata accessor for UncheckedSendable(0, AssociatedTypeWitness, v6, v7);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12[-v9];
  closure #1 in MakeScrapeableResolvedRepresentation.value.getter(v4, v3, &v12[-v9]);
  return (*(*(AssociatedTypeWitness - 8) + 32))(a2, v10, AssociatedTypeWitness);
}

uint64_t closure #1 in MakeScrapeableResolvedRepresentation.value.getter@<X0>(uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v7 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v19 - v9;
  v11 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(type metadata accessor for MakeScrapeableResolvedRepresentation(0, a2, a3, v15) + 16);
  Value = AGGraphGetValue();
  (*(*(v16 - 8) + 16))(v14, Value, v16);
  (*(v7 + 48))(a2, v7);
  (*(v11 + 8))(v14, a2);
  return UncheckedSendable.init(_:)(v10, AssociatedTypeWitness, a4);
}

uint64_t closure #1 in View.staticIf<A, B, C>(_:then:else:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v15(v14, v11);
  static ViewBuilder.buildExpression<A>(_:)();
  v16 = *(v7 + 8);
  v16(v9, a6);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v16)(v13, a6);
}

uint64_t View.staticIf<A, B, C>(_:then:else:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  closure #1 in View.staticIf<A, B, C>(_:then:else:)(a2, a3, v13, a6, a7, a8);
  type metadata accessor for StaticIf(0, a7, a8, a9);
  return closure #2 in View.staticIf<A, B, C>(_:then:else:)(a4, a5, v13, a6, a7, a8, a9);
}

uint64_t closure #2 in View.staticIf<A, B, C>(_:then:else:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - v13;
  v16(v15, v12);
  static ViewBuilder.buildExpression<A>(_:)();
  v17 = *(v8 + 8);
  v17(v10, a7);
  static ViewBuilder.buildExpression<A>(_:)();
  return (v17)(v14, a7);
}

uint64_t StaticIf<>.init<A>(idiom:then:else:)(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  (*(*(a8 - 8) + 8))(a1, a8);
  v17 = type metadata accessor for InterfaceIdiomPredicate(0, a8, a11, v16);
  a2();
  type metadata accessor for StaticIf(0, v17, a6, a7);
  return a4();
}

uint64_t specialized static ImprovedButtonGestureFeature.isEnabled.getter()
{
  swift_beginAccess();
  if (static CoreTesting.isRunning)
  {
    v0 = 1;
  }

  else
  {
    swift_beginAccess();
    v0 = static GestureContainerFeature.isEnabledOverride;
    if (static GestureContainerFeature.isEnabledOverride == 2)
    {
      if (one-time initialization token for envValue != -1)
      {
        swift_once();
      }

      v0 = static GestureContainerFeature.envValue;
      if (static GestureContainerFeature.envValue == 2)
      {
        if (one-time initialization token for userDefaultsValue != -1)
        {
          swift_once();
        }

        v0 = static GestureContainerFeature.userDefaultsValue;
        if (static GestureContainerFeature.userDefaultsValue == 2)
        {
          v5[3] = &type metadata for GestureContainerFeature.IOSFeature;
          lazy protocol witness table accessor for type GestureContainerFeature.IOSFeature and conformance GestureContainerFeature.IOSFeature();
          v5[4] = v1;
          v2 = isFeatureEnabled(_:)();
          __swift_destroy_boxed_opaque_existential_1(v5);
          if (v2)
          {
            if (one-time initialization token for v6 != -1)
            {
              swift_once();
            }

            v3 = static Semantics.v6;
            if (one-time initialization token for forced != -1)
            {
              swift_once();
            }

            swift_beginAccess();
            if (byte_1ED53C51C)
            {
              v0 = dyld_program_sdk_at_least();
            }

            else
            {
              v0 = static Semantics.forced >= v3;
            }
          }

          else
          {
            v0 = 0;
          }
        }
      }
    }
  }

  return v0 & 1;
}

uint64_t Gesture.debugLabel(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = a2;
  v13 = type metadata accessor for GestureLabelModifier(0, AssociatedTypeWitness, v11, v12);
  swift_getWitnessTable(protocol conformance descriptor for GestureLabelModifier<A>, v13, a1, v17);
  return Gesture.modifier<A>(_:)(&v16, a3, v13, a4, v14, a5);
}

uint64_t Gesture.modifier<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, a2, v16);
  (*(v12 + 16))(v14, a1, a3);
  return ModifierGesture.init(content:modifier:)(v18, v14, a3, a2, a5, a4, a6);
}

uint64_t initializeWithCopy for ModifierGesture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a3 + 24) - 8) + 16;
  (*v6)();
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 16))((*(v6 + 48) + *(v7 + 80) + a1) & ~*(v7 + 80), (*(v6 + 48) + *(v7 + 80) + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t ModifierGesture.init(content:modifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a4 - 8) + 32))(a7, a1, a4);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ModifierGesture(0, v15);
  return (*(*(a3 - 8) + 32))(a7 + *(v13 + 52), a2, a3);
}

void *sub_18D218ADC(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t destroy for ModifierGesture(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a2 + 24) - 8) + 8;
  (*v4)();
  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (*(v4 + 56) + a1 + *(v5 + 80)) & ~*(v5 + 80);

  return v6(v7);
}

double key path setter for EnvironmentValues.dynamicTypeSize : EnvironmentValues(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA015DynamicTypeSizeF033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Tt2B5(a2, v4);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA015DynamicTypeSizeK033_B498FA81088CF7FADFFFFFC897E05C74LLVG_Ttg5(v3, *a2);
  }

  return result;
}

double View.dynamicTypeSize(_:)(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  KeyPath = swift_getKeyPath();
  v8 = v5;
  View.environment<A>(_:_:)(KeyPath, &v8, a2, a3);

  return result;
}

double View.dynamicTypeSize<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17 = a6;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  KeyPath = swift_getKeyPath();
  (*(v11 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v14 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  (*(v11 + 32))(&v15[v14], &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.dynamicTypeSize<A>(_:), v15, a2);

  return result;
}

uint64_t sub_18D218E54()
{
  (*(*(*(v0 + 24) - 8) + 8))(v0 + ((*(*(*(v0 + 24) - 8) + 80) + 48) & ~*(*(*(v0 + 24) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t DynamicTypeSize.clamped<A>(to:)@<X0>(_BYTE *a3@<X8>)
{
  v5 = *v3;
  lazy protocol witness table accessor for type DynamicTypeSizeCollection and conformance DynamicTypeSizeCollection();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v6 = v12;
  result = dispatch thunk of RangeExpression.contains(_:)();
  if ((result & 1) == 0)
  {
    result = specialized Collection<>.firstIndex(of:)(v12, &outlined read-only object #0 of static DynamicTypeSize.allCases.getter);
    if ((v8 & 1) == 0)
    {
      v9 = result - 1;
      if (__OFSUB__(result, 1))
      {
        __break(1u);
      }

      else if (v9 <= 11)
      {
        v6 = *(&outlined read-only object #0 of static DynamicTypeSize.allCases.getter + (v9 & ~(v9 >> 63)) + 32);
        goto LABEL_6;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

LABEL_6:
  if (v5 <= v11)
  {
    v10 = v11;
  }

  else
  {
    v10 = v5;
  }

  if (v6 < v10)
  {
    LOBYTE(v10) = v6;
  }

  *a3 = v10;
  return result;
}

uint64_t partial apply for closure #1 in View.dynamicTypeSize<A>(_:)(_BYTE *a1)
{
  result = DynamicTypeSize.clamped<A>(to:)(&v3);
  *a1 = v3;
  return result;
}

void lazy protocol witness table accessor for type DynamicTypeSizeCollection and conformance DynamicTypeSizeCollection()
{
  if (!lazy protocol witness table cache variable for type DynamicTypeSizeCollection and conformance DynamicTypeSizeCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for DynamicTypeSizeCollection, &unk_1F0091B00, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DynamicTypeSizeCollection and conformance DynamicTypeSizeCollection);
  }
}

{
  if (!lazy protocol witness table cache variable for type DynamicTypeSizeCollection and conformance DynamicTypeSizeCollection)
  {
    swift_getWitnessTable(protocol conformance descriptor for DynamicTypeSizeCollection, &unk_1F0091B00, v0, v1);
    atomic_store(v2, &lazy protocol witness table cache variable for type DynamicTypeSizeCollection and conformance DynamicTypeSizeCollection);
  }
}

uint64_t DynamicTypeSizeCollection.index(after:)@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Collection<>.firstIndex(of:)(*a1, &outlined read-only object #0 of static DynamicTypeSize.allCases.getter);
  if (v4)
  {
    goto LABEL_9;
  }

  v5 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (v5 >= 0xB)
  {
    v5 = 11;
  }

  *a2 = *(&outlined read-only object #0 of static DynamicTypeSize.allCases.getter + v5 + 32);
  return result;
}

uint64_t specialized Collection<>.firstIndex(of:)(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  result = 0;
  while (*(a2 + 32 + result) != a1)
  {
    if (v2 == ++result)
    {
      return 0;
    }
  }

  return result;
}

void type metadata accessor for [DynamicTypeSize](uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for DynamicTypeSize);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t closure #1 in static _ShapeView._makeView(view:inputs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v7 = type metadata accessor for _ShapeView(0, v13);
  v8 = *(v7 + 52);
  v12[2] = v7;
  v12[3] = a3;
  v9 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v8, closure #1 in static PointerOffset.of(_:)partial apply, v12, a3, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);
  return v13[0];
}

char *storeEnumTagSinglePayload for _OverlayShapeModifier(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(*(a4 + 24) - 8);
  v8 = *(v7 + 84);
  v9 = *(v5 + 64);
  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v8 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v7 + 84);
  }

  if (v12 <= 0xFE)
  {
    v12 = 254;
  }

  v13 = v9 + v10;
  v14 = v11 + ((v9 + v10) & ~v10) + 2;
  v15 = a3 >= v12;
  v16 = a3 - v12;
  if (v16 != 0 && v15)
  {
    if (v14 <= 3)
    {
      v21 = ((v16 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
      if (HIWORD(v21))
      {
        v17 = 4;
      }

      else
      {
        if (v21 < 0x100)
        {
          v22 = 1;
        }

        else
        {
          v22 = 2;
        }

        if (v21 >= 2)
        {
          v17 = v22;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  if (v12 < a2)
  {
    v18 = ~v12 + a2;
    if (v14 < 4)
    {
      v20 = (v18 >> (8 * v14)) + 1;
      if (v14)
      {
        v23 = v18 & ~(-1 << (8 * v14));
        v24 = result;
        bzero(result, v14);
        result = v24;
        if (v14 != 3)
        {
          if (v14 == 2)
          {
            *v24 = v23;
            if (v17 > 1)
            {
LABEL_51:
              if (v17 == 2)
              {
                *&result[v14] = v20;
              }

              else
              {
                *&result[v14] = v20;
              }

              return result;
            }
          }

          else
          {
            *v24 = v18;
            if (v17 > 1)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_48;
        }

        *v24 = v23;
        v24[2] = BYTE2(v23);
      }

      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v19 = result;
      bzero(result, v14);
      result = v19;
      *v19 = v18;
      v20 = 1;
      if (v17 > 1)
      {
        goto LABEL_51;
      }
    }

LABEL_48:
    if (v17)
    {
      result[v14] = v20;
    }

    return result;
  }

  if (v17 > 1)
  {
    if (v17 != 2)
    {
      *&result[v14] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_33;
    }

    *&result[v14] = 0;
  }

  else if (v17)
  {
    result[v14] = 0;
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
  if (v6 == v12)
  {
    v25 = *(v5 + 56);

    return v25();
  }

  else
  {
    result = (&result[v13] & ~v10);
    if (v8 == v12)
    {
      v26 = *(v7 + 56);

      return v26(result);
    }

    else if (a2 > 0xFE)
    {
      *&result[v11] = a2 - 255;
    }

    else
    {
      result[v11] = a2 + 1;
    }
  }

  return result;
}

uint64_t one-time initialization function for oversizedScalars()
{
  v0 = type metadata accessor for CharacterSet();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation4DateVSgMaTm_2(0, &lazy cache variable for type metadata for CharacterSet?, 255, MEMORY[0x1E69680B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  __swift_allocate_value_buffer(v0, static NSAttributedString.oversizedScalars);
  v7 = __swift_project_value_buffer(v0, static NSAttributedString.oversizedScalars);
  v8 = CTFontCopySystemUIFontExcessiveLineHeightCharacterSet();
  if (v8)
  {
    v9 = v8;
    static CharacterSet._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = *(v1 + 32);
    v10(v6, v3, v0);
    (*(v1 + 56))(v6, 0, 1, v0);
    return (v10)(v7, v6, v0);
  }

  else
  {
    (*(v1 + 56))(v6, 1, 1, v0);
    CharacterSet.init()();
    result = (*(v1 + 48))(v6, 1, v0);
    if (result != 1)
    {
      return outlined destroy of EnvironmentValues.StringResolutionDate.ResolvableDate?(v6, &lazy cache variable for type metadata for CharacterSet?, MEMORY[0x1E69680B8]);
    }
  }

  return result;
}

void type metadata accessor for AtomicBuffer<NSStringDrawingContext>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AtomicBuffer<NSStringDrawingContext>)
  {
    v2 = type metadata accessor for CAMediaTimingFunction(255, &lazy cache variable for type metadata for NSStringDrawingContext, 0x1E69DB7E0);
    v5 = type metadata accessor for AtomicBuffer(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &lazy cache variable for type metadata for AtomicBuffer<NSStringDrawingContext>);
    }
  }
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for TextDrawingContext();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x1E69DB7E0]) init];
  [v1 setWrapsForTruncationMode_];
  [v1 setWantsBaselineOffset_];
  [v1 setWantsScaledLineHeight_];
  [v1 setWantsScaledBaselineOffset_];
  [v1 setCachesLayout_];
  type metadata accessor for AtomicBuffer<NSStringDrawingContext>(0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v1;
  *(v0 + 16) = result;
  static TextDrawingContext.shared = v0;
  return result;
}

{
  type metadata accessor for ShapeStyleBox<BackgroundStyle>(0, &lazy cache variable for type metadata for ShapeStyleBox<BackgroundStyle>, &type metadata for BackgroundStyle, &protocol witness table for BackgroundStyle, type metadata accessor for ShapeStyleBox);
  result = swift_allocObject();
  static BackgroundStyle.shared = result;
  return result;
}

{
  type metadata accessor for _ImpossibleActor();
  result = swift_allocObject();
  static _ImpossibleActor.shared = result;
  return result;
}

void type metadata accessor for (AGSubgraphRef, Int)(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t type metadata accessor for TimelineSchedule()
{
  result = lazy cache variable for type metadata for TimelineSchedule;
  if (!lazy cache variable for type metadata for TimelineSchedule)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TimelineSchedule);
  }

  return result;
}

uint64_t type metadata completion function for ResolvableTextSegmentAttribute.Value(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for updateSchedule()
{
  result = MEMORY[0x193ABEC20](0xD000000000000016, 0x800000018DD7A0B0);
  static NSAttributedStringKey.updateSchedule = result;
  return result;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight>, &type metadata for EnvironmentValues.__Key_lineHeight, &protocol witness table for EnvironmentValues.__Key_lineHeight, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_lineHeight> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<TextJustificationKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextJustificationKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextJustificationKey>, &type metadata for TextJustificationKey, &protocol witness table for TextJustificationKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextJustificationKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection>, &type metadata for EnvironmentValues.__Key_textWritingDirection, &protocol witness table for EnvironmentValues.__Key_textWritingDirection, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.__Key_textWritingDirection> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<SensitiveContentKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SensitiveContentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SensitiveContentKey>, &type metadata for SensitiveContentKey, &protocol witness table for SensitiveContentKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SensitiveContentKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<AllowsTighteningKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsTighteningKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AllowsTighteningKey>, &type metadata for AllowsTighteningKey, &protocol witness table for AllowsTighteningKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AllowsTighteningKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<WritingModeKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<WritingModeKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WritingModeKey>, &type metadata for WritingModeKey, &protocol witness table for WritingModeKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<WritingModeKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<ParagraphTypesettingKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<ParagraphTypesettingKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<ParagraphTypesettingKey>, &type metadata for ParagraphTypesettingKey, &protocol witness table for ParagraphTypesettingKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<ParagraphTypesettingKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<AvoidsOrphansKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<AvoidsOrphansKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AvoidsOrphansKey>, &type metadata for AvoidsOrphansKey, &protocol witness table for AvoidsOrphansKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<AvoidsOrphansKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<TextAlignmentKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextAlignmentKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<TextAlignmentKey>, &type metadata for TextAlignmentKey, &protocol witness table for TextAlignmentKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<TextAlignmentKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t one-time initialization function for resolvableTextSegment()
{
  result = MEMORY[0x193ABEC20](0xD00000000000001DLL, 0x800000018DD7C830);
  static NSAttributedStringKey.resolvableTextSegment = result;
  return result;
}

id specialized @nonobjc CUICatalog.init(name:from:error:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x193ABEC20](a1);

  v10[0] = 0;
  v6 = [v3 initWithName:v5 fromBundle:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

void one-time initialization function for systemAssetManager()
{
  v0 = [objc_opt_self() public];
  if (v0)
  {
    v1 = v0;
    v2 = v0;
    v3 = nofill_to_fill.getter();
    v4 = name_aliases.getter();
    v5 = symbol_order.getter();
    v6 = objc_allocWithZone(MEMORY[0x1E6999368]);
    v7 = specialized @nonobjc CUICatalog.init(name:from:error:)(0x737465737341, 0xE600000000000000, v1);

    static Image.Location.systemAssetManager = v7;
    off_1ED530E10 = v3;
    off_1ED530E18 = v4;
    unk_1ED530E20 = v5;
  }

  else
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t one-time initialization function for v2_1()
{
  result = swiftUI_v2_1_os_versions();
  static Semantics.v2_1 = HIDWORD(result);
  return result;
}

void type metadata accessor for _DictionaryStorage<NamedImage.VectorKey, NamedImage.VectorInfo>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<NamedImage.VectorKey, NamedImage.VectorInfo>)
  {
    type metadata accessor for NamedImage.VectorKey(255);
    lazy protocol witness table accessor for type AGWeakAttribute and conformance AGWeakAttribute(&lazy protocol witness table cache variable for type NamedImage.VectorKey and conformance NamedImage.VectorKey, type metadata accessor for NamedImage.VectorKey, protocol conformance descriptor for NamedImage.VectorKey);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<NamedImage.VectorKey, NamedImage.VectorInfo>);
    }
  }
}

void lazy protocol witness table accessor for type DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey> and conformance DerivedEnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey> and conformance DerivedEnvironmentPropertyKey<A>)
  {
    type metadata accessor for DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>(255, &lazy cache variable for type metadata for DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey>, &type metadata for ShouldRedactSymbolImagesKey, &protocol witness table for ShouldRedactSymbolImagesKey);
    swift_getWitnessTable(protocol conformance descriptor for DerivedEnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type DerivedEnvironmentPropertyKey<ShouldRedactSymbolImagesKey> and conformance DerivedEnvironmentPropertyKey<A>);
  }
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<SymbolRenderingOptionsKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolRenderingOptionsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolRenderingOptionsKey>, &type metadata for SymbolRenderingOptionsKey, &protocol witness table for SymbolRenderingOptionsKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<SymbolRenderingOptionsKey> and conformance EnvironmentPropertyKey<A>);
  }
}

uint64_t one-time initialization function for preferredIfEnabled()
{
  if (one-time initialization token for v4 != -1)
  {
    swift_once();
  }

  v0 = static Semantics.v4;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C)
  {
    result = dyld_program_sdk_at_least();
  }

  else
  {
    result = static Semantics.forced >= v0;
  }

  if (result)
  {
    v2 = 4;
  }

  else
  {
    v2 = 8;
  }

  static SymbolRenderingMode.preferredIfEnabled = v2;
  return result;
}

void Image.LayoutMetrics.init(glyph:flipsRightToLeft:)(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  [a1 baselineOffset];
  v7 = v6;
  [a1 capHeight];
  v9 = v8;
  if (one-time initialization token for semantic != -1)
  {
    swift_once();
  }

  v10 = static Semantics_v2_1.semantic;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C == 1)
  {
    if ((dyld_program_sdk_at_least() & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (static Semantics.forced < v10)
  {
LABEL_7:
    if (one-time initialization token for semantic != -1)
    {
      swift_once();
    }

    if (byte_1ED53C51C == 1)
    {
      if ((dyld_program_sdk_at_least() & 1) == 0)
      {
LABEL_11:
        v11 = -v7;
        [a1 alignmentRect];
        v13 = v12;

        v14 = 0.0;
        v15 = v9;
        goto LABEL_18;
      }
    }

    else if (static Semantics.forced < static Semantics_v2.semantic)
    {
      goto LABEL_11;
    }

    [a1 alignmentRect];
    v13 = v25;
    v15 = v26;

    v14 = 0.0;
    v11 = 0.0;
    goto LABEL_18;
  }

  [a1 alignmentRect];
  v14 = v16;
  v11 = v17;
  v19 = v18;
  v21 = v20;
  [a1 contentBounds];
  v13 = v22;
  v15 = v23;
  if (a2)
  {
    v27.origin.x = v14;
    v27.origin.y = v11;
    v27.size.width = v19;
    v27.size.height = v21;
    MaxX = CGRectGetMaxX(v27);

    v14 = v13 - MaxX;
  }

  else
  {
  }

LABEL_18:
  *a3 = v7;
  *(a3 + 8) = v9;
  *(a3 + 16) = v13;
  *(a3 + 24) = v15;
  *(a3 + 32) = v14;
  *(a3 + 40) = v11;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void getter of envOptions #1 in ImageResolutionContext.updateSymbolAnimator(_:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = a1 + 16;
  if ((*(a1 + 16) & 0xFF00) == 0x300)
  {
    v5 = *a2;
    if (a2[1])
    {

      v6 = v10;
      _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA022SymbolRenderingOptionsI033_FE3FF33C1D9A704A22DF5519034B23F2LLVG_Tt1g5(v5, v10);

      v7 = v10[1];
      LOBYTE(v5) = v10[2];
    }

    else
    {
      v9 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA022SymbolRenderingOptionsS0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0g5(*a2);
      if (v9)
      {
        v6 = (v9 + 9);
        v7 = *(v9 + 73);
        LOBYTE(v5) = *(v9 + 74);
      }

      else
      {
        if (one-time initialization token for defaultValue != -1)
        {
          swift_once();
        }

        v6 = &static SymbolRenderingOptionsKey.defaultValue;
        v7 = HIBYTE(static SymbolRenderingOptionsKey.defaultValue);
        LOBYTE(v5) = byte_1ED52FC63;
      }
    }

    v8 = *v6;
    swift_beginAccess();
    *(v4 + 2) = v5;
    *v4 = v8 | (v7 << 8);
  }

  else
  {
    LOBYTE(v8) = *(a1 + 16);
    LOBYTE(v7) = HIBYTE(*(a1 + 16));
    LODWORD(v5) = (*(a1 + 16) | (*(a1 + 18) << 16)) >> 16;
  }

  *a3 = v8;
  a3[1] = v7;
  a3[2] = v5;
}

double ImageResolutionContext.updateSymbolAnimator(_:)(void *a1)
{
  v2 = v1;
  v4 = swift_allocObject();
  *(v4 + 18) = 0;
  *(v4 + 16) = 768;
  v5 = type metadata accessor for ImageResolutionContext(0);
  v6 = v2 + *(v5 + 32);
  v7 = *v6;
  if (v7 != 8)
  {
    goto LABEL_11;
  }

  v8 = v5;
  getter of envOptions #1 in ImageResolutionContext.updateSymbolAnimator(_:)(v4, v2, v18);
  LOBYTE(v7) = v18[0];
  if (v18[0] != 8)
  {
    goto LABEL_11;
  }

  if (!specialized ShapeStyle.isMultiLevel(in:)(*v2, v2[1]))
  {
    if ((*(v2 + *(v8 + 40)) & 1) == 0)
    {
      v9 = 255;
      goto LABEL_12;
    }

    if (one-time initialization token for preferredIfEnabled != -1)
    {
      swift_once();
    }

    LOBYTE(v7) = static SymbolRenderingMode.preferredIfEnabled;
    if (static SymbolRenderingMode.preferredIfEnabled == 8)
    {
      v9 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v9 = dword_18DDD6FA4[v7];
    goto LABEL_12;
  }

  v9 = 4;
LABEL_12:
  [a1 setRenderingMode_];
  v10 = v6[2];
  if (v10 == 2 && (getter of envOptions #1 in ImageResolutionContext.updateSymbolAnimator(_:)(v4, v2, v16), LOBYTE(v10) = v17, v17 == 2))
  {
    v11 = 0;
  }

  else if (v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v12 = v6[1];
  if (v12 != 2 || (getter of envOptions #1 in ImageResolutionContext.updateSymbolAnimator(_:)(v4, v2, &v14), LOBYTE(v12) = v15, v15 != 2))
  {
    if (v12)
    {
      v11 = v11 | 0x20;
    }

    else
    {
      v11 = v11 | 0x10;
    }
  }

  [a1 setRenderingOptions_];

  return result;
}

uint64_t initializeWithCopy for NamedImage.VectorInfo(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;
  v5 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v5;
  v6 = v3;
  swift_unknownObjectWeakCopyInit();
  return a1;
}

uint64_t initializeWithTake for NamedImage.VectorInfo(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  swift_unknownObjectWeakTakeInit();
  return a1;
}

uint64_t storeEnumTagSinglePayload for NamedImage.VectorInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022SymbolRenderingOptionsV0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA022SymbolRenderingOptionsV0031_FE3FF33C1D9A704A22DF5519034B23L0LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<SymbolRenderingOptionsKey>, &type metadata for SymbolRenderingOptionsKey, &protocol witness table for SymbolRenderingOptionsKey, type metadata accessor for EnvironmentPropertyKey);
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

BOOL specialized ShapeStyle.isMultiLevel(in:)(uint64_t a1, uint64_t a2)
{
  v12[27] = 0;
  *&v8 = 0;
  v7 = 0uLL;
  BYTE8(v8) = 5;
  *&v9 = 0;
  BYTE8(v9) = 5;
  *&v10 = a1;
  *(&v10 + 1) = a2;
  v11 = 0u;
  memset(v12, 0, 24);
  v12[24] = 1;
  *&v12[25] = 768;

  ForegroundStyle._apply(to:)(&v7, v2);
  v3 = BYTE8(v9) == 4 && (v9 & 1) != 0;
  v5[4] = v11;
  v6[0] = *v12;
  *(v6 + 12) = *&v12[12];
  v5[0] = v7;
  v5[1] = v8;
  v5[2] = v9;
  v5[3] = v10;
  outlined destroy of _ShapeStyle_Shape(v5);
  return v3;
}

void *initializeWithCopy for ImageResolutionContext(void *a1, void *a2, int *a3)
{
  v3 = a2;
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = a2[2];
  a1[2] = v5;
  v6 = a3[6];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = type metadata accessor for Text.Style(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);

  v12 = v5;
  if (v11(v8, 1, v9))
  {
    _s7SwiftUI4TextV5StyleVSgMaTm_1(0, &lazy cache variable for type metadata for Text.Style?, type metadata accessor for Text.Style);
    memcpy(v7, v8, *(*(v13 - 8) + 64));
    v14 = a3;
  }

  else
  {
    v69 = v10;
    v71 = v9;
    v15 = *v8;
    if (*v8 >= 2uLL)
    {
    }

    v16 = v8[1];
    v17 = v8[2];
    *v7 = v15;
    v7[1] = v16;

    outlined copy of Text.Style.TextStyleColor(v17);
    v18 = v8[4];
    v7[3] = v8[3];
    v7[4] = v18;
    *(v7 + 40) = *(v8 + 40);
    v7[6] = v8[6];
    *(v7 + 56) = *(v8 + 56);
    v7[8] = v8[8];
    *(v7 + 72) = *(v8 + 72);
    v19 = v8[11];
    v7[2] = v17;

    v20 = v9;
    if ((v19 - 1) >= 2)
    {
      v7[10] = v8[10];
      v7[11] = v19;
    }

    else
    {
      *(v7 + 5) = *(v8 + 5);
    }

    v21 = v8[13];
    if ((v21 - 1) >= 2)
    {
      v7[12] = v8[12];
      v7[13] = v21;
    }

    else
    {
      *(v7 + 6) = *(v8 + 6);
    }

    v22 = v8[22];
    if (v22 == 1)
    {
      v23 = *(v8 + 12);
      *(v7 + 11) = *(v8 + 11);
      *(v7 + 12) = v23;
      *(v7 + 208) = *(v8 + 208);
      v24 = *(v8 + 8);
      *(v7 + 7) = *(v8 + 7);
      *(v7 + 8) = v24;
      v25 = *(v8 + 10);
      *(v7 + 9) = *(v8 + 9);
      *(v7 + 10) = v25;
    }

    else
    {
      v7[14] = v8[14];
      *(v7 + 120) = *(v8 + 120);
      v7[16] = v8[16];
      *(v7 + 136) = *(v8 + 136);
      v7[18] = v8[18];
      *(v7 + 152) = *(v8 + 152);
      *(v7 + 168) = *(v8 + 168);
      v7[20] = v8[20];
      *(v7 + 192) = *(v8 + 192);
      v26 = v8[23];
      v7[22] = v22;
      v7[23] = v26;
      *(v7 + 208) = *(v8 + 208);
      v7[25] = v8[25];
    }

    v27 = v8[31];
    if (v27 == 1)
    {
      *(v7 + 27) = *(v8 + 27);
      *(v7 + 29) = *(v8 + 29);
      v7[31] = v8[31];
    }

    else
    {
      *(v7 + 108) = *(v8 + 108);
      v7[28] = v8[28];
      *(v7 + 116) = *(v8 + 116);
      v7[30] = v8[30];
      v7[31] = v27;
    }

    v28 = v8[36];
    v70 = v3;
    if (v28 == 1)
    {
      v29 = *(v8 + 17);
      *(v7 + 16) = *(v8 + 16);
      *(v7 + 17) = v29;
      v7[36] = v8[36];
    }

    else
    {
      *(v7 + 256) = *(v8 + 256);
      *(v7 + 257) = *(v8 + 257);
      if (v28)
      {
        v30 = v8[33];
        v31 = v8[34];
        v32 = *(v8 + 280);
        outlined copy of Text.Storage(v30, v31, v32);
        v7[33] = v30;
        v7[34] = v31;
        *(v7 + 280) = v32;
        v20 = v9;
        v7[36] = v8[36];
      }

      else
      {
        v33 = *(v8 + 35);
        *(v7 + 33) = *(v8 + 33);
        *(v7 + 35) = v33;
      }
    }

    v34 = v8[37];
    v35 = v8[38];
    v7[37] = v34;
    v7[38] = v35;
    v7[39] = v8[39];
    *(v7 + 160) = *(v8 + 160);
    v36 = *(v20 + 84);
    __dst = v7 + v36;
    v37 = v8 + v36;
    type metadata accessor for (Locale.Language, TypesettingLanguage.Flags)(0);
    v39 = v38;
    v40 = *(v38 - 8);
    v41 = *(v40 + 48);
    v42 = v34;

    if (v41(v37, 2, v39))
    {
      v43 = type metadata accessor for TypesettingLanguage.Storage(0);
      v44 = __dst;
      memcpy(__dst, v37, *(*(v43 - 8) + 64));
    }

    else
    {
      v45 = type metadata accessor for Locale.Language();
      v44 = __dst;
      (*(*(v45 - 8) + 16))(__dst, v37, v45);
      __dst[*(v39 + 48)] = v37[*(v39 + 48)];
      (*(v40 + 56))(__dst, 0, 2, v39);
    }

    v14 = a3;
    v46 = *(type metadata accessor for TypesettingConfiguration(0) + 20);
    v47 = &v44[v46];
    v48 = &v37[v46];
    *v47 = *v48;
    v47[8] = v48[8];
    *(v7 + v71[22]) = *(v8 + v71[22]);
    v49 = v71[23];
    v50 = type metadata accessor for AttributedString.AdaptiveImageGlyph();
    v51 = *(v50 - 8);
    v52 = *(v51 + 48);

    if (v52(v8 + v49, 1, v50))
    {
      _s7SwiftUI4TextV5StyleVSgMaTm_1(0, &lazy cache variable for type metadata for AttributedString.AdaptiveImageGlyph?, MEMORY[0x1E69655A0]);
      memcpy(v7 + v49, v8 + v49, *(*(v53 - 8) + 64));
    }

    else
    {
      (*(v51 + 16))(v7 + v49, v8 + v49, v50);
      (*(v51 + 56))(v7 + v49, 0, 1, v50);
    }

    v54 = v71[24];
    v55 = type metadata accessor for AttributedString.TextAlignment();
    v56 = *(v55 - 8);
    if ((*(v56 + 48))(v8 + v54, 1, v55))
    {
      _s7SwiftUI4TextV5StyleVSgMaTm_1(0, &lazy cache variable for type metadata for AttributedString.TextAlignment?, MEMORY[0x1E6965580]);
      memcpy(v7 + v54, v8 + v54, *(*(v57 - 8) + 64));
    }

    else
    {
      (*(v56 + 16))(v7 + v54, v8 + v54, v55);
      (*(v56 + 56))(v7 + v54, 0, 1, v55);
    }

    *(v7 + v71[25]) = *(v8 + v71[25]);
    v58 = v71[26];
    v59 = type metadata accessor for AttributedString.LineHeight();
    v60 = *(v59 - 8);
    if ((*(v60 + 48))(v8 + v58, 1, v59))
    {
      _s7SwiftUI4TextV5StyleVSgMaTm_1(0, &lazy cache variable for type metadata for AttributedString.LineHeight?, MEMORY[0x1E6965590]);
      memcpy(v7 + v58, v8 + v58, *(*(v61 - 8) + 64));
    }

    else
    {
      (*(v60 + 16))(v7 + v58, v8 + v58, v59);
      (*(v60 + 56))(v7 + v58, 0, 1, v59);
    }

    *(v7 + v71[27]) = *(v8 + v71[27]);
    v62 = *(v69 + 56);

    v62(v7, 0, 1, v71);
    v3 = v70;
  }

  v63 = v14[8];
  result = a1;
  *(a1 + v14[7]) = *(v3 + v14[7]);
  v65 = a1 + v63;
  v66 = v3 + v63;
  *v65 = *v66;
  v65[2] = v66[2];
  v67 = v14[10];
  *(a1 + v14[9]) = *(v3 + v14[9]);
  *(a1 + v67) = *(v3 + v67);
  return result;
}

uint64_t initializeWithCopy for NamedImage.VectorKey(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v6;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v7 = a3[8];
  v8 = type metadata accessor for Locale();
  v9 = *(*(v8 - 8) + 16);

  v9(a1 + v7, a2 + v7, v8);
  v10 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v10) = *(a2 + v10);
  v11 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  v12 = *(a2 + v11);
  if (v12 >= 2)
  {
    v13 = v12;
  }

  *(a1 + v11) = v12;
  *(a1 + a3[13]) = *(a2 + a3[13]);
  return a1;
}

id *outlined destroy of NamedImage.VectorInfo(id *a1)
{
  v2 = a1 + 10;

  MEMORY[0x193AC4950](v2);
  return a1;
}

uint64_t one-time initialization function for textBaseline(uint64_t a1)
{
  result = AGMakeUniqueID();
  static Spacing.Category.textBaseline = result;
  return result;
}

SwiftUI::Spacing ResolvedImageLayoutEngine.spacing()@<X0>(unint64_t *a1@<X8>)
{
  v2 = *(v1 + 152);
  if (*(v1 + 104) == 2 && v2 != 0 && *(v1 + 161) == 3)
  {
    v7 = v2[2];
    v8 = v2[7];
    type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(Spacing.Key, Spacing.Value)>, type metadata accessor for (Spacing.Key, Spacing.Value), MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18DDAC2E0;
    if (one-time initialization token for textToText != -1)
    {
      v15 = inited;
      swift_once();
      inited = v15;
    }

    v10 = static Spacing.Category.textToText;
    *(inited + 32) = static Spacing.Category.textToText;
    *(inited + 40) = 0;
    *(inited + 48) = 0u;
    *(inited + 64) = 0u;
    *(inited + 80) = 0;
    *(inited + 88) = v10;
    *(inited + 96) = 2;
    *(inited + 104) = 0u;
    *(inited + 120) = 0u;
    *(inited + 136) = 0;
    if (one-time initialization token for edgeAboveText != -1)
    {
      v16 = inited;
      swift_once();
      inited = v16;
    }

    *(inited + 144) = static Spacing.Category.edgeAboveText;
    *(inited + 152) = 0;
    v11 = *(v2 + 2);
    *(inited + 192) = 0;
    *(inited + 176) = 0;
    *(inited + 184) = 0;
    *(inited + 160) = v11;
    *(inited + 168) = 0;
    if (one-time initialization token for edgeBelowText != -1)
    {
      v17 = inited;
      swift_once();
      inited = v17;
    }

    v12 = v7 + v8;
    *(inited + 200) = static Spacing.Category.edgeBelowText;
    *(inited + 208) = 2;
    *(inited + 216) = v2[2] + 1.0;
    *(inited + 248) = 0;
    *(inited + 232) = 0;
    *(inited + 240) = 0;
    *(inited + 224) = 0;
    if (one-time initialization token for textBaseline != -1)
    {
      v18 = inited;
      swift_once();
      inited = v18;
    }

    v13 = static Spacing.Category.textBaseline;
    *(inited + 256) = static Spacing.Category.textBaseline;
    *(inited + 264) = 2;
    *(inited + 272) = -v12;
    *(inited + 288) = 0;
    *(inited + 296) = 0;
    *(inited + 280) = 0;
    *(inited + 304) = 0;
    *(inited + 312) = v13;
    *(inited + 320) = 0;
    *(inited + 328) = -(v2[5] - v12);
    *(inited + 360) = 0;
    *(inited + 344) = 0;
    *(inited + 352) = 0;
    *(inited + 336) = 0;
    v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC7SwiftUI7SpacingV3KeyV_AE5ValueOTt0g5Tf4g_n(inited);
    result.minima._rawValue = swift_setDeallocating();
    *a1 = v14;
  }

  else
  {

    return Spacing.init()();
  }

  return result;
}

uint64_t outlined destroy of ImageResolutionContext(uint64_t a1)
{
  v2 = type metadata accessor for ImageResolutionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey> and conformance EnvironmentPropertyKey<A>()
{
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>, &type metadata for EnvironmentValues.SymbolEffectsKey, &protocol witness table for EnvironmentValues.SymbolEffectsKey, type metadata accessor for EnvironmentPropertyKey);
    swift_getWitnessTable(protocol conformance descriptor for EnvironmentPropertyKey<A>, v2, v0, v1);
    atomic_store(v3, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey> and conformance EnvironmentPropertyKey<A>);
  }
}

void type metadata accessor for _DictionaryStorage<RBDisplayListRenderKey, Any>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for _DictionaryStorage<RBDisplayListRenderKey, Any>)
  {
    type metadata accessor for RBDisplayListRenderKey(255);
    lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef(&lazy protocol witness table cache variable for type RBDisplayListRenderKey and conformance RBDisplayListRenderKey, type metadata accessor for RBDisplayListRenderKey, protocol conformance descriptor for RBDisplayListRenderKey);
    v1 = type metadata accessor for _DictionaryStorage();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for _DictionaryStorage<RBDisplayListRenderKey, Any>);
    }
  }
}

uint64_t outlined destroy of (RBDisplayListRenderKey, Any)(uint64_t a1)
{
  type metadata accessor for (RBDisplayListRenderKey, Any)(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(void *a1)
{
  _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_1(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>, &type metadata for EnvironmentValues.SymbolEffectsKey, &protocol witness table for EnvironmentValues.SymbolEffectsKey, type metadata accessor for EnvironmentPropertyKey);
  BloomFilter.init(hashValue:)(v2);
  if (_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE013SymbolEffectsV033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt0B5(a1, v3))
  {
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA0J6ValuesVAAE013SymbolEffectsI033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt1g5(void *a1)
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
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(a1);
    *&v17[0] = v12;
    goto LABEL_9;
  }

  if (v4 != a1[8])
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>, &type metadata for EnvironmentValues.SymbolEffectsKey, &protocol witness table for EnvironmentValues.SymbolEffectsKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v17);
    outlined init with take of AnyTrackedValue(v17, v18);
    v10 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for [_SymbolEffect.Identified], &type metadata for _SymbolEffect.Identified, MEMORY[0x1E69E62F8]);
    v11(v17);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA0G6ValuesVAAE013SymbolEffectsF033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt2g5(a1);
    v14 = v13;
    *&v17[0] = v13;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>>(0);
    v19 = v15;
    v20 = &protocol witness table for TrackedValue<A>;
    v18[0] = v14;

    specialized Dictionary.subscript.setter(v18, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return *&v17[0];
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>, &type metadata for EnvironmentValues.SymbolEffectsKey, &protocol witness table for EnvironmentValues.SymbolEffectsKey, type metadata accessor for EnvironmentPropertyKey);
    v3 = v2;
    lazy protocol witness table accessor for type EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey> and conformance EnvironmentPropertyKey<A>();
    v6 = type metadata accessor for TrackedValue(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>>);
    }
  }
}

void *_s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE013SymbolEffectsV033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt0B5(void *result, uint64_t a2)
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
        v4 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA0W6ValuesVAAE013SymbolEffectsV033_2975F89CBD28662DFA5DA6D958CBE343LLVG_Tt0B5(result[3], a2);
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
      _s7SwiftUI22EnvironmentPropertyKeyVyAA0C6ValuesVAAE02__E28_glassEffectBackdropObserver33_FD0C880ACFE431F75FFFB08913C85A9CLLVGMaTm_0(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<EnvironmentValues.SymbolEffectsKey>, &type metadata for EnvironmentValues.SymbolEffectsKey, &protocol witness table for EnvironmentValues.SymbolEffectsKey, type metadata accessor for EnvironmentPropertyKey);
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

void RBSymbolAnimator.updateSymbolEffects(_:effects:transaction:animationsDisabled:)(__int128 *result, uint64_t a2, uint64_t a3, char a4)
{
  if (!*(*result + 16) && !*(result + 2) && (*(result + 42) & 1) == 0 && !*(a2 + 16))
  {
    *(result + 61) = 0;
    return;
  }

  AGGraphClearUpdate();
  v7 = *AGGraphGetValue();

  v9 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA018DisablesAnimationsS033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tt0g5(v8);
  if (v9)
  {
    v188 = *(v9 + 72);
  }

  else
  {
    v188 = 0;
  }

  v187 = a4;
  v10 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE017AnimationListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v7);
  if (v10)
  {
    v11 = v10[9];
  }

  else
  {
    v11 = 0;
  }

  v12 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011TransactionqS033_B2543BCA257433E04979186A1DC2B6BCLLVyAA0T0VAAE024AnimationLogicalListenerS033_390609F81ACEBEAF00AD8179BD31E870LLVG_Tt0g5(v7);
  if (v12)
  {
    v13 = v12[9];
  }

  else
  {
    v13 = 0;
  }

  AGGraphSetUpdate();
  v14 = result[1];
  v235[0] = *result;
  v235[1] = v14;
  v16 = *result;
  v15 = result[1];
  *v236 = result[2];
  *&v236[14] = *(result + 46);
  v17 = *&v235[0];
  v229 = v16;
  v230 = v15;
  *v231 = result[2];
  *&v231[14] = *(result + 46);
  outlined init with copy of _SymbolEffect.Phase(v235, &aBlock);
  _SymbolEffect.Phase.init(previously:)(&v229, &v232);
  v198 = v17;
  v18 = *(v17 + 16);
  v194 = v18;
  if (v18 < 0x41)
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v19 = __OFADD__(v18, 63);
    v20 = v18 + 63;
    if (v19)
    {
      goto LABEL_177;
    }

    v21 = _sSa9repeating5countSayxGx_SitcfC7SwiftUI11BitVector64V_Tt1B5(0, v20 >> 6);
    v18 = v194;
  }

  *&v186 = v13;
  *(&v186 + 1) = v11;
  v221 = v18 > 0x40;
  v22 = v194;
  v222 = 0;
  v223 = v21;
  v224 = v194;
  v200 = *(a2 + 16);
  v185 = result;
  if (!v200)
  {
    goto LABEL_116;
  }

  v23 = 0;
  v199 = a2 + 32;
  v24 = 0.0;
  v193 = (v17 + 32);
  v184 = &v226;
  v25 = v187;
  while (2)
  {
    v26 = (v199 + (v23 << 6));
    *v231 = v26[2];
    *&v231[13] = *(v26 + 45);
    v27 = v26[1];
    v229 = *v26;
    v230 = v27;
    v28 = *(&v27 + 1);
    v29 = v27;
    v30 = *v231;
    v31 = *&v231[8];
    v32 = *&v231[12];
    v33 = *&v231[24];
    v34 = v231[28];
    v35 = *&v231[8] >> 12;
    v201 = v231[20];
    v202 = *&v231[16];
    if (v35 < 6)
    {
      outlined init with copy of _SymbolEffect.Identified(&v229, &aBlock);
      v36 = v29;
    }

    else
    {
      v36 = 0xF000000000000006;
      if (v35 != 8)
      {
        if (v35 == 7)
        {
          *&v234[4] = v27;
          *&v234[8] = WORD2(v27) & 0x101;
          v234[10] = BYTE6(v27) & 1;
          *&v234[12] = *&v231[12];
          *&v234[16] = *&v231[16];
          v234[20] = v231[20];
          *&v234[24] = *&v231[24];
          v234[28] = v231[28];
        }

        else
        {
          DWORD2(v232) = v27;
          BYTE12(v232) = BYTE4(v27) & 1;
          *&v233 = *&v231[12];
          BYTE8(v233) = v231[20];
          HIDWORD(v233) = *&v231[24];
          v234[0] = v231[28];
        }

        goto LABEL_22;
      }
    }

    v37 = *(v198 + 16);
    v204 = v30;
    v205 = v28;
    v195 = v33;
    if (!v37)
    {
      v203 = v36;
      outlined init with copy of _SymbolEffect.Identified(&v229, &aBlock);
      v41 = 1;
      v42 = *(&v229 + 1);
      v43 = v229;
      if (v25)
      {
        goto LABEL_48;
      }

LABEL_37:
      if (v203 & 0xF000000000000006) != 0xF000000000000006 && ((v41 | v188))
      {
        goto LABEL_41;
      }

      if (v35 <= 3)
      {
        v197 = v34;
        if (v35 > 1)
        {
          if (v35 != 2)
          {
            v191 = *MEMORY[0x1E69C7280];
            *(&v218 + 1) = MEMORY[0x1E69E7668];
            LODWORD(v217) = HIDWORD(v204);
            outlined init with take of Any(&v217, &v213);
            outlined init with copy of _SymbolEffect.Identified(&v229, &aBlock);
            v90 = MEMORY[0x1E69E7CC8];
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&aBlock = v90;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v213, v191, isUniquelyReferenced_nonNull_native);
            v92 = aBlock;
            if ((v204 & 1) == 0)
            {
              v93 = *MEMORY[0x1E69C7278];
              *(&v226 + 1) = MEMORY[0x1E69E63B0];
              *&aBlock = v205;
              outlined init with take of Any(&aBlock, &v217);
              v94 = swift_isUniquelyReferenced_nonNull_native();
              *&v213 = v92;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v217, v93, v94);
              v92 = v213;
            }

            v95 = MEMORY[0x1E69E6448];
            v96 = *MEMORY[0x1E69C7218];
            *(&v226 + 1) = MEMORY[0x1E69E6370];
            LOBYTE(aBlock) = v31 & 1;
            outlined init with take of Any(&aBlock, &v217);
            v97 = swift_isUniquelyReferenced_nonNull_native();
            *&v213 = v92;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v217, v96, v97);
            v71 = v213;
            v192 = 10;
            goto LABEL_77;
          }

          v73 = *MEMORY[0x1E69C7208];
          *(&v218 + 1) = MEMORY[0x1E69E7668];
          LODWORD(v217) = v28;
          outlined init with take of Any(&v217, &v213);
          outlined init with copy of _SymbolEffect.Identified(&v229, &aBlock);
          v74 = MEMORY[0x1E69E7CC8];
          v75 = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v74;
          BYTE4(v74) = BYTE4(v28);
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v213, v73, v75);
          v76 = aBlock;
          v77 = *MEMORY[0x1E69C7218];
          *(&v226 + 1) = MEMORY[0x1E69E6370];
          LOBYTE(aBlock) = BYTE4(v74) & 1;
          outlined init with take of Any(&aBlock, &v217);
          v78 = swift_isUniquelyReferenced_nonNull_native();
          *&v213 = v76;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v217, v77, v78);
          v71 = v213;
          v72 = 3;
        }

        else
        {
          v68 = *MEMORY[0x1E69C7218];
          *(&v218 + 1) = MEMORY[0x1E69E6370];
          if (v35)
          {
            LOBYTE(v217) = BYTE4(v28) & 1;
            outlined init with take of Any(&v217, &v213);
            outlined init with copy of _SymbolEffect.Identified(&v229, &aBlock);
            v85 = MEMORY[0x1E69E7CC8];
            v86 = swift_isUniquelyReferenced_nonNull_native();
            *&aBlock = v85;
            LODWORD(v85) = v28;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v213, v68, v86);
            v87 = aBlock;
            v88 = *MEMORY[0x1E69C7210];
            *(&v226 + 1) = MEMORY[0x1E69E7668];
            LODWORD(aBlock) = v85;
            outlined init with take of Any(&aBlock, &v217);
            v89 = swift_isUniquelyReferenced_nonNull_native();
            *&v213 = v87;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v217, v88, v89);
            v71 = v213;
            v72 = 12;
          }

          else
          {
            LOBYTE(v217) = v28 & 1;
            outlined init with take of Any(&v217, &v213);
            outlined init with copy of _SymbolEffect.Identified(&v229, &aBlock);
            v69 = MEMORY[0x1E69E7CC8];
            v70 = swift_isUniquelyReferenced_nonNull_native();
            *&aBlock = v69;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v213, v68, v70);
            v71 = aBlock;
            v72 = 2;
          }
        }
      }

      else
      {
        if ((v35 - 6) < 3)
        {
LABEL_41:
          v44 = 0;
          *&v45 = NAN;
          v30 = v204;
          goto LABEL_49;
        }

        v197 = v34;
        if (v35 == 4)
        {
          v79 = *MEMORY[0x1E69C7258];
          *(&v218 + 1) = MEMORY[0x1E69E7668];
          LODWORD(v217) = v28;
          outlined init with take of Any(&v217, &v213);
          outlined init with copy of _SymbolEffect.Identified(&v229, &aBlock);
          v80 = MEMORY[0x1E69E7CC8];
          v81 = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v80;
          BYTE4(v80) = BYTE4(v28);
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v213, v79, v81);
          v82 = aBlock;
          v83 = *MEMORY[0x1E69C7218];
          *(&v226 + 1) = MEMORY[0x1E69E6370];
          LOBYTE(aBlock) = BYTE4(v80) & 1;
          outlined init with take of Any(&aBlock, &v217);
          v84 = swift_isUniquelyReferenced_nonNull_native();
          *&v213 = v82;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v217, v83, v84);
          v71 = v213;
          v72 = 11;
        }

        else
        {
          v98 = *MEMORY[0x1E69C7270];
          *(&v218 + 1) = MEMORY[0x1E69E7668];
          LODWORD(v217) = v28;
          outlined init with take of Any(&v217, &v213);
          outlined init with copy of _SymbolEffect.Identified(&v229, &aBlock);
          v99 = MEMORY[0x1E69E7CC8];
          v100 = swift_isUniquelyReferenced_nonNull_native();
          *&aBlock = v99;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v213, v98, v100);
          v71 = aBlock;
          v72 = 1;
        }
      }

      v192 = v72;
      v95 = MEMORY[0x1E69E6448];
LABEL_77:
      v101 = *MEMORY[0x1E69C7260];
      *(&v226 + 1) = v95;
      LODWORD(aBlock) = v32;
      outlined init with take of Any(&aBlock, &v217);
      v102 = swift_isUniquelyReferenced_nonNull_native();
      *&v213 = v71;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v217, v101, v102);
      v103 = v213;
      v104 = *MEMORY[0x1E69C7240];
      *(&v226 + 1) = v95;
      if ((v203 & 0xF000000000000006) == 0xF000000000000006)
      {
        v105 = 2139095040;
      }

      else
      {
        v105 = 1065353216;
      }

      if (!v201)
      {
        v105 = v202;
      }

      LODWORD(aBlock) = v105;
      outlined init with take of Any(&aBlock, &v217);
      v106 = swift_isUniquelyReferenced_nonNull_native();
      *&v213 = v103;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v217, v104, v106);
      outlined destroy of _SymbolEffect.Added(&v229);
      v107 = v213;
      if ((v197 & 1) == 0)
      {
        v108 = *MEMORY[0x1E69C7248];
        *(&v226 + 1) = v95;
        LODWORD(aBlock) = v195;
        outlined init with take of Any(&aBlock, &v217);
        v109 = swift_isUniquelyReferenced_nonNull_native();
        *&v213 = v107;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v217, v108, v109);
        v107 = v213;
      }

      v110 = *MEMORY[0x1E69C7238];
      *(&v226 + 1) = v95;
      *&aBlock = v24;
      outlined init with take of Any(&aBlock, &v217);
      v111 = swift_isUniquelyReferenced_nonNull_native();
      *&v213 = v107;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v217, v110, v111);
      v112 = v213;
      if (v186 != 0)
      {
        v113 = swift_allocObject();
        *(v113 + 16) = *(&v186 + 1);
        *(v113 + 24) = v186;
        *&v227 = closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:)partial apply;
        *(&v227 + 1) = v113;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        *&v226 = thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned UInt32) -> ();
        *(&v226 + 1) = &block_descriptor_73;
        v114 = _Block_copy(&aBlock);

        v25 = v187;

        v115 = *MEMORY[0x1E69C7230];
        *(&v226 + 1) = swift_getObjectType();
        *&aBlock = v114;
        outlined init with take of Any(&aBlock, &v217);
        _Block_copy(v114);
        v116 = swift_isUniquelyReferenced_nonNull_native();
        *&v213 = v112;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v217, v115, v116);
        _Block_release(v114);
      }

      type metadata accessor for RBSymbolAnimationOptionKey(0);
      lazy protocol witness table accessor for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v44 = [v189 addAnimation:v192 options:isa];

      if (v44)
      {
        if (*(&v186 + 1))
        {
          v118 = (*(**(&v186 + 1) + 88))();
        }

        v30 = v204;
        if (v186)
        {
          (*(*v186 + 88))(v118);
        }

        *&v45 = v24;
        v24 = v24 + 1.0;
        v28 = v205;
      }

      else
      {
        *&v45 = NAN;
        v30 = v204;
        v28 = v205;
      }

      goto LABEL_49;
    }

    v196 = v34;
    v38 = 0;
    v39 = v193;
    do
    {
      if (*v39 == v229 && *(v39 + 1) == *(&v229 + 1))
      {
        v46 = *v39;
        v47 = *(v39 + 12);
        v48 = v39[2];
        v218 = v39[1];
        v219 = v48;
        v220 = v47;
        v217 = v46;
        v190 = HIDWORD(v48);
        v213 = *v39;
        v214 = v39[1];
        v215 = v39[2];
        v216 = *(v39 + 12);
        outlined init with copy of _SymbolEffect.Identified(&v229, &aBlock);
        outlined init with copy of _SymbolEffect.Added(&v217, &aBlock);
        BitVector.subscript.setter(1, v38);
        --v194;
        if ((~v36 & 0xF000000000000006) == 0)
        {
          *&v206 = v29;
          *(&v206 + 1) = v28;
          *&v207 = v30;
          WORD4(v207) = v31;
          v50 = *(&v214 + 1);
          v49 = v214;
          v51 = v215;
          v52 = WORD4(v215);
          v210 = v214;
          v211 = v215;
          v212 = WORD4(v215);
          outlined init with copy of _SymbolEffect.Identified(&v229, &aBlock);
          outlined copy of _SymbolEffect.Storage(v49, v50, v51, v52);
          LOBYTE(v49) = specialized static _SymbolEffect.Storage.== infix(_:_:)(&v206, &v210);
          outlined consume of _SymbolEffect.Storage(v210, *(&v210 + 1), v211, v212);
          v53 = outlined consume of _SymbolEffect.Storage(v206, *(&v206 + 1), v207, WORD4(v207));
          v54 = v190;
          if ((v49 & 1) == 0)
          {
LABEL_44:
            v203 = v36;
            if (v54)
            {
              [v189 cancelAnimationWithID_];
            }

            aBlock = v213;
            v226 = v214;
            v227 = v215;
            v228 = LODWORD(v216);
            outlined destroy of _SymbolEffect.Added(&aBlock);
            v41 = 0;
            v30 = v204;
            v28 = v205;
            goto LABEL_47;
          }

LABEL_101:
          if (v54)
          {
            if (v220 != v24)
            {
              v216 = v24;
              *&v53 = v24;
              [v189 setPriority:v53 ofAnimationWithID:?];
            }

            v24 = v24 + 1.0;
          }

          *&aBlock = v36;
          outlined copy of _SymbolEffect.Trigger?(v36);
          _SymbolEffect.Storage.trigger.setter(&aBlock);
          aBlock = v213;
          v226 = v214;
          v227 = v215;
          v228 = LODWORD(v216);
          v119 = v232;
          outlined init with copy of _SymbolEffect.Added(&aBlock, &v206);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v119 + 2) + 1, 1, v119);
          }

          v121 = *(v119 + 2);
          v120 = *(v119 + 3);
          if (v121 >= v120 >> 1)
          {
            v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v120 > 1), v121 + 1, 1, v119);
          }

          outlined consume of _SymbolEffect.Trigger?(v36);
          outlined destroy of _SymbolEffect.Added(&v229);
          *(v119 + 2) = v121 + 1;
          v122 = &v119[56 * v121];
          v123 = aBlock;
          v124 = v226;
          v125 = v227;
          *(v122 + 20) = v228;
          *(v122 + 3) = v124;
          *(v122 + 4) = v125;
          *(v122 + 2) = v123;
          *&v232 = v119;
          v206 = v213;
          v207 = v214;
          v208 = v215;
          v209 = v216;
          outlined destroy of _SymbolEffect.Added(&v206);
          goto LABEL_22;
        }

        v62 = v214;
        v63 = v215;
        v64 = v36;
        v65 = WORD4(v215);
        v206 = v214;
        *&v207 = v215;
        WORD4(v207) = WORD4(v215);
        *&v210 = v29;
        *(&v210 + 1) = v28;
        v211 = v30;
        v212 = v31;
        outlined init with copy of _SymbolEffect.Identified(&v229, &aBlock);
        outlined copy of _SymbolEffect.Trigger?(v64);
        outlined copy of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
        v66 = _SymbolEffect.Storage.matchesType(of:)(&v210);
        outlined consume of _SymbolEffect.Storage(v210, *(&v210 + 1), v211, v212);
        outlined consume of _SymbolEffect.Storage(v206, *(&v206 + 1), v207, WORD4(v207));
        if (v66)
        {
          v67 = v65 >> 12;
          if (v65 >> 12 >= 6)
          {
            v36 = v64;
            if (v67 == 6)
            {
              v53 = outlined consume of _SymbolEffect.Trigger?(v64);
              v54 = v190;
              v25 = v187;
            }

            else
            {
              v53 = outlined consume of _SymbolEffect.Trigger?(v64);
              v25 = v187;
              v54 = v190;
            }

            goto LABEL_101;
          }

          if ((~v62 & 0xF000000000000006) == 0)
          {
            outlined consume of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
            v36 = v64;
            v53 = outlined consume of _SymbolEffect.Trigger?(v64);
LABEL_100:
            v25 = v187;
            v54 = v190;
            goto LABEL_101;
          }

          if ((v62 & 0x8000000000000000) != 0)
          {
            if (v64 < 0)
            {
              outlined consume of _SymbolEffect.Trigger(v62);
              outlined consume of _SymbolEffect.Trigger(v64);
              outlined consume of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
              v53 = outlined consume of _SymbolEffect.Trigger?(v64);
              v36 = v64;
              v25 = v187;
              v54 = v190;
              if (v62 & 1) == 0 && (v36)
              {
                goto LABEL_44;
              }

              goto LABEL_101;
            }
          }

          else
          {
            if ((v64 & 0x8000000000000000) == 0)
            {
              if (v62 != v64)
              {
                v182 = (*v62 + 88);
                v183 = *v182;
                outlined copy of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
                outlined copy of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
                outlined copy of _SymbolEffect.Trigger?(v64);
                outlined copy of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
                outlined copy of _SymbolEffect.Trigger?(v64);
                v126 = outlined copy of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
                v127 = v183(v64, v126);
                outlined consume of _SymbolEffect.Trigger(v62);
                outlined consume of _SymbolEffect.Trigger(v64);
                outlined consume of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
                outlined consume of _SymbolEffect.Trigger?(v64);
                outlined consume of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
                outlined consume of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
                v53 = outlined consume of _SymbolEffect.Trigger?(v64);
                v36 = v64;
                v25 = v187;
                v54 = v190;
                if ((v127 & 1) == 0)
                {
                  goto LABEL_44;
                }

                goto LABEL_101;
              }

              outlined copy of _SymbolEffect.Storage(v64, *(&v62 + 1), v63, v65);
              outlined consume of _SymbolEffect.Trigger(v64);
              v53 = outlined consume of _SymbolEffect.Trigger(v64);
              goto LABEL_99;
            }

            outlined copy of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
            outlined copy of _SymbolEffect.Trigger(v62);
          }

          outlined consume of _SymbolEffect.Trigger(v62);
          outlined consume of _SymbolEffect.Trigger(v64);
          outlined consume of _SymbolEffect.Storage(v62, *(&v62 + 1), v63, v65);
        }

        v53 = outlined consume of _SymbolEffect.Trigger?(v64);
LABEL_99:
        v36 = v64;
        goto LABEL_100;
      }

      ++v38;
      v39 = (v39 + 56);
    }

    while (v37 != v38);
    v203 = v36;
    outlined init with copy of _SymbolEffect.Identified(&v229, &aBlock);
    v41 = 1;
LABEL_47:
    v34 = v196;
    v42 = *(&v229 + 1);
    v43 = v229;
    if ((v25 & 1) == 0)
    {
      goto LABEL_37;
    }

LABEL_48:
    v44 = 0;
    *&v45 = NAN;
LABEL_49:
    *&aBlock = v43;
    *(&aBlock + 1) = v42;
    *&v226 = v29;
    *(&v226 + 1) = v28;
    *&v227 = v30;
    WORD4(v227) = v31;
    HIDWORD(v227) = v44;
    v228 = v45;
    v55 = v232;
    outlined init with copy of _SymbolEffect.Added(&aBlock, &v217);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 2) + 1, 1, v55);
    }

    v57 = *(v55 + 2);
    v56 = *(v55 + 3);
    if (v57 >= v56 >> 1)
    {
      v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v56 > 1), v57 + 1, 1, v55);
    }

    outlined consume of _SymbolEffect.Trigger?(v203);
    *&v217 = v43;
    *(&v217 + 1) = v42;
    *&v218 = v29;
    *(&v218 + 1) = v205;
    *&v219 = v204;
    WORD4(v219) = v31;
    HIDWORD(v219) = v44;
    v220 = *&v45;
    outlined destroy of _SymbolEffect.Added(&v217);
    *(v55 + 2) = v57 + 1;
    v58 = &v55[56 * v57];
    v60 = v226;
    v59 = v227;
    v61 = aBlock;
    *(v58 + 20) = v228;
    *(v58 + 3) = v60;
    *(v58 + 4) = v59;
    *(v58 + 2) = v61;
    *&v232 = v55;
LABEL_22:
    if (++v23 != v200)
    {
      continue;
    }

    break;
  }

  v22 = v194;
LABEL_116:
  if (v22 < 1)
  {
    goto LABEL_127;
  }

  v128 = v224;
  if ((v224 & 0x8000000000000000) != 0)
  {
    goto LABEL_176;
  }

  if (!v224)
  {
LABEL_127:
    v134 = DWORD2(v235[0]);
    v135 = v236[10];
    v136 = DWORD2(v232);
    if (DWORD2(v232) == DWORD2(v235[0]) && ((v236[10] ^ v234[10]) & 1) == 0)
    {

      v137 = v185[1];
      v229 = *v185;
      v230 = v137;
      *v231 = v185[2];
      *&v231[14] = *(v185 + 46);
      outlined destroy of PlatformAccessibilitySettingsDefinition.Storage(&v229);
      v138 = v233;
      *v185 = v232;
      v185[1] = v138;
      v185[2] = *v234;
      *(v185 + 46) = *&v234[14];
      return;
    }

    if (v188 & 1) != 0 || (v187 & 1) != 0 || (v236[29])
    {

LABEL_134:
      [v189 setScaleLevel_];
      [v189 setHidden_];

      v139 = v185[1];
      v229 = *v185;
      v230 = v139;
      *v231 = v185[2];
      *&v231[14] = *(v185 + 46);
      outlined destroy of PlatformAccessibilitySettingsDefinition.Storage(&v229);
      v140 = v233;
      *v185 = v232;
      v185[1] = v140;
      v185[2] = *v234;
      *(v185 + 46) = *&v234[14];
      return;
    }

    if (DWORD2(v232) == DWORD2(v235[0]) && BYTE12(v235[0]) == BYTE12(v232))
    {

      goto LABEL_160;
    }

    v144 = *MEMORY[0x1E69C7218];
    *(&v230 + 1) = MEMORY[0x1E69E6370];
    LOBYTE(v229) = BYTE12(v232);
    outlined init with take of Any(&v229, &aBlock);
    v145 = MEMORY[0x1E69E7CC8];
    v146 = swift_isUniquelyReferenced_nonNull_native();
    *&v217 = v145;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&aBlock, v144, v146);
    v147 = v217;
    v148 = *MEMORY[0x1E69C7260];
    *(&v230 + 1) = MEMORY[0x1E69E6448];
    LODWORD(v229) = v233;
    outlined init with take of Any(&v229, &aBlock);
    v149 = swift_isUniquelyReferenced_nonNull_native();
    *&v217 = v147;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&aBlock, v148, v149);
    v150 = v217;
    if (v136)
    {
    }

    else
    {

      if (!v134)
      {

LABEL_160:
        v158 = v234[10];
        if (v135 != v234[10])
        {
          if (v234[8])
          {
            v159 = *MEMORY[0x1E69C7220];
            *(&v230 + 1) = MEMORY[0x1E69E7668];
            LODWORD(v229) = *&v234[4];
            outlined init with take of Any(&v229, &aBlock);
            v160 = MEMORY[0x1E69E7CC8];
            v161 = swift_isUniquelyReferenced_nonNull_native();
            *&v217 = v160;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&aBlock, v159, v161);
            v162 = v217;
            v163 = 13;
            v164 = 14;
          }

          else
          {
            v165 = *MEMORY[0x1E69C7200];
            *(&v230 + 1) = MEMORY[0x1E69E7668];
            LODWORD(v229) = *&v234[4];
            outlined init with take of Any(&v229, &aBlock);
            v166 = MEMORY[0x1E69E7CC8];
            v167 = swift_isUniquelyReferenced_nonNull_native();
            *&v217 = v166;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&aBlock, v165, v167);
            v162 = v217;
            v163 = 5;
            v164 = 9;
          }

          v168 = *MEMORY[0x1E69C7218];
          *(&v230 + 1) = MEMORY[0x1E69E6370];
          LOBYTE(v229) = v234[9];
          outlined init with take of Any(&v229, &aBlock);
          v169 = swift_isUniquelyReferenced_nonNull_native();
          *&v217 = v162;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&aBlock, v168, v169);
          v170 = v217;
          v171 = *MEMORY[0x1E69C7260];
          *(&v230 + 1) = MEMORY[0x1E69E6448];
          LODWORD(v229) = *&v234[12];
          outlined init with take of Any(&v229, &aBlock);
          v172 = swift_isUniquelyReferenced_nonNull_native();
          *&v217 = v170;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&aBlock, v171, v172);
          v173 = v217;
          if (v158)
          {
            v174 = v164;
          }

          else
          {
            v174 = v163;
          }

          if (v186 != 0)
          {
            v175 = swift_allocObject();
            *(v175 + 16) = *(&v186 + 1);
            *(v175 + 24) = v186;
            *v231 = closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:)partial apply;
            *&v231[8] = v175;
            *&v229 = MEMORY[0x1E69E9820];
            *(&v229 + 1) = 1107296256;
            *&v230 = thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned UInt32) -> ();
            *(&v230 + 1) = &block_descriptor_59;
            v176 = _Block_copy(&v229);

            v177 = *MEMORY[0x1E69C7230];
            *(&v230 + 1) = swift_getObjectType();
            *&v229 = v176;
            outlined init with take of Any(&v229, &aBlock);
            _Block_copy(v176);
            v178 = swift_isUniquelyReferenced_nonNull_native();
            *&v217 = v173;
            specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&aBlock, v177, v178);
            _Block_release(v176);
          }

          type metadata accessor for RBSymbolAnimationOptionKey(0);
          lazy protocol witness table accessor for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey();
          v179 = Dictionary._bridgeToObjectiveC()().super.isa;

          v180 = [v189 addAnimation:v174 options:v179];

          if (v180)
          {
            if (*(&v186 + 1))
            {
              v181 = (*(**(&v186 + 1) + 88))();
            }

            if (v186)
            {
              (*(*v186 + 88))(v181);
            }
          }
        }

        goto LABEL_134;
      }
    }

    if (v186 != 0)
    {
      v151 = swift_allocObject();
      *(v151 + 16) = *(&v186 + 1);
      *(v151 + 24) = v186;
      *v231 = closure #1 in RBSymbolAnimator.addAnimation(_:options:animationListener:logicalListener:)partial apply;
      *&v231[8] = v151;
      *&v229 = MEMORY[0x1E69E9820];
      *(&v229 + 1) = 1107296256;
      *&v230 = thunk for @escaping @callee_guaranteed (@unowned Bool, @unowned UInt32) -> ();
      *(&v230 + 1) = &block_descriptor_66;
      v152 = _Block_copy(&v229);

      v153 = *MEMORY[0x1E69C7230];
      *(&v230 + 1) = swift_getObjectType();
      *&v229 = v152;
      outlined init with take of Any(&v229, &aBlock);
      _Block_copy(v152);
      v154 = swift_isUniquelyReferenced_nonNull_native();
      *&v217 = v150;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&aBlock, v153, v154);
      _Block_release(v152);
    }

    type metadata accessor for RBSymbolAnimationOptionKey(0);
    lazy protocol witness table accessor for type RBSymbolAnimationOptionKey and conformance RBSymbolAnimationOptionKey();
    v155 = Dictionary._bridgeToObjectiveC()().super.isa;

    v156 = [v189 addAnimation:4 options:v155];

    if (v156)
    {
      if (*(&v186 + 1))
      {
        v157 = (*(**(&v186 + 1) + 88))();
      }

      if (v186)
      {
        (*(*v186 + 88))(v157);
      }
    }

    goto LABEL_160;
  }

  v129 = v221;
  v130 = v222;
  v131 = v223;
  v132 = (v223 + 32);
  LOBYTE(v133) = v222;
  if (!v221)
  {
    goto LABEL_122;
  }

  if (!*(v223 + 16))
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  v133 = *v132;
LABEL_122:
  if (v133)
  {
LABEL_126:
    if (v128 == 1)
    {
      goto LABEL_127;
    }

    v141 = (v198 + 132);
    v142 = 1;
    while (1)
    {
      if (v129)
      {
        if (v142 >> 6 >= *(v131 + 16))
        {
          goto LABEL_174;
        }

        if ((v132[v142 >> 6] & (1 << v142)) != 0)
        {
          goto LABEL_139;
        }
      }

      else
      {
        v143 = 1 << v142;
        if (v142 >= 0x40)
        {
          v143 = 0;
        }

        if ((v143 & v130) != 0)
        {
          goto LABEL_139;
        }
      }

      if (v142 >= *(v198 + 16))
      {
        goto LABEL_175;
      }

      if (*v141)
      {
        [v189 cancelAnimationWithID_];
      }

LABEL_139:
      ++v142;
      v141 += 14;
      if (v128 == v142)
      {
        goto LABEL_127;
      }
    }
  }

  if (*(v198 + 16))
  {
    if (*(v198 + 76))
    {
      [v189 cancelAnimationWithID_];
    }

    goto LABEL_126;
  }

LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
}