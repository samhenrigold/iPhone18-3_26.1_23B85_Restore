void specialized closure #1 in CanvasElementViewController._bannerViewConfiguration.didset(uint64_t a1, void *a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [a2 setActive_];
    v7 = [a3 topAnchor];
    v8 = v6;
    v9 = [v8 view];
    if (v9)
    {
      v10 = v9;
      v11 = [v9 safeAreaLayoutGuide];

      v12 = [v11 topAnchor];
      v13 = [v7 constraintEqualToAnchor_];

      [v13 setActive_];
      v14 = [v8 view];

      if (v14)
      {
        [v14 layoutIfNeeded];

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void specialized closure #1 in CanvasElementViewController.bannerViewConfiguration.setter(uint64_t a1, uint64_t a2)
{
  v3 = a1 + direct field offset for CanvasElementViewController._bannerViewConfiguration;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  v9 = *(v3 + 32);
  v8 = *(v3 + 40);
  v11 = *(v3 + 48);
  v10 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v10;
  *(v3 + 32) = *(a2 + 32);
  *(v3 + 48) = *(a2 + 48);
  outlined init with copy of Date?(a2, v12, &_s8PaperKit23BannerViewConfigurationVSgMd, &_s8PaperKit23BannerViewConfigurationVSgMR);
  outlined consume of BannerViewConfiguration?(v4, v5, v6, v7, v9, v8, v11);
  specialized CanvasElementViewController._bannerViewConfiguration.didset();
}

id key path getter for CanvasElementViewController.bannerView : <A>CanvasElementViewController<A>@<X0>(void *a1@<X8>)
{
  v2 = specialized CanvasElementViewController.bannerView.getter();
  *a1 = v2;

  return v2;
}

void key path setter for CanvasElementViewController.bannerView : <A>CanvasElementViewController<A>(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  CanvasElementViewController.bannerView.setter(v1);
}

void specialized CanvasElementViewController._rulerHostView.didset(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Image(0);
  v5 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  swift_getKeyPath();
  v24 = v1;
  lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CanvasElementViewController<Image> and conformance CanvasElementViewController<A>, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMd, &_s8PaperKit27CanvasElementViewControllerCyAA5ImageVGMR, &protocol conformance descriptor for CanvasElementViewController<A>);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = direct field offset for CanvasElementViewController._rulerHostView;
  v8 = *(v1 + direct field offset for CanvasElementViewController._rulerHostView);
  if (a1)
  {
    if (v8)
    {
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIView, 0x1E69DD250);
      v9 = v8;
      v10 = a1;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        return;
      }
    }
  }

  else if (!v8)
  {
    return;
  }

  MEMORY[0x1EEE9AC00](v6);
  swift_getKeyPath();
  v24 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v2 + v7);
  if (v13)
  {
    v14 = type metadata accessor for RulerHostingDelegate();
    v15 = objc_allocWithZone(v14);
    swift_unknownObjectWeakInit();
    v15[OBJC_IVAR____TtC8PaperKit20RulerHostingDelegate_sharedRuler] = 1;
    swift_unknownObjectWeakAssign();
    v23.receiver = v15;
    v23.super_class = v14;
    v16 = v13;
    v17 = objc_msgSendSuper2(&v23, sel_init, v4, v5, &protocol witness table for Image);
    specialized CanvasElementViewController._rulerHostingDelegate.setter(v17);
  }

  else if (*(v2 + direct field offset for CanvasElementViewController.__rulerHostingDelegate))
  {
    MEMORY[0x1EEE9AC00](v12);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v24 = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  MEMORY[0x1EEE9AC00](v12);
  swift_getKeyPath();
  v24 = v2;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v20 = *(v2 + direct field offset for CanvasElementViewController._canvasView);
  if (v20)
  {
    v21 = *(v20 + direct field offset for CanvasView.canvasTiledView);
    if (v21)
    {
      MEMORY[0x1EEE9AC00](v19);
      swift_getKeyPath();
      v24 = v2;
      v22 = v21;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      [v22 setRulerHostingDelegate_];
    }
  }
}

double specialized CRRegister<>.maxHDRHeadroom<A>(in:)(unsigned int (*a1)(void, void, void))
{
  v110 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  v88 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v90 = v87 - v3;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v97 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v89 = v87 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v115 = v87 - v6;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence10CRSequenceV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR);
  v96 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v108 = v87 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v104 = v87 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence10CRSequenceVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  v106 = *(v10 - 8);
  v107 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v95 = v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v105 = v87 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v87 - v15;
  v93 = type metadata accessor for PKStrokeInheritedProperties(0);
  MEMORY[0x1EEE9AC00](v93);
  v94 = v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v87 - v19;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v99 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v113 = v87 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGMR);
  v92 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v87 - v23;
  v25 = type metadata accessor for TaggedStroke(0);
  MEMORY[0x1EEE9AC00](v25);
  v102 = v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v100 = v87 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v87 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = v87 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = v87 - v36;
  v38 = type metadata accessor for PKStrokeStruct(0);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v91 = v87 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v98 = v87 - v41;
  v111 = v2;
  v103 = v1;
  CRRegister.value.getter();
  _s8PaperKit9PDFPageIDVWObTm_1(v34, v31, type metadata accessor for TaggedStroke);
  v101 = v25;
  if (swift_getEnumCaseMultiPayload())
  {
    _s8PaperKit9DataOrURLOWOhTm_0(v31, type metadata accessor for TaggedStroke);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
    v43 = v37;
    (*(*(v42 - 8) + 56))(v37, 1, 1, v42);
  }

  else
  {
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
    v45 = *(v44 - 8);
    v43 = v37;
    (*(v45 + 32))(v37, v31, v44);
    (*(v45 + 56))(v37, 0, 1, v44);
  }

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGMR);
  v47 = *(v46 - 8);
  v48 = (*(v47 + 48))(v43, 1, v46);
  v49 = v109;
  if (v48 == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v43, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMd, &_s9Coherence3RefVy8PaperKit14PKStrokeStructVGSgMR);
    v50 = 0.0;
    v51 = v110;
    v52 = v104;
    v53 = v102;
  }

  else
  {
    v54 = type metadata accessor for Image(0);
    v55 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    v56 = v91;
    v57 = v110;
    v87[1] = v54;
    v87[0] = v55;
    Ref.subscript.getter();
    (*(v47 + 8))(v43, v46);
    _s8PaperKit9PDFPageIDVWObTm_1(v56, v98, type metadata accessor for PKStrokeStruct);
    (*(v99 + 16))(v113, v57, v114);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGGMR);
    CRRegister.wrappedValue.getter();
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<Image> and conformance Capsule<A>, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR, MEMORY[0x1E6995458]);
    v58 = (v92 + 48);
    v59 = (v92 + 8);
    for (i = (v92 + 32); ; (*i)(v24, v16, v22))
    {
      Ref.subscript.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMd, &_s9Coherence10CRRegisterVyAA3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgGMR);
      CRRegister.wrappedValue.getter();
      _s8PaperKit9DataOrURLOWOhTm_0(v20, type metadata accessor for PKStrokeInheritedProperties);
      if ((*v58)(v16, 1, v22) == 1)
      {
        break;
      }

      (*v59)(v24, v22);
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v16, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMd, &_s9Coherence3RefVy8PaperKit27PKStrokeInheritedPropertiesVGSgMR);
    (*(v99 + 8))(v113, v114);
    v61 = v94;
    v62 = v110;
    Ref.subscript.getter();
    (*v59)(v24, v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMd, &_s9Coherence10CRRegisterVySo5PKInkCSgAfA7CRValueHpAeaG8PaperKityHC_HCg_GMR);
    CRRegister.wrappedValue.getter();
    _s8PaperKit9DataOrURLOWOhTm_0(v61, type metadata accessor for PKStrokeInheritedProperties);
    v63 = v116;
    if (v116)
    {
      [v116 hdrHeadroom];
      v50 = v64;

      _s8PaperKit9DataOrURLOWOhTm_0(v98, type metadata accessor for PKStrokeStruct);
    }

    else
    {
      _s8PaperKit9DataOrURLOWOhTm_0(v98, type metadata accessor for PKStrokeStruct);
      v50 = 0.0;
    }

    v49 = v109;
    v52 = v104;
    v53 = v102;
    v51 = v62;
  }

  v65 = v100;
  CRRegister.value.getter();
  _s8PaperKit9PDFPageIDVWObTm_1(v65, v53, type metadata accessor for TaggedStroke);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
    v67 = *(v66 - 8);
    (*(v67 + 32))(v52, v53, v66);
    (*(v67 + 56))(v52, 0, 1, v66);
  }

  else
  {
    _s8PaperKit9DataOrURLOWOhTm_0(v53, type metadata accessor for TaggedStroke);
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
    (*(*(v68 - 8) + 56))(v52, 1, 1, v68);
  }

  v69 = v115;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGMR);
  v71 = *(v70 - 8);
  if ((*(v71 + 48))(v52, 1, v70) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v52, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMd, &_s9Coherence3RefVyAA10CRSequenceVyACyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGGSgMR);
  }

  else
  {
    v72 = type metadata accessor for Image(0);
    v73 = _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
    v74 = v95;
    v104 = v72;
    v114 = v73;
    Ref.subscript.getter();
    (*(v71 + 8))(v52, v70);
    (*(v106 + 32))(v105, v74, v107);
    CRSequence.makeIterator()();
    CRSequence.Iterator.next()();
    v75 = v97;
    v76 = v97 + 48;
    v77 = *(v97 + 48);
    if (v77(v69, 1, v49) == 1)
    {
      v78 = v108;
    }

    else
    {
      v80 = *(v75 + 32);
      v79 = v75 + 32;
      v113 = v80;
      v81 = (v88 + 8);
      v110 = v77;
      v82 = v51;
      v83 = v90;
      v109 = v76;
      v84 = v89;
      v78 = v108;
      do
      {
        (v113)(v84, v69, v49);
        Ref.subscript.getter();
        v85 = specialized CRRegister<>.maxHDRHeadroom<A>(in:)(v82);
        (*v81)(v83, v111);
        (*(v79 - 24))(v84, v49);
        if (v50 <= v85)
        {
          v50 = v85;
        }

        CRSequence.Iterator.next()();
        v69 = v115;
      }

      while (v110(v115, 1, v49) != 1);
    }

    (*(v96 + 8))(v78, v112);
    (*(v106 + 8))(v105, v107);
  }

  return v50;
}

double specialized PKDrawingStruct.hdrHeadroom<A>(in:)(unsigned int (*a1)(void, void, void))
{
  v29 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
  v27 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v28 = &v23 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMd, &_s9Coherence12CROrderedSetV8IteratorVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGG_GMR);
  v23 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  type metadata accessor for PKDrawingStruct(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMd, &_s9Coherence12CROrderedSetVyAA3RefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGGMR);
  CROrderedSet.makeIterator()();
  v30 = v12;
  CROrderedSet.Iterator.next()();
  v13 = *(v4 + 48);
  v14 = 0.0;
  if (v13(v9, 1, v3) != 1)
  {
    v15 = *(v4 + 32);
    v25 = (v27 + 8);
    v26 = v15;
    v27 = v4 + 32;
    v24 = (v4 + 8);
    do
    {
      v26(v6, v9, v3);
      type metadata accessor for Image(0);
      _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
      v16 = v28;
      v17 = v10;
      v18 = v1;
      v19 = v29;
      Ref.subscript.getter();
      v20 = v19;
      v1 = v18;
      v10 = v17;
      v21 = specialized CRRegister<>.maxHDRHeadroom<A>(in:)(v20);
      (*v25)(v16, v1);
      (*v24)(v6, v3);
      if (v14 <= v21)
      {
        v14 = v21;
      }

      CROrderedSet.Iterator.next()();
    }

    while (v13(v9, 1, v3) != 1);
  }

  (*(v23 + 8))(v30, v10);
  return v14;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIColor, 0x1E69DC888);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PDFAnnotation, 0x1E6978018);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v25 & 1))
    {
      v14 = v24;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 40 * v14;
  v27 = *v21;
  v22 = *(a1 + 16);
  *v21 = *a1;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(a1 + 32);

  v23 = v27;
}

{
  v4 = v3;
  v8 = type metadata accessor for CRKeyPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20, MEMORY[0x1E69954B8]);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

{
  v4 = v3;
  v8 = type metadata accessor for CRKeyPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20, MEMORY[0x1E69954B8]);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

{
  v4 = v3;
  v8 = type metadata accessor for CRKeyPath();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return;
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v21;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20, MEMORY[0x1E69954B8]);
}

{
  v4 = v3;
  v8 = type metadata accessor for CRAsset();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20, MEMORY[0x1E6995408]);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = *(v21 + 8 * v14);
  *(v21 + 8 * v14) = a1;
}

{
  v4 = v3;
  v8 = type metadata accessor for CRAsset();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return;
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v14 = v21;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20, MEMORY[0x1E6995408]);
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 8 * v14;

  return outlined assign with take of WeakCalculateExpression(a1, v21);
}

{
  v4 = v3;
  v8 = type metadata accessor for CRKeyPath();
  v26 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v19 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      v13 = v19;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v21 = *v4;
  if (v17)
  {
    v22 = *(v26 + 40);
    v23 = v21[7] + *(v26 + 72) * v13;

    return v22(v23, a1, v8);
  }

  else
  {
    (*(v26 + 16))(v10, a2, v8);
    return specialized _NativeDictionary._insert(at:key:value:)(v13, v10, a1, v21);
  }
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGMd, &_sScCySo10CGImageRefaSgs5NeverOGMR);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    v28 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for Date();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)();
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)();
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for NSAttributedStringKey(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFStringRef(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t *a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for PDFPageID(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      *(v19[7] + 8 * v13) = a1;
      return;
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  if ((v17 & 1) != (v21 & 1))
  {
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v13 = v20;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  _s8PaperKit9PDFPageIDVWOcTm_0(a2, v10, type metadata accessor for PDFPageID);
  specialized _NativeDictionary._insert(at:key:value:)(v13, v10, a1, v19);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

{
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, a3, a4, specialized _NativeDictionary.copy(), specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:));
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return outlined init with take of Any(a1, v22);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3, a1, v21);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *a1;
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v10 = a1[4];
  v11 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v14 = v11[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v11[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      v20 = result;
      specialized _NativeDictionary.copy()();
      result = v20;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a3 & 1);
    result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v18 & 1) != (v21 & 1))
    {
LABEL_14:
      type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v4;
  if (v18)
  {
    v23 = (v22[7] + 40 * result);
    *v23 = v7;
    v23[1] = v6;
    v23[2] = v9;
    v23[3] = v8;
    v23[4] = v10;
  }

  else
  {
    v25[0] = v7;
    v25[1] = v6;
    v25[2] = v9;
    v25[3] = v8;
    v25[4] = v10;
    specialized _NativeDictionary._insert(at:key:value:)(result, a2, v25, v22);

    return a2;
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      specialized _NativeDictionary.copy()();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7] + 40 * result;
    v20 = *(a1 + 16);
    *v19 = *a1;
    *(v19 + 16) = v20;
    *(v19 + 32) = *(a1 + 32);
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  v21 = v18[7] + 40 * result;
  v22 = *(a1 + 16);
  *v21 = *a1;
  *(v21 + 16) = v22;
  *(v21 + 32) = *(a1 + 32);
  v23 = v18[2];
  v12 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v24;

  return a2;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, void *a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v13 = *v6;
  v14 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a4 & 1) == 0)
  {
    if (v21 < v19 || (a4 & 1) != 0)
    {
      a6(v19, a4 & 1);
      v14 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
      if ((v20 & 1) != (v23 & 1))
      {
LABEL_18:
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIDragItem, 0x1E69DC990);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v22 = v14;
      a5();
      v14 = v22;
    }
  }

  v24 = *v9;
  if (v20)
  {
    v25 = (v24[7] + 16 * v14);
    *v25 = a1;
    v25[1] = a2;

    return;
  }

  v24[(v14 >> 6) + 8] |= 1 << v14;
  *(v24[6] + 8 * v14) = a3;
  v26 = (v24[7] + 16 * v14);
  *v26 = a1;
  v26[1] = a2;
  v27 = v24[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v24[2] = v28;

  v29 = a3;
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for NSObject, 0x1E69E58C0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)();
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for PDFDocumentWriteOption(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void))
{
  v27 = a4;
  v28 = a5;
  v6 = v5;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v5;
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      v27();
      goto LABEL_7;
    }

    v28();
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v20 & 1) == (v26 & 1))
    {
      v16 = v25;
      v22 = *v6;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v11 + 16))(v13, a2, v10);
      specialized _NativeDictionary._insert(at:key:value:)(v16, v13, a1, v22, MEMORY[0x1E69695A8]);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v22 = *v6;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = v22[7];
  v24 = *(v23 + 8 * v16);
  *(v23 + 8 * v16) = a1;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 < v20 || (a6 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
      v15 = specialized __RawDictionaryStorage.find<A>(_:)(a4, a5);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
    }
  }

  v25 = *v7;
  if (v21)
  {
    v26 = v25[7] + 24 * v15;
    v27 = *v26;
    v28 = *(v26 + 8);
    v29 = *(v26 + 16);
    *v26 = a1;
    *(v26 + 8) = a2;
    *(v26 + 16) = a3 & 1;

    outlined consume of AsyncCache<Data, CGImageRef>.CacheState(v27, v28, v29);
    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v25[6] + 16 * v15);
  *v30 = a4;
  v30[1] = a5;
  v31 = v25[7] + 24 * v15;
  *v31 = a1;
  *(v31 + 8) = a2;
  *(v31 + 16) = a3 & 1;
  v32 = v25[2];
  v19 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v33;

  outlined copy of Data._Representation(a4, a5);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
      v13 = specialized __RawDictionaryStorage.find<A>(_:)(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;

    return;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v25 = (v23[6] + 16 * v13);
  *v25 = a3;
  v25[1] = a4;
  v26 = (v23[7] + 16 * v13);
  *v26 = a1;
  v26[1] = a2;
  v27 = v23[2];
  v17 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v28;

  outlined copy of Data._Representation(a3, a4);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v12 = *(v9 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v9 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 < v15 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
      if ((v16 & 1) != (v19 & 1))
      {
LABEL_18:
        type metadata accessor for PaperKitPDFPage(0);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v18 = v10;
      specialized _NativeDictionary.copy()();
      v10 = v18;
    }
  }

  v20 = *v5;
  if (v16)
  {
    v21 = v20[7] + 16 * v10;
    v22 = *v21;
    *v21 = a1;
    *(v21 + 8) = a2;

    return;
  }

  v20[(v10 >> 6) + 8] |= 1 << v10;
  *(v20[6] + 8 * v10) = a3;
  v23 = (v20[7] + 16 * v10);
  *v23 = a1;
  v23[1] = a2;
  v24 = v20[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v20[2] = v25;

  v26 = a3;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v33 = a3;
  v34 = a4;
  v32 = a2;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = specialized __RawDictionaryStorage.find<A>(_:)(a5);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a6 & 1);
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(a5);
    if ((v21 & 1) == (v30 & 1))
    {
      v17 = v29;
      v23 = *v7;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v12 + 16))(v14, a5, v11);
      specialized _NativeDictionary._insert(at:key:value:)(v17, v14, a1, v32, v33, v34, v23);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v23 = *v7;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = (v23[7] + 32 * v17);
  v25 = v24[1];
  v26 = v32;
  v27 = v33;
  *v24 = a1;
  v24[1] = v26;
  v28 = v34;
  v24[2] = v27;
  v24[3] = v28;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 40 * a1;
  *(v11 + 32) = *(a3 + 32);
  v12 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v12;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = outlined init with take of WeakCalculateExpression(a3, a4[7] + 8 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for CRKeyPath();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for PDFPageID(0);
  result = _s8PaperKit9PDFPageIDVWObTm_1(a2, v8 + *(*(v9 - 8) + 72) * a1, type metadata accessor for PDFPageID);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  return specialized _NativeDictionary._insert(at:key:value:)(a1, a2, a3, a4, MEMORY[0x1E6995408]);
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo10CGImageRefaSgs5NeverOGMd, &_sScCySo10CGImageRefaSgs5NeverOGMR);
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for Date();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a3 + 32);
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v5 = a4[7] + 40 * result;
  v6 = *(a3 + 16);
  *v5 = *a3;
  *(v5 + 16) = v6;
  *(v5 + 32) = v4;
  v7 = a4[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v9;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  *(a4[7] + 8 * a1) = a3;
  v12 = a4[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v14;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6 & 1;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = type metadata accessor for UUID();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a7[7] + 32 * a1);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t specialized closure #1 in Capsule<>.subelementsMaxHDRHeadroom()@<X0>(double *a1@<X0>, uint64_t a2@<X2>, double *a3@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  type metadata accessor for Image(0);
  _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type Image and conformance Image, type metadata accessor for Image, &protocol conformance descriptor for Image);
  SharedTagged_10.subscript.getter();
  v6 = v15;
  v7 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR);
  v13[3] = v8;
  v13[4] = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type Capsule<Image> and conformance Capsule<A>, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR, MEMORY[0x1E6995458]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, a2, v8);
  v10 = (*(*(v7 + 8) + 48))(v13, v6);
  __swift_destroy_boxed_opaque_existential_0(v13);
  result = __swift_destroy_boxed_opaque_existential_0(v14);
  if (v5 > v10)
  {
    v12 = v5;
  }

  else
  {
    v12 = v10;
  }

  *a3 = v12;
  return result;
}

uint64_t specialized MarkupContainerViewController.documentViewShouldAllowEditing(_:)()
{
  v1 = *(v0 + OBJC_IVAR___PPKMarkupContainerViewController_editingMode);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if ([Strong respondsToSelector_])
    {
      v4 = [v3 shouldAllowEditingContents_];
    }

    else
    {
      v4 = 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 1;
  }

  return (v1 != 0) & v4;
}

void specialized MarkupContainerViewController.documentViewController(_:didSetupDocumentView:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView__automaticallyAdjustScaleFactor;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v20 = a1;
    _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(&lazy protocol witness table cache variable for type PaperDocumentView and conformance PaperDocumentView, type metadata accessor for PaperDocumentView, &protocol conformance descriptor for PaperDocumentView);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(a1 + v4) = 0;
  }

  v6 = OBJC_IVAR____TtC8PaperKit17PaperDocumentView_pdfView;
  swift_beginAccess();
  v7 = *(a1 + v6);
  if (!v7)
  {
    __break(1u);
    goto LABEL_24;
  }

  [v7 setAutoScales_];
  v8 = *(a1 + v6);
  if (!v8)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v9 = [v8 documentScrollView];
  if (v9)
  {
    if (one-time initialization token for isQuickLookUIExtension != -1)
    {
      v18 = v9;
      swift_once();
      v9 = v18;
    }

    if (static NSBundle.isQuickLookUIExtension == 1)
    {
      v10 = v9;
      [v9 setContentInsetAdjustmentBehavior_];
      v9 = v10;
    }
  }

  v19[0] = v2[OBJC_IVAR___PPKMarkupContainerViewController_editingMode];
  PaperDocumentView.editingMode.setter(v19);
  v11 = *(a1 + v6);
  if (!v11)
  {
    goto LABEL_25;
  }

  v12 = OBJC_IVAR___PPKMarkupContainerViewController_findInteractionEnabled;
  swift_beginAccess();
  [v11 setFindInteractionEnabled_];
  MarkupContainerViewController.configureLookAndStyle()();
  MarkupContainerViewController.updateContentInsets()();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if ([Strong respondsToSelector_])
    {
      [v14 markupContainerViewController:v2 updateChromeWithAnimation:1];
    }

    swift_unknownObjectRelease();
  }

  v15 = MarkupContainerViewController.toolPicker.getter();
  if (v15)
  {
    v16 = v15;
    v17 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
    swift_beginAccess();
    if (v2[v17] == 1 && ([v16 isVisible] & 1) == 0)
    {
      [v2 becomeFirstResponder];
    }
  }

  v2[OBJC_IVAR___PPKMarkupContainerViewController_isContentLoaded] = 1;
  [*&v2[OBJC_IVAR___PPKMarkupContainerViewController_loadContentOperationQueue] setSuspended_];
}

