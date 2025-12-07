uint64_t lazy protocol witness table accessor for type Lyrics.StateManager and conformance Lyrics.StateManager(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void partial apply for closure #1 in Lyrics.StateManager.loader.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader);
  *(v1 + OBJC_IVAR____TtCE11MusicCoreUIC7LyricsX6Lyrics12StateManager__loader) = v2;
  v4 = v2;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRytSg_TG5TA_0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRSbSg_TG5(a1, v4);
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_0, &_s10Foundation4DateVSgMR_0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void outlined consume of Lyrics.StateManager.State.Loading.Error(id a1, char a2)
{
  if (a2 == 1)
  {
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_1(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5_0(a1, v4);
}

uint64_t partial apply for closure #1 in Lyrics.StateManager._song.didset()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return closure #1 in Lyrics.StateManager._song.didset();
}

uint64_t outlined init with take of Lyrics.StateManager.State.Loading(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Lyrics.StateManager.State.Loading(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void partial apply for closure #1 in Lyrics.StateManager.optionsObserver.setter(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t partial apply for closure #1 in Lyrics.StateManager.showTranslationButton.setter(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v2 + v4) = v3;
  return result;
}

char *VocalsAttenuationSlider.init(frame:)(double a1, double a2, double a3, double a4)
{
  v33.receiver = v4;
  v33.super_class = swift_getObjectType();
  v9 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  v10 = static AccessibilityIdentifier.named(_:)(0xD000000000000017, 0x80000001004D11E0);
  UIAccessibilityIdentification.musicAccessibilityIdentifier.setter(v14, v10, v11, v12, v13);
  if (one-time initialization token for module != -1)
  {
    swift_once();
  }

  v15 = static NSBundle.module;
  LOBYTE(v53[0]) = 1;
  *&v36 = 0x6F68706F7263694DLL;
  *(&v36 + 1) = 0xEA0000000000656ELL;
  *&v37 = static NSBundle.module;
  *(&v37 + 1) = 0x3FF0000000000000;
  v38 = 0;
  v39 = 0;
  v40 = 0x3FF0000000000000;
  v41 = 0;
  *&v42 = 0;
  *(&v42 + 1) = _swiftEmptyArrayStorage;
  v43 = 0;
  v44 = 0;
  v45 = 1;
  v46 = v36;
  v47 = v37;
  v52 = 1;
  v50 = v42;
  v51 = 0u;
  v16 = &v9[OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider_packageDefinition];
  v48 = 0u;
  v49 = 0x3FF0000000000000uLL;
  swift_beginAccess();
  v17 = *v16;
  v18 = *(v16 + 2);
  v34[1] = *(v16 + 1);
  v34[2] = v18;
  v34[0] = v17;
  v19 = *(v16 + 3);
  v20 = *(v16 + 4);
  v21 = *(v16 + 5);
  v35 = v16[96];
  v34[4] = v20;
  v34[5] = v21;
  v34[3] = v19;
  v23 = *(v16 + 4);
  v22 = *(v16 + 5);
  v24 = *(v16 + 3);
  v54 = v16[96];
  v53[4] = v23;
  v53[5] = v22;
  v53[3] = v24;
  v25 = *v16;
  v26 = *(v16 + 2);
  v53[1] = *(v16 + 1);
  v53[2] = v26;
  v53[0] = v25;
  v27 = v51;
  *(v16 + 4) = v50;
  *(v16 + 5) = v27;
  v16[96] = v52;
  v28 = v47;
  *v16 = v46;
  *(v16 + 1) = v28;
  v29 = v49;
  *(v16 + 2) = v48;
  *(v16 + 3) = v29;
  v30 = v15;
  outlined init with copy of CAPackageDefinition?(v34, v32);
  outlined init with copy of CAPackageDefinition(&v36, v32);
  outlined destroy of CAPackageDefinition?(v53);
  VerticalToggleSlider.packageDefinition.didset(v34);
  outlined destroy of CAPackageDefinition?(v34);
  outlined destroy of CAPackageDefinition(&v36);

  return v9;
}

void VocalsAttenuationSlider.accessibilitySliderCurrentPercentageValue.getter()
{
  if (*(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__minValue) > *(v0 + OBJC_IVAR____TtC11MusicCoreUI20VerticalToggleSlider__maxValue))
  {
    __break(1u);
  }
}

uint64_t outlined init with copy of CAPackageDefinition?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MusicCoreUI19CAPackageDefinitionVSgMd, &_s11MusicCoreUI19CAPackageDefinitionVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CAPackageDefinition?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MusicCoreUI19CAPackageDefinitionVSgMd, &_s11MusicCoreUI19CAPackageDefinitionVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for glowTextReveal()
{
  lazy protocol witness table accessor for type GlowTextRevealTransition and conformance GlowTextRevealTransition();
  result = AnyTransition.init<A>(_:)();
  static AnyTransition.glowTextReveal = result;
  return result;
}

uint64_t *AnyTransition.glowTextReveal.unsafeMutableAddressor()
{
  if (one-time initialization token for glowTextReveal != -1)
  {
    swift_once();
  }

  return &static AnyTransition.glowTextReveal;
}

uint64_t static AnyTransition.glowTextReveal.getter()
{
  if (one-time initialization token for glowTextReveal != -1)
  {
    swift_once();
  }
}

uint64_t GlowTextRevealTransition.body(content:phase:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  if (TransitionPhase.isIdentity.getter())
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22PlaceholderContentViewVy09MusicCoreB024GlowTextRevealTransitionVGMd, &_s7SwiftUI22PlaceholderContentViewVy09MusicCoreB024GlowTextRevealTransitionVGMR);
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy09MusicCoreB024GlowTextRevealTransitionVGAA01_j8RendererF8ModifierVyAF0ijk6EffectM0VGGMd, &_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy09MusicCoreB024GlowTextRevealTransitionVGAA01_j8RendererF8ModifierVyAF0ijk6EffectM0VGGMR);
  *(a3 + *(result + 36)) = v5;
  return result;
}

double (*GlowTextRevealEffectRenderer.animatableData.modify(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return GlowTextRevealEffectRenderer.animatableData.modify;
}

void GlowTextRevealEffectRenderer.draw(layout:in:)(uint64_t a1, uint64_t *a2, double a3)
{
  v59 = a2;
  v58 = type metadata accessor for GraphicsContext.Filter();
  v52 = *(v58 - 8);
  __chkstk_darwin();
  v57 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_7SwiftUI4TextV6LayoutV4LineV7elementtMd, &_sSi6offset_7SwiftUI4TextV6LayoutV4LineV7elementtMR);
  v60 = *(v65 - 8);
  __chkstk_darwin();
  v63 = &v45 - v6;
  v67 = type metadata accessor for Text.Layout.Line();
  v51 = *(v67 - 8);
  __chkstk_darwin();
  v56 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v48 = &v45 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_7SwiftUI4TextV6LayoutV4LineV7elementtSgMd, &_sSi6offset_7SwiftUI4TextV6LayoutV4LineV7elementtSgMR);
  __chkstk_darwin();
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = (&v45 - v11);
  v13 = type metadata accessor for Text.Layout();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceVy7SwiftUI4TextV6LayoutVGMd, &_ss18EnumeratedSequenceVy7SwiftUI4TextV6LayoutVGMR);
  __chkstk_darwin();
  v18 = &v45 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy7SwiftUI4TextV6LayoutV_GMd, &_ss18EnumeratedSequenceV8IteratorVy7SwiftUI4TextV6LayoutV_GMR) - 8;
  v20 = __chkstk_darwin();
  v22 = &v45 - v21;
  v20.n128_f64[0] = a3;
  v64 = GlowTextRevealEffectRenderer.lineProgress(with:)(a1, v20);
  (*(v14 + 16))(v18, a1, v13);
  v23 = v18;
  v24 = v22;
  v25.n128_f64[0] = (*(v14 + 32))(v16, v23, v13);
  lazy protocol witness table accessor for type Text.Layout and conformance Text.Layout(&lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout, &protocol conformance descriptor for Text.Layout, v25);
  dispatch thunk of Sequence.makeIterator()();
  v46 = *(v19 + 44);
  *&v22[v46] = 0;
  v26 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy7SwiftUI4TextV6LayoutVGMd, &_ss16IndexingIteratorVy7SwiftUI4TextV6LayoutVGMR) + 36);
  v28 = lazy protocol witness table accessor for type Text.Layout and conformance Text.Layout(&lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout, &protocol conformance descriptor for Text.Layout, v27);
  v62 = 0;
  v47 = (v51 + 16);
  v66 = (v51 + 32);
  v29 = v60;
  v60 += 6;
  v61 = (v29 + 7);
  v50 = (v52 + 8);
  v49 = (v51 + 8);
  v52 = v26;
  v51 = v28;
  v55 = v12;
  v54 = v13;
  v53 = v10;
  while (1)
  {
    dispatch thunk of Collection.endIndex.getter();
    if (*(v24 + v26) == v69[0])
    {
      v30 = 1;
      v31 = v65;
      goto LABEL_6;
    }

    v32 = dispatch thunk of Collection.subscript.read();
    v33 = v48;
    v34 = v67;
    (*v47)(v48);
    v32(v69, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v31 = v65;
    v35 = v66;
    v36 = *(v65 + 48);
    v38 = v62;
    v37 = v63;
    *v63 = v62;
    (*v35)(&v37[v36], v33, v34);
    if (__OFADD__(v38, 1))
    {
      break;
    }

    v62 = v38 + 1;
    *(v24 + v46) = v38 + 1;
    outlined init with take of URL?(v63, v10, &_sSi6offset_7SwiftUI4TextV6LayoutV4LineV7elementtMd, &_sSi6offset_7SwiftUI4TextV6LayoutV4LineV7elementtMR);
    v30 = 0;
LABEL_6:
    (*v61)(v10, v30, 1, v31);
    outlined init with take of URL?(v10, v12, &_sSi6offset_7SwiftUI4TextV6LayoutV4LineV7elementtSgMd, &_sSi6offset_7SwiftUI4TextV6LayoutV4LineV7elementtSgMR);
    if ((*v60)(v12, 1, v31) == 1)
    {
      outlined destroy of EnumeratedSequence<Text.Layout>.Iterator(v24);

      return;
    }

    v39 = *v12;
    v40 = v12 + *(v31 + 48);
    v41 = v56;
    (*v66)(v56, v40, v67);
    v69[0] = *v59;
    __chkstk_darwin();
    *(&v45 - 4) = a3;
    v42 = v64;
    *(&v45 - 3) = v41;
    *(&v45 - 2) = v42;
    *(&v45 - 1) = v39;

    GraphicsContext.clipToLayer(opacity:options:content:)();
    v68 = v69[0];
    __chkstk_darwin();
    *(&v45 - 4) = a3;
    *(&v45 - 3) = v41;
    *(&v45 - 2) = v42;
    *(&v45 - 1) = v39;
    v10 = v53;

    GraphicsContext.clipToLayer(opacity:options:content:)();
    v43 = v57;
    static GraphicsContext.Filter.blur(radius:options:)();
    GraphicsContext.addFilter(_:options:)();
    (*v50)(v43, v58);
    GraphicsContext.draw(_:options:)();
    GraphicsContext.draw(_:options:)();

    v44 = v41;
    v12 = v55;
    (*v49)(v44, v67);
    v26 = v52;
  }

  __break(1u);
}

char *GlowTextRevealEffectRenderer.lineProgress(with:)(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v34 = type metadata accessor for Text.Layout.Line();
  v4 = *(v34 - 8);
  __chkstk_darwin();
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Text.Layout();
  lazy protocol witness table accessor for type Text.Layout and conformance Text.Layout(&lazy protocol witness table cache variable for type Text.Layout and conformance Text.Layout, &protocol conformance descriptor for Text.Layout, v7);
  v8 = dispatch thunk of Collection.count.getter();
  v9 = _swiftEmptyArrayStorage;
  if (v8)
  {
    v10 = v8;
    v35 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
    v9 = v35;
    dispatch thunk of Collection.startIndex.getter();
    if (v10 < 0)
    {
      goto LABEL_24;
    }

    v33 = (v4 + 16);
    do
    {
      v11 = dispatch thunk of Collection.subscript.read();
      v12 = v34;
      (*v33)(v6);
      v11(v41, 0);
      Text.Layout.Line.typographicBounds.getter();
      v42.origin.x = v36;
      v42.size.width = v38;
      v42.origin.y = v37 - v39;
      v42.size.height = v39 + v40;
      Width = CGRectGetWidth(v42);
      (*(v4 + 8))(v6, v12);
      v35 = v9;
      v14 = a1;
      v16 = v9[2];
      v15 = v9[3];
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v9 = v35;
      }

      v9[2] = v16 + 1;
      *&v9[v16 + 4] = Width;
      dispatch thunk of Collection.formIndex(after:)();
      --v10;
      a1 = v14;
    }

    while (v10);
  }

  v17 = v9[2];
  if (!v17)
  {
    v19 = 0.0;
    goto LABEL_16;
  }

  if (v17 <= 3)
  {
    v18 = 0;
    v19 = 0.0;
LABEL_14:
    v22 = v17 - v18;
    v23 = &v9[v18 + 4];
    do
    {
      v24 = *v23++;
      v19 = v19 + v24;
      --v22;
    }

    while (v22);
    goto LABEL_16;
  }

  v18 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  v20 = (v9 + 6);
  v19 = 0.0;
  v21 = v17 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v19 = v19 + *(v20 - 2) + *(v20 - 1) + *v20 + v20[1];
    v20 += 4;
    v21 -= 4;
  }

  while (v21);
  if (v17 != v18)
  {
    goto LABEL_14;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = 0;
  if (v17)
  {
    v26 = 0;
    while (v26 < v9[2])
    {
      v27 = *&v9[v26 + 4];
      v28 = v26 + 1;
      v29 = *(inited + 8 * v26 + 32);
      v30 = *(inited + 24);
      if (v26 + 1 >= v30 >> 1)
      {
        inited = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v26 + 2, 1, inited);
      }

      *(inited + 16) = v26 + 2;
      *(inited + 8 * v26++ + 40) = v27 / v19 + v29;
      if (v17 == v28)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

LABEL_22:

  v41[0] = inited;
  v31 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sds5NeverOTg5142_s11MusicCoreUI28GlowTextRevealEffectRendererV12lineProgress33_ED0BDDCA58480CC0F9DA42494B3FDE894withSaySdG05SwiftC00E0V6LayoutV_tFSdSiXEfU1_0fG2UI0ijklM0VSaySdGTf1cn_n(0, v17, v41, v2);

  return v31;
}

uint64_t lazy protocol witness table accessor for type Text.Layout and conformance Text.Layout(unint64_t *a1, uint64_t a2, __n128 a3)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Text.Layout();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of EnumeratedSequence<Text.Layout>.Iterator(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18EnumeratedSequenceV8IteratorVy7SwiftUI4TextV6LayoutV_GMd, &_ss18EnumeratedSequenceV8IteratorVy7SwiftUI4TextV6LayoutV_GMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t partial apply for closure #1 in GlowTextRevealEffectRenderer.draw(layout:in:)(uint64_t result, uint64_t (*a2)(void, uint64_t, double))
{
  v3 = v2[5];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = v2[4];
    if (*(v4 + 16) > v3)
    {
      return a2(v2[3], result, *(v4 + 8 * v3 + 32));
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type GlowTextRevealEffectRenderer and conformance GlowTextRevealEffectRenderer()
{
  result = lazy protocol witness table cache variable for type GlowTextRevealEffectRenderer and conformance GlowTextRevealEffectRenderer;
  if (!lazy protocol witness table cache variable for type GlowTextRevealEffectRenderer and conformance GlowTextRevealEffectRenderer)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlowTextRevealEffectRenderer and conformance GlowTextRevealEffectRenderer);
  }

  return result;
}

char *_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_Sds5NeverOTg5142_s11MusicCoreUI28GlowTextRevealEffectRendererV12lineProgress33_ED0BDDCA58480CC0F9DA42494B3FDE89LL4withSaySdG05SwiftC00E0V6LayoutV_tFSdSiXEfU1_0fG2UI0ijklM0VSaySdGTf1cn_n(char *result, uint64_t a2, uint64_t a3, double a4)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    goto LABEL_18;
  }

  v5 = result;
  result = _swiftEmptyArrayStorage;
  if (v4)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4 & ~(v4 >> 63), 0);
    if (a2 < v5 || v4 < 0)
    {
      goto LABEL_19;
    }

    result = _swiftEmptyArrayStorage;
    v9 = v5;
    while (a2 != v9)
    {
      if (v5 < 0)
      {
        goto LABEL_15;
      }

      v10 = *(*a3 + 16);
      if (v9 >= v10)
      {
        goto LABEL_16;
      }

      v11 = v9 + 1;
      if (v9 + 1 >= v10)
      {
        goto LABEL_17;
      }

      v12 = *a3 + 8 * v9;
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      v17 = result;
      v16 = *(result + 2);
      v15 = *(result + 3);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        result = v17;
      }

      *(result + 2) = v16 + 1;
      *&result[8 * v16 + 32] = (a4 - v13) / (v14 - v13);
      v9 = v11;
      if (a2 == v11)
      {
        return result;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  return result;
}

double protocol witness for Animatable.animatableData.setter in conformance GlowTextRevealEffectRenderer(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double (*protocol witness for Animatable.animatableData.modify in conformance GlowTextRevealEffectRenderer(void *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = *v1;
  return protocol witness for Animatable.animatableData.modify in conformance GlowTextRevealEffectRenderer;
}

double protocol witness for Animatable.animatableData.modify in conformance GlowTextRevealEffectRenderer(uint64_t a1)
{
  result = *a1;
  **(a1 + 8) = *a1;
  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<GlowTextRevealTransition>, _TextRendererViewModifier<GlowTextRevealEffectRenderer>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<GlowTextRevealTransition>, _TextRendererViewModifier<GlowTextRevealEffectRenderer>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<GlowTextRevealTransition>, _TextRendererViewModifier<GlowTextRevealEffectRenderer>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy09MusicCoreB024GlowTextRevealTransitionVGAA01_j8RendererF8ModifierVyAF0ijk6EffectM0VGGMd, &_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy09MusicCoreB024GlowTextRevealTransitionVGAA01_j8RendererF8ModifierVyAF0ijk6EffectM0VGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PlaceholderContentView<GlowTextRevealTransition> and conformance PlaceholderContentView<A>, &_s7SwiftUI22PlaceholderContentViewVy09MusicCoreB024GlowTextRevealTransitionVGMd, &_s7SwiftUI22PlaceholderContentViewVy09MusicCoreB024GlowTextRevealTransitionVGMR, &protocol conformance descriptor for PlaceholderContentView<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _TextRendererViewModifier<GlowTextRevealEffectRenderer> and conformance _TextRendererViewModifier<A>, &_s7SwiftUI25_TextRendererViewModifierVy09MusicCoreB004Glowc12RevealEffectD0VGMd, &_s7SwiftUI25_TextRendererViewModifierVy09MusicCoreB004Glowc12RevealEffectD0VGMR, &protocol conformance descriptor for _TextRendererViewModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<GlowTextRevealTransition>, _TextRendererViewModifier<GlowTextRevealEffectRenderer>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t specialized GlowTextRevealEffectRenderer.drawMaskReveal(line:progress:in:)(double a1, uint64_t a2, uint64_t *a3)
{
  v3 = type metadata accessor for GraphicsContext.Shading();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI5ColorVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004F2EF0;
  *(v7 + 32) = static Color.white.getter();
  *(v7 + 40) = static Color.clear.getter();
  Gradient.init(colors:)();
  Text.Layout.Line.typographicBounds.getter();
  Text.Layout.Line.typographicBounds.getter();
  Text.Layout.Line.typographicBounds.getter();
  *&v13.origin.x = v9[13];
  *&v13.size.width = v9[15];
  v13.origin.y = *&v9[14] - v10;
  v13.size.height = v10 + v11;
  CGRectInset(v13, -14.0, 0.0);
  Path.init(_:)();
  static GraphicsContext.Shading.linearGradient(_:startPoint:endPoint:options:)();

  GraphicsContext.fill(_:with:style:)();
  outlined destroy of Path(v12);
  return (*(v4 + 8))(v6, v3);
}

uint64_t specialized GlowTextRevealEffectRenderer.drawGlowReveal(line:progress:in:)(double a1, uint64_t a2, uint64_t *a3)
{
  v3 = type metadata accessor for GraphicsContext.Shading();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMd, &_ss23_ContiguousArrayStorageCy7SwiftUI8GradientV4StopVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1004F2EE0;
  static Color.clear.getter();
  *(v7 + 32) = Gradient.Stop.init(color:location:)();
  *(v7 + 40) = v8;
  static Color.white.getter();
  *(v7 + 48) = Gradient.Stop.init(color:location:)();
  *(v7 + 56) = v9;
  static Color.white.getter();
  *(v7 + 64) = Gradient.Stop.init(color:location:)();
  *(v7 + 72) = v10;
  static Color.clear.getter();
  *(v7 + 80) = Gradient.Stop.init(color:location:)();
  *(v7 + 88) = v11;
  Gradient.init(stops:)();
  Text.Layout.Line.typographicBounds.getter();
  Text.Layout.Line.typographicBounds.getter();
  Text.Layout.Line.typographicBounds.getter();
  *&v17.origin.x = v13[13];
  *&v17.size.width = v13[15];
  v17.origin.y = *&v13[14] - v14;
  v17.size.height = v14 + v15;
  CGRectInset(v17, -57.5, 0.0);
  Path.init(_:)();
  static GraphicsContext.Shading.linearGradient(_:startPoint:endPoint:options:)();

  GraphicsContext.fill(_:with:style:)();
  outlined destroy of Path(v16);
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type GlowTextRevealTransition and conformance GlowTextRevealTransition()
{
  result = lazy protocol witness table cache variable for type GlowTextRevealTransition and conformance GlowTextRevealTransition;
  if (!lazy protocol witness table cache variable for type GlowTextRevealTransition and conformance GlowTextRevealTransition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlowTextRevealTransition and conformance GlowTextRevealTransition);
  }

  return result;
}

double Corner.radius(in:)(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, uint64_t a6, unsigned __int8 a7)
{
  if (a7 <= 1u)
  {
    return *&a1;
  }

  Width = CGRectGetWidth(*&a2);
  v14.origin.x = a2;
  v14.origin.y = a3;
  v14.size.width = a4;
  v14.size.height = a5;
  Height = CGRectGetHeight(v14);
  if (Height >= Width)
  {
    Height = Width;
  }

  return Height * 0.5;
}

void Corner.hash(into:)(uint64_t a1, Swift::UInt64 a2, Swift::UInt a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      String.hash(into:)();
      if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = 0;
      }

      Hasher._combine(_:)(v5);
    }

    else
    {

      String.hash(into:)();
    }
  }

  else
  {
    String.hash(into:)();
    if ((a2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = 0;
    }

    Hasher._combine(_:)(v7);
    Hasher._combine(_:)(a3);
  }
}

BOOL static Corner.__derived_enum_equals(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6 == 1)
      {
        return *&a1 == *&a4;
      }
    }

    else if (a6 == 2 && !(a5 | a4))
    {
      return 1;
    }

    return 0;
  }

  if (a6)
  {
    return 0;
  }

  return *&a1 == *&a4 && a2 == a5;
}

Swift::Int Corner.hashValue.getter(Swift::UInt64 a1, Swift::UInt a2, char a3)
{
  Hasher.init(_seed:)();
  Corner.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Corner()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  Corner.hash(into:)(v5, v1, v2, v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Corner(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  Corner.hash(into:)(v6, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Corner(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (*(a1 + 16))
  {
    v5 = *a1 == v2;
    if (v4 != 1)
    {
      v5 = 0;
    }

    v6 = v3 | *&v2;
    v8 = v4 == 2 && v6 == 0;
    if (*(a1 + 16) == 1)
    {
      return v5;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    if (*(a2 + 16))
    {
      v10 = 0;
    }

    else
    {
      v10 = *(a1 + 8) == v3;
    }

    v11 = v10;
    if (*a1 == *a2)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t static Border.__derived_struct_equals(_:_:)(uint64_t a1, unsigned __int8 a2, uint64_t a3, unsigned __int8 a4, double a5, double a6)
{
  v7 = a2;
  v8 = static Color.== infix(_:_:)() & (a5 == a6);
  if (v7 == a4)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

void Border.hash(into:)(double a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  Color.hash(into:)();
  v6 = 0.0;
  if (a1 != 0.0)
  {
    v6 = a1;
  }

  Hasher._combine(_:)(*&v6);
  Hasher._combine(_:)(a4);
}

Swift::Int Border.hashValue.getter(uint64_t a1, unsigned __int8 a2, double a3)
{
  Hasher.init(_seed:)();
  Color.hash(into:)();
  v5 = 0.0;
  if (a3 != 0.0)
  {
    v5 = a3;
  }

  Hasher._combine(_:)(*&v5);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Border(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  Color.hash(into:)();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  Hasher._combine(_:)(*&v4);
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Border(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  Hasher.init(_seed:)();
  Color.hash(into:)();
  v4 = 0.0;
  if (v2 != 0.0)
  {
    v4 = v2;
  }

  Hasher._combine(_:)(*&v4);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Border(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = static Color.== infix(_:_:)();
  result = 0;
  if ((v6 & 1) != 0 && v2 == v4)
  {
    return v3 == v5;
  }

  return result;
}

uint64_t UIView.Shadow.init(color:opacity:radius:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  return result;
}

void Shadow.hash(into:)(uint64_t a1)
{
  Color.hash(into:)();
  v2 = v1[1];
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  Hasher._combine(_:)(*&v2);
  v3 = v1[2];
  v4 = v1[3];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  Hasher._combine(_:)(*&v3);
  if (v4 == 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = v4;
  }

  Hasher._combine(_:)(*&v5);
  v6 = v1[4];
  if (v6 == 0.0)
  {
    v6 = 0.0;
  }

  Hasher._combine(_:)(*&v6);
}

Swift::Int Shadow.hashValue.getter()
{
  Hasher.init(_seed:)();
  Shadow.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Shadow(uint64_t a1)
{
  Hasher.init(_seed:)();
  Shadow.hash(into:)(v2);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Shadow(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  v10 = static Color.== infix(_:_:)();
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6 && v3 == v7 && v5 == v9)
  {
    return v4 == v8;
  }

  return result;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance CornerRadiusModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 16);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0012CornerRadiusD033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0012CornerRadiusD033_F5ED3014321945F1E2BE58A044A15282LLVGMR);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB0012CornerRadiusF033_F5ED3014321945F1E2BE58A044A15282LLVGAA23_CompositingGroupEffectVGAA05_ClipT0VyAF0I5ShapeAHLLVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB0012CornerRadiusF033_F5ED3014321945F1E2BE58A044A15282LLVGAA23_CompositingGroupEffectVGAA05_ClipT0VyAF0I5ShapeAHLLVGGMR);
  v10 = a2 + *(result + 36);
  *v10 = v5;
  *(v10 + 8) = v6;
  *(v10 + 16) = v7;
  *(v10 + 24) = 0;
  *(v10 + 32) = 256;
  return result;
}

uint64_t BorderViewModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (!*(v2 + 16))
  {
    v6 = 0.5;
    goto LABEL_5;
  }

  v5 = 0.0;
  if (*(v2 + 16) == 1)
  {
    v6 = -0.5;
LABEL_5:
    v5 = *(v2 + 1) * v6;
  }

  v8 = v2[3];
  v7 = v2[4];
  v9 = *(v2 + 40);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();

  v10 = static Alignment.center.getter();
  v12 = v11;
  v13 = static Alignment.center.getter();
  v15 = v14;
  *&v27 = v8;
  *(&v27 + 1) = v7;
  LOBYTE(v28) = v9;
  *(&v28 + 1) = v5;
  v29 = v24;
  v30 = v25;
  *&v31 = v26;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = v10;
  *&v33 = v12;
  *(&v33 + 1) = v13;
  v34 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB006BordercD033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB006BordercD033_F5ED3014321945F1E2BE58A044A15282LLVGMR);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB006BordereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA08_OverlayF0VyAA011StrokeShapeE0VyAF06CornerS0AHLLVAA5ColorVAA05EmptyE0VGGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB006BordereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA08_OverlayF0VyAA011StrokeShapeE0VyAF06CornerS0AHLLVAA5ColorVAA05EmptyE0VGGGMR) + 36);
  v18 = v32;
  *(v17 + 64) = v31;
  *(v17 + 80) = v18;
  *(v17 + 96) = v33;
  *(v17 + 112) = v34;
  v19 = v28;
  *v17 = v27;
  *(v17 + 16) = v19;
  v20 = v30;
  *(v17 + 32) = v29;
  *(v17 + 48) = v20;
  v35[0] = v8;
  v35[1] = v7;
  v36 = v9;
  v37 = v5;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  v41 = v4;
  v42 = 256;
  v43 = v10;
  v44 = v12;
  v45 = v13;
  v46 = v15;
  outlined init with copy of TaskPriority?(&v27, &v23, &_s7SwiftUI16_OverlayModifierVyAA15StrokeShapeViewVy09MusicCoreB006CornerF033_F5ED3014321945F1E2BE58A044A15282LLVAA5ColorVAA05EmptyG0VGGMd, &_s7SwiftUI16_OverlayModifierVyAA15StrokeShapeViewVy09MusicCoreB006CornerF033_F5ED3014321945F1E2BE58A044A15282LLVAA5ColorVAA05EmptyG0VGGMR);
  return outlined destroy of TaskPriority?(v35, &_s7SwiftUI16_OverlayModifierVyAA15StrokeShapeViewVy09MusicCoreB006CornerF033_F5ED3014321945F1E2BE58A044A15282LLVAA5ColorVAA05EmptyG0VGGMd, &_s7SwiftUI16_OverlayModifierVyAA15StrokeShapeViewVy09MusicCoreB006CornerF033_F5ED3014321945F1E2BE58A044A15282LLVAA5ColorVAA05EmptyG0VGGMR);
}

uint64_t View.shadow(_:corner:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *v7 = *a1;
  *&v7[8] = *(a1 + 8);
  *&v7[24] = *(a1 + 24);
  *&v7[40] = a2;
  *&v7[48] = a3;
  v7[56] = a4;

  View.modifier<A>(_:)();
  v8[0] = *v7;
  v8[1] = *&v7[16];
  v9[0] = *&v7[32];
  *(v9 + 9) = *&v7[41];
  return outlined destroy of ShadowViewModifier(v8);
}

uint64_t closure #1 in closure #1 in ShadowViewModifier.body(content:)@<X0>(double *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVAA16_BlendModeEffectVGMd, &_s7SwiftUI15ModifiedContentVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVAA16_BlendModeEffectVGMR) - 8;
  __chkstk_darwin();
  v6 = &v34[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v8 = &v34[-v7];
  v9 = *(a1 + 6);
  v37 = *(a1 + 5);
  v35 = *(a1 + 56);
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v13 = *(a1 + 3);
  outlined init with copy of ShadowViewModifier(a1, v47);
  v14 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  LOBYTE(v47[0]) = 0;
  v23 = *(v4 + 44);
  v24 = enum case for BlendMode.destinationOut(_:);
  v25 = type metadata accessor for BlendMode();
  (*(*(v25 - 8) + 104))(&v8[v23], v24, v25);
  v26 = v37;
  *v8 = v37;
  *(v8 + 1) = v9;
  v27 = v9;
  v36 = v9;
  LOBYTE(v9) = v35;
  v8[16] = v35;
  *(v8 + 3) = 0;
  outlined init with copy of TaskPriority?(v8, v6, &_s7SwiftUI15ModifiedContentVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVAA16_BlendModeEffectVGMd, &_s7SwiftUI15ModifiedContentVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVAA16_BlendModeEffectVGMR);
  *&v40 = v26;
  *(&v40 + 1) = v27;
  LOBYTE(v41) = v9;
  *(&v41 + 1) = *v39;
  HIDWORD(v41) = *&v39[3];
  v42 = 0;
  *&v43 = v10;
  *(&v43 + 1) = v11;
  *&v44 = v12;
  *(&v44 + 1) = v13;
  LOBYTE(v45) = v14;
  *(&v45 + 1) = *v38;
  DWORD1(v45) = *&v38[3];
  *(&v45 + 1) = v16;
  *&v46[0] = v18;
  *(&v46[0] + 1) = v20;
  *&v46[1] = v22;
  BYTE8(v46[1]) = 0;
  v28 = v41;
  *a2 = v40;
  a2[1] = v28;
  v29 = v43;
  v30 = v44;
  *(a2 + 89) = *(v46 + 9);
  v31 = v46[0];
  a2[4] = v45;
  a2[5] = v31;
  a2[2] = v29;
  a2[3] = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA11_ShadowViewVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_PaddingLayoutVG_ACyAiA16_BlendModeEffectVGtMd, &_s7SwiftUI15ModifiedContentVyAA11_ShadowViewVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_PaddingLayoutVG_ACyAiA16_BlendModeEffectVGtMR);
  outlined init with copy of TaskPriority?(v6, a2 + *(v32 + 48), &_s7SwiftUI15ModifiedContentVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVAA16_BlendModeEffectVGMd, &_s7SwiftUI15ModifiedContentVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVAA16_BlendModeEffectVGMR);
  outlined init with copy of TaskPriority?(&v40, v47, &_s7SwiftUI15ModifiedContentVyAA11_ShadowViewVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA11_ShadowViewVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_PaddingLayoutVGMR);
  outlined destroy of TaskPriority?(v8, &_s7SwiftUI15ModifiedContentVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVAA16_BlendModeEffectVGMd, &_s7SwiftUI15ModifiedContentVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVAA16_BlendModeEffectVGMR);
  outlined destroy of TaskPriority?(v6, &_s7SwiftUI15ModifiedContentVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVAA16_BlendModeEffectVGMd, &_s7SwiftUI15ModifiedContentVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVAA16_BlendModeEffectVGMR);
  v47[0] = v37;
  v47[1] = v36;
  v48 = v9;
  *v49 = *v39;
  *&v49[3] = *&v39[3];
  v50 = 0;
  v51 = v10;
  v52 = v11;
  v53 = v12;
  v54 = v13;
  v55 = v14;
  *v56 = *v38;
  *&v56[3] = *&v38[3];
  v57 = v16;
  v58 = v18;
  v59 = v20;
  v60 = v22;
  v61 = 0;
  return outlined destroy of TaskPriority?(v47, &_s7SwiftUI15ModifiedContentVyAA11_ShadowViewVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA11_ShadowViewVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_PaddingLayoutVGMR);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance ShadowViewModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[1];
  v16[0] = *v2;
  v16[1] = v5;
  v17[0] = v2[2];
  *(v17 + 9) = *(v2 + 41);
  v6 = static Alignment.center.getter();
  v8 = v7;
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB006ShadoweF033_F5ED3014321945F1E2BE58A044A15282LLVGAA011_BackgroundF0VyACyAA6ZStackVyAA05TupleE0VyACyAA01_iE0VyAF11CornerShapeAHLLVGAA14_PaddingLayoutVG_ACyAtA16_BlendModeEffectVGtGGAA017_CompositingGroupZ0VGGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB006ShadoweF033_F5ED3014321945F1E2BE58A044A15282LLVGAA011_BackgroundF0VyACyAA6ZStackVyAA05TupleE0VyACyAA01_iE0VyAF11CornerShapeAHLLVGAA14_PaddingLayoutVG_ACyAtA16_BlendModeEffectVGtGGAA017_CompositingGroupZ0VGGGMR) + 36));
  *v9 = static Alignment.center.getter();
  v9[1] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA07_ShadowD0Vy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA08_PaddingG0VG_AKyAqA16_BlendModeEffectVGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_ZStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA07_ShadowD0Vy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA08_PaddingG0VG_AKyAqA16_BlendModeEffectVGtGGMR);
  closure #1 in closure #1 in ShadowViewModifier.body(content:)(v16, (v9 + *(v11 + 44)));
  v12 = (v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAEyAA07_ShadowI0Vy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_PaddingLayoutVG_AEyAoA16_BlendModeEffectVGtGGAA017_CompositingGroupZ0VGGMd, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAEyAA07_ShadowI0Vy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_PaddingLayoutVG_AEyAoA16_BlendModeEffectVGtGGAA017_CompositingGroupZ0VGGMR) + 36));
  *v12 = v6;
  v12[1] = v8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB006ShadowcD033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB006ShadowcD033_F5ED3014321945F1E2BE58A044A15282LLVGMR);
  v14 = *(*(v13 - 8) + 16);

  return v14(a2, a1, v13);
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance HoverViewModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  v3 = type metadata accessor for HighlightHoverEffect();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB005HovereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA01_d9ShapeKindF0VyAF06CornerQ0AHLLVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB005HovereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA01_d9ShapeKindF0VyAF06CornerQ0AHLLVGGMR);
  __chkstk_darwin();
  v8 = v17 - v7;
  v9 = *v2;
  v10 = v2[1];
  v11 = *(v2 + 16);
  v12 = *(v2 + 3);
  v14 = v17 + *(v13 + 36) - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVy09MusicCoreB006CornerD033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI25_ContentShapeKindModifierVy09MusicCoreB006CornerD033_F5ED3014321945F1E2BE58A044A15282LLVGMR);
  static ContentShapeKinds.hoverEffect.getter();
  *v14 = v9;
  *(v14 + 1) = v10;
  v14[16] = v11;
  *(v14 + 3) = -v12;
  v14[32] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB005HovercD033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB005HovercD033_F5ED3014321945F1E2BE58A044A15282LLVGMR);
  (*(*(v15 - 8) + 16))(v8, v17[0], v15);
  static CustomHoverEffect<>.highlight.getter();
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HoverViewModifier>, _ContentShapeKindModifier<CornerShape>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type HighlightHoverEffect and conformance HighlightHoverEffect();
  View.hoverEffect<A>(_:isEnabled:)();
  (*(v4 + 8))(v6, v3);
  return outlined destroy of TaskPriority?(v8, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB005HovereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA01_d9ShapeKindF0VyAF06CornerQ0AHLLVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB005HovereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA01_d9ShapeKindF0VyAF06CornerQ0AHLLVGGMR);
}