void specialized MarkupContainerViewController.init(coder:)()
{
  v1 = v0;
  v2 = OBJC_IVAR___PPKMarkupContainerViewController_context;
  type metadata accessor for CRContext();
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v3 = MEMORY[0x1DA6CC630](0, v12);
  outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s9Coherence18EncryptionDelegate_pSgMd, &_s9Coherence18EncryptionDelegate_pSgMR);
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR___PPKMarkupContainerViewController_fileCoordinator;
  *(v1 + v4) = [objc_allocWithZone(MEMORY[0x1E696ABF8]) init];
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderImageScrollView) = 0;
  v5 = v1 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderActualImageSize;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 1;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageViewController) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pdfViewController) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_analysisDelegate) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_imageCancellable) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pdfCancellable) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_contentUndoManager) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_viewIsTransitioningBetweenSizes) = 0;
  v6 = OBJC_IVAR___PPKMarkupContainerViewController_originalAsset;
  v7 = type metadata accessor for CRAsset();
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_doubleTapGestureRecognizer) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_loadContentTask) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_loadContentOperationQueue) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_isContentLoaded) = 0;
  v8 = (v1 + OBJC_IVAR___PPKMarkupContainerViewController_minimumContentInsets);
  v9 = *(MEMORY[0x1E69DDCE0] + 16);
  *v8 = *MEMORY[0x1E69DDCE0];
  v8[1] = v9;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_findInteractionEnabled) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_isImageAnalysisEnabled) = 1;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_editingMode) = 0;
  swift_unknownObjectWeakInit();
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_encryptPrivateMetadata) = 1;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_showThumbnailViewForMultipage) = 1;
  v10 = (v1 + OBJC_IVAR___PPKMarkupContainerViewController_previousViewSize);
  *v10 = 0;
  v10[1] = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_allEditingDisabled) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pencilAlwaysDraws) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_formFillingEnabled) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_toolbarHidden) = 1;
  v11 = v1 + OBJC_IVAR___PPKMarkupContainerViewController__currentPDFPageIndex;
  *v11 = 0;
  *(v11 + 8) = 1;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_showBannerView) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_pdfBackgroundColor) = 0;
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_shouldAskDelegateToEnableMarkup) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

double block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t partial apply for closure #1 in MarkupContainerViewController.updateZoomScales(animated:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in MarkupContainerViewController.updateZoomScales(animated:)(a1, v7, v8, v4, v5, v6, v9);
}

uint64_t partial apply for closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:)(uint64_t a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CRAssetVSgMd, &_s9Coherence7CRAssetVSgMR) - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMd, &_s9Coherence7CapsuleVy8PaperKit0C8DocumentVGSgMR) - 8);
  v15 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v6 = *(v5 + 64);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGSgMR) - 8);
  v14 = (v15 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  type metadata accessor for URL();
  type metadata accessor for UTType();
  v12 = v1[3];
  v13 = v1[2];
  v8 = v1[5];
  v11 = v1[4];
  v9 = swift_task_alloc();
  *(v16 + 16) = v9;
  *v9 = v16;
  v9[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in MarkupContainerViewController.write(to:imageType:error:embeddingSourceImageAndEditModel:options:)(a1, v13, v12, v11, v8, v1 + v3, v1 + v15, v1 + v14);
}

uint64_t partial apply for closure #1 in static MarkupContainerViewController.write(context:fileCoordinator:originalAsset:pdfDocument:imagePaper:to:imageType:embeddingSourceImageAndEditModel:encryptPrivateMetadata:options:)(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in static MarkupContainerViewController.write(context:fileCoordinator:originalAsset:pdfDocument:imagePaper:to:imageType:embeddingSourceImageAndEditModel:encryptPrivateMetadata:options:)(a1, a2, v6);
}

uint64_t partial apply for closure #1 in MarkupContainerViewController.dataRepresentation(withError:)(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit5ImageVGMd, &_s9Coherence7CapsuleVy8PaperKit5ImageVGMR) - 8);
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v7 = *(v1 + 2);
  v8 = *(v1 + 3);
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + 6);
  v12 = v1[7];
  v13 = *(v1 + 8);
  v14 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in MarkupContainerViewController.dataRepresentation(withError:)(v9, v10, v12, a1, v7, v8, v11, v13, v1 + v6, v14);
}

unint64_t lazy protocol witness table accessor for type PPKMarkupContainerViewControllerError and conformance PPKMarkupContainerViewControllerError()
{
  result = lazy protocol witness table cache variable for type PPKMarkupContainerViewControllerError and conformance PPKMarkupContainerViewControllerError;
  if (!lazy protocol witness table cache variable for type PPKMarkupContainerViewControllerError and conformance PPKMarkupContainerViewControllerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PPKMarkupContainerViewControllerError and conformance PPKMarkupContainerViewControllerError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PPKMarkupContainerViewControllerError and conformance PPKMarkupContainerViewControllerError;
  if (!lazy protocol witness table cache variable for type PPKMarkupContainerViewControllerError and conformance PPKMarkupContainerViewControllerError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PPKMarkupContainerViewControllerError and conformance PPKMarkupContainerViewControllerError);
  }

  return result;
}

uint64_t keypath_set_103Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a5;
  v10 = swift_beginAccess();
  *(v8 + v9) = v7;
  return a6(v10);
}

double keypath_set_121Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
  return MarkupContainerViewController.delegate.didset();
}

uint64_t keypath_set_109Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void type metadata completion function for MarkupContainerViewController(uint64_t a1)
{
  type metadata accessor for CRAsset?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x418);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = dispatch thunk of MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:);

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void specialized MarkupContainerViewController.handleSqueezeInteractionDidChangePaletteViewVisibilityNotification(_:)()
{
  v1 = [v0 viewIfLoaded];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 window];

    if (v3)
    {
      v9 = [v3 windowScene];

      if (v9)
      {
        v4 = [objc_opt_self() _existingInteractionForWindowScene_];
        if (v4)
        {
          v5 = v4;
          v6 = OBJC_IVAR___PPKMarkupContainerViewController_annotationEditingEnabled;
          swift_beginAccess();
          if (*(v0 + v6) & 1) == 0 && ([v5 _paletteViewVisible])
          {
            swift_beginAccess();
            Strong = swift_unknownObjectWeakLoadStrong();
            if (Strong)
            {
              v8 = Strong;
              if (([Strong respondsToSelector_] & 1) == 0)
              {

                swift_unknownObjectRelease();
                return;
              }

              [v8 markupContainerViewControllerDidChangeContent:v0 enablingMarkup:1];
              swift_unknownObjectRelease();
            }
          }
        }

        else
        {
        }
      }
    }
  }
}

void specialized MarkupContainerViewControllerAnalysisDelegate.contextWillPresentVisualSearchController(_:)(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      if ([v4 respondsToSelector_])
      {
        v5 = swift_unknownObjectWeakLoadStrong();
        if (!v5)
        {
          swift_unknownObjectRelease();
          __break(1u);
          return;
        }

        v6 = v5;
        [v4 *a1];
      }

      swift_unknownObjectRelease();
    }
  }
}

void specialized MarkupContainerViewControllerAnalysisDelegate.contextActiveInteractionTypesDidChange(_:)(SEL *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();

    if (v4)
    {
      if ([v4 respondsToSelector_])
      {
        v5 = swift_unknownObjectWeakLoadStrong();
        if (!v5)
        {
          swift_unknownObjectRelease();
          __break(1u);
          return;
        }

        v6 = v5;
        [v4 *a1];
      }

      swift_unknownObjectRelease();
    }
  }
}

uint64_t partial apply for closure #1 in MarkupContainerViewController.doubleTapped(_:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in MarkupContainerViewController.doubleTapped(_:)(a1, v4, v5, v6, v7, v9, v8);
}

void partial apply for specialized closure #1 in CanvasElementViewController.rulerHostView.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + direct field offset for CanvasElementViewController._rulerHostView);
  *(v2 + direct field offset for CanvasElementViewController._rulerHostView) = v1;
  v4 = v1;
  specialized CanvasElementViewController._rulerHostView.didset(v3);
}

void partial apply for specialized closure #1 in CanvasElementViewController._rulerHostingDelegate.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + direct field offset for CanvasElementViewController.__rulerHostingDelegate);
  *(v1 + direct field offset for CanvasElementViewController.__rulerHostingDelegate) = v2;
  v4 = v2;
}

uint64_t partial apply for @objc closure #1 in MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return @objc closure #1 in MarkupContainerViewController.write(to:imageType:embeddingSourceImageAndEditModel:options:)(v2, v3, v4, v5, v6, v7);
}

uint64_t closure #1 in static MarkupContainerViewController.write(context:fileCoordinator:originalAsset:pdfDocument:imagePaper:to:imageType:embeddingSourceImageAndEditModel:encryptPrivateMetadata:options:)partial apply(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return closure #1 in static MarkupContainerViewController.write(context:fileCoordinator:originalAsset:pdfDocument:imagePaper:to:imageType:embeddingSourceImageAndEditModel:encryptPrivateMetadata:options:)(a1, a2, v6);
}

uint64_t _s8PaperKit9PDFPageIDVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:)(uint64_t a1)
{
  v3 = *(type metadata accessor for DataOrURL(0) - 8);
  v13 = *(v1 + 16);
  v4 = *(v1 + 32);
  v12 = *(v1 + 24);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = *(v1 + ((((*(v3 + 64) + ((*(v3 + 80) + 65) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in MarkupContainerViewController.load(from:with:placeholderImage:completionHandler:)(v9, a1, v13, v12, v4, v5, v6, v7, v8);
}

void partial apply for closure #2 in MarkupContainerViewController.swapPlaceholderImageWithContentView(with:_:)()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  [*(v0 + 16) removeFromSuperview];
  v3 = *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderImageScrollView);
  *(v1 + OBJC_IVAR___PPKMarkupContainerViewController_placeholderImageScrollView) = 0;

  if (v2)
  {
    v2();
  }
}

void partial apply for specialized closure #1 in CanvasElementViewController.isSixChannelBlendingEnabled.setter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = direct field offset for CanvasElementViewController._isSixChannelBlendingEnabled;
  swift_beginAccess();
  *(v1 + v3) = v2;
  specialized CanvasElementViewController._isSixChannelBlendingEnabled.didset();
}

uint64_t partial apply for closure #1 in MarkupContainerViewController.loadImage(from:with:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in CanvasGenerationTool.magicPaperViewControllerDidCancel(_:);

  return closure #1 in MarkupContainerViewController.loadImage(from:with:)(a1, v4, v5, v7, v6);
}

uint64_t _s8PaperKit5ImageVAC9Coherence4CRDTAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_19Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t _s8PaperKit9PDFPageIDVWObTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s8PaperKit9DataOrURLOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t partial apply for closure #1 in MarkupContainerViewController.performBlockWhenContentIsLoaded(_:)(__n128 a1)
{
  v2 = *(v1 + 16);
  result = static Task<>.isCancelled.getter();
  if ((result & 1) == 0)
  {
    return v2();
  }

  return result;
}

uint64_t Array<A>.fontName.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v98 = &v75 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v104 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v105 = &v75 - v8;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGMR);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v75 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGMR);
  MEMORY[0x1EEE9AC00](v94);
  v89 = &v75 - v10;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGSS_GMd, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGSS_GMR);
  MEMORY[0x1EEE9AC00](v88);
  v12 = &v75 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v87 = &v75 - v14;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGSSGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGSSGMR);
  MEMORY[0x1EEE9AC00](v93);
  v86 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v85 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v75 - v23;
  v26 = MEMORY[0x1E69E7CC0];
  v111 = MEMORY[0x1E69E7CC0];
  v84 = *(a1 + 16);
  if (v84)
  {
    v27 = 0;
    v29 = *(v20 + 16);
    v28 = v20 + 16;
    v80 = v29;
    v79 = a1 + ((*(v28 + 64) + 32) & ~*(v28 + 64));
    v78 = (v28 + 16);
    v77 = *(v28 + 56);
    v103 = (v3 + 48);
    v99 = (v3 + 32);
    v97 = (v3 + 8);
    v76 = (v28 - 8);
    v83 = v18;
    v82 = v28;
    v81 = &v75 - v23;
    v75 = v19;
    do
    {
      v92 = v27;
      v33 = v80;
      (v80)(v25, v79 + v77 * v27, v19, v24);
      v34 = v87;
      v33(v87, v25, v19);
      v35 = v19;
      v36 = *v78;
      (*v78)(v18, v34, v35);
      v37 = v91;
      v38 = &v18[*(v91 + 44)];
      *v38 = closure #1 in CRAttributedString.Runs<>.familyNames.getter;
      v38[1] = 0;
      v39 = &v18[*(v94 + 36)];
      *v39 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
      v39[1] = 0;
      v40 = &v18[*(v93 + 44)];
      *v40 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
      *(v40 + 1) = 0;
      v110 = MEMORY[0x1E69E7CD0];
      v41 = v86;
      outlined init with copy of Date?(v18, v86, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGSSGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGSSGMR);
      v42 = v89;
      outlined init with take of Range<AttributedString.Index>(v41, v89, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGMR);
      v43 = v90;
      outlined init with take of Range<AttributedString.Index>(v42, v90, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGMR);
      v44 = v75;
      v36(v85, v43, v75);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C0]);
      dispatch thunk of Sequence.makeIterator()();
      v45 = (v43 + *(v37 + 44));
      v46 = *v45;
      v47 = v45[1];
      v48 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSg_GMd, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSg_GMR) + 44)];
      v101 = v47;
      v102 = v46;
      *v48 = v46;
      *(v48 + 1) = v47;
      v49 = (v42 + *(v94 + 36));
      v50 = *v49;
      v51 = v49[1];
      v52 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgG_GMd, &_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgG_GMR) + 36)];
      v100 = v50;
      *v52 = v50;
      *(v52 + 1) = v51;
      v53 = (v41 + *(v93 + 44));
      v54 = *v53;
      v55 = v53[1];
      v56 = &v12[*(v88 + 44)];
      v95 = v55;
      v96 = v54;
      *v56 = v54;
      *(v56 + 1) = v55;
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C8]);
      v57 = v105;
      v58 = v12;
      v19 = v44;
      dispatch thunk of IteratorProtocol.next()();
      v59 = v104;
      outlined init with take of Range<AttributedString.Index>(v57, v104, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
      v60 = *v103;
      v61 = (*v103)(v59, 1, v2);
      v30 = MEMORY[0x1E69E7CD0];
      if (v61 != 1)
      {
        v62 = *v99;
        do
        {
          v64 = v98;
          v62(v98, v59, v2);
          v102(&v106, v64);
          v65 = v64;
          v66 = v2;
          (*v97)(v65, v2);
          v68 = v106;
          v67 = v107;
          v108 = v106;
          v109 = v107;
          if (v100(&v108))
          {
            v108 = v68;
            v109 = v67;
            v96(&v106, &v108);

            specialized Set._Variant.insert(_:)(&v108, v106, v107);
          }

          v63 = v105;
          dispatch thunk of IteratorProtocol.next()();
          v59 = v104;
          outlined init with take of Range<AttributedString.Index>(v63, v104, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
          v2 = v66;
        }

        while (v60(v59, 1, v66) != 1);
        v30 = v110;
      }

      v27 = v92 + 1;
      v12 = v58;
      v31 = v58;
      v32 = v30;
      outlined destroy of StocksKitCurrencyCache.Provider?(v31, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGSS_GMd, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGSS_GMR);
      v18 = v83;
      outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGSSGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSSSgGGSSGMR);
      v25 = v81;
      (*v76)(v81, v19);
      specialized Array.append<A>(contentsOf:)(v32);
    }

    while (v27 != v84);
    v26 = v111;
  }

  v69 = *(v26 + 16);
  if (v69 <= 1)
  {
    if (v69)
    {
      v74 = *(v26 + 32);

      return v74;
    }

    else
    {

      return 0;
    }
  }

  else
  {

    if (one-time initialization token for paperKitBundle != -1)
    {
      swift_once();
    }

    v112._object = 0x80000001D4088270;
    v70._countAndFlagsBits = 0x656C7069746C754DLL;
    v71.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v71.value._object = 0xEB00000000656C62;
    v70._object = 0xE800000000000000;
    v72._countAndFlagsBits = 0;
    v72._object = 0xE000000000000000;
    v112._countAndFlagsBits = 0xD00000000000003FLL;
    return NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, paperKitBundle, v72, v112)._countAndFlagsBits;
  }
}

id Array<A>.fontSize.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v98 = &v75 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v75 - v9;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGMR);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v75 - v10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGMR);
  MEMORY[0x1EEE9AC00](v93);
  v89 = &v75 - v11;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSf_GMd, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSf_GMR);
  MEMORY[0x1EEE9AC00](v88);
  v13 = &v75 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v87 = &v75 - v15;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMR);
  MEMORY[0x1EEE9AC00](v92);
  v86 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v75 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v85 = &v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v75 - v24;
  v28 = MEMORY[0x1E69E7CC0];
  v110 = MEMORY[0x1E69E7CC0];
  v84 = *(a1 + 16);
  if (v84)
  {
    v29 = 0;
    v31 = *(v21 + 16);
    v30 = v21 + 16;
    v80 = v31;
    v79 = a1 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v78 = (v30 + 16);
    v77 = *(v30 + 56);
    v104 = (v3 + 48);
    v99 = (v3 + 32);
    v97 = (v3 + 8);
    v76 = (v30 - 8);
    v75 = v13;
    v32 = v25;
    v83 = v19;
    v82 = v30;
    v81 = &v75 - v24;
    do
    {
      v91 = v29;
      v34 = v79 + v77 * v29;
      v35 = v32;
      v36 = v32;
      v37 = v80;
      (v80)(v27, v34, v35, v26);
      v38 = v87;
      v37(v87, v27, v36);
      v39 = *v78;
      (*v78)(v19, v38, v36);
      v40 = &v19[*(v94 + 44)];
      *v40 = closure #1 in CRAttributedString.Runs<>.fontSizes.getter;
      v40[1] = 0;
      v41 = &v19[*(v93 + 36)];
      *v41 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
      v41[1] = 0;
      v42 = &v19[*(v92 + 44)];
      *v42 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
      *(v42 + 1) = 0;
      v109 = MEMORY[0x1E69E7CD0];
      v43 = v19;
      v44 = v86;
      outlined init with copy of Date?(v43, v86, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMR);
      v45 = v89;
      outlined init with take of Range<AttributedString.Index>(v44, v89, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGMR);
      v46 = v90;
      outlined init with take of Range<AttributedString.Index>(v45, v90, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGMR);
      v39(v85, v46, v36);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C0]);
      v47 = v75;
      dispatch thunk of Sequence.makeIterator()();
      v48 = (v46 + *(v94 + 44));
      v49 = *v48;
      v50 = v48[1];
      v51 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSg_GMd, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSg_GMR) + 44));
      v102 = v50;
      v103 = v49;
      *v51 = v49;
      v51[1] = v50;
      v52 = (v45 + *(v93 + 36));
      v53 = *v52;
      v54 = v52[1];
      v55 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgG_GMd, &_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgG_GMR) + 36));
      v100 = v54;
      v101 = v53;
      *v55 = v53;
      v55[1] = v54;
      v56 = (v44 + *(v92 + 44));
      v57 = *v56;
      v58 = v56[1];
      v59 = (v47 + *(v88 + 44));
      v95 = v58;
      v96 = v57;
      *v59 = v57;
      v59[1] = v58;
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C8]);
      v60 = v105;
      v61 = v47;
      v32 = v36;
      dispatch thunk of IteratorProtocol.next()();
      outlined init with take of Range<AttributedString.Index>(v60, v7, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
      v62 = *v104;
      v63 = (*v104)(v7, 1, v2);
      v33 = MEMORY[0x1E69E7CD0];
      if (v63 != 1)
      {
        v64 = *v99;
        do
        {
          v66 = v98;
          v67 = v7;
          v64(v98, v7, v2);
          v103(&v106, v66);
          v68 = v66;
          v69 = v2;
          (*v97)(v68, v2);
          v70 = v106;
          v71 = BYTE4(v106);
          v107 = v106;
          v108 = BYTE4(v106);
          if (v101(&v107))
          {
            v107 = v70;
            v108 = v71;
            v96(&v106, &v107);
            specialized Set._Variant.insert(_:)(&v107, *&v106);
          }

          v65 = v105;
          dispatch thunk of IteratorProtocol.next()();
          v7 = v67;
          outlined init with take of Range<AttributedString.Index>(v65, v67, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
          v2 = v69;
        }

        while (v62(v67, 1, v69) != 1);
        v33 = v109;
      }

      v29 = v91 + 1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSf_GMd, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSf_GMR);
      v19 = v83;
      outlined destroy of StocksKitCurrencyCache.Provider?(v83, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMR);
      v27 = v81;
      (*v76)(v81, v32);
      specialized Array.append<A>(contentsOf:)(v33);
    }

    while (v29 != v84);
    v28 = v110;
  }

  if (!*(v28 + 16))
  {

    if (one-time initialization token for textBoxDefaultFont == -1)
    {
      goto LABEL_17;
    }

    goto LABEL_24;
  }

  v72 = *(v28 + 32);

  if ((LODWORD(v72) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
  }

  else if (v72 > -9.2234e18)
  {
    if (v72 < 9.2234e18)
    {
      return v72;
    }

    goto LABEL_23;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  swift_once();
LABEL_17:
  result = [static UIConstants.textBoxDefaultFont pointSize];
  if ((*&v74 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  if (v74 <= -9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v74 < 9.22337204e18)
  {
    return v74;
  }

LABEL_27:
  __break(1u);
  return result;
}

BOOL Array<A>.hasMultipleFontSizes.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v97 = &v74 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v104 = &v74 - v9;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGMR);
  MEMORY[0x1EEE9AC00](v93);
  v89 = &v74 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGMR);
  MEMORY[0x1EEE9AC00](v92);
  v88 = &v74 - v11;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSf_GMd, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSf_GMR);
  MEMORY[0x1EEE9AC00](v87);
  v13 = &v74 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v86 = &v74 - v15;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMR);
  MEMORY[0x1EEE9AC00](v91);
  v85 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v74 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v84 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v74 - v24;
  v28 = MEMORY[0x1E69E7CC0];
  v109 = MEMORY[0x1E69E7CC0];
  v83 = *(a1 + 16);
  if (v83)
  {
    v29 = 0;
    v31 = *(v21 + 16);
    v30 = v21 + 16;
    v79 = v31;
    v78 = a1 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v77 = (v30 + 16);
    v76 = *(v30 + 56);
    v103 = (v3 + 48);
    v98 = (v3 + 32);
    v96 = (v3 + 8);
    v75 = (v30 - 8);
    v74 = v13;
    v32 = v25;
    v82 = v19;
    v81 = v30;
    v80 = &v74 - v24;
    do
    {
      v90 = v29;
      v34 = v78 + v76 * v29;
      v35 = v32;
      v36 = v32;
      v37 = v79;
      (v79)(v27, v34, v35, v26);
      v38 = v86;
      v37(v86, v27, v36);
      v39 = *v77;
      (*v77)(v19, v38, v36);
      v40 = &v19[*(v93 + 44)];
      *v40 = closure #1 in CRAttributedString.Runs<>.fontSizes.getter;
      v40[1] = 0;
      v41 = &v19[*(v92 + 36)];
      *v41 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
      v41[1] = 0;
      v42 = &v19[*(v91 + 44)];
      *v42 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
      *(v42 + 1) = 0;
      v108 = MEMORY[0x1E69E7CD0];
      v43 = v19;
      v44 = v85;
      outlined init with copy of Date?(v43, v85, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMR);
      v45 = v88;
      outlined init with take of Range<AttributedString.Index>(v44, v88, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGMR);
      v46 = v89;
      outlined init with take of Range<AttributedString.Index>(v45, v89, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGMR);
      v39(v84, v46, v36);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C0]);
      v47 = v74;
      dispatch thunk of Sequence.makeIterator()();
      v48 = (v46 + *(v93 + 44));
      v49 = *v48;
      v50 = v48[1];
      v51 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSg_GMd, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSg_GMR) + 44));
      v101 = v50;
      v102 = v49;
      *v51 = v49;
      v51[1] = v50;
      v52 = (v45 + *(v92 + 36));
      v53 = *v52;
      v54 = v52[1];
      v55 = (v47 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgG_GMd, &_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgG_GMR) + 36));
      v99 = v54;
      v100 = v53;
      *v55 = v53;
      v55[1] = v54;
      v56 = (v44 + *(v91 + 44));
      v57 = *v56;
      v58 = v56[1];
      v59 = (v47 + *(v87 + 44));
      v94 = v58;
      v95 = v57;
      *v59 = v57;
      v59[1] = v58;
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C8]);
      v60 = v104;
      v61 = v47;
      v32 = v36;
      dispatch thunk of IteratorProtocol.next()();
      outlined init with take of Range<AttributedString.Index>(v60, v7, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
      v62 = *v103;
      v63 = (*v103)(v7, 1, v2);
      v33 = MEMORY[0x1E69E7CD0];
      if (v63 != 1)
      {
        v64 = *v98;
        do
        {
          v66 = v97;
          v67 = v7;
          v64(v97, v7, v2);
          v102(&v105, v66);
          v68 = v66;
          v69 = v2;
          (*v96)(v68, v2);
          v70 = v105;
          v71 = BYTE4(v105);
          v106 = v105;
          v107 = BYTE4(v105);
          if (v100(&v106))
          {
            v106 = v70;
            v107 = v71;
            v95(&v105, &v106);
            specialized Set._Variant.insert(_:)(&v106, *&v105);
          }

          v65 = v104;
          dispatch thunk of IteratorProtocol.next()();
          v7 = v67;
          outlined init with take of Range<AttributedString.Index>(v65, v67, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
          v2 = v69;
        }

        while (v62(v67, 1, v69) != 1);
        v33 = v108;
      }

      v29 = v90 + 1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v61, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSf_GMd, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSf_GMR);
      v19 = v82;
      outlined destroy of StocksKitCurrencyCache.Provider?(v82, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSfSgGGSfGMR);
      v27 = v80;
      (*v75)(v80, v32);
      specialized Array.append<A>(contentsOf:)(v33);
    }

    while (v29 != v83);
    v28 = v109;
  }

  v72 = *(v28 + 16);

  return v72 > 1;
}

uint64_t Array<A>.textAlignment.getter(uint64_t a1)
{
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v2 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v4 = &v55 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v73 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v55 - v8;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSo15NSTextAlignmentV_GMd, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSo15NSTextAlignmentV_GMR);
  MEMORY[0x1EEE9AC00](v70);
  v10 = &v55 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v69 = &v55 - v12;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSo15NSTextAlignmentVGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSo15NSTextAlignmentVGMR);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v55 - v15;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v17 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v66 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v71 = &v55 - v21;
  v22 = MEMORY[0x1E69E7CC0];
  v83 = MEMORY[0x1E69E7CC0];
  v65 = *(a1 + 16);
  if (v65)
  {
    v57 = v4;
    v23 = 0;
    v25 = *(v17 + 16);
    v24 = v17 + 16;
    v62 = v25;
    v61 = a1 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
    v60 = (v24 + 16);
    v59 = *(v24 + 56);
    v79 = (v2 + 48);
    v56 = (v2 + 32);
    v55 = (v2 + 8);
    v58 = (v24 - 8);
    v26 = v10;
    v27 = v80;
    v28 = v71;
    v63 = v24;
    v64 = v16;
    v78 = v26;
    do
    {
      v75 = v23;
      v29 = v62;
      (v62)(v28, v61 + v59 * v23, v27, v20);
      v30 = v69;
      v29(v69, v28, v27);
      v31 = *v60;
      (*v60)(v16, v30, v27);
      v33 = v67;
      v32 = v68;
      v34 = &v16[*(v68 + 44)];
      *v34 = closure #1 in CRAttributedString.Runs<>.alignments.getter;
      *(v34 + 1) = 0;
      v82 = MEMORY[0x1E69E7CD0];
      outlined init with copy of Date?(v16, v33, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSo15NSTextAlignmentVGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSo15NSTextAlignmentVGMR);
      v31(v66, v33, v27);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C0]);
      dispatch thunk of Sequence.makeIterator()();
      v35 = *(v32 + 44);
      v37 = v73;
      v36 = v74;
      v38 = v72;
      v39 = (v33 + v35);
      v41 = *v39;
      v40 = v39[1];
      v42 = (v26 + *(v70 + 44));
      *v42 = v41;
      v42[1] = v40;
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C8]);
      dispatch thunk of IteratorProtocol.next()();
      outlined init with take of Range<AttributedString.Index>(v38, v37, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
      v43 = *v79;
      v44 = (*v79)(v37, 1, v36);
      v45 = MEMORY[0x1E69E7CD0];
      if (v44 != 1)
      {
        v46 = v74;
        v47 = *v56;
        v76 = v41;
        v77 = v47;
        v48 = v72;
        v49 = v73;
        v50 = v57;
        v51 = v55;
        do
        {
          v77(v50, v49, v46);
          v76(&v81, v50);
          (*v51)(v50, v46);
          specialized Set._Variant.insert(_:)(&v81, v81);
          dispatch thunk of IteratorProtocol.next()();
          outlined init with take of Range<AttributedString.Index>(v48, v49, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
        }

        while (v43(v49, 1, v46) != 1);
        v45 = v82;
        v26 = v78;
      }

      v23 = v75 + 1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v26, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSo15NSTextAlignmentV_GMd, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSo15NSTextAlignmentV_GMR);
      v16 = v64;
      outlined destroy of StocksKitCurrencyCache.Provider?(v64, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSo15NSTextAlignmentVGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSo15NSTextAlignmentVGMR);
      v28 = v71;
      v27 = v80;
      (*v58)(v71, v80);
      specialized Array.append<A>(contentsOf:)(v45);
    }

    while (v23 != v65);
    v22 = v83;
  }

  v52 = *(v22 + 16);
  if (v52)
  {
    if (v52 == 1)
    {
      v53 = *(v22 + 32);
    }

    else
    {
      v53 = 0;
    }
  }

  else
  {
    v53 = 4;
  }

  return v53;
}

void Array<A>.textStyles.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v239 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v277 = &v239 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v276 = &v239 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v274 = (&v239 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v273 = &v239 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v280 = &v239 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v279 = &v239 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v239 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v282 = &v239 - v22;
  v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMR);
  MEMORY[0x1EEE9AC00](v268);
  v266 = &v239 - v23;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMR);
  MEMORY[0x1EEE9AC00](v270);
  v265 = &v239 - v24;
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMd, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMR);
  MEMORY[0x1EEE9AC00](v264);
  v278 = &v239 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v275 = &v239 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v281 = &v239 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v283 = &v239 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v263 = &v239 - v33;
  v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMR);
  MEMORY[0x1EEE9AC00](v269);
  v249 = &v239 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v247 = &v239 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v251 = &v239 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v267 = &v239 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v239 - v42;
  v289 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  MEMORY[0x1EEE9AC00](v289);
  v248 = &v239 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v246 = &v239 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v250 = &v239 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v262 = &v239 - v50;
  v54 = MEMORY[0x1EEE9AC00](v51);
  v55 = &v239 - v52;
  v261 = *(a1 + 16);
  if (v261)
  {
    v56 = 0;
    v243 = v53;
    v58 = *(v53 + 16);
    v57 = v53 + 16;
    v259 = v58;
    v59 = (*(v57 + 64) + 32) & ~*(v57 + 64);
    v241 = a1;
    v258 = a1 + v59;
    v257 = *(v57 + 56);
    v256 = (v57 + 16);
    v288 = (v3 + 48);
    v285 = (v3 + 32);
    v240 = v3;
    v284 = (v3 + 8);
    v260 = v57;
    v255 = (v57 - 8);
    v242 = 1;
    v245 = v43;
    v244 = &v239 - v52;
    while (2)
    {
      v252 = v56;
      v60 = v258 + v257 * v56;
      v61 = v289;
      v62 = v259;
      (v259)(v55, v60, v289, v54);
      v63 = v263;
      v62(v263, v55, v61);
      v64 = *v256;
      v65 = v61;
      (*v256)(v43, v63, v61);
      v66 = &v43[*(v268 + 44)];
      *v66 = closure #1 in CRAttributedString.Runs<>.isBold.getter;
      v66[1] = 0;
      v67 = &v43[*(v270 + 36)];
      *v67 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
      v67[1] = 0;
      v68 = &v43[*(v269 + 44)];
      *v68 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
      *(v68 + 1) = 0;
      v292 = MEMORY[0x1E69E7CD0];
      v69 = v267;
      outlined init with copy of Date?(v43, v267, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMR);
      v70 = v265;
      outlined init with take of Range<AttributedString.Index>(v69, v265, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMR);
      v71 = v266;
      outlined init with take of Range<AttributedString.Index>(v70, v266, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMR);
      v254 = v64;
      v64(v262, v71, v65);
      v72 = lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C0]);
      v73 = v283;
      v253 = v72;
      dispatch thunk of Sequence.makeIterator()();
      v74 = v71 + *(v268 + 44);
      v76 = *v74;
      v75 = *(v74 + 8);
      v77 = &v73[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMd, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMR) + 44)];
      *v77 = v76;
      *(v77 + 1) = v75;
      v78 = v70 + *(v270 + 36);
      v79 = *v78;
      v80 = *(v78 + 8);
      v81 = &v73[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMd, &_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMR) + 36)];
      *v81 = v79;
      *(v81 + 1) = v80;
      v82 = (v267 + *(v269 + 44));
      v83 = *v82;
      v84 = v82[1];
      v85 = &v73[*(v264 + 44)];
      v271 = v84;
      v272 = v83;
      *v85 = v83;
      *(v85 + 1) = v84;
      v86 = lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C8]);
      v87 = v282;
      v287 = v86;
      dispatch thunk of IteratorProtocol.next()();
      outlined init with take of Range<AttributedString.Index>(v87, v20, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
      v286 = *v288;
      v88 = (v286)(v20, 1, v2);
      v89 = MEMORY[0x1E69E7CD0];
      if (v88 != 1)
      {
        v90 = *v285;
        (*v285)(v5, v20, v2);
        while (1)
        {
          v76(&v290, v5);
          (*v284)(v5, v2);
          v92 = v290;
          v291 = v290;
          if (v79(&v291))
          {
            v291 = v92;
            v272(&v290, &v291);
            specialized Set._Variant.insert(_:)(&v291, v290);
          }

          v91 = v282;
          dispatch thunk of IteratorProtocol.next()();
          outlined init with take of Range<AttributedString.Index>(v91, v20, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
          if ((v286)(v20, 1, v2) == 1)
          {
            break;
          }

          v90(v5, v20, v2);
        }

        v89 = v292;
      }

      v56 = v252 + 1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v283, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMd, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMR);
      v43 = v245;
      outlined destroy of StocksKitCurrencyCache.Provider?(v245, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMR);
      v93 = specialized Collection.first.getter(v89);
      v94 = 0;
      v95 = 1 << *(v89 + 32);
      if (v95 < 64)
      {
        v96 = ~(-1 << v95);
      }

      else
      {
        v96 = -1;
      }

      v97 = v96 & *(v89 + 56);
      v98 = (v95 + 63) >> 6;
      v55 = v244;
      if (v97)
      {
        while (1)
        {
          v99 = v94;
LABEL_19:
          v100 = __clz(__rbit64(v97));
          v97 &= v97 - 1;
          v93 &= *(*(v89 + 48) + (v100 | (v99 << 6)));
          if (!v97)
          {
            goto LABEL_15;
          }
        }
      }

      while (1)
      {
LABEL_15:
        v99 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        if (v99 >= v98)
        {
          break;
        }

        v97 = *(v89 + 56 + 8 * v99);
        ++v94;
        if (v97)
        {
          v94 = v99;
          goto LABEL_19;
        }
      }

      v101 = *v255;

      v272 = v101;
      v101(v55, v289);

      if (v93)
      {
        v102 = v261;
        if (v56 != v261)
        {
          continue;
        }
      }

      else
      {
        v242 = 0;
        v102 = v261;
      }

      break;
    }

    v103 = 0;
LABEL_27:
    if (v103 != v102)
    {
      v282 = v103;
      v104 = v258 + v257 * v103;
      v105 = v250;
      v106 = v289;
      v107 = v259;
      v259(v250, v104, v289);
      v108 = v263;
      v107(v263, v105, v106);
      v109 = v251;
      v110 = v106;
      v111 = v254;
      v254(v251, v108, v106);
      v112 = (v109 + *(v268 + 44));
      *v112 = closure #1 in CRAttributedString.Runs<>.isItalic.getter;
      v112[1] = 0;
      v113 = (v109 + *(v270 + 36));
      *v113 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
      v113[1] = 0;
      v114 = (v109 + *(v269 + 44));
      *v114 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
      v114[1] = 0;
      v292 = MEMORY[0x1E69E7CD0];
      v115 = v267;
      outlined init with copy of Date?(v109, v267, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMR);
      v116 = v265;
      outlined init with take of Range<AttributedString.Index>(v115, v265, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMR);
      v117 = v266;
      outlined init with take of Range<AttributedString.Index>(v116, v266, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMR);
      v111(v262, v117, v110);
      v118 = v281;
      dispatch thunk of Sequence.makeIterator()();
      v119 = v117 + *(v268 + 44);
      v121 = *v119;
      v120 = *(v119 + 8);
      v122 = &v118[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMd, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMR) + 44)];
      *v122 = v121;
      *(v122 + 1) = v120;
      v123 = v116 + *(v270 + 36);
      v124 = *v123;
      v125 = *(v123 + 8);
      v126 = &v118[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMd, &_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMR) + 36)];
      *v126 = v124;
      *(v126 + 1) = v125;
      v127 = (v115 + *(v269 + 44));
      v128 = *v127;
      v129 = v127[1];
      v130 = &v118[*(v264 + 44)];
      v283 = v128;
      *v130 = v128;
      *(v130 + 1) = v129;
      v131 = v279;
      dispatch thunk of IteratorProtocol.next()();
      v132 = v280;
      outlined init with take of Range<AttributedString.Index>(v131, v280, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
      v133 = (v286)(v132, 1, v2);
      v134 = MEMORY[0x1E69E7CD0];
      if (v133 != 1)
      {
        v135 = *v285;
        (*v285)(v5, v280, v2);
        while (1)
        {
          v121(&v290, v5);
          (*v284)(v5, v2);
          v138 = v290;
          v291 = v290;
          if (v124(&v291))
          {
            v291 = v138;
            (v283)(&v290, &v291);
            specialized Set._Variant.insert(_:)(&v291, v290);
          }

          v136 = v279;
          dispatch thunk of IteratorProtocol.next()();
          v137 = v280;
          outlined init with take of Range<AttributedString.Index>(v136, v280, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
          if ((v286)(v137, 1, v2) == 1)
          {
            break;
          }

          v135(v5, v137, v2);
        }

        v134 = v292;
      }

      v103 = v282 + 1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v281, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMd, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v251, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMR);
      v139 = specialized Collection.first.getter(v134);
      v140 = 0;
      v141 = 1 << *(v134 + 32);
      if (v141 < 64)
      {
        v142 = ~(-1 << v141);
      }

      else
      {
        v142 = -1;
      }

      v143 = v142 & *(v134 + 56);
      for (i = (v141 + 63) >> 6; v143; v139 &= *(*(v134 + 48) + (v146 | (v145 << 6))))
      {
        v145 = v140;
LABEL_44:
        v146 = __clz(__rbit64(v143));
        v143 &= v143 - 1;
      }

      while (1)
      {
        v145 = v140 + 1;
        if (__OFADD__(v140, 1))
        {
          goto LABEL_97;
        }

        if (v145 >= i)
        {

          v272(v250, v289);

          if (v139)
          {
            v102 = v261;
            if (v103 != v261)
            {
              goto LABEL_27;
            }

            v242 |= 2uLL;
          }

          v147 = 0;
LABEL_50:
          v282 = v147;
          v148 = v246;
          v149 = v289;
          v150 = v259;
          v259(v246, (v258 + v257 * v147), v289);
          v151 = v263;
          v150(v263, v148, v149);
          v152 = v247;
          v153 = v254;
          v254(v247, v151, v149);
          v154 = v268;
          v155 = (v152 + *(v268 + 44));
          *v155 = closure #1 in CRAttributedString.Runs<>.isUndlerline.getter;
          v155[1] = 0;
          v156 = (v152 + *(v270 + 36));
          *v156 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
          v156[1] = 0;
          v157 = (v152 + *(v269 + 44));
          *v157 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
          v157[1] = 0;
          v292 = MEMORY[0x1E69E7CD0];
          v158 = v267;
          outlined init with copy of Date?(v152, v267, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMR);
          v159 = v265;
          outlined init with take of Range<AttributedString.Index>(v158, v265, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMR);
          v160 = v266;
          outlined init with take of Range<AttributedString.Index>(v159, v266, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMR);
          v153(v262, v160, v289);
          v161 = v275;
          dispatch thunk of Sequence.makeIterator()();
          v162 = v160 + *(v154 + 44);
          v163 = *v162;
          v164 = *(v162 + 8);
          v165 = (v161 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMd, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMR) + 44));
          *v165 = v163;
          v165[1] = v164;
          v166 = v159 + *(v270 + 36);
          v168 = *v166;
          v167 = *(v166 + 8);
          v169 = (v161 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMd, &_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMR) + 36));
          *v169 = v168;
          v169[1] = v167;
          v170 = (v158 + *(v269 + 44));
          v171 = *v170;
          v172 = v170[1];
          v173 = (v161 + *(v264 + 44));
          v283 = v171;
          *v173 = v171;
          v173[1] = v172;
          v174 = v273;
          dispatch thunk of IteratorProtocol.next()();
          v175 = v274;
          outlined init with take of Range<AttributedString.Index>(v174, v274, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
          v176 = (v286)(v175, 1, v2);
          v177 = MEMORY[0x1E69E7CD0];
          if (v176 != 1)
          {
            v178 = *v285;
            (*v285)(v5, v274, v2);
            while (1)
            {
              v163(&v290, v5);
              (*v284)(v5, v2);
              v181 = v290;
              v291 = v290;
              if (v168(&v291))
              {
                v291 = v181;
                (v283)(&v290, &v291);
                specialized Set._Variant.insert(_:)(&v291, v290);
              }

              v179 = v273;
              dispatch thunk of IteratorProtocol.next()();
              v180 = v274;
              outlined init with take of Range<AttributedString.Index>(v179, v274, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
              if ((v286)(v180, 1, v2) == 1)
              {
                break;
              }

              v178(v5, v180, v2);
            }

            v177 = v292;
          }

          v147 = v282 + 1;
          outlined destroy of StocksKitCurrencyCache.Provider?(v275, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMd, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMR);
          outlined destroy of StocksKitCurrencyCache.Provider?(v247, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMR);
          v182 = specialized Collection.first.getter(v177);
          v183 = 0;
          v184 = 1 << *(v177 + 32);
          if (v184 < 64)
          {
            v185 = ~(-1 << v184);
          }

          else
          {
            v185 = -1;
          }

          v186 = v185 & *(v177 + 56);
          for (j = (v184 + 63) >> 6; v186; v182 &= *(*(v177 + 48) + (v189 | (v188 << 6))))
          {
            v188 = v183;
LABEL_66:
            v189 = __clz(__rbit64(v186));
            v186 &= v186 - 1;
          }

          while (1)
          {
            v188 = v183 + 1;
            if (__OFADD__(v183, 1))
            {
              goto LABEL_99;
            }

            if (v188 >= j)
            {

              v272(v246, v289);

              if (v182)
              {
                v190 = v261;
                if (v147 != v261)
                {
                  goto LABEL_50;
                }

                v242 |= 4uLL;
                v191 = v243;
              }

              else
              {
                v191 = v243;
                v190 = v261;
              }

              if (v190)
              {
                v192 = 0;
                v281 = *(v191 + 16);
                v243 = v191 + 16;
                v280 = v241 + ((*(v191 + 80) + 32) & ~*(v191 + 80));
                v279 = (v191 + 32);
                v193 = *(v191 + 72);
                v288 = (v240 + 48);
                v285 = (v240 + 8);
                v286 = (v240 + 32);
                v274 = (v191 + 8);
                v275 = v193;
LABEL_74:
                v282 = v192;
                v194 = v280 + v275 * v192;
                v195 = v248;
                v196 = v289;
                v197 = v281;
                (v281)(v248, v194, v289);
                v198 = v263;
                (v197)(v263, v195, v196);
                v199 = *v279;
                v200 = v249;
                (*v279)(v249, v198, v196);
                v201 = v268;
                v202 = (v200 + *(v268 + 44));
                *v202 = closure #1 in CRAttributedString.Runs<>.isStrikethrough.getter;
                v202[1] = 0;
                v203 = (v200 + *(v270 + 36));
                *v203 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
                v203[1] = 0;
                v204 = (v200 + *(v269 + 44));
                *v204 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
                v204[1] = 0;
                v292 = MEMORY[0x1E69E7CD0];
                v205 = v267;
                outlined init with copy of Date?(v200, v267, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMR);
                v206 = v265;
                outlined init with take of Range<AttributedString.Index>(v205, v265, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMR);
                v207 = v266;
                outlined init with take of Range<AttributedString.Index>(v206, v266, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMR);
                v199(v262, v207, v196);
                lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C0]);
                v208 = v278;
                dispatch thunk of Sequence.makeIterator()();
                v209 = (v207 + *(v201 + 44));
                v210 = *v209;
                v211 = v209[1];
                v212 = (v208 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMd, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMR) + 44));
                v287 = v210;
                *v212 = v210;
                v212[1] = v211;
                v213 = v206 + *(v270 + 36);
                v215 = *v213;
                v214 = *(v213 + 8);
                v216 = (v208 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMd, &_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMR) + 36));
                *v216 = v215;
                v216[1] = v214;
                v217 = (v205 + *(v269 + 44));
                v218 = *v217;
                v219 = v217[1];
                v220 = (v208 + *(v264 + 44));
                v283 = v219;
                v284 = v218;
                *v220 = v218;
                v220[1] = v219;
                lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C8]);
                v221 = v276;
                dispatch thunk of IteratorProtocol.next()();
                v222 = v277;
                outlined init with take of Range<AttributedString.Index>(v221, v277, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
                v223 = *v288;
                v224 = (*v288)(v222, 1, v2);
                v225 = MEMORY[0x1E69E7CD0];
                if (v224 != 1)
                {
                  v226 = *v286;
                  (*v286)(v5, v277, v2);
                  while (1)
                  {
                    v287(&v290, v5);
                    (*v285)(v5, v2);
                    v229 = v290;
                    v291 = v290;
                    if (v215(&v291))
                    {
                      v291 = v229;
                      (v284)(&v290, &v291);
                      specialized Set._Variant.insert(_:)(&v291, v290);
                    }

                    v227 = v276;
                    dispatch thunk of IteratorProtocol.next()();
                    v228 = v277;
                    outlined init with take of Range<AttributedString.Index>(v227, v277, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
                    if (v223(v228, 1, v2) == 1)
                    {
                      break;
                    }

                    v226(v5, v228, v2);
                  }

                  v225 = v292;
                }

                v192 = v282 + 1;
                outlined destroy of StocksKitCurrencyCache.Provider?(v278, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMd, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMR);
                outlined destroy of StocksKitCurrencyCache.Provider?(v249, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMR);
                v230 = specialized Collection.first.getter(v225);
                v231 = 0;
                v232 = 1 << *(v225 + 32);
                if (v232 < 64)
                {
                  v233 = ~(-1 << v232);
                }

                else
                {
                  v233 = -1;
                }

                v234 = v233 & *(v225 + 56);
                for (k = (v232 + 63) >> 6; v234; v230 &= *(*(v225 + 48) + (v237 | (v236 << 6))))
                {
                  v236 = v231;
LABEL_90:
                  v237 = __clz(__rbit64(v234));
                  v234 &= v234 - 1;
                }

                while (1)
                {
                  v236 = v231 + 1;
                  if (__OFADD__(v231, 1))
                  {
                    goto LABEL_98;
                  }

                  if (v236 >= k)
                  {
                    v238 = *v274;

                    v238(v248, v289);

                    if ((v230 & 1) != 0 && v192 != v261)
                    {
                      goto LABEL_74;
                    }

                    return;
                  }

                  v234 = *(v225 + 56 + 8 * v236);
                  ++v231;
                  if (v234)
                  {
                    v231 = v236;
                    goto LABEL_90;
                  }
                }
              }

              return;
            }

            v186 = *(v177 + 56 + 8 * v188);
            ++v183;
            if (v186)
            {
              v183 = v188;
              goto LABEL_66;
            }
          }
        }

        v143 = *(v134 + 56 + 8 * v145);
        ++v140;
        if (v143)
        {
          v140 = v145;
          goto LABEL_44;
        }
      }
    }