void CornerShape.path(in:)(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, _OWORD *a4@<X8>, CGFloat a5@<D0>, CGFloat a6@<D1>, CGFloat a7@<D2>, CGFloat a8@<D3>, CGFloat a9@<D4>)
{
  LODWORD(v46) = a3;
  v44 = a2;
  *&v45 = a1;
  v47 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4EdgeOAAE6CornerO5StyleVSgMd, _s7SwiftUI4EdgeOAAE6CornerO5StyleVSgMR);
  __chkstk_darwin();
  v15 = &v41 - v14;
  v16 = type metadata accessor for Edge.Corner.Style();
  v41 = *(v16 - 8);
  __chkstk_darwin();
  v17 = type metadata accessor for ConcentricRectangle();
  v42 = *(v17 - 8);
  v43 = v17;
  __chkstk_darwin();
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for RoundedCornerStyle();
  v21 = *(v20 - 8);
  __chkstk_darwin();
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Capsule();
  __chkstk_darwin();
  v25 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for RoundedRectangle._Inset();
  v27 = __chkstk_darwin();
  v29 = &v41 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v46)
  {
    v31 = v44;
    if (v44 == -1)
    {
      v38 = type metadata accessor for RoundedRectangle();
      (*(v21 + 104))(&v29[*(v38 + 20)], enum case for RoundedCornerStyle.continuous(_:), v20);
      v39 = v45;
      *v29 = v45;
      *(v29 + 1) = v39;
      *&v29[*(v26 + 20)] = a9;
      RoundedRectangle._Inset.path(in:)();
      v45 = v48;
      v46 = v49;
      v30 = v50;
      outlined destroy of Capsule(v29, &type metadata accessor for RoundedRectangle._Inset);
    }

    else
    {
      v32 = *&v45;
      v52.origin.x = a5;
      v52.origin.y = a6;
      v52.size.width = a7;
      v52.size.height = a8;
      v53 = CGRectInset(v52, a9, a9);
      v33 = [objc_opt_self() bezierPathWithRoundedRect:v31 byRoundingCorners:v53.origin.x cornerRadii:{v53.origin.y, v53.size.width, v53.size.height, v32, v32}];
      v34 = [v33 CGPath];
      Path.init(_:)();
      v45 = v48;
      v46 = v49;
      v30 = v50;
    }

    goto LABEL_8;
  }

  if (v46 == 1)
  {
    static Edge.Corner.Style.fixed(_:)();
    (*(v41 + 56))(v15, 0, 1, v16);
    static Edge.Corner.Style.concentric(minimum:)();
    outlined destroy of TaskPriority?(v15, &_s7SwiftUI4EdgeOAAE6CornerO5StyleVSgMd, _s7SwiftUI4EdgeOAAE6CornerO5StyleVSgMR);
    ConcentricRectangle.init(corners:isUniform:)();
    v51.origin.x = a5;
    v51.origin.y = a6;
    v51.size.width = a7;
    v51.size.height = a8;
    CGRectInset(v51, a9, a9);
    ConcentricRectangle.path(in:)();
    v45 = v48;
    v46 = v49;
    v30 = v50;
    (*(v42 + 8))(v19, v43);
LABEL_8:
    v37 = v45;
    v36 = v46;
    goto LABEL_9;
  }

  v35 = *(v21 + 104);
  v35(v25, enum case for RoundedCornerStyle.continuous(_:), v20, v27);
  (v35)(v23, enum case for RoundedCornerStyle.circular(_:), v20);
  static RoundedCornerStyle.== infix(_:_:)();
  (*(v21 + 8))(v23, v20);
  outlined destroy of Capsule(v25, &type metadata accessor for Capsule);
  Capsule._Inset.path(in:)();
  v37 = v48;
  v36 = v49;
  v30 = v50;
LABEL_9:
  v40 = v47;
  *v47 = v37;
  v40[1] = v36;
  *(v40 + 32) = v30;
}

double protocol witness for InsettableShape.inset(by:) in conformance CornerShape@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = *(v2 + 16);
  result = *(v2 + 24) + a2;
  *a1 = *v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = result;
  return result;
}

double protocol witness for Shape.path(in:) in conformance CornerShape@<D0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  CornerShape.path(in:)(*v5, *(v5 + 8), *(v5 + 16), v9, a2, a3, a4, a5, *(v5 + 24));
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

void (*protocol witness for Animatable.animatableData.modify in conformance CornerShape(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = Animatable<>.animatableData.modify();
  return protocol witness for MusicUIContentView.typedConfiguration.modify in conformance Artwork.View;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance CornerShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CornerShape and conformance CornerShape();

  return static Shape._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance CornerShape(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type CornerShape and conformance CornerShape();

  return static Shape._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for View.body.getter in conformance CornerShape(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CornerShape and conformance CornerShape();

  return Shape.body.getter(a1, v2);
}

uint64_t *Corner.extraSmall.unsafeMutableAddressor()
{
  if (one-time initialization token for extraSmall != -1)
  {
    swift_once();
  }

  return &static Corner.extraSmall;
}

uint64_t static Corner.extraSmall.getter()
{
  if (one-time initialization token for extraSmall != -1)
  {
    swift_once();
  }

  return static Corner.extraSmall;
}

uint64_t *Corner.small.unsafeMutableAddressor()
{
  if (one-time initialization token for small != -1)
  {
    swift_once();
  }

  return &static Corner.small;
}

uint64_t static Corner.small.getter()
{
  if (one-time initialization token for small != -1)
  {
    swift_once();
  }

  return static Corner.small;
}

uint64_t *Corner.medium.unsafeMutableAddressor()
{
  if (one-time initialization token for medium != -1)
  {
    swift_once();
  }

  return &static Corner.medium;
}

uint64_t static Corner.medium.getter()
{
  if (one-time initialization token for medium != -1)
  {
    swift_once();
  }

  return static Corner.medium;
}

uint64_t *Corner.large.unsafeMutableAddressor()
{
  if (one-time initialization token for large != -1)
  {
    swift_once();
  }

  return &static Corner.large;
}

uint64_t static Corner.large.getter()
{
  if (one-time initialization token for large != -1)
  {
    swift_once();
  }

  return static Corner.large;
}

uint64_t *Corner.extraLarge.unsafeMutableAddressor()
{
  if (one-time initialization token for extraLarge != -1)
  {
    swift_once();
  }

  return &static Corner.extraLarge;
}

uint64_t static Corner.extraLarge.getter()
{
  if (one-time initialization token for extraLarge != -1)
  {
    swift_once();
  }

  return static Corner.extraLarge;
}

uint64_t one-time initialization function for artwork()
{
  v0 = objc_allocWithZone(UIColor);
  v3[4] = closure #1 in variable initialization expression of static Border.artwork;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = thunk for @escaping @callee_guaranteed (@guaranteed UITraitCollection) -> (@owned UIColor);
  v3[3] = &block_descriptor_56;
  v1 = _Block_copy(v3);
  [v0 initWithDynamicProvider:v1];
  _Block_release(v1);

  result = Color.init(uiColor:)();
  static Border.artwork = result;
  qword_10063F0B8 = 0x3FE0000000000000;
  byte_10063F0C0 = 0;
  return result;
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.artwork);
  __swift_project_value_buffer(v0, static Logger.artwork);
  return static Logger.music(_:)(0x6B726F77747241, 0xE700000000000000);
}

id closure #1 in variable initialization expression of static Border.artwork(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = dbl_1005079E0[v1 == 1];
  v4 = &selRef_blackColor;
  if (v1 != 1)
  {
    v4 = &selRef_whiteColor;
  }

  v5 = [v2 *v4];
  v6 = [v5 colorWithAlphaComponent:v3];

  return v6;
}

uint64_t *Border.artwork.unsafeMutableAddressor()
{
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  return &static Border.artwork;
}

double static Border.artwork.getter()
{
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v0 = *&qword_10063F0B8;

  return v0;
}

double one-time initialization function for shallow()
{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  static Shadow.shallow = v0;
  unk_10063F0D0 = xmmword_1005079F0;
  result = 2.0;
  unk_10063F0E0 = xmmword_100507A00;
  return result;
}

uint64_t *Shadow.shallow.unsafeMutableAddressor()
{
  if (one-time initialization token for shallow != -1)
  {
    swift_once();
  }

  return &static Shadow.shallow;
}

uint64_t static Shadow.shallow.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for shallow != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.shallow;
  *(a1 + 8) = unk_10063F0D0;
  *(a1 + 24) = unk_10063F0E0;
}

double one-time initialization function for intermediate()
{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  static Shadow.intermediate = v0;
  unk_10063F0F8 = xmmword_100507A10;
  result = 15.0;
  unk_10063F108 = xmmword_100507A20;
  return result;
}

uint64_t *Shadow.intermediate.unsafeMutableAddressor()
{
  if (one-time initialization token for intermediate != -1)
  {
    swift_once();
  }

  return &static Shadow.intermediate;
}

uint64_t static Shadow.intermediate.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for intermediate != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.intermediate;
  *(a1 + 8) = unk_10063F0F8;
  *(a1 + 24) = unk_10063F108;
}

double one-time initialization function for deep()
{
  static Color.black.getter();
  v0 = Color.opacity(_:)();

  static Shadow.deep = v0;
  *algn_10063F120 = xmmword_100507A30;
  result = 25.0;
  *&algn_10063F120[16] = xmmword_100507A40;
  return result;
}

uint64_t *Shadow.deep.unsafeMutableAddressor()
{
  if (one-time initialization token for deep != -1)
  {
    swift_once();
  }

  return &static Shadow.deep;
}

uint64_t static Shadow.deep.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for deep != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = static Shadow.deep;
  *(a1 + 8) = *algn_10063F120;
  *(a1 + 24) = *&algn_10063F120[16];
}

unint64_t lazy protocol witness table accessor for type Corner and conformance Corner()
{
  result = lazy protocol witness table cache variable for type Corner and conformance Corner;
  if (!lazy protocol witness table cache variable for type Corner and conformance Corner)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Corner and conformance Corner);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Border.StrokeStyle and conformance Border.StrokeStyle()
{
  result = lazy protocol witness table cache variable for type Border.StrokeStyle and conformance Border.StrokeStyle;
  if (!lazy protocol witness table cache variable for type Border.StrokeStyle and conformance Border.StrokeStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Border.StrokeStyle and conformance Border.StrokeStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Border and conformance Border()
{
  result = lazy protocol witness table cache variable for type Border and conformance Border;
  if (!lazy protocol witness table cache variable for type Border and conformance Border)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Border and conformance Border);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Shadow and conformance Shadow()
{
  result = lazy protocol witness table cache variable for type Shadow and conformance Shadow;
  if (!lazy protocol witness table cache variable for type Shadow and conformance Shadow)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Shadow and conformance Shadow);
  }

  return result;
}

uint64_t getEnumTag for Corner(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 __swift_memcpy40_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type CornerRadiusModifier and conformance CornerRadiusModifier()
{
  result = lazy protocol witness table cache variable for type CornerRadiusModifier and conformance CornerRadiusModifier;
  if (!lazy protocol witness table cache variable for type CornerRadiusModifier and conformance CornerRadiusModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CornerRadiusModifier and conformance CornerRadiusModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BorderViewModifier and conformance BorderViewModifier()
{
  result = lazy protocol witness table cache variable for type BorderViewModifier and conformance BorderViewModifier;
  if (!lazy protocol witness table cache variable for type BorderViewModifier and conformance BorderViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BorderViewModifier and conformance BorderViewModifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ShadowViewModifier and conformance ShadowViewModifier()
{
  result = lazy protocol witness table cache variable for type ShadowViewModifier and conformance ShadowViewModifier;
  if (!lazy protocol witness table cache variable for type ShadowViewModifier and conformance ShadowViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ShadowViewModifier and conformance ShadowViewModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx09MusicCoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAaBHPxAaBHD1__AhA0cJ0HPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedContent();
  a3();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type HoverViewModifier and conformance HoverViewModifier()
{
  result = lazy protocol witness table cache variable for type HoverViewModifier and conformance HoverViewModifier;
  if (!lazy protocol witness table cache variable for type HoverViewModifier and conformance HoverViewModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HoverViewModifier and conformance HoverViewModifier);
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for HoverViewModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 42))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for HoverViewModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ShadowViewModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t storeEnumTagSinglePayload for ShadowViewModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for BorderViewModifier(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t storeEnumTagSinglePayload for BorderViewModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HoverViewModifier>, _ContentShapeKindModifier<CornerShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HoverViewModifier>, _ContentShapeKindModifier<CornerShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HoverViewModifier>, _ContentShapeKindModifier<CornerShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB005HovereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA01_d9ShapeKindF0VyAF06CornerQ0AHLLVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB005HovereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA01_d9ShapeKindF0VyAF06CornerQ0AHLLVGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<HoverViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB005HovercD033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB005HovercD033_F5ED3014321945F1E2BE58A044A15282LLVGMR, &protocol conformance descriptor for _ViewModifier_Content<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ContentShapeKindModifier<CornerShape> and conformance _ContentShapeKindModifier<A>, &_s7SwiftUI25_ContentShapeKindModifierVy09MusicCoreB006CornerD033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI25_ContentShapeKindModifierVy09MusicCoreB006CornerD033_F5ED3014321945F1E2BE58A044A15282LLVGMR, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HoverViewModifier>, _ContentShapeKindModifier<CornerShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type HighlightHoverEffect and conformance HighlightHoverEffect()
{
  result = lazy protocol witness table cache variable for type HighlightHoverEffect and conformance HighlightHoverEffect;
  if (!lazy protocol witness table cache variable for type HighlightHoverEffect and conformance HighlightHoverEffect)
  {
    type metadata accessor for HighlightHoverEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HighlightHoverEffect and conformance HighlightHoverEffect);
  }

  return result;
}

uint64_t block_copy_helper_56(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t getEnumTagSinglePayload for CornerShape(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 32))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CornerShape(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect>, _ClipEffect<CornerShape>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect>, _ClipEffect<CornerShape>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect>, _ClipEffect<CornerShape>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB0012CornerRadiusF033_F5ED3014321945F1E2BE58A044A15282LLVGAA23_CompositingGroupEffectVGAA05_ClipT0VyAF0I5ShapeAHLLVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB0012CornerRadiusF033_F5ED3014321945F1E2BE58A044A15282LLVGAA23_CompositingGroupEffectVGAA05_ClipT0VyAF0I5ShapeAHLLVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ClipEffect<CornerShape> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI11_ClipEffectVy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGMR, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect>, _ClipEffect<CornerShape>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0012CornerRadiusF033_F5ED3014321945F1E2BE58A044A15282LLVGAA23_CompositingGroupEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0012CornerRadiusF033_F5ED3014321945F1E2BE58A044A15282LLVGAA23_CompositingGroupEffectVGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<CornerRadiusModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0012CornerRadiusD033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0012CornerRadiusD033_F5ED3014321945F1E2BE58A044A15282LLVGMR, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<CornerRadiusModifier>, _CompositingGroupEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<BorderViewModifier>, _OverlayModifier<StrokeShapeView<CornerShape, Color, EmptyView>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BorderViewModifier>, _OverlayModifier<StrokeShapeView<CornerShape, Color, EmptyView>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BorderViewModifier>, _OverlayModifier<StrokeShapeView<CornerShape, Color, EmptyView>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB006BordereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA08_OverlayF0VyAA011StrokeShapeE0VyAF06CornerS0AHLLVAA5ColorVAA05EmptyE0VGGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB006BordereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA08_OverlayF0VyAA011StrokeShapeE0VyAF06CornerS0AHLLVAA5ColorVAA05EmptyE0VGGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<BorderViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB006BordercD033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB006BordercD033_F5ED3014321945F1E2BE58A044A15282LLVGMR, &protocol conformance descriptor for _ViewModifier_Content<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _OverlayModifier<StrokeShapeView<CornerShape, Color, EmptyView>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15StrokeShapeViewVy09MusicCoreB006CornerF033_F5ED3014321945F1E2BE58A044A15282LLVAA5ColorVAA05EmptyG0VGGMd, &_s7SwiftUI16_OverlayModifierVyAA15StrokeShapeViewVy09MusicCoreB006CornerF033_F5ED3014321945F1E2BE58A044A15282LLVAA5ColorVAA05EmptyG0VGGMR, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<BorderViewModifier>, _OverlayModifier<StrokeShapeView<CornerShape, Color, EmptyView>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<ShadowViewModifier>, _BackgroundModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShadowView<CornerShape>, _PaddingLayout>, ModifiedContent<CornerShape, _BlendModeEffect>)>>, _CompositingGroupEffect>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ShadowViewModifier>, _BackgroundModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShadowView<CornerShape>, _PaddingLayout>, ModifiedContent<CornerShape, _BlendModeEffect>)>>, _CompositingGroupEffect>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ShadowViewModifier>, _BackgroundModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShadowView<CornerShape>, _PaddingLayout>, ModifiedContent<CornerShape, _BlendModeEffect>)>>, _CompositingGroupEffect>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB006ShadoweF033_F5ED3014321945F1E2BE58A044A15282LLVGAA011_BackgroundF0VyACyAA6ZStackVyAA05TupleE0VyACyAA01_iE0VyAF11CornerShapeAHLLVGAA14_PaddingLayoutVG_ACyAtA16_BlendModeEffectVGtGGAA017_CompositingGroupZ0VGGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB006ShadoweF033_F5ED3014321945F1E2BE58A044A15282LLVGAA011_BackgroundF0VyACyAA6ZStackVyAA05TupleE0VyACyAA01_iE0VyAF11CornerShapeAHLLVGAA14_PaddingLayoutVG_ACyAtA16_BlendModeEffectVGtGGAA017_CompositingGroupZ0VGGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<ShadowViewModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB006ShadowcD033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB006ShadowcD033_F5ED3014321945F1E2BE58A044A15282LLVGMR, &protocol conformance descriptor for _ViewModifier_Content<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _BackgroundModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShadowView<CornerShape>, _PaddingLayout>, ModifiedContent<CornerShape, _BlendModeEffect>)>>, _CompositingGroupEffect>> and conformance _BackgroundModifier<A>, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAEyAA07_ShadowI0Vy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_PaddingLayoutVG_AEyAoA16_BlendModeEffectVGtGGAA017_CompositingGroupZ0VGGMd, &_s7SwiftUI19_BackgroundModifierVyAA15ModifiedContentVyAA6ZStackVyAA9TupleViewVyAEyAA07_ShadowI0Vy09MusicCoreB011CornerShape33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_PaddingLayoutVG_AEyAoA16_BlendModeEffectVGtGGAA017_CompositingGroupZ0VGGMR, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<ShadowViewModifier>, _BackgroundModifier<ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShadowView<CornerShape>, _PaddingLayout>, ModifiedContent<CornerShape, _BlendModeEffect>)>>, _CompositingGroupEffect>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_1002F0984()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB005HovereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA01_d9ShapeKindF0VyAF06CornerQ0AHLLVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB005HovereF033_F5ED3014321945F1E2BE58A044A15282LLVGAA01_d9ShapeKindF0VyAF06CornerQ0AHLLVGGMR);
  type metadata accessor for HighlightHoverEffect();
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HoverViewModifier>, _ContentShapeKindModifier<CornerShape>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type HighlightHoverEffect and conformance HighlightHoverEffect();
  return swift_getOpaqueTypeConformance2();
}

unint64_t lazy protocol witness table accessor for type CornerShape and conformance CornerShape()
{
  result = lazy protocol witness table cache variable for type CornerShape and conformance CornerShape;
  if (!lazy protocol witness table cache variable for type CornerShape and conformance CornerShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CornerShape and conformance CornerShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CornerShape and conformance CornerShape;
  if (!lazy protocol witness table cache variable for type CornerShape and conformance CornerShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CornerShape and conformance CornerShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CornerShape and conformance CornerShape;
  if (!lazy protocol witness table cache variable for type CornerShape and conformance CornerShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CornerShape and conformance CornerShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CornerShape and conformance CornerShape;
  if (!lazy protocol witness table cache variable for type CornerShape and conformance CornerShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CornerShape and conformance CornerShape);
  }

  return result;
}

uint64_t outlined destroy of Capsule(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *_ss15_arrayForceCastySayq_GSayxGr0_lF10Foundation3URLV_AFSgTg5_0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd_0, &_s10Foundation3URLVSgMR_0);
  v6 = *(v19 - 8);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtF10Foundation3URLVSg_Tg5_0(0, v9, 0);
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v10 = v20;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        _ss15ContiguousArrayV16_createNewBuffer14bufferIsUnique15minimumCapacity13growForAppendySb_SiSbtF10Foundation3URLVSg_Tg5_0((v14 > 1), v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      _s10Foundation3URLVSgWOb_0(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

char *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        _sSo10CGColorRefaMa_0(0);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        outlined init with take of Any(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      _sSo10CGColorRefaMa_0(0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        outlined init with take of Any(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t GradientProperties.colors.getter(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlF_0(AssociatedTypeWitness, AssociatedTypeWitness);
  swift_allocObject();
  v5 = static Array._adoptStorage(_:count:)();
  v6 = a2[7];
  v6(a1, a2);
  v6(a1, a2);
  v7 = a2[8];
  v7(a1, a2);
  v7(a1, a2);
  v8 = a2[9];
  v8(a1, a2);
  v8(a1, a2);
  type metadata accessor for Array();
  return v5;
}

double specialized GradientProperties.locations.getter()
{
  v4 = *v0 / (*v0 + 60.0);
  v3 = (1.0 - v4) * 0.5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1004F3070;
  *(v1 + 32) = 0;
  *(v1 + 40) = v3;
  *(v1 + 48) = vaddq_f64(vmulq_n_f64(xmmword_100507A50, v4), vdupq_lane_s64(*&v3, 0));
  result = 1.0 - v3;
  *(v1 + 64) = 1.0 - v3;
  *(v1 + 72) = 0x3FF0000000000000;
  return result;
}

double GradientProperties.locations.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = v4();
  v9 = v5 / ((v4)(a1, a2) + 60.0);
  v8 = (1.0 - v9) * 0.5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1004F3070;
  *(v6 + 32) = 0;
  *(v6 + 40) = v8;
  *(v6 + 48) = vaddq_f64(vmulq_n_f64(xmmword_100507A50, v9), vdupq_lane_s64(*&v8, 0));
  result = 1.0 - v8;
  *(v6 + 64) = 1.0 - v8;
  *(v6 + 72) = 0x3FF0000000000000;
  return result;
}

void *GradientProperties<>.stops.getter(uint64_t a1, void *a2)
{
  v4 = GradientProperties.colors.getter(a1, a2);
  GradientProperties.locations.getter(a1, a2);
  v6 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay7SwiftUI5ColorVGSaySdGG_AH8GradientV4StopVs5NeverOTg503_s7f3UI5h6VSdAA8i2V4j17VIggyo_AC_SdtAGs5k80OIegnrzr_TR017_s11MusicCoreUI18d15PropertiesPAA05a3C05c25VAERtzrlE5stopsSayAD0D0p11E16VGvgAlF_S15XEfU_Tf3nnnpf_nTf1cn_n(v4, v5);

  return v6;
}

void *_sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFs12Zip2SequenceVySay7SwiftUI5ColorVGSaySdGG_AH8GradientV4StopVs5NeverOTg503_s7f3UI5h6VSdAA8i2V4j17VIggyo_AC_SdtAGs5k80OIegnrzr_TR017_s11MusicCoreUI18d15PropertiesPAA05a3C05c25VAERtzrlE5stopsSayAD0D0p11E16VGvgAlF_S15XEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
  v27 = v4;
  v28 = v5;
  if (v6)
  {
    v8 = a1 + 32;
    v9 = a2 + 32;
    v10 = v6;
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_21;
      }

      result = Gradient.Stop.init(color:location:)();
      v13 = _swiftEmptyArrayStorage[2];
      v12 = _swiftEmptyArrayStorage[3];
      if (v13 >= v12 >> 1)
      {
        v26 = result;
        v15 = v11;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        v11 = v15;
        result = v26;
      }

      _swiftEmptyArrayStorage[2] = v13 + 1;
      v14 = &_swiftEmptyArrayStorage[2 * v13];
      --v5;
      v14[4] = result;
      v14[5] = v11;
      --v4;
      v9 += 8;
      v8 += 8;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v27;
    v17 = v28;
    if (v27 <= v28)
    {
      return _swiftEmptyArrayStorage;
    }

    while (v6 < v16)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }

      if (v17 != v6)
      {
        if (v6 >= v17)
        {
          goto LABEL_24;
        }

        result = Gradient.Stop.init(color:location:)();
        v21 = _swiftEmptyArrayStorage[2];
        v20 = _swiftEmptyArrayStorage[3];
        if (v21 >= v20 >> 1)
        {
          v23 = v16;
          v24 = result;
          v25 = v19;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
          v19 = v25;
          result = v24;
          v16 = v23;
          v17 = v28;
        }

        _swiftEmptyArrayStorage[2] = v21 + 1;
        v22 = &_swiftEmptyArrayStorage[2 * v21];
        v22[4] = result;
        v22[5] = v19;
        ++v6;
        if (v18 != v16)
        {
          continue;
        }
      }

      return _swiftEmptyArrayStorage;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t closure #1 in StrokeView.body.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v27 = *a1;
  v28 = v3;
  v29 = *(a1 + 32);
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  Path.strokedPath(_:)();
  outlined destroy of StrokeStyle(v24);
  v4 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  Path.strokedPath(_:)();
  outlined destroy of StrokeStyle(v25);
  v5 = static Color.white.getter();
  StrokeStyle.init(lineWidth:lineCap:lineJoin:miterLimit:dash:dashPhase:)();
  Path.strokedPath(_:)();
  outlined destroy of StrokeStyle(v26);
  v6 = static Color.white.getter();
  v30[0] = v21;
  v30[1] = v22;
  *&v31 = v23;
  *(&v31 + 1) = v4;
  LOWORD(v32) = 256;
  *(&v32 + 1) = 0x3FE0000000000000;
  v33 = 0;
  v10[0] = 0;
  v8 = v31;
  v9 = v32;
  v34[0] = v18;
  v34[1] = v19;
  *&v35 = v20;
  *(&v35 + 1) = v5;
  LOWORD(v36) = 256;
  *(&v36 + 1) = 0x4000000000000000;
  v37 = 0;
  *&v10[8] = v18;
  v10[72] = 0;
  *&v10[56] = v36;
  *&v10[40] = v35;
  *&v10[24] = v19;
  v38 = v15;
  v39 = v16;
  *&v40 = v17;
  *(&v40 + 1) = v6;
  LOWORD(v41) = 256;
  *(a2 + 208) = 0;
  *(&v41 + 1) = 0x4018000000000000;
  v42 = 0;
  v13 = v40;
  v14 = v41;
  v11 = v38;
  v12 = v39;
  *a2 = v21;
  *(a2 + 16) = v22;
  *(a2 + 64) = *v10;
  *(a2 + 80) = *&v10[16];
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 128) = *&v10[64];
  *(a2 + 144) = v11;
  *(a2 + 96) = *&v10[32];
  *(a2 + 112) = *&v10[48];
  *(a2 + 176) = v13;
  *(a2 + 192) = v14;
  *(a2 + 160) = v12;
  v43[0] = v15;
  v43[1] = v16;
  v44 = v17;
  v45 = v6;
  v46 = 256;
  v47 = 0x4018000000000000;
  v48 = 0;
  outlined init with copy of TaskPriority?(v30, v55, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMR);
  outlined init with copy of TaskPriority?(v34, v55, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMR);
  outlined init with copy of TaskPriority?(&v38, v55, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMR);
  outlined destroy of TaskPriority?(v43, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMR);
  v49[0] = v18;
  v49[1] = v19;
  v50 = v20;
  v51 = v5;
  v52 = 256;
  v53 = 0x4000000000000000;
  v54 = 0;
  outlined destroy of TaskPriority?(v49, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMR);
  v55[0] = v21;
  v55[1] = v22;
  v56 = v23;
  v57 = v4;
  v58 = 256;
  v59 = 0x3FE0000000000000;
  v60 = 0;
  return outlined destroy of TaskPriority?(v55, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA10_ShapeViewVyAA4PathVAA5ColorVGAA11_BlurEffectVGMR);
}

double protocol witness for View.body.getter in conformance StrokeView@<D0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v19[0] = *v2;
  v19[1] = v4;
  v20 = *(v2 + 32);
  v5 = static Alignment.center.getter();
  v7 = v6;
  closure #1 in StrokeView.body.getter(v19, &v37);
  v31 = v47;
  v32 = v48;
  v33 = v49;
  v27 = v43;
  v28 = v44;
  v29 = v45;
  v30 = v46;
  v23 = v39;
  v24 = v40;
  v25 = v41;
  v26 = v42;
  v21 = v37;
  v22 = v38;
  v35[10] = v47;
  v35[11] = v48;
  v35[12] = v49;
  v35[6] = v43;
  v35[7] = v44;
  v35[8] = v45;
  v35[9] = v46;
  v35[2] = v39;
  v35[3] = v40;
  v35[4] = v41;
  v35[5] = v42;
  v34 = v50;
  v36 = v50;
  v35[0] = v37;
  v35[1] = v38;
  outlined init with copy of TaskPriority?(&v21, v18, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA06_ShapeD0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2OtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA06_ShapeD0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2OtGMR);
  outlined destroy of TaskPriority?(v35, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA06_ShapeD0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2OtGMd, &_s7SwiftUI9TupleViewVyAA15ModifiedContentVyAA06_ShapeD0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2OtGMR);
  v47 = v31;
  v48 = v32;
  v49 = v33;
  v50 = v34;
  v43 = v27;
  v44 = v28;
  v45 = v29;
  v46 = v30;
  v39 = v23;
  v40 = v24;
  v41 = v25;
  v42 = v26;
  v37 = v21;
  v38 = v22;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2QtGGAA010_BlendModeL0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2QtGGAA010_BlendModeL0VGMR) + 36);
  v9 = enum case for BlendMode.plusLighter(_:);
  v10 = type metadata accessor for BlendMode();
  (*(*(v10 - 8) + 104))(a2 + v8, v9, v10);
  *a2 = v5;
  *(a2 + 8) = v7;
  v11 = v48;
  *(a2 + 176) = v47;
  *(a2 + 192) = v11;
  *(a2 + 208) = v49;
  *(a2 + 224) = v50;
  v12 = v44;
  *(a2 + 112) = v43;
  *(a2 + 128) = v12;
  v13 = v46;
  *(a2 + 144) = v45;
  *(a2 + 160) = v13;
  v14 = v40;
  *(a2 + 48) = v39;
  *(a2 + 64) = v14;
  v15 = v42;
  *(a2 + 80) = v41;
  *(a2 + 96) = v15;
  result = *&v37;
  v17 = v38;
  *(a2 + 16) = v37;
  *(a2 + 32) = v17;
  return result;
}