LABEL_100:
    __break(1u);
  }

  else
  {
    v242 = 7;
  }
}

void Array<A>.allowedTextStyles.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v127 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v127 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v154 = &v127 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v127 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v156 = &v127 - v15;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMR);
  MEMORY[0x1EEE9AC00](v150);
  v144 = &v127 - v16;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMR);
  MEMORY[0x1EEE9AC00](v149);
  v143 = &v127 - v17;
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMd, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMR);
  MEMORY[0x1EEE9AC00](v142);
  v155 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v157 = &v127 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v141 = &v127 - v22;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMR);
  MEMORY[0x1EEE9AC00](v148);
  v130 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v147 = &v127 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v127 - v27;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v29 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v129 = &v127 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v140 = &v127 - v32;
  v34 = MEMORY[0x1EEE9AC00](v33);
  v146 = &v127 - v35;
  v36 = *(a1 + 16);
  if (v36)
  {
    v38 = *(v29 + 16);
    v37 = v29 + 16;
    v139 = v38;
    v138 = a1 + ((*(v37 + 64) + 32) & ~*(v37 + 64));
    v137 = (v37 + 16);
    v136 = *(v37 + 56);
    v162 = (v3 + 48);
    v39 = (v3 + 32);
    v40 = (v3 + 8);
    v41 = 0;
    v158 = v40;
    v159 = v39;
    v135 = (v37 - 8);
    v127 = 12;
    v153 = v8;
    v134 = v37;
    v133 = v36;
    v128 = v28;
    while (2)
    {
      v145 = v41;
      v42 = v138 + v136 * v41;
      v43 = v146;
      v44 = v163;
      v45 = v139;
      (v139)(v146, v42, v163, v34);
      v46 = v141;
      v45(v141, v43, v44);
      v47 = *v137;
      (*v137)(v28, v46, v44);
      v48 = &v28[*(v150 + 44)];
      *v48 = closure #1 in CRAttributedString.Runs<>.supportsBold.getter;
      *(v48 + 1) = 0;
      v49 = &v28[*(v149 + 36)];
      *v49 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
      v49[1] = 0;
      v50 = v147;
      v51 = &v28[*(v148 + 44)];
      *v51 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
      *(v51 + 1) = 0;
      v166 = MEMORY[0x1E69E7CD0];
      outlined init with copy of Date?(v28, v50, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMR);
      v52 = v143;
      outlined init with take of Range<AttributedString.Index>(v50, v143, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMR);
      v53 = v144;
      outlined init with take of Range<AttributedString.Index>(v52, v144, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMR);
      v132 = v47;
      v47(v140, v53, v44);
      v54 = lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C0]);
      v55 = v157;
      v131 = v54;
      dispatch thunk of Sequence.makeIterator()();
      v56 = v53 + *(v150 + 44);
      v58 = *v56;
      v57 = *(v56 + 8);
      v59 = &v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMd, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMR) + 44)];
      *v59 = v58;
      *(v59 + 1) = v57;
      v60 = v52 + *(v149 + 36);
      v62 = *v60;
      v61 = *(v60 + 8);
      v63 = &v55[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMd, &_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMR) + 36)];
      *v63 = v62;
      *(v63 + 1) = v61;
      v64 = &v147[*(v148 + 44)];
      v65 = *v64;
      v66 = *(v64 + 1);
      v67 = &v55[*(v142 + 44)];
      v151 = v66;
      v152 = v65;
      *v67 = v65;
      *(v67 + 1) = v66;
      v68 = lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C8]);
      v69 = v156;
      v161 = v68;
      dispatch thunk of IteratorProtocol.next()();
      outlined init with take of Range<AttributedString.Index>(v69, v13, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
      v160 = *v162;
      v70 = v160(v13, 1, v2);
      v71 = MEMORY[0x1E69E7CD0];
      if (v70 != 1)
      {
        v72 = *v159;
        (*v159)(v5, v13, v2);
        while (1)
        {
          v58(&v164, v5);
          (*v158)(v5, v2);
          v74 = v164;
          v165 = v164;
          if (v62(&v165))
          {
            v165 = v74;
            v152(&v164, &v165);
            specialized Set._Variant.insert(_:)(&v165, v164);
          }

          v73 = v156;
          dispatch thunk of IteratorProtocol.next()();
          outlined init with take of Range<AttributedString.Index>(v73, v13, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
          if (v160(v13, 1, v2) == 1)
          {
            break;
          }

          v72(v5, v13, v2);
        }

        v71 = v166;
        v8 = v153;
      }

      v41 = v145 + 1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v157, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMd, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMR);
      v28 = v128;
      outlined destroy of StocksKitCurrencyCache.Provider?(v128, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMR);
      v75 = specialized Collection.first.getter(v71);
      v76 = 0;
      v77 = 1 << *(v71 + 32);
      if (v77 < 64)
      {
        v78 = ~(-1 << v77);
      }

      else
      {
        v78 = -1;
      }

      v79 = v78 & *(v71 + 56);
      v80 = (v77 + 63) >> 6;
      if (v79)
      {
        while (1)
        {
          v81 = v76;
LABEL_19:
          v82 = __clz(__rbit64(v79));
          v79 &= v79 - 1;
          v75 |= *(*(v71 + 48) + (v82 | (v81 << 6)));
          if (!v79)
          {
            goto LABEL_15;
          }
        }
      }

      while (1)
      {
LABEL_15:
        v81 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        if (v81 >= v80)
        {
          break;
        }

        v79 = *(v71 + 56 + 8 * v81);
        ++v76;
        if (v79)
        {
          v76 = v81;
          goto LABEL_19;
        }
      }

      v83 = *v135;

      v152 = v83;
      v83(v146, v163);

      if (v75)
      {
        v84 = v133;
        if (v41 != v133)
        {
          continue;
        }

        v127 = 13;
      }

      else
      {
        v84 = v133;
      }

      break;
    }

    v85 = 0;
LABEL_27:
    if (v85 != v84)
    {
      v151 = v85;
      v86 = (v138 + v136 * v85);
      v87 = v129;
      v88 = v163;
      v89 = v139;
      v139(v129, v86, v163);
      v90 = v141;
      v89(v141, v87, v88);
      v91 = v130;
      v92 = v132;
      v132(v130, v90, v88);
      v93 = (v91 + *(v150 + 44));
      *v93 = closure #1 in CRAttributedString.Runs<>.supportsItalic.getter;
      v93[1] = 0;
      v94 = (v91 + *(v149 + 36));
      *v94 = specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:);
      v94[1] = 0;
      v95 = v147;
      v96 = (v91 + *(v148 + 44));
      *v96 = specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:);
      v96[1] = 0;
      v166 = MEMORY[0x1E69E7CD0];
      outlined init with copy of Date?(v91, v95, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMR);
      v97 = v143;
      outlined init with take of Range<AttributedString.Index>(v95, v143, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMd, &_ss18LazyFilterSequenceVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGMR);
      v98 = v144;
      outlined init with take of Range<AttributedString.Index>(v97, v144, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGMR);
      v92(v140, v98, v88);
      v99 = v155;
      dispatch thunk of Sequence.makeIterator()();
      v100 = v98 + *(v150 + 44);
      v102 = *v100;
      v101 = *(v100 + 8);
      v103 = (v99 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMd, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSg_GMR) + 44));
      *v103 = v102;
      v103[1] = v101;
      v104 = v97 + *(v149 + 36);
      v106 = *v104;
      v105 = *(v104 + 8);
      v107 = (v99 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMd, &_ss18LazyFilterSequenceV8IteratorVys0a3MapC0Vy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgG_GMR) + 36));
      *v107 = v106;
      v107[1] = v105;
      v108 = (v95 + *(v148 + 44));
      v109 = *v108;
      v110 = v108[1];
      v111 = (v99 + *(v142 + 44));
      v156 = v110;
      v157 = v109;
      *v111 = v109;
      v111[1] = v110;
      v112 = v154;
      dispatch thunk of IteratorProtocol.next()();
      outlined init with take of Range<AttributedString.Index>(v112, v8, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
      v113 = v160(v8, 1, v2);
      v114 = MEMORY[0x1E69E7CD0];
      if (v113 != 1)
      {
        v115 = *v159;
        (*v159)(v5, v8, v2);
        while (1)
        {
          v102(&v164, v5);
          (*v158)(v5, v2);
          v118 = v164;
          v165 = v164;
          if (v106(&v165))
          {
            v165 = v118;
            (v157)(&v164, &v165);
            specialized Set._Variant.insert(_:)(&v165, v164);
          }

          v116 = v154;
          dispatch thunk of IteratorProtocol.next()();
          v117 = v116;
          v8 = v153;
          outlined init with take of Range<AttributedString.Index>(v117, v153, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
          if (v160(v8, 1, v2) == 1)
          {
            break;
          }

          v115(v5, v8, v2);
        }

        v114 = v166;
      }

      v85 = v151 + 1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v155, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMd, &_ss15LazyMapSequenceV8IteratorVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSb_GMR);
      outlined destroy of StocksKitCurrencyCache.Provider?(v130, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMd, &_ss15LazyMapSequenceVys0a6FilterC0VyABy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GSbSgGGSbGMR);
      v119 = specialized Collection.first.getter(v114);
      v120 = 0;
      v121 = 1 << *(v114 + 32);
      if (v121 < 64)
      {
        v122 = ~(-1 << v121);
      }

      else
      {
        v122 = -1;
      }

      v123 = v122 & *(v114 + 56);
      for (i = (v121 + 63) >> 6; v123; v119 |= *(*(v114 + 48) + (v126 | (v125 << 6))))
      {
        v125 = v120;
LABEL_44:
        v126 = __clz(__rbit64(v123));
        v123 &= v123 - 1;
      }

      while (1)
      {
        v125 = v120 + 1;
        if (__OFADD__(v120, 1))
        {
          goto LABEL_51;
        }

        if (v125 >= i)
        {

          v152(v129, v163);

          if (v119)
          {
            v84 = v133;
            if (v85 != v133)
            {
              goto LABEL_27;
            }
          }

          return;
        }

        v123 = *(v114 + 56 + 8 * v125);
        ++v120;
        if (v123)
        {
          v120 = v125;
          goto LABEL_44;
        }
      }
    }

LABEL_52:
    __break(1u);
  }
}

uint64_t Array<A>.fontColors.getter(uint64_t a1)
{
  v88 = type metadata accessor for Color(0);
  v2 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v86 = (&v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v64 - v5;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GMR);
  v6 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v82 = &v64 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v89 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v64 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAJ5ColorV_GMd, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAJ5ColorV_GMR);
  MEMORY[0x1EEE9AC00](v78);
  v16 = &v64 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMd, &_ss12LazySequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GGMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v77 = &v64 - v18;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMR);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v74 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v64 - v28;
  v31 = MEMORY[0x1E69E7CC0];
  v92 = MEMORY[0x1E69E7CC0];
  v73 = *(a1 + 16);
  if (v73)
  {
    v32 = 0;
    v34 = *(v24 + 16);
    v33 = v24 + 16;
    v69 = v34;
    v68 = a1 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
    v67 = (v33 + 16);
    v66 = *(v33 + 56);
    v35 = (v6 + 48);
    v80 = (v6 + 8);
    v81 = (v6 + 32);
    v36 = (v2 + 56);
    v37 = (v2 + 48);
    v65 = (v33 - 8);
    v64 = v16;
    v38 = v27;
    v72 = v22;
    v71 = v33;
    v70 = &v64 - v28;
    do
    {
      v79 = v32;
      v39 = v69;
      (v69)(v30, v68 + v66 * v32, v38, v29);
      v40 = v77;
      v39(v77, v30, v38);
      v41 = *v67;
      (*v67)(v22, v40, v38);
      v42 = v76;
      v43 = &v22[*(v76 + 44)];
      *v43 = closure #1 in CRAttributedString.Runs<>.fontColors.getter;
      v43[1] = 0;
      v91 = MEMORY[0x1E69E7CD0];
      v44 = v22;
      v45 = v75;
      outlined init with copy of Date?(v44, v75, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMR);
      v41(v74, v45, v38);
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C0]);
      v46 = v64;
      dispatch thunk of Sequence.makeIterator()();
      v47 = (v45 + *(v42 + 44));
      v48 = *v47;
      v49 = v47[1];
      v50 = v46;
      v51 = (v46 + *(v78 + 44));
      v83 = v49;
      v84 = v48;
      *v51 = v48;
      v51[1] = v49;
      lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(&lazy protocol witness table cache variable for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs, MEMORY[0x1E69952C8]);
      while (1)
      {
        v52 = v87;
        dispatch thunk of IteratorProtocol.next()();
        v53 = v52;
        v54 = v89;
        outlined init with take of Range<AttributedString.Index>(v53, v89, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMd, &_s9Coherence18CRAttributedStringV4RunsV3RunVy8PaperKit18TextAttributeScopeV__GSgMR);
        v55 = 1;
        if ((*v35)(v54, 1, v90) != 1)
        {
          v56 = v82;
          v57 = v90;
          (*v81)(v82, v89, v90);
          v84(v56);
          (*v80)(v56, v57);
          v55 = 0;
        }

        v58 = v55;
        v59 = v88;
        (*v36)(v14, v58, 1, v88);
        if ((*v37)(v14, 1, v59) == 1)
        {
          break;
        }

        v60 = v86;
        outlined init with take of Color(v14, v86);
        v61 = v85;
        specialized Set._Variant.insert(_:)(v85, v60);
        outlined destroy of Color(v61);
      }

      v32 = v79 + 1;
      outlined destroy of StocksKitCurrencyCache.Provider?(v50, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAJ5ColorV_GMd, &_ss15LazyMapSequenceV8IteratorVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAJ5ColorV_GMR);
      v84 = v91;
      v22 = v72;
      outlined destroy of StocksKitCurrencyCache.Provider?(v72, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMd, &_ss15LazyMapSequenceVy9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GAH5ColorVGMR);
      v30 = v70;
      (*v65)(v70, v38);
      specialized Array.append<A>(contentsOf:)(v84);
    }

    while (v32 != v73);
    v31 = v92;
  }

  v62 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC8PaperKit5ColorV_SayAFGTt0g5Tf4g_n(v31);

  return v62;
}

void CRAttributedString.Attributes<>.fontSize.getter()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
  CRAttributedString.Attributes.subscript.getter();

  if (v2 == 1)
  {
    if (one-time initialization token for textBoxDefaultFont != -1)
    {
      swift_once();
    }

    [static UIConstants.textBoxDefaultFont pointSize];
    if ((*&v0 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v0 > -9.22337204e18)
      {
        if (v0 < 9.22337204e18)
        {
          return;
        }

        goto LABEL_16;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  outlined consume of Font?(v1, v2, v3, v4);
  if ((~LODWORD(v5) & 0x7F800000) == 0)
  {
    goto LABEL_13;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_17:
    __break(1u);
  }
}

unint64_t lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute()
{
  result = lazy protocol witness table cache variable for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute);
  }

  return result;
}