uint64_t GradientMaskModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = a1;
  v17 = a3;
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI20_MaskAlignmentEffectVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGGMd, &_s7SwiftUI20_MaskAlignmentEffectVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGGMR);
  v5 = type metadata accessor for ModifiedContent();
  v15 = *(v5 - 8);
  __chkstk_darwin();
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v14 - v8;
  v18 = *(a2 + 16);
  v19 = v3;
  static Alignment.center.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGMR);
  WitnessTable = swift_getWitnessTable();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<LinearGradient, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGMR, lazy protocol witness table accessor for type LinearGradient and conformance LinearGradient);
  View.mask<A>(alignment:_:)();
  v11 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _MaskAlignmentEffect<ModifiedContent<LinearGradient, _FrameLayout>> and conformance _MaskAlignmentEffect<A>, &_s7SwiftUI20_MaskAlignmentEffectVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGGMd, &_s7SwiftUI20_MaskAlignmentEffectVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGGMR, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
  v20 = WitnessTable;
  v21 = v11;
  swift_getWitnessTable();
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();
  v12 = *(v15 + 8);
  v12(v7, v5);
  _s7SwiftUI11ViewBuilderV15buildExpressionyxxAA0C0RzlFZ_0();
  return (v12)(v9, v5);
}

double closure #1 in GradientMaskModifier.body(content:)@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  GradientProperties<>.stops.getter(a1, a2);
  (*(a2 + 40))(&v11, a1, a2);
  (*(a2 + 48))(&v10, a1, a2);
  Gradient.init(stops:)();
  LinearGradient.init(gradient:startPoint:endPoint:)();
  v6 = *(a2 + 32);
  v6(a1, a2);
  v6(a1, a2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v7 = v15;
  *(a3 + 32) = v14;
  *(a3 + 48) = v7;
  *(a3 + 64) = v16;
  *(a3 + 80) = v17;
  result = *&v12;
  v9 = v13;
  *a3 = v12;
  *(a3 + 16) = v9;
  return result;
}

uint64_t GlowModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = type metadata accessor for RoundedCornerStyle();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGMR) + 36));
  v13 = type metadata accessor for RoundedRectangle();
  v14 = enum case for RoundedCornerStyle.continuous(_:);
  v15 = *(v9 + 104);
  v15(v12 + *(v13 + 20), enum case for RoundedCornerStyle.continuous(_:), v8);
  *v12 = a4;
  v12[1] = a4;
  *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)) = 256;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB004GlowD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB004GlowD0VGMR);
  v17 = *(*(v16 - 8) + 16);
  v46 = a2;
  v17(a2, a1, v16);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMR) + 36));
  v19 = v50;
  *v18 = v49;
  v18[1] = v19;
  v18[2] = v51;
  v20 = static Alignment.center.getter();
  v44 = v21;
  v45 = v20;
  v15(v11, v14, v8);
  Path.init(roundedRect:cornerRadius:style:)();
  v23 = v52;
  v22 = v53;
  v24 = v54;
  v25 = v55;
  LOBYTE(a2) = v56;
  v26 = static Color.white.getter();
  v43 = v26;
  v27 = static Color.clear.getter();
  static Color.white.getter();
  v28 = Color.opacity(_:)();

  *&v57 = v23;
  *(&v57 + 1) = v22;
  *&v58 = v24;
  *(&v58 + 1) = v25;
  LOBYTE(v59) = a2;
  *(&v59 + 1) = v48[0];
  DWORD1(v59) = *(v48 + 3);
  *(&v59 + 1) = a3;
  v60 = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  v42 = _Q0;
  v61 = _Q0;
  *&v62 = v26;
  *(&v62 + 1) = v27;
  v34 = v44;
  v35 = v45;
  *&v63 = v28;
  *(&v63 + 1) = v45;
  v64 = v44;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGAA08_OverlayF0VyACyAF06StrokeE0VAF012GradientMaskF0VyAH06StaticR10Properties33_D2284C9348FF36AA381FDC545CBE5EACLLVGGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGAA08_OverlayF0VyACyAF06StrokeE0VAF012GradientMaskF0VyAH06StaticR10Properties33_D2284C9348FF36AA381FDC545CBE5EACLLVGGGGMR);
  v37 = v46 + *(v36 + 36);
  v38 = v62;
  *(v37 + 64) = v61;
  *(v37 + 80) = v38;
  *(v37 + 96) = v63;
  *(v37 + 112) = v64;
  v39 = v58;
  *v37 = v57;
  *(v37 + 16) = v39;
  v40 = v60;
  *(v37 + 32) = v59;
  *(v37 + 48) = v40;
  v65[0] = v23;
  v65[1] = v22;
  v65[2] = v24;
  v65[3] = v25;
  v66 = a2;
  *&v67[3] = *(v48 + 3);
  *v67 = v48[0];
  v68 = a3;
  v69 = 0;
  v70 = 0;
  v71 = v42;
  v72 = v43;
  v73 = v27;
  v74 = v28;
  v75 = v35;
  v76 = v34;
  outlined init with copy of TaskPriority?(&v57, &v47, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy09MusicCoreB010StrokeViewVAF012GradientMaskD0VyAF04GlowD0V06StaticK10Properties33_D2284C9348FF36AA381FDC545CBE5EACLLVGGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy09MusicCoreB010StrokeViewVAF012GradientMaskD0VyAF04GlowD0V06StaticK10Properties33_D2284C9348FF36AA381FDC545CBE5EACLLVGGGMR);
  return outlined destroy of TaskPriority?(v65, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy09MusicCoreB010StrokeViewVAF012GradientMaskD0VyAF04GlowD0V06StaticK10Properties33_D2284C9348FF36AA381FDC545CBE5EACLLVGGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy09MusicCoreB010StrokeViewVAF012GradientMaskD0VyAF04GlowD0V06StaticK10Properties33_D2284C9348FF36AA381FDC545CBE5EACLLVGGGMR);
}

__n128 _s11MusicCoreUI8GlowViewC24StaticGradientProperties33_D2284C9348FF36AA381FDC545CBE5EACLLVAA0gH0A2aGP10startPoint0Q0QzvgTW_0@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

__n128 _s11MusicCoreUI8GlowViewC24StaticGradientProperties33_D2284C9348FF36AA381FDC545CBE5EACLLVAA0gH0A2aGP8endPoint0Q0QzvgTW_0@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GlowModifier.StaticGradientProperties(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return specialized static GlowModifier.StaticGradientProperties.__derived_struct_equals(_:_:)(v7, v8) & 1;
}

uint64_t closure #1 in AnimatedGlowModifier.body(content:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = type metadata accessor for RoundedCornerStyle();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA018PlaceholderContentC0VyxG_qd__tYbcqd_2_qd__ct0G0Qyd_2_Rsd__SQRd_0_AaBRd_1_AA9KeyframesRd_2_r2_lFQOy09MusicCoreB006StrokeC0V_AO20AnimatedGlowModifierV0Q18GradientPropertiesVSbAA08ModifiedL0VyAJyAQGAO0t4MaskS0VyAUGGAA13KeyframeTrackVyAUSdAA0xyL7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tALQyd__RszAA0xyL0Rd__AAA9_Rd_0_ALQyd_0_A8_RSr0_lFZQOySd_AA04MoveX0VySdGAA06SpringX0VySdGQo_GQo_Md, &_s7SwiftUI4ViewPAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA018PlaceholderContentC0VyxG_qd__tYbcqd_2_qd__ct0G0Qyd_2_Rsd__SQRd_0_AaBRd_1_AA9KeyframesRd_2_r2_lFQOy09MusicCoreB006StrokeC0V_AO20AnimatedGlowModifierV0Q18GradientPropertiesVSbAA08ModifiedL0VyAJyAQGAO0t4MaskS0VyAUGGAA13KeyframeTrackVyAUSdAA0xyL7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tALQyd__RszAA0xyL0Rd__AAA9_Rd_0_ALQyd_0_A8_RSr0_lFZQOySd_AA04MoveX0VySdGAA06SpringX0VySdGQo_GQo_MR);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = __chkstk_darwin();
  v24 = &v24 - v9;
  v10 = *a1;
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = *(v4 + 104);
  v12(v6, enum case for RoundedCornerStyle.continuous(_:), v3, v8);
  Path.init(roundedRect:cornerRadius:style:)();
  v36 = v39[0];
  v37 = v39[1];
  v38 = v40;
  (v12)(v6, v11, v3);
  Path.init(roundedRect:cornerRadius:style:)();
  v13 = static Color.white.getter();
  v14 = static Color.clear.getter();
  static Color.white.getter();
  v15 = Color.opacity(_:)();

  v44[0] = v41;
  v44[1] = v42;
  v45 = v43;
  v28 = v41;
  v29 = v42;
  LOBYTE(v30) = v43;
  v46 = 0x3FF0000000000000;
  v47 = 0;
  v48 = 0;
  v49 = 0x3FF0000000000000;
  v50 = 0;
  v51 = 0;
  outlined init with copy of Path.Storage(v44, v33);
  Path.addPath(_:transform:)();
  outlined destroy of Path(&v41);
  *&v33[0] = 0;
  *(v33 + 8) = v28;
  *(&v33[1] + 8) = v29;
  BYTE8(v33[2]) = v30;
  *(&v33[2] + 9) = v52[0];
  HIDWORD(v33[2]) = *(v52 + 3);
  *&v34 = v10;
  *(&v34 + 1) = v13;
  *&v35 = v14;
  *(&v35 + 1) = v15;
  v28 = *(a1 + 4);
  LOBYTE(v29) = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.wrappedValue.getter();
  v16 = swift_allocObject();
  v17 = *(a1 + 5);
  v16[5] = *(a1 + 4);
  v16[6] = v17;
  *(v16 + 105) = *(a1 + 89);
  v18 = *(a1 + 1);
  v16[1] = *a1;
  v16[2] = v18;
  v19 = *(a1 + 3);
  v16[3] = *(a1 + 2);
  v16[4] = v19;
  outlined init with copy of AnimatedGlowModifier(a1, &v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy09MusicCoreB006StrokeF0VGAF20GradientMaskModifierVyAF012AnimatedGlowL0V0mJ10PropertiesVGGMd, &_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy09MusicCoreB006StrokeF0VGAF20GradientMaskModifierVyAF012AnimatedGlowL0V0mJ10PropertiesVGGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13KeyframeTrackVy09MusicCoreB020AnimatedGlowModifierV0G18GradientPropertiesVSdAA0cD14ContentBuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_t5ValueQyd__RszAA0cdL0Rd__AaPRd_0_ANQyd_0_AORSr0_lFZQOySd_AA04MoveC0VySdGAA06SpringC0VySdGQo_GMd, &_s7SwiftUI13KeyframeTrackVy09MusicCoreB020AnimatedGlowModifierV0G18GradientPropertiesVSdAA0cD14ContentBuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_t5ValueQyd__RszAA0cdL0Rd__AaPRd_0_ANQyd_0_AORSr0_lFZQOySd_AA04MoveC0VySdGAA06SpringC0VySdGQo_GMR);
  lazy protocol witness table accessor for type StrokeView and conformance StrokeView();
  lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<StrokeView>, GradientMaskModifier<AnimatedGlowModifier.AnimatedGradientProperties>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type KeyframeTrack<AnimatedGlowModifier.AnimatedGradientProperties, Double, <<opaque return type of static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0> and conformance KeyframeTrack<A, B, C>, &_s7SwiftUI13KeyframeTrackVy09MusicCoreB020AnimatedGlowModifierV0G18GradientPropertiesVSdAA0cD14ContentBuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_t5ValueQyd__RszAA0cdL0Rd__AaPRd_0_ANQyd_0_AORSr0_lFZQOySd_AA04MoveC0VySdGAA06SpringC0VySdGQo_GMd, &_s7SwiftUI13KeyframeTrackVy09MusicCoreB020AnimatedGlowModifierV0G18GradientPropertiesVSdAA0cD14ContentBuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_t5ValueQyd__RszAA0cdL0Rd__AaPRd_0_ANQyd_0_AORSr0_lFZQOySd_AA04MoveC0VySdGAA06SpringC0VySdGQo_GMR, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v20 = v24;
  View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)();

  v30 = v33[2];
  v31 = v34;
  v32 = v35;
  v28 = v33[0];
  v29 = v33[1];
  outlined destroy of AnimatedGlowModifier.AnimatedGradientProperties(&v28);
  outlined destroy of Path(v39);
  v33[0] = *(a1 + 11);
  LOBYTE(v33[1]) = *(a1 + 104);
  Binding.wrappedValue.getter();
  if (v36)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = 1.0;
  }

  v22 = v27;
  (*(v25 + 32))(v27, v20, v26);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA011PlaceholderdE0VyxG_qd__tYbcqd_2_qd__ct0I0Qyd_2_Rsd__SQRd_0_AaDRd_1_AA9KeyframesRd_2_r2_lFQOy09MusicCoreB006StrokeE0V_AQ20AnimatedGlowModifierV0R18GradientPropertiesVSbACyALyASGAQ0u4MaskT0VyAWGGAA13KeyframeTrackVyAWSdAA0xyD7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tANQyd__RszAA0xyD0Rd__AAA9_Rd_0_ANQyd_0_A8_RSr0_lFZQOySd_AA04MoveX0VySdGAA06SpringX0VySdGQo_GQo_AA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA011PlaceholderdE0VyxG_qd__tYbcqd_2_qd__ct0I0Qyd_2_Rsd__SQRd_0_AaDRd_1_AA9KeyframesRd_2_r2_lFQOy09MusicCoreB006StrokeE0V_AQ20AnimatedGlowModifierV0R18GradientPropertiesVSbACyALyASGAQ0u4MaskT0VyAWGGAA13KeyframeTrackVyAWSdAA0xyD7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tANQyd__RszAA0xyD0Rd__AAA9_Rd_0_ANQyd_0_A8_RSr0_lFZQOySd_AA04MoveX0VySdGAA06SpringX0VySdGQo_GQo_AA14_OpacityEffectVGMR);
  *(v22 + *(result + 36)) = v21;
  return result;
}

uint64_t closure #1 in closure #1 in AnimatedGlowModifier.body(content:)@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[3];
  v14[2] = a2[2];
  v14[3] = v6;
  v14[4] = a2[4];
  v7 = a2[1];
  v14[0] = *a2;
  v14[1] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI22PlaceholderContentViewVy09MusicCoreB006StrokeE0VGMd, &_s7SwiftUI22PlaceholderContentViewVy09MusicCoreB006StrokeE0VGMR);
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  v9 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy09MusicCoreB006StrokeF0VGAF20GradientMaskModifierVyAF012AnimatedGlowL0V0mJ10PropertiesVGGMd, &_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy09MusicCoreB006StrokeF0VGAF20GradientMaskModifierVyAF012AnimatedGlowL0V0mJ10PropertiesVGGMR) + 36));
  v10 = a2[3];
  v9[2] = a2[2];
  v9[3] = v10;
  v9[4] = a2[4];
  v11 = a2[1];
  *v9 = *a2;
  v9[1] = v11;
  return outlined init with copy of AnimatedGlowModifier.AnimatedGradientProperties(v14, &v13);
}

uint64_t closure #2 in closure #1 in AnimatedGlowModifier.body(content:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13KeyframeTrackVy09MusicCoreB020AnimatedGlowModifierV0G18GradientPropertiesVSdAA0cD14ContentBuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_t5ValueQyd__RszAA0cdL0Rd__AaPRd_0_ANQyd_0_AORSr0_lFZQOySd_AA04MoveC0VySdGAA06SpringC0VySdGQo_GMd, &_s7SwiftUI13KeyframeTrackVy09MusicCoreB020AnimatedGlowModifierV0G18GradientPropertiesVSdAA0cD14ContentBuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_t5ValueQyd__RszAA0cdL0Rd__AaPRd_0_ANQyd_0_AORSr0_lFZQOySd_AA04MoveC0VySdGAA06SpringC0VySdGQo_GMR);
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = v15 - v7;
  v15[1] = swift_getKeyPath();
  v18 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI27KeyframeTrackContentBuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_t5ValueQyd__RszAA0cdE0Rd__AaIRd_0_AGQyd_0_AHRSr0_lFZQOySd_AA04MoveC0VySdGAA06SpringC0VySdGQo_Md, &_s7SwiftUI27KeyframeTrackContentBuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_t5ValueQyd__RszAA0cdE0Rd__AaIRd_0_AGQyd_0_AHRSr0_lFZQOySd_AA04MoveC0VySdGAA06SpringC0VySdGQo_MR);
  v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI12MoveKeyframeVySdGMd, &_s7SwiftUI12MoveKeyframeVySdGMR);
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI14SpringKeyframeVySdGMd, &_s7SwiftUI14SpringKeyframeVySdGMR);
  v10 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type MoveKeyframe<Double> and conformance MoveKeyframe<A>, &_s7SwiftUI12MoveKeyframeVySdGMd, &_s7SwiftUI12MoveKeyframeVySdGMR, &protocol conformance descriptor for MoveKeyframe<A>);
  v11 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type SpringKeyframe<Double> and conformance SpringKeyframe<A>, &_s7SwiftUI14SpringKeyframeVySdGMd, &_s7SwiftUI14SpringKeyframeVySdGMR, &protocol conformance descriptor for SpringKeyframe<A>);
  v19 = &type metadata for Double;
  v20 = v8;
  v21 = v9;
  v22 = v10;
  v23 = v11;
  swift_getOpaqueTypeConformance2();
  KeyframeTrack.init(_:content:)();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type KeyframeTrack<AnimatedGlowModifier.AnimatedGradientProperties, Double, <<opaque return type of static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)>>.0> and conformance KeyframeTrack<A, B, C>, &_s7SwiftUI13KeyframeTrackVy09MusicCoreB020AnimatedGlowModifierV0G18GradientPropertiesVSdAA0cD14ContentBuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_t5ValueQyd__RszAA0cdL0Rd__AaPRd_0_ANQyd_0_AORSr0_lFZQOySd_AA04MoveC0VySdGAA06SpringC0VySdGQo_GMd, &_s7SwiftUI13KeyframeTrackVy09MusicCoreB020AnimatedGlowModifierV0G18GradientPropertiesVSdAA0cD14ContentBuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_t5ValueQyd__RszAA0cdL0Rd__AaPRd_0_ANQyd_0_AORSr0_lFZQOySd_AA04MoveC0VySdGAA06SpringC0VySdGQo_GMR, &protocol conformance descriptor for KeyframeTrack<A, B, C>);
  v12 = v16;
  static KeyframesBuilder.buildExpression<A>(_:)();
  v13 = *(v4 + 8);
  v13(v6, v3);
  static KeyframesBuilder.buildPartialBlock<A>(first:)();
  static KeyframesBuilder.buildFinalResult<A>(_:)();
  v13(v6, v3);
  return (v13)(v12, v3);
}

uint64_t closure #1 in closure #2 in closure #1 in AnimatedGlowModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  type metadata accessor for Spring();
  __chkstk_darwin();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14SpringKeyframeVySdGMd, &_s7SwiftUI14SpringKeyframeVySdGMR);
  v4 = *(v3 - 8);
  v26 = v3;
  v27 = v4;
  __chkstk_darwin();
  v24 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v25 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12MoveKeyframeVySdGMd, &_s7SwiftUI12MoveKeyframeVySdGMR);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v20 - v11;
  v29 = *(a1 + 16);
  v30 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySdGMd, &_s7SwiftUI7BindingVySdGMR);
  Binding.wrappedValue.getter();
  MoveKeyframe.init(_:)();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type MoveKeyframe<Double> and conformance MoveKeyframe<A>, &_s7SwiftUI12MoveKeyframeVySdGMd, &_s7SwiftUI12MoveKeyframeVySdGMR, &protocol conformance descriptor for MoveKeyframe<A>);
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v12 = *(v8 + 8);
  v22 = v8 + 8;
  v23 = v12;
  v12(v10, v7);
  v29 = *(a1 + 40);
  v30 = *(a1 + 56);
  Binding.wrappedValue.getter();
  Spring.init(mass:stiffness:damping:allowOverDamping:)();
  *&v29 = 0;
  BYTE8(v29) = 0;
  v13 = v24;
  SpringKeyframe.init(_:duration:spring:startVelocity:)();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type SpringKeyframe<Double> and conformance SpringKeyframe<A>, &_s7SwiftUI14SpringKeyframeVySdGMd, &_s7SwiftUI14SpringKeyframeVySdGMR, &protocol conformance descriptor for SpringKeyframe<A>);
  v15 = v25;
  v14 = v26;
  static KeyframeTrackContentBuilder.buildExpression<A>(_:)();
  v16 = *(v27 + 8);
  v16(v13, v14);
  v17 = v21;
  static KeyframeTrackContentBuilder.buildPartialBlock<A>(first:)();
  static KeyframeTrackContentBuilder.buildPartialBlock<A, B>(accumulated:next:)();
  v18 = v23;
  v23(v10, v7);
  v16(v15, v14);
  return v18(v17, v7);
}

double protocol witness for GradientProperties.startPoint.getter in conformance AnimatedGlowModifier.AnimatedGradientProperties@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v15 = *(v1 + 8);
  v16 = v4;
  v17 = *(v1 + 40);
  v5 = *(v1 + 48);
  fmod(v3, 360.0);
  Path.trimmedPath(from:to:)();
  *&v6 = COERCE_DOUBLE(Path.currentPoint.getter());
  v8 = v7;
  v10 = v9;
  outlined destroy of Path(v14);
  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result = v11 / v5;
  *a1 = result;
  a1[1] = v12 / v5;
  return result;
}

double protocol witness for GradientProperties.endPoint.getter in conformance AnimatedGlowModifier.AnimatedGradientProperties@<D0>(double *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  v15 = *(v1 + 8);
  v16 = v4;
  v17 = *(v1 + 40);
  v5 = *(v1 + 48);
  fmod(v3, 360.0);
  Path.trimmedPath(from:to:)();
  *&v6 = COERCE_DOUBLE(Path.currentPoint.getter());
  v8 = v7;
  v10 = v9;
  outlined destroy of Path(v14);
  v11 = *&v6;
  v12 = v8;
  if (v10)
  {
    v11 = 0.0;
    v12 = 0.0;
  }

  result = v11 / v5;
  *a1 = result;
  a1[1] = v12 / v5;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AnimatedGlowModifier.AnimatedGradientProperties(_OWORD *a1, __int128 *a2)
{
  v2 = a1[3];
  v8[2] = a1[2];
  v8[3] = v2;
  v3 = a1[4];
  v4 = a1[1];
  v8[0] = *a1;
  v8[1] = v4;
  v5 = a2[3];
  v9[2] = a2[2];
  v9[3] = v5;
  v9[4] = a2[4];
  v6 = *a2;
  v9[1] = a2[1];
  v8[4] = v3;
  v9[0] = v6;
  return specialized static AnimatedGlowModifier.AnimatedGradientProperties.__derived_struct_equals(_:_:)(v8, v9) & 1;
}

uint64_t protocol witness for ViewModifier.body(content:) in conformance AnimatedGlowModifier@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[5];
  v24[4] = v2[4];
  v25[0] = v5;
  *(v25 + 9) = *(v2 + 89);
  v6 = v2[1];
  v24[0] = *v2;
  v24[1] = v6;
  v7 = v2[3];
  v24[2] = v2[2];
  v24[3] = v7;
  v8 = *(&v24[0] + 1);
  v9 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGMR) + 36));
  v10 = *(type metadata accessor for RoundedRectangle() + 20);
  v11 = enum case for RoundedCornerStyle.continuous(_:);
  v12 = type metadata accessor for RoundedCornerStyle();
  (*(*(v12 - 8) + 104))(&v9[v10], v11, v12);
  *v9 = *(&v24[0] + 1);
  *(v9 + 1) = v8;
  *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR) + 36)] = 256;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0012AnimatedGlowD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0012AnimatedGlowD0VGMR);
  (*(*(v13 - 8) + 16))(a2, a1, v13);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v14 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMR) + 36));
  *v14 = v21;
  v14[1] = v22;
  v14[2] = v23;
  v15 = static Alignment.center.getter();
  v17 = v16;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGAA08_OverlayF0VyACyAA0E0PAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA011PlaceholderdE0VyxG_qd__tYbcqd_2_qd__ct0U0Qyd_2_Rsd__SQRd_0_AaURd_1_AA9KeyframesRd_2_r2_lFQOyAF06StrokeE0V_AH0I18GradientPropertiesVSbACyA1_yA7_GAF012GradientMaskF0VyA9_GGAA13KeyframeTrackVyA9_SdAA013KeyframeTrackD7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tA3_Qyd__RszAA013KeyframeTrackD0Rd__AAA23_Rd_0_A3_Qyd_0_A22_RSr0_lFZQOySd_AA12MoveKeyframeVySdGAA14SpringKeyframeVySdGQo_GQo_AA08_OpacityL0VGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGAA08_OverlayF0VyACyAA0E0PAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA011PlaceholderdE0VyxG_qd__tYbcqd_2_qd__ct0U0Qyd_2_Rsd__SQRd_0_AaURd_1_AA9KeyframesRd_2_r2_lFQOyAF06StrokeE0V_AH0I18GradientPropertiesVSbACyA1_yA7_GAF012GradientMaskF0VyA9_GGAA13KeyframeTrackVyA9_SdAA013KeyframeTrackD7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tA3_Qyd__RszAA013KeyframeTrackD0Rd__AAA23_Rd_0_A3_Qyd_0_A22_RSr0_lFZQOySd_AA12MoveKeyframeVySdGAA14SpringKeyframeVySdGQo_GQo_AA08_OpacityL0VGGGMR) + 36);
  closure #1 in AnimatedGlowModifier.body(content:)(v24, v18);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA4ViewPAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA011PlaceholderfG0VyxG_qd__tYbcqd_2_qd__ct0K0Qyd_2_Rsd__SQRd_0_AaFRd_1_AA9KeyframesRd_2_r2_lFQOy09MusicCoreB006StrokeG0V_AS012AnimatedGlowD0V0T18GradientPropertiesVSbAEyANyAUGAS0v4MaskD0VyAYGGAA13KeyframeTrackVyAYSdAA0yzF7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tAPQyd__RszAA0yzF0Rd__AAA11_Rd_0_APQyd_0_A10_RSr0_lFZQOySd_AA04MoveY0VySdGAA06SpringY0VySdGQo_GQo_AA14_OpacityEffectVGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA4ViewPAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA011PlaceholderfG0VyxG_qd__tYbcqd_2_qd__ct0K0Qyd_2_Rsd__SQRd_0_AaFRd_1_AA9KeyframesRd_2_r2_lFQOy09MusicCoreB006StrokeG0V_AS012AnimatedGlowD0V0T18GradientPropertiesVSbAEyANyAUGAS0v4MaskD0VyAYGGAA13KeyframeTrackVyAYSdAA0yzF7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tAPQyd__RszAA0yzF0Rd__AAA11_Rd_0_APQyd_0_A10_RSr0_lFZQOySd_AA04MoveY0VySdGAA06SpringY0VySdGQo_GQo_AA14_OpacityEffectVGGMR);
  v20 = (v18 + *(result + 36));
  *v20 = v15;
  v20[1] = v17;
  return result;
}

uint64_t View.animatedGlow(length:cornerRadius:initialRotation:rotation:animate:isHidden:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16)
{
  *&v17 = a9;
  *(&v17 + 1) = a10;
  *&v18 = a1;
  *(&v18 + 1) = a2;
  *&v19 = a11;
  *(&v19 + 1) = a3;
  *&v20 = a4;
  *(&v20 + 1) = a12;
  *&v21 = a5;
  *(&v21 + 1) = a6;
  v22[0] = a7;
  *&v22[8] = a8;
  *&v22[16] = a13;
  v22[24] = a14;

  View.modifier<A>(_:)();
  v23[4] = v21;
  v24[0] = *v22;
  *(v24 + 9) = *&v22[9];
  v23[0] = v17;
  v23[1] = v18;
  v23[2] = v19;
  v23[3] = v20;
  return outlined destroy of AnimatedGlowModifier(v23);
}

void GlowView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer] = 0;
  v31.receiver = v4;
  v31.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v31, "initWithFrame:", a1, a2, a3, a4);
  GlowView.createBlur(width:radius:)(0.5);
  GlowView.createBlur(width:radius:)(1.0);
  GlowView.createBlur(width:radius:)(4.0);
  v11 = [objc_allocWithZone(CAGradientLayer) init];
  v12 = OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer;
  v13 = *&v10[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer];
  *&v10[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer] = v11;
  v14 = v11;

  if (!v14)
  {
    __break(1u);
    goto LABEL_6;
  }

  GlowView.properties.getter(v32);
  outlined destroy of GlowView.StaticGradientProperties(v32);
  [v14 setStartPoint:{v33, v34}];

  v15 = *&v10[v12];
  if (!v15)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v16 = v15;
  GlowView.properties.getter(v35);
  outlined destroy of GlowView.StaticGradientProperties(v35);
  [v16 setEndPoint:{v36, v37}];

  v17 = *&v10[v12];
  if (v17)
  {
    v18 = v17;
    GlowView.properties.getter(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004F3060;
    v20 = v39;
    *(inited + 32) = v39;
    *(inited + 40) = v20;
    v21 = v40;
    *(inited + 48) = v40;
    *(inited + 56) = v21;
    v22 = v41;
    *(inited + 64) = v41;
    *(inited + 72) = v22;
    v23 = v20;
    v24 = v21;
    v25 = v22;
    v26 = v23;
    v27 = v24;
    v28 = v25;
    outlined destroy of GlowView.StaticGradientProperties(v38);
    specialized _arrayForceCast<A, B>(_:)(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v18 setColors:isa];

    v30 = [v10 layer];
    [v30 setMask:*&v10[v12]];

    return;
  }

LABEL_7:
  __break(1u);
}

void GlowView.createBlur(width:radius:)(double a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(UIView) init];
  v5 = UIView.forAutolayout.getter();

  v6 = [v5 layer];
  [v6 setBorderWidth:a1];

  v7 = [v5 layer];
  v8 = [objc_opt_self() whiteColor];
  v9 = [v8 CGColor];

  [v7 setBorderColor:v9];
  v10 = [v5 layer];
  [v10 setCornerCurve:kCACornerCurveContinuous];

  v11 = [objc_allocWithZone(CAFilter) initWithType:kCAFilterGaussianBlur];
  isa = Double._bridgeToObjectiveC()().super.super.isa;
  [v11 setValue:isa forKey:kCAFilterInputRadius];

  v13 = [v5 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd_0, &_ss23_ContiguousArrayStorageCyypGMR_0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1004F2400;
  *(v14 + 56) = type metadata accessor for UIAction(0, &lazy cache variable for type metadata for CAFilter, CAFilter_ptr);
  *(v14 + 32) = v11;
  v15 = v11;
  v16 = Array._bridgeToObjectiveC()().super.isa;

  [v13 setFilters:v16];

  v17 = [v5 layer];
  [v17 setCompositingFilter:kCAFilterPlusL];

  [v2 addSubview:v5];
  v18 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1004F3040;
  v20 = [v5 topAnchor];
  v21 = [v2 topAnchor];
  v22 = a1 * -0.5;
  v23 = [v20 constraintEqualToAnchor:v21 constant:a1 * -0.5];

  *(v19 + 32) = v23;
  v24 = [v5 bottomAnchor];
  v25 = [v2 bottomAnchor];
  v26 = a1 * 0.5;
  v27 = [v24 constraintEqualToAnchor:v25 constant:v26];

  *(v19 + 40) = v27;
  v28 = [v5 leadingAnchor];
  v29 = [v2 leadingAnchor];
  v30 = [v28 constraintEqualToAnchor:v29 constant:v22];

  *(v19 + 48) = v30;
  v31 = [v5 trailingAnchor];
  v32 = [v2 trailingAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:v26];

  *(v19 + 56) = v33;
  type metadata accessor for UIAction(0, &lazy cache variable for type metadata for NSLayoutConstraint, NSLayoutConstraint_ptr);
  v34 = Array._bridgeToObjectiveC()().super.isa;

  [v18 activateConstraints:v34];
}

__n128 GlowView.properties.getter@<Q0>(uint64_t a1@<X8>)
{
  [v1 bounds];
  Width = CGRectGetWidth(v17);
  v4 = objc_opt_self();
  v5 = [v4 whiteColor];
  v6 = [v5 CGColor];

  v7 = [v4 clearColor];
  v8 = [v7 CGColor];

  v9 = [v4 whiteColor];
  v10 = [v9 colorWithAlphaComponent:0.4];

  v11 = [v10 CGColor];
  *a1 = Width;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 24) = result;
  *(a1 + 40) = v6;
  *(a1 + 48) = v8;
  *(a1 + 56) = v11;
  return result;
}

Swift::Void __swiftcall GlowView.layoutSubviews()()
{
  v19.receiver = v0;
  v19.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v19, "layoutSubviews");
  v1 = OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer;
  v2 = *&v0[OBJC_IVAR____TtC11MusicCoreUI8GlowView_gradientLayer];
  if (!v2)
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = v2;
  [v0 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  GlowView.properties.getter(v20);
  outlined destroy of GlowView.StaticGradientProperties(v20);
  GlowView.properties.getter(v21);
  outlined destroy of GlowView.StaticGradientProperties(v21);
  v23.origin.x = v5;
  v23.origin.y = v7;
  v23.size.width = v9;
  v23.size.height = v11;
  v24 = CGRectInset(v23, -30.0, -30.0);
  [v3 setFrame:{v24.origin.x, v24.origin.y, v24.size.width, v24.size.height}];

  v12 = *&v0[v1];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v13 = v12;
  GlowView.properties.getter(v22);
  specialized GradientProperties.locations.getter();
  v15 = v14;
  outlined destroy of GlowView.StaticGradientProperties(v22);
  v16 = *(v15 + 16);
  if (v16)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0, NSNumber_ptr);
    v17 = 32;
    do
    {
      NSNumber.init(floatLiteral:)(*(v15 + v17));
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v17 += 8;
      --v16;
    }

    while (v16);
  }

  type metadata accessor for UIAction(0, &_sSo8NSNumberCML_0, NSNumber_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v13 setLocations:isa];
}