uint64_t CRAttributedString.Attributes<>.fontColor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Color(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  lazy protocol witness table accessor for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute();
  CRAttributedString.Attributes.subscript.getter();
  v12 = *(v3 + 48);
  if (v12(v11, 1, v2) == 1)
  {
    if (one-time initialization token for textBoxDefaultTextColor != -1)
    {
      swift_once();
    }

    Color.init(cgColor:)([static UIConstants.textBoxDefaultTextColor CGColor], v8);
    if (v12(v8, 1, v2))
    {
      result = outlined destroy of StocksKitCurrencyCache.Provider?(v8, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      __break(1u);
    }

    else
    {

      outlined init with take of Color(v8, v5);
      outlined init with take of Color(v5, a1);
      result = v12(v11, 1, v2);
      if (result != 1)
      {
        return outlined destroy of StocksKitCurrencyCache.Provider?(v11, &_s8PaperKit5ColorVSgMd, &_s8PaperKit5ColorVSgMR);
      }
    }
  }

  else
  {

    return outlined init with take of Color(v11, a1);
  }

  return result;
}

uint64_t CRAttributedString.Attributes<>.textStyles.getter()
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV10AttributesVy8PaperKit18TextAttributeScopeV_GMR);
  lazy protocol witness table accessor for type TextAttributeScope.FontAttribute and conformance TextAttributeScope.FontAttribute();
  CRAttributedString.Attributes.subscript.getter();

  if (v8 == 1)
  {
    v0 = 0;
  }

  else
  {
    swift_beginAccess();
    v1 = static Font.Traits.bold;
    outlined consume of Font?(v7, v8, v9, v10);
    v0 = (v1 & ~v11) == 0;
  }

  swift_getKeyPath();
  CRAttributedString.Attributes.subscript.getter();

  if (v8 != 1)
  {
    swift_beginAccess();
    v2 = static Font.Traits.italic;
    outlined consume of Font?(v7, v8, v9, v10);
    if ((v2 & ~v11) == 0)
    {
      v0 |= 2uLL;
    }
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute();
  CRAttributedString.Attributes.subscript.getter();

  v3 = v0 | 4;
  if ((v7 & 1) == 0)
  {
    v3 = v0;
  }

  if (v7 == 2)
  {
    v4 = v0;
  }

  else
  {
    v4 = v3;
  }

  swift_getKeyPath();
  lazy protocol witness table accessor for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute();
  CRAttributedString.Attributes.subscript.getter();

  v5 = v4 | 8;
  if ((v7 & 1) == 0)
  {
    v5 = v4;
  }

  if (v7 == 2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

double outlined consume of Font?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute()
{
  result = lazy protocol witness table cache variable for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.ColorAttribute and conformance TextAttributeScope.ColorAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute()
{
  result = lazy protocol witness table cache variable for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.UnderlineAttribute and conformance TextAttributeScope.UnderlineAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute()
{
  result = lazy protocol witness table cache variable for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute;
  if (!lazy protocol witness table cache variable for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TextAttributeScope.StrikethroughAttribute and conformance TextAttributeScope.StrikethroughAttribute);
  }

  return result;
}

BOOL specialized closure #1 in LazySequenceProtocol.compactMap<A>(_:)(uint64_t a1)
{
  return *(a1 + 8) != 0;
}

{
  return (*(a1 + 4) & 1) == 0;
}

{
  v2 = type metadata accessor for CRAsset();
  return (*(*(v2 - 8) + 48))(a1, 1, v2) != 1;
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = a1[1];
  if (result)
  {
    *a2 = *a1;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(uint64_t result@<X0>, _DWORD *a2@<X8>)
{
  if (*(result + 4))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result;
  }

  return result;
}

unsigned __int8 *specialized closure #2 in LazySequenceProtocol.compactMap<A>(_:)@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    __break(1u);
  }

  else
  {
    *a2 = v2 & 1;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CRAttributedString<TextAttributeScope>.Runs and conformance CRAttributedString<A>.Runs(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMd, &_s9Coherence18CRAttributedStringV4RunsVy8PaperKit18TextAttributeScopeV_GMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined destroy of Color(uint64_t a1)
{
  v2 = type metadata accessor for Color(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for MiniTextButton(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for MiniTextButton(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t MiniTextButton.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI5StateVySbGMd, &_s7SwiftUI5StateVySbGMR);
  State.projectedValue.getter();
  outlined init with copy of MiniTextButton(v0, v12);
  v1 = swift_allocObject();
  outlined init with take of MiniTextButton(v12, v1 + 16);
  _s8PaperKit17MiniPopoverButtonV02isD7Visible17useHeightTracking5label7popoverACyxq_G7SwiftUI7BindingVySbG_Sbxycq_yctcfCAI15ModifiedContentVyANyANyANyANyAI5ImageVAI30_EnvironmentKeyWritingModifierVyAI5ColorVSgGGARyAI4FontVSgGGAI023AccessibilityAttachmentV0VGAI14_PaddingLayoutVGAI01_q9ShapeKindV0VyAI6CircleVGG_AI4ViewPAIE29presentationCompactAdaptationyQrAI22PresentationAdaptationVFQOyA14_AIE8staticIf_4thenQrqd___qd_0_xXEtAI18ViewInputPredicateRd__AIA13_Rd_0_r0_lFQOyA14_AIE19allowsSecureDrawingQryFQOyAA22TextStyleRepresentableVyAA0C9MenuStateCG_Qo__AI8SolariumVA14_AIE22presentationBackgroundyQrqd__AI10ShapeStyleRd__lFQOyANyA27_A5_G_ATQo_Qo__Qo_Tt3g5();
  *&v3 = static VerticalAlignment.firstTextBaseline.getter();
  *(&v3 + 1) = closure #4 in MiniColorButton.body.getter;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVy8PaperKit17MiniPopoverButtonVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAJyAA4FontVSgGGAA023AccessibilityAttachmentN0VGAA14_PaddingLayoutVGAA01_d9ShapeKindN0VyAA6CircleVGGAA4ViewPAAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyA6_AAE8staticIf_4thenQrqd___qd_0_xXEtAA0X14InputPredicateRd__AAA5_Rd_0_r0_lFQOyA6_AAE19allowsSecureDrawingQryFQOyAD22TextStyleRepresentableVyAD0G9MenuStateCG_Qo__AA8SolariumVA6_AAE0Y10BackgroundyQrqd__AA0U5StyleRd__lFQOyACyA19_AYG_ALQo_Qo__Qo_GAA010_AlignmentmN0VGMd, &_s7SwiftUI15ModifiedContentVy8PaperKit17MiniPopoverButtonVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAJyAA4FontVSgGGAA023AccessibilityAttachmentN0VGAA14_PaddingLayoutVGAA01_d9ShapeKindN0VyAA6CircleVGGAA4ViewPAAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyA6_AAE8staticIf_4thenQrqd___qd_0_xXEtAA0X14InputPredicateRd__AAA5_Rd_0_r0_lFQOyA6_AAE19allowsSecureDrawingQryFQOyAD22TextStyleRepresentableVyAD0G9MenuStateCG_Qo__AA8SolariumVA6_AAE0Y10BackgroundyQrqd__AA0U5StyleRd__lFQOyACyA19_AYG_ALQo_Qo__Qo_GAA010_AlignmentmN0VGMR);
  lazy protocol witness table accessor for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>();
  View.allowsSecureDrawing()();
  v12[6] = v10;
  v12[7] = v11;
  v12[8] = v3;
  v13 = 0;
  v12[2] = v6;
  v12[3] = v7;
  v12[4] = v8;
  v12[5] = v9;
  v12[0] = v4;
  v12[1] = v5;
  return outlined destroy of StocksKitCurrencyCache.Provider?(v12, &_s7SwiftUI15ModifiedContentVy8PaperKit17MiniPopoverButtonVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAJyAA4FontVSgGGAA023AccessibilityAttachmentN0VGAA14_PaddingLayoutVGAA01_d9ShapeKindN0VyAA6CircleVGGAA4ViewPAAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyA6_AAE8staticIf_4thenQrqd___qd_0_xXEtAA0X14InputPredicateRd__AAA5_Rd_0_r0_lFQOyA6_AAE19allowsSecureDrawingQryFQOyAD22TextStyleRepresentableVyAD0G9MenuStateCG_Qo__AA8SolariumVA6_AAE0Y10BackgroundyQrqd__AA0U5StyleRd__lFQOyACyA19_AYG_ALQo_Qo__Qo_GAA010_AlignmentmN0VGMd, &_s7SwiftUI15ModifiedContentVy8PaperKit17MiniPopoverButtonVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAJyAA4FontVSgGGAA023AccessibilityAttachmentN0VGAA14_PaddingLayoutVGAA01_d9ShapeKindN0VyAA6CircleVGGAA4ViewPAAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyA6_AAE8staticIf_4thenQrqd___qd_0_xXEtAA0X14InputPredicateRd__AAA5_Rd_0_r0_lFQOyA6_AAE19allowsSecureDrawingQryFQOyAD22TextStyleRepresentableVyAD0G9MenuStateCG_Qo__AA8SolariumVA6_AAE0Y10BackgroundyQrqd__AA0U5StyleRd__lFQOyACyA19_AYG_ALQo_Qo__Qo_GAA010_AlignmentmN0VGMR);
}

uint64_t closure #1 in MiniTextButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v27 - v6;
  v8 = Image.init(systemName:)();
  v9 = [objc_opt_self() labelColor];
  v10 = Color.init(uiColor:)();
  KeyPath = swift_getKeyPath();
  if (one-time initialization token for buttonFontSize != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Font.Design();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = static Font.system(size:weight:design:)();
  outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s7SwiftUI4FontV6DesignOSgMd, &_s7SwiftUI4FontV6DesignOSgMR);
  v14 = swift_getKeyPath();
  v27[1] = v8;
  v27[2] = KeyPath;
  v27[3] = v10;
  v27[4] = v14;
  v27[5] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMd, &_s7SwiftUI15ModifiedContentVyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGMR);
  lazy protocol witness table accessor for type ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>> and conformance <> ModifiedContent<A, B>();
  View.accessibilityIdentifier(_:)();

  v15 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>(v7, a1);
  v24 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGMR) + 36);
  *v24 = v15;
  *(v24 + 8) = v17;
  *(v24 + 16) = v19;
  *(v24 + 24) = v21;
  *(v24 + 32) = v23;
  *(v24 + 40) = 0;
  v25 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMd, &_s7SwiftUI15ModifiedContentVyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGAA14_PaddingLayoutVGAA01_d9ShapeKindI0VyAA6CircleVGGMR) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMd, &_s7SwiftUI25_ContentShapeKindModifierVyAA6CircleVGMR);
  static ContentShapeKinds.interaction.getter();
  result = outlined destroy of StocksKitCurrencyCache.Provider?(v7, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMR);
  *v25 = 0;
  return result;
}

uint64_t closure #2 in MiniTextButton.body.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = type metadata accessor for PresentationAdaptation();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAE13MiniMenuStateCG_Qo_Md, &_s7SwiftUI4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAE13MiniMenuStateCG_Qo_MR);
  v28 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0C14InputPredicateRd__AaBRd_0_r0_lFQOyAcAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAH13MiniMenuStateCG_Qo__AA8SolariumVAcAE22presentationBackgroundyQrqd__AA05ShapeO0Rd__lFQOyAA15ModifiedContentVyAnA14_PaddingLayoutVG_AA5ColorVQo_Qo_Md, &_s7SwiftUI4ViewPAAE8staticIf_4thenQrqd___qd_0_xXEtAA0C14InputPredicateRd__AaBRd_0_r0_lFQOyAcAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAH13MiniMenuStateCG_Qo__AA8SolariumVAcAE22presentationBackgroundyQrqd__AA05ShapeO0Rd__lFQOyAA15ModifiedContentVyAnA14_PaddingLayoutVG_AA5ColorVQo_Qo_MR);
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = *a1;
  v12 = a1[1];
  v13 = one-time initialization token for miniMenu;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = static UITextFormattingViewControllerConfiguration.miniMenu;
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v34 = v11;
  v35 = v12;
  v36 = v14;
  swift_unknownObjectWeakAssign();
  v16 = v14;

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8PaperKit22TextStyleRepresentableVyAA13MiniMenuStateCGMd, &_s8PaperKit22TextStyleRepresentableVyAA13MiniMenuStateCGMR);
  v18 = lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TextStyleRepresentable<MiniMenuState> and conformance TextStyleRepresentable<A>, &_s8PaperKit22TextStyleRepresentableVyAA13MiniMenuStateCGMd, &_s8PaperKit22TextStyleRepresentableVyAA13MiniMenuStateCGMR, &protocol conformance descriptor for TextStyleRepresentable<A>);
  View.allowsSecureDrawing()();
  outlined destroy of StocksKitCurrencyCache.Provider?(&v34, &_s8PaperKit22TextStyleRepresentableVyAA13MiniMenuStateCGMd, &_s8PaperKit22TextStyleRepresentableVyAA13MiniMenuStateCGMR);
  Solarium.init()();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyAA15ModifiedContentVyAcAE19allowsSecureDrawingQryFQOy8PaperKit04TextG13RepresentableVyAI13MiniMenuStateCG_Qo_AA14_PaddingLayoutVG_AA5ColorVQo_Md, &_s7SwiftUI4ViewPAAE22presentationBackgroundyQrqd__AA10ShapeStyleRd__lFQOyAA15ModifiedContentVyAcAE19allowsSecureDrawingQryFQOy8PaperKit04TextG13RepresentableVyAI13MiniMenuStateCG_Qo_AA14_PaddingLayoutVG_AA5ColorVQo_MR);
  v34 = v17;
  v35 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAG13MiniMenuStateCG_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAG13MiniMenuStateCG_Qo_AA14_PaddingLayoutVGMR);
  v22 = lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.allowsSecureDrawing()>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  v34 = v21;
  v35 = MEMORY[0x1E69815C0];
  v36 = v22;
  v37 = MEMORY[0x1E6981568];
  v23 = swift_getOpaqueTypeConformance2();
  v24 = MEMORY[0x1E6981CD8];
  v25 = MEMORY[0x1E6981CD0];
  View.staticIf<A, B>(_:then:)();
  (*(v28 + 8))(v7, v5);
  static PresentationAdaptation.popover.getter();
  v34 = v5;
  v35 = v24;
  v36 = v19;
  v37 = OpaqueTypeConformance2;
  v38 = v25;
  v39 = v23;
  swift_getOpaqueTypeConformance2();
  v26 = v30;
  View.presentationCompactAdaptation(_:)();
  (*(v31 + 8))(v4, v33);
  return (*(v29 + 8))(v10, v26);
}

uint64_t closure #1 in closure #2 in MiniTextButton.body.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAG13MiniMenuStateCG_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAG13MiniMenuStateCG_Qo_AA14_PaddingLayoutVGMR);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v17 - v3;
  v5 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAE13MiniMenuStateCG_Qo_Md, &_s7SwiftUI4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAE13MiniMenuStateCG_Qo_MR);
  (*(*(v14 - 8) + 16))(v4, a1, v14);
  v15 = &v4[*(v2 + 36)];
  *v15 = v5;
  *(v15 + 1) = v7;
  *(v15 + 2) = v9;
  *(v15 + 3) = v11;
  *(v15 + 4) = v13;
  v15[40] = 0;
  v17[1] = static Color.clear.getter();
  lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.allowsSecureDrawing()>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>();
  View.presentationBackground<A>(_:)();

  return outlined destroy of StocksKitCurrencyCache.Provider?(v4, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAG13MiniMenuStateCG_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAG13MiniMenuStateCG_Qo_AA14_PaddingLayoutVGMR);
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy8PaperKit17MiniPopoverButtonVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAJyAA4FontVSgGGAA023AccessibilityAttachmentN0VGAA14_PaddingLayoutVGAA01_d9ShapeKindN0VyAA6CircleVGGAA4ViewPAAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyA6_AAE8staticIf_4thenQrqd___qd_0_xXEtAA0X14InputPredicateRd__AAA5_Rd_0_r0_lFQOyA6_AAE19allowsSecureDrawingQryFQOyAD22TextStyleRepresentableVyAD0G9MenuStateCG_Qo__AA8SolariumVA6_AAE0Y10BackgroundyQrqd__AA0U5StyleRd__lFQOyACyA19_AYG_ALQo_Qo__Qo_GAA010_AlignmentmN0VGMd, &_s7SwiftUI15ModifiedContentVy8PaperKit17MiniPopoverButtonVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAJyAA4FontVSgGGAA023AccessibilityAttachmentN0VGAA14_PaddingLayoutVGAA01_d9ShapeKindN0VyAA6CircleVGGAA4ViewPAAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyA6_AAE8staticIf_4thenQrqd___qd_0_xXEtAA0X14InputPredicateRd__AAA5_Rd_0_r0_lFQOyA6_AAE19allowsSecureDrawingQryFQOyAD22TextStyleRepresentableVyAD0G9MenuStateCG_Qo__AA8SolariumVA6_AAE0Y10BackgroundyQrqd__AA0U5StyleRd__lFQOyACyA19_AYG_ALQo_Qo__Qo_GAA010_AlignmentmN0VGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0> and conformance MiniPopoverButton<A, B>, &_s8PaperKit17MiniPopoverButtonVy7SwiftUI15ModifiedContentVyAFyAFyAFyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAJyAD4FontVSgGGAD023AccessibilityAttachmentN0VGAD14_PaddingLayoutVGAD01_i9ShapeKindN0VyAD6CircleVGGAD4ViewPADE29presentationCompactAdaptationyQrAD22PresentationAdaptationVFQOyA6_ADE8staticIf_4thenQrqd___qd_0_xXEtAD0X14InputPredicateRd__ADA5_Rd_0_r0_lFQOyA6_ADE19allowsSecureDrawingQryFQOyAA22TextStyleRepresentableVyAA0C9MenuStateCG_Qo__AD8SolariumVA6_ADE0Y10BackgroundyQrqd__AD0U5StyleRd__lFQOyAFyA19_AYG_ALQo_Qo__Qo_GMd, &_s8PaperKit17MiniPopoverButtonVy7SwiftUI15ModifiedContentVyAFyAFyAFyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAJyAD4FontVSgGGAD023AccessibilityAttachmentN0VGAD14_PaddingLayoutVGAD01_i9ShapeKindN0VyAD6CircleVGGAD4ViewPADE29presentationCompactAdaptationyQrAD22PresentationAdaptationVFQOyA6_ADE8staticIf_4thenQrqd___qd_0_xXEtAD0X14InputPredicateRd__ADA5_Rd_0_r0_lFQOyA6_ADE19allowsSecureDrawingQryFQOyAA22TextStyleRepresentableVyAA0C9MenuStateCG_Qo__AD8SolariumVA6_ADE0Y10BackgroundyQrqd__AD0U5StyleRd__lFQOyAFyA19_AYG_ALQo_Qo__Qo_GMR, &protocol conformance descriptor for MiniPopoverButton<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVy8PaperKit17MiniPopoverButtonVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAJyAA4FontVSgGGAA023AccessibilityAttachmentN0VGAA14_PaddingLayoutVGAA01_d9ShapeKindN0VyAA6CircleVGGAA4ViewPAAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyA6_AAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0X14InputPredicateRd__AAA5_Rd_0_AAA5_Rd_1_r1_lFQOyAA6VStackVyA6_AAE19allowsSecureDrawingQryFQOyACyAD013OpacitySliderX0VAA06_FrameT0VG_Qo_G_AA8SolariumVA6_AAE0Y10BackgroundyQrqd__AA0U5StyleRd__lFQOyACyA23_AYG_ALQo_A28_Qo__Qo_GAA010_AlignmentmN0VGMd, &_s7SwiftUI15ModifiedContentVy8PaperKit17MiniPopoverButtonVyACyACyACyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAJyAA4FontVSgGGAA023AccessibilityAttachmentN0VGAA14_PaddingLayoutVGAA01_d9ShapeKindN0VyAA6CircleVGGAA4ViewPAAE29presentationCompactAdaptationyQrAA22PresentationAdaptationVFQOyA6_AAE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAA0X14InputPredicateRd__AAA5_Rd_0_AAA5_Rd_1_r1_lFQOyAA6VStackVyA6_AAE19allowsSecureDrawingQryFQOyACyAD013OpacitySliderX0VAA06_FrameT0VG_Qo_G_AA8SolariumVA6_AAE0Y10BackgroundyQrqd__AA0U5StyleRd__lFQOyACyA23_AYG_ALQo_A28_Qo__Qo_GAA010_AlignmentmN0VGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0> and conformance MiniPopoverButton<A, B>, &_s8PaperKit17MiniPopoverButtonVy7SwiftUI15ModifiedContentVyAFyAFyAFyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAJyAD4FontVSgGGAD023AccessibilityAttachmentN0VGAD14_PaddingLayoutVGAD01_i9ShapeKindN0VyAD6CircleVGGAD4ViewPADE29presentationCompactAdaptationyQrAD22PresentationAdaptationVFQOyA6_ADE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAD0X14InputPredicateRd__ADA5_Rd_0_ADA5_Rd_1_r1_lFQOyAD6VStackVyA6_ADE19allowsSecureDrawingQryFQOyAFyAA013OpacitySliderX0VAD06_FrameT0VG_Qo_G_AD8SolariumVA6_ADE0Y10BackgroundyQrqd__AD0U5StyleRd__lFQOyAFyA23_AYG_ALQo_A28_Qo__Qo_GMd, &_s8PaperKit17MiniPopoverButtonVy7SwiftUI15ModifiedContentVyAFyAFyAFyAFyAD5ImageVAD30_EnvironmentKeyWritingModifierVyAD5ColorVSgGGAJyAD4FontVSgGGAD023AccessibilityAttachmentN0VGAD14_PaddingLayoutVGAD01_i9ShapeKindN0VyAD6CircleVGGAD4ViewPADE29presentationCompactAdaptationyQrAD22PresentationAdaptationVFQOyA6_ADE8staticIf_4then4elseQrqd___qd_0_xXEqd_1_xXEtAD0X14InputPredicateRd__ADA5_Rd_0_ADA5_Rd_1_r1_lFQOyAD6VStackVyA6_ADE19allowsSecureDrawingQryFQOyAFyAA013OpacitySliderX0VAD06_FrameT0VG_Qo_G_AD8SolariumVA6_ADE0Y10BackgroundyQrqd__AD0U5StyleRd__lFQOyAFyA23_AYG_ALQo_A28_Qo__Qo_GMR, &protocol conformance descriptor for MiniPopoverButton<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<MiniPopoverButton<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>, _PaddingLayout>, _ContentShapeKindModifier<Circle>>, <<opaque return type of View.presentationCompactAdaptation(_:)>>.0>, _AlignmentWritingModifier> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModifiedContent<<<opaque return type of View.allowsSecureDrawing()>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>()
{
  result = lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.allowsSecureDrawing()>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>;
  if (!lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.allowsSecureDrawing()>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7SwiftUI15ModifiedContentVyAA4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAG13MiniMenuStateCG_Qo_AA14_PaddingLayoutVGMd, &_s7SwiftUI15ModifiedContentVyAA4ViewPAAE19allowsSecureDrawingQryFQOy8PaperKit22TextStyleRepresentableVyAG13MiniMenuStateCG_Qo_AA14_PaddingLayoutVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8PaperKit22TextStyleRepresentableVyAA13MiniMenuStateCGMd, &_s8PaperKit22TextStyleRepresentableVyAA13MiniMenuStateCGMR);
    lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type TextStyleRepresentable<MiniMenuState> and conformance TextStyleRepresentable<A>, &_s8PaperKit22TextStyleRepresentableVyAA13MiniMenuStateCGMd, &_s8PaperKit22TextStyleRepresentableVyAA13MiniMenuStateCGMR, &protocol conformance descriptor for TextStyleRepresentable<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModifiedContent<<<opaque return type of View.allowsSecureDrawing()>>.0, _PaddingLayout> and conformance <> ModifiedContent<A, B>);
  }

  return result;
}

uint64_t outlined init with copy of ModifiedContent<ModifiedContent<ModifiedContent<Image, _EnvironmentKeyWritingModifier<Color?>>, _EnvironmentKeyWritingModifier<Font?>>, AccessibilityAttachmentModifier>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMd, &_s7SwiftUI15ModifiedContentVyACyACyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA5ColorVSgGGAGyAA4FontVSgGGAA023AccessibilityAttachmentI0VGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SignatureLayout(uint64_t a1)
{
  result = type metadata singleton initialization cache for SignatureLayout;
  if (!type metadata singleton initialization cache for SignatureLayout)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *SignatureLayout.createView<A>(in:canvas:parent:)(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v38[1] = a4;
  v38[2] = a5;
  v38[3] = a1;
  v39 = a3;
  v40 = a2;
  v5 = type metadata accessor for CRKeyPath();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence3RefVy8PaperKit9SignatureVGMd, &_s9Coherence3RefVy8PaperKit9SignatureVGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7CapsuleVy8PaperKit9SignatureVGMd, &_s9Coherence7CapsuleVy8PaperKit9SignatureVGMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v38 - v19;
  (*(v6 + 16))(v8, v38[0], v5, v18);
  v21 = type metadata accessor for Signature(0);
  v22 = lazy protocol witness table accessor for type Signature and conformance Signature();
  Ref.init(id:)();
  type metadata accessor for Capsule();
  lazy protocol witness table accessor for type Ref<Signature> and conformance Ref<A>();
  Capsule.encapsulate<A>(_:)();
  (*(v10 + 8))(v12, v9);
  v41 = v21;
  v42 = v22;
  v43 = &protocol witness table for Signature;
  swift_getKeyPath();
  Capsule.subscript.getter();

  x = v44.origin.x;
  y = v44.origin.y;
  width = v44.size.width;
  height = v44.size.height;
  MinX = CGRectGetMinX(v44);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  MinY = CGRectGetMinY(v45);
  v46.origin.x = x;
  v46.origin.y = y;
  v46.size.width = width;
  v46.size.height = height;
  v29 = CGRectGetWidth(v46);
  v47.origin.x = x;
  v47.origin.y = y;
  v47.size.width = width;
  v47.size.height = height;
  v30 = CGRectGetHeight(v47);
  (*(v14 + 16))(v16, v20, v13);
  v31 = objc_allocWithZone(type metadata accessor for SignatureView(0));
  v32 = v39;
  v33 = v39;
  v34 = v40;
  v35 = v40;
  v36 = specialized SignatureView.init(frame:canvasElement:canvas:parentCanvasElement:)(v16, v34, v32, MinX, MinY, v29, v30);

  (*(v14 + 8))(v20, v13);
  return v36;
}

unint64_t lazy protocol witness table accessor for type Ref<Signature> and conformance Ref<A>()
{
  result = lazy protocol witness table cache variable for type Ref<Signature> and conformance Ref<A>;
  if (!lazy protocol witness table cache variable for type Ref<Signature> and conformance Ref<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s9Coherence3RefVy8PaperKit9SignatureVGMd, &_s9Coherence3RefVy8PaperKit9SignatureVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Ref<Signature> and conformance Ref<A>);
  }

  return result;
}

void BezierPathSource.init(from:)(CGMutablePathRef *a2@<X8>)
{
  v4 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for ValueTypes_BezierPath(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  dispatch thunk of CRDecoder.valueContainer()();
  if (v2)
  {

    return;
  }

  v55 = a2;
  v8 = dispatch thunk of CRDecoder.CRValueContainer.decode(_:)();
  v10 = v9;

  v59 = v8;
  v60 = v10;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  outlined copy of Data._Representation(v8, v10);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath(&lazy protocol witness table cache variable for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath, type metadata accessor for ValueTypes_BezierPath, &protocol conformance descriptor for ValueTypes_BezierPath);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v52 = v8;
  v53 = v10;
  Mutable = CGPathCreateMutable();
  v11 = *v7;
  v12 = *(*v7 + 16);
  if (!v12)
  {
LABEL_42:
    outlined consume of Data._Representation(v52, v53);

    outlined destroy of ValueTypes_BezierPath(v7);
    *v55 = Mutable;
    return;
  }

  v13 = 0;
  v14 = 0;
  v15 = v7[1];
  v16 = *(v15 + 16);
  v50 = v15;
  v51 = v16;
  v54 = v11 + 40;
  v48 = v15 + 32;
  v49 = v12 - 1;
  while (2)
  {
    v17 = (v54 + 16 * v13);
    v18 = v13;
    while (1)
    {
      if (v18 >= *(v11 + 16))
      {
        __break(1u);
        goto LABEL_47;
      }

      if (*v17 != 1)
      {
        v41 = type metadata accessor for CRCodingError();
        lazy protocol witness table accessor for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
        swift_allocError();
        v43 = v42;
        v44 = 0x80000001D40882B0;
        v45 = 0xD000000000000015;
LABEL_44:
        *v42 = v45;
        v42[1] = v44;
        (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E6995188], v41);
        swift_willThrow();
        outlined consume of Data._Representation(v52, v53);

        outlined destroy of ValueTypes_BezierPath(v7);
        return;
      }

      v19 = *(v17 - 1);
      if (v19 != 4)
      {
        break;
      }

      ++v18;
      CGPathCloseSubpath(Mutable);
      v17 += 16;
      if (v12 == v18)
      {
        goto LABEL_42;
      }
    }

    if (v19 > 1)
    {
      if (v19 == 2)
      {
        if (!__OFADD__(v14, 4))
        {
          if (v51 < v14 + 4)
          {
LABEL_45:
            v41 = type metadata accessor for CRCodingError();
            lazy protocol witness table accessor for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath(&lazy protocol witness table cache variable for type CRCodingError and conformance CRCodingError, MEMORY[0x1E6995198], MEMORY[0x1E69951A0]);
            swift_allocError();
            v43 = v42;
            v44 = 0x80000001D40882D0;
            v45 = 0xD000000000000019;
            goto LABEL_44;
          }

          if (v14 >= -2)
          {
            v24 = *(v50 + 16);
            if (v14 + 2 < v24)
            {
              if (v14 + 3 >= v24)
              {
                goto LABEL_62;
              }

              v47 = v14 + 4;
              if (v14 < v24)
              {
                v25 = *(v48 + 8 * (v14 + 2));
                v26 = *(v48 + 8 * (v14 + 3));
                v27 = (v48 + 8 * v14);
                v28 = *v27;
                v29 = v27[1];
                transform.b = 0.0;
                transform.c = 0.0;
                transform.a = 1.0;
                transform.d = 1.0;
                transform.tx = 0.0;
                transform.ty = 0.0;
                CGMutablePathRef.addQuadCurve(to:control:transform:)(__PAIR128__(v26, v25), __PAIR128__(v29, v28), &transform);
                goto LABEL_6;
              }

              goto LABEL_64;
            }

            goto LABEL_55;
          }

LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      if (!__OFADD__(v14, 6))
      {
        if (v51 >= v14 + 6)
        {
          if (v14 >= -4)
          {
            v33 = *(v50 + 16);
            if (v14 + 4 < v33)
            {
              if (v14 + 5 < v33)
              {
                v47 = v14 + 6;
                if (v14 < v33)
                {
                  v34 = *(v48 + 8 * (v14 + 4));
                  v35 = *(v48 + 8 * (v14 + 5));
                  v36 = (v48 + 8 * v14);
                  v37 = *v36;
                  v38 = v36[1];
                  v39 = v36[2];
                  v40 = v36[3];
                  v64.b = 0.0;
                  v64.c = 0.0;
                  v64.a = 1.0;
                  v64.d = 1.0;
                  v64.tx = 0.0;
                  v64.ty = 0.0;
                  CGMutablePathRef.addCurve(to:control1:control2:transform:)(__PAIR128__(v35, v34), __PAIR128__(v38, v37), __PAIR128__(v40, v39), &v64);
                  goto LABEL_6;
                }

                goto LABEL_63;
              }

LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

            goto LABEL_56;
          }

          goto LABEL_54;
        }

        goto LABEL_45;
      }

LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v20 = v14 + 2;
    if (!v19)
    {
      if (__OFADD__(v14, 2))
      {
        goto LABEL_49;
      }

      if (v51 < v20)
      {
        goto LABEL_45;
      }

      if (v14 < 0)
      {
        goto LABEL_52;
      }

      v21 = *(v50 + 16);
      if (v14 >= v21)
      {
        goto LABEL_57;
      }

      v47 = v14 + 2;
      if (v14 + 1 >= v21)
      {
        goto LABEL_59;
      }

      v22 = *(v48 + 8 * v14);
      v23 = *(v48 + 8 * (v14 + 1));
      v61.b = 0.0;
      v61.c = 0.0;
      v61.a = 1.0;
      v61.d = 1.0;
      v61.tx = 0.0;
      v61.ty = 0.0;
      CGMutablePathRef.move(to:transform:)(__PAIR128__(v23, v22), &v61);
LABEL_6:
      v14 = v47;
      v13 = v18 + 1;
      if (v49 == v18)
      {
        goto LABEL_42;
      }

      continue;
    }

    break;
  }

  if (__OFADD__(v14, 2))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v51 < v20)
  {
    goto LABEL_45;
  }

  if (v14 < 0)
  {
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v30 = *(v50 + 16);
  if (v14 >= v30)
  {
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v47 = v14 + 2;
  if (v14 + 1 < v30)
  {
    v31 = *(v48 + 8 * v14);
    v32 = *(v48 + 8 * (v14 + 1));
    v62.b = 0.0;
    v62.c = 0.0;
    v62.a = 1.0;
    v62.d = 1.0;
    v62.tx = 0.0;
    v62.ty = 0.0;
    CGMutablePathRef.addLine(to:transform:)(__PAIR128__(v32, v31), &v62);
    goto LABEL_6;
  }

LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
}

uint64_t outlined destroy of ValueTypes_BezierPath(uint64_t a1)
{
  v2 = type metadata accessor for ValueTypes_BezierPath(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void BezierPathSource.encode(to:)(uint64_t a1)
{
  v3 = type metadata accessor for ValueTypes_BezierPath(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (aBlock - v7);
  v9 = *v1;
  v10 = MEMORY[0x1E69E7CC0];
  *v8 = MEMORY[0x1E69E7CC0];
  v8[1] = v10;
  UnknownStorage.init()();
  NumberOfElements = CGPathGetNumberOfElements();
  v12 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v12;
  if (!isUniquelyReferenced_nonNull_native || NumberOfElements > *(v12 + 3) >> 1)
  {
    if (*(v12 + 2) <= NumberOfElements)
    {
      v14 = NumberOfElements;
    }

    else
    {
      v14 = *(v12 + 2);
    }

    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v14, 0, v12);
  }

  *v8 = v12;
  NumberOfPoints = CGPathGetNumberOfPoints();
  if (NumberOfPoints + 0x4000000000000000 < 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return;
  }

  v16 = 2 * NumberOfPoints;
  v17 = v8[1];
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v8[1] = v17;
  if (!v18 || v16 > *(v17 + 3) >> 1)
  {
    if (*(v17 + 2) <= v16)
    {
      v19 = v16;
    }

    else
    {
      v19 = *(v17 + 2);
    }

    v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v18, v19, 0, v17);
  }

  v8[1] = v17;
  v20 = swift_allocObject();
  *(v20 + 16) = v8;
  v21 = swift_allocObject();
  *(v21 + 16) = partial apply for closure #1 in BezierPathSource.encode(to:);
  *(v21 + 24) = v20;
  aBlock[4] = _sSPySo13CGPathElementVGIgy_ACIegy_TRTA_0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<CGPathElement>) -> ();
  aBlock[3] = &block_descriptor_24;
  v22 = _Block_copy(aBlock);

  CGPathApplyWithBlock(v9, v22);
  _Block_release(v22);
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    goto LABEL_19;
  }

  outlined init with copy of ValueTypes_BezierPath(v8, v5);
  lazy protocol witness table accessor for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath(&lazy protocol witness table cache variable for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath, type metadata accessor for ValueTypes_BezierPath, &protocol conformance descriptor for ValueTypes_BezierPath);
  v23 = Message.serializedData(partial:)();
  v25 = v24;
  outlined destroy of ValueTypes_BezierPath(v5);
  if (!v2)
  {
    Data.encode(to:)();
    outlined consume of Data._Representation(v23, v25);
  }

  outlined destroy of ValueTypes_BezierPath(v8);
}

uint64_t closure #1 in BezierPathSource.encode(to:)(uint64_t a1, char **a2)
{
  v4 = *a1;
  if (*a1 <= 1)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        goto LABEL_41;
      }

      v29 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        *a2 = v29;
      }

      v31 = *(v29 + 2);
      v32 = *(v29 + 3);
      v33 = v31 + 1;
      if (v31 >= v32 >> 1)
      {
        v69 = v31 + 1;
        v62 = v29;
        v63 = *(v29 + 2);
        v64 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v31 + 1, 1, v62);
        v31 = v63;
        v33 = v69;
        v29 = v64;
        *a2 = v64;
      }

      *(v29 + 2) = v33;
      v34 = &v29[16 * v31];
      *(v34 + 4) = 1;
      v34[40] = 1;
    }

    else
    {
      v12 = *a2;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v12;
      if ((v13 & 1) == 0)
      {
        v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        *a2 = v12;
      }

      v14 = *(v12 + 2);
      v15 = *(v12 + 3);
      v16 = v14 + 1;
      if (v14 >= v15 >> 1)
      {
        v68 = v14 + 1;
        v57 = v12;
        v58 = *(v12 + 2);
        v59 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v14 + 1, 1, v57);
        v14 = v58;
        v16 = v68;
        v12 = v59;
        *a2 = v59;
      }

      *(v12 + 2) = v16;
      v17 = &v12[16 * v14];
      *(v17 + 4) = 0;
      v17[40] = 1;
    }

    v35 = **(a1 + 8);
    v36 = a2[1];
    v37 = swift_isUniquelyReferenced_nonNull_native();
    a2[1] = v36;
    if ((v37 & 1) == 0)
    {
      v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
      a2[1] = v36;
    }

    v38 = *(v36 + 2);
    v39 = *(v36 + 3);
    v40 = v38 + 1;
    if (v38 >= v39 >> 1)
    {
      v65 = v38 + 1;
      v46 = v36;
      v47 = *(v36 + 2);
      v48 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v38 + 1, 1, v46);
      v38 = v47;
      v40 = v65;
      v36 = v48;
      a2[1] = v48;
    }

    *(v36 + 2) = v40;
    *&v36[8 * v38 + 32] = v35;
    v41 = a2[1];
    v42 = *(*(a1 + 8) + 8);
    result = swift_isUniquelyReferenced_nonNull_native();
    a2[1] = v41;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
      v41 = result;
      a2[1] = result;
    }

    v43 = *(v41 + 2);
    v44 = *(v41 + 3);
    v45 = v43 + 1;
    if (v43 >= v44 >> 1)
    {
      v49 = v41;
      v50 = *(v41 + 2);
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v43 + 1, 1, v49);
      v43 = v50;
      v41 = result;
      a2[1] = result;
    }

    *(v41 + 2) = v45;
    *&v41[8 * v43 + 32] = v42;
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v5 = *a2;
        v6 = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v5;
        if ((v6 & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
          *a2 = v5;
        }

        v7 = *(v5 + 2);
        v8 = *(v5 + 3);
        v9 = v7 + 1;
        if (v7 >= v8 >> 1)
        {
          v67 = v7 + 1;
          v54 = v5;
          v55 = *(v5 + 2);
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v7 + 1, 1, v54);
          v7 = v55;
          v9 = v67;
          v5 = v56;
          *a2 = v56;
        }

        *(v5 + 2) = v9;
        v10 = &v5[16 * v7];
        *(v10 + 4) = 3;
        v10[40] = 1;
        return closure #2 in closure #1 in BezierPathSource.encode(to:)(*(a1 + 8), a2);
      }

      if (v4 == 4)
      {
        v24 = *a2;
        result = swift_isUniquelyReferenced_nonNull_native();
        *a2 = v24;
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1, v24);
          v24 = result;
          *a2 = result;
        }

        v25 = *(v24 + 16);
        v26 = *(v24 + 24);
        v27 = v25 + 1;
        if (v25 >= v26 >> 1)
        {
          v60 = v24;
          v61 = *(v24 + 16);
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v25 + 1, 1, v60);
          v25 = v61;
          v24 = result;
          *a2 = result;
        }

        *(v24 + 16) = v27;
        v28 = v24 + 16 * v25;
        *(v28 + 32) = 4;
        *(v28 + 40) = 1;
        return result;
      }

LABEL_41:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }

    v18 = *a2;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v18;
    if ((v19 & 1) == 0)
    {
      v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
      *a2 = v18;
    }

    v20 = *(v18 + 2);
    v21 = *(v18 + 3);
    v22 = v20 + 1;
    if (v20 >= v21 >> 1)
    {
      v66 = v20 + 1;
      v51 = v18;
      v52 = *(v18 + 2);
      v53 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v20 + 1, 1, v51);
      v20 = v52;
      v22 = v66;
      v18 = v53;
      *a2 = v53;
    }

    *(v18 + 2) = v22;
    v23 = &v18[16 * v20];
    *(v23 + 4) = 2;
    v23[40] = 1;
    return closure #1 in closure #1 in BezierPathSource.encode(to:)(*(a1 + 8), a2);
  }

  return result;
}

char *closure #1 in closure #1 in BezierPathSource.encode(to:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    *(a2 + 8) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    *(a2 + 8) = v5;
  }

  *(v5 + 2) = v8 + 1;
  *&v5[8 * v8 + 32] = v4;
  v9 = *(a2 + 8);
  v10 = a1[1];
  v11 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v9;
  if ((v11 & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    *(a2 + 8) = v9;
  }

  v13 = *(v9 + 2);
  v12 = *(v9 + 3);
  if (v13 >= v12 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v9);
    *(a2 + 8) = v9;
  }

  *(v9 + 2) = v13 + 1;
  *&v9[8 * v13 + 32] = v10;
  v14 = *(a2 + 8);
  v15 = a1[2];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v14;
  if ((v16 & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    *(a2 + 8) = v14;
  }

  v18 = *(v14 + 2);
  v17 = *(v14 + 3);
  if (v18 >= v17 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v14);
    *(a2 + 8) = v14;
  }

  *(v14 + 2) = v18 + 1;
  *&v14[8 * v18 + 32] = v15;
  v19 = *(a2 + 8);
  v20 = a1[3];
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v19;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
    v19 = result;
    *(a2 + 8) = result;
  }

  v23 = *(v19 + 2);
  v22 = *(v19 + 3);
  if (v23 >= v22 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v19);
    v19 = result;
    *(a2 + 8) = result;
  }

  *(v19 + 2) = v23 + 1;
  *&v19[8 * v23 + 32] = v20;
  return result;
}

char *closure #2 in closure #1 in BezierPathSource.encode(to:)(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a2 + 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v5 + 2) + 1, 1, v5);
    *(a2 + 8) = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v5);
    *(a2 + 8) = v5;
  }

  *(v5 + 2) = v8 + 1;
  *&v5[8 * v8 + 32] = v4;
  v9 = *(a2 + 8);
  v10 = a1[1];
  v11 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v9;
  if ((v11 & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    *(a2 + 8) = v9;
  }

  v13 = *(v9 + 2);
  v12 = *(v9 + 3);
  if (v13 >= v12 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v9);
    *(a2 + 8) = v9;
  }

  *(v9 + 2) = v13 + 1;
  *&v9[8 * v13 + 32] = v10;
  v14 = *(a2 + 8);
  v15 = a1[2];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v14;
  if ((v16 & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    *(a2 + 8) = v14;
  }

  v18 = *(v14 + 2);
  v17 = *(v14 + 3);
  if (v18 >= v17 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v14);
    *(a2 + 8) = v14;
  }

  *(v14 + 2) = v18 + 1;
  *&v14[8 * v18 + 32] = v15;
  v19 = *(a2 + 8);
  v20 = a1[3];
  v21 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v19;
  if ((v21 & 1) == 0)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 2) + 1, 1, v19);
    *(a2 + 8) = v19;
  }

  v23 = *(v19 + 2);
  v22 = *(v19 + 3);
  if (v23 >= v22 >> 1)
  {
    v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v19);
    *(a2 + 8) = v19;
  }

  *(v19 + 2) = v23 + 1;
  *&v19[8 * v23 + 32] = v20;
  v24 = *(a2 + 8);
  v25 = a1[4];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v24;
  if ((v26 & 1) == 0)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
    *(a2 + 8) = v24;
  }

  v28 = *(v24 + 2);
  v27 = *(v24 + 3);
  if (v28 >= v27 >> 1)
  {
    v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v24);
    *(a2 + 8) = v24;
  }

  *(v24 + 2) = v28 + 1;
  *&v24[8 * v28 + 32] = v25;
  v29 = *(a2 + 8);
  v30 = a1[5];
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 8) = v29;
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
    v29 = result;
    *(a2 + 8) = result;
  }

  v33 = *(v29 + 2);
  v32 = *(v29 + 3);
  if (v33 >= v32 >> 1)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v29);
    v29 = result;
    *(a2 + 8) = result;
  }

  *(v29 + 2) = v33 + 1;
  *&v29[8 * v33 + 32] = v30;
  return result;
}

uint64_t static BezierPathSource.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for CGPathRef(0);
  lazy protocol witness table accessor for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath(&lazy protocol witness table cache variable for type CGPathRef and conformance CGPathRef, type metadata accessor for CGPathRef, &protocol conformance descriptor for CGPathRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance BezierPathSource(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for CGPathRef(0);
  lazy protocol witness table accessor for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath(&lazy protocol witness table cache variable for type CGPathRef and conformance CGPathRef, type metadata accessor for CGPathRef, &protocol conformance descriptor for CGPathRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

double block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t outlined init with copy of ValueTypes_BezierPath(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ValueTypes_BezierPath(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type ValueTypes_BezierPath and conformance ValueTypes_BezierPath(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type BezierPathSource and conformance BezierPathSource()
{
  result = lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource;
  if (!lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource;
  if (!lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource;
  if (!lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BezierPathSource and conformance BezierPathSource);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BezierPathSource(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for BezierPathSource(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id ShapeOpacitySliderView.init(axis:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_gradient;
  *&v1[v4] = [objc_allocWithZone(MEMORY[0x1E6979380]) init];
  *&v1[OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_trackImage] = 0;
  *&v1[OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_axis] = a1;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v5 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v6 = one-time initialization token for paperKitBundle;
  v7 = v5;
  if (v6 != -1)
  {
    swift_once();
  }

  v15._object = 0x80000001D4088490;
  v8._countAndFlagsBits = 0x7974696361704FLL;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v8._object = 0xE700000000000000;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v15._countAndFlagsBits = 0xD000000000000032;
  countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, paperKitBundle, v10, v15)._countAndFlagsBits;
  v12 = MEMORY[0x1DA6CCED0](countAndFlagsBits);

  [v7 setAccessibilityLabel_];

  return v7;
}

Swift::Void __swiftcall ShapeOpacitySliderView.didMoveToSuperview()()
{
  v30.receiver = v0;
  v30.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v30, sel_didMoveToSuperview);
  v1 = [v0 superview];
  if (v1)
  {

    v2 = objc_opt_self();
    v3 = [v2 blackColor];
    v4 = [v3 colorWithAlphaComponent_];

    [v0 setBackgroundColor_];
    v5 = [v0 layer];
    [v5 setMasksToBounds_];

    v6 = OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_gradient;
    v7 = *&v0[OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_gradient];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D405C990;
    v9 = v7;
    v10 = [v2 whiteColor];
    v11 = [v10 CGColor];

    type metadata accessor for CGColorRef(0);
    v13 = v12;
    *(v8 + 56) = v12;
    *(v8 + 32) = v11;
    v14 = [v2 blackColor];
    v15 = [v14 CGColor];

    *(v8 + 88) = v13;
    *(v8 + 64) = v15;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 setColors_];

    v17 = [v0 traitCollection];
    v18 = [v17 layoutDirection];

    if (v18 == 1)
    {
      v19 = 1.0;
    }

    else
    {
      v19 = 0.0;
    }

    if (v18 == 1)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = 1.0;
    }

    [*&v0[v6] setStartPoint_];
    [*&v0[v6] setEndPoint_];
    v21 = [v0 layer];
    [v21 insertSublayer:*&v0[v6] atIndex:0];

    v22 = [v0 layer];
    v23 = [v2 systemGrayColor];
    v24 = [v23 colorWithAlphaComponent_];

    v25 = [v24 CGColor];
    [v22 setBorderColor_];

    v26 = [v0 layer];
    v27 = [v0 traitCollection];
    [v27 displayScale];
    v29 = v28;

    [v26 setBorderWidth_];
  }
}

Swift::Void __swiftcall ShapeOpacitySliderView.layoutSubviews()()
{
  v26.receiver = v0;
  v26.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v26, sel_layoutSubviews);
  v1 = [v0 layer];
  [v0 bounds];
  [v1 setCornerRadius_];

  v2 = *&v0[OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_gradient];
  [v0 bounds];
  [v2 setFrame_];

  [v0 bounds];
  if (!CGRectIsEmpty(v28))
  {
    v3 = OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_trackImage;
    v4 = *&v0[OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_trackImage];
    if (!v4 || ([v4 size], v6 = v5, v8 = v7, objc_msgSend(v0, sel_bounds), vabdd_f64(v6, v10) >= 0.001) || vabdd_f64(v8, v9) >= 0.001)
    {
      ShapeOpacitySliderView.makeTrackImage()();
      v11 = *&v0[v3];
      *&v0[v3] = v12;
      v13 = v12;

      [v0 setMinimumTrackImage:v13 forState:0];
      [v0 setMaximumTrackImage:*&v0[v3] forState:0];
    }
  }

  if (*&v0[OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_axis] == 1)
  {
    CGAffineTransformMakeRotation(&t1, -1.57079633);
    tx = t1.tx;
    ty = t1.ty;
    v21 = *&t1.c;
    v22 = *&t1.a;
    [v0 bounds];
    CGAffineTransformMakeTranslation(&t1, v16 * 0.5 - v17 * 0.5, v17 * 0.5 - v16 * 0.5);
    v18 = *&t1.a;
    v19 = *&t1.c;
    v20 = *&t1.tx;
    *&t1.a = v22;
    *&t1.c = v21;
    t1.tx = tx;
    t1.ty = ty;
    *&t2.a = v18;
    *&t2.c = v19;
    *&t2.tx = v20;
    CGAffineTransformConcat(&v23, &t1, &t2);
    t1 = v23;
    [v0 setTransform_];
  }
}

void ShapeOpacitySliderView.makeTrackImage()()
{
  [v0 bounds];
  if (!CGRectIsEmpty(v14))
  {
    [v0 bounds];
    v1 = CGRectGetHeight(v15) / 3.0;
    [v0 bounds];
    v2 = floor(CGRectGetWidth(v16) / v1);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v2 > -9.22337204e18)
    {
      if (v2 < 9.22337204e18)
      {
        v3 = v2;
        [v0 bounds];
        v6 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
        v7 = [objc_opt_self() blackColor];
        v8 = [v7 colorWithAlphaComponent_];

        v9 = swift_allocObject();
        *(v9 + 16) = v8;
        *(v9 + 24) = 3;
        *(v9 + 32) = v3;
        *(v9 + 40) = v1;
        v10 = swift_allocObject();
        *(v10 + 16) = partial apply for closure #1 in ShapeOpacitySliderView.makeTrackImage();
        *(v10 + 24) = v9;
        v13[4] = thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ()partial apply;
        v13[5] = v10;
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 1107296256;
        v13[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
        v13[3] = &block_descriptor_13;
        v11 = _Block_copy(v13);
        v12 = v8;

        [v6 imageWithActions_];

        _Block_release(v11);
        LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

        if ((v6 & 1) == 0)
        {
          return;
        }

LABEL_10:
        __break(1u);
        return;
      }

LABEL_9:
      __break(1u);
      goto LABEL_10;
    }

    __break(1u);
    goto LABEL_9;
  }
}

UIImage_optional __swiftcall ShapeOpacitySliderView.thumbImage(multiSelect:)(Swift::Bool multiSelect)
{
  if (*&v1[OBJC_IVAR____TtC8PaperKit22ShapeOpacitySliderView_axis])
  {
    v2 = 37.0;
  }

  else
  {
    v2 = 33.0;
  }

  if (multiSelect)
  {
    v3 = [objc_opt_self() configurationWithPointSize:3 weight:v2 + -6.0];
    v4 = MEMORY[0x1DA6CCED0](0x69632E73756E696DLL, 0xEC000000656C6372);
    v5 = [objc_opt_self() systemImageNamed_];

    if (v5)
    {
      v6 = [v5 imageWithRenderingMode_];

      v5 = [v6 imageWithSymbolConfiguration_];
    }

    [v1 value];
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:fmax(1.0 - v7 + 0.2 alpha:{0.6), 1.0}];
    [v1 setTintColor_];
  }

  else
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69DCA78]) initWithSize_];
    v11 = swift_allocObject();
    *(v11 + 16) = 0x4004000000000000;
    *(v11 + 24) = v1;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = v2;
    *(v11 + 56) = v2;
    *(v11 + 64) = 0x4010000000000000;
    v12 = swift_allocObject();
    *(v12 + 16) = partial apply for closure #1 in ShapeOpacitySliderView.thumbImage(multiSelect:);
    *(v12 + 24) = v11;
    v17[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
    v17[5] = v12;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
    v17[3] = &block_descriptor_25;
    v13 = _Block_copy(v17);
    v14 = v1;

    v5 = [v10 imageWithActions_];

    _Block_release(v13);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
      goto LABEL_11;
    }
  }

  v16 = v5;
LABEL_11:
  result.value.super.isa = v16;
  result.is_nil = v9;
  return result;
}

void closure #1 in ShapeOpacitySliderView.thumbImage(multiSelect:)(void *a1, void *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v16 = [a1 CGContext];
  CGContextSetLineWidth(v16, a3);

  v17 = [a1 CGContext];
  v18 = [objc_opt_self() whiteColor];
  v19 = [v18 CGColor];

  CGContextSetStrokeColorWithColor(v17, v19);
  [a2 value];
  v21 = 1.0 - v20;
  v22 = [a1 CGContext];
  GenericGray = CGColorCreateGenericGray(v21, 1.0);
  CGContextSetFillColorWithColor(v22, GenericGray);

  v24 = [a1 CGContext];
  v27.origin.x = a4;
  v27.origin.y = a5;
  v27.size.width = a6;
  v27.size.height = a7;
  v28 = CGRectInset(v27, a8, a8);
  CGContextAddEllipseInRect(v24, v28);

  v25 = [a1 CGContext];
  CGContextDrawPath(v25, kCGPathFillStroke);
}