uint64_t GlowView.updateCorners(_:)(uint64_t a1)
{
  v2 = type metadata accessor for UIView.Corner.Radius();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  __chkstk_darwin();
  v7 = &v24 - v6;
  v8 = type metadata accessor for UIView.Corner();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of TaskPriority?(a1, v7, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return outlined destroy of TaskPriority?(v7, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMd, &_sSo6UIViewC11MediaCoreUIE6CornerVSgMR);
  }

  (*(v9 + 32))(v11, v7, v8);
  UIView.Corner.radius.getter();
  v13 = v27;
  [v27 bounds];
  UIView.Corner.Radius.value(in:)();
  v15 = v14;
  (*(v3 + 8))(v5, v2);
  v16 = [v13 subviews];
  type metadata accessor for UIAction(0, &_sSo6UIViewCML_0, UIView_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = v9;
  v26 = v8;
  v24 = v11;
  if (v17 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v19 = 0;
    while (1)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v20 = *(v17 + 8 * v19 + 32);
      }

      v21 = v20;
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v23 = [v20 layer];
      [v23 setCornerRadius:v15];

      ++v19;
      if (v22 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return (*(v25 + 8))(v24, v26);
}

id protocol witness for GradientProperties.white.getter in conformance GlowView.StaticGradientProperties@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = v2;
  return v2;
}

id protocol witness for GradientProperties.clear.getter in conformance GlowView.StaticGradientProperties@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 48);
  *a1 = v2;
  return v2;
}

id protocol witness for GradientProperties.white40.getter in conformance GlowView.StaticGradientProperties@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = v2;
  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GlowView.StaticGradientProperties(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return specialized static GlowView.StaticGradientProperties.__derived_struct_equals(_:_:)(v7, v8) & 1;
}

unint64_t lazy protocol witness table accessor for type GlowModifier and conformance GlowModifier()
{
  result = lazy protocol witness table cache variable for type GlowModifier and conformance GlowModifier;
  if (!lazy protocol witness table cache variable for type GlowModifier and conformance GlowModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlowModifier and conformance GlowModifier);
  }

  return result;
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyx09MusicCoreB012GlowModifierVGAaBHPxAaBHD1__AgA0cI0HPyHCHCTm(void *a1, uint64_t a2, void (*a3)(void))
{
  type metadata accessor for ModifiedContent();
  a3();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type AnimatedGlowModifier and conformance AnimatedGlowModifier()
{
  result = lazy protocol witness table cache variable for type AnimatedGlowModifier and conformance AnimatedGlowModifier;
  if (!lazy protocol witness table cache variable for type AnimatedGlowModifier and conformance AnimatedGlowModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedGlowModifier and conformance AnimatedGlowModifier);
  }

  return result;
}

__n128 __swift_memcpy64_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AnimatedGlowModifier(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 105))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimatedGlowModifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GlowModifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlowModifier and conformance GlowModifier();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AnimatedGlowModifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnimatedGlowModifier and conformance AnimatedGlowModifier();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for GlowView.StaticGradientProperties(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlowView.StaticGradientProperties and conformance GlowView.StaticGradientProperties();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GlowView.StaticGradientProperties and conformance GlowView.StaticGradientProperties()
{
  result = lazy protocol witness table cache variable for type GlowView.StaticGradientProperties and conformance GlowView.StaticGradientProperties;
  if (!lazy protocol witness table cache variable for type GlowView.StaticGradientProperties and conformance GlowView.StaticGradientProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlowView.StaticGradientProperties and conformance GlowView.StaticGradientProperties);
  }

  return result;
}

uint64_t sub_1002F4978()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type StrokeView and conformance StrokeView()
{
  result = lazy protocol witness table cache variable for type StrokeView and conformance StrokeView;
  if (!lazy protocol witness table cache variable for type StrokeView and conformance StrokeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StrokeView and conformance StrokeView);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<PlaceholderContentView<StrokeView>, GradientMaskModifier<AnimatedGlowModifier.AnimatedGradientProperties>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<StrokeView>, GradientMaskModifier<AnimatedGlowModifier.AnimatedGradientProperties>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<StrokeView>, GradientMaskModifier<AnimatedGlowModifier.AnimatedGradientProperties>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy09MusicCoreB006StrokeF0VGAF20GradientMaskModifierVyAF012AnimatedGlowL0V0mJ10PropertiesVGGMd, &_s7SwiftUI15ModifiedContentVyAA011PlaceholderD4ViewVy09MusicCoreB006StrokeF0VGAF20GradientMaskModifierVyAF012AnimatedGlowL0V0mJ10PropertiesVGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type PlaceholderContentView<StrokeView> and conformance PlaceholderContentView<A>, &_s7SwiftUI22PlaceholderContentViewVy09MusicCoreB006StrokeE0VGMd, &_s7SwiftUI22PlaceholderContentViewVy09MusicCoreB006StrokeE0VGMR, &protocol conformance descriptor for PlaceholderContentView<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type GradientMaskModifier<AnimatedGlowModifier.AnimatedGradientProperties> and conformance GradientMaskModifier<A>, &_s11MusicCoreUI20GradientMaskModifierVyAA012AnimatedGlowF0V0gD10PropertiesVGMd, &_s11MusicCoreUI20GradientMaskModifierVyAA012AnimatedGlowF0V0gD10PropertiesVGMR, &protocol conformance descriptor for GradientMaskModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<PlaceholderContentView<StrokeView>, GradientMaskModifier<AnimatedGlowModifier.AnimatedGradientProperties>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t _ss29getContiguousArrayStorageType3fors01_bcD0CyxGmxm_tlF_0(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd_0, &_ss23_ContiguousArrayStorageCyyXlGMR_0);
  }

  else
  {

    return type metadata accessor for _ContiguousArrayStorage();
  }
}

uint64_t specialized static GlowModifier.StaticGradientProperties.__derived_struct_equals(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || (static UnitPoint.== infix(_:_:)() & 1) == 0 || (static UnitPoint.== infix(_:_:)() & 1) == 0 || (static Color.== infix(_:_:)() & 1) == 0 || (static Color.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Color.== infix(_:_:)();
}

uint64_t specialized static AnimatedGlowModifier.AnimatedGradientProperties.__derived_struct_equals(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || (static Path.== infix(_:_:)() & 1) == 0 || a1[6] != a2[6] || (static Color.== infix(_:_:)() & 1) == 0 || (static Color.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Color.== infix(_:_:)();
}

uint64_t specialized static GlowView.StaticGradientProperties.__derived_struct_equals(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2] && a1[3] == a2[3] && a1[4] == a2[4] && (_sSo10CGColorRefaMa_0(0), lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef(), (static _CFObject.== infix(_:_:)() & 1) != 0) && (static _CFObject.== infix(_:_:)() & 1) != 0)
  {
    return static _CFObject.== infix(_:_:)() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t lazy protocol witness table accessor for type CGColorRef and conformance CGColorRef()
{
  result = lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef;
  if (!lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef)
  {
    _sSo10CGColorRefaMa_0(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGColorRef and conformance CGColorRef);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GlowView.StaticGradientProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GlowView.StaticGradientProperties(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t type metadata completion function for GradientMaskModifier(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI4PathV7StorageO(uint64_t a1)
{
  if ((*(a1 + 32) & 7u) <= 5)
  {
    return *(a1 + 32) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy80_8_0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AnimatedGlowModifier.AnimatedGradientProperties(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnimatedGlowModifier.AnimatedGradientProperties(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StrokeView(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StrokeView(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGAA08_OverlayF0VyACyAF06StrokeE0VAF012GradientMaskF0VyAH06StaticR10Properties33_D2284C9348FF36AA381FDC545CBE5EACLLVGGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGAA08_OverlayF0VyACyAF06StrokeE0VAF012GradientMaskF0VyAH06StaticR10Properties33_D2284C9348FF36AA381FDC545CBE5EACLLVGGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy09MusicCoreB010StrokeViewVAF012GradientMaskD0VyAF04GlowD0V06StaticK10Properties33_D2284C9348FF36AA381FDC545CBE5EACLLVGGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVy09MusicCoreB010StrokeViewVAF012GradientMaskD0VyAF04GlowD0V06StaticK10Properties33_D2284C9348FF36AA381FDC545CBE5EACLLVGGGMR, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<StrokeView, GradientMaskModifier<GlowModifier.StaticGradientProperties>>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB004GlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<GlowModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB004GlowD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB004GlowD0VGMR, &protocol conformance descriptor for _ViewModifier_Content<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<<<opaque return type of View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)>>.0, _OpacityEffect>>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<<<opaque return type of View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)>>.0, _OpacityEffect>>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<<<opaque return type of View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)>>.0, _OpacityEffect>>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGAA08_OverlayF0VyACyAA0E0PAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA011PlaceholderdE0VyxG_qd__tYbcqd_2_qd__ct0U0Qyd_2_Rsd__SQRd_0_AaURd_1_AA9KeyframesRd_2_r2_lFQOyAF06StrokeE0V_AH0I18GradientPropertiesVSbACyA1_yA7_GAF012GradientMaskF0VyA9_GGAA13KeyframeTrackVyA9_SdAA013KeyframeTrackD7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tA3_Qyd__RszAA013KeyframeTrackD0Rd__AAA23_Rd_0_A3_Qyd_0_A22_RSr0_lFZQOySd_AA12MoveKeyframeVySdGAA14SpringKeyframeVySdGQo_GQo_AA08_OpacityL0VGGGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGAA08_OverlayF0VyACyAA0E0PAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA011PlaceholderdE0VyxG_qd__tYbcqd_2_qd__ct0U0Qyd_2_Rsd__SQRd_0_AaURd_1_AA9KeyframesRd_2_r2_lFQOyAF06StrokeE0V_AH0I18GradientPropertiesVSbACyA1_yA7_GAF012GradientMaskF0VyA9_GGAA13KeyframeTrackVyA9_SdAA013KeyframeTrackD7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tA3_Qyd__RszAA013KeyframeTrackD0Rd__AAA23_Rd_0_A3_Qyd_0_A22_RSr0_lFZQOySd_AA12MoveKeyframeVySdGAA14SpringKeyframeVySdGQo_GQo_AA08_OpacityL0VGGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(&lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout> and conformance <> ModifiedContent<A, B>, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGAA12_FrameLayoutVGMR, lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _OverlayModifier<ModifiedContent<<<opaque return type of View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)>>.0, _OpacityEffect>> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA4ViewPAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA011PlaceholderfG0VyxG_qd__tYbcqd_2_qd__ct0K0Qyd_2_Rsd__SQRd_0_AaFRd_1_AA9KeyframesRd_2_r2_lFQOy09MusicCoreB006StrokeG0V_AS012AnimatedGlowD0V0T18GradientPropertiesVSbAEyANyAUGAS0v4MaskD0VyAYGGAA13KeyframeTrackVyAYSdAA0yzF7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tAPQyd__RszAA0yzF0Rd__AAA11_Rd_0_APQyd_0_A10_RSr0_lFZQOySd_AA04MoveY0VySdGAA06SpringY0VySdGQo_GQo_AA14_OpacityEffectVGGMd, &_s7SwiftUI16_OverlayModifierVyAA15ModifiedContentVyAA4ViewPAAE16keyframeAnimator12initialValue7trigger7content9keyframesQrqd___qd_0_qd_1_AA011PlaceholderfG0VyxG_qd__tYbcqd_2_qd__ct0K0Qyd_2_Rsd__SQRd_0_AaFRd_1_AA9KeyframesRd_2_r2_lFQOy09MusicCoreB006StrokeG0V_AS012AnimatedGlowD0V0T18GradientPropertiesVSbAEyANyAUGAS0v4MaskD0VyAYGGAA13KeyframeTrackVyAYSdAA0yzF7BuilderV17buildPartialBlock11accumulated4nextQrqd___qd_0_tAPQyd__RszAA0yzF0Rd__AAA11_Rd_0_APQyd_0_A10_RSr0_lFZQOySd_AA04MoveY0VySdGAA06SpringY0VySdGQo_GQo_AA14_OpacityEffectVGGMR, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout>, _OverlayModifier<ModifiedContent<<<opaque return type of View.keyframeAnimator<A, B, C, D>(initialValue:trigger:content:keyframes:)>>.0, _OpacityEffect>>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<GlowModifier>, _ClipEffect<RoundedRectangle>>, _FrameLayout> and conformance <> ModifiedContent<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0012AnimatedGlowF0VGAA11_ClipEffectVyAA16RoundedRectangleVGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<AnimatedGlowModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0012AnimatedGlowD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0012AnimatedGlowD0VGMR, &protocol conformance descriptor for _ViewModifier_Content<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ClipEffect<RoundedRectangle> and conformance _ClipEffect<A>, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMd, &_s7SwiftUI11_ClipEffectVyAA16RoundedRectangleVGMR, &protocol conformance descriptor for _ClipEffect<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<AnimatedGlowModifier>, _ClipEffect<RoundedRectangle>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AnimatedGlowModifier.AnimatedGradientProperties(uint64_t a1)
{
  result = lazy protocol witness table accessor for type AnimatedGlowModifier.AnimatedGradientProperties and conformance AnimatedGlowModifier.AnimatedGradientProperties();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type AnimatedGlowModifier.AnimatedGradientProperties and conformance AnimatedGlowModifier.AnimatedGradientProperties()
{
  result = lazy protocol witness table cache variable for type AnimatedGlowModifier.AnimatedGradientProperties and conformance AnimatedGlowModifier.AnimatedGradientProperties;
  if (!lazy protocol witness table cache variable for type AnimatedGlowModifier.AnimatedGradientProperties and conformance AnimatedGlowModifier.AnimatedGradientProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnimatedGlowModifier.AnimatedGradientProperties and conformance AnimatedGlowModifier.AnimatedGradientProperties);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for GlowModifier.StaticGradientProperties(uint64_t a1)
{
  result = lazy protocol witness table accessor for type GlowModifier.StaticGradientProperties and conformance GlowModifier.StaticGradientProperties();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type GlowModifier.StaticGradientProperties and conformance GlowModifier.StaticGradientProperties()
{
  result = lazy protocol witness table cache variable for type GlowModifier.StaticGradientProperties and conformance GlowModifier.StaticGradientProperties;
  if (!lazy protocol witness table cache variable for type GlowModifier.StaticGradientProperties and conformance GlowModifier.StaticGradientProperties)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GlowModifier.StaticGradientProperties and conformance GlowModifier.StaticGradientProperties);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LinearGradient and conformance LinearGradient()
{
  result = lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient;
  if (!lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinearGradient and conformance LinearGradient);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>)>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>)>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>)>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2QtGGAA010_BlendModeL0VGMd, &_s7SwiftUI15ModifiedContentVyAA6ZStackVyAA9TupleViewVyACyAA06_ShapeG0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2QtGGAA010_BlendModeL0VGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ZStack<TupleView<(ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>)>> and conformance ZStack<A>, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2QtGGMd, &_s7SwiftUI6ZStackVyAA9TupleViewVyAA15ModifiedContentVyAA06_ShapeE0VyAA4PathVAA5ColorVGAA11_BlurEffectVG_A2QtGGMR, &protocol conformance descriptor for ZStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ZStack<TupleView<(ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>, ModifiedContent<_ShapeView<Path, Color>, _BlurEffect>)>>, _BlendModeEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_1002F5898(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for GradientMaskModifier(255, *a1, a1[1], a4);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI20_MaskAlignmentEffectVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGGMd, &_s7SwiftUI20_MaskAlignmentEffectVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGGMR);
  type metadata accessor for ModifiedContent();
  swift_getWitnessTable();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _MaskAlignmentEffect<ModifiedContent<LinearGradient, _FrameLayout>> and conformance _MaskAlignmentEffect<A>, &_s7SwiftUI20_MaskAlignmentEffectVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGGMd, &_s7SwiftUI20_MaskAlignmentEffectVyAA15ModifiedContentVyAA14LinearGradientVAA12_FrameLayoutVGGMR, &protocol conformance descriptor for _MaskAlignmentEffect<A>);
  return swift_getWitnessTable();
}

uint64_t HostedScenePhaseSupport.init(label:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIWindowSceneCSgMd, &_sSo13UIWindowSceneCSgMR);
  State.init(wrappedValue:)();
  type metadata accessor for HostedScenePhaseModel(0);
  swift_allocObject();
  HostedScenePhaseModel.init(label:)(a1, a2, a3);
  State.init(wrappedValue:)();
  return v7;
}

uint64_t property wrapper backing initializer of NoticePresentingResolverModifier.windowScene(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIWindowSceneCSgMd, &_sSo13UIWindowSceneCSgMR);
  State.init(wrappedValue:)();
  return v2;
}

uint64_t type metadata accessor for HostedScenePhaseModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for HostedScenePhaseModel;
  if (!type metadata singleton initialization cache for HostedScenePhaseModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t property wrapper backing initializer of HostedScenePhaseSupport.model(uint64_t a1)
{
  type metadata accessor for HostedScenePhaseModel(0);
  State.init(wrappedValue:)();
  return v2;
}

uint64_t HostedScenePhaseSupport.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = a2;
  v34 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGAA022_EnvironmentKeyWritingF0VyAA0jK0OGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGAA022_EnvironmentKeyWritingF0VyAA0jK0OGGMR);
  v31 = v11;
  __chkstk_darwin();
  v13 = &v30 - v12;
  v14 = static Alignment.center.getter();
  v16 = v15;
  v38 = a4;
  v39 = a5;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo13UIWindowSceneCSgGMd, &_s7SwiftUI5StateVySo13UIWindowSceneCSgGMR);
  State.projectedValue.getter();
  v30 = v36;
  v17 = v37;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB023HostedScenePhaseSupportVGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB023HostedScenePhaseSupportVGMR);
  (*(*(v18 - 8) + 16))(v13, a1, v18);
  v19 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGMR) + 36)];
  *v19 = v30;
  *(v19 + 2) = v17;
  *(v19 + 3) = v14;
  *(v19 + 4) = v16;
  KeyPath = swift_getKeyPath();
  *&v36 = a2;
  *(&v36 + 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy09MusicCoreB021HostedScenePhaseModel33_377CDC3E1DACA082F76DF92BE308CAF1LLCGMd, &_s7SwiftUI5StateVy09MusicCoreB021HostedScenePhaseModel33_377CDC3E1DACA082F76DF92BE308CAF1LLCGMR);
  State.wrappedValue.getter();
  v21 = v38;
  swift_getKeyPath();
  *&v36 = v21;
  lazy protocol witness table accessor for type HostedScenePhaseModel and conformance HostedScenePhaseModel(&lazy protocol witness table cache variable for type HostedScenePhaseModel and conformance HostedScenePhaseModel, type metadata accessor for HostedScenePhaseModel, &protocol conformance descriptor for HostedScenePhaseModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v22 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v23 = &v13[*(v11 + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10ScenePhaseOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10ScenePhaseOGMR) + 28);
  v25 = type metadata accessor for ScenePhase();
  (*(*(v25 - 8) + 16))(v23 + v24, &v21[v22], v25);

  *v23 = KeyPath;
  v38 = a4;
  v39 = a5;
  State.wrappedValue.getter();
  v26 = v35;
  v38 = v35;
  v27 = swift_allocObject();
  v27[2] = v32;
  v27[3] = a3;
  v27[4] = a4;
  v27[5] = a5;

  v28 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIWindowSceneCSgMd, &_sSo13UIWindowSceneCSgMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>>, _EnvironmentKeyWritingModifier<ScenePhase>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type UIWindowScene? and conformance <A> A?();
  View.onChange<A>(of:initial:_:)();

  return outlined destroy of TaskPriority?(v13, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGAA022_EnvironmentKeyWritingF0VyAA0jK0OGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGAA022_EnvironmentKeyWritingF0VyAA0jK0OGGMR);
}

uint64_t key path setter for EnvironmentValues.scenePhase : EnvironmentValues(uint64_t a1)
{
  type metadata accessor for ScenePhase();
  v2 = __chkstk_darwin();
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  return EnvironmentValues.scenePhase.setter();
}

void closure #2 in HostedScenePhaseSupport.body(content:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy09MusicCoreB021HostedScenePhaseModel33_377CDC3E1DACA082F76DF92BE308CAF1LLCGMd, &_s7SwiftUI5StateVy09MusicCoreB021HostedScenePhaseModel33_377CDC3E1DACA082F76DF92BE308CAF1LLCGMR);
  State.wrappedValue.getter();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  HostedScenePhaseModel.windowScene.didset(Strong);
}

double View.hostedScenePhaseSupport(label:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIWindowSceneCSgMd, &_sSo13UIWindowSceneCSgMR);
  State.init(wrappedValue:)();
  type metadata accessor for HostedScenePhaseModel(0);
  swift_allocObject();
  HostedScenePhaseModel.init(label:)(a1, a2, a3);
  State.init(wrappedValue:)();
  View.modifier<A>(_:)();

  return result;
}

uint64_t HostedScenePhaseModel.init(label:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v8 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  v9 = enum case for ScenePhase.inactive(_:);
  v10 = type metadata accessor for ScenePhase();
  (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  if (one-time initialization token for scenes != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.scenes);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136446210;
    v16 = StaticString.description.getter();
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v16, v17, &v20);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "[ScenePhaseSupport:%{public}s] Init", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
  }

  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = v5;
  return v4;
}

uint64_t HostedScenePhaseModel.scenePhase.setter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v9 = *(v5 + 16);
  v9(v7, v2 + v8, v4);
  lazy protocol witness table accessor for type HostedScenePhaseModel and conformance HostedScenePhaseModel(&lazy protocol witness table cache variable for type ScenePhase and conformance ScenePhase, &type metadata accessor for ScenePhase, &protocol conformance descriptor for ScenePhase);
  v13[0] = a1;
  LOBYTE(a1) = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (a1)
  {
    v9(v7, v13[0], v4);
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, v7, v4);
    swift_endAccess();
    HostedScenePhaseModel._scenePhase.didset();
    v10(v7, v4);
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v11 = v13[0];
    v13[-2] = v2;
    v13[-1] = v11;
    v13[1] = v2;
    lazy protocol witness table accessor for type HostedScenePhaseModel and conformance HostedScenePhaseModel(&lazy protocol witness table cache variable for type HostedScenePhaseModel and conformance HostedScenePhaseModel, type metadata accessor for HostedScenePhaseModel, &protocol conformance descriptor for HostedScenePhaseModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return (v10)(v13[0], v4);
}

uint64_t Logger.scenes.unsafeMutableAddressor()
{
  if (one-time initialization token for scenes != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static Logger.scenes);
}

uint64_t HostedScenePhaseModel.deinit()
{
  v1 = v0;
  if (one-time initialization token for scenes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.scenes);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20[0] = v6;
    *v5 = 136446210;
    v7 = StaticString.description.getter();
    v9 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v7, v8, v20);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[ScenePhaseSupport:%{public}s] Deallocated — Removing notifications", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = objc_opt_self();
    v13 = v10 + 32;

    do
    {
      outlined init with copy of Any(v13, v20);
      v14 = [v12 defaultCenter];
      __swift_project_boxed_opaque_existential_0Tm(v20, v20[3]);
      [v14 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      v13 += 32;
      --v11;
    }

    while (v11);
  }

  v15 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  v16 = type metadata accessor for ScenePhase();
  (*(*(v16 - 8) + 8))(v1 + v15, v16);
  swift_unknownObjectWeakDestroy();

  v17 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel___observationRegistrar;
  v18 = type metadata accessor for ObservationRegistrar();
  (*(*(v18 - 8) + 8))(v1 + v17, v18);
  return v1;
}

uint64_t HostedScenePhaseModel.__deallocating_deinit()
{
  HostedScenePhaseModel.deinit();

  return swift_deallocClassInstance();
}

void HostedScenePhaseModel._scenePhase.didset()
{
  v1 = v0;
  v2 = type metadata accessor for ScenePhase();
  v3 = *(v2 - 8);
  __chkstk_darwin();
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for scenes != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.scenes);

  v18 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = StaticString.description.getter();
    v11 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v9, v10, &v20);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    swift_getKeyPath();
    v19 = v0;
    lazy protocol witness table accessor for type HostedScenePhaseModel and conformance HostedScenePhaseModel(&lazy protocol witness table cache variable for type HostedScenePhaseModel and conformance HostedScenePhaseModel, type metadata accessor for HostedScenePhaseModel, &protocol conformance descriptor for HostedScenePhaseModel);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v12 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
    swift_beginAccess();
    (*(v3 + 16))(v5, v1 + v12, v2);
    v13 = String.init<A>(describing:)();
    v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v13, v14, &v20);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v18, v7, "[ScenePhaseSupport:%{public}s] scenePhase changed: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
    v16 = v18;
  }
}

uint64_t HostedScenePhaseModel.scenePhase.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v6 = v1;
  lazy protocol witness table accessor for type HostedScenePhaseModel and conformance HostedScenePhaseModel(&lazy protocol witness table cache variable for type HostedScenePhaseModel and conformance HostedScenePhaseModel, type metadata accessor for HostedScenePhaseModel, &protocol conformance descriptor for HostedScenePhaseModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v4 = type metadata accessor for ScenePhase();
  return (*(*(v4 - 8) + 16))(a1, v6 + v3, v4);
}

uint64_t key path getter for HostedScenePhaseModel.scenePhase : HostedScenePhaseModel@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type HostedScenePhaseModel and conformance HostedScenePhaseModel(&lazy protocol witness table cache variable for type HostedScenePhaseModel and conformance HostedScenePhaseModel, type metadata accessor for HostedScenePhaseModel, &protocol conformance descriptor for HostedScenePhaseModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  v5 = type metadata accessor for ScenePhase();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t key path setter for HostedScenePhaseModel.scenePhase : HostedScenePhaseModel(uint64_t a1)
{
  type metadata accessor for ScenePhase();
  v2 = __chkstk_darwin();
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1, v2);
  return HostedScenePhaseModel.scenePhase.setter(v4);
}

uint64_t sub_1002F6F38()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>>, _EnvironmentKeyWritingModifier<ScenePhase>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>>, _EnvironmentKeyWritingModifier<ScenePhase>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>>, _EnvironmentKeyWritingModifier<ScenePhase>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGAA022_EnvironmentKeyWritingF0VyAA0jK0OGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGAA022_EnvironmentKeyWritingF0VyAA0jK0OGGMR);
    lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ScenePhase> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10ScenePhaseOGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA10ScenePhaseOGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>>, _EnvironmentKeyWritingModifier<ScenePhase>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<HostedScenePhaseSupport> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB023HostedScenePhaseSupportVGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB023HostedScenePhaseSupportVGMR, &protocol conformance descriptor for _ViewModifier_Content<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _OverlayModifier<WindowSceneResolver> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVy09MusicCoreB019WindowSceneResolverVGMd, &_s7SwiftUI16_OverlayModifierVy09MusicCoreB019WindowSceneResolverVGMR, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIWindowScene? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UIWindowScene? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UIWindowScene? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo13UIWindowSceneCSgMd, &_sSo13UIWindowSceneCSgMR);
    lazy protocol witness table accessor for type HostedScenePhaseModel and conformance HostedScenePhaseModel(&lazy protocol witness table cache variable for type UIWindowScene and conformance NSObject, type metadata accessor for UIWindowScene, &protocol conformance descriptor for NSObject);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIWindowScene? and conformance <A> A?);
  }

  return result;
}

unint64_t type metadata accessor for UIWindowScene()
{
  result = _sSo13UIWindowSceneCML_0;
  if (!_sSo13UIWindowSceneCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo13UIWindowSceneCML_0);
  }

  return result;
}

uint64_t closure #1 in HostedScenePhaseModel.scenePhase.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a2, v4, v6);
  v9 = OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel__scenePhase;
  swift_beginAccess();
  (*(v5 + 24))(a1 + v9, v8, v4);
  swift_endAccess();
  HostedScenePhaseModel._scenePhase.didset();
  return (*(v5 + 8))(v8, v4);
}

void HostedScenePhaseModel.windowScene.didset(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI10ScenePhaseOSgMd, &_s7SwiftUI10ScenePhaseOSgMR);
  __chkstk_darwin();
  v3 = &v28 - v2;
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (a1)
    {
      type metadata accessor for UIWindowScene();
      v10 = a1;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        return;
      }
    }

    else
    {
    }
  }

  else if (!a1)
  {
    return;
  }

  if (one-time initialization token for scenes != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.scenes);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v15 = 136446466;
    v16 = StaticString.description.getter();
    v29 = v3;
    v18 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v16, v17, &v31);
    v28 = v7;
    v19 = v18;

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v30 = swift_unknownObjectWeakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIWindowSceneCSgMd, &_sSo13UIWindowSceneCSgMR);
    v20 = String.init<A>(describing:)();
    v22 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v20, v21, &v31);
    v3 = v29;

    *(v15 + 14) = v22;
    v7 = v28;
    _os_log_impl(&_mh_execute_header, v13, v14, "[ScenePhaseSupport:%{public}s] windowScene changed: %{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 activationState];

    v26 = &enum case for ScenePhase.background(_:);
    v27 = &enum case for ScenePhase.active(_:);
    if (v25)
    {
      v27 = &enum case for ScenePhase.inactive(_:);
    }

    if (v25 != 2)
    {
      v26 = v27;
    }

    (*(v5 + 104))(v3, *v26, v4);
    (*(v5 + 56))(v3, 0, 1, v4);
    (*(v5 + 32))(v7, v3, v4);
  }

  else
  {
    (*(v5 + 56))(v3, 1, 1, v4);
    (*(v5 + 104))(v7, enum case for ScenePhase.inactive(_:), v4);
  }

  HostedScenePhaseModel.scenePhase.setter(v7);
  HostedScenePhaseModel.setupNotificationObservers()();
}

double HostedScenePhaseModel.setupNotificationObservers()()
{
  v1 = v0;
  v2 = type metadata accessor for ScenePhase();
  v91 = *(v2 - 8);
  v92 = v2;
  __chkstk_darwin();
  v88 = v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v3;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSNotificationNameaSg_7SwiftUI10ScenePhaseOtMd, &_sSo18NSNotificationNameaSg_7SwiftUI10ScenePhaseOtMR);
  v4 = *(v93 - 8);
  __chkstk_darwin();
  v87 = (v82 - v5);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if (one-time initialization token for scenes != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.scenes);

    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = v11;
    v13 = os_log_type_enabled(v10, v11);
    v90 = v9;
    if (v13)
    {
      v14 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v14 = 136446466;
      v15 = StaticString.description.getter();
      v17 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v15, v16, &aBlock);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2082;
      v18 = v9;
      v19 = [v18 description];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v23 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v20, v22, &aBlock);

      *(v14 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v10, v12, "[ScenePhaseSupport:%{public}s] Setting up notification observers for scene %{public}s)", v14, 0x16u);
      swift_arrayDestroy();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSNotificationNameaSg_7SwiftUI10ScenePhaseOtGMd, &_ss23_ContiguousArrayStorageCySo18NSNotificationNameaSg_7SwiftUI10ScenePhaseOtGMR);
    v24 = *(v4 + 72);
    v25 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v96 = 6;
    v26 = swift_allocObject();
    v82[2] = v26;
    v27 = v26 + v25;
    v28 = v92;
    v29 = v93;
    v30 = *(v93 + 48);
    v95 = UISceneDidActivateNotification;
    *(v26 + v25) = UISceneDidActivateNotification;
    v31 = v91 + 104;
    v32 = *(v91 + 104);
    v32(v26 + v25 + v30, enum case for ScenePhase.active(_:), v28);
    v33 = *(v29 + 48);
    v94 = UISceneWillConnectNotification;
    *(v27 + v24) = UISceneWillConnectNotification;
    v34 = enum case for ScenePhase.inactive(_:);
    v32(v27 + v24 + v33, enum case for ScenePhase.inactive(_:), v28);
    v35 = (v27 + 2 * v24);
    v36 = *(v29 + 48);
    v84 = UISceneWillDeactivateNotification;
    *v35 = UISceneWillDeactivateNotification;
    v32(v35 + v36, v34, v28);
    v37 = (v27 + 3 * v24);
    v38 = *(v29 + 48);
    v83 = UISceneWillEnterForegroundNotification;
    *v37 = UISceneWillEnterForegroundNotification;
    v32(v37 + v38, v34, v28);
    v39 = (v27 + 4 * v24);
    v40 = *(v29 + 48);
    *v39 = UISceneDidDisconnectNotification;
    v41 = enum case for ScenePhase.background(_:);
    v32(v39 + v40, enum case for ScenePhase.background(_:), v28);
    v85 = v24;
    v42 = (v27 + 5 * v24);
    v43 = *(v29 + 48);
    *v42 = UISceneDidEnterBackgroundNotification;
    v32(v42 + v43, v41, v28);
    v102 = _swiftEmptyArrayStorage;
    v44 = v95;
    v45 = v94;
    v46 = v84;
    v47 = v83;
    v48 = UISceneDidDisconnectNotification;
    v49 = UISceneDidEnterBackgroundNotification;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 6, 0);
    v50 = v102;
    v84 = objc_opt_self();
    v83 = objc_opt_self();
    v82[5] = v31 - 88;
    v82[4] = v31 - 72;
    v82[3] = &v98;
    v82[1] = v27;
    v51 = v27;
    v86 = v1;
    v53 = v91;
    v52 = v92;
    do
    {
      v95 = v50;
      v54 = v87;
      outlined init with copy of (NSNotificationName?, ScenePhase)(v51, v87);
      v55 = *v54;
      v56 = *(v93 + 48);
      v94 = [v84 defaultCenter];
      v57 = [v83 mainQueue];
      v58 = swift_allocObject();
      swift_weakInit();
      v59 = v88;
      (*(v53 + 16))(v88, v54 + v56, v52);
      v60 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v61 = swift_allocObject();
      *(v61 + 16) = v58;
      *(v61 + 24) = v55;
      (*(v53 + 32))(v61 + v60, v59, v52);
      v100 = partial apply for closure #1 in closure #1 in HostedScenePhaseModel.setupNotificationObservers();
      v101 = v61;
      *&aBlock = _NSConcreteStackBlock;
      *(&aBlock + 1) = 1107296256;
      v98 = _s10Foundation12NotificationVIeghn_So14NSNotificationCIeyBhy_TR_0;
      ObjectType = &block_descriptor_57;
      v62 = _Block_copy(&aBlock);
      v63 = v55;

      v64 = v94;
      v65 = [(NSString *)v94 addObserverForName:v63 object:v90 queue:v57 usingBlock:v62];
      v66 = v62;
      v50 = v95;
      _Block_release(v66);

      ObjectType = swift_getObjectType();
      *&aBlock = v65;
      outlined destroy of TaskPriority?(v54, &_sSo18NSNotificationNameaSg_7SwiftUI10ScenePhaseOtMd, &_sSo18NSNotificationNameaSg_7SwiftUI10ScenePhaseOtMR);
      v102 = v50;
      v68 = v50[2];
      v67 = v50[3];
      if (v68 >= v67 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v68 + 1, 1);
        v50 = v102;
      }

      v50[2] = (v68 + 1);
      outlined init with take of Any(&aBlock, &v50[4 * v68 + 4]);
      v69 = v86;
      v51 += v85;
      --v96;
    }

    while (v96);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v70 = *(v69 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
    *(v69 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = v50;
    specialized HostedScenePhaseModel.notificationObservers.didset(v70);
  }

  else
  {
    if (one-time initialization token for scenes != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.scenes);

    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = v1;
      v77 = swift_slowAlloc();
      *&aBlock = v77;
      *v75 = 136446210;
      v78 = StaticString.description.getter();
      v80 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v78, v79, &aBlock);

      *(v75 + 4) = v80;
      _os_log_impl(&_mh_execute_header, v73, v74, "[ScenePhaseSupport:%{public}s] Removing notification observers", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v77);
      v1 = v76;
    }

    v81 = *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers);
    *(v1 + OBJC_IVAR____TtC11MusicCoreUIP33_377CDC3E1DACA082F76DF92BE308CAF121HostedScenePhaseModel_notificationObservers) = _swiftEmptyArrayStorage;
    specialized HostedScenePhaseModel.notificationObservers.didset(v81);
  }

  return result;
}

double closure #1 in closure #1 in HostedScenePhaseModel.setupNotificationObservers()(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = type metadata accessor for ScenePhase();
  v7 = *(v6 - 8);
  __chkstk_darwin();
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (one-time initialization token for scenes != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.scenes);
    v12 = a3;

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v25 = a3;
      v16 = v15;
      v29 = swift_slowAlloc();
      *v16 = 136446466;
      v17 = StaticString.description.getter();
      v27 = a4;
      v19 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v17, v18, &v29);
      v26 = v6;
      v20 = v19;

      *(v16 + 4) = v20;
      *(v16 + 12) = 2082;
      v28 = v25;
      v21 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSNotificationNameaSgMd, &_sSo18NSNotificationNameaSgMR);
      v22 = String.init<A>(describing:)();
      v24 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_1(v22, v23, &v29);
      a4 = v27;

      *(v16 + 14) = v24;
      v6 = v26;
      _os_log_impl(&_mh_execute_header, v13, v14, "[ScenePhaseSupport:%{public}s] Received notification %{public}s)", v16, 0x16u);
      swift_arrayDestroy();
    }

    (*(v7 + 16))(v9, a4, v6);
    HostedScenePhaseModel.scenePhase.setter(v9);
  }

  return result;
}

uint64_t _s10Foundation12NotificationVIeghn_So14NSNotificationCIeyBhy_TR_0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t one-time initialization function for scenes()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.scenes);
  __swift_project_value_buffer(v0, static Logger.scenes);
  return static Logger.music(_:)(0x73656E656353, 0xE600000000000000);
}

uint64_t static Logger.scenes.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for scenes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static Logger.scenes);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata completion function for HostedScenePhaseModel(uint64_t a1)
{
  result = type metadata accessor for ScenePhase();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ObservationRegistrar();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1002F86E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGAA022_EnvironmentKeyWritingF0VyAA0jK0OGGMd, &_s7SwiftUI15ModifiedContentVyACyAA014_ViewModifier_D0Vy09MusicCoreB023HostedScenePhaseSupportVGAA08_OverlayF0VyAF06WindowJ8ResolverVGGAA022_EnvironmentKeyWritingF0VyAA0jK0OGGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo13UIWindowSceneCSgMd, &_sSo13UIWindowSceneCSgMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<_ViewModifier_Content<HostedScenePhaseSupport>, _OverlayModifier<WindowSceneResolver>>, _EnvironmentKeyWritingModifier<ScenePhase>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type UIWindowScene? and conformance <A> A?();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1002F8774(void *a1)
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type HostedScenePhaseSupport and conformance HostedScenePhaseSupport();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type HostedScenePhaseSupport and conformance HostedScenePhaseSupport()
{
  result = lazy protocol witness table cache variable for type HostedScenePhaseSupport and conformance HostedScenePhaseSupport;
  if (!lazy protocol witness table cache variable for type HostedScenePhaseSupport and conformance HostedScenePhaseSupport)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type HostedScenePhaseSupport and conformance HostedScenePhaseSupport);
  }

  return result;
}

uint64_t specialized HostedScenePhaseModel.notificationObservers.didset(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = objc_opt_self();
    v4 = v2 + 32;
    do
    {
      outlined init with copy of Any(v4, v6);
      v5 = [v3 defaultCenter];
      __swift_project_boxed_opaque_existential_0Tm(v6, v6[3]);
      [v5 removeObserver:_bridgeAnythingToObjectiveC<A>(_:)()];

      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_0Tm(v6);
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t outlined init with copy of (NSNotificationName?, ScenePhase)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSNotificationNameaSg_7SwiftUI10ScenePhaseOtMd, &_sSo18NSNotificationNameaSg_7SwiftUI10ScenePhaseOtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002F8970()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1002F89A8()
{
  v1 = type metadata accessor for ScenePhase();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double partial apply for closure #1 in closure #1 in HostedScenePhaseModel.setupNotificationObservers()(uint64_t a1)
{
  v3 = *(type metadata accessor for ScenePhase() - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return closure #1 in closure #1 in HostedScenePhaseModel.setupNotificationObservers()(a1, v4, v5, v6);
}

uint64_t block_copy_helper_57(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t lazy protocol witness table accessor for type HostedScenePhaseModel and conformance HostedScenePhaseModel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t WindowSceneResolver.windowScene.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo13UIWindowSceneCSgGMd, &_s7SwiftUI7BindingVySo13UIWindowSceneCSgGMR);
  Binding.wrappedValue.getter();
  return v4;
}

void (*WindowSceneResolver.windowScene.modify(void *a1, uint64_t a2, uint64_t a3, void *a4))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x60uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[9] = a3;
  v8[10] = a4;
  v8[8] = a2;
  *v8 = a2;
  v8[1] = a3;
  v8[2] = a4;
  v10 = a4;

  v9[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo13UIWindowSceneCSgGMd, &_s7SwiftUI7BindingVySo13UIWindowSceneCSgGMR);
  Binding.wrappedValue.getter();
  return WindowSceneResolver.windowScene.modify;
}

void WindowSceneResolver.windowScene.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  *(v2 + 24) = *(*a1 + 64);
  v4 = *(v2 + 48);
  *(v2 + 56) = v4;
  v5 = *(v2 + 80);
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  if (a2)
  {
    v6 = v4;
    Binding.wrappedValue.setter();
  }

  else
  {
    Binding.wrappedValue.setter();
  }

  free(v2);
}

uint64_t WindowSceneResolver.$windowScene.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo13UIWindowSceneCSgGMd, &_s7SwiftUI7BindingVySo13UIWindowSceneCSgGMR);
  Binding.projectedValue.getter();
  return v4;
}

id WindowSceneResolver.makeUIView(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a2;
  v20 = a3;
  v21 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo13UIWindowSceneCSgGMd, &_s7SwiftUI7BindingVySo13UIWindowSceneCSgGMR);
  Binding.projectedValue.getter();
  v4 = v17;
  v5 = v18;
  v6 = type metadata accessor for WindowSceneResolver.View();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtCV11MusicCoreUI19WindowSceneResolver4View__boundWindowScene];
  *v8 = v16;
  *(v8 + 1) = v4;
  *(v8 + 2) = v5;
  v15.receiver = v7;
  v15.super_class = v6;

  v9 = v5;
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  v11 = objc_opt_self();
  v12 = v10;
  v13 = [v11 clearColor];
  [v12 setBackgroundColor:v13];

  [v12 setUserInteractionEnabled:0];

  return v12;
}

Swift::Void __swiftcall WindowSceneResolver.View.willMove(toWindow:)(UIWindow_optional toWindow)
{
  isa = toWindow.value.super.super.super.isa;
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, "willMoveToWindow:", isa);
  v3 = [(objc_class *)isa windowScene];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySo13UIWindowSceneCSgGMd, &_s7SwiftUI7BindingVySo13UIWindowSceneCSgGMR);
  Binding.wrappedValue.setter();
}

void WindowSceneResolver.View.__ivar_destroyer()
{
  v1 = *(v0 + OBJC_IVAR____TtCV11MusicCoreUI19WindowSceneResolver4View__boundWindowScene + 16);
}

unint64_t lazy protocol witness table accessor for type WindowSceneResolver and conformance WindowSceneResolver()
{
  result = lazy protocol witness table cache variable for type WindowSceneResolver and conformance WindowSceneResolver;
  if (!lazy protocol witness table cache variable for type WindowSceneResolver and conformance WindowSceneResolver)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowSceneResolver and conformance WindowSceneResolver);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type WindowSceneResolver and conformance WindowSceneResolver;
  if (!lazy protocol witness table cache variable for type WindowSceneResolver and conformance WindowSceneResolver)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WindowSceneResolver and conformance WindowSceneResolver);
  }

  return result;
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance WindowSceneResolver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type WindowSceneResolver and conformance WindowSceneResolver();

  return static UIViewRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t protocol witness for static View._makeViewList(view:inputs:) in conformance WindowSceneResolver(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = lazy protocol witness table accessor for type WindowSceneResolver and conformance WindowSceneResolver();

  return static UIViewRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void protocol witness for View.body.getter in conformance WindowSceneResolver(uint64_t a1)
{
  lazy protocol witness table accessor for type WindowSceneResolver and conformance WindowSceneResolver();
  UIViewRepresentable.body.getter();
  __break(1u);
}

__n128 __swift_memcpy24_8_1(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t NoticePresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  NoticePresenter.init()();
  return v0;
}

uint64_t NoticePresenter.init()()
{
  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem) = 0;
  swift_unknownObjectWeakInit();
  v6[8] = 2;
  v7 = 0x4024000000000000;
  v3 = *&NSDirectionalEdgeInsetsZero.bottom;
  v8 = *&NSDirectionalEdgeInsetsZero.top;
  v9 = v3;
  outlined init with take of NoticePresenter.Configuration(v6, v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  v4 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = 0;
  ObservationRegistrar.init()();
  return v0;
}

uint64_t NoticePresenter.notice.setter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  __chkstk_darwin();
  v4 = v8 - v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v1 + v5, v4, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  v6 = specialized NoticePresenter.shouldNotifyObservers<A>(_:_:)(v4, a1);
  outlined destroy of TaskPriority?(v4, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  if (v6)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v8[-2] = v1;
    v8[-1] = a1;
    v8[2] = v1;
    lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    outlined init with copy of TaskPriority?(a1, v4, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
    swift_beginAccess();
    outlined assign with take of Notice?(v4, v1 + v5);
    swift_endAccess();
  }

  return outlined destroy of TaskPriority?(a1, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
}

uint64_t NoticePresenter.configuration.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  outlined init with copy of NoticePresenter.Configuration(v1 + v3, v7);
  v4 = specialized static NoticePresenter.Configuration.__derived_struct_equals(_:_:)(v7, a1);
  outlined destroy of NoticePresenter.Configuration(v7);
  if (v4)
  {
    outlined init with copy of NoticePresenter.Configuration(a1, v7);
    outlined init with copy of NoticePresenter.Configuration(v1 + v3, v6);
    swift_beginAccess();
    outlined assign with copy of NoticePresenter.Configuration(v7, v1 + v3);
    swift_endAccess();
    NoticePresenter._configuration.didset(v6);
    outlined destroy of NoticePresenter.Configuration(v6);
    outlined destroy of NoticePresenter.Configuration(v7);
  }

  else
  {
    swift_getKeyPath();
    __chkstk_darwin();
    v7[0] = v1;
    lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return outlined destroy of NoticePresenter.Configuration(a1);
}

double NoticePresenter.willPresentHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a1, a2);

  return result;
}

uint64_t key path getter for NoticePresenter.notice : NoticePresenter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  return outlined init with copy of TaskPriority?(v3 + v4, a2, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
}

uint64_t key path setter for NoticePresenter.notice : NoticePresenter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  __chkstk_darwin();
  v3 = &v5 - v2;
  outlined init with copy of TaskPriority?(a1, &v5 - v2, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  return NoticePresenter.notice.setter(v3);
}

uint64_t NoticePresenter.notice.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  return outlined init with copy of TaskPriority?(v5 + v3, a1, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
}

uint64_t closure #1 in NoticePresenter.notice.setter(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  outlined assign with copy of Notice?(a2, a1 + v4);
  return swift_endAccess();
}

Swift::Void __swiftcall NoticePresenter.dismiss(_:)(Swift::Bool a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  __chkstk_darwin();
  v5 = &v12[-v4];
  swift_getKeyPath();
  v14 = v1;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v2 + v6, v5, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  v7 = type metadata accessor for Notice(0);
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v5, 1, v7);
  outlined destroy of TaskPriority?(v5, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  if (v6 != 1)
  {
    swift_getKeyPath();
    __chkstk_darwin();
    *&v12[-16] = v2;
    *&v12[-8] = 0;
    v13 = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (a1)
    {
      static Animation.default.getter();
    }

    withAnimation<A>(_:_:)();

    swift_getKeyPath();
    v13 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v9 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v9)
    {
      *(v9 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 0;
    }

    swift_getKeyPath();
    v13 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + v8))
    {
      type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_0, OS_dispatch_queue_ptr);
      v10 = static OS_dispatch_queue.main.getter();
      if (a1)
      {
        v11 = 2.0;
      }

      else
      {
        v11 = 0.0;
      }

      OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #2 in NoticePresenter.dismiss(_:), v2, v11);
    }
  }
}

uint64_t closure #1 in NoticePresenter.dismiss(_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  __chkstk_darwin();
  v1 = &v4 - v0;
  v2 = type metadata accessor for Notice(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  return NoticePresenter.notice.setter(v1);
}

void closure #2 in NoticePresenter.dismiss(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  __chkstk_darwin();
  v3 = v7 - v2;
  swift_getKeyPath();
  v7[1] = a1;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(a1 + v4, v3, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  v5 = type metadata accessor for Notice(0);
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  outlined destroy of TaskPriority?(v3, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  if (v4 == 1)
  {
    NoticePresenter.passthroughWindow.setter(0, v6);
  }
}

uint64_t NoticePresenter.present(_:internalOnly:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  static Notice.variant(_:)(a1, v5);
  specialized NoticePresenter.present(_:internalOnly:animated:)(v5, v2);
  return outlined destroy of Notice(v5);
}

void createWindowIfNeeded #1 () in NoticePresenter.present(_:internalOnly:animated:)(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  v11[0] = a1;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (!*(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow))
  {
    v4 = [objc_allocWithZone(type metadata accessor for NoticePresenter.PassthroughWindow()) initWithWindowScene:a2];
    [v4 setWindowLevel:UIWindowLevelStatusBar];
    swift_getKeyPath();
    v11[0] = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    outlined init with copy of NoticePresenter.Configuration(a1 + v5, v11);
    v6 = objc_allocWithZone(type metadata accessor for NoticePresenter.UIRootViewController());

    v8 = specialized NoticePresenter.UIRootViewController.init(noticePresenter:configuration:)(v7, v11);

    [v4 setRootViewController:v8];

    [v4 makeKeyAndVisible];
    [v4 resignKeyWindow];
    v9 = v4;
    NoticePresenter.passthroughWindow.setter(v4, v10);
  }
}

void closure #1 in NoticePresenter.present(_:internalOnly:animated:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  __chkstk_darwin();
  v5 = &v18 - v4;
  outlined init with copy of Notice(a2, &v18 - v4);
  v6 = type metadata accessor for Notice(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  NoticePresenter.notice.setter(v5);
  swift_getKeyPath();
  v19 = a1;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v8 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v8)
  {
    v9 = [v8 rootViewController];
    if (v9)
    {
      v10 = v9;
      type metadata accessor for NoticePresenter.UIRootViewController();
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = [v11 view];

        if (!v12)
        {
          __break(1u);
          goto LABEL_15;
        }

        [v12 setNeedsLayout];
        v10 = v12;
      }
    }
  }

  swift_getKeyPath();
  v19 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(a1 + v7);
  if (v13)
  {
    v14 = [v13 rootViewController];
    if (v14)
    {
      v15 = v14;
      type metadata accessor for NoticePresenter.UIRootViewController();
      v16 = swift_dynamicCastClass();
      if (!v16)
      {
LABEL_12:

        return;
      }

      v17 = [v16 view];

      if (v17)
      {
        [v17 layoutIfNeeded];
        v15 = v17;
        goto LABEL_12;
      }

LABEL_15:
      __break(1u);
    }
  }
}

uint64_t NoticePresenter.dismissalWorkItem.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t key path getter for NoticePresenter.dismissalWorkItem : NoticePresenter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem);
}

double key path setter for NoticePresenter.dismissalWorkItem : NoticePresenter(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

void closure #1 in NoticePresenter.dismissalWorkItem.setter(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__dismissalWorkItem) = a2;

  if (v2)
  {
    dispatch thunk of DispatchWorkItem.cancel()();
  }
}

uint64_t NoticePresenter.Configuration.init(edge:padding:insets:)(char a1, double a3, double a4, double a5, double a6, double a7)
{
  result = swift_unknownObjectWeakInit();
  *(result + 8) = a1;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = a5;
  *(result + 40) = a6;
  *(result + 48) = a7;
  return result;
}

void NoticePresenter._configuration.didset(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v9[0] = v1;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  outlined init with copy of NoticePresenter.Configuration(v1 + v4, v9);
  v5 = specialized static NoticePresenter.Configuration.__derived_struct_equals(_:_:)(a1, v9);
  outlined destroy of NoticePresenter.Configuration(v9);
  if ((v5 & 1) == 0)
  {
    swift_getKeyPath();
    v9[0] = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v6)
    {
      v7 = [v6 rootViewController];
      if (v7)
      {
        v8 = v7;
        type metadata accessor for NoticePresenter.UIRootViewController();
        if (swift_dynamicCastClass())
        {
          swift_getKeyPath();
          v9[0] = v2;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          outlined init with copy of NoticePresenter.Configuration(v2 + v4, v9);
          NoticePresenter.UIRootViewController.configuration.setter(v9);
        }
      }
    }
  }
}

void (*NoticePresenter._configuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE8uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  *(v3 + 216) = v1;
  *(v3 + 224) = v5;
  swift_beginAccess();
  outlined init with copy of NoticePresenter.Configuration(v1 + v5, v4);
  return NoticePresenter._configuration.modify;
}

void NoticePresenter._configuration.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 216);
  v4 = *(*a1 + 224);
  if (a2)
  {
    outlined init with copy of NoticePresenter.Configuration(*a1, v2 + 56);
    outlined init with copy of NoticePresenter.Configuration(v3 + v4, v2 + 112);
    swift_beginAccess();
    outlined assign with copy of NoticePresenter.Configuration(v2 + 56, v3 + v4);
    swift_endAccess();
    NoticePresenter._configuration.didset(v2 + 112);
    outlined destroy of NoticePresenter.Configuration(v2 + 112);
  }

  else
  {
    outlined init with copy of NoticePresenter.Configuration(v3 + v4, v2 + 56);
    swift_beginAccess();
    outlined assign with copy of NoticePresenter.Configuration(v2, v3 + v4);
    swift_endAccess();
    NoticePresenter._configuration.didset(v2 + 56);
  }

  outlined destroy of NoticePresenter.Configuration(v2 + 56);
  outlined destroy of NoticePresenter.Configuration(v2);

  free(v2);
}

uint64_t NoticePresenter.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return outlined init with copy of NoticePresenter.Configuration(v5 + v3, a1);
}

uint64_t key path getter for NoticePresenter.configuration : NoticePresenter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  return outlined init with copy of NoticePresenter.Configuration(v3 + v4, a2);
}

uint64_t closure #1 in NoticePresenter.configuration.setter(uint64_t a1, uint64_t a2)
{
  outlined init with copy of NoticePresenter.Configuration(a2, v6);
  v3 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  outlined init with copy of NoticePresenter.Configuration(a1 + v3, v5);
  swift_beginAccess();
  outlined assign with copy of NoticePresenter.Configuration(v6, a1 + v3);
  swift_endAccess();
  NoticePresenter._configuration.didset(v5);
  outlined destroy of NoticePresenter.Configuration(v5);
  return outlined destroy of NoticePresenter.Configuration(v6);
}

uint64_t (*NoticePresenter.configuration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = NoticePresenter._configuration.modify(v4);
  return NoticePresenter.configuration.modify;
}

uint64_t NoticePresenter.willPresentHandler.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = (v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*v1, v1[1]);
  return v2;
}

uint64_t key path getter for NoticePresenter.willPresentHandler : NoticePresenter@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = (v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  if (v5)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v6;
    v8 = partial apply for thunk for @escaping @callee_guaranteed (@inout NoticePresenter.Configuration) -> ();
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  *a2 = v8;
  a2[1] = v7;
  return outlined copy of (@escaping @callee_guaranteed () -> ())?(v5, v6);
}

double key path setter for NoticePresenter.willPresentHandler : NoticePresenter(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = partial apply for thunk for @escaping @callee_guaranteed (@inout NoticePresenter.Configuration) -> (@out ());
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  swift_getKeyPath();
  __chkstk_darwin();
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v2, v3);
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v4);

  return result;
}

uint64_t closure #1 in NoticePresenter.willPresentHandler.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a2;
  v5[1] = a3;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a2, a3);
  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v6, v7);
}

uint64_t (*NoticePresenter.willPresentHandler.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  *v4 = v1;
  v4[6] = lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = NoticePresenter._willPresentHandler.modify(v4);
  return NoticePresenter.willPresentHandler.modify;
}

void *NoticePresenter.passthroughWindow.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  v2 = v1;
  return v1;
}

id key path getter for NoticePresenter.passthroughWindow : NoticePresenter@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *a2 = v4;

  return v4;
}

void NoticePresenter.passthroughWindow.setter(void *a1, __n128 a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v6 = *(v2 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  if (v6)
  {
    if (a1)
    {
      type metadata accessor for NoticePresenter.PassthroughWindow();
      v7 = v6;
      v8 = a1;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        v10 = *(v3 + v5);
        goto LABEL_8;
      }
    }

LABEL_6:
    swift_getKeyPath();
    __chkstk_darwin();
    lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (a1)
  {
    goto LABEL_6;
  }

  v10 = 0;
  v8 = 0;
LABEL_8:
  *(v3 + v5) = a1;
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  v11 = v8;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v10)
  {
    v12 = *(v3 + v5);
    if (!v12 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v13 = v12, v10 = v10, v14 = static NSObject.== infix(_:_:)(), v10, v13, (v14 & 1) == 0))
    {
      [v10 resignKeyWindow];
    }
  }

  else
  {
  }
}

void closure #1 in NoticePresenter.passthroughWindow.setter(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
  v5 = *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
  *(a1 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow) = a2;
  swift_getKeyPath();
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  v6 = a2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (v5)
  {
    v7 = *(a1 + v4);
    if (!v7 || (type metadata accessor for NoticePresenter.PassthroughWindow(), v8 = v7, v5 = v5, v9 = static NSObject.== infix(_:_:)(), v5, v8, (v9 & 1) == 0))
    {
      [v5 resignKeyWindow];
    }
  }
}

uint64_t NoticePresenter.deinit()
{
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);

  outlined destroy of NoticePresenter.Configuration(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler), *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler + 8));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NoticePresenter.__deallocating_deinit()
{
  outlined destroy of TaskPriority?(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);

  outlined destroy of NoticePresenter.Configuration(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(*(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler), *(v0 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler + 8));

  v1 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double View.noticePresenting(_:configurator:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIWindowSceneCSgMd, &_sSo13UIWindowSceneCSgMR);
  State.init(wrappedValue:)();
  View.modifier<A>(_:)();

  return result;
}

__n128 NoticePresentingResolverModifier.init(noticePresenter:configurator:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIWindowSceneCSgMd, &_sSo13UIWindowSceneCSgMR);
  State.init(wrappedValue:)();
  result = v13;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = v13;
  return result;
}

uint64_t NoticePresentingResolverModifier.noticePresenter.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy09MusicCoreB015NoticePresenterCSgGMd, &_s7SwiftUI7BindingVy09MusicCoreB015NoticePresenterCSgGMR);
  Binding.wrappedValue.getter();
  return v1;
}

void (*NoticePresentingResolverModifier.noticePresenter.modify(void *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x70uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  v6 = v1[1];
  v3[10] = *v1;
  v3[11] = v6;
  v7 = v1[2];
  v3[12] = v7;
  v3[6] = v5;
  v3[7] = v7;
  *v3 = v5;
  v3[1] = v6;
  v3[2] = v7;
  outlined init with copy of Transaction((v3 + 6), (v3 + 3));

  outlined init with copy of TaskPriority?((v4 + 7), (v4 + 3), &_s11MusicCoreUI15NoticePresenterCSgMd, &_s11MusicCoreUI15NoticePresenterCSgMR);
  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy09MusicCoreB015NoticePresenterCSgGMd, &_s7SwiftUI7BindingVy09MusicCoreB015NoticePresenterCSgGMR);
  Binding.wrappedValue.getter();
  return NoticePresentingResolverModifier.noticePresenter.modify;
}

void NoticePresentingResolverModifier.noticePresenter.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v2[3] = *(*a1 + 80);
  v2[9] = v2[8];
  v4 = v2[12];
  v2[4] = v3;
  v2[5] = v4;
  if (a2)
  {

    Binding.wrappedValue.setter();
    outlined destroy of Transaction((v2 + 6));

    outlined destroy of TaskPriority?((v2 + 7), &_s11MusicCoreUI15NoticePresenterCSgMd, &_s11MusicCoreUI15NoticePresenterCSgMR);
  }

  else
  {
    Binding.wrappedValue.setter();
    outlined destroy of Transaction((v2 + 6));

    outlined destroy of TaskPriority?((v2 + 7), &_s11MusicCoreUI15NoticePresenterCSgMd, &_s11MusicCoreUI15NoticePresenterCSgMR);
  }

  free(v2);
}

uint64_t NoticePresentingResolverModifier.$noticePresenter.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy09MusicCoreB015NoticePresenterCSgGMd, &_s7SwiftUI7BindingVy09MusicCoreB015NoticePresenterCSgGMR);
  Binding.projectedValue.getter();
  return v1;
}

uint64_t NoticePresentingResolverModifier.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v24 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0024NoticePresentingResolverF0VGAA08_OverlayF0VyAF011WindowSceneK0VGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0024NoticePresentingResolverF0VGAA08_OverlayF0VyAF011WindowSceneK0VGGMR);
  __chkstk_darwin();
  v7 = &v23 - v6;
  v8 = static Alignment.center.getter();
  v10 = v9;
  v12 = v2[6];
  v29[0] = v2[5];
  v11 = v29[0];
  v29[1] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySo13UIWindowSceneCSgGMd, &_s7SwiftUI5StateVySo13UIWindowSceneCSgGMR);
  State.projectedValue.getter();
  v23 = v27;
  v13 = v28;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0024NoticePresentingResolverD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0024NoticePresentingResolverD0VGMR);
  (*(*(v14 - 8) + 16))(v7, a1, v14);
  v15 = &v7[*(v5 + 36)];
  *v15 = v23;
  *(v15 + 2) = v13;
  *(v15 + 3) = v8;
  *(v15 + 4) = v10;
  *&v27 = v11;
  *(&v27 + 1) = v12;
  State.wrappedValue.getter();
  v16 = v29[0];
  v26 = v29[0];
  *&v27 = v12;
  v17 = *v3;
  v18 = v3[3];
  v30 = v3[2];
  v31 = v17;
  v19 = v3[4];
  v29[0] = v11;
  v20 = swift_allocObject();
  v21 = *(v3 + 1);
  *(v20 + 16) = *v3;
  *(v20 + 32) = v21;
  *(v20 + 48) = *(v3 + 2);
  *(v20 + 64) = v3[6];
  outlined init with copy of Transaction(&v31, v25);

  outlined init with copy of TaskPriority?(&v30, v25, &_s11MusicCoreUI15NoticePresenterCSgMd, &_s11MusicCoreUI15NoticePresenterCSgMR);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v18, v19);
  outlined init with copy of TaskPriority?(v29, v25, &_sSo13UIWindowSceneCSgMd, &_sSo13UIWindowSceneCSgMR);
  outlined init with copy of TaskPriority?(&v27, v25, &_s7SwiftUI11AnyLocationCySo13UIWindowSceneCSgGSgMd, &_s7SwiftUI11AnyLocationCySo13UIWindowSceneCSgGSgMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo13UIWindowSceneCSgMd, &_sSo13UIWindowSceneCSgMR);
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NoticePresentingResolverModifier>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type UIWindowScene? and conformance <A> A?();
  View.onChange<A>(of:initial:_:)();

  return outlined destroy of TaskPriority?(v7, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0024NoticePresentingResolverF0VGAA08_OverlayF0VyAF011WindowSceneK0VGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0024NoticePresentingResolverF0VGAA08_OverlayF0VyAF011WindowSceneK0VGGMR);
}

uint64_t closure #2 in NoticePresentingResolverModifier.body(content:)(uint64_t a1, void **a2, __int128 *a3)
{
  v4 = *a2;
  v5 = *(a3 + 3);
  if (!v5)
  {
    if (v4)
    {
      goto LABEL_5;
    }

LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

  v6 = *(a3 + 4);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(*(a3 + 3), v6);
  v7 = v4;
  v8 = UIWindowScene.noticePresenter.getter();
  swift_getKeyPath();
  *&v13 = v8;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
  swift_beginAccess();
  outlined init with copy of NoticePresenter.Configuration(v8 + v9, &v13);

  v5(&v13);
  UIWindowScene.noticePresenter.getter();
  outlined init with copy of NoticePresenter.Configuration(&v13, v12);
  NoticePresenter.configuration.setter(v12);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v5, v6);

  outlined destroy of NoticePresenter.Configuration(&v13);
LABEL_5:
  v10 = UIWindowScene.noticePresenter.getter();
LABEL_7:
  v13 = *a3;
  v14 = *(a3 + 2);
  v12[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVy09MusicCoreB015NoticePresenterCSgGMd, &_s7SwiftUI7BindingVy09MusicCoreB015NoticePresenterCSgGMR);
  return Binding.wrappedValue.setter();
}

uint64_t UIWindowScene.noticePresenter.getter()
{
  UIWindowScene.noticePresenting.getter(v5);
  if (!v6)
  {
    outlined destroy of TaskPriority?(v5, &_s9MusicCore16NoticePresenting_pSgMd_0, &_s9MusicCore16NoticePresenting_pSgMR_0);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore16NoticePresenting_pMd_0, &_s9MusicCore16NoticePresenting_pMR_0);
  type metadata accessor for NoticePresenter(0);
  if (!swift_dynamicCast())
  {
LABEL_5:
    v1 = type metadata accessor for NoticePresenter(0);
    v0 = swift_allocObject();
    NoticePresenter.init()();
    v6 = v1;
    v7 = &protocol witness table for NoticePresenter;
    v5[0] = v0;

    UIWindowScene.noticePresenting.setter(v5);
    swift_getKeyPath();
    v5[0] = v0;
    lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v5[0] = v0;
    swift_getKeyPath();
    ObservationRegistrar.willSet<A, B>(_:keyPath:)();

    v2 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
    swift_beginAccess();
    outlined init with copy of NoticePresenter.Configuration(v0 + v2, v5);
    swift_unknownObjectWeakAssign();
    outlined init with copy of NoticePresenter.Configuration(v0 + v2, v4);
    swift_beginAccess();
    outlined assign with copy of NoticePresenter.Configuration(v5, v0 + v2);
    swift_endAccess();
    NoticePresenter._configuration.didset(v4);
    outlined destroy of NoticePresenter.Configuration(v4);
    outlined destroy of NoticePresenter.Configuration(v5);
    v5[0] = v0;
    swift_getKeyPath();
    ObservationRegistrar.didSet<A, B>(_:keyPath:)();

    return v0;
  }

  return v4[0];
}