void closure #1 in ShapeOpacitySliderView.makeTrackImage()(void *a1, void *a2, uint64_t a3, uint64_t a4, CGFloat a5)
{
  v10 = [a1 CGContext];
  v11 = [a2 CGColor];
  CGContextSetFillColorWithColor(v10, v11);

  if (a3 < 0)
  {
    goto LABEL_14;
  }

  if (a3)
  {
    if (a4 < 0)
    {
LABEL_15:
      __break(1u);
      return;
    }

    v12 = 0;
    while (!a4)
    {
LABEL_5:
      if (++v12 == a3)
      {
        return;
      }
    }

    v13 = 0;
    while (!__OFADD__(v12, v13))
    {
      if (((v12 + v13) & 1) == 0)
      {
        v14 = [a1 CGContext];
        v15.origin.x = v13 * a5;
        v15.origin.y = v12 * a5;
        v15.size.width = a5;
        v15.size.height = a5;
        CGContextFillRect(v14, v15);
      }

      if (a4 == ++v13)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

double block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t WeakTagged_3<>.docPage.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);

  return WeakTagged_3.tagged3.getter();
}

uint64_t SharedTagged_3<>.docPage.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);

  return SharedTagged_3.tagged3.getter();
}

uint64_t (*PaperPage.frame.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = PaperPage.frame.modify(v6, a2, a3);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

void (*PaperPage.frame.modify(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  *a1 = (*(a3 + 56))(a2, a3);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return UnknownCanvasElementView.flags.modify;
}

uint64_t (*PaperPage.bounds.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = PaperPage.bounds.modify(v6, a2, a3);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

void (*PaperPage.bounds.modify(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  *a1 = (*(a3 + 56))(a2, a3);
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  return UnknownCanvasElementView.flags.modify;
}

uint64_t (*PaperPage.orientation.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = PaperPage.orientation.modify(v2);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocument.modify in conformance PaperTextAttachmentView;
}

uint64_t PaperPage.rotation.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 64))(a1);
  if ((result - 1) >= 8)
  {
    type metadata accessor for CGImagePropertyOrientation(0);
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  return result;
}

uint64_t PaperPage.rotation.setter(uint64_t a1, uint64_t a2, double a3)
{
  v5 = specialized CGImagePropertyOrientation.init(rotationAngle:)(a3);
  v6 = *(a2 + 72);

  return v6(v5, a1, a2);
}

uint64_t (*PaperPage.rotation.modify(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = PaperPage.rotation.modify(v6, a2, a3);
  return protocol witness for PaperKitCalculateDocumentAttachment.calculateDocumentExpressionSolvingBehavior.modify in conformance PaperTextAttachmentView;
}

uint64_t (*PaperPage.rotation.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  PaperPage.rotation.getter(a2, a3);
  *a1 = v5;
  return PaperPage.rotation.modify;
}

uint64_t PaperPage.rotation.modify(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = specialized CGImagePropertyOrientation.init(rotationAngle:)(*a1);
  return (*(v1 + 72))(v3, v2, v1);
}

uint64_t PaperPage.addCanvasElement<A, B>(_:capsule:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t PaperPage.axisAlignedRotationInDegrees.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 64))(a1);
  if ((v2 - 1) >= 8)
  {
    goto LABEL_11;
  }

  v3 = dbl_1D4063DD0[v2 - 1] / 3.14159265 * 180.0 * 90.0;
  v4 = floor(v3);
  v5 = v3 - v4;
  v6 = ceil(v3);
  if (v5 < 0.49)
  {
    v6 = v4;
  }

  v7 = v6 / 90.0;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v7 > -9.22337204e18)
  {
    if (v7 < 9.22337204e18)
    {
      return v7;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_10:
  __break(1u);
LABEL_11:
  type metadata accessor for CGImagePropertyOrientation(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t PaperPage.axisAlignedRotationInDegrees.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = specialized CGImagePropertyOrientation.init(rotationAngle:)(a1 / 180.0 * 3.14159265);
  v6 = *(a3 + 72);

  return v6(v5, a2, a3);
}

PaperKit::TaggedPaperPage::Enum_optional __swiftcall TaggedPaperPage.Enum.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SharedTagged_3<>.paper.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);

  return MEMORY[0x1EEDF4C40](v0);
}

uint64_t SharedTagged_3<>.image.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence14SharedTagged_3Vy8PaperKit0cD4PageVGMR);

  return SharedTagged_3.tagged2.getter();
}

uint64_t WeakTagged_3<>.paper.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);

  return MEMORY[0x1EEDF4A18](v0);
}

uint64_t WeakTagged_3<>.image.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMd, &_s9Coherence12WeakTagged_3Vy8PaperKit0cD4PageVGMR);

  return WeakTagged_3.tagged2.getter();
}

void (*sub_1D3B803EC(double a1, double a2, double a3, double a4))()
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return UnknownCanvasElementView.flags.modify;
}

unint64_t lazy protocol witness table accessor for type TaggedPaperPage.Enum and conformance TaggedPaperPage.Enum()
{
  result = lazy protocol witness table cache variable for type TaggedPaperPage.Enum and conformance TaggedPaperPage.Enum;
  if (!lazy protocol witness table cache variable for type TaggedPaperPage.Enum and conformance TaggedPaperPage.Enum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaggedPaperPage.Enum and conformance TaggedPaperPage.Enum);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TaggedPaperPage.Enum and conformance TaggedPaperPage.Enum;
  if (!lazy protocol witness table cache variable for type TaggedPaperPage.Enum and conformance TaggedPaperPage.Enum)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TaggedPaperPage.Enum and conformance TaggedPaperPage.Enum);
  }

  return result;
}

void keypath_getTm(uint64_t a1@<X1>, uint64_t a2@<X2>, double (*a3)(void, void)@<X3>, uint64_t a4@<X8>)
{
  *a4 = a3(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *(a4 + 8) = v5;
  *(a4 + 16) = v6;
  *(a4 + 24) = v7;
}

uint64_t dispatch thunk of PaperPage.addDrawingAnnotation<A>(pdfPage:use:in:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = (*(a8 + 168) + **(a8 + 168));
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for closure #1 in AnyCanvas.calculateDocumentResultChanged(_:itemUUID:needsAttribution:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of PaperPage.search<A>(query:fullWordsOnly:caseMatchingOnly:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = (*(a9 + 216) + **(a9 + 216));
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:);

  return v19(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

PaperKit::PaperNewShapeType_Internal_optional __swiftcall PaperNewShapeType_Internal.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 11;
  if (rawValue < 0xB)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

Swift::Int PaperNewShapeType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1DA6CE810](v1);
  return Hasher._finalize()();
}

unint64_t PaperNewShapeType_Internal.symbolName.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 0x6873657261757173;
    v8 = 0x656C676E61697274;
    v9 = 0x6169642E656E696CLL;
    if (v1 != 3)
    {
      v9 = 0x6C2E656C62627562;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x656C63726963;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0xD000000000000013;
    v3 = 0xD000000000000010;
    if (v1 != 9)
    {
      v3 = 0xD000000000000011;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 0x657261757173;
    v5 = 0x6E6F6761786568;
    if (v1 != 6)
    {
      v5 = 1918989427;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t lazy protocol witness table accessor for type PaperNewShapeType and conformance PaperNewShapeType()
{
  result = lazy protocol witness table cache variable for type PaperNewShapeType and conformance PaperNewShapeType;
  if (!lazy protocol witness table cache variable for type PaperNewShapeType and conformance PaperNewShapeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperNewShapeType and conformance PaperNewShapeType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PaperNewShapeType_Internal and conformance PaperNewShapeType_Internal()
{
  result = lazy protocol witness table cache variable for type PaperNewShapeType_Internal and conformance PaperNewShapeType_Internal;
  if (!lazy protocol witness table cache variable for type PaperNewShapeType_Internal and conformance PaperNewShapeType_Internal)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PaperNewShapeType_Internal and conformance PaperNewShapeType_Internal);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [PaperNewShapeType] and conformance [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall LinkView.pasteboardRepresentation()()
{
  v0 = 0;
  result.value._rawValue = v0;
  return result;
}

id LinkView.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LinkView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

UIMenu closure #1 in LinkView.contextMenuInteraction(_:configurationForMenuAtLocation:)(uint64_t a1, unint64_t a2)
{
  if (one-time initialization token for paperKitBundle != -1)
  {
    swift_once();
  }

  swift__string._object = 0x80000001D4088540;
  v3._countAndFlagsBits = 0x7474412074696445;
  v3._object = 0xEF746E656D686361;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  swift__string._countAndFlagsBits = 0xD000000000000022;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, paperKitBundle, v5, swift__string);
  if (a2 >> 62)
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);

    v8 = _bridgeCocoaArray<A>(_:)();

    a2 = v8;
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenuElement, 0x1E69DCC78);
  }

  type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIMenu, 0x1E69DCC60);
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v6, 0, v10, 0, 0xFFFFFFFFFFFFFFFFLL, a2, v9);
}

id specialized LinkView.contextMenuInteraction(_:configurationForMenuAtLocation:)()
{
  v1 = v0 + OBJC_IVAR____TtC8PaperKit8LinkView_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 8))(v0, ObjectType, v3);
    swift_unknownObjectRelease();
    if (v5)
    {
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      v7 = objc_opt_self();
      v10[4] = partial apply for closure #1 in LinkView.contextMenuInteraction(_:configurationForMenuAtLocation:);
      v10[5] = v6;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1107296256;
      v10[2] = thunk for @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> (@owned UIMenu?);
      v10[3] = &block_descriptor_26;
      v8 = _Block_copy(v10);

      v9 = [v7 configurationWithIdentifier:0 previewProvider:0 actionProvider:v8];

      _Block_release(v8);
      return v9;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

Swift::Void __swiftcall Canvas.setupBandSelection()()
{
  v1 = *v0;
  v2 = *MEMORY[0x1E69E7D40];
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CD0];
  *(v3 + 16) = MEMORY[0x1E69E7CD0];
  *(v3 + 24) = v4;
  *(v3 + 32) = 6;
  *(v3 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  v5 = swift_allocBox();
  v7 = v6;
  v8 = type metadata accessor for PKDrawing();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v19 = *((v2 & v1) + 0xB50);
  v10[2] = v19;
  v11 = *((v2 & v1) + 0xB58);
  v10[3] = v11;
  v12 = *((v2 & v1) + 0xB60);
  v10[4] = v12;
  v10[5] = v9;
  v10[6] = v3;
  v10[7] = v5;
  v13 = objc_allocWithZone(MEMORY[0x1E69DC6F8]);
  v24 = partial apply for closure #1 in Canvas.setupBandSelection();
  v25 = v10;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction) -> ();
  v23 = &block_descriptor_27;
  v14 = _Block_copy(&aBlock);

  v15 = [v13 initWithSelectionHandler_];
  _Block_release(v14);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v19;
  v17[3] = v11;
  v17[4] = v12;
  v17[5] = v16;
  v24 = partial apply for closure #2 in Canvas.setupBandSelection();
  v25 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = thunk for @escaping @callee_guaranteed (@guaranteed UIBandSelectionInteraction, @unowned CGPoint) -> (@unowned Bool);
  v23 = &block_descriptor_13_0;
  v18 = _Block_copy(&aBlock);

  [v15 setShouldBeginHandler_];
  _Block_release(v18);
  [v0 addInteraction_];
}

void closure #1 in Canvas.setupBandSelection()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    swift_beginAccess();
    swift_beginAccess();
    Canvas.bandSelectElements(_:initialSelection:potentialStrokes:)(a1, a3 + 16, v6);
    swift_endAccess();
    swift_endAccess();
  }
}

void Canvas.bandSelectElements(_:initialSelection:potentialStrokes:)(void *a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v133 = a3;
  v7 = type metadata accessor for UUID();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  v10 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v12 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v138 = &v120 - v14;
  v134 = type metadata accessor for NSFastEnumerationIterator();
  v15 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v141 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for CRKeyPath();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v146 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v149 = &v120 - v20;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v21 = *(v150 - 1);
  MEMORY[0x1EEE9AC00](v150);
  v137 = &v120 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v136 = &v120 - v24;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  v140 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v135 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v147 = &v120 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v127 = &v120 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v31 = MEMORY[0x1EEE9AC00](v30).n128_u64[0];
  v33 = &v120 - v32;
  v34 = [a1 state];
  if (v34 == 3)
  {
    v83 = *(v4 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (v83)
    {
      v84 = v83[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu];
      v83[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu] = 0;
      if (v84 == 1)
      {
        v85 = *&v83[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController];
        if (v85)
        {
          v150 = v83;
          v86 = v85;
          specialized MiniMenuController.update()();

          v87 = v150;
        }
      }

      return;
    }

    __break(1u);
    goto LABEL_77;
  }

  v142 = v4;
  if (v34 != 2)
  {
    if (v34 != 1)
    {
      return;
    }

    outlined destroy of StocksKitCurrencyCache.Provider?(v133, &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);

    v35 = v4;
    v36 = OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView;
    v37 = *(v35 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (v37)
    {
      v38 = (v37 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection);
      v39 = *v38;
      v40 = v38[1];
      v41 = v38[2];
      LOBYTE(v38) = *(v38 + 24);
      *a2 = v39;
      *(a2 + 8) = v40;
      *(a2 + 16) = v41;
      *(a2 + 24) = v38;
      v42 = Canvas.editingView.getter();
      v44 = v43;
      ObjectType = swift_getObjectType();
      v46 = *(v44 + 16);

      v47 = v46(ObjectType, v44);

      if (v47)
      {
        v48 = [v47 drawing];

        static PKDrawing._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = type metadata accessor for PKDrawing();
        (*(*(v49 - 8) + 56))(v33, 0, 1, v49);
      }

      else
      {
        v88 = type metadata accessor for PKDrawing();
        (*(*(v88 - 8) + 56))(v33, 1, 1, v88);
      }

      outlined init with take of PKDrawing?(v33, v133);
      v89 = *&v142[v36];
      if (v89)
      {
        v90 = v89[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu];
        v89[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_suppressMiniMenu] = 1;
        if ((v90 & 1) == 0)
        {
          v91 = *&v89[OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView_miniMenuController];
          if (v91)
          {
            v92 = v89;
            v93 = v91;
            specialized MiniMenuController.update()();
          }
        }

        return;
      }

LABEL_78:
      __break(1u);
      return;
    }

LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  UIBandSelectionInteraction.selectionRect.getter();
  if (v162)
  {
    return;
  }

  v126 = v10;
  v125 = v9;
  v123 = a1;
  v51 = v160;
  v50 = v161;
  v53 = v158;
  v52 = v159;
  v54 = Canvas.editingView.getter();
  [v54 convertRect:v4 fromCoordinateSpace:{v53, v52, v51, v50}];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;

  v156 = MEMORY[0x1E69E7CD0];
  v63 = Canvas.editingView.getter();
  v65 = v64;
  v66 = swift_getObjectType();
  v67 = (*(v65 + 64))(v66, v65);

  *&v154 = MEMORY[0x1E69E7CC0];
  if (v67 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v69 = v149;
    v124 = v12;
    v122 = a2;
    v70 = MEMORY[0x1E69E7D40];
    v121 = v15;
    if (i)
    {
      v145 = v21;
      v12 = 0;
      v15 = v67 & 0xC000000000000001;
      v21 = v67 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v72 = MEMORY[0x1DA6CE0C0](v12, v67);
        }

        else
        {
          if (v12 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_52;
          }

          v72 = *(v67 + 8 * v12 + 32);
        }

        a2 = v72;
        v73 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v74 = [v4 bounds];
        v76.n128_u64[0] = v75;
        v78.n128_u64[0] = v77;
        v80.n128_u64[0] = v79;
        v82.n128_u64[0] = v81;
        if ((*((*v70 & *a2) + 0x378))(v74, v56, v58, v60, v62, v76, v78, v80, v82))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          v4 = v142;
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v12;
        v71 = v73 == i;
        v69 = v149;
        if (v71)
        {
          v94 = v154;
          v21 = v145;
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v94 = MEMORY[0x1E69E7CC0];
LABEL_34:

    if ((v94 & 0x8000000000000000) == 0 && (v94 & 0x4000000000000000) == 0)
    {
      v12 = *(v94 + 16);
      if (!v12)
      {
        break;
      }

      goto LABEL_37;
    }

    v12 = __CocoaSet.count.getter();
    if (!v12)
    {
      break;
    }

LABEL_37:
    v4 = 0;
    v145 = v94 & 0xC000000000000001;
    v144 = (v21 + 48);
    v130 = (v21 + 32);
    v129 = (v21 + 16);
    v128 = (v21 + 8);
    v143 = (v140 + 32);
    v67 = MEMORY[0x1E69E7CC0];
    v15 = v150;
    v132 = v94;
    v131 = v12;
    while (1)
    {
      if (v145)
      {
        v95 = MEMORY[0x1DA6CE0C0](v4, v94);
      }

      else
      {
        if (v4 >= *(v94 + 16))
        {
          goto LABEL_54;
        }

        v95 = *(v94 + 8 * v4 + 32);
      }

      a2 = v95;
      v21 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      (*((*v70 & *v95) + 0xF0))();
      if ((*v144)(v69, 1, v15) == 1)
      {

        outlined destroy of StocksKitCurrencyCache.Provider?(v69, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence15SharedTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
      }

      else
      {
        v96 = v70;
        v97 = v136;
        (*v130)(v136, v69, v15);
        v98 = v137;
        (*v129)(v137, v97, v150);
        WeakTagged_10.tag.getter();
        *&v153 = v154;
        BYTE8(v153) = BYTE8(v154);
        MEMORY[0x1DA6CB7A0](v150);
        lazy protocol witness table accessor for type TaggedCanvasElement and conformance TaggedCanvasElement();
        v99 = v135;
        WeakTagged_10.init(_:id:)();

        v100 = *v128;
        v101 = v98;
        v15 = v150;
        (*v128)(v101, v150);
        v100(v97, v15);
        v102 = *v143;
        (*v143)(v147, v99, v148);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v67 + 16) + 1, 1, v67);
        }

        a2 = *(v67 + 16);
        v103 = *(v67 + 24);
        v70 = v96;
        v12 = v131;
        if (a2 >= v103 >> 1)
        {
          v67 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), a2 + 1, 1, v67);
        }

        v94 = v132;
        *(v67 + 16) = a2 + 1;
        v102((v67 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * a2), v147, v148);
        v69 = v149;
      }

      ++v4;
      if (v21 == v12)
      {
        goto LABEL_58;
      }
    }

LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

  v67 = MEMORY[0x1E69E7CC0];
LABEL_58:

  v104 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence13WeakTagged_10Vy8PaperKit0d6CanvasA0VG_SayAJGTt0g5Tf4g_n(v67);

  v157 = v104;
  v105 = v127;
  outlined init with copy of PKDrawing?(v133, v127);
  v106 = type metadata accessor for PKDrawing();
  if ((*(*(v106 - 8) + 48))(v105, 1, v106) == 1)
  {
    outlined destroy of StocksKitCurrencyCache.Provider?(v105, &_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  }

  else
  {
    type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKDrawing, 0x1E6978410);
    swift_dynamicCast();
    v107 = v154;
    v108 = [v154 intersectedStrokesFromRect:0 visibleOnscreenStrokes:{v56, v58, v60, v62}];

    v149 = v108;
    NSOrderedSet.makeIterator()();
    lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator, MEMORY[0x1E6968EB0], MEMORY[0x1E6968EB8]);
    v109 = v134;
    dispatch thunk of IteratorProtocol.next()();
    if (v155)
    {
      v110 = MEMORY[0x1E69E7CC0];
      v150 = (v126 + 32);
      do
      {
        outlined init with take of Any(&v154, &v153);
        outlined init with copy of Any(&v153, v152);
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for PKStroke, 0x1E69784D8);
        if (swift_dynamicCast())
        {
          v111 = v151;
          v112 = [v151 _strokeUUID];
          static UUID._unconditionallyBridgeFromObjectiveC(_:)();

          CRKeyPath.init(_:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR);
          lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type CRRegister<TaggedStroke> and conformance CRRegister<A>, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMd, &_s9Coherence10CRRegisterVy8PaperKit12TaggedStrokeOGMR, MEMORY[0x1E6995078]);
          v113 = v124;
          WeakRef.init(id:)();

          __swift_destroy_boxed_opaque_existential_0(&v153);
          v114 = *v150;
          (*v150)(v138, v113, v139);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v110 + 2) + 1, 1, v110);
          }

          v116 = *(v110 + 2);
          v115 = *(v110 + 3);
          if (v116 >= v115 >> 1)
          {
            v110 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v115 > 1), v116 + 1, 1, v110);
          }

          *(v110 + 2) = v116 + 1;
          v114(&v110[((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v116], v138, v139);
          v109 = v134;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_0(&v153);
        }

        dispatch thunk of IteratorProtocol.next()();
      }

      while (v155);
    }

    else
    {
      v110 = MEMORY[0x1E69E7CC0];
    }

    (*(v121 + 8))(v141, v109);
    v117 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9Coherence7WeakRefVyAD10CRRegisterVy8PaperKit12TaggedStrokeOGG_SayAMGTt0g5Tf4g_n(v110);

    v156 = v117;
  }

  if ([v123 initialModifierFlags] == 0x20000)
  {
    v118 = *v122;
    v119 = v122[1];

    specialized Set.formSymmetricDifference(_:)(v118);
    specialized Set.formSymmetricDifference(_:)(v119);
  }

  AnyCanvas.selection.setter(v157, v156, 6, 0);
}

uint64_t closure #2 in Canvas.setupBandSelection()(double a1, double a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = specialized Canvas.bandSelectionShouldBegin(_:point:)(a1, a2);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t closure #1 in implicit closure #2 in Canvas.bandSelectionShouldBegin(_:point:)(void **a1, uint64_t a2, double a3, double a4)
{
  v7 = *a1;
  if ((*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F0))())
  {
    return 1;
  }

  [v7 convertPoint:a2 fromCoordinateSpace:{a3, a4}];
  v8 = [v7 hitTest:0 withEvent:?];
  if (!v8)
  {
    return 1;
  }

  return 0;
}