__n128 NoticePresentationView.body.getter@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AGyAGyAGyAGyAGy09MusicCoreB006NoticeE0VAA08_PaddingJ0VGAQGAQGAA21_TraitWritingModifierVyAA010TransitionO3KeyVGGAA012_EnvironmentspQ0VyAM0M9DismissalVSgGGSgALtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AGyAGyAGyAGyAGy09MusicCoreB006NoticeE0VAA08_PaddingJ0VGAQGAQGAA21_TraitWritingModifierVyAA010TransitionO3KeyVGGAA012_EnvironmentspQ0VyAM0M9DismissalVSgGGSgALtGGMR);
  __chkstk_darwin();
  v4 = v10 - v3;
  *v4 = static HorizontalAlignment.center.getter();
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AKyAKyAKyAKyAKy09MusicCoreB006NoticeD0VAA08_PaddingG0VGAUGAUGAA21_TraitWritingModifierVyAA010TransitionQ3KeyVGGAA012_EnvironmenturS0VyAQ0O9DismissalVSgGGSgAPtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA6SpacerVAA06_FrameG0VG_AKyAKyAKyAKyAKy09MusicCoreB006NoticeD0VAA08_PaddingG0VGAUGAUGAA21_TraitWritingModifierVyAA010TransitionQ3KeyVGGAA012_EnvironmenturS0VyAQ0O9DismissalVSgGGSgAPtGGMR);
  closure #1 in NoticePresentationView.body.getter(v1, &v4[*(v5 + 44)]);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of URL?(v4, a1, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AGyAGyAGyAGyAGy09MusicCoreB006NoticeE0VAA08_PaddingJ0VGAQGAQGAA21_TraitWritingModifierVyAA010TransitionO3KeyVGGAA012_EnvironmentspQ0VyAM0M9DismissalVSgGGSgALtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AGyAGyAGyAGyAGy09MusicCoreB006NoticeE0VAA08_PaddingJ0VGAQGAQGAA21_TraitWritingModifierVyAA010TransitionO3KeyVGGAA012_EnvironmentspQ0VyAM0M9DismissalVSgGGSgALtGGMR);
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyACyACy09MusicCoreB006NoticeG0VAA08_PaddingJ0VGAQGAQGAA21_TraitWritingModifierVyAA010TransitionO3KeyVGGAA012_EnvironmentspQ0VyAM0M9DismissalVSgGGSgALtGGAA05_FlexiJ0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyACyACy09MusicCoreB006NoticeG0VAA08_PaddingJ0VGAQGAQGAA21_TraitWritingModifierVyAA010TransitionO3KeyVGGAA012_EnvironmentspQ0VyAM0M9DismissalVSgGGSgALtGGAA05_FlexiJ0VGMR) + 36);
  v7 = v10[5];
  *(v6 + 64) = v10[4];
  *(v6 + 80) = v7;
  *(v6 + 96) = v10[6];
  v8 = v10[1];
  *v6 = v10[0];
  *(v6 + 16) = v8;
  result = v10[3];
  *(v6 + 32) = v10[2];
  *(v6 + 48) = result;
  return result;
}

uint64_t closure #1 in NoticePresentationView.body.getter@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v92 = a2;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGMR);
  v91 = *(v90 - 8);
  __chkstk_darwin();
  v4 = &KeyPath - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  __chkstk_darwin();
  v6 = &KeyPath - v5;
  v7 = type metadata accessor for Notice(0);
  v8 = *(v7 - 8);
  __chkstk_darwin();
  v10 = &KeyPath - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGSgMR);
  __chkstk_darwin();
  v12 = &KeyPath - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v84 = &KeyPath - v13;
  v85 = a1[4];
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v89 = v96[3];
  v88 = v98;
  v87 = v100;
  v86 = v101;
  v110 = 1;
  v109 = v97;
  v108 = v99;
  v14 = a1[1];
  v83 = *a1;
  v102 = v83;
  v103 = v14;
  v82 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy09MusicCoreB015NoticePresenterCGMd, &_s7SwiftUI5StateVy09MusicCoreB015NoticePresenterCGMR);
  State.wrappedValue.getter();
  v15 = v96[0];
  swift_getKeyPath();
  v102 = v15;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v15 + v16, v6, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of TaskPriority?(v6, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
    v17 = 1;
    v18 = v84;
    v19 = v90;
  }

  else
  {
    v81 = v10;
    outlined init with take of Notice(v6, v10);
    outlined init with copy of Notice(v10, v4);
    v20 = type metadata accessor for NoticeView(0);
    v21 = &v4[v20[5]];
    *v21 = swift_getKeyPath();
    *(v21 + 1) = 0;
    *(v21 + 8) = 0;
    v22 = &v4[v20[6]];
    v107 = 0x3FF0000000000000;
    State.init(wrappedValue:)();
    v23 = v103;
    *v22 = v102;
    *(v22 + 1) = v23;
    v24 = &v4[v20[7]];
    LOBYTE(v107) = 0;
    GestureState.init(wrappedValue:)();
    v25 = v103;
    v26 = v104;
    *v24 = v102;
    *(v24 + 1) = v25;
    *(v24 + 1) = v26;
    v27 = &v4[v20[8]];
    LOBYTE(v107) = 0;
    State.init(wrappedValue:)();
    v28 = v103;
    *v27 = v102;
    *(v27 + 1) = v28;
    LOBYTE(v27) = static Edge.Set.leading.getter();
    EdgeInsets.init(_all:)();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    v37 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGMR) + 36)];
    *v37 = v27;
    *(v37 + 1) = v30;
    *(v37 + 2) = v32;
    *(v37 + 3) = v34;
    *(v37 + 4) = v36;
    v37[40] = 0;
    LOBYTE(v27) = static Edge.Set.trailing.getter();
    EdgeInsets.init(_all:)();
    v39 = v38;
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v46 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGMd, &_s7SwiftUI15ModifiedContentVyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGMR) + 36)];
    *v46 = v27;
    *(v46 + 1) = v39;
    *(v46 + 2) = v41;
    *(v46 + 3) = v43;
    *(v46 + 4) = v45;
    v46[40] = 0;
    LOBYTE(v27) = static Edge.Set.vertical.getter();
    EdgeInsets.init(_all:)();
    v48 = v47;
    v50 = v49;
    v52 = v51;
    v54 = v53;
    v55 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGMd, &_s7SwiftUI15ModifiedContentVyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGMR) + 36)];
    *v55 = v27;
    *(v55 + 1) = v48;
    *(v55 + 2) = v50;
    *(v55 + 3) = v52;
    *(v55 + 4) = v54;
    v55[40] = 0;
    static AnyTransition.opacity.getter();
    static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    AnyTransition.animation(_:)();

    static UnitPoint.center.getter();
    static AnyTransition.scale(scale:anchor:)();
    static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    AnyTransition.animation(_:)();

    static UnitPoint.center.getter();
    static AnyTransition.scale(scale:anchor:)();
    static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
    AnyTransition.animation(_:)();

    static AnyTransition.asymmetric(insertion:removal:)();

    v56 = AnyTransition.combined(with:)();

    *&v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGMR) + 36)] = v56;
    KeyPath = swift_getKeyPath();
    v107 = v82;
    type metadata accessor for MainActor();

    outlined init with copy of TaskPriority?(&v107, &v102, &_s7SwiftUI11AnyLocationCy09MusicCoreB015NoticePresenterCGSgMd, &_s7SwiftUI11AnyLocationCy09MusicCoreB015NoticePresenterCGSgMR);
    v57 = static MainActor.shared.getter();
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *(v58 + 24) = &protocol witness table for MainActor;
    v59 = *(a1 + 1);
    *(v58 + 32) = *a1;
    *(v58 + 48) = v59;
    *(v58 + 64) = *(a1 + 2);

    outlined init with copy of TaskPriority?(&v107, &v102, &_s7SwiftUI11AnyLocationCy09MusicCoreB015NoticePresenterCGSgMd, &_s7SwiftUI11AnyLocationCy09MusicCoreB015NoticePresenterCGSgMR);
    v60 = static MainActor.shared.getter();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = &protocol witness table for MainActor;
    v62 = *(a1 + 1);
    *(v61 + 32) = *a1;
    *(v61 + 48) = v62;
    *(v61 + 64) = *(a1 + 2);
    Binding.init(get:set:)();
    outlined destroy of Notice(v81);
    v63 = v102;
    v64 = v103;
    v65 = v104;
    v66 = v90;
    v67 = &v4[*(v90 + 36)];
    *v67 = KeyPath;
    *(v67 + 1) = v63;
    *(v67 + 2) = v64;
    v67[24] = v65;
    v18 = v84;
    outlined init with take of URL?(v4, v84, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGMR);
    v17 = 0;
    v19 = v66;
  }

  (*(v91 + 56))(v18, v17, 1, v19);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v91 = v102;
  v90 = v104;
  v85 = v105;
  v84 = v106;
  v95 = 1;
  v94 = v103;
  v93 = BYTE8(v104);
  v68 = v110;
  v69 = v109;
  v70 = v108;
  outlined init with copy of TaskPriority?(v18, v12, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGSgMR);
  v71 = v95;
  v72 = v94;
  v73 = v93;
  v74 = v92;
  *v92 = 0;
  *(v74 + 8) = v68;
  v74[2] = v89;
  *(v74 + 24) = v69;
  v74[4] = v88;
  *(v74 + 40) = v70;
  v75 = v86;
  v74[6] = v87;
  v74[7] = v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyACyACy09MusicCoreB010NoticeViewVAA08_PaddingG0VGAMGAMGAA21_TraitWritingModifierVyAA010TransitionM3KeyVGGAA012_EnvironmentqnO0VyAI0J9DismissalVSgGGSgAHtMd, &_s7SwiftUI15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyACyACy09MusicCoreB010NoticeViewVAA08_PaddingG0VGAMGAMGAA21_TraitWritingModifierVyAA010TransitionM3KeyVGGAA012_EnvironmentqnO0VyAI0J9DismissalVSgGGSgAHtMR);
  outlined init with copy of TaskPriority?(v12, v74 + *(v76 + 48), &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGSgMR);
  v77 = v74 + *(v76 + 64);
  *v77 = 0;
  v77[8] = v71;
  *(v77 + 2) = v91;
  v77[24] = v72;
  *(v77 + 4) = v90;
  v77[40] = v73;
  v78 = v84;
  *(v77 + 6) = v85;
  *(v77 + 7) = v78;
  outlined destroy of TaskPriority?(v18, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGSgMR);
  return outlined destroy of TaskPriority?(v12, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGSgMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewVAA14_PaddingLayoutVGAHGAHGAA21_TraitWritingModifierVyAA010TransitionK3KeyVGGAA012_EnvironmentolM0VyAD0G9DismissalVSgGGSgMR);
}

uint64_t closure #1 in closure #1 in NoticePresentationView.body.getter@<X0>(__int128 *a1@<X2>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  __chkstk_darwin();
  v5 = &v10 - v4;
  v10 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy09MusicCoreB015NoticePresenterCGMd, &_s7SwiftUI5StateVy09MusicCoreB015NoticePresenterCGMR);
  State.wrappedValue.getter();
  v6 = v11;
  swift_getKeyPath();
  *&v10 = v6;
  lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__notice;
  swift_beginAccess();
  outlined init with copy of TaskPriority?(v6 + v7, v5, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);

  v8 = type metadata accessor for Notice(0);
  LOBYTE(v7) = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  result = outlined destroy of TaskPriority?(v5, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  *a2 = v7;
  return result;
}

double closure #2 in closure #1 in NoticePresentationView.body.getter(_BYTE *a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  if ((*a1 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVy09MusicCoreB015NoticePresenterCGMd, &_s7SwiftUI5StateVy09MusicCoreB015NoticePresenterCGMR);
    State.wrappedValue.getter();
    NoticePresenter.dismiss(_:)(1);
  }

  return result;
}

void NoticePresenter.Configuration.insets.setter(double a1, double a2, double a3, double a4)
{
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = a3;
  v4[6] = a4;
}

id NoticePresenter.PassthroughWindow.hitTest(_:with:)(uint64_t a1, __n128 a2, double a3)
{
  v6 = a2.n128_f64[0];
  v12.receiver = v3;
  v12.super_class = type metadata accessor for NoticePresenter.PassthroughWindow();
  result = objc_msgSendSuper2(&v12, "hitTest:withEvent:", a1, v6, a3);
  if (*(v3 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) != 1)
  {
    goto LABEL_6;
  }

  if (result)
  {
    v8 = result;
    v9 = [v3 rootViewController];
    result = v8;
    if (!v9)
    {
      goto LABEL_6;
    }

    result = [v9 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v10 = result;
    v11 = [v8 isDescendantOfView:result];

    result = v8;
    if ((v11 & 1) == 0)
    {
LABEL_6:

      return 0;
    }
  }

  return result;
}

id NoticePresenter.UIRootViewController.configuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration;
  swift_beginAccess();
  outlined assign with copy of NoticePresenter.Configuration(a1, v4);
  swift_endAccess();
  if (![v1 isViewLoaded])
  {
    return outlined destroy of NoticePresenter.Configuration(a1);
  }

  v5 = Edge.Set.init(_:)();
  v6 = specialized EdgeInsets.init(_:length:)(v5, *(v4 + 16));
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = dispatch thunk of UIHostingController.rootView.modify();
  v14[2] = v6;
  *(v14 + 3) = v8;
  *(v14 + 4) = v10;
  *(v14 + 5) = v12;
  v13(&v18, 0);
  result = [v1 view];
  if (result)
  {
    v16 = result;
    [result setNeedsLayout];

    result = [v2 view];
    if (result)
    {
      v17 = result;
      [result layoutIfNeeded];

      return outlined destroy of NoticePresenter.Configuration(a1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void NoticePresenter.UIRootViewController.viewDidLoad()()
{
  v1 = v0;
  v24.receiver = v0;
  v24.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v24, "viewDidLoad");
  v2 = *&v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v3 = [v2 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v3;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor:v5];

  v6 = &v1[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  v7 = Edge.Set.init(_:)();
  v8 = specialized EdgeInsets.init(_:length:)(v7, v6[2]);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = dispatch thunk of UIHostingController.rootView.modify();
  v16[2] = v8;
  *(v16 + 3) = v10;
  *(v16 + 4) = v12;
  *(v16 + 5) = v14;
  v15(v23, 0);
  v17 = [v1 view];
  if (!v17)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v18 = v17;
  v19 = [v2 view];
  if (!v19)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v20 = v19;
  [v18 addSubview:v19];

  v21 = [v2 view];
  if (v21)
  {
    v22 = v21;
    [v21 layoutIfNeeded];

    return;
  }

LABEL_9:
  __break(1u);
}

void NoticePresenter.UIRootViewController.viewDidLayoutSubviews()()
{
  v42.receiver = v0;
  v42.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  objc_msgSendSuper2(&v42, "viewDidLayoutSubviews");
  v1 = [v0 view];
  if (!v1)
  {
    goto LABEL_14;
  }

  v2 = v1;
  [v1 bounds];

  v3 = &v0[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  swift_beginAccess();
  v4 = [v0 view];
  if (!v4)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  [v4 effectiveUserInterfaceLayoutDirection];

  CGRect.inset(by:for:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v0;
  v16 = swift_allocObject();
  *(v16 + 16) = partial apply for closure #1 in NoticePresenter.UIRootViewController.viewDidLayoutSubviews();
  *(v16 + 24) = v15;
  aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_58;
  v17 = _Block_copy(aBlock);
  v18 = v0;

  [v14 performWithoutAnimation:v17];
  _Block_release(v17);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v20 = *&v18[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  dispatch thunk of UIHostingController.sizeThatFits(in:)();
  v22 = v21;
  v23 = [v18 traitCollection];
  [v23 displayScale];

  v40 = v22;
  CGRect.centeringAlong(axes:bounds:scale:)();
  MinX = v24;
  MinY = v26;
  v29 = v28;
  v31 = v30;
  v32 = v7;
  v33 = v9;
  v34 = v11;
  v35 = v13;
  if (v3[8] > 1u)
  {
    if (v3[8] == 2)
    {
      MaxY = CGRectGetMaxY(*&v32);
      v43.origin.x = MinX;
      v43.origin.y = MinY;
      v43.size.width = v29;
      v43.size.height = v31;
      MinY = MaxY - CGRectGetHeight(v43);
    }

    else
    {
      MaxX = CGRectGetMaxX(*&v32);
      v44.origin.x = MinX;
      v44.origin.y = MinY;
      v44.size.width = v29;
      v44.size.height = v31;
      MinX = MaxX - CGRectGetWidth(v44);
    }
  }

  else if (v3[8])
  {
    MinX = CGRectGetMinX(*&v32);
  }

  else
  {
    MinY = CGRectGetMinY(*&v32);
  }

  v38 = [v20 view];
  if (v38)
  {
    v39 = v38;
    [v38 setFrame:{MinX, MinY, v29, v31}];

    return;
  }

LABEL_16:
  __break(1u);
}

void closure #1 in NoticePresenter.UIRootViewController.viewDidLayoutSubviews()(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController);
  v2 = [v1 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v3 = v2;
  [v2 setNeedsLayout];

  v4 = [v1 view];
  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v4;
  [v4 layoutIfNeeded];
}

id NoticePresenter.PassthroughWindow.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

id UIView.noticePresenter.getter()
{
  result = [v0 window];
  if (result)
  {
    v2 = result;
    v3 = [result windowScene];

    if (v3)
    {
      v4 = UIWindowScene.noticePresenter.getter();

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id UIViewController.noticePresenter.getter()
{
  if ([v0 isViewLoaded])
  {
    result = [v0 view];
    if (result)
    {
      v2 = result;
      v3 = [result window];
      if (v3 && (v4 = v3, v5 = [v3 windowScene], v4, v5))
      {
        v6 = UIWindowScene.noticePresenter.getter();

        return v6;
      }

      else
      {

        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    result = [v0 parentViewController];
    if (result)
    {
      v7 = result;
      v8 = UIViewController.noticePresenter.getter();

      return v8;
    }
  }

  return result;
}

uint64_t specialized static NoticePresenter.Configuration.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = swift_unknownObjectWeakLoadStrong();
  v6 = v5;
  if (Strong)
  {
    if (v5)
    {
      type metadata accessor for UIAction(0, &_sSo13UIWindowSceneCML_0, UIWindowScene_ptr);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_11:
    v9 = 0;
    return v9 & 1;
  }

  if (v5)
  {

    goto LABEL_11;
  }

LABEL_7:
  v8 = Edge.rawValue.getter();
  if (v8 != Edge.rawValue.getter() || *(a1 + 16) != *(a2 + 16))
  {
    goto LABEL_11;
  }

  v9 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 24), *(a2 + 24)), vceqq_f64(*(a1 + 40), *(a2 + 40)))));
  return v9 & 1;
}

uint64_t type metadata accessor for NoticePresenter(uint64_t a1)
{
  result = type metadata singleton initialization cache for NoticePresenter;
  if (!type metadata singleton initialization cache for NoticePresenter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002FE818(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  NoticePresenter.passthroughWindow.setter(v1, v3);
}

uint64_t specialized NoticePresenter.shouldNotifyObservers<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  __chkstk_darwin();
  v9 = &v18 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSg_ADtMd, &_s9MusicCore6NoticeVSg_ADtMR);
  __chkstk_darwin();
  v11 = &v18 - v10;
  v13 = *(v12 + 56);
  outlined init with copy of TaskPriority?(a1, &v18 - v10, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  outlined init with copy of TaskPriority?(a2, &v11[v13], &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  v14 = *(v5 + 48);
  if (v14(v11, 1, v4) != 1)
  {
    outlined init with copy of TaskPriority?(v11, v9, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
    if (v14(&v11[v13], 1, v4) != 1)
    {
      outlined init with take of Notice(&v11[v13], v7);
      v16 = static Notice.== infix(_:_:)();
      outlined destroy of Notice(v7);
      outlined destroy of Notice(v9);
      outlined destroy of TaskPriority?(v11, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
      v15 = v16 ^ 1;
      return v15 & 1;
    }

    outlined destroy of Notice(v9);
    goto LABEL_6;
  }

  if (v14(&v11[v13], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of TaskPriority?(v11, &_s9MusicCore6NoticeVSg_ADtMd, &_s9MusicCore6NoticeVSg_ADtMR);
    v15 = 1;
    return v15 & 1;
  }

  outlined destroy of TaskPriority?(v11, &_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  v15 = 0;
  return v15 & 1;
}

char *specialized NoticePresenter.UIRootViewController.init(noticePresenter:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for UIHostingControllerSizingOptions();
  __chkstk_darwin();
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController__noticePresenter] = a1;
  v6 = &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration];
  outlined init with copy of NoticePresenter.Configuration(a2, &v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_configuration]);
  swift_beginAccess();
  swift_retain_n();
  v7 = Edge.Set.init(_:)();
  v8 = specialized EdgeInsets.init(_:length:)(v7, v6[2]);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v30 = a1;
  type metadata accessor for NoticePresenter(0);
  State.init(wrappedValue:)();
  v26 = v8;
  v27 = v10;
  v28 = v12;
  v29 = v14;
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19UIHostingControllerCy09MusicCoreB022NoticePresentationView33_D8FBFBA4851A241D976DAD2E389878C1LLVGMd, &_s7SwiftUI19UIHostingControllerCy09MusicCoreB022NoticePresentationView33_D8FBFBA4851A241D976DAD2E389878C1LLVGMR));
  *&v3[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController] = UIHostingController.init(rootView:)();
  v25.receiver = v3;
  v25.super_class = type metadata accessor for NoticePresenter.UIRootViewController();
  v16 = objc_msgSendSuper2(&v25, "initWithNibName:bundle:", 0, 0);
  v17 = OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController;
  v18 = *&v16[OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C120UIRootViewController_hostingController];
  v19 = v16;
  v20 = v18;
  static UIHostingControllerSizingOptions.intrinsicContentSize.getter();
  dispatch thunk of UIHostingController.sizingOptions.setter();

  v21 = *&v16[v17];
  v22 = v19;
  [v22 addChildViewController:v21];
  v23 = *&v16[v17];
  [v23 didMoveToParentViewController:v22];

  outlined destroy of NoticePresenter.Configuration(a2);
  return v22;
}

void specialized NoticePresenter.present(_:internalOnly:animated:)(uint64_t a1, char a2)
{
  v3 = v2;
  v48 = a1;
  v46 = type metadata accessor for DispatchTime();
  v5 = *(v46 - 8);
  __chkstk_darwin();
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = v42 - v8;
  v10 = type metadata accessor for DispatchWorkItemFlags();
  __chkstk_darwin();
  v12 = v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for Notice(0);
  v13 = *(v47 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  if ((a2 & 1) == 0 || *DeviceCapabilities.isInternalInstall.unsafeMutableAddressor() == 1)
  {
    v42[1] = v10;
    v42[2] = v12;
    v43 = v7;
    v44 = v9;
    v45 = v5;
    swift_getKeyPath();
    aBlock = v3;
    lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&lazy protocol witness table cache variable for type NoticePresenter and conformance NoticePresenter, type metadata accessor for NoticePresenter, &protocol conformance descriptor for NoticePresenter);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__willPresentHandler;
    swift_beginAccess();
    v16 = *v15;
    p_superclass = (&OBJC_METACLASS___MusicLyricsLoader + 8);
    if (*v15)
    {
      v18 = *(v15 + 8);
      v42[0] = v13;
      swift_getKeyPath();
      aBlock = v3;

      ObservationRegistrar.access<A, B>(_:keyPath:)();

      aBlock = v3;
      swift_getKeyPath();
      ObservationRegistrar.willSet<A, B>(_:keyPath:)();

      v19 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__configuration;
      swift_beginAccess();
      outlined init with copy of NoticePresenter.Configuration(v3 + v19, &aBlock);
      v16(&aBlock);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v16, v18);
      outlined init with copy of NoticePresenter.Configuration(v3 + v19, v50);
      swift_beginAccess();
      v20 = v3 + v19;
      p_superclass = &OBJC_METACLASS___MusicLyricsLoader.superclass;
      outlined assign with copy of NoticePresenter.Configuration(&aBlock, v20);
      swift_endAccess();
      NoticePresenter._configuration.didset(v50);
      outlined destroy of NoticePresenter.Configuration(v50);
      outlined destroy of NoticePresenter.Configuration(&aBlock);
      aBlock = v3;
      v13 = v42[0];
      swift_getKeyPath();
      ObservationRegistrar.didSet<A, B>(_:keyPath:)();
    }

    swift_getKeyPath();
    aBlock = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v21 = p_superclass[488];
    swift_beginAccess();
    outlined init with copy of NoticePresenter.Configuration(v21 + v3, &aBlock);
    Strong = swift_unknownObjectWeakLoadStrong();
    outlined destroy of NoticePresenter.Configuration(&aBlock);
    if (Strong)
    {
      createWindowIfNeeded #1 () in NoticePresenter.present(_:internalOnly:animated:)(v3, Strong);
    }

    swift_getKeyPath();
    aBlock = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v23 = OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow;
    v24 = *(v3 + OBJC_IVAR____TtC11MusicCoreUI15NoticePresenter__passthroughWindow);
    if (v24)
    {
      *(v24 + OBJC_IVAR____TtCC11MusicCoreUI15NoticePresenterP33_D8FBFBA4851A241D976DAD2E389878C117PassthroughWindow_canReceiveTouches) = 1;
    }

    swift_getKeyPath();
    aBlock = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v25 = *(v3 + v23);
    if (v25)
    {
      [v25 makeKeyAndVisible];
    }

    v26 = objc_opt_self();
    outlined init with copy of Notice(v48, v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v27 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = v3;
    outlined init with take of Notice(v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27);
    v29 = swift_allocObject();
    *(v29 + 16) = partial apply for closure #1 in NoticePresenter.present(_:internalOnly:animated:);
    *(v29 + 24) = v28;
    v55 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
    v56 = v29;
    aBlock = _NSConcreteStackBlock;
    v52 = 1107296256;
    v53 = thunk for @escaping @callee_guaranteed () -> ();
    v54 = &block_descriptor_90;
    v30 = _Block_copy(&aBlock);

    [v26 performWithoutAnimation:v30];
    _Block_release(v30);
    LOBYTE(v26) = swift_isEscapingClosureAtFileLocation();

    if (v26)
    {
      __break(1u);
    }

    else
    {
      v31 = v47;
      v32 = (v48 + *(v47 + 36));
      if ((v32[1] & 1) == 0)
      {
        v33 = *v32;
        v34 = [objc_allocWithZone(UINotificationFeedbackGenerator) init];
        [v34 notificationOccurred:v33];
      }

      if (*(v48 + *(v31 + 40)) == 1)
      {
        v55 = partial apply for closure #2 in NoticePresenter.present(_:internalOnly:animated:);
        v56 = v3;
        aBlock = _NSConcreteStackBlock;
        v52 = 1107296256;
        v53 = thunk for @escaping @callee_guaranteed () -> ();
        v54 = &block_descriptor_93_0;
        _Block_copy(&aBlock);
        v49[0] = _swiftEmptyArrayStorage;
        lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(&_s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWL_0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd_0, &_sSay8Dispatch0A13WorkItemFlagsVGMR_0);
        lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&_sSay8Dispatch0A13WorkItemFlagsVGSayxGSTsWL_0, &_sSay8Dispatch0A13WorkItemFlagsVGMd_0, &_sSay8Dispatch0A13WorkItemFlagsVGMR_0, &protocol conformance descriptor for [A]);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        type metadata accessor for DispatchWorkItem();
        swift_allocObject();
        v35 = DispatchWorkItem.init(flags:block:)();

        type metadata accessor for UIAction(0, &_sSo17OS_dispatch_queueCML_0, OS_dispatch_queue_ptr);
        v36 = static OS_dispatch_queue.main.getter();
        v37 = v43;
        static DispatchTime.now()();
        v38 = v44;
        + infix(_:_:)();
        v39 = *(v45 + 8);
        v40 = v37;
        v41 = v46;
        v39(v40, v46);
        OS_dispatch_queue.asyncAfter(deadline:execute:)();

        v39(v38, v41);
        swift_getKeyPath();
        __chkstk_darwin();
        v42[-2] = v3;
        v42[-1] = v35;
        aBlock = v3;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }
    }
  }
}

uint64_t sub_1002FF6E4()
{

  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NoticePresentingResolverModifier>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NoticePresentingResolverModifier>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NoticePresentingResolverModifier>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0024NoticePresentingResolverF0VGAA08_OverlayF0VyAF011WindowSceneK0VGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0024NoticePresentingResolverF0VGAA08_OverlayF0VyAF011WindowSceneK0VGGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _ViewModifier_Content<NoticePresentingResolverModifier> and conformance _ViewModifier_Content<A>, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0024NoticePresentingResolverD0VGMd, &_s7SwiftUI21_ViewModifier_ContentVy09MusicCoreB0024NoticePresentingResolverD0VGMR, &protocol conformance descriptor for _ViewModifier_Content<A>);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _OverlayModifier<WindowSceneResolver> and conformance _OverlayModifier<A>, &_s7SwiftUI16_OverlayModifierVy09MusicCoreB019WindowSceneResolverVGMd, &_s7SwiftUI16_OverlayModifierVy09MusicCoreB019WindowSceneResolverVGMR, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<_ViewModifier_Content<NoticePresentingResolverModifier>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UIWindowScene and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIWindowScene and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIWindowScene and conformance NSObject)
  {
    type metadata accessor for UIAction(255, &_sSo13UIWindowSceneCML_0, UIWindowScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIWindowScene and conformance NSObject);
  }

  return result;
}

void type metadata completion function for NoticePresenter(uint64_t a1)
{
  type metadata accessor for Notice?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObservationRegistrar();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Notice?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Notice?)
  {
    type metadata accessor for Notice(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Notice?);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11MusicCoreUI15NoticePresenterC13ConfigurationVIegl_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy56_8_0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NoticePresenter.Configuration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 56))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NoticePresenter.Configuration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1002FFB38(void *a1)
{
  type metadata accessor for ModifiedContent();
  lazy protocol witness table accessor for type NoticePresentingResolverModifier and conformance NoticePresentingResolverModifier();
  return swift_getWitnessTable();
}

unint64_t lazy protocol witness table accessor for type NoticePresentingResolverModifier and conformance NoticePresentingResolverModifier()
{
  result = lazy protocol witness table cache variable for type NoticePresentingResolverModifier and conformance NoticePresentingResolverModifier;
  if (!lazy protocol witness table cache variable for type NoticePresentingResolverModifier and conformance NoticePresentingResolverModifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NoticePresentingResolverModifier and conformance NoticePresentingResolverModifier);
  }

  return result;
}

uint64_t sub_1002FFBF0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0024NoticePresentingResolverF0VGAA08_OverlayF0VyAF011WindowSceneK0VGGMd, &_s7SwiftUI15ModifiedContentVyAA014_ViewModifier_D0Vy09MusicCoreB0024NoticePresentingResolverF0VGAA08_OverlayF0VyAF011WindowSceneK0VGGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo13UIWindowSceneCSgMd, &_sSo13UIWindowSceneCSgMR);
  lazy protocol witness table accessor for type ModifiedContent<_ViewModifier_Content<NoticePresentingResolverModifier>, _OverlayModifier<WindowSceneResolver>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type UIWindowScene? and conformance <A> A?();
  return swift_getOpaqueTypeConformance2();
}

uint64_t outlined init with take of Notice(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of Notice(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_68Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1002FFDE0()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_58(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined assign with take of Notice?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with copy of Notice?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeVSgMd, &_s9MusicCore6NoticeVSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002FFF60()
{
  v1 = type metadata accessor for Notice(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);

  v3 = v0 + v2;

  v4 = *(v1 + 20);
  v5 = type metadata accessor for Notice.Thumbnail(0);
  if (!(*(*(v5 - 8) + 48))(v0 + v2 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = type metadata accessor for Artwork();
      (*(*(v8 - 8) + 8))(v3 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v3 + *(v1 + 32)))
  {
  }

  return swift_deallocObject();
}

void partial apply for closure #1 in NoticePresenter.present(_:internalOnly:animated:)()
{
  v1 = *(type metadata accessor for Notice(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  closure #1 in NoticePresenter.present(_:internalOnly:animated:)(v2, v3);
}

uint64_t lazy protocol witness table accessor for type NoticePresenter and conformance NoticePresenter(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003001DC()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<NoticeDismissal?>>?, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<NoticeDismissal?>>?, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<NoticeDismissal?>>?, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyACyACy09MusicCoreB006NoticeG0VAA08_PaddingJ0VGAQGAQGAA21_TraitWritingModifierVyAA010TransitionO3KeyVGGAA012_EnvironmentspQ0VyAM0M9DismissalVSgGGSgALtGGAA05_FlexiJ0VGMd, &_s7SwiftUI15ModifiedContentVyAA6VStackVyAA9TupleViewVyACyAA6SpacerVAA12_FrameLayoutVG_ACyACyACyACyACy09MusicCoreB006NoticeG0VAA08_PaddingJ0VGAQGAQGAA21_TraitWritingModifierVyAA010TransitionO3KeyVGGAA012_EnvironmentspQ0VyAM0M9DismissalVSgGGSgALtGGAA05_FlexiJ0VGMR);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<NoticeDismissal?>>?, ModifiedContent<Spacer, _FrameLayout>)>> and conformance VStack<A>, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AGyAGyAGyAGyAGy09MusicCoreB006NoticeE0VAA08_PaddingJ0VGAQGAQGAA21_TraitWritingModifierVyAA010TransitionO3KeyVGGAA012_EnvironmentspQ0VyAM0M9DismissalVSgGGSgALtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA6SpacerVAA12_FrameLayoutVG_AGyAGyAGyAGyAGy09MusicCoreB006NoticeE0VAA08_PaddingJ0VGAQGAQGAA21_TraitWritingModifierVyAA010TransitionO3KeyVGGAA012_EnvironmentspQ0VyAM0M9DismissalVSgGGSgALtGGMR, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<VStack<TupleView<(ModifiedContent<Spacer, _FrameLayout>, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView, _PaddingLayout>, _PaddingLayout>, _PaddingLayout>, _TraitWritingModifier<TransitionTraitKey>>, _EnvironmentKeyWritingModifier<NoticeDismissal?>>?, ModifiedContent<Spacer, _FrameLayout>)>>, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t NoticeView.init(notice:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NoticeView(0);
  v5 = a2 + v4[5];
  *v5 = swift_getKeyPath();
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v6 = (a2 + v4[6]);
  State.init(wrappedValue:)();
  *v6 = v10;
  v6[1] = v11;
  v7 = a2 + v4[7];
  GestureState.init(wrappedValue:)();
  *v7 = v10;
  *(v7 + 8) = v11;
  *(v7 + 16) = v12;
  v8 = a2 + v4[8];
  State.init(wrappedValue:)();
  *v8 = v10;
  *(v8 + 8) = v11;
  return outlined init with take of Notice(a1, a2, type metadata accessor for Notice);
}

uint64_t EnvironmentValues.noticeDismissal.getter()
{
  lazy protocol witness table accessor for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey();
  EnvironmentValues.subscript.getter();
  return v1;
}

double key path getter for EnvironmentValues.noticeDismissal : EnvironmentValues@<D0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

double sub_10030051C@<D0>(uint64_t a1@<X8>)
{
  lazy protocol witness table accessor for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey();
  EnvironmentValues.subscript.getter();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t key path setter for EnvironmentValues.noticeDismissal : EnvironmentValues(uint64_t *a1)
{
  outlined copy of NoticeDismissal?(*a1, a1[1]);
  lazy protocol witness table accessor for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey();
  return EnvironmentValues.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey()
{
  result = lazy protocol witness table cache variable for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey;
  if (!lazy protocol witness table cache variable for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey);
  }

  return result;
}

uint64_t outlined assign with take of Notice(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NoticeView.dismiss.getter()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  __chkstk_darwin();
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for NoticeView(0) + 20);
  v6 = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  if (*(v5 + 17) == 1)
  {
    outlined copy of NoticeDismissal?(*v5, v7);
  }

  else
  {

    v9 = static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v9, &_mh_execute_header, v10, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    v11 = outlined consume of Environment<NoticeDismissal?>.Content(v6, v7, v8, 0);
    (*(v2 + 8))(v4, v1, v11);
    return v13[1];
  }

  return v6;
}

double outlined consume of Environment<NoticeDismissal?>.Content(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return outlined consume of NoticeDismissal?(a1, a2);
  }

  return result;
}

double outlined consume of NoticeDismissal?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined copy of NoticeDismissal?(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t NoticeView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v112 = a1;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMR);
  __chkstk_darwin();
  v110 = &v106 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v109 = &v106 - v4;
  v137 = type metadata accessor for DynamicTypeSize();
  v136 = *(v137 - 8);
  __chkstk_darwin();
  v135 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v134 = &v106 - v6;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSNy7SwiftUI15DynamicTypeSizeOGMd, &_sSNy7SwiftUI15DynamicTypeSizeOGMR);
  __chkstk_darwin();
  v107 = &v106 - v7;
  v132 = type metadata accessor for TapGesture();
  v131 = *(v132 - 8);
  __chkstk_darwin();
  v130 = &v106 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for NoticeView(0);
  v119 = *(v144 - 8);
  __chkstk_darwin();
  v142 = v9;
  v143 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for LocalCoordinateSpace();
  __chkstk_darwin();
  v116 = &v106 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15SequenceGestureVyAA0d5StateD0VyAA04DragD0VSbGAA06_EndedD0VyAA03TapD0VGGMd, &_s7SwiftUI15SequenceGestureVyAA0d5StateD0VyAA04DragD0VSbGAA06_EndedD0VyAA03TapD0VGGMR);
  __chkstk_darwin();
  v129 = &v106 - v11;
  v12 = type metadata accessor for NoticeView.Content(0) - 8;
  __chkstk_darwin();
  v14 = &v106 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGMR) - 8;
  __chkstk_darwin();
  v17 = &v106 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGMd, &_s7SwiftUI15ModifiedContentVyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGMR) - 8;
  __chkstk_darwin();
  v20 = &v106 - v19;
  *&v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGMR);
  __chkstk_darwin();
  v22 = &v106 - v21;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGMR);
  __chkstk_darwin();
  v24 = &v106 - v23;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA010_AnimationW0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA010_AnimationW0VySbGGMR);
  __chkstk_darwin();
  v140 = &v106 - v25;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0F0Rd__lFQOyAA15ModifiedContentVyAJyAJyAJyAJy09MusicCoreB006NoticeC0V0I033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceF0VyAA0f5StateF0VyAA04DragF0VSbGAA06_EndedF0VyAA03TapF0VGGQo_Md, &_s7SwiftUI4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0F0Rd__lFQOyAA15ModifiedContentVyAJyAJyAJyAJy09MusicCoreB006NoticeC0V0I033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceF0VyAA0f5StateF0VyAA04DragF0VSbGAA06_EndedF0VyAA03TapF0VGGQo_MR);
  v123 = *(v126 - 8);
  __chkstk_darwin();
  v120 = &v106 - v26;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE7gesture_9includingQrqd___AA11GestureMaskVtAA0J0Rd__lFQOyAA15ModifiedContentVyAMyAMyAMyAMy09MusicCoreB006NoticeC0V0M033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceJ0VyAA0j5StateJ0VyAA04DragJ0VSbGAA06_EndedJ0VyAA03TapJ0VGGQo__0nO00P0VQo_Md, &_s7SwiftUI4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAcAE7gesture_9includingQrqd___AA11GestureMaskVtAA0J0Rd__lFQOyAA15ModifiedContentVyAMyAMyAMyAMy09MusicCoreB006NoticeC0V0M033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceJ0VyAA0j5StateJ0VyAA04DragJ0VSbGAA06_EndedJ0VyAA03TapJ0VGGQo__0nO00P0VQo_MR);
  v124 = *(v127 - 8);
  __chkstk_darwin();
  v121 = &v106 - v27;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGMR);
  __chkstk_darwin();
  v125 = &v106 - v28;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGMR);
  __chkstk_darwin();
  v128 = &v106 - v29;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGA9_yA28_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGA9_yA28_GGMR);
  __chkstk_darwin();
  v138 = &v106 - v30;
  v31 = v2;
  outlined init with copy of Notice(v2, v14, type metadata accessor for Notice);
  *&v14[*(v12 + 36)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR_0);
  swift_storeEnumTagMultiPayload();
  *&v14[*(v12 + 40)] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMR);
  swift_storeEnumTagMultiPayload();
  *&v152 = 0x4041000000000000;
  _sS2dSBsWl_0();
  ScaledMetric.init(wrappedValue:)();
  *&v152 = 0x4010000000000000;
  lazy protocol witness table accessor for type CGFloat and conformance CGFloat();
  ScaledMetric.init(wrappedValue:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of Notice(v14, v17, type metadata accessor for NoticeView.Content);
  v32 = &v17[*(v15 + 44)];
  v33 = v157;
  *(v32 + 4) = v156;
  *(v32 + 5) = v33;
  *(v32 + 6) = v158;
  v34 = v153;
  *v32 = v152;
  *(v32 + 1) = v34;
  v35 = v155;
  *(v32 + 2) = v154;
  *(v32 + 3) = v35;
  v36 = &v20[*(v18 + 44)];
  static Material.regular.getter();
  LOBYTE(v18) = static Edge.Set.all.getter();
  v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMR) + 36)] = v18;
  outlined init with take of URL?(v17, v20, &_s7SwiftUI15ModifiedContentVy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGMR);
  if (one-time initialization token for extraLarge != -1)
  {
    swift_once();
  }

  v37 = static Corner.extraLarge;
  v38 = unk_10063F0A0;
  v39 = byte_10063F0A8;
  outlined init with take of URL?(v20, v22, &_s7SwiftUI15ModifiedContentVyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGMd, &_s7SwiftUI15ModifiedContentVyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGMR);
  v40 = &v22[*(v114 + 36)];
  *v40 = v37;
  *(v40 + 1) = v38;
  v40[16] = v39;
  v41 = v2 + *(v144 + 28);
  v42 = *v41;
  v43 = *(v41 + 8);
  v44 = *(v41 + 16);
  v45 = *(v41 + 24);
  LOBYTE(v148) = *v41;
  v149 = v43;
  v150 = v44;
  v151 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12GestureStateVySbGMd, &_s7SwiftUI12GestureStateVySbGMR);
  GestureState.wrappedValue.getter();
  if (v145)
  {
    v46 = 0.4;
  }

  else
  {
    v46 = 1.0;
  }

  outlined init with take of URL?(v22, v24, &_s7SwiftUI15ModifiedContentVyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGMR);
  *&v24[*(v115 + 36)] = v46;
  v47 = static Animation.easeIn(duration:)();
  LOBYTE(v148) = v42;
  v149 = v43;
  v150 = v44;
  v151 = v45;
  GestureState.wrappedValue.getter();
  v48 = v145;
  v49 = v24;
  v50 = v140;
  outlined init with take of URL?(v49, v140, &_s7SwiftUI15ModifiedContentVyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGMR);
  v51 = v50 + *(v141 + 36);
  *v51 = v47;
  *(v51 + 8) = v48;
  static CoordinateSpaceProtocol<>.local.getter();
  v52 = v129;
  DragGesture.init<A>(minimumDistance:coordinateSpace:)();
  LOBYTE(v148) = v42;
  v149 = v43;
  v150 = v44;
  v151 = v45;
  GestureState.projectedValue.getter();
  LODWORD(v116) = v145;
  v115 = v146;
  v114 = v147;
  v113 = v31;
  v53 = v143;
  v117 = type metadata accessor for NoticeView;
  outlined init with copy of Notice(v31, v143, type metadata accessor for NoticeView);
  v54 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v55 = swift_allocObject();
  v119 = type metadata accessor for NoticeView;
  outlined init with take of Notice(v53, v55 + v54, type metadata accessor for NoticeView);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI012GestureStateC0VyAA04DragC0VSbGMd, &_s7SwiftUI012GestureStateC0VyAA04DragC0VSbGMR);
  v57 = v52 + *(v56 + 44);
  *v57 = v116;
  *(v57 + 8) = v115;
  *(v57 + 16) = v114;
  v58 = (v52 + *(v56 + 48));
  *v58 = partial apply for closure #1 in NoticeView.body.getter;
  v58[1] = v55;
  v59 = v130;
  TapGesture.init(count:)();
  outlined init with copy of Notice(v31, v53, type metadata accessor for NoticeView);
  v60 = swift_allocObject();
  outlined init with take of Notice(v53, v60 + v54, type metadata accessor for NoticeView);
  v61 = swift_allocObject();
  *(v61 + 16) = partial apply for closure #2 in NoticeView.body.getter;
  *(v61 + 24) = v60;
  v62 = v133;
  v63 = v132;
  Gesture.onEnded(_:)();

  (*(v131 + 8))(v59, v63);
  static GestureMask.all.getter();
  v64 = lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
  v65 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type SequenceGesture<GestureStateGesture<DragGesture, Bool>, _EndedGesture<TapGesture>> and conformance SequenceGesture<A, B>, &_s7SwiftUI15SequenceGestureVyAA0d5StateD0VyAA04DragD0VSbGAA06_EndedD0VyAA03TapD0VGGMd, &_s7SwiftUI15SequenceGestureVyAA0d5StateD0VyAA04DragD0VSbGAA06_EndedD0VyAA03TapD0VGGMR, &protocol conformance descriptor for SequenceGesture<A, B>);
  v66 = v120;
  v67 = v141;
  v68 = v140;
  View.gesture<A>(_:including:)();
  outlined destroy of TaskPriority?(v52, &_s7SwiftUI15SequenceGestureVyAA0d5StateD0VyAA04DragD0VSbGAA06_EndedD0VyAA03TapD0VGGMd, &_s7SwiftUI15SequenceGestureVyAA0d5StateD0VyAA04DragD0VSbGAA06_EndedD0VyAA03TapD0VGGMR);
  outlined destroy of TaskPriority?(v68, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA010_AnimationW0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA010_AnimationW0VySbGGMR);
  v69 = v113;
  v70 = v143;
  outlined init with copy of Notice(v113, v143, v117);
  v71 = swift_allocObject();
  outlined init with take of Notice(v70, v71 + v54, v119);
  type metadata accessor for Notice(0);
  v148 = v67;
  v149 = v62;
  v150 = v64;
  v151 = v65;
  swift_getOpaqueTypeConformance2();
  lazy protocol witness table accessor for type NoticeView.Content and conformance NoticeView.Content(&lazy protocol witness table cache variable for type Notice and conformance Notice, type metadata accessor for Notice, &protocol conformance descriptor for Notice);
  v72 = v121;
  v73 = v126;
  View.onChange<A>(of:initial:_:)();

  (*(v123 + 8))(v66, v73);
  v74 = v125;
  v75 = &v125[*(v118 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMR);
  static ContentTransition.opacity.getter();
  *v75 = swift_getKeyPath();
  (*(v124 + 32))(v74, v72, v127);
  v76 = (v69 + *(v144 + 24));
  v77 = *v76;
  v78 = v76[1];
  v148 = v77;
  v149 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  State.wrappedValue.getter();
  v79 = v145;
  static UnitPoint.center.getter();
  v81 = v80;
  v83 = v82;
  v84 = v74;
  v85 = v128;
  outlined init with take of URL?(v84, v128, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGMR);
  v86 = (v85 + *(v122 + 36));
  *v86 = v79;
  v86[1] = v79;
  v86[2] = v81;
  v86[3] = v83;
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v87 = Animation.delay(_:)();

  v88 = v138;
  v89 = &v138[*(v139 + 36)];
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI18_AnimationModifierVy9MusicCore6NoticeVGMd, &_s7SwiftUI18_AnimationModifierVy9MusicCore6NoticeVGMR);
  outlined init with copy of Notice(v69, v89 + *(v90 + 36), type metadata accessor for Notice);
  *v89 = v87;
  outlined init with take of URL?(v85, v88, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGMR);
  v91 = v136;
  v92 = *(v136 + 104);
  v93 = v134;
  v94 = v137;
  v92(v134, enum case for DynamicTypeSize.xSmall(_:), v137);
  v95 = v135;
  v92(v135, enum case for DynamicTypeSize.accessibility2(_:), v94);
  lazy protocol witness table accessor for type NoticeView.Content and conformance NoticeView.Content(&lazy protocol witness table cache variable for type DynamicTypeSize and conformance DynamicTypeSize, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v97 = v93;
    v98 = *(v91 + 32);
    v99 = v109;
    v98(v109, v97, v94);
    v100 = v111;
    v98((v99 + *(v111 + 48)), v95, v94);
    v101 = v110;
    outlined init with copy of TaskPriority?(v99, v110, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMR);
    v102 = *(v100 + 48);
    v103 = v107;
    v98(v107, v101, v94);
    v104 = *(v91 + 8);
    v104(v101 + v102, v94);
    outlined init with take of URL?(v99, v101, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMd, &_s7SwiftUI15DynamicTypeSizeO5lower_AC5uppertMR);
    v98((v103 + *(v108 + 36)), (v101 + *(v100 + 48)), v94);
    v104(v101, v94);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect>, _AnimationModifier<Notice>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ClosedRange<DynamicTypeSize> and conformance ClosedRange<A>, &_sSNy7SwiftUI15DynamicTypeSizeOGMd, &_sSNy7SwiftUI15DynamicTypeSizeOGMR, &protocol conformance descriptor for ClosedRange<A>);
    v105 = v138;
    View.dynamicTypeSize<A>(_:)();
    outlined destroy of TaskPriority?(v103, &_sSNy7SwiftUI15DynamicTypeSizeOGMd, &_sSNy7SwiftUI15DynamicTypeSizeOGMR);
    return outlined destroy of TaskPriority?(v105, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGA9_yA28_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGA9_yA28_GGMR);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *closure #1 in NoticeView.body.getter(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Notice(0);
  if ((*(a4 + *(result + 10)) & 1) != 0 || *(a4 + *(result + 8)) && (type metadata accessor for NoticeView(0), __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR), result = State.wrappedValue.getter(), (v7 & 1) == 0))
  {
    *a2 = 1;
  }

  return result;
}

double closure #2 in NoticeView.body.getter(uint64_t a1)
{
  type metadata accessor for NoticeView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.wrappedValue.getter();
  if ((v5 & 1) == 0)
  {
    State.wrappedValue.setter();
    v2 = *(a1 + *(type metadata accessor for Notice(0) + 32));
    if (v2)
    {
      v2();
    }
  }

  if (*(a1 + *(type metadata accessor for Notice(0) + 40)) == 1)
  {
    NoticeView.dismiss.getter();
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
      Binding.wrappedValue.setter();
    }
  }

  return result;
}

void closure #3 in NoticeView.body.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(type metadata accessor for NoticeView(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  v10 = a3;
  withAnimation<A>(_:_:)();

  _sSo17OS_dispatch_queueCMa_0();
  v6 = static OS_dispatch_queue.main.getter();
  outlined init with copy of Notice(a3, &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for NoticeView);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  outlined init with take of Notice(&v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)], v8 + v7, type metadata accessor for NoticeView);
  OS_dispatch_queue.asyncAfter(_:block:)(partial apply for closure #2 in closure #3 in NoticeView.body.getter, v8, 0.215);
}

double closure #2 in closure #3 in NoticeView.body.getter(uint64_t a1)
{
  static Animation.interpolatingSpring(mass:stiffness:damping:initialVelocity:)();
  withAnimation<A>(_:_:)();

  return result;
}

uint64_t closure #1 in closure #3 in NoticeView.body.getter(double a1)
{
  type metadata accessor for NoticeView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySdGMd, &_s7SwiftUI5StateVySdGMR);
  return State.wrappedValue.setter();
}

uint64_t NoticeView.Content.dynamicTypeSize.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR_0);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = type metadata accessor for NoticeView.Content(0);
  outlined init with copy of TaskPriority?(v1 + *(v9 + 28), v8, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMd_0, &_s7SwiftUI11EnvironmentV7ContentOyAA15DynamicTypeSizeO_GMR_0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for DynamicTypeSize();
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  else
  {
    v12 = static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t NoticeView.Content.layoutDirection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EnvironmentValues();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMR);
  __chkstk_darwin();
  v8 = &v14 - v7;
  v9 = type metadata accessor for NoticeView.Content(0);
  outlined init with copy of TaskPriority?(v1 + *(v9 + 32), v8, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMd, &_s7SwiftUI11EnvironmentV7ContentOyAA15LayoutDirectionO_GMR);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = type metadata accessor for LayoutDirection();
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  else
  {
    v12 = static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)(v12, &_mh_execute_header, v13, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, _swiftEmptyArrayStorage);

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

__n128 NoticeView.Content.body.getter@<Q0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAKyAA5ImageVAGyAGy010_MusicKit_aB007ArtworkJ0V0k4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAQ06BordereQ0ASLLVGGAKyAGy05MedianB0016CircularProgressE0VAA12_FrameLayoutVGAA05EmptyE0VGGGAA022_EnvironmentKeyWritingQ0VyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVG_AA6VStackVyAEyAGyAA4TextVA10_ySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr0N8Graphics7CGFloatVFQOyAGyAIyAKyAKyA31_A31_GA31_GGA14_G_Qo_A33_GtGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAKyAA5ImageVAGyAGy010_MusicKit_aB007ArtworkJ0V0k4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAQ06BordereQ0ASLLVGGAKyAGy05MedianB0016CircularProgressE0VAA12_FrameLayoutVGAA05EmptyE0VGGGAA022_EnvironmentKeyWritingQ0VyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVG_AA6VStackVyAEyAGyAA4TextVA10_ySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr0N8Graphics7CGFloatVFQOyAGyAIyAKyAKyA31_A31_GA31_GGA14_G_Qo_A33_GtGGtGGMR);
  __chkstk_darwin();
  v4 = &v15 - v3;
  type metadata accessor for DynamicTypeSize();
  __chkstk_darwin();
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Notice(0);
  __chkstk_darwin();
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Notice(v1, v8, type metadata accessor for Notice);
  NoticeView.Content.dynamicTypeSize.getter(v6);
  specialized NoticeView.Content.DynamicSizeSpecs.init(notice:typeSize:)(v8, v6, v16);
  if (NoticeView.Content.canOutdentMessage.getter())
  {
    v9 = static VerticalAlignment.top.getter();
  }

  else
  {
    v9 = static VerticalAlignment.center.getter();
  }

  v10 = v17;
  *v4 = v9;
  *(v4 + 1) = v10;
  v4[16] = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA5GroupVyAA012_ConditionalJ0VyAOyAA5ImageVAKyAKy010_MusicKit_aB007ArtworkM0V0n4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAU06BorderdT0AWLLVGGAOyAKy05MediaqB0016CircularProgressD0VAA06_FrameG0VGAA05EmptyD0VGGGAA022_EnvironmentKeyWritingT0VyAA4FontVSgGGAA016_ForegroundStyleT0VyAA22HierarchicalShapeStyleVGGAA010_FlexFrameG0VGAA012_AspectRatioG0VG_AA6VStackVyAIyAKyAA4TextVA14_ySiSgGGSg_AKyAA0D0PAAE15bodyHeadOutdentyQr0Q8Graphics7CGFloatVFQOyAKyAMyAOyAOyA35_A35_GA35_GGA18_G_Qo_A37_GtGGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_HStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAKyAKyAKyAA5GroupVyAA012_ConditionalJ0VyAOyAA5ImageVAKyAKy010_MusicKit_aB007ArtworkM0V0n4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAU06BorderdT0AWLLVGGAOyAKy05MediaqB0016CircularProgressD0VAA06_FrameG0VGAA05EmptyD0VGGGAA022_EnvironmentKeyWritingT0VyAA4FontVSgGGAA016_ForegroundStyleT0VyAA22HierarchicalShapeStyleVGGAA010_FlexFrameG0VGAA012_AspectRatioG0VG_AA6VStackVyAIyAKyAA4TextVA14_ySiSgGGSg_AKyAA0D0PAAE15bodyHeadOutdentyQr0Q8Graphics7CGFloatVFQOyAKyAMyAOyAOyA35_A35_GA35_GGA18_G_Qo_A37_GtGGtGGMR);
  closure #1 in NoticeView.Content.body.getter(v1, v16, &v4[*(v11 + 44)]);
  v12 = static Edge.Set.all.getter();
  outlined init with take of URL?(v4, a1, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAKyAA5ImageVAGyAGy010_MusicKit_aB007ArtworkJ0V0k4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAQ06BordereQ0ASLLVGGAKyAGy05MedianB0016CircularProgressE0VAA12_FrameLayoutVGAA05EmptyE0VGGGAA022_EnvironmentKeyWritingQ0VyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVG_AA6VStackVyAEyAGyAA4TextVA10_ySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr0N8Graphics7CGFloatVFQOyAGyAIyAKyAKyA31_A31_GA31_GGA14_G_Qo_A33_GtGGtGGMd, &_s7SwiftUI6HStackVyAA9TupleViewVyAA15ModifiedContentVyAGyAGyAGyAA5GroupVyAA012_ConditionalG0VyAKyAA5ImageVAGyAGy010_MusicKit_aB007ArtworkJ0V0k4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAQ06BordereQ0ASLLVGGAKyAGy05MedianB0016CircularProgressE0VAA12_FrameLayoutVGAA05EmptyE0VGGGAA022_EnvironmentKeyWritingQ0VyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVG_AA6VStackVyAEyAGyAA4TextVA10_ySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr0N8Graphics7CGFloatVFQOyAGyAIyAKyAKyA31_A31_GA31_GGA14_G_Qo_A33_GtGGtGGMR);
  v13 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAKyAA5ImageVACyACy010_MusicKit_aB007ArtworkJ0V0k4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAQ06BordergQ0ASLLVGGAKyACy05MedianB0016CircularProgressG0VAA12_FrameLayoutVGAA05EmptyG0VGGGAA022_EnvironmentKeyWritingQ0VyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVG_AA6VStackVyAGyACyAA4TextVA10_ySiSgGGSg_ACyAA0G0PAAE15bodyHeadOutdentyQr0N8Graphics7CGFloatVFQOyACyAIyAKyAKyA31_A31_GA31_GGA14_G_Qo_A33_GtGGtGGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA6HStackVyAA9TupleViewVyACyACyACyACyAA5GroupVyAA012_ConditionalD0VyAKyAA5ImageVACyACy010_MusicKit_aB007ArtworkJ0V0k4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAQ06BordergQ0ASLLVGGAKyACy05MedianB0016CircularProgressG0VAA12_FrameLayoutVGAA05EmptyG0VGGGAA022_EnvironmentKeyWritingQ0VyAA4FontVSgGGAA016_ForegroundStyleQ0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVG_AA6VStackVyAGyACyAA4TextVA10_ySiSgGGSg_ACyAA0G0PAAE15bodyHeadOutdentyQr0N8Graphics7CGFloatVFQOyACyAIyAKyAKyA31_A31_GA31_GGA14_G_Qo_A33_GtGGtGGAA14_PaddingLayoutVGMR) + 36);
  *v13 = v12;
  result = v16[0];
  *(v13 + 24) = v16[1];
  *(v13 + 8) = result;
  *(v13 + 40) = 0;
  return result;
}

BOOL NoticeView.Content.canOutdentMessage.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd_0, &_s9MusicCore6NoticeV9ThumbnailOSgMR_0);
  __chkstk_darwin();
  v3 = &v17 - v2;
  v4 = type metadata accessor for DynamicTypeSize();
  v5 = *(v4 - 8);
  __chkstk_darwin();
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  NoticeView.Content.dynamicTypeSize.getter(v7);
  v8 = DynamicTypeSize.isAccessibilitySize.getter();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = type metadata accessor for Notice(0);
    v10 = (v1 + *(v9 + 28));
    v11 = v10[1];
    if (v11)
    {
      v12 = *v10 & 0xFFFFFFFFFFFFLL;
      if ((v11 & 0x2000000000000000) != 0 ? HIBYTE(v11) & 0xF : v12)
      {
        outlined init with copy of TaskPriority?(v1 + *(v9 + 20), v3, &_s9MusicCore6NoticeV9ThumbnailOSgMd_0, &_s9MusicCore6NoticeV9ThumbnailOSgMR_0);
        v14 = type metadata accessor for Notice.Thumbnail(0);
        if ((*(*(v14 - 8) + 48))(v3, 1, v14) != 1)
        {
          v16 = swift_getEnumCaseMultiPayload() == 1;
          outlined destroy of Notice.Thumbnail(v3, type metadata accessor for Notice.Thumbnail);
          return v16;
        }

        outlined destroy of TaskPriority?(v3, &_s9MusicCore6NoticeV9ThumbnailOSgMd_0, &_s9MusicCore6NoticeV9ThumbnailOSgMR_0);
      }
    }
  }

  return 0;
}

uint64_t closure #1 in NoticeView.Content.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a2;
  v37 = a3;
  v33 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAGyAA5GroupVyAA012_ConditionalG0VyAYyA2IGAIGGAKyAA4FontVSgGG_Qo_AMGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAGyAA5GroupVyAA012_ConditionalG0VyAYyA2IGAIGGAKyAA4FontVSgGG_Qo_AMGtGGMR);
  __chkstk_darwin();
  v35 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v33 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGMR) - 8;
  __chkstk_darwin();
  v9 = &v33 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGMR) - 8;
  __chkstk_darwin();
  v12 = &v33 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMR) - 8;
  __chkstk_darwin();
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v16 = &v33 - v15;
  __chkstk_darwin();
  v18 = &v33 - v17;
  closure #1 in closure #1 in NoticeView.Content.body.getter(a1, v9);
  static Font.subheadline.getter();
  static Font.Weight.semibold.getter();
  v19 = Font.weight(_:)();

  KeyPath = swift_getKeyPath();
  v21 = &v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGMR) + 36)];
  *v21 = KeyPath;
  v21[1] = v19;
  *&v9[*(v7 + 44)] = static HierarchicalShapeStyle.primary.getter();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  outlined init with take of URL?(v9, v12, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGMR);
  v22 = &v12[*(v10 + 44)];
  v23 = v43;
  *(v22 + 4) = v42;
  *(v22 + 5) = v23;
  *(v22 + 6) = v44;
  v24 = v39;
  *v22 = v38;
  *(v22 + 1) = v24;
  v25 = v41;
  *(v22 + 2) = v40;
  *(v22 + 3) = v25;
  outlined init with take of URL?(v12, v16, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGMR);
  v26 = &v16[*(v13 + 44)];
  *v26 = 0x3FF0000000000000;
  *(v26 + 4) = 0;
  outlined init with take of URL?(v16, v18, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMR);
  *v6 = static HorizontalAlignment.leading.getter();
  *(v6 + 1) = 0;
  v6[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AKyAA0D0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAKyAA5GroupVyAA012_ConditionalJ0VyA1_yA2MGAMGGAOyAA4FontVSgGG_Qo_AQGtGGMd, &_s7SwiftUI13_VariadicViewO4TreeVy_AA13_VStackLayoutVAA05TupleD0VyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AKyAA0D0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAKyAA5GroupVyAA012_ConditionalJ0VyA1_yA2MGAMGGAOyAA4FontVSgGG_Qo_AQGtGGMR);
  closure #2 in closure #1 in NoticeView.Content.body.getter(v33, v36, &v6[*(v27 + 44)]);
  v28 = v34;
  outlined init with copy of TaskPriority?(v18, v34, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMR);
  v29 = v35;
  outlined init with copy of TaskPriority?(v6, v35, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAGyAA5GroupVyAA012_ConditionalG0VyAYyA2IGAIGGAKyAA4FontVSgGG_Qo_AMGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAGyAA5GroupVyAA012_ConditionalG0VyAYyA2IGAIGGAKyAA4FontVSgGG_Qo_AMGtGGMR);
  v30 = v37;
  outlined init with copy of TaskPriority?(v28, v37, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMR);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVG_AA6VStackVyAA05TupleW0VyACyAA4TextVA6_ySiSgGGSg_ACyAA0W0PAAE15bodyHeadOutdentyQr0K8Graphics7CGFloatVFQOyACyAEyAGyAGyA29_A29_GA29_GGA10_G_Qo_A31_GtGGtMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVG_AA6VStackVyAA05TupleW0VyACyAA4TextVA6_ySiSgGGSg_ACyAA0W0PAAE15bodyHeadOutdentyQr0K8Graphics7CGFloatVFQOyACyAEyAGyAGyA29_A29_GA29_GGA10_G_Qo_A31_GtGGtMR);
  outlined init with copy of TaskPriority?(v29, v30 + *(v31 + 48), &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAGyAA5GroupVyAA012_ConditionalG0VyAYyA2IGAIGGAKyAA4FontVSgGG_Qo_AMGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAGyAA5GroupVyAA012_ConditionalG0VyAYyA2IGAIGGAKyAA4FontVSgGG_Qo_AMGtGGMR);
  outlined destroy of TaskPriority?(v6, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAGyAA5GroupVyAA012_ConditionalG0VyAYyA2IGAIGGAKyAA4FontVSgGG_Qo_AMGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAGyAA5GroupVyAA012_ConditionalG0VyAYyA2IGAIGGAKyAA4FontVSgGG_Qo_AMGtGGMR);
  outlined destroy of TaskPriority?(v18, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMR);
  outlined destroy of TaskPriority?(v29, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAGyAA5GroupVyAA012_ConditionalG0VyAYyA2IGAIGGAKyAA4FontVSgGG_Qo_AMGtGGMd, &_s7SwiftUI6VStackVyAA9TupleViewVyAA15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_AGyAA0E0PAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAGyAA5GroupVyAA012_ConditionalG0VyAYyA2IGAIGGAKyAA4FontVSgGG_Qo_AMGtGGMR);
  return outlined destroy of TaskPriority?(v28, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5GroupVyAA012_ConditionalD0VyAGyAA5ImageVACyACy010_MusicKit_aB007ArtworkG0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGAGyACy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VGGGAA022_EnvironmentKeyWritingN0VyAA4FontVSgGGAA016_ForegroundStyleN0VyAA22HierarchicalShapeStyleVGGAA16_FlexFrameLayoutVGAA18_AspectRatioLayoutVGMR);
}