void specialized Set.formSymmetricDifference(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v35 - v9;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v40 = &v35 - v13;
  v41 = v11;
  v14 = 0;
  v43 = a1;
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v37 = v11 + 32;
  v38 = v19;
  v46 = (v11 + 8);
  v47 = v11 + 16;
  v39 = v15;
  v42 = v1;
  if (v18)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return;
    }

    v18 = *(v15 + 8 * v20);
    ++v14;
    if (v18)
    {
      v14 = v20;
      do
      {
LABEL_9:
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = v40;
        v22 = v41;
        v24 = *(v41 + 72);
        v25 = *(v43 + 48) + v24 * (v21 | (v14 << 6));
        v44 = *(v41 + 16);
        v45 = v24;
        v44(v40, v25, v5, v12);
        (*(v22 + 32))(v48, v23, v5);
        v26 = *v1;
        if (*(*v1 + 16) && (lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E69951D0]), v27 = dispatch thunk of Hashable._rawHashValue(seed:)(), v28 = -1 << *(v26 + 32), v29 = v27 & ~v28, ((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
        {
          v30 = ~v28;
          while (1)
          {
            (v44)(v7, *(v26 + 48) + v29 * v45, v5);
            lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakTagged_10<TaggedCanvasElement> and conformance WeakTagged_10<A>, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGMR, MEMORY[0x1E69951D8]);
            v31 = dispatch thunk of static Equatable.== infix(_:_:)();
            v32 = *v46;
            (*v46)(v7, v5);
            if (v31)
            {
              break;
            }

            v29 = (v29 + 1) & v30;
            if (((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v33 = v36;
          v34 = v48;
          v1 = v42;
          specialized Set._Variant.remove(_:)(v48, v36);
          outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMd, &_s9Coherence13WeakTagged_10Vy8PaperKit0C13CanvasElementVGSgMR);
          v32(v34, v5);
        }

        else
        {
LABEL_14:
          v1 = v42;
          specialized Set._Variant.insert(_:)(v7, v48);
          (*v46)(v7, v5);
        }

        v19 = v38;
        v15 = v39;
      }

      while (v18);
    }
  }

  __break(1u);
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v36 = &v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v35 - v9;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v40 = &v35 - v13;
  v41 = v11;
  v14 = 0;
  v43 = a1;
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v37 = v11 + 32;
  v38 = v19;
  v46 = (v11 + 8);
  v47 = v11 + 16;
  v39 = v15;
  v42 = v1;
  if (v18)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      return;
    }

    v18 = *(v15 + 8 * v20);
    ++v14;
    if (v18)
    {
      v14 = v20;
      do
      {
LABEL_9:
        v21 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
        v23 = v40;
        v22 = v41;
        v24 = *(v41 + 72);
        v25 = *(v43 + 48) + v24 * (v21 | (v14 << 6));
        v44 = *(v41 + 16);
        v45 = v24;
        v44(v40, v25, v5, v12);
        (*(v22 + 32))(v48, v23, v5);
        v26 = *v1;
        if (*(*v1 + 16) && (lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E6995478]), v27 = dispatch thunk of Hashable._rawHashValue(seed:)(), v28 = -1 << *(v26 + 32), v29 = v27 & ~v28, ((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) != 0))
        {
          v30 = ~v28;
          while (1)
          {
            (v44)(v7, *(v26 + 48) + v29 * v45, v5);
            lazy protocol witness table accessor for type HStack<TupleView<(ModifiedContent<Text, _PaddingLayout>, Spacer, ModifiedContent<ModifiedContent<ModifiedContent<ModifiedContent<Button<_ConditionalContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, ModifiedContent<<<opaque return type of View.dynamicTypeSize(_:)>>.0, _EnvironmentKeyWritingModifier<AnyShapeStyle?>>>>, _FrameLayout>, _PaddingLayout>, _ContentShapeModifier<Rectangle>>, AccessibilityAttachmentModifier>)>> and conformance HStack<A>(&lazy protocol witness table cache variable for type WeakRef<CRRegister<TaggedStroke>> and conformance WeakRef<A>, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGMR, MEMORY[0x1E6995480]);
            v31 = dispatch thunk of static Equatable.== infix(_:_:)();
            v32 = *v46;
            (*v46)(v7, v5);
            if (v31)
            {
              break;
            }

            v29 = (v29 + 1) & v30;
            if (((*(v26 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_14;
            }
          }

          v33 = v36;
          v34 = v48;
          v1 = v42;
          specialized Set._Variant.remove(_:)(v48, v36);
          outlined destroy of StocksKitCurrencyCache.Provider?(v33, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMd, &_s9Coherence7WeakRefVyAA10CRRegisterVy8PaperKit12TaggedStrokeOGGSgMR);
          v32(v34, v5);
        }

        else
        {
LABEL_14:
          v1 = v42;
          specialized Set._Variant.insert(_:)(v7, v48);
          (*v46)(v7, v5);
        }

        v19 = v38;
        v15 = v39;
      }

      while (v18);
    }
  }

  __break(1u);
}

void specialized MiniMenuController.dismissMiniMenu()()
{
  v1 = v0;
  v2 = *(v0 + direct field offset for MiniMenuController.state);
  v3 = lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState, &protocol conformance descriptor for MiniMenuState);
  v4 = *(v3 + 40);
  v5 = type metadata accessor for MiniMenuState(0);
  if (v4(v5, v3))
  {
    if (one-time initialization token for miniMenuLogger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, miniMenuLogger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D38C4000, v7, v8, "Mini Menu being hidden", v9, 2u);
      MEMORY[0x1DA6D0660](v9, -1, -1);
    }
  }

  if ((*(v3 + 48))(v5, v3))
  {
    if (*(v2 + 32))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState, &protocol conformance descriptor for MiniMenuState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *(v2 + 32) = 0;
    }

    *((*(v3 + 72))(v5, v3) + 80) = 1;
  }

  v11 = direct field offset for MiniMenuController.miniMenu;
  v12 = *(v1 + direct field offset for MiniMenuController.miniMenu);
  if (v12)
  {
    v13 = [v12 view];
    if (!v13)
    {
      __break(1u);
      goto LABEL_23;
    }

    v14 = v13;
    [v13 setHidden_];

    v15 = *(v1 + v11);
    if (v15)
    {
      v16 = [v15 parentViewController];
      if (v16)
      {

        v17 = *(v1 + v11);
        if (v17)
        {
          [v17 willMoveToParentViewController_];
          v18 = *(v1 + v11);
          if (v18)
          {
            [v18 removeFromParentViewController];
            v19 = *(v1 + v11);
            if (v19)
            {
              v20 = [v19 view];
              if (v20)
              {
                v21 = v20;
                [v20 removeFromSuperview];

                return;
              }

LABEL_23:
              __break(1u);
            }
          }
        }
      }
    }
  }
}

void specialized MiniMenuController.showMiniMenu()()
{
  v1 = v0;
  v2 = *(v0 + direct field offset for MiniMenuController.state);
  v3 = lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState, &protocol conformance descriptor for MiniMenuState);
  v4 = *(v3 + 40);
  v5 = type metadata accessor for MiniMenuState(0);
  if ((v4(v5, v3) & 1) == 0)
  {
    if (one-time initialization token for miniMenuLogger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, miniMenuLogger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1D38C4000, v7, v8, "Mini Menu being shown", v9, 2u);
      MEMORY[0x1DA6D0660](v9, -1, -1);
    }
  }

  if (((*(v3 + 48))(v5, v3) & 1) == 0)
  {
    if (*(v2 + 32) == 1)
    {
      *(v2 + 32) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState, &protocol conformance descriptor for MiniMenuState);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    *((*(v3 + 72))(v5, v3) + 80) = 0;
  }

  v11 = *(v1 + direct field offset for MiniMenuController.miniMenu);
  if (v11)
  {
    v12 = [v11 view];
    if (v12)
    {
      v13 = v12;
      [v12 setHidden_];
    }

    else
    {
      __break(1u);
    }
  }
}

void specialized MiniMenuController.update()()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_17;
  }

  v3 = Strong;
  v4 = swift_unknownObjectWeakLoadStrong();
  if (!v4)
  {

LABEL_17:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, logger);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D38C4000, v23, v24, "Not showing minimenu - no delegate or superview", v25, 2u);
      MEMORY[0x1DA6D0660](v25, -1, -1);
    }

    specialized MiniMenuController.dismissMiniMenu()();
    return;
  }

  v5 = v4;
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();

    if (v8)
    {
      v9 = [v8 viewForOverlay];

      v5 = v9;
    }
  }

  MiniMenuState.startUpdate()();
  if (CanvasElementResizeView.shouldShowMiniMenu.getter())
  {
    v10 = ResizeView.miniMenuVisibleBounds.getter();
    v12 = v11;
    v14 = v13;
    v16 = v15;
    if (!CGRect.isFinite.getter(v10, v11, v13, v15) || (v155.origin.x = v10, v155.origin.y = v12, v155.size.width = v14, v155.size.height = v16, CGRectIsEmpty(v155)))
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, logger);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_14;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Not showing minimenu - no visible bounds";
LABEL_13:
      _os_log_impl(&dword_1D38C4000, v18, v19, v21, v20, 2u);
      MEMORY[0x1DA6D0660](v20, -1, -1);
LABEL_14:

      specialized MiniMenuController.dismissMiniMenu()();
LABEL_15:

      return;
    }

    v30 = direct field offset for MiniMenuController.miniMenu;
    v31 = *(v1 + direct field offset for MiniMenuController.miniMenu);
    if (!v31 || (v144 = [v31 view]) == 0)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, logger);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v18, v19))
      {
        goto LABEL_14;
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "Not showing minimenu - no view";
      goto LABEL_13;
    }

    v32 = swift_unknownObjectWeakLoadStrong();
    v140 = v30;
    if (v32)
    {
      if (*(v1 + direct field offset for MiniMenuController.needsStateUpdate) == 1)
      {
        *(v1 + direct field offset for MiniMenuController.needsStateUpdate) = 0;
        r2 = v32;
        v33 = *(v32 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
        if (!v33)
        {
          __break(1u);
LABEL_95:
          __break(1u);
          return;
        }

        v34 = v33 + OBJC_IVAR____TtC8PaperKit23CanvasElementResizeView__selection;
        v35 = *v34;
        v36 = *(v34 + 8);
        v37 = *(v34 + 16);
        v38 = *(v34 + 24);

        MiniMenuState.update(from:in:)(v35, v36, v37, v38, r2);

        v30 = v140;
      }

      else
      {
      }
    }

    v40 = swift_unknownObjectWeakLoadStrong();
    if (v40)
    {
      v41 = v40;
      v42 = swift_unknownObjectWeakLoadStrong();
      if (v42)
      {
        v43 = v42;
        swift_beginAccess();
        v44 = swift_unknownObjectWeakLoadStrong();

        if (v44)
        {
          v45 = [v44 viewForOverlay];

          v41 = v45;
        }
      }

      v46 = [v41 window];

      if (v46)
      {
        v47 = [objc_opt_self() activeToolPickerForWindow_];

        if (v47)
        {
          v48 = [v144 superview];
          if (v48)
          {
            v49 = v48;
            [v47 frameObscuredInView_];
            v10 = specialized MiniMenuController.cropFrameToPreventOverlap(frame:overlapFrame:)(v10, v12, v14, v16, v50, v51, v52, v53);
            v12 = v54;
            v14 = v55;
            v16 = v56;
          }
        }
      }
    }

    v57 = *(v1 + v30);
    if (!v57)
    {
LABEL_68:
      v143 = v14;
      v71 = MEMORY[0x1DA6CCED0](0x756E654D696E694DLL, 0xE800000000000000);
      [v144 setAccessibilityIdentifier_];

      v72 = v144;
      v73 = MEMORY[0x1DA6CCED0](0x756E654D696E694DLL, 0xE800000000000000);
      [v72 setAccessibilityLabel_];

      CanvasElementResizeView.rectangularSelectionTransformCoordinateSpace.getter(v150);
      v74 = v151;
      v75 = v152;
      ResizeView.modelToViewTransform.getter(&v153);
      *&t1.a = v150[0];
      *&t1.c = v150[1];
      t1.tx = v74;
      t1.ty = v75;
      t2 = v153;
      CGAffineTransformConcat(&v147, &t1, &t2);
      t1 = v147;
      v156.origin.x = 0.0;
      v156.origin.y = 0.0;
      v156.size.width = 1.0;
      v156.size.height = 1.0;
      v157 = CGRectApplyAffineTransform(v156, &t1);
      x = v157.origin.x;
      y = v157.origin.y;
      width = v157.size.width;
      height = v157.size.height;
      v80 = swift_unknownObjectWeakLoadStrong();
      if (v80 && (v81 = v80, swift_beginAccess(), v82 = swift_unknownObjectWeakLoadStrong(), v81, v82))
      {
        v83 = [v82 viewForOverlay];
      }

      else
      {
        v83 = v3;
      }

      [v83 convertRect:v3 fromCoordinateSpace:{x, y, width, height}];
      v85 = v84;
      v87 = v86;
      v89 = v88;
      v91 = v90;

      v92 = [v5 window];
      r2a = v10;
      if (v92)
      {
        v93 = v92;
        v94 = [v92 screen];

        [v94 scale];
        v96 = v95;
      }

      else
      {
        v96 = 1.0;
      }

      v97 = CGRect.rounded(scale:)(v96, v85, v87, v89, v91);
      v99 = v98;
      v101 = v100;
      v103 = v102;
      v104 = lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(&lazy protocol witness table cache variable for type MiniMenuState and conformance MiniMenuState, type metadata accessor for MiniMenuState, &protocol conformance descriptor for MiniMenuState);
      v105 = *(v104 + 72);
      v106 = type metadata accessor for MiniMenuState(0);
      v107 = v105(v106, v104);
      v107[2] = v97;
      v107[3] = v99;
      v107[4] = v101;
      v107[5] = v103;

      v158.origin.x = v97;
      v158.origin.y = v99;
      v158.size.width = v101;
      v158.size.height = v103;
      MinY = CGRectGetMinY(v158);
      v159.origin.x = r2a;
      v159.origin.y = v12;
      v159.size.width = v143;
      v159.size.height = v16;
      v136 = CGRectGetMinY(v159);
      v160.origin.x = r2a;
      v160.origin.y = v12;
      v160.size.width = v143;
      v160.size.height = v16;
      MaxY = CGRectGetMaxY(v160);
      v161.origin.x = v97;
      v161.origin.y = v99;
      v161.size.width = v101;
      v161.size.height = v103;
      v132 = CGRectGetMaxY(v161);
      specialized MiniMenuController.showMiniMenu()();
      [v72 sizeThatFits_];
      [v72 frame];
      [v72 setFrame_];
      [v72 frame];
      v141 = v109;
      v142 = v108;
      v139 = v99;
      v162.origin.x = v97;
      v162.origin.y = v99;
      v110 = v101;
      v162.size.width = v101;
      v138 = v103;
      v162.size.height = v103;
      v174.origin.x = r2a;
      v174.origin.y = v12;
      v174.size.width = v143;
      v174.size.height = v16;
      v163 = CGRectIntersection(v162, v174);
      v111 = *MEMORY[0x1E695F050];
      v112 = *(MEMORY[0x1E695F050] + 8);
      v114 = *(MEMORY[0x1E695F050] + 16);
      v113 = *(MEMORY[0x1E695F050] + 24);
      v175.origin.x = *MEMORY[0x1E695F050];
      v175.origin.y = v112;
      v175.size.width = v114;
      v175.size.height = v113;
      if (CGRectEqualToRect(v163, v175))
      {
        goto LABEL_88;
      }

      v131 = MinY - v136;
      v135 = MaxY - v132;
      v164.origin.x = v97;
      v164.origin.y = v139;
      v164.size.width = v110;
      v164.size.height = v138;
      v176.origin.x = r2a;
      v176.origin.y = v12;
      v176.size.width = v143;
      v176.size.height = v16;
      v165 = CGRectIntersection(v164, v176);
      v177.origin.x = r2a;
      v177.origin.y = v12;
      v177.size.width = v143;
      v177.size.height = v16;
      if (CGRectEqualToRect(v165, v177))
      {
        v166.origin.x = r2a;
        v166.origin.y = v12;
        v166.size.width = v143;
        v166.size.height = v16;
        v111 = CGRectGetMidX(v166) + v142 * -0.5;
        v115 = r2a;
        v116 = v12;
        v117 = v143;
        v118 = v16;
        if (v135 >= v131)
        {
          v119 = CGRectGetMaxY(*&v115);
        }

        else
        {
          v119 = CGRectGetMinY(*&v115);
        }

        v112 = v119 + -16.0 - v141;
        goto LABEL_87;
      }

      v120 = v110;
      v121 = v138;
      v133 = v141 + 16.0;
      v122 = v97;
      v123 = v139;
      if (v135 >= v131)
      {
        v124 = CGRectGetMaxY(*&v122);
        v168.origin.x = r2a;
        v168.origin.y = v12;
        v168.size.width = v143;
        v168.size.height = v16;
        if (v133 >= CGRectGetMaxY(v168) - v124)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v124 = CGRectGetMinY(*&v122);
        v167.origin.x = r2a;
        v167.origin.y = v12;
        v167.size.width = v143;
        v167.size.height = v16;
        if (v133 < v124 - CGRectGetMinY(v167))
        {
LABEL_81:
          v112 = v124 + -16.0 - v141;
LABEL_86:
          v169.origin.x = v97;
          v169.origin.y = v139;
          v169.size.width = v110;
          v169.size.height = v138;
          v111 = CGRectGetMidX(v169) + v142 * -0.5;
LABEL_87:
          v113 = v141;
          v114 = v142;
LABEL_88:
          v170.origin.x = v111;
          v170.origin.y = v112;
          v170.size.width = v114;
          v170.size.height = v113;
          if (CGRectIsEmpty(v170))
          {

            goto LABEL_15;
          }

          v171.origin.x = r2a;
          v171.origin.y = v12;
          v171.size.width = v143;
          v171.size.height = v16;
          v172 = CGRectInset(v171, 5.0, 5.0);
          v173 = CGRect.closestRect(in:)(v172);
          [v72 setFrame_];
          v125 = *(v1 + v140);
          if (!v125)
          {
            goto LABEL_93;
          }

          v126 = v125;
          v127 = [v126 view];
          if (v127)
          {
            v128 = v127;
            [v5 bringSubviewToFront_];

            v129 = v126;
            [v129 setIsAccessibilityElement_];
            [v129 setAccessibilityElementsHidden_];

LABEL_93:
            v130 = v105(v106, v104);

            v130[6] = r2a;
            v130[7] = v12;
            v130[8] = v143;
            v130[9] = v16;

            return;
          }

          goto LABEL_95;
        }
      }

      v112 = v124 + 16.0;
      goto LABEL_86;
    }

    v58 = v57;
    v59 = [v58 parentViewController];
    v60 = swift_unknownObjectWeakLoadStrong();
    if (!v60 || (v61 = v60, swift_beginAccess(), v62 = swift_unknownObjectWeakLoadStrong(), v61, !v62))
    {
      v63 = swift_unknownObjectWeakLoadStrong();
      if (!v63)
      {
        if (v59)
        {
          goto LABEL_61;
        }

        goto LABEL_67;
      }

      v64 = v63;
      v62 = (*((*MEMORY[0x1E69E7D40] & *v63) + 0x8C0))();
    }

    if (v59)
    {
      if (v62)
      {
        type metadata accessor for PKMathRecognitionItemAttributes(0, &lazy cache variable for type metadata for UIViewController, 0x1E69DD258);
        v65 = static NSObject.== infix(_:_:)();

        if (v65)
        {
          goto LABEL_67;
        }

LABEL_62:
        [v58 removeFromParentViewController];
        [v144 removeFromSuperview];
        [v58 didMoveToParentViewController_];
        v66 = swift_unknownObjectWeakLoadStrong();
        if (v66 && (v67 = v66, swift_beginAccess(), v68 = swift_unknownObjectWeakLoadStrong(), v67, v68) || (v69 = swift_unknownObjectWeakLoadStrong()) != 0 && (v70 = v69, v68 = (*((*MEMORY[0x1E69E7D40] & *v69) + 0x8C0))(), v70, v68))
        {
          [v68 addChildViewController_];
          [v5 addSubview_];
          [v58 didMoveToParentViewController_];
        }

        goto LABEL_67;
      }

LABEL_61:

      goto LABEL_62;
    }

    if (v62)
    {
      v59 = v62;
      goto LABEL_61;
    }

LABEL_67:

    goto LABEL_68;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, logger);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1D38C4000, v27, v28, "Should not be showing minimenu!", v29, 2u);
    MEMORY[0x1DA6D0660](v29, -1, -1);
  }

  specialized MiniMenuController.dismissMiniMenu()();
}

double block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

CGFloat specialized MiniMenuController.cropFrameToPreventOverlap(frame:overlapFrame:)(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v26.origin.x = a5;
  v26.origin.y = a6;
  v26.size.width = a7;
  v26.size.height = a8;
  v36.origin.x = a1;
  v36.origin.y = a2;
  v36.size.width = a3;
  v36.size.height = a4;
  v27 = CGRectIntersection(v26, v36);
  x = v27.origin.x;
  y = v27.origin.y;
  width = v27.size.width;
  height = v27.size.height;
  if (!CGRectEqualToRect(v27, *MEMORY[0x1E695F050]))
  {
    v28.origin.x = a1;
    v28.origin.y = a2;
    v28.size.width = a3;
    v28.size.height = a4;
    MaxY = CGRectGetMaxY(v28);
    v29.origin.x = x;
    v29.origin.y = y;
    v29.size.width = width;
    v29.size.height = height;
    v22 = MaxY - CGRectGetMinY(v29);
    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    v24 = CGRectGetMaxY(v30);
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    v21 = v24 - CGRectGetMinY(v31);
    v32.origin.x = x;
    v32.origin.y = y;
    v32.size.width = width;
    v32.size.height = height;
    MaxX = CGRectGetMaxX(v32);
    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    v20 = MaxX - CGRectGetMinX(v33);
    v34.origin.x = a1;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    v16 = CGRectGetMaxX(v34);
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v17 = v16 - CGRectGetMinX(v35);
    if (v21 >= v22)
    {
      v18 = v22;
    }

    else
    {
      v18 = v21;
    }

    if (v20 < v18)
    {
      v18 = v20;
    }

    if (v17 < v18)
    {
      v18 = v17;
    }

    if (v18 != v22 && v18 != v21 && v18 == v20)
    {
      return v20 + a1;
    }
  }

  return a1;
}

uint64_t specialized Canvas.bandSelectionShouldBegin(_:point:)(double a1, double a2)
{
  v3 = v2;
  v6 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v2) + 0x468))();
  if (result)
  {
    if (*(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_indirectPointerTouchMode) != 1)
    {

      return 0;
    }

    v23 = result;
    if ([result allowsFingerDrawing])
    {
      v8 = *((*v6 & *v2) + 0x3C8);
      result = (v8)(&v24);
      if (v24 != 1)
      {
        result = v8(&v24, result);
        if (v24 != 2)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
      result = (*((*v6 & *v2) + 0x3C8))(&v24);
      if (!v24)
      {
LABEL_24:

        return 0;
      }
    }

    v9 = *(v2 + OBJC_IVAR____TtC8PaperKit9AnyCanvas_resizeView);
    if (!v9)
    {
      __break(1u);
      return result;
    }

    v10 = v9;
    [v10 convertPoint:v2 fromCoordinateSpace:{a1, a2}];
    v11 = [v10 hitTest:0 withEvent:?];

    if (v11)
    {

      return 0;
    }

    v12 = Canvas.editingView.getter();
    v14 = v13;
    ObjectType = swift_getObjectType();
    v16 = (*(v14 + 64))(ObjectType, v14);

    if (v16 >> 62)
    {
      goto LABEL_29;
    }

    for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v18 = 0;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x1DA6CE0C0](v18, v16);
        }

        else
        {
          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v19 = *(v16 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24 = v19;
        v22 = closure #1 in implicit closure #2 in Canvas.bandSelectionShouldBegin(_:point:)(&v24, v3, a1, a2);

        if ((v22 & 1) == 0)
        {

          goto LABEL_24;
        }

        ++v18;
        if (v21 == i)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      ;
    }

LABEL_30:

    return 1;
  }

  return result;
}

uint64_t outlined init with copy of PKDrawing?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PencilKit9PKDrawingVSgMd, &_s9PencilKit9PKDrawingVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type NSFastEnumerationIterator and conformance NSFastEnumerationIterator(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t dispatch thunk of FindResultProvider.performTextSearch(queryString:ignoreCase:wholeWords:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = CanvasElementImageRenderer.image<A, B>(_:in:bounds:darkMode:isRTL:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSW_Tt0g5(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = __swift_project_boxed_opaque_existential_1(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = specialized Data.InlineData.init(_:)(v3, v4);
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = specialized Data.LargeSlice.init(_:)(v3, v4);
    }

    else
    {
      v6 = specialized Data.InlineSlice.init(_:)(v3, v4);
    }
  }

  else
  {
    v6 = 0;
  }

  __swift_destroy_boxed_opaque_existential_0(v8);
  return v6;
}