uint64_t closure #1 in closure #1 in NoticeView.Content.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyK0V_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyK0V_GMR);
  __chkstk_darwin();
  v4 = &v46 - v3;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyJ0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyJ0VGMR);
  __chkstk_darwin();
  v6 = &v46 - v5;
  v50 = type metadata accessor for CircularProgressView.LineStyle();
  v48 = *(v50 - 8);
  __chkstk_darwin();
  v49 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGMR);
  __chkstk_darwin();
  v51 = &v46 - v9;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV0e4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG010BorderViewL0AILLVGMd, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV0e4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG010BorderViewL0AILLVGMR);
  __chkstk_darwin();
  v54 = &v46 - v10;
  v55 = type metadata accessor for Artwork();
  v53 = *(v55 - 8);
  __chkstk_darwin();
  v47 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v60 = &v46 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyACyAA5ImageVAA08ModifiedD0VyAIy010_MusicKit_aB007ArtworkF0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGACyAIy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyACyAA5ImageVAA08ModifiedD0VyAIy010_MusicKit_aB007ArtworkF0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVGGACyAIy05MediakB0016CircularProgressW0VAA12_FrameLayoutVGAA05EmptyW0VG_GMR);
  __chkstk_darwin();
  v15 = &v46 - v14;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentV7StorageOyAA5ImageVAA08ModifiedD0VyAIy010_MusicKit_aB007ArtworkF0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVG_GMd, &_s7SwiftUI19_ConditionalContentV7StorageOyAA5ImageVAA08ModifiedD0VyAIy010_MusicKit_aB007ArtworkF0V0h4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAM010BorderViewN0AOLLVG_GMR);
  __chkstk_darwin();
  v58 = (&v46 - v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGy010_MusicKit_aB007ArtworkE0V0g4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK010BorderViewM0AMLLVGGMd, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGy010_MusicKit_aB007ArtworkE0V0g4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK010BorderViewM0AMLLVGGMR);
  __chkstk_darwin();
  v59 = &v46 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd_0, &_s9MusicCore6NoticeV9ThumbnailOSgMR_0);
  __chkstk_darwin();
  v20 = (&v46 - v19);
  v21 = *(type metadata accessor for Notice(0) + 20);
  v52 = a1;
  outlined init with copy of TaskPriority?(a1 + v21, v20, &_s9MusicCore6NoticeV9ThumbnailOSgMd_0, &_s9MusicCore6NoticeV9ThumbnailOSgMR_0);
  v22 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v22 - 8) + 48))(v20, 1, v22) == 1)
  {
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<CircularProgressView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v23 = &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyJ0VGMd;
    v24 = &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyJ0VGMR;
    outlined init with copy of TaskPriority?(v6, v15, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyJ0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyJ0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    v25 = v6;
LABEL_9:
    v41 = v23;
    v42 = v24;
    return outlined destroy of TaskPriority?(v25, v41, v42);
  }

  v46 = v15;
  v56 = v17;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    *v58 = *v20;
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>();

    v40 = v59;
    _ConditionalContent<>.init(storage:)();
    v23 = &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGy010_MusicKit_aB007ArtworkE0V0g4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK010BorderViewM0AMLLVGGMd;
    v24 = &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGy010_MusicKit_aB007ArtworkE0V0g4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK010BorderViewM0AMLLVGGMR;
    outlined init with copy of TaskPriority?(v40, v46, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGy010_MusicKit_aB007ArtworkE0V0g4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK010BorderViewM0AMLLVGGMd, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGy010_MusicKit_aB007ArtworkE0V0g4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK010BorderViewM0AMLLVGGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();

    v25 = v40;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    static Color.white.getter();
    (*(v48 + 104))(v49, enum case for CircularProgressView.LineStyle.round(_:), v50);
    LOBYTE(v65) = 1;
    v43 = v51;
    CircularProgressView.init(value:trackColor:lineWidth:lineStyle:)();
    static Alignment.center.getter();
    _FrameLayout.init(width:height:alignment:)();
    v44 = (v43 + *(v8 + 36));
    v45 = v66;
    *v44 = v65;
    v44[1] = v45;
    v44[2] = v67;
    outlined init with copy of TaskPriority?(v43, v4, &_s7SwiftUI15ModifiedContentVy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type ModifiedContent<CircularProgressView, _FrameLayout> and conformance <> ModifiedContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined init with copy of TaskPriority?(v6, v46, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyJ0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyJ0VGMR);
    swift_storeEnumTagMultiPayload();
    lazy protocol witness table accessor for type _ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>> and conformance <> _ConditionalContent<A, B>();
    lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView> and conformance <> _ConditionalContent<A, B>();
    _ConditionalContent<>.init(storage:)();
    outlined destroy of TaskPriority?(v6, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyJ0VGMd, &_s7SwiftUI19_ConditionalContentVyAA08ModifiedD0Vy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGAA05EmptyJ0VGMR);
    v25 = v43;
    v41 = &_s7SwiftUI15ModifiedContentVy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGMd;
    v42 = &_s7SwiftUI15ModifiedContentVy09MediaCoreB020CircularProgressViewVAA12_FrameLayoutVGMR;
    return outlined destroy of TaskPriority?(v25, v41, v42);
  }

  v62 = v13;
  v27 = v53;
  v28 = v60;
  v29 = v55;
  (*(v53 + 32))(v60, v20, v55);
  (*(v27 + 16))(v47, v28, v29);
  type metadata accessor for NoticeView.Content(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVySdGMd, &_s7SwiftUI12ScaledMetricVySdGMR);
  ScaledMetric.wrappedValue.getter();
  v30 = v54;
  ArtworkImage.init(_:height:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  ScaledMetric.wrappedValue.getter();
  v31 = v65;
  v32 = v30 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV0e4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI15ModifiedContentVy010_MusicKit_aB012ArtworkImageV0e4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGMR) + 36);
  *v32 = v31;
  *(v32 + 8) = -1;
  *(v32 + 16) = 0;
  if (one-time initialization token for artwork != -1)
  {
    swift_once();
  }

  v33 = static Border.artwork;
  v34 = qword_10063F0B8;
  v35 = byte_10063F0C0;
  ScaledMetric.wrappedValue.getter();
  v36 = v65;
  v37 = v30 + *(v61 + 36);
  *v37 = v33;
  *(v37 + 8) = v34;
  *(v37 + 16) = v35;
  *(v37 + 24) = v36;
  *(v37 + 32) = -1;
  *(v37 + 40) = 0;
  outlined init with copy of TaskPriority?(v30, v58, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV0e4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG010BorderViewL0AILLVGMd, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV0e4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG010BorderViewL0AILLVGMR);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier> and conformance <> ModifiedContent<A, B>();

  v38 = v59;
  _ConditionalContent<>.init(storage:)();
  outlined init with copy of TaskPriority?(v38, v46, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGy010_MusicKit_aB007ArtworkE0V0g4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK010BorderViewM0AMLLVGGMd, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGy010_MusicKit_aB007ArtworkE0V0g4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK010BorderViewM0AMLLVGGMR);
  swift_storeEnumTagMultiPayload();
  lazy protocol witness table accessor for type _ConditionalContent<Image, ModifiedContent<ModifiedContent<ArtworkImage, CornerRadiusModifier>, BorderViewModifier>> and conformance <> _ConditionalContent<A, B>();
  lazy protocol witness table accessor for type _ConditionalContent<ModifiedContent<CircularProgressView, _FrameLayout>, EmptyView> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  outlined destroy of TaskPriority?(v38, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGy010_MusicKit_aB007ArtworkE0V0g4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK010BorderViewM0AMLLVGGMd, &_s7SwiftUI19_ConditionalContentVyAA5ImageVAA08ModifiedD0VyAGy010_MusicKit_aB007ArtworkE0V0g4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAK010BorderViewM0AMLLVGGMR);
  outlined destroy of TaskPriority?(v30, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV0e4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG010BorderViewL0AILLVGMd, &_s7SwiftUI15ModifiedContentVyACy010_MusicKit_aB012ArtworkImageV0e4CoreB020CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAG010BorderViewL0AILLVGMR);
  return (*(v27 + 8))(v60, v29);
}

void closure #2 in closure #1 in NoticeView.Content.body.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v57 = a2;
  v63 = a3;
  v64 = type metadata accessor for Font.Leading();
  v61 = *(v64 - 8);
  __chkstk_darwin();
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalK0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_Md, &_s7SwiftUI4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyAA15ModifiedContentVyAA5GroupVyAA012_ConditionalK0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_MR);
  v74 = *(v6 - 8);
  v75 = v6;
  __chkstk_darwin();
  v73 = &v57 - v7;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMR);
  __chkstk_darwin();
  v77 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v70 = &v57 - v9;
  __chkstk_darwin();
  v76 = &v57 - v10;
  v11 = *(type metadata accessor for Notice(0) + 28);
  v71 = a1;
  v12 = (a1 + v11);
  v13 = v12[1];
  if (v13)
  {
    *&v79 = *v12;
    *(&v79 + 1) = v13;
    _sS2SSysWl_0();

    v14 = Text.init<A>(_:)();
    v16 = v15;
    v18 = v17;
    static Font.footnote.getter();
    v19 = Text.font(_:)();
    v21 = v20;
    v23 = v22;

    outlined consume of Text.Storage(v14, v16, v18 & 1);

    LODWORD(v79) = static HierarchicalShapeStyle.secondary.getter();
    v24 = Text.foregroundStyle<A>(_:)();
    v26 = v25;
    LOBYTE(v14) = v27;
    v29 = v28;
    outlined consume of Text.Storage(v19, v21, v23 & 1);

    KeyPath = swift_getKeyPath();
    v69 = v24;
    v68 = v26;
    v65 = v14 & 1;
    outlined copy of Text.Storage(v24, v26, v14 & 1);
    v67 = v29;

    v66 = KeyPath;

    v62 = 2;
  }

  else
  {
    v69 = 0;
    v68 = 0;
    v65 = 0;
    v67 = 0;
    v66 = 0;
    v62 = 0;
  }

  closure #1 in closure #2 in closure #1 in NoticeView.Content.body.getter(v71, &v79);
  v78 = *(&v79 + 1);
  v31 = v79;
  v32 = v81;
  v59 = v80;
  v58 = v82;
  v33 = v83;
  static Font.subheadline.getter();
  v34 = v61;
  v35 = v64;
  (*(v61 + 104))(v5, enum case for Font.Leading.tight(_:), v64);
  Font.leading(_:)();

  v36 = v5;
  v37 = v32;
  v38 = v59;
  v39 = v35;
  v40 = v58;
  (*(v34 + 8))(v36, v39);
  static Font.Weight.semibold.getter();
  v41 = Font.weight(_:)();

  v42 = swift_getKeyPath();
  v90 = v33;
  v60 = v31;
  *&v79 = v31;
  *(&v79 + 1) = v78;
  v80 = v38;
  v81 = v37;
  v61 = v37;
  v82 = v40;
  LODWORD(v64) = v33;
  v83 = v33;
  v84 = v88;
  v85 = v89;
  v86 = v42;
  v87 = v41;
  if (NoticeView.Content.canOutdentMessage.getter())
  {
    type metadata accessor for NoticeView.Content(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVySdGMd, &_s7SwiftUI12ScaledMetricVySdGMR);
    ScaledMetric.wrappedValue.getter();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4TextVAIGAIGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyAA5GroupVyAA012_ConditionalD0VyAGyAA4TextVAIGAIGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<Group<_ConditionalContent<_ConditionalContent<Text, Text>, Text>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  v43 = v73;
  View.bodyHeadOutdent(_:)();
  outlined consume of _ConditionalContent<_ConditionalContent<Text, Text>, Text>.Storage(v60, v78, v38, v61, v40, v64);

  v44 = swift_getKeyPath();
  v45 = v70;
  (*(v74 + 32))(v70, v43, v75);
  v46 = v45 + *(v72 + 36);
  *v46 = v44;
  *(v46 + 8) = 4;
  *(v46 + 16) = 0;
  v47 = v76;
  outlined init with take of URL?(v45, v76, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMR);
  v48 = v77;
  outlined init with copy of TaskPriority?(v47, v77, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMR);
  v49 = v69;
  v50 = v63;
  v51 = v68;
  *v63 = v69;
  v50[1] = v51;
  v52 = v65;
  v53 = v67;
  v50[2] = v65;
  v50[3] = v53;
  v54 = v66;
  v55 = v62;
  v50[4] = v66;
  v50[5] = v55;
  *(v50 + 48) = 0;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_ACyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAUyA2EGAEGGAGyAA4FontVSgGG_Qo_AIGtMd, &_s7SwiftUI15ModifiedContentVyAA4TextVAA30_EnvironmentKeyWritingModifierVySiSgGGSg_ACyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAUyA2EGAEGGAGyAA4FontVSgGG_Qo_AIGtMR);
  outlined init with copy of TaskPriority?(v48, v50 + *(v56 + 48), &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMR);
  outlined copy of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?(v49, v51, v52, v53);
  outlined consume of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?(v49, v51, v52, v53, v54);
  outlined destroy of TaskPriority?(v47, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMR);
  outlined destroy of TaskPriority?(v48, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE15bodyHeadOutdentyQr12CoreGraphics7CGFloatVFQOyACyAA5GroupVyAA012_ConditionalD0VyAMyAA4TextVAOGAOGGAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGG_Qo_ATySiSgGGMR);
  outlined consume of ModifiedContent<Text, _EnvironmentKeyWritingModifier<Int?>>?(v49, v51, v52, v53, v54);
}

void closure #1 in closure #2 in closure #1 in NoticeView.Content.body.getter(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v130 = a2;
  v3 = type metadata accessor for Locale.Language();
  v4 = *(v3 - 8);
  __chkstk_darwin();
  v128 = &v122[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for LayoutDirection();
  v129 = *(v6 - 8);
  __chkstk_darwin();
  v8 = &v122[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v10 = &v122[-v9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15DynamicTypeSizeOSgMd, &_s7SwiftUI15DynamicTypeSizeOSgMR);
  __chkstk_darwin();
  v12 = &v122[-v11];
  v13 = type metadata accessor for Notice(0);
  if (*(a1 + *(v13 + 32)))
  {
    v126 = v3;
    NoticeView.Content.dynamicTypeSize.getter(v12);
    v14 = type metadata accessor for DynamicTypeSize();
    (*(*(v14 - 8) + 56))(v12, 0, 1, v14);
    v15 = UIContentSizeCategory.init(_:)();
    v16 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory:v15];

    v17 = objc_opt_self();
    v18 = v16;
    v19 = [v17 preferredFontDescriptorWithTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v18];
    v20 = [v19 fontDescriptorWithSymbolicTraits:32770];

    v127 = v4;
    if (v20)
    {

      v21 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];
    }

    else
    {
      v21 = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleSubheadline compatibleWithTraitCollection:v18];
      v20 = v18;
    }

    v22 = v21;

    v23 = [objc_opt_self() configurationWithFont:v22 scale:1];
    v24 = String._bridgeToObjectiveC()();
    v25 = [objc_opt_self() systemImageNamed:v24 withConfiguration:v23];

    if (v25)
    {
      v26 = [v25 imageWithRenderingMode:2];

      v27 = v127;
      if (v26)
      {
        NoticeView.Content.layoutDirection.getter(v10);
        v28 = v129;
        (v129)[13](v8, enum case for LayoutDirection.rightToLeft(_:), v6);
        v29 = static LayoutDirection.== infix(_:_:)();
        v30 = v28[1];
        v30(v8, v6);
        v30(v10, v6);
        v125 = v26;
        if (v29)
        {
          v31 = objc_opt_self();
          v32 = (a1 + *(v13 + 24));
          v34 = *v32;
          v33 = v32[1];
          v35 = String._bridgeToObjectiveC()();
          v36 = [v31 dominantLanguageForString:v35];

          if (v36)
          {
            static String._unconditionallyBridgeFromObjectiveC(_:)();
            v37 = v128;
            Locale.Language.init(identifier:)();
            v38 = Locale.Language.characterDirection.getter();
            (*(v27 + 8))(v37, v126);
            if (v38 == 1)
            {
              v39 = v26;
              Image.init(uiImage:)();
              v40 = Text.init(_:)();
              v42 = v41;
              v129 = v36;
              v44 = v43;
              LODWORD(v134) = static HierarchicalShapeStyle.secondary.getter();
              v45 = Text.foregroundStyle<A>(_:)();
              v47 = v46;
              v49 = v48;
              outlined consume of Text.Storage(v40, v42, v44 & 1);

              String.nonBreakingSpace.unsafeMutableAddressor();

              v128 = static Text.+ infix(_:_:)();
              v127 = v50;
              LODWORD(v124) = v51;
              v126 = v52;

              outlined consume of Text.Storage(v45, v47, v49 & 1);

              *&v134 = v34;
              *(&v134 + 1) = v33;
              _sS2SSysWl_0();

              v53 = Text.init<A>(_:)();
              v55 = v54;
              v57 = v56;
              LODWORD(v134) = static HierarchicalShapeStyle.primary.getter();
              v58 = Text.foregroundStyle<A>(_:)();
              v60 = v59;
              LOBYTE(v40) = v61;
              outlined consume of Text.Storage(v53, v55, v57 & 1);

              v62 = v128;
              v63 = v127;
              v64 = static Text.+ infix(_:_:)();
              v66 = v65;
              v123 = v67;
              v69 = v68;
              outlined consume of Text.Storage(v58, v60, v40 & 1);

              outlined consume of Text.Storage(v62, v63, v124 & 1);

              LOBYTE(v40) = v123 & 1;
              *&v131 = v64;
              *(&v131 + 1) = v66;
              *&v132 = v123 & 1;
              *(&v132 + 1) = v69;
              LOBYTE(v133) = 0;
              outlined copy of Text.Storage(v64, v66, v123 & 1);

              outlined copy of Text.Storage(v64, v66, v40);

              _ConditionalContent<>.init(storage:)();

              outlined consume of Text.Storage(v64, v66, v40);

              outlined consume of Text.Storage(v64, v66, v40);

LABEL_15:
              v132 = v135;
              v131 = v134;
              v133 = v136;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMR);
              lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
              _ConditionalContent<>.init(storage:)();

              v84 = v134;
              v85 = v135;
              goto LABEL_16;
            }
          }
        }

        v86 = (a1 + *(v13 + 24));
        v87 = v86[1];
        *&v134 = *v86;
        *(&v134 + 1) = v87;
        _sS2SSysWl_0();

        v88 = Text.init<A>(_:)();
        v90 = v89;
        v92 = v91;
        LODWORD(v134) = static HierarchicalShapeStyle.primary.getter();
        v93 = Text.foregroundStyle<A>(_:)();
        v95 = v94;
        v97 = v96;
        outlined consume of Text.Storage(v88, v90, v92 & 1);

        String.nonBreakingSpace.unsafeMutableAddressor();

        v129 = static Text.+ infix(_:_:)();
        v128 = v98;
        LODWORD(v126) = v99;
        v127 = v100;

        outlined consume of Text.Storage(v93, v95, v97 & 1);

        v101 = v26;
        Image.init(uiImage:)();
        v102 = Text.init(_:)();
        v104 = v103;
        v106 = v105;
        LODWORD(v134) = static HierarchicalShapeStyle.secondary.getter();
        v107 = Text.foregroundStyle<A>(_:)();
        v109 = v108;
        LOBYTE(v90) = v110;
        outlined consume of Text.Storage(v102, v104, v106 & 1);

        v111 = v129;
        v112 = v128;
        v124 = static Text.+ infix(_:_:)();
        v114 = v113;
        v116 = v115;
        v118 = v117;
        outlined consume of Text.Storage(v107, v109, v90 & 1);

        outlined consume of Text.Storage(v111, v112, v126 & 1);

        *&v131 = v124;
        *(&v131 + 1) = v114;
        *&v132 = v116 & 1;
        *(&v132 + 1) = v118;
        LOBYTE(v133) = 1;
        _ConditionalContent<>.init(storage:)();
        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  v70 = (a1 + *(v13 + 24));
  v71 = v70[1];
  *&v134 = *v70;
  *(&v134 + 1) = v71;
  _sS2SSysWl_0();

  v72 = Text.init<A>(_:)();
  v74 = v73;
  v76 = v75;
  LODWORD(v134) = static HierarchicalShapeStyle.primary.getter();
  v77 = Text.foregroundStyle<A>(_:)();
  v79 = v78;
  v81 = v80;
  v83 = v82;
  outlined consume of Text.Storage(v72, v74, v76 & 1);

  *&v131 = v77;
  *(&v131 + 1) = v79;
  *&v132 = v81 & 1;
  *(&v132 + 1) = v83;
  v133 = 256;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMd, &_s7SwiftUI19_ConditionalContentVyAA4TextVAEGMR);
  lazy protocol witness table accessor for type _ConditionalContent<Text, Text> and conformance <> _ConditionalContent<A, B>();
  _ConditionalContent<>.init(storage:)();
  v84 = v134;
  v85 = v135;
LABEL_16:
  v119 = v136;
  v120 = v137;
  v121 = v130;
  *v130 = v84;
  v121[1] = v85;
  *(v121 + 32) = v119;
  *(v121 + 33) = v120;
}

uint64_t NoticeDismissal.presented.getter(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.wrappedValue.getter();
  return v4;
}

void (*NoticeDismissal.presented.modify(uint64_t *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 19) = a4 & 1;
  *(v8 + 48) = a2;
  *(v8 + 56) = a3;
  *v8 = a2;
  *(v8 + 8) = a3;
  *(v8 + 16) = a4 & 1;

  *(v9 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.wrappedValue.getter();
  return NoticeDismissal.presented.modify;
}

void NoticeDismissal.presented.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 17);
  v3 = *(*a1 + 56);
  *(*a1 + 24) = *(*a1 + 48);
  v4 = *(v1 + 19);
  *(v1 + 32) = v3;
  *(v1 + 40) = v4;
  *(v1 + 18) = v2;
  Binding.wrappedValue.setter();

  free(v1);
}

uint64_t NoticeDismissal.$presented.getter(uint64_t a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI7BindingVySbGMd, &_s7SwiftUI7BindingVySbGMR);
  Binding.projectedValue.getter();
  return v4;
}

void protocol witness for static EnvironmentKey.defaultValue.getter in conformance EnvironmentValues.NoticeDismissalContextKey(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

void (*EnvironmentValues.noticeDismissal.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 48) = v1;
  *(v3 + 56) = lazy protocol witness table accessor for type EnvironmentValues.NoticeDismissalContextKey and conformance EnvironmentValues.NoticeDismissalContextKey();
  EnvironmentValues.subscript.getter();
  v5 = *(v4 + 40);
  *v4 = *(v4 + 24);
  *(v4 + 16) = v5;
  return EnvironmentValues.noticeDismissal.modify;
}

void EnvironmentValues.noticeDismissal.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[3] = v4;
  v6 = *(v3 + 16);
  v3[4] = v5;
  *(v3 + 40) = v6;
  if (a2)
  {
    outlined copy of NoticeDismissal?(v4, v5);
    EnvironmentValues.subscript.setter();
    outlined consume of NoticeDismissal?(*v3, v3[1]);
  }

  else
  {
    EnvironmentValues.subscript.setter();
  }

  free(v3);
}

unint64_t _sS2dSBsWl_0()
{
  result = _sS2dSBsWL_0;
  if (!_sS2dSBsWL_0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_sS2dSBsWL_0);
  }

  return result;
}

uint64_t outlined init with take of Notice(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of Notice(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *partial apply for closure #1 in NoticeView.body.getter(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = *(type metadata accessor for NoticeView(0) - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return closure #1 in NoticeView.body.getter(a1, a2, a3, v8);
}

uint64_t objectdestroyTm_13()
{
  v1 = type metadata accessor for NoticeView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = type metadata accessor for Notice(0);
  v4 = *(v3 + 20);
  v5 = type metadata accessor for Notice.Thumbnail(0);
  if (!(*(*(v5 - 8) + 48))(v2 + v4, 1, v5))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v8 = type metadata accessor for Artwork();
      (*(*(v8 - 8) + 8))(v2 + v4, v8);
    }

    else if (!EnumCaseMultiPayload)
    {
    }
  }

  if (*(v2 + *(v3 + 32)))
  {
  }

  outlined consume of Environment<NoticeDismissal?>.Content(*(v2 + *(v1 + 20)), *(v2 + *(v1 + 20) + 8), *(v2 + *(v1 + 20) + 16), *(v2 + *(v1 + 20) + 17));

  return swift_deallocObject();
}

uint64_t sub_1003054AC()
{

  return swift_deallocObject();
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA010_AnimationW0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA010_AnimationW0VySbGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _AnimationModifier<Bool> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVySbGMd, &_s7SwiftUI18_AnimationModifierVySbGMR, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGMd, &_s7SwiftUI15ModifiedContentVyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type CornerRadiusModifier and conformance CornerRadiusModifier();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGMd, &_s7SwiftUI15ModifiedContentVyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGMR);
    lazy protocol witness table accessor for type ModifiedContent<NoticeView.Content, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _BackgroundStyleModifier<Material> and conformance _BackgroundStyleModifier<A>, &_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMd, &_s7SwiftUI24_BackgroundStyleModifierVyAA8MaterialVGMR, &protocol conformance descriptor for _BackgroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<NoticeView.Content, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<NoticeView.Content, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<NoticeView.Content, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGMd, &_s7SwiftUI15ModifiedContentVy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGMR);
    lazy protocol witness table accessor for type NoticeView.Content and conformance NoticeView.Content(&lazy protocol witness table cache variable for type NoticeView.Content and conformance NoticeView.Content, type metadata accessor for NoticeView.Content, &protocol conformance descriptor for NoticeView.Content);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<NoticeView.Content, _FlexFrameLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

void partial apply for closure #3 in NoticeView.body.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for NoticeView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  closure #3 in NoticeView.body.getter(a1, a2, v6);
}

uint64_t lazy protocol witness table accessor for type NoticeView.Content and conformance NoticeView.Content(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t key path setter for EnvironmentValues.layoutDirection : EnvironmentValues(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  v8 = __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1, v8);
  return a6(v10);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect>, _AnimationModifier<Notice>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect>, _AnimationModifier<Notice>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect>, _AnimationModifier<Notice>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGA9_yA28_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGA9_yA28_GGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _AnimationModifier<Notice> and conformance _AnimationModifier<A>, &_s7SwiftUI18_AnimationModifierVy9MusicCore6NoticeVGMd, &_s7SwiftUI18_AnimationModifierVy9MusicCore6NoticeVGMR, &protocol conformance descriptor for _AnimationModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect>, _AnimationModifier<Notice>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGMd, &_s7SwiftUI15ModifiedContentVyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGMR);
    lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0F0Rd__lFQOyAA15ModifiedContentVyAJyAJyAJyAJy09MusicCoreB006NoticeC0V0I033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceF0VyAA0f5StateF0VyAA04DragF0VSbGAA06_EndedF0VyAA03TapF0VGGQo_Md, &_s7SwiftUI4ViewPAAE7gesture_9includingQrqd___AA11GestureMaskVtAA0F0Rd__lFQOyAA15ModifiedContentVyAJyAJyAJyAJy09MusicCoreB006NoticeC0V0I033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAK20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceF0VyAA0f5StateF0VyAA04DragF0VSbGAA06_EndedF0VyAA03TapF0VGGQo_MR);
    type metadata accessor for Notice(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA010_AnimationW0VySbGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACy09MusicCoreB010NoticeViewV0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAD012CornerRadiusW033_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA010_AnimationW0VySbGGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15SequenceGestureVyAA0d5StateD0VyAA04DragD0VSbGAA06_EndedD0VyAA03TapD0VGGMd, &_s7SwiftUI15SequenceGestureVyAA0d5StateD0VyAA04DragD0VSbGAA06_EndedD0VyAA03TapD0VGGMR);
    lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<NoticeView.Content, _FlexFrameLayout>, _BackgroundStyleModifier<Material>>, CornerRadiusModifier>, _OpacityEffect>, _AnimationModifier<Bool>> and conformance <> ModifiedContent<A, B>();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type SequenceGesture<GestureStateGesture<DragGesture, Bool>, _EndedGesture<TapGesture>> and conformance SequenceGesture<A, B>, &_s7SwiftUI15SequenceGestureVyAA0d5StateD0VyAA04DragD0VSbGAA06_EndedD0VyAA03TapD0VGGMd, &_s7SwiftUI15SequenceGestureVyAA0d5StateD0VyAA04DragD0VSbGAA06_EndedD0VyAA03TapD0VGGMR, &protocol conformance descriptor for SequenceGesture<A, B>);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type NoticeView.Content and conformance NoticeView.Content(&lazy protocol witness table cache variable for type Notice and conformance Notice, type metadata accessor for Notice, &protocol conformance descriptor for Notice);
    swift_getOpaqueTypeConformance2();
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type _EnvironmentKeyWritingModifier<ContentTransition> and conformance _EnvironmentKeyWritingModifier<A>, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMd, &_s7SwiftUI30_EnvironmentKeyWritingModifierVyAA17ContentTransitionVGMR, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t sub_100305D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Notice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100305E4C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Notice(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 16) = (a2 - 1);
  }

  return result;
}

void type metadata completion function for NoticeView(uint64_t a1)
{
  type metadata accessor for Notice(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Environment<NoticeDismissal?>(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for State<Double>(319, &lazy cache variable for type metadata for State<Double>, &type metadata for Double, &type metadata accessor for State);
      if (v3 <= 0x3F)
      {
        type metadata accessor for State<Double>(319, &lazy cache variable for type metadata for GestureState<Bool>, &type metadata for Bool, &type metadata accessor for GestureState);
        if (v4 <= 0x3F)
        {
          type metadata accessor for State<Double>(319, &lazy cache variable for type metadata for State<Bool>, &type metadata for Bool, &type metadata accessor for State);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for Environment<NoticeDismissal?>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Environment<NoticeDismissal?>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s11MusicCoreUI15NoticeDismissalVSgMd, &_s11MusicCoreUI15NoticeDismissalVSgMR);
    v1 = type metadata accessor for Environment();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Environment<NoticeDismissal?>);
    }
  }
}

void type metadata accessor for State<Double>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for NoticeDismissal(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for NoticeDismissal(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10030618C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGA9_yA28_GGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA4ViewPAAE8onChange2of7initial_Qrqd___Sbyqd___qd__tctSQRd__lFQOyAeAE7gesture_9includingQrqd___AA11GestureMaskVtAA0L0Rd__lFQOyACyACyACyACyACy09MusicCoreB006NoticeE0V0D033_1E0EE3996FA6F48DA9B8EAD4E8F15418LLVAA16_FlexFrameLayoutVGAA24_BackgroundStyleModifierVyAA8MaterialVGGAN20CornerRadiusModifier33_F5ED3014321945F1E2BE58A044A15282LLVGAA14_OpacityEffectVGAA18_AnimationModifierVySbGG_AA08SequenceL0VyAA0l5StateL0VyAA04DragL0VSbGAA06_EndedL0VyAA03TapL0VGGQo__0nO00P0VQo_AA30_EnvironmentKeyWritingModifierVyAA0D10TransitionVGGAA12_ScaleEffectVGA9_yA28_GGMR);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSNy7SwiftUI15DynamicTypeSizeOGMd, &_sSNy7SwiftUI15DynamicTypeSizeOGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<ModifiedContent<<<opaque return type of View.onChange<A>(of:initial:_:)>>.0, _EnvironmentKeyWritingModifier<ContentTransition>>, _ScaleEffect>, _AnimationModifier<Notice>> and conformance <> ModifiedContent<A, B>();
  lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type ClosedRange<DynamicTypeSize> and conformance ClosedRange<A>, &_sSNy7SwiftUI15DynamicTypeSizeOGMd, &_sSNy7SwiftUI15DynamicTypeSizeOGMR, &protocol conformance descriptor for ClosedRange<A>);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100306264(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for Notice(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVySdGMd, &_s7SwiftUI12ScaledMetricVySdGMR);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd_0, &_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMR_0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd, &_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMR);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_100306478(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for Notice(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVySdGMd, &_s7SwiftUI12ScaledMetricVySdGMR);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMd, &_s7SwiftUI12ScaledMetricVy12CoreGraphics7CGFloatVGMR);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMd_0, &_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGMR_0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMd, &_s7SwiftUI11EnvironmentVyAA15LayoutDirectionOGMR);
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

void type metadata completion function for NoticeView.Content(uint64_t a1)
{
  type metadata accessor for Notice(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for ScaledMetric<Double>(319, &lazy cache variable for type metadata for ScaledMetric<Double>, _sS2dSBsWl_0, &type metadata for Double);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ScaledMetric<Double>(319, &lazy cache variable for type metadata for ScaledMetric<CGFloat>, lazy protocol witness table accessor for type CGFloat and conformance CGFloat, &type metadata for CGFloat);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Environment<DynamicTypeSize>(319, &_s7SwiftUI11EnvironmentVyAA15DynamicTypeSizeOGML_0, &type metadata accessor for DynamicTypeSize);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Environment<DynamicTypeSize>(319, &lazy cache variable for type metadata for Environment<LayoutDirection>, &type metadata accessor for LayoutDirection);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void type metadata accessor for ScaledMetric<Double>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = type metadata accessor for ScaledMetric();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for Environment<DynamicTypeSize>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Environment();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t key path getter for EnvironmentValues.lineLimit : EnvironmentValues, serialized@<X0>(uint64_t a1@<X8>)
{
  result = EnvironmentValues.lineLimit.getter();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t specialized NoticeView.Content.DynamicSizeSpecs.init(notice:typeSize:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MusicCore6NoticeV9ThumbnailOSgMd_0, &_s9MusicCore6NoticeV9ThumbnailOSgMR_0);
  __chkstk_darwin();
  v7 = &v25 - v6;
  v8 = type metadata accessor for Notice(0);
  outlined init with copy of TaskPriority?(a1 + *(v8 + 20), v7, &_s9MusicCore6NoticeV9ThumbnailOSgMd_0, &_s9MusicCore6NoticeV9ThumbnailOSgMR_0);
  v9 = type metadata accessor for Notice.Thumbnail(0);
  if ((*(*(v9 - 8) + 48))(v7, 1, v9) == 1)
  {
    outlined destroy of TaskPriority?(v7, &_s9MusicCore6NoticeV9ThumbnailOSgMd_0, &_s9MusicCore6NoticeV9ThumbnailOSgMR_0);
    v10 = 0;
  }

  else
  {
    v10 = swift_getEnumCaseMultiPayload() == 1;
    outlined destroy of Notice.Thumbnail(v7, type metadata accessor for Notice.Thumbnail);
  }

  v11 = type metadata accessor for DynamicTypeSize();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 88))(a2, v11);
  if (v13 == enum case for DynamicTypeSize.xSmall(_:) || v13 == enum case for DynamicTypeSize.small(_:))
  {
    result = outlined destroy of Notice.Thumbnail(a1, type metadata accessor for Notice);
    v16 = 6.0;
    if (!v10)
    {
      v16 = 0.0;
    }

    v17 = 4.0;
    v18 = 12.0;
    if (v10)
    {
      v19 = 12.0;
    }

    else
    {
      v19 = 4.0;
    }
  }

  else
  {
    if (v13 == enum case for DynamicTypeSize.medium(_:) || v13 == enum case for DynamicTypeSize.large(_:) || v13 == enum case for DynamicTypeSize.xLarge(_:))
    {
      goto LABEL_29;
    }

    if (v13 != enum case for DynamicTypeSize.xxLarge(_:) && v13 != enum case for DynamicTypeSize.xxxLarge(_:) && v13 != enum case for DynamicTypeSize.accessibility1(_:) && v13 != enum case for DynamicTypeSize.accessibility2(_:) && v13 != enum case for DynamicTypeSize.accessibility3(_:) && v13 != enum case for DynamicTypeSize.accessibility4(_:) && v13 != enum case for DynamicTypeSize.accessibility5(_:))
    {
      (*(v12 + 8))(a2, v11);
LABEL_29:
      if (v10)
      {
        v19 = 10.0;
      }

      else
      {
        v19 = 12.0;
      }

      v22 = (a1 + *(v8 + 32));
      v23 = *v22;
      v24 = v22[1];
      outlined copy of (@escaping @callee_guaranteed () -> ())?(*v22, v24);
      result = outlined destroy of Notice.Thumbnail(a1, type metadata accessor for Notice);
      if (v23)
      {
        result = outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v23, v24);
        v18 = 19.0;
      }

      else
      {
        v18 = 20.0;
      }

      v17 = 4.0;
      if (v10)
      {
        v16 = 10.0;
      }

      else
      {
        v16 = 4.0;
      }

      goto LABEL_41;
    }

    result = outlined destroy of Notice.Thumbnail(a1, type metadata accessor for Notice);
    v16 = 10.0;
    if (!v10)
    {
      v16 = 6.0;
    }

    v18 = 20.0;
    v19 = 12.0;
    v17 = 8.0;
  }

LABEL_41:
  *a3 = v17;
  a3[1] = v19;
  a3[2] = v17;
  a3[3] = v18;
  a3[4] = v16;
  return result;
}