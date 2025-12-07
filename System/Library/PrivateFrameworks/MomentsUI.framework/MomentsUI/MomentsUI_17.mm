Swift::Void __swiftcall BlurGradientView.layoutSubviews()()
{
  v1 = v0;
  v31 = [v0 layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x78))();
    v6 = v5;
    if (v5 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v34 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return;
      }

      v30 = v3;
      v3 = 0;
      v8 = v34;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x21CE93180](v3, v6);
          goto LABEL_11;
        }

        if ((v3 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v3 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v9 = *(v6 + 8 * v3 + 32);
LABEL_11:
        v10 = v9;
        v11 = [v9 CGColor];
        type metadata accessor for CGColorRef(0);
        v33 = v12;

        *&v32 = v11;
        v34 = v8;
        v14 = *(v8 + 16);
        v13 = *(v8 + 24);
        v4 = (v14 + 1);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
          v8 = v34;
        }

        ++v3;
        *(v8 + 16) = v4;
        outlined init with take of Any(&v32, (v8 + 32 * v14 + 32));
        if (i == v3)
        {

          v3 = v30;
          v4 = MEMORY[0x277D85000];
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_22:
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 setColors_];

    v16 = (*((*v4 & *v1) + 0x90))();
    if (v16)
    {
      specialized _arrayForceCast<A, B>(_:)(v16);

      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      v17.super.isa = Array._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v17.super.isa = 0;
    }

    [v3 setLocations_];

    v18 = [v1 effectiveUserInterfaceLayoutDirection];
    v19 = (*((*v4 & *v1) + 0xA8))();
    if (v18 == 1)
    {
      v20 = 1.0 - v19;
    }

    else
    {
      v20 = v19;
    }

    v21 = *((*v4 & *v1) + 0xA8);
    v21();
    if (v22 == 0.0 && (v23 = *(v1 + OBJC_IVAR____TtC9MomentsUI16BlurGradientView_layoutGuide), (v24 = [v23 owningView]) != 0))
    {

      [v23 layoutFrame];
      MinY = CGRectGetMinY(v36);
      [v1 bounds];
      v26 = MinY / CGRectGetHeight(v37);
    }

    else
    {
      v21();
    }

    [v3 setStartPoint_];
    v27 = [v1 effectiveUserInterfaceLayoutDirection];
    v28 = (*((*v4 & *v1) + 0xC0))();
    if (v27 == 1)
    {
      v29 = 1.0 - v28;
    }

    else
    {
      v29 = v28;
    }

    (*((*v4 & *v1) + 0xC0))();
    [v3 setEndPoint_];
  }

  else
  {
  }
}

id MaskedBlurView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id BlurGradientView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_7SwiftUI9UnitPointVAbCE13InvalidationsO6LayoutVGMd, &_sSo6UIViewC5UIKitE12InvalidatingVy_7SwiftUI9UnitPointVAbCE13InvalidationsO6LayoutVGMR);
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_Say12CoreGraphics7CGFloatVGSgAbCE13InvalidationsO6LayoutVGMd, &_sSo6UIViewC5UIKitE12InvalidatingVy_Say12CoreGraphics7CGFloatVGSgAbCE13InvalidationsO6LayoutVGMR);
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - v13;
  v15 = type metadata accessor for UIView.Invalidations.Layout();
  MEMORY[0x28223BE20](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_SaySo7UIColorCGAbCE13InvalidationsO6LayoutVGMd, &_sSo6UIViewC5UIKitE12InvalidatingVy_SaySo7UIColorCGAbCE13InvalidationsO6LayoutVGMR);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - v18;
  v20 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView_layoutGuide;
  *&v4[v20] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v21 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView__colors;
  v38 = MEMORY[0x277D84F90];
  UIView.Invalidations.Layout.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7UIColorCGMd, &_sSaySo7UIColorCGMR);
  lazy protocol witness table accessor for type [UIColor] and conformance <A> [A]();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v17 + 32))(&v4[v21], v19, v16);
  v22 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView__locations;
  v38 = 0;
  UIView.Invalidations.Layout.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatVGSgMd, &_sSay12CoreGraphics7CGFloatVGSgMR);
  lazy protocol witness table accessor for type [CGFloat]? and conformance <A> A?();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v33 + 32))(&v4[v22], v14, v34);
  v23 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView__startPoint;
  static UnitPoint.top.getter();
  v38 = v24;
  v39 = v25;
  UIView.Invalidations.Layout.init()();
  lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint();
  UIView.Invalidating.init(wrappedValue:_:)();
  v26 = v36;
  v27 = *(v35 + 32);
  v27(&v4[v23], v11, v36);
  v28 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView__endPoint;
  static UnitPoint.bottom.getter();
  v38 = v29;
  v39 = v30;
  UIView.Invalidations.Layout.init()();
  UIView.Invalidating.init(wrappedValue:_:)();
  v27(&v4[v28], v11, v26);
  v31 = type metadata accessor for BlurGradientView(0);
  v37.receiver = v4;
  v37.super_class = v31;
  return objc_msgSendSuper2(&v37, sel_initWithFrame_, a1, a2, a3, a4);
}

id BlurGradientView.init(coder:)(void *a1)
{
  v33 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_7SwiftUI9UnitPointVAbCE13InvalidationsO6LayoutVGMd, &_sSo6UIViewC5UIKitE12InvalidatingVy_7SwiftUI9UnitPointVAbCE13InvalidationsO6LayoutVGMR);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_Say12CoreGraphics7CGFloatVGSgAbCE13InvalidationsO6LayoutVGMd, &_sSo6UIViewC5UIKitE12InvalidatingVy_Say12CoreGraphics7CGFloatVGSgAbCE13InvalidationsO6LayoutVGMR);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for UIView.Invalidations.Layout();
  MEMORY[0x28223BE20](v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo6UIViewC5UIKitE12InvalidatingVy_SaySo7UIColorCGAbCE13InvalidationsO6LayoutVGMd, &_sSo6UIViewC5UIKitE12InvalidatingVy_SaySo7UIColorCGAbCE13InvalidationsO6LayoutVGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v28 - v11;
  v13 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView_layoutGuide;
  *&v1[v13] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v14 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView__colors;
  v35 = MEMORY[0x277D84F90];
  UIView.Invalidations.Layout.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7UIColorCGMd, &_sSaySo7UIColorCGMR);
  lazy protocol witness table accessor for type [UIColor] and conformance <A> [A]();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v10 + 32))(&v1[v14], v12, v9);
  v15 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView__locations;
  v35 = 0;
  UIView.Invalidations.Layout.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12CoreGraphics7CGFloatVGSgMd, &_sSay12CoreGraphics7CGFloatVGSgMR);
  lazy protocol witness table accessor for type [CGFloat]? and conformance <A> A?();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v29 + 32))(&v1[v15], v7, v30);
  v16 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView__startPoint;
  static UnitPoint.top.getter();
  v35 = v17;
  v36 = v18;
  UIView.Invalidations.Layout.init()();
  lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint();
  UIView.Invalidating.init(wrappedValue:_:)();
  v19 = v32;
  v20 = *(v31 + 32);
  v20(&v1[v16], v4, v32);
  v21 = OBJC_IVAR____TtC9MomentsUI16BlurGradientView__endPoint;
  static UnitPoint.bottom.getter();
  v35 = v22;
  v36 = v23;
  UIView.Invalidations.Layout.init()();
  UIView.Invalidating.init(wrappedValue:_:)();
  v20(&v1[v21], v4, v19);
  v24 = type metadata accessor for BlurGradientView(0);
  v34.receiver = v1;
  v34.super_class = v24;
  v25 = v33;
  v26 = objc_msgSendSuper2(&v34, sel_initWithCoder_, v33);

  if (v26)
  {
  }

  return v26;
}

id MaskedBlurView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t lazy protocol witness table accessor for type UIColor and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type UIColor and conformance NSObject;
  if (!lazy protocol witness table cache variable for type UIColor and conformance NSObject)
  {
    type metadata accessor for NSAttributedString(255, &lazy cache variable for type metadata for UIColor, 0x277D75348);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UIColor and conformance NSObject);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CGFloat]? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type [CGFloat]? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type [CGFloat]? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12CoreGraphics7CGFloatVGSgMd, &_sSay12CoreGraphics7CGFloatVGSgMR);
    lazy protocol witness table accessor for type [UIColor] and conformance <A> [A](&lazy protocol witness table cache variable for type [CGFloat] and conformance <A> [A], &_sSay12CoreGraphics7CGFloatVGMd, &_sSay12CoreGraphics7CGFloatVGMR, lazy protocol witness table accessor for type CGFloat and conformance CGFloat);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CGFloat]? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [UIColor] and conformance <A> [A](unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint()
{
  result = lazy protocol witness table cache variable for type UnitPoint and conformance UnitPoint;
  if (!lazy protocol witness table cache variable for type UnitPoint and conformance UnitPoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnitPoint and conformance UnitPoint);
  }

  return result;
}

void type metadata completion function for BlurGradientView(uint64_t a1)
{
  type metadata accessor for UIView.Invalidating<[UIColor], UIView.Invalidations.Layout>(319, &lazy cache variable for type metadata for UIView.Invalidating<[UIColor], UIView.Invalidations.Layout>, &_sSaySo7UIColorCGMd, &_sSaySo7UIColorCGMR, lazy protocol witness table accessor for type [UIColor] and conformance <A> [A]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIView.Invalidating<[UIColor], UIView.Invalidations.Layout>(319, &lazy cache variable for type metadata for UIView.Invalidating<[CGFloat]?, UIView.Invalidations.Layout>, &_sSay12CoreGraphics7CGFloatVGSgMd, &_sSay12CoreGraphics7CGFloatVGSgMR, lazy protocol witness table accessor for type [CGFloat]? and conformance <A> A?);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIView.Invalidating<UnitPoint, UIView.Invalidations.Layout>(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void type metadata accessor for UIView.Invalidating<[UIColor], UIView.Invalidations.Layout>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    type metadata accessor for UIView.Invalidations.Layout();
    a5();
    v7 = type metadata accessor for UIView.Invalidating();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void type metadata accessor for UIView.Invalidating<UnitPoint, UIView.Invalidations.Layout>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for UIView.Invalidating<UnitPoint, UIView.Invalidations.Layout>)
  {
    type metadata accessor for UIView.Invalidations.Layout();
    lazy protocol witness table accessor for type UnitPoint and conformance UnitPoint();
    v1 = type metadata accessor for UIView.Invalidating();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for UIView.Invalidating<UnitPoint, UIView.Invalidations.Layout>);
    }
  }
}

uint64_t EngagementEvent.init(viewModel:type:uiContainer:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, unsigned __int8 *a3@<X2>, char *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Client(0);
  v16 = v15 - 8;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a2;
  v20 = *a3;
  (*(*a1 + 280))(v17);
  v21 = &v19[*(v16 + 40)];
  v23 = *v21;
  v22 = *(v21 + 1);

  v24 = outlined destroy of Client(v19);
  if (!v22)
  {
    goto LABEL_6;
  }

  v34 = v20;
  v25 = (*(*a1 + 256))(v24);
  if (!v25)
  {

    goto LABEL_6;
  }

  v26 = v25;
  v27 = *(a1 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType);
  if (v27 == 65)
  {

LABEL_6:

    goto LABEL_7;
  }

  (*(*a1 + 184))();

  if ((*(v12 + 48))(v10, 1, v11) != 1)
  {
    v30 = *(v12 + 32);
    v30(v14, v10, v11);
    *a4 = v23;
    *(a4 + 1) = v22;
    *(a4 + 2) = v26;
    v31 = type metadata accessor for EngagementEvent(0);
    v30(&a4[v31[6]], v14, v11);
    a4[v31[7]] = v27;
    v32 = v34;
    a4[v31[8]] = v35;
    a4[v31[9]] = v32;
    return (*(*(v31 - 1) + 56))(a4, 0, 1, v31);
  }

  outlined destroy of UUID?(v10);
LABEL_7:
  v28 = type metadata accessor for EngagementEvent(0);
  return (*(*(v28 - 8) + 56))(a4, 1, 1, v28);
}

Swift::Int MessageSuggestionViewModel.Style.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t MessageSuggestionViewModel.style.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI26MessageSuggestionViewModel_style;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t MessageSuggestionViewModel.style.setter(char a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI26MessageSuggestionViewModel_style;
  result = swift_beginAccess();
  *(v1 + v3) = a1 & 1;
  return result;
}

uint64_t MessageSuggestionViewModel.__allocating_init(message:style:client:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = swift_allocObject();
  MessageSuggestionViewModel.init(message:style:client:)(a1, a2, a3 & 1, a4);
  return v8;
}

uint64_t MessageSuggestionViewModel.init(message:style:client:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v43 = a2;
  v44 = a4;
  v42 = a1;
  v40 = type metadata accessor for UUID();
  v6 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Client(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - v12;
  v38 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v17;
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  *(v4 + OBJC_IVAR____TtC9MomentsUI26MessageSuggestionViewModel_style) = a3 & 1;
  v20 = type metadata accessor for Date();
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 1, 1, v20);
  v21(v17, 1, 1, v20);
  v22 = *(v6 + 56);
  v23 = v40;
  v22(v13, 1, 1, v40);
  outlined init with copy of Client(v44, v10);
  v24 = v39;
  UUID.init()();
  UUID.init()();
  v25 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID;
  v22((v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID), 1, 1, v23);
  v26 = (v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_title);
  *v26 = 0;
  v26[1] = 0;
  v27 = (v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_subtitle);
  *v27 = 0;
  v27[1] = 0;
  v28 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking;
  *(v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking) = 0;
  v29 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets;
  *(v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets) = 0;
  (*(v6 + 16))(v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_databaseID, v24, v23);
  swift_beginAccess();
  v30 = v43;
  *v26 = v42;
  v26[1] = v30;
  swift_beginAccess();
  *v27 = 0;
  v27[1] = 0;
  outlined init with copy of Date?(v19, v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate);
  v31 = v37;
  outlined init with copy of Date?(v37, v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate);
  swift_beginAccess();
  v32 = v4 + v25;
  v33 = v38;
  outlined assign with copy of UUID?(v38, v32);
  swift_endAccess();
  outlined destroy of Client(v44);
  (*(v6 + 8))(v24, v23);
  outlined destroy of UTType?(v33, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of UTType?(v31, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of UTType?(v19, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_beginAccess();
  *(v4 + v29) = 0;

  *(v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) = 13;
  *(v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType) = 65;
  swift_beginAccess();
  v34 = *(v4 + v28);
  *(v4 + v28) = 0;

  outlined init with take of Client(v41, v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_client);
  *(v4 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_prompt) = 0;
  return v4;
}

uint64_t MessageSuggestionViewModel.__deallocating_deinit()
{
  SuggestionViewModel.deinit();

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type MessageSuggestionViewModel.Style and conformance MessageSuggestionViewModel.Style()
{
  result = lazy protocol witness table cache variable for type MessageSuggestionViewModel.Style and conformance MessageSuggestionViewModel.Style;
  if (!lazy protocol witness table cache variable for type MessageSuggestionViewModel.Style and conformance MessageSuggestionViewModel.Style)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MessageSuggestionViewModel.Style and conformance MessageSuggestionViewModel.Style);
  }

  return result;
}

uint64_t type metadata accessor for MessageSuggestionViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for MessageSuggestionViewModel;
  if (!type metadata singleton initialization cache for MessageSuggestionViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static PresenterServerConnection.currentConnection.getter()
{
  if (one-time initialization token for $currentConnection != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  return v1;
}

uint64_t one-time initialization function for $currentConnection()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCy9MomentsUI25PresenterServerConnectionCSgGMd, &_ss9TaskLocalCy9MomentsUI25PresenterServerConnectionCSgGMR);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  static PresenterServerConnection.$currentConnection = result;
  return result;
}

uint64_t static PresenterServerConnection.$currentConnection.getter()
{
  if (one-time initialization token for $currentConnection != -1)
  {
    swift_once();
  }
}

Swift::Int PresenterServerConnection.PresenterError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x21CE937C0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t PresenterServerConnection.presenterDelegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI25PresenterServerConnection_presenterDelegate;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t PresenterServerConnection.currConnectionID.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC9MomentsUI25PresenterServerConnection_currConnectionID;
  swift_beginAccess();
  outlined assign with copy of UUID?(a1, v1 + v10);
  swift_endAccess();
  outlined init with copy of DateInterval?(v1 + v10, v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    outlined destroy of UTType?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return outlined destroy of UTType?(v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v12 = (*(v7 + 32))(v9, v5, v6);
    v13 = (*((*MEMORY[0x277D85000] & *v1) + 0xF0))(v12);
    if (v13)
    {
      v14 = v13;
      isa = UUID._bridgeToObjectiveC()().super.isa;
      [v14 didReceiveConnectionUUIDWithUuid_];
      swift_unknownObjectRelease();
    }

    outlined destroy of UTType?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return (*(v7 + 8))(v9, v6);
  }
}

id PresenterServerConnection.__deallocating_deinit()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0xD0);
  v2 = v0;
  v1();

  v4.receiver = v2;
  v4.super_class = type metadata accessor for PresenterServerConnection(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t type metadata accessor for PresenterServerConnection(uint64_t a1)
{
  result = type metadata singleton initialization cache for PresenterServerConnection;
  if (!type metadata singleton initialization cache for PresenterServerConnection)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall PresenterServerConnection.connectionInterrupted()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
  if (v2)
  {
    v3 = v2;
    v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v3 didTransitionTo_];

    (*((*v1 & *v0) + 0xD0))();

    swift_unknownObjectRelease();
  }
}

id PresenterServerConnection.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PresenterServerConnection.init()()
{
  *&v0[OBJC_IVAR____TtC9MomentsUI25PresenterServerConnection_presenterDelegate] = 0;
  v1 = OBJC_IVAR____TtC9MomentsUI25PresenterServerConnection_currConnectionID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for PresenterServerConnection(0);
  return objc_msgSendSuper2(&v4, sel_init);
}

id PresenterServerConnection.remoteTarget.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v23 - v5;
  v28 = 0;
  v7 = *(v0 + OBJC_IVAR____TtC9MomentsUI16ServerConnection_lock);
  swift_unknownObjectWeakInit();
  [v7 lock];
  specialized closure #1 in PresenterServerConnection.remoteTarget.getter(v27, &v28);
  [v7 unlock];
  MEMORY[0x21CE948B0](v27);
  v8 = v28;
  if (v28)
  {
    swift_unknownObjectRetain();
    v9 = MEMORY[0x21CE91FC0](0xD000000000000010, 0x80000002165794A0);
    v10 = MEMORY[0x21CE91FC0](0x676E416369736142, 0xED00004350496C65);
    v11 = [objc_opt_self() attributeWithDomain:v9 name:v10];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_21658E210;
    *(v12 + 32) = v11;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for RBSAttribute, 0x277D46DD8);
    v13 = v11;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = [v8 remoteTargetWithLaunchingAssertionAttributes_];

    if (v15)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
    }

    v27[0] = v25;
    v27[1] = v26;
    if (*(&v26 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI11ViewService_pMd, &_s9MomentsUI11ViewService_pMR);
      if (swift_dynamicCast())
      {
        v16 = v24;
        if (v24)
        {
          v17 = [v24 getConnectionID];
          if (v17)
          {
            v18 = v17;
            static UUID._unconditionallyBridgeFromObjectiveC(_:)();

            v19 = 0;
          }

          else
          {
            v19 = 1;
          }

          v22 = type metadata accessor for UUID();
          (*(*(v22 - 8) + 56))(v4, v19, 1, v22);
          outlined init with take of UUID?(v4, v6);
          goto LABEL_13;
        }
      }
    }

    else
    {
      outlined destroy of UTType?(v27, &_sypSgMd, &_sypSgMR);
    }

    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    v16 = 0;
LABEL_13:
    PresenterServerConnection.currConnectionID.setter(v6);
    swift_unknownObjectRelease_n();

    return v16;
  }

  return 0;
}

uint64_t specialized closure #1 in PresenterServerConnection.remoteTarget.getter(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = MEMORY[0x277D85000];
  if (!Strong || (v5 = Strong, v6 = (*((*MEMORY[0x277D85000] & *Strong) + 0x70))(), v5, !v6))
  {
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = v7;
    if (one-time initialization token for queue != -1)
    {
      swift_once();
    }

    v9 = static PresenterServerConnection.queue;
    v10 = objc_opt_self();
    v11 = [v10 protocolForProtocol_];
    v6 = [v10 protocolForProtocol_];
    v4 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v8) + 0xB8))(0xD00000000000002CLL, 0x800000021657EA80, v9, v11, v6);
  }

LABEL_8:
  swift_beginAccess();
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = *((*v4 & *v12) + 0x70);
    v14 = v12;
    v15 = v13();

    if (!v15)
    {
LABEL_12:
      v12 = 0;
      goto LABEL_13;
    }

    v12 = swift_dynamicCastObjCProtocolConditional();
    if (!v12)
    {

      goto LABEL_12;
    }
  }

LABEL_13:
  *a2 = v12;
  return swift_unknownObjectRelease();
}

void PresenterServerConnection.updatePicker(with:animated:)(uint64_t a1, void *a2)
{
  v5 = [v2 remoteTarget];
  if (!v5)
  {
    return;
  }

  v6 = v5;
  if (a1)
  {
    goto LABEL_5;
  }

  v7 = (*((*MEMORY[0x277D85000] & *v2) + 0x70))();
  if (v7)
  {

LABEL_5:
    if (one-time initialization token for presentation != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static CommonLogger.presentation);
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 134218242;
      *(v12 + 4) = a1;
      *(v12 + 12) = 2112;
      *(v12 + 14) = v9;
      *v13 = v9;
      v14 = v9;
      _os_log_impl(&dword_21607C000, v10, v11, "[PresenterServerConnection] updatePicker to state: %ld, animated: %@", v12, 0x16u);
      outlined destroy of UTType?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x21CE94770](v13, -1, -1);
      MEMORY[0x21CE94770](v12, -1, -1);
    }

    v19 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    [v6 updatePickerWith:v19 animated:v9];
    swift_unknownObjectRelease();

    return;
  }

  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static CommonLogger.presentation);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_21607C000, v16, v17, "[PresenterServerConnection] Avoid double dismisal", v18, 2u);
    MEMORY[0x21CE94770](v18, -1, -1);
  }

  swift_unknownObjectRelease();
}

id PresenterServerConnection.requestPresentation(for:with:)(void *a1, void *a2)
{
  v3 = v2;
  result = [v3 remoteTarget];
  if (result)
  {
    v7 = result;
    if (one-time initialization token for presentation != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static CommonLogger.presentation);
    v9 = a1;
    v10 = a2;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v25 = v14;
      *v13 = 136315394;
      if (a1)
      {
        v15 = [v9 stringRepresentation];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0xE000000000000000;
      }

      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, &v25);

      *(v13 + 4) = v19;
      *(v13 + 12) = 2080;
      v20 = [v10 debugDescription];
      v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = v22;

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v25);

      *(v13 + 14) = v24;
      _os_log_impl(&dword_21607C000, v11, v12, "[PresenterServerConnection] requestPresentation for token: %s, with options: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v14, -1, -1);
      MEMORY[0x21CE94770](v13, -1, -1);
    }

    [v7 requestPresentationFor:v9 with:v10];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t PresenterServerConnection.retrieveOnboardingState()()
{
  *(v1 + 152) = v0;
  return MEMORY[0x2822009F8](PresenterServerConnection.retrieveOnboardingState(), 0, 0);
}

{
  v1 = [*(v0 + 152) remoteTarget];
  *(v0 + 160) = v1;
  if (v1)
  {
    v2 = v1;
    if (one-time initialization token for presentation != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    *(v0 + 168) = __swift_project_value_buffer(v3, static CommonLogger.presentation);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21607C000, v4, v5, "[PresenterServerConnection] retrieveOnboardingState", v6, 2u);
      MEMORY[0x21CE94770](v6, -1, -1);
    }

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = PresenterServerConnection.retrieveOnboardingState();
    v7 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8NSNumberCs5Error_pGMd, &_sSccySo8NSNumberCs5Error_pGMR);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MKMapSnapshot?, @unowned NSError?) -> () with result type MKMapSnapshot;
    *(v0 + 104) = &block_descriptor_18;
    *(v0 + 112) = v7;
    [v2 retrieveOnboardingStateWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v8 = *(v0 + 8);

    return v8();
  }
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = PresenterServerConnection.retrieveOnboardingState();
  }

  else
  {
    v2 = PresenterServerConnection.retrieveOnboardingState();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 144);
  v2 = [v1 integerValue];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_21607C000, v3, v4, "[PresenterServerConnection] retrieveOnboardingState, retrievedState=%ld", v5, 0xCu);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  swift_unknownObjectRelease();
  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t PresenterServerConnection.retrieveOnboardingState()(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();
  swift_unknownObjectRelease();

  v3 = *(v1 + 8);

  return v3(0);
}

uint64_t @objc closure #1 in PresenterServerConnection.retrieveOnboardingState()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in PresenterServerConnection.retrieveOnboardingState();

  return PresenterServerConnection.retrieveOnboardingState()();
}

uint64_t @objc closure #1 in PresenterServerConnection.retrieveOnboardingState()(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v5 = *(v7 + 8);

  return v5();
}

uint64_t PresenterServerConnection.retrieveOnboardingStateLocal()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return specialized PresenterServerConnection.retrieveOnboardingStateLocal()();
}

uint64_t @objc closure #1 in PresenterServerConnection.retrieveOnboardingStateLocal()(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = @objc closure #1 in PresenterServerConnection.retrieveOnboardingStateLocal();

  return specialized PresenterServerConnection.retrieveOnboardingStateLocal()();
}

uint64_t @objc closure #1 in PresenterServerConnection.retrieveOnboardingStateLocal()(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v3[2](v3, a1);
  _Block_release(v3);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t PresenterServerConnection.retrieveNotificationConfiguration()()
{
  v1[39] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1[40] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[41] = v2;
  v1[42] = *(v2 - 8);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](PresenterServerConnection.retrieveNotificationConfiguration(), 0, 0);
}

{
  v1 = [*(v0 + 312) remoteTarget];
  *(v0 + 360) = v1;
  if (!v1)
  {
    lazy protocol witness table accessor for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
LABEL_9:

    v14 = *(v0 + 8);

    return v14();
  }

  v2 = v1;
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = OBJC_IVAR____TtC9MomentsUI25PresenterServerConnection_currConnectionID;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v6 + v7, v5, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    outlined destroy of UTType?(*(v0 + 320), &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for presentation != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static CommonLogger.presentation);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21607C000, v9, v10, "[PresenterServerConnection] No known connectionID to get notification schedule setting", v11, 2u);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    lazy protocol witness table accessor for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  (*(*(v0 + 336) + 32))(*(v0 + 352), *(v0 + 320), *(v0 + 328));
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  *(v0 + 368) = __swift_project_value_buffer(v16, static CommonLogger.presentation);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_21607C000, v17, v18, "[PresenterServerConnection] get notification availability status", v19, 2u);
    MEMORY[0x21CE94770](v19, -1, -1);
  }

  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 296;
  *(v0 + 24) = PresenterServerConnection.retrieveNotificationConfiguration();
  v20 = swift_continuation_init();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo8NSNumberCs5Error_pGMd, &_sSccySo8NSNumberCs5Error_pGMR);
  *(v0 + 376) = v21;
  *(v0 + 200) = v21;
  *(v0 + 144) = MEMORY[0x277D85DD0];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MKMapSnapshot?, @unowned NSError?) -> () with result type MKMapSnapshot;
  *(v0 + 168) = &block_descriptor_4;
  *(v0 + 176) = v20;
  [v2 retrieveNotificationAvailabilityWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

{
  v1 = *(*v0 + 48);
  *(*v0 + 384) = v1;
  if (v1)
  {
    v2 = PresenterServerConnection.retrieveNotificationConfiguration();
  }

  else
  {
    v2 = PresenterServerConnection.retrieveNotificationConfiguration();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v29 = v0;
  v1 = v0[37];
  v2 = [v1 integerValue];
  v0[49] = v2;

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v2;
    _os_log_impl(&dword_21607C000, v3, v4, "[PresenterServerConnection] retrieveNotificationAvailability, retrievedState=%ld", v5, 0xCu);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[41];
  v9 = v0[42];

  (*(v9 + 16))(v7, v6, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[42];
  v13 = v0[43];
  v15 = v0[41];
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136315138;
    v27 = UUID.uuidString.getter();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v13, v15);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v19, &v28);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_21607C000, v10, v11, "[PresenterServerConnection] retrieveNotificationScheduleType. currConnectionID: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x21CE94770](v17, -1, -1);
    MEMORY[0x21CE94770](v16, -1, -1);
  }

  else
  {

    v20 = *(v14 + 8);
    v20(v13, v15);
  }

  v0[50] = v20;
  v22 = v0[47];
  v23 = v0[45];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v0[51] = isa;
  v0[10] = v0;
  v0[15] = v0 + 38;
  v0[11] = PresenterServerConnection.retrieveNotificationConfiguration();
  v25 = swift_continuation_init();
  v0[33] = v22;
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned MKMapSnapshot?, @unowned NSError?) -> () with result type MKMapSnapshot;
  v0[29] = &block_descriptor_7_0;
  v0[30] = v25;
  [v23 retrieveNotificationScheduleTypeWithConnectionID:isa completionHandler:v0 + 26];

  return MEMORY[0x282200938](v0 + 10);
}

{
  v1 = *(*v0 + 112);
  *(*v0 + 416) = v1;
  if (v1)
  {
    v2 = PresenterServerConnection.retrieveNotificationConfiguration();
  }

  else
  {
    v2 = PresenterServerConnection.retrieveNotificationConfiguration();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 408);
  v2 = *(v0 + 304);
  v3 = [v2 integerValue];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v3;
    _os_log_impl(&dword_21607C000, v4, v5, "[PresenterServerConnection] retrieveNotificationScheduleType, retrievedState=%ld", v6, 0xCu);
    MEMORY[0x21CE94770](v6, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }

  (*(v0 + 400))(*(v0 + 352), *(v0 + 328));

  v7 = *(v0 + 8);
  v8 = *(v0 + 392);

  return v7(v3, v8);
}

uint64_t PresenterServerConnection.retrieveNotificationConfiguration()(uint64_t a1)
{
  v2 = v1[44];
  v3 = v1[41];
  v4 = v1[42];
  swift_willThrow();
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);

  v5 = v1[1];

  return v5();
}

{
  v2 = v1[51];
  v3 = v1[50];
  v4 = v1[44];
  v5 = v1[41];
  swift_willThrow();

  swift_willThrow();
  swift_unknownObjectRelease();
  v3(v4, v5);

  v6 = v1[1];

  return v6();
}

uint64_t @objc closure #1 in PresenterServerConnection.retrieveNotificationConfiguration()(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = @objc closure #1 in PresenterServerConnection.retrieveNotificationConfiguration();

  return PresenterServerConnection.retrieveNotificationConfiguration()();
}

uint64_t @objc closure #1 in PresenterServerConnection.retrieveNotificationConfiguration()(uint64_t a1, uint64_t a2)
{
  v6 = *(*v3 + 24);
  v7 = *(*v3 + 16);
  v8 = *v3;

  v9 = (v6 + 16);
  v10 = *(v8 + 24);
  if (v2)
  {
    v11 = _convertErrorToNSError(_:)();

    (*v9)(v10, 0, 0, v11);
  }

  else
  {
    (*v9)(*(v8 + 24), a1, a2, 0);
  }

  _Block_release(*(v8 + 24));
  v12 = *(v8 + 8);

  return v12();
}

uint64_t PresenterServerConnection.retrieveUrlForToken(_:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v46 = a2;
  v47 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v41 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = v41 - v16;
  v18 = [v5 remoteTarget];
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v23 = *(v20 + 56);
  v22 = v20 + 56;
  v21 = v23;
  if (v18)
  {
    v43 = v12;
    v44 = v9;
    v45 = a5;
    v41[1] = v22;
    v42 = v21;
    v21(v17, 1, 1, v19);
    if (one-time initialization token for presentation != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static CommonLogger.presentation);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_21607C000, v25, v26, "[PresenterServerConnection] get asset url with token", v27, 2u);
      MEMORY[0x21CE94770](v27, -1, -1);
    }

    v28 = MEMORY[0x21CE91FC0](a1, v46);
    v29 = MEMORY[0x21CE91FC0](v47, a4);
    v30 = [v18 retrieveUrlForToken:v28 type:v29];

    if (v30)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v33 = v43;
    v42(v15, v31, 1, v19);
    outlined assign with take of URL?(v15, v17);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v48[0] = v37;
      *v36 = 136315138;
      swift_beginAccess();
      outlined init with copy of DateInterval?(v17, v33, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v38 = String.init<A>(describing:)();
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v39, v48);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_21607C000, v34, v35, "[PresenterServerConnection] retrieveUrlForToken, retrievedUrl=%s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x21CE94770](v37, -1, -1);
      MEMORY[0x21CE94770](v36, -1, -1);
    }

    swift_unknownObjectRelease();

    swift_beginAccess();
    outlined init with copy of DateInterval?(v17, v45, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    return outlined destroy of UTType?(v17, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {

    return (v21)(a5, 1, 1, v19);
  }
}

Swift::Void __swiftcall PresenterServerConnection.willReceiveUserSelection()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
  if (v1)
  {
    [v1 willReceiveUserSelection];

    swift_unknownObjectRelease();
  }
}

void *PresenterServerConnection.didReceiveUserSelection(suggestion:)(uint64_t a1)
{
  result = (*((*MEMORY[0x277D85000] & *v1) + 0xF0))();
  if (result)
  {
    [result didReceiveUserSelectionWithSuggestion_];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *PresenterServerConnection.didReceiveStateUpdateRequest(_:)(void *a1, const char *a2, const char **a3, ...)
{
  v6 = v3;
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static CommonLogger.presentation);
  v9 = a1;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    v14 = v9;
    _os_log_impl(&dword_21607C000, v10, v11, a2, v12, 0xCu);
    outlined destroy of UTType?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x21CE94770](v13, -1, -1);
    MEMORY[0x21CE94770](v12, -1, -1);
  }

  result = (*((*MEMORY[0x277D85000] & *v6) + 0xF0))();
  if (result)
  {
    [result *a3];

    return swift_unknownObjectRelease();
  }

  return result;
}

void specialized PresenterServerConnection.retrieveOnboardingStateLocal()()
{
  if (one-time initialization token for presentation != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.presentation);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "[PresenterServerConnection] retrieveOnboardingStateLocal", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  swift_beginAccess();
  v5 = static MomentsUIManager.onboardingFlowStatus;
  if (static MomentsUIManager.onboardingFlowStatus && (v6 = qword_2811A7C30, v7 = , v8 = v5(v7), v10 = v9, outlined consume of (@escaping @callee_guaranteed () -> (@unowned UInt?))?(v5, v6), (v10 & 1) == 0))
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = v8;
      _os_log_impl(&dword_21607C000, v11, v12, "[PresenterServerConnection] retrieveOnboardingStateLocal, retrievedState=%lu", v13, 0xCu);
      MEMORY[0x21CE94770](v13, -1, -1);
    }

    if (v8 < 0)
    {
      __break(1u);
      return;
    }
  }

  else
  {
    v8 = 0;
  }

  v14 = *(v0 + 8);

  v14(v8);
}

unint64_t lazy protocol witness table accessor for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError()
{
  result = lazy protocol witness table cache variable for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError;
  if (!lazy protocol witness table cache variable for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError;
  if (!lazy protocol witness table cache variable for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresenterServerConnection.PresenterError and conformance PresenterServerConnection.PresenterError);
  }

  return result;
}

void type metadata completion function for PresenterServerConnection(uint64_t a1)
{
  type metadata accessor for UUID?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t partial apply for @objc closure #1 in PresenterServerConnection.retrieveNotificationConfiguration()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in PresenterServerConnection.retrieveNotificationConfiguration()(v2, v3);
}

uint64_t partial apply for @objc closure #1 in PresenterServerConnection.retrieveOnboardingStateLocal()()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = static Exif.filterVideo(inputURL:outputURL:);

  return @objc closure #1 in PresenterServerConnection.retrieveOnboardingStateLocal()(v2);
}

uint64_t partial apply for @objc closure #1 in PresenterServerConnection.retrieveOnboardingState()()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = static Exif.filterImage(imageSource:outputURL:);

  return @objc closure #1 in PresenterServerConnection.retrieveOnboardingState()(v2, v3);
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

uint64_t static PosterCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016PosterCollectionbD0CAF06ClienthB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016PosterCollectionbD0CAF06ClienthB5ModelCGMR);
  v3 = __swift_project_value_buffer(v2, static PosterCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id PosterCollectionViewCell.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t static PosterSmallCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021PosterSmallCollectionbD0CAF06ClienthB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI021PosterSmallCollectionbD0CAF06ClienthB5ModelCGMR);
  v3 = __swift_project_value_buffer(v2, static PosterSmallCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id PosterCollectionViewCell.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t static PosterHorizontalCollectionViewCell.registration.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for registration != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI026PosterHorizontalCollectionbD0CAF06ClienthB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI026PosterHorizontalCollectionbD0CAF06ClienthB5ModelCGMR);
  v3 = __swift_project_value_buffer(v2, static PosterHorizontalCollectionViewCell.registration);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

char *specialized PosterCollectionViewCell.init(frame:)(char a1)
{
  if (one-time initialization token for empty != -1)
  {
    v11 = a1;
    swift_once();
    a1 = v11;
  }

  v1 = static MutablePosterViewModel.empty;
  v12 = a1;
  v2 = objc_allocWithZone(type metadata accessor for PosterView(0));
  v3 = PosterView.init(viewModel:style:)(v1, &v12);
  if (v3)
  {
    v4 = v3;
    v5 = CollectionViewAssetCell.init(assetView:)(v4);
    v6 = *((*MEMORY[0x277D85000] & *v5) + 0x90);
    v7 = v5;
    v8 = v6();

    [v8 addSubview_];
    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    return v7;
  }

  else
  {
    v10 = [objc_allocWithZone(type metadata accessor for AssetView(0)) init];

    return CollectionViewAssetCell.init(assetView:)(v10);
  }
}

void specialized Sequence.forEach(_:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v29 - v7;
  MEMORY[0x28223BE20](v6);
  v11 = &v29 - v10;
  v12 = *(a1 + 64);
  v31 = a1 + 64;
  v32 = v9;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v30 = (v13 + 63) >> 6;
  v16 = v9 + 16;
  v17 = (v9 + 8);

  v18 = 0;
  v33 = a1;
  v40 = v17;
  v41 = v8;
  v38 = v2;
  v39 = v11;
  v37 = v16;
  while (v15)
  {
LABEL_9:
    v20 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v21 = *(*(a1 + 56) + ((v18 << 9) | (8 * v20)));
    v22 = *(v21 + 16);
    if (v22)
    {
      v35 = v18;
      v36 = v15;
      v23 = (v21 + ((*(v32 + 80) + 32) & ~*(v32 + 80)));
      v43 = *(v32 + 72);
      v42 = *(v32 + 16);
      v34 = v21;

      do
      {
        v24 = v39;
        v25 = v42;
        v42(v39, v23, v2);
        v25(v5, v24, v2);
        v26 = v41;
        specialized Set._Variant.insert(_:)(v41, v5);
        v27 = v5;
        v28 = *v40;
        (*v40)(v26, v2);
        v28(v24, v2);
        v5 = v27;
        v23 += v43;
        --v22;
      }

      while (v22);

      a1 = v33;
      v18 = v35;
      v15 = v36;
    }
  }

  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v30)
    {

      return;
    }

    v15 = *(v31 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t static DBSnapshot.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static DBSnapshot.Class = a1;
  unk_27CA90D68 = a2;
  byte_27CA90D70 = a3;
  return result;
}

uint64_t DBSnapshot.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static DBSnapshot.Log);
}

uint64_t static DBSnapshot.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBSnapshot.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DBSnapshot.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBSnapshot.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DBSnapshot.Log.modify(uint64_t a1))()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static DBSnapshot.Log);
  swift_beginAccess();
  return MutableVideoViewModel.videoDurationSeconds.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance DBSnapshot@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBSnapshot.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

MomentsUI::DBSnapshot::Tab_optional __swiftcall DBSnapshot.Tab.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if ((rawValue + 1) < 3)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t DBSnapshot.Tab.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {

    v6 = 0;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    if (v5 == 1)
    {
      v6 = 2;
    }

    else
    {
      v6 = v5 == 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v8);
  }

  *a2 = v6;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t key path setter for DBSnapshot.id : DBSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 216))(v6);
}

uint64_t type metadata accessor for DBSnapshot(uint64_t a1)
{
  result = type metadata singleton initialization cache for DBSnapshot;
  if (!type metadata singleton initialization cache for DBSnapshot)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*DBSnapshot.id.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for UUID();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v5[7] = v9;
  v5[8] = v10;
  *v5 = v1;
  swift_getKeyPath();
  v5[9] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  PersistentModel.getValue<A>(forKey:)();

  return DBSnapshot.id.modify;
}

uint64_t key path getter for DBSnapshot.generation : DBSnapshot@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 256))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t key path setter for DBSnapshot.generation : DBSnapshot(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 264);

  return v4(v2, v3);
}

uint64_t DBSnapshot.generation.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double DBSnapshot.generation.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double closure #1 in DBSnapshot.generation.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

void (*DBSnapshot.generation.modify(void *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return DBSnapshot.generation.modify;
}

void DBSnapshot.generation.modify(void **a1, char a2)
{
  v3 = *a1;
  *(*a1 + 2) = *(*a1 + 4);
  swift_getKeyPath();
  if (a2)
  {

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  free(v3);
}

uint64_t key path getter for DBSnapshot.sequence : DBSnapshot@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 304))();
  *a2 = result;
  return result;
}

uint64_t DBSnapshot.sequence.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double DBSnapshot.sequence.setter(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double closure #1 in DBSnapshot.sequence.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

void (*DBSnapshot.sequence.modify(void *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return DBSnapshot.sequence.modify;
}

void DBSnapshot.sequence.modify(void **a1)
{
  v1 = *a1;
  *(*a1 + 1) = *(*a1 + 2);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

uint64_t key path getter for DBSnapshot.loadedSuggestions : DBSnapshot@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(**a1 + 352))();
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type UInt64? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type UInt64? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UInt64? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss6UInt64VSgMd, &_ss6UInt64VSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64? and conformance <A> A?);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt64? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type UInt64? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss6UInt64VSgMd, &_ss6UInt64VSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt64? and conformance <A> A?);
  }

  return result;
}

uint64_t DBSnapshot.loadedSuggestions.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type UInt64? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double DBSnapshot.loadedSuggestions.setter(uint64_t a1, char a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double closure #1 in DBSnapshot.loadedSuggestions.setter(uint64_t a1, uint64_t a2, char a3)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type UInt64? and conformance <A> A?();
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

void (*DBSnapshot.loadedSuggestions.modify(void *a1))(void **a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v3[4] = v1;
  v3[5] = v5;
  v3[2] = v1;
  v6 = v3 + 2;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type UInt64? and conformance <A> A?();
  PersistentModel.getValue<A>(forKey:)();

  v7 = *(v4 + 24);
  *v4 = *v6;
  *(v4 + 8) = v7;
  return DBSnapshot.loadedSuggestions.modify;
}

void DBSnapshot.loadedSuggestions.modify(void **a1)
{
  v1 = *a1;
  *(*a1 + 2) = *(*a1 + 4);
  swift_getKeyPath();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  free(v1);
}

Swift::Void __swiftcall DBSnapshot.refreshLoadedSuggestions()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v19 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMd, &_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMR);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v19 - v7;
  v24 = MEMORY[0x277D84FA0];
  v9 = (*(*v0 + 576))(v6);
  specialized Sequence.forEach(_:)(v9);

  type metadata accessor for DBSnapshot(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  if (!PersistentModel.modelContext.getter())
  {
    goto LABEL_6;
  }

  v22 = v5;
  v10 = dispatch thunk of ModelContext.container.getter();

  type metadata accessor for ModelContext();
  swift_allocObject();

  v21 = v10;
  v19[1] = ModelContext.init(_:)();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMR);
  v12 = *(v11 - 8);
  v20 = 0;
  v13 = *(v12 + 56);
  v13(v3, 1, 1, v11);
  v14 = type metadata accessor for DBSuggestion(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
  FetchDescriptor.init(predicate:sortBy:)();
  v15 = FetchDescriptor.includePendingChanges.setter();
  v19[0] = v19;
  MEMORY[0x28223BE20](v15);
  v19[-2] = &v24;
  v23 = v14;
  Predicate.init(_:)();
  v13(v3, 0, 1, v11);
  FetchDescriptor.predicate.setter();
  v16 = v20;
  v17 = dispatch thunk of ModelContext.fetchCount<A>(_:)();
  if (v16)
  {

    (*(v22 + 8))(v8, v4);
LABEL_6:

    return;
  }

  v18 = v22;
  if ((v17 & 0x8000000000000000) == 0)
  {
    (*(*v0 + 360))();

    (*(v18 + 8))(v8, v4);
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t closure #3 in DBSnapshot.refreshLoadedSuggestions()@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbSgGMR);
  v6 = *(v5 - 8);
  v58 = v5;
  v59 = v6;
  MEMORY[0x28223BE20](v5);
  v55 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGMR);
  v9 = *(v8 - 8);
  v56 = v8;
  v57 = v9;
  MEMORY[0x28223BE20](v8);
  v51 = &v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGAC5ValueVy_ANGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGAC5ValueVy_ANGGMR);
  v12 = *(v11 - 8);
  v60 = v11;
  v61 = v12;
  MEMORY[0x28223BE20](v11);
  v54 = &v43 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMR);
  v19 = *(v18 - 8);
  v49 = v18;
  v50 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4UUIDVGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4UUIDVGGMR);
  v48 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v43 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAIGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAIGGMR);
  v26 = *(v25 - 8);
  v52 = v25;
  v53 = v26;
  MEMORY[0x28223BE20](v25);
  v63 = &v43 - v27;
  v45 = *a1;
  v65 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy10Foundation4UUIDVGMd, &_sShy10Foundation4UUIDVGMR);
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v28 = *(v15 + 8);
  v43 = v15 + 8;
  v44 = v28;
  v28(v17, v14);
  v47 = MEMORY[0x277CC9080];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Set<UUID>> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4UUIDVGGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_ShyAA4UUIDVGGMR, MEMORY[0x277CC9080]);
  v46 = MEMORY[0x277CC90C0];
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Set<UUID> and conformance Set<A>, &_sShy10Foundation4UUIDVGMd, &_sShy10Foundation4UUIDVGMR, MEMORY[0x277D83B68]);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v29 = v49;
  static PredicateExpressions.build_contains<A, B>(_:_:)();
  (*(v50 + 8))(v21, v29);
  (*(v48 + 8))(v24, v22);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  v30 = v51;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  v44(v17, v14);
  v64 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  v31 = v55;
  static PredicateExpressions.build_Arg<A>(_:)();
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGMR, v46);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool?> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_SbSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbSgGMR, v47);
  lazy protocol witness table accessor for type Bool? and conformance <A> A?();
  v32 = v54;
  v33 = v31;
  v34 = v56;
  v35 = v58;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v59 + 8))(v33, v35);
  (*(v57 + 8))(v30, v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAKGGAC5EqualVy_AOy_AUSbSgGAIy_AZGGGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAKGGAC5EqualVy_AOy_AUSbSgGAIy_AZGGGMR);
  v37 = v62;
  v62[3] = v36;
  v37[4] = lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>>> and conformance <> PredicateExpressions.Conjunction<A, B>();
  __swift_allocate_boxed_opaque_existential_1(v37);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>> and conformance PredicateExpressions.SequenceContains<A, B>, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAIGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAIGGMR, MEMORY[0x277CC8FA0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>> and conformance PredicateExpressions.Equal<A, B>, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGAC5ValueVy_ANGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGAC5ValueVy_ANGGMR, MEMORY[0x277CC9070]);
  v38 = v63;
  v39 = v32;
  v40 = v52;
  v41 = v60;
  static PredicateExpressions.build_Conjunction<A, B>(lhs:rhs:)();
  (*(v61 + 8))(v39, v41);
  return (*(v53 + 8))(v38, v40);
}

uint64_t key path setter for DBSnapshot.expiry : DBSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 416))(v6);
}

double DBSnapshot.id.getter(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type UUID and conformance UUID(a2, a3, a4);
  PersistentModel.getValue<A>(forKey:)();

  return result;
}

uint64_t DBSnapshot.id.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, __n128))
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v6 = (a4)(0);
  return (*(*(v6 - 8) + 8))(a1, v6);
}

double closure #1 in DBSnapshot.id.setter(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type UUID and conformance UUID(a4, a5, a6);
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

void (*DBSnapshot.expiry.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for Date();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v5[7] = v9;
  v5[8] = v10;
  *v5 = v1;
  swift_getKeyPath();
  v5[9] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  PersistentModel.getValue<A>(forKey:)();

  return DBSnapshot.expiry.modify;
}

uint64_t key path setter for DBSnapshot.creationDate : DBSnapshot(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a1);
  return (*(**a2 + 464))(v6);
}

void (*DBSnapshot.creationDate.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = type metadata accessor for Date();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v5[7] = v9;
  v5[8] = v10;
  *v5 = v1;
  swift_getKeyPath();
  v5[9] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  PersistentModel.getValue<A>(forKey:)();

  return DBSnapshot.creationDate.modify;
}

void DBSnapshot.id.modify(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(*a1 + 72);
  v15[1] = *(*a1 + 64);
  v15[2] = v6;
  v7 = v5[6];
  v8 = v5[7];
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[3];
  if (a2)
  {
    (*(v10 + 16))(v5[6], v5[7], v5[4], a4);
    v5[1] = v11;
    KeyPath = swift_getKeyPath();
    v15[0] = v15;
    MEMORY[0x28223BE20](KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v13 = *(v10 + 8);
    v13(v7, v9);
    v13(v8, v9);
  }

  else
  {
    v5[2] = v11;
    v14 = swift_getKeyPath();
    v15[0] = v15;
    MEMORY[0x28223BE20](v14);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    (*(v10 + 8))(v8, v9);
  }

  free(v8);
  free(v7);
  free(v5);
}

uint64_t key path getter for DBSnapshot._suggestions : DBSnapshot@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 504))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DBSnapshot._suggestions : DBSnapshot(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 512);

  return v2(v3);
}

uint64_t DBSnapshot._suggestions.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  type metadata accessor for DBSuggestion(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  PersistentModel.getValue<A, B>(forKey:)();

  return v0;
}

double DBSnapshot._suggestions.setter(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double closure #1 in DBSnapshot._suggestions.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for DBSuggestion(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  PersistentModel.setValue<A, B>(forKey:to:)();

  return result;
}

void (*DBSnapshot._suggestions.modify(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  type metadata accessor for DBSuggestion(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  PersistentModel.getValue<A, B>(forKey:)();

  *v4 = *v6;
  return DBSnapshot._suggestions.modify;
}

void DBSnapshot._suggestions.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*a1 + 8) = *(*a1 + 16);
  swift_getKeyPath();
  if (a2)
  {

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  free(v3);
}

unint64_t DBSnapshot._suggestionCache.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = closure #1 in DBSnapshot._suggestionCache.getter(v0);
    v3 = *(v0 + 24);
    *(v0 + 24) = v2;

    outlined consume of [UUID : DBSuggestion]??(v3);
  }

  outlined copy of [UUID : DBSuggestion]??(v1);
  return v2;
}

unint64_t closure #1 in DBSnapshot._suggestionCache.getter(uint64_t a1)
{
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI12DBSuggestionCtMd, &_s10Foundation4UUIDV_9MomentsUI12DBSuggestionCtMR);
  v2 = *(v18 - 8);
  v3 = MEMORY[0x28223BE20](v18);
  v5 = &v17 - v4;
  result = (*(*a1 + 504))(v3);
  if (result)
  {
    v7 = result;
    if (result >> 62)
    {
      v8 = __CocoaSet.count.getter();
      if (v8)
      {
LABEL_4:
        v19 = MEMORY[0x277D84F90];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
        if (v8 < 0)
        {
          __break(1u);
          result = swift_unexpectedError();
          __break(1u);
          return result;
        }

        v9 = 0;
        v10 = v19;
        do
        {
          if ((v7 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x21CE93180](v9, v7);
          }

          else
          {
            v11 = *(v7 + 8 * v9 + 32);
          }

          v12 = *(v18 + 48);
          (*(*v11 + 296))();
          *&v5[v12] = v11;
          v19 = v10;
          v14 = *(v10 + 16);
          v13 = *(v10 + 24);
          if (v14 >= v13 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
            v10 = v19;
          }

          ++v9;
          *(v10 + 16) = v14 + 1;
          outlined init with take of (UUID, DBSuggestion)(v5, v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14);
        }

        while (v8 != v9);

        if (*(v10 + 16))
        {
          goto LABEL_13;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v8 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }
    }

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_13:
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI12DBSuggestionCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV9MomentsUI12DBSuggestionCGMR);
      v15 = static _DictionaryStorage.allocate(capacity:)();
LABEL_17:
      v19 = v15;

      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v16, 1, &v19);

      return v19;
    }

LABEL_16:
    v15 = MEMORY[0x277D84F98];
    goto LABEL_17;
  }

  return result;
}

uint64_t key path getter for DBSnapshot._suggestionTabs : DBSnapshot@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 576))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DBSnapshot._suggestionTabs : DBSnapshot(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 584);

  return v2(v3);
}

uint64_t DBSnapshot._suggestionTabs.getter()
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type [DBSnapshot.Tab : [UUID]] and conformance <> [A : B]();
  PersistentModel.getValue<A>(forKey:)();

  return v0;
}

double DBSnapshot._suggestionTabs.setter(uint64_t a1)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double closure #1 in DBSnapshot._suggestionTabs.setter(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type [DBSnapshot.Tab : [UUID]] and conformance <> [A : B]();
  PersistentModel.setValue<A>(forKey:to:)();

  return result;
}

void (*DBSnapshot._suggestionTabs.modify(void *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v3[2] = v1;
  v3[3] = v5;
  v3[1] = v1;
  v6 = v3 + 1;
  swift_getKeyPath();
  v4[4] = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  lazy protocol witness table accessor for type [DBSnapshot.Tab : [UUID]] and conformance <> [A : B]();
  PersistentModel.getValue<A>(forKey:)();

  *v4 = *v6;
  return DBSnapshot._suggestionTabs.modify;
}

void DBSnapshot._suggestionTabs.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*a1 + 8) = *(*a1 + 16);
  swift_getKeyPath();
  if (a2)
  {

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  free(v3);
}

uint64_t DBSnapshot.recommended.getter()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v28 - v7;
  result = (*(*v0 + 504))(v6);
  if (result)
  {

    v11 = (*(*v0 + 576))(v10);
    if (*(v11 + 16) && (v12 = specialized __RawDictionaryStorage.find<A>(_:)(1), (v13 & 1) != 0))
    {
      v31 = *(*(v11 + 56) + 8 * v12);

      if (one-time initialization token for Log != -1)
      {
        swift_once();
      }

      v14 = __swift_project_value_buffer(v1, static DBSnapshot.Log);
      swift_beginAccess();
      v29 = *(v2 + 16);
      v30 = v14;
      v29(v8, v14, v1);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v28 = v2;
        v18 = v17;
        v19 = swift_slowAlloc();
        v32 = v19;
        *v18 = 136446210;
        *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E656D6D6F636572, 0xEB00000000646564, &v32);
        _os_log_impl(&dword_21607C000, v15, v16, "[SpinnerDebug]%{public}s Entering mapIDs", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x21CE94770](v19, -1, -1);
        v20 = v18;
        v2 = v28;
        MEMORY[0x21CE94770](v20, -1, -1);
      }

      v21 = *(v2 + 8);
      v21(v8, v1);
      DBSnapshot.mapIDs(_:)(v31);
      v23 = v22;

      v29(v5, v30, v1);
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v32 = v27;
        *v26 = 136446210;
        *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E656D6D6F636572, 0xEB00000000646564, &v32);
        _os_log_impl(&dword_21607C000, v24, v25, "[SpinnerDebug]%{public}s Exiting mapIDs", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x21CE94770](v27, -1, -1);
        MEMORY[0x21CE94770](v26, -1, -1);
      }

      v21(v5, v1);
      return v23;
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t DBSnapshot.recentTab.getter()
{
  v1 = v0;
  result = (*(*v0 + 504))();
  if (result)
  {

    v4 = (*(*v0 + 576))(v3);
    if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(2), (v6 & 1) != 0))
    {
      v7 = *(*(v4 + 56) + 8 * v5);

      if (*(v1 + 40))
      {
        v8 = *(v1 + 40);

        return v8;
      }

      else
      {
        DBSnapshot.mapIDs(_:)(v7);
        v10 = v9;

        *(v1 + 40) = v10;

        return v10;
      }
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t DBSnapshot.isValid.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v13 - v7;
  result = (*(*v0 + 304))(v6);
  if (result)
  {
    (*(*v0 + 408))();
    Date.init()();
    v10 = static Date.> infix(_:_:)();
    v11 = *(v2 + 8);
    v11(v5, v1);
    v12 = (v11)(v8, v1);
    if (v10)
    {
      result = (*(*v0 + 504))(v12);
      if (result)
      {

        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t DBSnapshot.__allocating_init(id:generation:sequence:creationDate:expiry:recommended:recent:blobFolderURL:isDraft:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, char a10)
{
  v16 = swift_allocObject();
  DBSnapshot.init(id:generation:sequence:creationDate:expiry:recommended:recent:blobFolderURL:isDraft:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  return v16;
}

void *DBSnapshot.init(id:generation:sequence:creationDate:expiry:recommended:recent:blobFolderURL:isDraft:)(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int64_t a7, unint64_t a8, uint64_t a9, char a10)
{
  v11 = v10;
  v145 = a8;
  v133 = a7;
  v140 = a6;
  v141 = a5;
  v146._countAndFlagsBits = a4;
  v136 = a3;
  v129 = a2;
  v142 = a1;
  v139 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v131 = v123 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v126 = v123 - v15;
  v143 = type metadata accessor for Date();
  v146._object = *(v143 - 8);
  MEMORY[0x28223BE20](v143);
  v17 = v123 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v144 = v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v134 = v123 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v127 = v123 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = v123 - v26;
  v28 = type metadata accessor for DBSnapshot(0);
  *(v11 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI10DBSnapshotC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI10DBSnapshotC_AGQo_MR);
  v29 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  v149 = v28;
  v150 = v28;
  v151 = v29;
  v152 = v29;
  *(v11 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v11 + 48));
  static PersistentModel.createBackingData<A>()();
  UUID.init()();
  __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v147 = v18;
  v148 = v19;
  v30 = *(v19 + 8);
  v125 = v19 + 8;
  v124 = v30;
  v30(v27, v18);
  __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
  swift_getKeyPath();
  v149 = 0;
  v150 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 16) = 0;
  __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
  swift_getKeyPath();
  v149 = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 17) = 1;
  static Date.distantPast.getter();
  __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
  swift_getKeyPath();
  v138 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  v31 = v17;
  v32 = v143;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v33 = v146._object + 8;
  v34 = *(v146._object + 1);
  v34(v31, v32);
  static Date.now.getter();
  __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v130 = v31;
  v138 = v33;
  v137 = v34;
  v34(v31, v32);
  __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
  swift_getKeyPath();
  v35 = MEMORY[0x277D84F90];
  v149 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd, &_sSay9MomentsUI12DBSuggestionCGSgMR);
  v36 = type metadata accessor for DBSuggestion(0);
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  v132 = v36;
  dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

  *(v11 + 18) = 0;
  *(v11 + 24) = 1;
  v37 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI10DBSnapshotC3TabO_Say10Foundation4UUIDVGTt0g5Tf4g_n(v35);
  __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
  swift_getKeyPath();
  v149 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy9MomentsUI10DBSnapshotC3TabOSay10Foundation4UUIDVGGMd, &_sSDy9MomentsUI10DBSnapshotC3TabOSay10Foundation4UUIDVGGMR);
  lazy protocol witness table accessor for type [DBSnapshot.Tab : [UUID]] and conformance <> [A : B]();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  v38 = v11;
  v39 = v11 + OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  ObservationRegistrar.init()();
  if (!v146._countAndFlagsBits && (a10 & 1) == 0)
  {

    type metadata accessor for SwiftDataError();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type SwiftDataError and conformance SwiftDataError, MEMORY[0x277CDD480], MEMORY[0x277CDD488]);
    swift_allocError();
    static SwiftDataError.modelValidationFailure.getter();
    swift_willThrow();

    outlined destroy of UTType?(v139, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v40 = v143;
    v41 = v137;
    v137(v140, v143);
    v41(v141, v40);
    outlined destroy of UTType?(v142, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return v38;
  }

  v123[1] = v39;
  v42 = v126;
  outlined init with copy of DateInterval?(v142, v126, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v43 = v147;
  v44 = v148;
  v45 = *(v148 + 48);
  if (v45(v42, 1, v147) == 1)
  {
    v46 = v127;
    UUID.init()();
    v47 = v45(v42, 1, v43);
    v48 = v128;
    if (v47 != 1)
    {
      outlined destroy of UTType?(v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    v46 = v127;
    (*(v44 + 32))(v127, v42, v43);
    v48 = v128;
  }

  v49 = v38;
  v149 = v38;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v123[-2] = v38;
  v123[-1] = v46;
  v51 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v124(v46, v43);
  v149 = v49;
  v52 = swift_getKeyPath();
  MEMORY[0x28223BE20](v52);
  v53 = v129;
  v123[-4] = v49;
  v123[-3] = v53;
  v123[-2] = v136;
  v128 = v51;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  v149 = v49;
  v54 = swift_getKeyPath();
  MEMORY[0x28223BE20](v54);
  countAndFlagsBits = v146._countAndFlagsBits;
  v123[-2] = v49;
  v123[-1] = countAndFlagsBits;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v146._countAndFlagsBits = v48;

  v146._object = *(v146._object + 2);
  v56 = v130;
  v57 = v143;
  (v146._object)(v130, v141, v143);
  v149 = v49;
  v58 = swift_getKeyPath();
  MEMORY[0x28223BE20](v58);
  v123[-2] = v49;
  v123[-1] = v56;
  v59 = v146._countAndFlagsBits;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v146._countAndFlagsBits = v59;

  v60 = v137;
  v137(v56, v57);
  (v146._object)(v56, v140, v57);
  v149 = v49;
  v61 = swift_getKeyPath();
  v135 = v49;
  MEMORY[0x28223BE20](v61);
  v123[-2] = v135;
  v123[-1] = v56;
  v62 = v146._countAndFlagsBits;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v146._object = v62;
  v63 = v135;

  v60(v56, v57);
  v64 = v133;
  v149 = v133;

  specialized Array.append<A>(contentsOf:)(v65);
  v66 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9MomentsUI12DBSuggestionC_SayAFGTt0g5Tf4g_n(v149);

  v68 = specialized _copyCollectionToContiguousArray<A>(_:)(v66, v67);
  v149 = v63;
  v69 = swift_getKeyPath();
  MEMORY[0x28223BE20](v69);
  v123[-2] = v63;
  v123[-1] = v68;
  object = v146._object;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  v128 = object;

  v71 = v131;
  outlined init with copy of DateInterval?(v139, v131, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v72 = type metadata accessor for URL();
  v73 = *(v72 - 8);
  if ((*(v73 + 48))(v71, 1, v72) == 1)
  {

    outlined destroy of UTType?(v71, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v74 = v134;
    v38 = v63;
LABEL_43:
    if (v64 >> 62)
    {
      goto LABEL_58;
    }

    v95 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v95)
    {
      goto LABEL_45;
    }

    goto LABEL_61;
  }

  v146 = URL.path(percentEncoded:)(1);
  (*(v73 + 8))(v71, v72);
  v75 = (v66 & 0xC000000000000001) == 0;
  v38 = v66;
  v74 = v134;
  v127 = v38;
  if (v75)
  {
    v80 = -1 << *(v38 + 32);
    v76 = v38 + 56;
    v77 = ~v80;
    v81 = -v80;
    if (v81 < 64)
    {
      v82 = ~(-1 << v81);
    }

    else
    {
      v82 = -1;
    }

    v79 = v82 & *(v38 + 56);

    v78 = 0;
  }

  else
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
    Set.Iterator.init(_cocoa:)();
    v38 = v153;
    v76 = v154;
    v77 = v155;
    v78 = v156;
    v79 = v157;
  }

  v126 = v77;
  v64 = (v77 + 64) >> 6;
  v131 = v76;
  v130 = v38;
  v129 = v64;
  while (1)
  {
    if (v38 < 0)
    {
      v89 = __CocoaSet.Iterator.next()();
      if (!v89)
      {
        goto LABEL_42;
      }

      v158 = v89;
      v88 = swift_dynamicCast();
      v87 = v149;
      v85 = v78;
      v86 = v79;
      if (!v149)
      {
        goto LABEL_42;
      }
    }

    else
    {
      v83 = v78;
      v84 = v79;
      v85 = v78;
      if (!v79)
      {
        while (1)
        {
          v85 = v83 + 1;
          if (__OFADD__(v83, 1))
          {
            goto LABEL_57;
          }

          if (v85 >= v64)
          {
            break;
          }

          v84 = *(v76 + 8 * v85);
          ++v83;
          if (v84)
          {
            goto LABEL_24;
          }
        }

LABEL_42:
        outlined consume of [String : DBAssetData].Iterator._Variant(v38);

        v38 = v135;
        v64 = v133;
        goto LABEL_43;
      }

LABEL_24:
      v86 = (v84 - 1) & v84;
      v87 = *(*(v38 + 48) + ((v85 << 9) | (8 * __clz(__rbit64(v84)))));

      if (!v87)
      {
        goto LABEL_42;
      }
    }

    v136 = v86;
    v90 = (*(*v87 + 1160))(v88);
    if (v90)
    {
      break;
    }

LABEL_18:

    v78 = v85;
    v79 = v136;
  }

  v91 = v90;
  v74 = v90 & 0xFFFFFFFFFFFFFF8;
  if (!(v90 >> 62))
  {
    v92 = *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v92)
    {
      goto LABEL_31;
    }

    goto LABEL_17;
  }

  v92 = __CocoaSet.count.getter();
  if (!v92)
  {
LABEL_17:

    v74 = v134;
    v76 = v131;
    v38 = v130;
    v64 = v129;
    goto LABEL_18;
  }

LABEL_31:
  v93 = 0;
  v64 = v91 & 0xC000000000000001;
  while (v64)
  {
    v94 = MEMORY[0x21CE93180](v93, v91);
    v38 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      goto LABEL_55;
    }

LABEL_35:
    (*(*v94 + 608))(v146._countAndFlagsBits, v146._object);

    ++v93;
    if (v38 == v92)
    {
      goto LABEL_17;
    }
  }

  if (v93 >= *(v74 + 16))
  {
    goto LABEL_56;
  }

  v94 = *(v91 + 8 * v93 + 32);

  v38 = v93 + 1;
  if (!__OFADD__(v93, 1))
  {
    goto LABEL_35;
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  if (!__CocoaSet.count.getter())
  {
LABEL_61:

    goto LABEL_62;
  }

  v95 = __CocoaSet.count.getter();
  if (!v95)
  {

    v98 = MEMORY[0x277D84F90];
    goto LABEL_54;
  }

LABEL_45:
  v149 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v95 & ~(v95 >> 63), 0);
  if (v95 < 0)
  {
    __break(1u);
    goto LABEL_81;
  }

  v146._object = v95;
  v97 = 0;
  v98 = v149;
  do
  {
    if ((v64 & 0xC000000000000001) != 0)
    {
      v99 = MEMORY[0x21CE93180](v97, v64);
    }

    else
    {
      v99 = *(v64 + 8 * v97 + 32);
    }

    (*(*v99 + 296))();

    v149 = v98;
    v100 = v74;
    v102 = *(v98 + 16);
    v101 = *(v98 + 24);
    if (v102 >= v101 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v101 > 1), v102 + 1, 1);
      v98 = v149;
    }

    v97 = v97 + 1;
    *(v98 + 16) = v102 + 1;
    (*(v148 + 32))(v98 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v102, v100, v147);
    v74 = v100;
  }

  while (v146._object != v97);

LABEL_54:
  v38 = v135;
  v103 = (*(*v135 + 592))(&v149);
  v105 = v104;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v105;
  *v105 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v98, 1, isUniquelyReferenced_nonNull_native);
  *v105 = v158;
  v103(&v149, 0);
LABEL_62:
  v107 = MEMORY[0x277D84F90];
  if (v145 >> 62)
  {
    if (!__CocoaSet.count.getter())
    {
      goto LABEL_77;
    }

    v108 = __CocoaSet.count.getter();
    if (!v108)
    {

      v110 = MEMORY[0x277D84F90];
LABEL_73:
      v38 = v135;
      v117 = (*(*v135 + 592))(&v149);
      v119 = v118;
      v120 = swift_isUniquelyReferenced_nonNull_native();
      v158 = *v119;
      *v119 = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v110, 2, v120);
      *v119 = v158;
      v117(&v149, 0);
      goto LABEL_78;
    }

LABEL_64:
    v149 = v107;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v108 & ~(v108 >> 63), 0);
    if ((v108 & 0x8000000000000000) == 0)
    {
      v109 = 0;
      v110 = v149;
      v112 = v144;
      v111 = v145;
      v113 = v145 & 0xC000000000000001;
      do
      {
        if (v113)
        {
          v114 = MEMORY[0x21CE93180](v109, v111);
        }

        else
        {
          v114 = *(v111 + 8 * v109 + 32);
        }

        (*(*v114 + 296))();

        v149 = v110;
        v116 = *(v110 + 16);
        v115 = *(v110 + 24);
        if (v116 >= v115 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v115 > 1), v116 + 1, 1);
          v110 = v149;
        }

        ++v109;
        *(v110 + 16) = v116 + 1;
        (*(v148 + 32))(v110 + ((*(v148 + 80) + 32) & ~*(v148 + 80)) + *(v148 + 72) * v116, v112, v147);
        v111 = v145;
      }

      while (v108 != v109);

      goto LABEL_73;
    }

LABEL_81:
    __break(1u);
    return result;
  }

  v108 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v108)
  {
    goto LABEL_64;
  }

LABEL_77:

LABEL_78:
  outlined destroy of UTType?(v139, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v121 = v143;
  v122 = v137;
  v137(v140, v143);
  v122(v141, v121);
  outlined destroy of UTType?(v142, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v38;
}

void DBSnapshot.mapIDs(_:)(uint64_t a1)
{
  if ((*(*v1 + 504))())
  {

    v3 = DBSnapshot._suggestionCache.getter();
    if (v3)
    {
      v4 = v3;
      v10 = MEMORY[0x277D84F90];
      v5 = *(a1 + 16);
      if (v5)
      {
        v6 = 0;
        do
        {
          v7 = v6;
          while (1)
          {
            if (v7 >= v5)
            {
              __break(1u);
LABEL_17:
              __break(1u);
              return;
            }

            v8 = *(type metadata accessor for UUID() - 8);
            v6 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              goto LABEL_17;
            }

            closure #1 in DBSnapshot.mapIDs(_:)(a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7, v4, &v9);
            if (v9)
            {
              break;
            }

            ++v7;
            if (v6 == v5)
            {
              goto LABEL_14;
            }
          }

          MEMORY[0x21CE92260]();
          if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        while (v6 != v5);
      }

LABEL_14:
    }
  }
}

void closure #1 in DBSnapshot.mapIDs(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v92 = a3;
  v5 = type metadata accessor for Logger();
  v90 = *(v5 - 8);
  v91 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v78[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v86 = &v78[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v78[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMd, &_s9SwiftData15FetchDescriptorVy9MomentsUI12DBSuggestionCGMR);
  v88 = *(v13 - 1);
  v89 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v78[-v14];
  v93 = type metadata accessor for UUID();
  v16 = *(v93 - 8);
  v17 = MEMORY[0x28223BE20](v93);
  v19 = &v78[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v17);
  v85 = &v78[-v21];
  MEMORY[0x28223BE20](v20);
  v23 = &v78[-v22];
  if (*(a2 + 16))
  {
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v25)
    {
      v26 = *(*(a2 + 56) + 8 * v24);

LABEL_18:
      v57 = *(*v26 + 1344);

      v57(v58);

      *v92 = v26;
      return;
    }
  }

  v87 = v15;
  type metadata accessor for DBSnapshot(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  v27 = PersistentModel.modelContext.getter();
  if (v27)
  {
    v28 = v27;
    v29 = v93;
    v83 = *(v16 + 16);
    v30 = (v83)(v23, a1, v93);
    v82 = a1;
    v84 = v78;
    MEMORY[0x28223BE20](v30);
    *&v78[-16] = v23;
    v96 = type metadata accessor for DBSuggestion(0);
    Predicate.init(_:)();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMd, &_s10Foundation9PredicateVy9MomentsUI12DBSuggestionC_QPGMR);
    (*(*(v31 - 8) + 56))(v12, 0, 1, v31);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSuggestion and conformance DBSuggestion, type metadata accessor for DBSuggestion, &protocol conformance descriptor for DBSuggestion);
    v32 = v87;
    FetchDescriptor.init(predicate:sortBy:)();
    v33 = v94;
    v34 = dispatch thunk of ModelContext.fetch<A>(_:)();
    if (v33)
    {
      (*(v88 + 8))(v32, v89);

      (*(v16 + 8))(v23, v29);
      return;
    }

    v80 = v23;
    v81 = v16;
    v50 = v82;
    v51 = v83;
    if (v34 >> 62)
    {
      v77 = v34;
      v52 = __CocoaSet.count.getter();
      v34 = v77;
    }

    else
    {
      v52 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = v86;
    v54 = v28;
    if (v52)
    {
      v55 = v87;
      if ((v34 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x21CE93180](0);
        v53 = v80;
        v56 = v81;
        goto LABEL_17;
      }

      v53 = v80;
      v56 = v81;
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v26 = *(v34 + 32);

LABEL_17:

        (*(v88 + 8))(v55, v89);
        (*(v56 + 8))(v53, v93);
        goto LABEL_18;
      }

      __break(1u);
    }

    else
    {
      v94 = 0;

      if (one-time initialization token for Log == -1)
      {
LABEL_22:
        v59 = v91;
        v60 = __swift_project_value_buffer(v91, static DBSnapshot.Log);
        swift_beginAccess();
        v61 = v90;
        (*(v90 + 16))(v53, v60, v59);
        v62 = v85;
        v63 = v50;
        v64 = v93;
        v51(v85, v63, v93);
        v65 = Logger.logObject.getter();
        v66 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v82 = v67;
          v86 = swift_slowAlloc();
          v95 = v86;
          *v67 = 136315138;
          lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v68 = dispatch thunk of CustomStringConvertible.description.getter();
          v70 = v69;
          v79 = v66;
          v71 = *(v81 + 8);
          v83 = v54;
          v71(v62, v64);
          v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, &v95);

          v73 = v82;
          *(v82 + 4) = v72;
          v74 = v71;
          v75 = v73;
          _os_log_impl(&dword_21607C000, v65, v79, "[mapIDs] Could not find Suggestion with ID: %s", v73, 0xCu);
          v76 = v86;
          __swift_destroy_boxed_opaque_existential_1(v86);
          MEMORY[0x21CE94770](v76, -1, -1);
          MEMORY[0x21CE94770](v75, -1, -1);
        }

        else
        {

          v74 = *(v81 + 8);
          v74(v62, v64);
        }

        (*(v61 + 8))(v53, v91);
        (*(v88 + 8))(v87, v89);
        v74(v80, v64);
        *v92 = 0;
        return;
      }
    }

    swift_once();
    goto LABEL_22;
  }

  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v35 = v91;
  v36 = __swift_project_value_buffer(v91, static DBSnapshot.Log);
  swift_beginAccess();
  v37 = v90;
  (*(v90 + 16))(v8, v36, v35);
  v38 = *(v16 + 16);
  v39 = v16;
  v40 = v93;
  v38(v19, a1, v93);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = v40;
    v44 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v96 = v89;
    *v44 = 136315138;
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v45 = dispatch thunk of CustomStringConvertible.description.getter();
    v47 = v46;
    (*(v39 + 8))(v19, v43);
    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, &v96);

    *(v44 + 4) = v48;
    _os_log_impl(&dword_21607C000, v41, v42, "[mapIDs] Could not find Suggestion with ID: %s", v44, 0xCu);
    v49 = v89;
    __swift_destroy_boxed_opaque_existential_1(v89);
    MEMORY[0x21CE94770](v49, -1, -1);
    MEMORY[0x21CE94770](v44, -1, -1);

    (*(v90 + 8))(v8, v91);
  }

  else
  {

    (*(v39 + 8))(v19, v40);
    (*(v37 + 8))(v8, v35);
  }

  *v92 = 0;
}

uint64_t closure #3 in closure #1 in DBSnapshot.mapIDs(_:)@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMR);
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v18 - v14;
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F8]);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v9 + 8))(v11, v8);
  type metadata accessor for UUID();
  static PredicateExpressions.build_Arg<A>(_:)();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMR);
  a3[4] = lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>();
  __swift_allocate_boxed_opaque_existential_1(a3);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID> and conformance PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMR, MEMORY[0x277CC90C0]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID> and conformance PredicateExpressions.Value<A>, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMR, MEMORY[0x277CC9080]);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v16 = v19;
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v20 + 8))(v7, v16);
  return (*(v13 + 8))(v15, v12);
}

void (*DBSnapshot.persistentBackingData.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 128) = v1;
  swift_beginAccess();
  outlined init with copy of DBObject(v1 + 48, v4);
  return DBAssetData.persistentBackingData.modify;
}

uint64_t static DBSnapshot.schemaMetadata.getter()
{
  v49 = type metadata accessor for Schema.PropertyMetadata();
  v0 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v45 = v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Schema.Relationship.DeleteRule();
  v42 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v41 = v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC16PropertyMetadataVGMR);
  v3 = *(v0 + 72);
  v48 = v0;
  v4 = (*(v48 + 80) + 32) & ~*(v48 + 80);
  v44 = 8 * v3;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_216598D80;
  v46 = v4;
  v47 = v5;
  v6 = v5 + v4;
  swift_getKeyPath();
  *(&v56 + 1) = type metadata accessor for UUID();
  __swift_allocate_boxed_opaque_existential_1(&v55);
  UUID.init()();
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v50 = v6;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v55 = 0u;
  v56 = 0u;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC9AttributeC6OptionVGMd, &_ss23_ContiguousArrayStorageCy9SwiftData6SchemaC9AttributeC6OptionVGMR);
  v8 = *(*(type metadata accessor for Schema.Attribute.Option() - 8) + 72);
  v40 = v7;
  v9 = swift_allocObject();
  v51 = xmmword_21658CA50;
  *(v9 + 16) = xmmword_21658CA50;
  static Schema.Attribute.Option.preserveValueOnDeletion.getter();
  v10 = type metadata accessor for Schema.Attribute();
  swift_allocObject();
  v11 = Schema.Attribute.init(_:originalName:hashModifier:)();
  *(&v53 + 1) = v10;
  v54 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Schema.Attribute and conformance Schema.Attribute, MEMORY[0x277CDD5E8], MEMORY[0x277CDD5E0]);
  v12 = v54;
  v39 = v54;
  *&v52 = v11;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  *(&v56 + 1) = MEMORY[0x277D83B88];
  *&v55 = 0;
  v38[1] = v8;
  *(swift_allocObject() + 16) = v51;
  static Schema.Attribute.Option.preserveValueOnDeletion.getter();
  swift_allocObject();
  v13 = Schema.Attribute.init(_:originalName:hashModifier:)();
  *(&v53 + 1) = v10;
  v54 = v12;
  *&v52 = v13;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v55 = 0u;
  v56 = 0u;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  v14 = v3;
  v38[0] = swift_getKeyPath();
  v15 = type metadata accessor for Date();
  *(&v56 + 1) = v15;
  __swift_allocate_boxed_opaque_existential_1(&v55);
  static Date.distantPast.getter();
  *(swift_allocObject() + 16) = v51;
  static Schema.Attribute.Option.preserveValueOnDeletion.getter();
  swift_allocObject();
  v16 = Schema.Attribute.init(_:originalName:hashModifier:)();
  v17 = v39;
  *(&v53 + 1) = v10;
  v54 = v39;
  *&v52 = v16;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  v38[0] = swift_getKeyPath();
  *(&v56 + 1) = v15;
  __swift_allocate_boxed_opaque_existential_1(&v55);
  static Date.now.getter();
  *(swift_allocObject() + 16) = v51;
  v18 = v14;
  static Schema.Attribute.Option.preserveValueOnDeletion.getter();
  swift_allocObject();
  v19 = Schema.Attribute.init(_:originalName:hashModifier:)();
  *(&v53 + 1) = v10;
  v54 = v17;
  *&v52 = v19;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd, &_sSayypGMR);
  v21 = MEMORY[0x277D84F90];
  *(&v56 + 1) = v20;
  *&v55 = MEMORY[0x277D84F90];
  (*(v42 + 104))(v41, *MEMORY[0x277CDD5A8], v43);
  swift_getKeyPath();
  v22 = type metadata accessor for Schema.Relationship();
  swift_allocObject();
  v23 = Schema.Relationship.init(_:deleteRule:minimumModelCount:maximumModelCount:originalName:inverse:hashModifier:)();
  *(&v53 + 1) = v22;
  v54 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Schema.Relationship and conformance Schema.Relationship, MEMORY[0x277CDD5B8], MEMORY[0x277CDD5B0]);
  *&v52 = v23;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v24 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(v21);
  *(&v56 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
  *&v55 = v24;
  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  swift_getKeyPath();
  v55 = 0u;
  v56 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySays14PartialKeyPathCy9MomentsUI10DBSnapshotCGGGMd, &_ss23_ContiguousArrayStorageCySays14PartialKeyPathCy9MomentsUI10DBSnapshotCGGGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2165965F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = swift_allocObject();
  v51 = xmmword_21658E210;
  *(v26 + 16) = xmmword_21658E210;
  *(v26 + 32) = swift_getKeyPath();
  *(v25 + 32) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = v51;
  *(v27 + 32) = swift_getKeyPath();
  *(v25 + 40) = v27;
  v28 = swift_allocObject();
  *(v28 + 16) = v51;
  *(v28 + 32) = swift_getKeyPath();
  *(v25 + 48) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = v51;
  *(v29 + 32) = swift_getKeyPath();
  *(v25 + 56) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData6SchemaC5IndexCy_9MomentsUI10DBSnapshotCGMd, &_s9SwiftData6SchemaC5IndexCy_9MomentsUI10DBSnapshotCGMR);
  swift_allocObject();
  v31 = Schema.Index.init(_:)();
  *(&v53 + 1) = v30;
  v32 = v45;
  v54 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Schema.Index<DBSnapshot> and conformance Schema.Index<A>, &_s9SwiftData6SchemaC5IndexCy_9MomentsUI10DBSnapshotCGMd, &_s9SwiftData6SchemaC5IndexCy_9MomentsUI10DBSnapshotCGMR, MEMORY[0x277CDD5D0]);
  *&v52 = v31;
  Schema.PropertyMetadata.init(name:keypath:defaultValue:metadata:)();
  v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, v21);
  v35 = *(v33 + 2);
  v34 = *(v33 + 3);
  if (v35 >= v34 >> 1)
  {
    v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v33);
  }

  *(v33 + 2) = v35 + 1;
  v36 = v33;
  (*(v48 + 32))(&v33[v46 + v35 * v18], v32, v49);
  *&v52 = v47;
  specialized Array.append<A>(contentsOf:)(v36);
  return v52;
}

uint64_t key path getter for DBSuggestion._snapshots : DBSuggestion@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1264))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DBSuggestion._snapshots : DBSuggestion(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 1272);

  return v2(v3);
}

uint64_t DBSnapshot.__allocating_init(backingData:)(void *a1)
{
  v2 = swift_allocObject();
  DBSnapshot.init(backingData:)(a1);
  return v2;
}

uint64_t DBSnapshot.init(backingData:)(void *a1)
{
  v2 = v1;
  v19 = a1;
  v3 = type metadata accessor for Date();
  v18 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DBSnapshot(0);
  *(v2 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI10DBSnapshotC_AGQo_Md, &_s9SwiftData15PersistentModelPAAE013createBackingB0QryAaBRd__lFZQOy9MomentsUI10DBSnapshotC_AGQo_MR);
  v11 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  v20 = v10;
  v21 = v10;
  v22 = v11;
  v23 = v11;
  *(v2 + 80) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v2 + 48));
  static PersistentModel.createBackingData<A>()();
  UUID.init()();
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  (*(v7 + 8))(v9, v6);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  v20 = 0;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  lazy protocol witness table accessor for type String? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 16) = 0;
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  v20 = 0;
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 17) = 1;
  static Date.distantPast.getter();
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v12 = *(v18 + 8);
  v12(v5, v3);
  static Date.now.getter();
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  v12(v5, v3);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  v13 = MEMORY[0x277D84F90];
  v20 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI12DBSuggestionCGSgMd, &_sSay9MomentsUI12DBSuggestionCGSgMR);
  type metadata accessor for DBSuggestion(0);
  lazy protocol witness table accessor for type [DBSuggestion]? and conformance <A> A?();
  dispatch thunk of BackingData.setValue<A, B>(forKey:to:)();

  *(v2 + 18) = 0;
  *(v2 + 24) = 1;
  v14 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9MomentsUI10DBSnapshotC3TabO_Say10Foundation4UUIDVGTt0g5Tf4g_n(v13);
  __swift_project_boxed_opaque_existential_1((v2 + 48), *(v2 + 72));
  swift_getKeyPath();
  v20 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy9MomentsUI10DBSnapshotC3TabOSay10Foundation4UUIDVGGMd, &_sSDy9MomentsUI10DBSnapshotC3TabOSay10Foundation4UUIDVGGMR);
  lazy protocol witness table accessor for type [DBSnapshot.Tab : [UUID]] and conformance <> [A : B]();
  dispatch thunk of BackingData.setValue<A>(forKey:to:)();

  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  ObservationRegistrar.init()();
  *(v2 + 16) = 0;
  *(v2 + 18) = 0;
  v15 = v19;
  outlined init with copy of DBObject(v19, &v20);
  (*(*v2 + 728))(&v20);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v2;
}

char *DBSnapshot.deinit(__n128 a1)
{
  outlined consume of [UUID : DBSuggestion]??(*(v1 + 24));

  __swift_destroy_boxed_opaque_existential_1((v1 + 48));
  v2 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);
  return v1;
}

uint64_t DBSnapshot.__deallocating_deinit(__n128 a1)
{
  outlined consume of [UUID : DBSuggestion]??(*(v1 + 24));

  __swift_destroy_boxed_opaque_existential_1((v1 + 48));
  v2 = OBJC_IVAR____TtC9MomentsUI10DBSnapshot___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

unint64_t DBSnapshot.debugDescription.getter()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v30 = 0xE000000000000000;
  _StringGuts.grow(_:)(91);
  v5 = MEMORY[0x21CE92100](0x69746172656E6547, 0xEC000000203A6E6FLL);
  v6 = (*(*v0 + 256))(v5);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 0x3E6C696E3CLL;
    v8 = 0xE500000000000000;
  }

  MEMORY[0x21CE92100](v6, v8);

  v9 = MEMORY[0x21CE92100](0x636E65757165530ALL, 0xEB00000000203A65);
  v27 = (*(*v0 + 304))(v9);
  v10 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v10);

  v11 = MEMORY[0x21CE92100](0x6F6974616572430ALL, 0xEF203A657461446ELL);
  (*(*v0 + 456))(v11);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v12 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v12);

  v13 = *(v2 + 8);
  v13(v4, v1);
  v14 = MEMORY[0x21CE92100](0x3A7972697078450ALL, 0xE900000000000020);
  (*(*v0 + 408))(v14);
  v15 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v15);

  v13(v4, v1);
  v16 = MEMORY[0x21CE92100](0xD000000000000014, 0x800000021657ECB0);
  (*(*v0 + 576))(v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
  lazy protocol witness table accessor for type DBSnapshot.Tab and conformance DBSnapshot.Tab();
  v17 = Dictionary.description.getter();
  v19 = v18;

  MEMORY[0x21CE92100](v17, v19);

  v20 = MEMORY[0x21CE92100](0x747365676775530ALL, 0xEE000A3A736E6F69);
  v21 = v29;
  result = (*(*v0 + 504))(v20);
  if (!result)
  {
    return v21;
  }

  v23 = result;
  if (!(result >> 62))
  {
    v24 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v24)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  result = __CocoaSet.count.getter();
  v24 = result;
  if (!result)
  {
LABEL_15:

    return v21;
  }

LABEL_7:
  if (v24 >= 1)
  {
    v25 = 0;
    do
    {
      if ((v23 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CE93180](v25, v23);
      }

      else
      {
      }

      ++v25;
      v26 = DBSuggestion.debugDescription.getter();
      v27 = 9;
      v28 = 0xE100000000000000;
      MEMORY[0x21CE92100](v26);

      MEMORY[0x21CE92100](10, 0xE100000000000000);
      MEMORY[0x21CE92100](v27, v28);
    }

    while (v24 != v25);

    return v29;
  }

  __break(1u);
  return result;
}

Swift::Int DBSnapshot.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for DBSnapshot(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

void (*protocol witness for PersistentModel.persistentBackingData.modify in conformance DBSnapshot(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 736))();
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudSyncAssetData;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBSnapshot()
{
  Hasher.init(_seed:)();
  type metadata accessor for DBSnapshot(0);
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type DBSnapshot and conformance DBSnapshot, type metadata accessor for DBSnapshot, &protocol conformance descriptor for DBSnapshot);
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBSnapshot(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  PersistentModel.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBSnapshot(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212CAA0](v4, v5, a3, WitnessTable);
}

uint64_t type metadata completion function for DBSnapshot(uint64_t a1)
{
  result = type metadata accessor for ObservationRegistrar();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t outlined init with take of (UUID, DBSuggestion)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_9MomentsUI12DBSuggestionCtMd, &_s10Foundation4UUIDV_9MomentsUI12DBSuggestionCtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGAC5ValueVy_AOGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?> and conformance <> PredicateExpressions.KeyPath<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID> and conformance <> PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Value<UUID> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>, PredicateExpressions.Value<UUID>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?> and conformance <> PredicateExpressions.KeyPath<A, B>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type PredicateExpressions.Variable<DBSuggestion> and conformance PredicateExpressions.Variable<A>, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMd, &_s10Foundation20PredicateExpressionsO8VariableVy_9MomentsUI12DBSuggestionCGMR, MEMORY[0x277CC90F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<UUID> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_AA4UUIDVGMR);
    v1 = MEMORY[0x277CC95F0];
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, v1, MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<UUID> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>>> and conformance <> PredicateExpressions.Conjunction<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>>> and conformance <> PredicateExpressions.Conjunction<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>>> and conformance <> PredicateExpressions.Conjunction<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAKGGAC5EqualVy_AOy_AUSbSgGAIy_AZGGGMd, &_s10Foundation20PredicateExpressionsO11ConjunctionVy_AC16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAKGGAC5EqualVy_AOy_AUSbSgGAIy_AZGGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>> and conformance <> PredicateExpressions.SequenceContains<A, B>();
    lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>> and conformance <> PredicateExpressions.Equal<A, B>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Conjunction<PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>>, PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>>> and conformance <> PredicateExpressions.Conjunction<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>> and conformance <> PredicateExpressions.SequenceContains<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>> and conformance <> PredicateExpressions.SequenceContains<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>> and conformance <> PredicateExpressions.SequenceContains<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAIGGMd, &_s10Foundation20PredicateExpressionsO16SequenceContainsVy_AC5ValueVy_ShyAA4UUIDVGGAC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAIGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Set<UUID>> and conformance <A> PredicateExpressions.Value<A>();
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?> and conformance <> PredicateExpressions.KeyPath<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID> and conformance <> PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGAA4UUIDVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.SequenceContains<PredicateExpressions.Value<Set<UUID>>, PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, UUID>> and conformance <> PredicateExpressions.SequenceContains<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>> and conformance <> PredicateExpressions.Equal<A, B>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>> and conformance <> PredicateExpressions.Equal<A, B>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>> and conformance <> PredicateExpressions.Equal<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGAC5ValueVy_ANGGMd, &_s10Foundation20PredicateExpressionsO5EqualVy_AC7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGAC5ValueVy_ANGGMR);
    lazy protocol witness table accessor for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?> and conformance <> PredicateExpressions.KeyPath<A, B>(&lazy protocol witness table cache variable for type PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?> and conformance <> PredicateExpressions.KeyPath<A, B>, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGMd, &_s10Foundation20PredicateExpressionsO7KeyPathVy_AC8VariableVy_9MomentsUI12DBSuggestionCGSbSgGMR);
    lazy protocol witness table accessor for type PredicateExpressions.Value<Bool?> and conformance <A> PredicateExpressions.Value<A>();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Equal<PredicateExpressions.KeyPath<PredicateExpressions.Variable<DBSuggestion>, Bool?>, PredicateExpressions.Value<Bool?>> and conformance <> PredicateExpressions.Equal<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PredicateExpressions.Value<Bool?> and conformance <A> PredicateExpressions.Value<A>()
{
  result = lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool?> and conformance <A> PredicateExpressions.Value<A>;
  if (!lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool?> and conformance <A> PredicateExpressions.Value<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation20PredicateExpressionsO5ValueVy_SbSgGMd, &_s10Foundation20PredicateExpressionsO5ValueVy_SbSgGMR);
    lazy protocol witness table accessor for type Bool? and conformance <A> A?();
    lazy protocol witness table accessor for type Bool? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateExpressions.Value<Bool?> and conformance <A> PredicateExpressions.Value<A>);
  }

  return result;
}

uint64_t closure #1 in ListPlayButton.mediaAssetID.didset(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 56) = a4;
  type metadata accessor for MainActor();
  *(v4 + 64) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in ListPlayButton.mediaAssetID.didset, v6, v5);
}

uint64_t closure #1 in ListPlayButton.mediaAssetID.didset()
{

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = static MusicPlaybackCoordinatorService.shared;
  v3 = type metadata accessor for ListPlayButton();
  *(v0 + 40) = v3;
  *(v0 + 48) = &protocol witness table for ListPlayButton;
  *(v0 + 16) = v1;
  v4 = *(*v2 + 216);
  v5 = v1;
  v4(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  *(v0 + 40) = v3;
  *(v0 + 48) = &protocol witness table for ListPlayButton;
  *(v0 + 16) = v5;
  v6 = *(*v2 + 352);
  v7 = v5;
  LOBYTE(v3) = v6(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v8 = [objc_opt_self() configurationWithPointSize:6 weight:10.0];
  if (v3)
  {
    v9 = MEMORY[0x21CE91FC0](0x69662E6573756170, 0xEA00000000006C6CLL);
  }

  else
  {
    v9 = MEMORY[0x21CE91FC0](0x6C69662E79616C70, 0xE90000000000006CLL);
  }

  v10 = [objc_opt_self() systemImageNamed:v9 withConfiguration:v8];

  if (!v10)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  [*(v0 + 56) setImage:v10 forState:0];

  v11 = *(v0 + 8);

  return v11();
}

uint64_t ListPlayButton.mediaAssetID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI14ListPlayButton_mediaAssetID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double ListPlayButton.mediaAssetID.setter(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = &v2[OBJC_IVAR____TtC9MomentsUI14ListPlayButton_mediaAssetID];
  swift_beginAccess();
  *v8 = a1;
  *(v8 + 1) = a2;

  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  type metadata accessor for MainActor();
  v10 = v2;
  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in ListPlayButton.mediaAssetID.didset, v12);

  return result;
}

uint64_t partial apply for closure #1 in ListPlayButton.mediaAssetID.didset(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in ListPlayButton.mediaAssetID.didset(a1, v4, v5, v6);
}

uint64_t (*ListPlayButton.mediaAssetID.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  *(v5 + 32) = v7;
  swift_beginAccess();
  return ListPlayButton.mediaAssetID.modify;
}

void ListPlayButton.mediaAssetID.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  v4 = v3[4];
  if ((a2 & 1) == 0)
  {
    v5 = v3[3];
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    type metadata accessor for MainActor();
    v7 = v5;
    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v7;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v4, &closure #1 in ListPlayButton.mediaAssetID.didsetpartial apply, v9);
  }

  free(v4);

  free(v3);
}

uint64_t closure #1 in ListPlayButton.mediaAssetID.didsetpartial apply(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in ListPlayButton.mediaAssetID.didset(a1, v4, v5, v6);
}

id ListPlayButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id ListPlayButton.init(frame:)(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v10 = &v5[OBJC_IVAR____TtC9MomentsUI14ListPlayButton_mediaAssetID];
  v11 = type metadata accessor for ListPlayButton();
  *v10 = 0;
  *(v10 + 1) = 0;
  v14.receiver = v5;
  v14.super_class = v11;
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, a2, a3, a4, a5);
  ListPlayButton.sharedInit()();

  return v12;
}

id ListPlayButton.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id ListPlayButton.init(coder:)(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC9MomentsUI14ListPlayButton_mediaAssetID];
  v4 = type metadata accessor for ListPlayButton();
  *v3 = 0;
  *(v3 + 1) = 0;
  v9.receiver = v1;
  v9.super_class = v4;
  v5 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    ListPlayButton.sharedInit()();
  }

  return v6;
}

uint64_t ListPlayButton.sharedInit()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v30 - v3;
  v5 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UIButton.Configuration.Size();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for UIButton.Configuration();
  v13 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x21CE92D80]([v1 setTranslatesAutoresizingMaskIntoConstraints_]);
  (*(v10 + 104))(v12, *MEMORY[0x277D75020], v9);
  UIButton.Configuration.buttonSize.setter();
  (*(v6 + 104))(v8, *MEMORY[0x277D74FD8], v5);
  UIButton.Configuration.cornerStyle.setter();
  v16 = objc_opt_self();
  v17 = [v16 tertiarySystemFillColor];
  UIButton.Configuration.baseBackgroundColor.setter();
  v18 = [v16 labelColor];
  UIButton.Configuration.baseForegroundColor.setter();
  v19 = [objc_opt_self() configurationWithPointSize:6 weight:10.0];
  v20 = MEMORY[0x21CE91FC0](0x6C69662E79616C70, 0xE90000000000006CLL);
  v21 = [objc_opt_self() systemImageNamed:v20 withConfiguration:v19];

  UIButton.Configuration.image.setter();
  v22 = [objc_opt_self() mainBundle];
  v32._object = 0x800000021657EDF0;
  v23._countAndFlagsBits = 0x64654D2079616C50;
  v23._object = 0xEA00000000006169;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v32._countAndFlagsBits = 0xD000000000000027;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v32);

  v26 = MEMORY[0x21CE91FC0](v25._countAndFlagsBits, v25._object);

  [v1 setAccessibilityLabel_];

  v27 = v31;
  (*(v13 + 16))(v4, v15, v31);
  (*(v13 + 56))(v4, 0, 1, v27);
  UIButton.configuration.setter();
  type metadata accessor for UIAction();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v28 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  [v1 addAction:v28 forControlEvents:64];

  return (*(v13 + 8))(v15, v27);
}

void closure #1 in ListPlayButton.sharedInit()(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0x78))();
  }
}

Swift::Void __swiftcall ListPlayButton.touchPlayback()()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static MusicPlaybackCoordinatorService.shared;
  v4[3] = type metadata accessor for ListPlayButton();
  v4[4] = &protocol witness table for ListPlayButton;
  v4[0] = v0;
  v2 = *(*v1 + 360);
  v3 = v0;
  v2(v4);
  __swift_destroy_boxed_opaque_existential_1(v4);
}

id ListPlayButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ListPlayButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void ListPlayButton.didReceiveShouldPlayNotification()(uint64_t a1, uint64_t a2)
{
  v5 = [objc_opt_self() configurationWithPointSize:6 weight:10.0];
  v6 = MEMORY[0x21CE91FC0](a1, a2);
  v8 = [objc_opt_self() systemImageNamed:v6 withConfiguration:v5];

  v7 = v8;
  if (!v8)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
  }

  v9 = v7;
  [v2 setImage_forState_];
}

void *MutableMediaThirdPartyViewModel.appIcon.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

uint64_t MutableMediaThirdPartyViewModel.isRenderedBasedOnProperties.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    v5 = Image.uiImage.getter();

    if (v5)
    {

      v6 = v1 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor;
      swift_beginAccess();
      LOBYTE(v3) = *(v6 + 32) ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

id MutableMediaThirdPartyViewModel.__allocating_init(intendedViewport:supportedStyles:appBundleId:trackTitle:artist:album:mediaCategory:backgroundColorString:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, __int128 a9, __int128 a10, unint64_t a11, uint64_t a12)
{
  v20 = objc_allocWithZone(v12);
  v21 = specialized MutableMediaThirdPartyViewModel.init(intendedViewport:supportedStyles:appBundleId:trackTitle:artist:album:mediaCategory:backgroundColorString:dateInterval:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, *(&a9 + 1), a10, __PAIR128__(a11, *(&a10 + 1)), a12);

  return v21;
}

id static MutableMediaThirdPartyViewModel.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static MutableMediaThirdPartyViewModel.empty;

  return v1;
}

uint64_t MutableMediaThirdPartyViewModel.colorVariant.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t MutableMediaThirdPartyViewModel.colorVariant.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t MutableMediaThirdPartyViewModel.mediaCategory.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t MutableMediaThirdPartyViewModel.mediaCategory.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

__n128 MutableMediaThirdPartyViewModel.backgroundColor.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

__n128 MutableMediaThirdPartyViewModel.backgroundColor.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor;
  swift_beginAccess();
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

unint64_t static MutableMediaThirdPartyViewModel.Constants.BackgroundColor.backgroundColorTrialKey(appIndex:)()
{
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x21CE92100](v0);

  return 0xD000000000000035;
}

void (*MutableMediaThirdPartyViewModel.trackTitle.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 24) = *v6;
  *(v4 + 32) = v7;

  return MutableMediaThirdPartyViewModel.trackTitle.modify;
}

void MutableMediaThirdPartyViewModel.trackTitle.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = (*(*a1 + 40) + *(*a1 + 48));
  *v4 = *(*a1 + 24);
  v4[1] = v3;
  if (a2)
  {
  }

  free(v2);
}

void MutableMediaThirdPartyViewModel.appIcon.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void (*MutableMediaThirdPartyViewModel.appIcon.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return MutableMediaThirdPartyViewModel.appIcon.modify;
}

void MutableMediaThirdPartyViewModel.appIcon.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  v6 = *(*a1 + 32);
  v5 = *(*a1 + 40);
  v7 = *(v6 + v5);
  *(v6 + v5) = *v4;
  if (a2)
  {
    v8 = v3;

    v7 = *v4;
  }

  free(v2);
}

id MutableMediaThirdPartyViewModel.init(intendedViewport:supportedStyles:appBundleId:trackTitle:artist:album:mediaCategory:backgroundColorString:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 *a11, unint64_t a12, unint64_t a13, uint64_t a14)
{
  v15 = specialized MutableMediaThirdPartyViewModel.init(intendedViewport:supportedStyles:appBundleId:trackTitle:artist:album:mediaCategory:backgroundColorString:dateInterval:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, __PAIR128__(a13, a12), a14);

  return v15;
}

uint64_t static MutableMediaThirdPartyViewModel.subtitleFrom(artist:album:title:category:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7)
{
  v7 = a1;
  if (*a7 <= 1u)
  {
    if (!a2)
    {
      goto LABEL_9;
    }

    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v8)
    {
LABEL_9:
      if (a4 && a6 && (a3 != a5 || a4 != a6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        v7 = a3;
      }
    }
  }

  return v7;
}

void __swiftcall MutableMediaThirdPartyViewModel.StructuredColor.init(string:)(MomentsUI::MutableMediaThirdPartyViewModel::StructuredColor_optional *__return_ptr retstr, Swift::String string)
{
  *&v27.value.red = string._countAndFlagsBits;
  *&v27.value.green = string._object;
  v28 = 44;
  v29 = 0xE100000000000000;
  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.components<A>(separatedBy:)();

  v4 = 0;
  v5 = *(v3 + 16);
  red = MEMORY[0x277D84F90];
LABEL_2:
  v7 = (v3 + 40 + 16 * v4);
  while (v5 != v4)
  {
    if (v4 >= *(v3 + 16))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      return;
    }

    ++v4;
    v9 = *(v7 - 1);
    v8 = *v7;
    v7 += 2;
    v10 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v10 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {

      v27.value.red = red;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(*&red + 16) + 1, 1);
        red = v27.value.red;
      }

      v12 = *(*&red + 16);
      v11 = *(*&red + 24);
      if (v12 >= v11 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
        red = v27.value.red;
      }

      *(*&red + 16) = v12 + 1;
      v13 = *&red + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v8;
      goto LABEL_2;
    }
  }

  if (*(*&red + 16) != 4)
  {

LABEL_20:
    retstr->value.hash._object = 0;
    *&retstr->value.color.green = 0u;
    *&retstr->value.color.alpha = 0u;
    retstr->value.bundleIdentifier = 0u;
    *&retstr->value.variant = 0u;
    return;
  }

  v15 = *(*&red + 32);
  v14 = *(*&red + 40);
  v17 = *(*&red + 64);
  v16 = *(*&red + 72);
  v18 = *(*&red + 48);
  v19 = *(*&red + 56);

  v20._countAndFlagsBits = v18;
  v20._object = v19;
  v21 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of MediaThirdPartyBackgroundColorVariant.init(rawValue:), v20);

  if (v21 >= 4)
  {

    goto LABEL_19;
  }

  v22._countAndFlagsBits = v17;
  v22._object = v16;
  Color.init(hex:)(&v27, v22);
  if (v27.is_nil)
  {

LABEL_19:

    goto LABEL_20;
  }

  if (*(*&red + 16) < 4uLL)
  {
    goto LABEL_24;
  }

  v25 = *&v27.value.blue;
  v26 = *&v27.value.red;
  v24 = *(*&red + 80);
  v23 = *(*&red + 88);

  retstr->value.bundleIdentifier._countAndFlagsBits = v15;
  retstr->value.bundleIdentifier._object = v14;
  retstr->value.variant = v21;
  *&retstr->value.color.blue = v25;
  *&retstr->value.color.red = v26;
  retstr->value.hash._countAndFlagsBits = v24;
  retstr->value.hash._object = v23;
}

id MutableMediaThirdPartyViewModel.__allocating_init(dbObject:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized MutableMediaThirdPartyViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

id MutableMediaThirdPartyViewModel.init(dbObject:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MutableMediaThirdPartyViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void MutableMediaThirdPartyViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant] = 4;
  v1[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory] = 3;
  v2 = &v1[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableMediaThirdPartyViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant) = 4;
  *(v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory) = 3;
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_subtitle);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_bundleIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColorString);
  *v4 = 0;
  v4[1] = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableMediaThirdPartyViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant] = 4;
  v1[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory] = 3;
  v2 = &v1[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MutableMediaThirdPartyViewModel.render()()
{
  *(v1 + 40) = v0;
  v2 = swift_task_alloc();
  *(v1 + 48) = v2;
  *v2 = v1;
  v2[1] = MutableMediaThirdPartyViewModel.render();

  return MutableMediaThirdPartyViewModel.getAppIcon()();
}

{
  v1 = v0[7];
  v2 = v0[5];
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;

  MutableMediaThirdPartyViewModel.setBackgroundColorAndVariant()();
  v5 = v0[1];

  return v5();
}

uint64_t MutableMediaThirdPartyViewModel.render()(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](MutableMediaThirdPartyViewModel.render(), 0, 0);
}

uint64_t MutableMediaThirdPartyViewModel.getAppIcon()()
{
  *(v1 + 48) = v0;
  return MEMORY[0x2822009F8](MutableMediaThirdPartyViewModel.getAppIcon(), 0, 0);
}

{
  v1 = (*(v0 + 48) + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_bundleIdentifier);
  swift_beginAccess();
  v2 = v1[1];
  if (v2 && (v3 = *v1, v4 = *(*(v0 + 48) + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport), (*(v0 + 56) = v4) != 0))
  {
    v5 = objc_allocWithZone(MEMORY[0x277D1B1A8]);

    v6 = v4;
    v7 = MEMORY[0x21CE91FC0](v3, v2);

    *(v0 + 64) = [v5 initWithBundleIdentifier_];

    v8 = MEMORY[0x277D85000];
    v9 = *((*MEMORY[0x277D85000] & *v6) + 0x60);
    *(v0 + 144) = v9();
    v10 = *((*v8 & *v6) + 0x78);
    v11 = v10();
    v12 = (v9)(v11);
    *(v0 + 148) = (v10)(v12);
    *(v0 + 72) = objc_opt_self();
    *(v0 + 80) = type metadata accessor for MainActor();
    *(v0 + 88) = static MainActor.shared.getter();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](MutableMediaThirdPartyViewModel.getAppIcon(), v14, v13);
  }

  else
  {
    v15 = *(v0 + 8);

    return v15(0);
  }
}

{
  v1 = *(v0 + 72);

  *(v0 + 96) = [v1 mainScreen];

  return MEMORY[0x2822009F8](MutableMediaThirdPartyViewModel.getAppIcon(), 0, 0);
}

{
  v1 = *(v0 + 96);

  [v1 scale];
  *(v0 + 112) = v2;

  return MEMORY[0x2822009F8](MutableMediaThirdPartyViewModel.getAppIcon(), 0, 0);
}

{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  __asm { FMOV            V1.2D, #0.5 }

  v8 = [objc_allocWithZone(MEMORY[0x277D1B1C8]) initWithSize:vmulq_f64(vcvtq_f64_f32(*(v0 + 144)) scale:{_Q1), *(v0 + 112)}];
  *(v0 + 120) = v8;
  v9 = *(v2 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *(v10 + 16) = v1;
  *(v10 + 24) = v8;
  *(v10 + 32) = v9;
  v11 = swift_task_alloc();
  *(v0 + 136) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI5ImageCSgMd, &_s9MomentsUI5ImageCSgMR);
  *v11 = v0;
  v11[1] = MutableMediaThirdPartyViewModel.getAppIcon();

  return MEMORY[0x2822007B8](v0 + 40, 0, 0, 0x6349707041746567, 0xEC00000029286E6FLL, partial apply for closure #1 in MutableMediaThirdPartyViewModel.getAppIcon(), v10, v12);
}

{

  return MEMORY[0x2822009F8](MutableMediaThirdPartyViewModel.getAppIcon(), 0, 0);
}

{
  v1 = *(v0 + 120);
  v2 = *(v0 + 56);

  v3 = *(v0 + 40);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t MutableMediaThirdPartyViewModel.getAppIcon()(uint64_t a1)
{
  *(v1 + 104) = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](MutableMediaThirdPartyViewModel.getAppIcon(), v3, v2);
}

Swift::Void __swiftcall MutableMediaThirdPartyViewModel.setBackgroundColorAndVariant()()
{
  MutableMediaThirdPartyViewModel.popularAppPredefinedStructuredColor.getter(v17);
  if (v18)
  {
    v1 = v19;
    v2 = v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor;
    v12 = v21;
    v14 = v20;
    swift_beginAccess();
    *v2 = v14;
    *(v2 + 16) = v12;
    *(v2 + 32) = 0;
    outlined destroy of UTType?(v17, &_s9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVSgMd, &_s9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVSgMR);
    v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant;
    swift_beginAccess();
    *(v0 + v3) = v1;
    return;
  }

  v4 = v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor;
  swift_beginAccess();
  if ((*(v4 + 32) & 1) == 0)
  {
    v7 = *v4;
    v9 = *(v4 + 8);
    v8 = *(v4 + 16);
LABEL_9:
    if (v7 * 0.2126 + v9 * 0.7152 + v8 * 0.0722 <= 0.1)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    goto LABEL_12;
  }

  v5 = specialized static DefaultsManager.getTrialStringValue(for:)(0xD000000000000041, 0x800000021657EE70);
  if (!v6)
  {
    v5 = 0xD000000000000040;
    v6 = 0x800000021657EE20;
  }

  MutableMediaThirdPartyViewModel.StructuredColor.init(string:)(&v16, *&v5);
  if (v16.value.bundleIdentifier._object)
  {
    v13 = *&v16.value.color.blue;
    v15 = *&v16.value.color.red;
    outlined destroy of UTType?(&v16, &_s9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVSgMd, &_s9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVSgMR);
    v8 = *&v13;
    v7 = *&v15;
    *v4 = v15;
    *(v4 + 16) = v13;
    v9 = *(&v15 + 1);
    *(v4 + 32) = 0;
    goto LABEL_9;
  }

  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  v10 = 4;
LABEL_12:
  v11 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant;
  swift_beginAccess();
  *(v0 + v11) = v10;
}

Swift::Bool __swiftcall MutableMediaThirdPartyViewModel.clearCache()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  return 1;
}

void *MutableMediaThirdPartyViewModel.view(style:)(char *a1)
{
  v3 = *a1;
  objc_allocWithZone(type metadata accessor for MediaThirdPartyView(0));
  return MediaThirdPartyView.init(viewModel:style:)(v1, &v3);
}

uint64_t MutableMediaThirdPartyViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id MutableMediaThirdPartyViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for MediaThirdPartyViewModel.mediaCategory.getter in conformance MutableMediaThirdPartyViewModel@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

__n128 protocol witness for MediaThirdPartyViewModel.backgroundColor.getter in conformance MutableMediaThirdPartyViewModel@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor;
  swift_beginAccess();
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t protocol witness for MediaThirdPartyViewModel.colorVariant.getter in conformance MutableMediaThirdPartyViewModel@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void closure #1 in MutableMediaThirdPartyViewModel.getAppIcon()(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI5ImageCSgs5NeverOGMd, &_sScCy9MomentsUI5ImageCSgs5NeverOGMR);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  *(v14 + v13 + v10) = a4 & 1;
  aBlock[4] = partial apply for closure #1 in closure #1 in MutableMediaThirdPartyViewModel.getAppIcon();
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed CGImageRef?) -> ();
  aBlock[3] = &block_descriptor_19;
  v15 = _Block_copy(aBlock);

  [a2 getCGImageForImageDescriptor:a3 completion:v15];
  _Block_release(v15);
}

void closure #1 in closure #1 in MutableMediaThirdPartyViewModel.getAppIcon()(void *a1, uint64_t a2, char a3)
{
  if (a1)
  {
    type metadata accessor for Image(0);
    v5 = objc_allocWithZone(MEMORY[0x277D755B8]);
    v6 = a1;
    LOBYTE(v7) = a3 & 1;
    v7 = Image.__allocating_init(uiImage:isGlyph:assetClass:)([v5 initWithCGImage_], 0, &v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI5ImageCSgs5NeverOGMd, &_sScCy9MomentsUI5ImageCSgs5NeverOGMR);
    CheckedContinuation.resume(returning:)();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI5ImageCSgs5NeverOGMd, &_sScCy9MomentsUI5ImageCSgs5NeverOGMR);
    CheckedContinuation.resume(returning:)();
  }
}

void *MutableMediaThirdPartyViewModel.genericFallbackColorString.getter()
{
  result = specialized static DefaultsManager.getTrialStringValue(for:)(0xD000000000000041, 0x800000021657EE70);
  if (!v1)
  {
    return 0xD000000000000040;
  }

  return result;
}

void MutableMediaThirdPartyViewModel.popularAppPredefinedStructuredColor.getter(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_bundleIdentifier);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v40 = a1;
    v5 = *v3;

    v6 = specialized MutableMediaThirdPartyViewModel.predefinedColorStrings.getter();
    v7 = v6;
    v8 = *(v6 + 2);
    if (v8)
    {
      v9 = 0;
      v10 = v6 + 40;
      v11 = MEMORY[0x277D84F90];
      v39 = v6 + 40;
      do
      {
        v12 = &v10[16 * v9];
        v13 = v9;
        while (1)
        {
          if (v13 >= *(v7 + 2))
          {
            __break(1u);
            goto LABEL_37;
          }

          v9 = v13 + 1;
          v15 = *(v12 - 1);
          v14 = *v12;

          v16._countAndFlagsBits = v15;
          v16._object = v14;
          MutableMediaThirdPartyViewModel.StructuredColor.init(string:)(&v50, v16);
          if (v50.value.bundleIdentifier._object)
          {
            break;
          }

          v47 = *&v50.value.color.green;
          v48 = *&v50.value.color.alpha;
          object = v50.value.hash._object;
          countAndFlagsBits = v50.value.bundleIdentifier._countAndFlagsBits;
          v46 = *&v50.value.variant;
          outlined destroy of UTType?(&countAndFlagsBits, &_s9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVSgMd, &_s9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVSgMR);
          v12 += 2;
          ++v13;
          if (v8 == v9)
          {
            goto LABEL_17;
          }
        }

        v47 = *&v50.value.color.green;
        v48 = *&v50.value.color.alpha;
        object = v50.value.hash._object;
        countAndFlagsBits = v50.value.bundleIdentifier;
        v46 = *&v50.value.variant;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
        }

        v18 = *(v11 + 2);
        v17 = *(v11 + 3);
        if (v18 >= v17 >> 1)
        {
          v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v11);
        }

        v44 = object;
        v42 = v47;
        v43 = v48;
        v19 = countAndFlagsBits;
        v41 = v46;
        *(v11 + 2) = v18 + 1;
        v20 = &v11[72 * v18];
        *(v20 + 2) = v19;
        *(v20 + 12) = v44;
        *(v20 + 4) = v42;
        *(v20 + 5) = v43;
        *(v20 + 3) = v41;
        v10 = v39;
      }

      while (v8 - 1 != v13);
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

LABEL_17:

    v21 = *(v11 + 2);
    if (v21)
    {
      v22 = 0;
      v23 = MEMORY[0x277D84F90];
LABEL_19:
      v24 = &v11[72 * v22 + 32];
      v25 = v22;
      while (v25 < *(v11 + 2))
      {
        v50.value.bundleIdentifier = *v24;
        v26 = *(v24 + 16);
        v27 = *(v24 + 32);
        v28 = *(v24 + 48);
        v50.value.hash._object = *(v24 + 64);
        *&v50.value.color.green = v27;
        *&v50.value.color.alpha = v28;
        *&v50.value.variant = v26;
        if (v50.value.bundleIdentifier._countAndFlagsBits == v5 && v4 == v50.value.bundleIdentifier._object || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          outlined init with copy of MutableMediaThirdPartyViewModel.StructuredColor(&v50, &countAndFlagsBits);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 16) + 1, 1);
          }

          v30 = *(v23 + 16);
          v29 = *(v23 + 24);
          if (v30 >= v29 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
          }

          v22 = v25 + 1;
          *(v23 + 16) = v30 + 1;
          v31 = v23 + 72 * v30;
          *(v31 + 32) = v50.value.bundleIdentifier;
          v32 = *&v50.value.variant;
          v33 = *&v50.value.color.green;
          v34 = *&v50.value.color.alpha;
          *(v31 + 96) = v50.value.hash._object;
          *(v31 + 64) = v33;
          *(v31 + 80) = v34;
          *(v31 + 48) = v32;
          if (v21 - 1 != v25)
          {
            goto LABEL_19;
          }

          goto LABEL_33;
        }

        ++v25;
        v24 += 72;
        if (v21 == v25)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      __break(1u);
    }

    else
    {
      v23 = MEMORY[0x277D84F90];
LABEL_33:

      if (*(v23 + 16) == 1)
      {
        v35 = *(v23 + 48);
        v36 = *(v23 + 80);
        *&v50.value.color.green = *(v23 + 64);
        *&v50.value.color.alpha = v36;
        v50.value.hash._object = *(v23 + 96);
        v50.value.bundleIdentifier = *(v23 + 32);
        *&v50.value.variant = v35;
        outlined init with copy of MutableMediaThirdPartyViewModel.StructuredColor(&v50, &countAndFlagsBits);

        v37 = *&v50.value.color.alpha;
        *(v40 + 32) = *&v50.value.color.green;
        *(v40 + 48) = v37;
        *(v40 + 64) = v50.value.hash._object;
        v38 = *&v50.value.variant;
        *v40 = v50.value.bundleIdentifier;
        *(v40 + 16) = v38;
      }

      else
      {

        *(v40 + 64) = 0;
        *(v40 + 32) = 0u;
        *(v40 + 48) = 0u;
        *v40 = 0u;
        *(v40 + 16) = 0u;
      }
    }
  }

  else
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}

void Color.inferredVariant.getter(char *a1@<X8>)
{
  v2 = vmulq_f64(*(v1 + 8), xmmword_21659A3B0);
  if (*v1 * 0.2126 + v2.f64[0] + v2.f64[1] <= 0.1)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  *a1 = v3;
}

uint64_t MutableMediaThirdPartyViewModel.StructuredColor.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void MutableMediaThirdPartyViewModel.StructuredColor.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

__n128 MutableMediaThirdPartyViewModel.StructuredColor.color.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  v3 = *(v1 + 40);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

__n128 MutableMediaThirdPartyViewModel.StructuredColor.color.setter(uint64_t a1)
{
  result = *a1;
  v3 = *(a1 + 16);
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  return result;
}

uint64_t MutableMediaThirdPartyViewModel.StructuredColor.hash.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void MutableMediaThirdPartyViewModel.StructuredColor.hash.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

id specialized MutableMediaThirdPartyViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v26[3] = a3;
  v26[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant] = 4;
  v8 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory;
  a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory] = 3;
  v9 = &a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  v9[32] = 1;
  v10 = &a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_subtitle];
  *v10 = 0;
  v10[1] = 0;
  v11 = &a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_bundleIdentifier];
  *v11 = 0;
  v11[1] = 0;
  v12 = &a2[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColorString];
  *v12 = 0;
  v12[1] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v26, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd, &_s9MomentsUI8DBObject_pMR);
  type metadata accessor for DBMediaThirdPartyModel(0);
  if (swift_dynamicCast())
  {
    v14 = *(v24 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_subtitle);
    v13 = *(v24 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_subtitle + 8);
    swift_beginAccess();
    *v10 = v14;
    v10[1] = v13;

    if (*(v24 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue + 8))
    {
      v15 = 3;
    }

    else if (*(v24 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue) >= 3uLL)
    {
      v15 = 3;
    }

    else
    {
      v15 = *(v24 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_mediaThirdPartyCategoryRawValue);
    }

    swift_beginAccess();
    a2[v8] = v15;
    v17 = *(v24 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_bundleIdentifier);
    v16 = *(v24 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_bundleIdentifier + 8);
    swift_beginAccess();
    *v11 = v17;
    v11[1] = v16;

    v18 = *(v24 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor + 32);
    v22 = *(v24 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor + 16);
    v23 = *(v24 + OBJC_IVAR____TtC9MomentsUI22DBMediaThirdPartyModel_backgroundColor);
    swift_beginAccess();
    *v9 = v23;
    *(v9 + 1) = v22;
    v9[32] = v18;
    swift_weakAssign();
    v20 = specialized AssetViewModel.init(dbObject:)(v24, a2, v19);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v20;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id specialized MutableMediaThirdPartyViewModel.init(intendedViewport:supportedStyles:appBundleId:trackTitle:artist:album:mediaCategory:backgroundColorString:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 *a11, Swift::String string, uint64_t a13)
{
  v14 = v13;
  *&v59 = a7;
  v58 = a5;
  v51 = a4;
  v50 = a3;
  v53 = a2;
  v54 = a1;
  v60 = a13;
  *&v52 = string._object;
  ObjectType = swift_getObjectType();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v17 - 8);
  v57 = &v50 - v18;
  v19 = *a11;
  v13[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant] = 4;
  v20 = OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory;
  v13[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory] = 3;
  v21 = &v13[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v21[32] = 1;
  v22 = &v14[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_subtitle];
  *v22 = 0;
  v22[1] = 0;
  v23 = &v14[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_bundleIdentifier];
  *v23 = 0;
  v23[1] = 0;
  v24 = &v14[OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColorString];
  *v24 = 0;
  v24[1] = 0;
  swift_weakInit();
  if (v19 >= 2)
  {
    goto LABEL_10;
  }

  if (a8)
  {
    v25 = HIBYTE(a8) & 0xF;
    if ((a8 & 0x2000000000000000) == 0)
    {
      v25 = v59 & 0xFFFFFFFFFFFFLL;
    }

    if (v25)
    {
      goto LABEL_10;
    }
  }

  if (!a10)
  {
    goto LABEL_11;
  }

  if (a9 == v58 && a6 == a10 || (v55 = a9, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
LABEL_10:
  }

  else
  {

    *&v59 = v55;
    a8 = a10;
  }

LABEL_11:
  v55 = a6;
  swift_beginAccess();
  *v22 = v59;
  v22[1] = a8;

  swift_beginAccess();
  v14[v20] = v19;
  swift_beginAccess();
  v26 = v51;
  *v23 = v50;
  v23[1] = v26;

  v27 = v52;
  if (v52)
  {
    countAndFlagsBits = string._countAndFlagsBits;
    MutableMediaThirdPartyViewModel.StructuredColor.init(string:)(&v61, *(&v27 - 1));
    v29 = v62;
    if (v62)
    {
      v52 = v64;
      v59 = v63;
      outlined destroy of UTType?(&v61, &_s9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVSgMd, &_s9MomentsUI31MutableMediaThirdPartyViewModelC15StructuredColorVSgMR);
    }

    else
    {
      v59 = 0u;
      v52 = 0u;
    }

    swift_beginAccess();
    v30 = v52;
    *v21 = v59;
    *(v21 + 1) = v30;
    v21[32] = v29 == 0;
  }

  swift_weakAssign();
  v31 = type metadata accessor for DateInterval();
  *&v59 = *(v31 - 8);
  v32 = v59;
  v33 = v57;
  (*(v59 + 16))(v57, v60, v31);
  v34 = *(v32 + 56);
  v34(v33, 0, 1, v31);
  type metadata accessor for DBAssetModel(0);
  v35 = ObjectType;
  static DBAssetModel.subscript.getter(ObjectType, &v67);
  v36 = v67;
  v37 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v38 = &v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v38 = 0;
  v38[1] = 0;
  v39 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v34(&v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v31);
  UUID.init()();
  v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v40 = v54;
  *&v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v54;
  *&v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v53;
  swift_beginAccess();
  v41 = *&v14[v37];
  *&v14[v37] = 0;
  v42 = v40;

  swift_beginAccess();
  v43 = v55;
  *v38 = v58;
  v38[1] = v43;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v33, &v14[v39]);
  v44 = swift_endAccess();
  v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v36;
  (v35[41])(v66, v44);
  v45 = v66[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v46 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v46 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v46 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v46 + 112) = v45;
  *&v14[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v46;
  v47 = type metadata accessor for AssetViewModel(0);
  v65.receiver = v14;
  v65.super_class = v47;
  v48 = objc_msgSendSuper2(&v65, sel_init);
  (*(v59 + 8))(v60, v31);
  outlined destroy of UTType?(v33, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  return v48;
}

char *specialized MutableMediaThirdPartyViewModel.predefinedColorStrings.getter()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  v2 = &off_2828D8710;
  v25 = 0x800000021657EEC0;
  do
  {
    v3 = *v2;
    v26 = *(v2 - 1);
    v27 = v3;
    v28 = v0;

    v4 = dispatch thunk of CustomStringConvertible.description.getter();
    v28 = 0xD000000000000035;
    v29 = v25;
    MEMORY[0x21CE92100](v4);

    v5 = v28;
    v6 = v29;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v7 = static DefaultsManager.shared;
    v8 = (*(*static DefaultsManager.shared + 120))();
    v28 = v5;
    v29 = v6;
    MEMORY[0x28223BE20](v8);
    v24[2] = &v28;
    v9 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v24, v8);

    if ((v9 & 1) == 0 || (v11 = (*(*v7 + 96))(v10)) == 0)
    {

LABEL_11:
      v17 = v26;
      goto LABEL_12;
    }

    v12 = v11;
    v13 = MEMORY[0x21CE91FC0](v5, v6);

    v14 = MEMORY[0x21CE91FC0](0x5F53544E454D4F4DLL, 0xED00004C41495254);
    v15 = [v12 levelForFactor:v13 withNamespaceName:v14];

    if (!v15)
    {

      goto LABEL_11;
    }

    v16 = [v15 stringValue];

    v17 = v26;
    if (v16)
    {

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
      }

      goto LABEL_15;
    }

LABEL_12:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v1 + 2) + 1, 1, v1);
    }

    v19 = v27;
LABEL_15:
    v21 = *(v1 + 2);
    v20 = *(v1 + 3);
    if (v21 >= v20 >> 1)
    {
      v1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v1);
    }

    ++v0;
    *(v1 + 2) = v21 + 1;
    v22 = &v1[16 * v21];
    *(v22 + 4) = v17;
    *(v22 + 5) = v19;
    v2 += 2;
  }

  while (v0 != 15);
  return v1;
}

id specialized MutableMediaThirdPartyViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return specialized MutableMediaThirdPartyViewModel.init(dbObject:)(v9, v11, a3, a4);
}

void specialized MutableMediaThirdPartyViewModel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_colorVariant) = 4;
  *(v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_mediaCategory) = 3;
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColor;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  v2 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_subtitle);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_bundleIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtC9MomentsUI31MutableMediaThirdPartyViewModel_backgroundColorString);
  *v4 = 0;
  v4[1] = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for MutableMediaThirdPartyViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for MutableMediaThirdPartyViewModel;
  if (!type metadata singleton initialization cache for MutableMediaThirdPartyViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MutableMediaThirdPartyViewModel.StructuredColor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t storeEnumTagSinglePayload for MutableMediaThirdPartyViewModel.StructuredColor(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void partial apply for closure #1 in closure #1 in MutableMediaThirdPartyViewModel.getAppIcon()(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI5ImageCSgs5NeverOGMd, &_sScCy9MomentsUI5ImageCSgs5NeverOGMR) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  v5 = *(v4 + *(v3 + 64));

  closure #1 in closure #1 in MutableMediaThirdPartyViewModel.getAppIcon()(a1, v4, v5);
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

const char *specialized static UIRenderingSession.signpostNameForCellRendering(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXpMd, &_sypXpMR);
  v1 = String.init<A>(describing:)();
  v3 = v2;
  v11 = v1;
  v12 = v2;
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {

    return "UIService_RenderPhotoCell";
  }

  else
  {
    v11 = v1;
    v12 = v3;
    if (StringProtocol.contains<A>(_:)())
    {

      return "UIService_RenderLivePhotoCell";
    }

    else
    {
      v11 = v1;
      v12 = v3;
      if (StringProtocol.contains<A>(_:)())
      {

        return "UIService_RenderVideoCell";
      }

      else
      {
        v11 = v1;
        v12 = v3;
        if (StringProtocol.contains<A>(_:)())
        {

          return "UIService_RenderContactCell";
        }

        else
        {
          v11 = v1;
          v12 = v3;
          if (StringProtocol.contains<A>(_:)())
          {

            return "UIService_RenderMapCell";
          }

          else
          {
            v11 = v1;
            v12 = v3;
            if (StringProtocol.contains<A>(_:)())
            {

              return "UIService_RenderWorkoutCell";
            }

            else
            {
              v11 = v1;
              v12 = v3;
              if (StringProtocol.contains<A>(_:)())
              {

                return "UIService_RenderMotionActivityCell";
              }

              else
              {
                v11 = v1;
                v12 = v3;
                if (StringProtocol.contains<A>(_:)())
                {

                  return "UIService_RenderMediaFirstPartyCell";
                }

                else
                {
                  v11 = v1;
                  v12 = v3;
                  if (StringProtocol.contains<A>(_:)())
                  {

                    return "UIService_RenderMediaThirdPartyCell";
                  }

                  else
                  {
                    v11 = v1;
                    v12 = v3;
                    if (StringProtocol.contains<A>(_:)())
                    {

                      return "UIService_RenderStateOfMindCell";
                    }

                    else
                    {
                      if (one-time initialization token for views != -1)
                      {
                        swift_once();
                      }

                      v5 = type metadata accessor for Logger();
                      __swift_project_value_buffer(v5, static CommonLogger.views);

                      v6 = Logger.logObject.getter();
                      v7 = static os_log_type_t.error.getter();

                      if (os_log_type_enabled(v6, v7))
                      {
                        v8 = swift_slowAlloc();
                        v9 = swift_slowAlloc();
                        v11 = v9;
                        *v8 = 136315138;
                        v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, &v11);

                        *(v8 + 4) = v10;
                        _os_log_impl(&dword_21607C000, v6, v7, "[signpostNameForCellRendering] Unrecognized cell view model type: %s - using UIService_RenderUnknownCell", v8, 0xCu);
                        __swift_destroy_boxed_opaque_existential_1(v9);
                        MEMORY[0x21CE94770](v9, -1, -1);
                        MEMORY[0x21CE94770](v8, -1, -1);
                      }

                      else
                      {
                      }

                      return "UIService_RenderUnknownCell";
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t DBAsset.representations.getter()
{
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  return v1;
}

double specialized thunk for @escaping @callee_guaranteed (@in_guaranteed UUID) -> (@owned Data?)@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_21658E040;
  return result;
}

uint64_t static DBAsset.Class.setter(char *a1, uint64_t a2, char a3)
{
  result = swift_beginAccess();
  static DBAsset.Class = a1;
  unk_27CA90EC8 = a2;
  byte_27CA90ED0 = a3;
  return result;
}

uint64_t DBAsset.Log.unsafeMutableAddressor()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v0, static DBAsset.Log);
}

uint64_t static DBAsset.Log.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBAsset.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static DBAsset.Log.setter(uint64_t a1)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBAsset.Log);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static DBAsset.Log.modify(uint64_t a1))()
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static DBAsset.Log);
  swift_beginAccess();
  return MutableVideoViewModel.video.modify;
}

uint64_t protocol witness for static CloudLog.Log.getter in conformance DBAsset@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for Log != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = __swift_project_value_buffer(v2, static DBAsset.Log);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t DBAsset._priorityScore.getter()
{
  v1 = v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__priorityScore;
  swift_beginAccess();
  return *v1;
}

uint64_t DBAsset._priorityScore.setter(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC9MomentsUI7DBAsset__priorityScore;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

MomentsUI::DBAsset::CodingKeys_optional __swiftcall DBAsset.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of DBAsset.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t DBAsset.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x7469726F6972705FLL;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DBAsset.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x80000002165764A0;
  if (v2 == 1)
  {
    v5 = 0x80000002165764A0;
  }

  else
  {
    v3 = 0x7469726F6972705FLL;
    v5 = 0xEE0065726F635379;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 25705;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x7469726F6972705FLL;
    v4 = 0xEE0065726F635379;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DBAsset.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance DBAsset.CodingKeys(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBAsset.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DBAsset.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DBAsset.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DBAsset.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0x80000002165764A0;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x7469726F6972705FLL;
    v4 = 0xEE0065726F635379;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance DBAsset.CodingKeys()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x7469726F6972705FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance DBAsset.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized DBAsset.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DBAsset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DBAsset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DBAsset.__allocating_init(id:universalUUID:representations:priorityScore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = swift_allocObject();
  UUID.init()();
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 8))(a2, v11);
  v13 = v10 + OBJC_IVAR____TtC9MomentsUI7DBAsset__priorityScore;
  *v13 = 0;
  *(v13 + 8) = 1;
  (*(v12 + 32))(v10 + OBJC_IVAR____TtC9MomentsUI7DBAsset_id, a1, v11);
  *(v10 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations) = a3;
  v14 = v10 + OBJC_IVAR____TtC9MomentsUI7DBAsset__priorityScore;
  swift_beginAccess();
  *v14 = a4;
  *(v14 + 8) = a5 & 1;
  return v10;
}

uint64_t DBAsset.init(id:universalUUID:representations:priorityScore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  UUID.init()();
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  (*(v12 + 8))(a2, v11);
  v13 = v5 + OBJC_IVAR____TtC9MomentsUI7DBAsset__priorityScore;
  *v13 = 0;
  *(v13 + 8) = 1;
  (*(v12 + 32))(v5 + OBJC_IVAR____TtC9MomentsUI7DBAsset_id, a1, v11);
  *(v5 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations) = a3;
  v14 = v5 + OBJC_IVAR____TtC9MomentsUI7DBAsset__priorityScore;
  swift_beginAccess();
  *v14 = a4;
  *(v14 + 8) = a5 & 1;
  return v5;
}

uint64_t DBAsset.deinit()
{
  v1 = OBJC_IVAR____TtC9MomentsUI7DBAsset_id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset_universalUUID, v2);

  return v0;
}

uint64_t DBAsset.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MomentsUI7DBAsset_id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset_universalUUID, v2);

  return swift_deallocClassInstance();
}

uint64_t DBAsset.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy9MomentsUI7DBAssetC10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy9MomentsUI7DBAssetC10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
    v11[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI16DBAssetModelTypeOGMd, &_sSay9MomentsUI16DBAssetModelTypeOGMR);
    lazy protocol witness table accessor for type [DBAssetModelType] and conformance <A> [A](&lazy protocol witness table cache variable for type [DBAssetModelType] and conformance <A> [A], lazy protocol witness table accessor for type DBAssetModelType and conformance DBAssetModelType, MEMORY[0x277D83948]);
    v9 = KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    (*(*v3 + 112))(v9);
    v11[14] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

Swift::Int DBAsset.hashValue.getter()
{
  v1 = Hasher.init(_seed:)();
  v2 = (*(*v0 + 112))(v1);
  if (v3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = v2;
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x21CE937F0](v5);
  }

  v6 = DBAsset.metadataHash.getter();
  MEMORY[0x21CE937C0](v6);
  return Hasher._finalize()();
}

uint64_t DBAsset.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  DBAsset.init(from:)(a1);
  return v2;
}

uint64_t DBAsset.init(from:)(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for UUID();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy9MomentsUI7DBAssetC10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy9MomentsUI7DBAssetC10CodingKeysOGMR);
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - v9;
  v25 = OBJC_IVAR____TtC9MomentsUI7DBAsset_universalUUID;
  UUID.init()();
  v11 = v3 + OBJC_IVAR____TtC9MomentsUI7DBAsset__priorityScore;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  lazy protocol witness table accessor for type DBAsset.CodingKeys and conformance DBAsset.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    (*(v26 + 8))(v3 + v25, v5);
    type metadata accessor for DBAsset(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v22 = v11;
    v13 = v23;
    LOBYTE(v28) = 0;
    _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    v14 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v16 = *(v26 + 32);
    v21 = OBJC_IVAR____TtC9MomentsUI7DBAsset_id;
    v16(v3 + OBJC_IVAR____TtC9MomentsUI7DBAsset_id, v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9MomentsUI16DBAssetModelTypeOGMd, &_sSay9MomentsUI16DBAssetModelTypeOGMR);
    v29 = 1;
    lazy protocol witness table accessor for type [DBAssetModelType] and conformance <A> [A](&lazy protocol witness table cache variable for type [DBAssetModelType] and conformance <A> [A], lazy protocol witness table accessor for type DBAssetModelType and conformance DBAssetModelType, MEMORY[0x277D83978]);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v3 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations) = v28;
    LOBYTE(v28) = 2;
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v19 = v18;
    (*(v13 + 8))(v10, v14);
    v20 = v22;
    swift_beginAccess();
    *v20 = v17;
    *(v20 + 8) = v19 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v27);
  return v3;
}

uint64_t protocol witness for Decodable.init(from:) in conformance DBAsset@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 168))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t DBAsset.hash(into:)()
{
  v1 = (*(*v0 + 112))();
  if (v2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = v1;
    Hasher._combine(_:)(1u);
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x21CE937F0](v4);
  }

  v5 = DBAsset.metadataHash.getter();
  return MEMORY[0x21CE937C0](v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DBAsset(uint64_t a1)
{
  v2 = Hasher.init(_seed:)();
  v3 = (*(**v1 + 112))(v2);
  if (v4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = v3;
    Hasher._combine(_:)(1u);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x21CE937F0](v6);
  }

  v7 = DBAsset.metadataHash.getter();
  MEMORY[0x21CE937C0](v7);
  return Hasher._finalize()();
}

uint64_t protocol witness for Identifiable.id.getter in conformance DBAsset@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9MomentsUI7DBAsset_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

double DBAsset.assetDataLookup.setter(uint64_t a1, uint64_t a2)
{
  specialized DBAsset.assetDataLookup.setter(a1, a2);

  return result;
}

double (*DBAsset.assetDataLookup.modify(uint64_t (**a1)()))(uint64_t *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = v1;
  *a1 = closure #1 in DBAsset.assetDataLookup.getter;
  return DBAsset.assetDataLookup.modify;
}

double key path setter for DBAsset.assetDataLookup : DBAsset(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t))
{
  v9 = *a1;
  v10 = a1[1];
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;

  a7(a6, v11);

  return result;
}

double DBAsset.assetDataGet.setter(uint64_t a1, uint64_t a2)
{
  specialized DBAsset.assetDataGet.setter(a1, a2);

  return result;
}

double (*DBAsset.assetDataGet.modify(uint64_t (**a1)()))(uint64_t *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = v1;
  *a1 = closure #1 in Video.init(from:);
  return DBAsset.assetDataGet.modify;
}

double key path setter for DBAsset.assetURLGet : DBAsset(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  specialized DBAsset.assetURLGet.setter(v1, v2);

  return result;
}

double DBAsset.assetURLGet.setter(uint64_t a1, uint64_t a2)
{
  specialized DBAsset.assetURLGet.setter(a1, a2);

  return result;
}

double (*DBAsset.assetURLGet.modify(uint64_t (**a1)@<X0>(uint64_t a1@<X8>)))(uint64_t *a1, uint64_t a2)
{
  a1[1] = 0;
  a1[2] = v1;
  *a1 = closure #3 in DBAssetModel.init(from:);
  return DBAsset.assetURLGet.modify;
}

double DBAsset.assetDataLookup.modify(uint64_t *a1, char a2, void (*a3)(uint64_t, uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {

    a3(v5, v4);
  }

  else
  {
    a3(*a1, v4);
  }

  return result;
}

uint64_t DBAsset.dumpAssetData()()
{
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v14 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = 32;
    v4 = v14;
    do
    {
      v5 = *(v1 + v3);
      switch(v5 >> 60)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          v5 &= 0xFFFFFFFFFFFFFFFuLL;
          break;
        default:
          break;
      }

      v6 = *(*v5 + 328);

      v8 = v6(v7);

      v10 = *(v14 + 16);
      v9 = *(v14 + 24);
      if (v10 >= v9 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1);
      }

      *(v14 + 16) = v10 + 1;
      *(v14 + 8 * v10 + 32) = v8;
      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  specialized _copySequenceToContiguousArray<A>(_:)(v4);
  v12 = v11;

  return v12;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void closure #1 in static DBAsset.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  switch(*a2 >> 60)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
      v2 = *a2 & 0xFFFFFFFFFFFFFFFLL;
      break;
    default:
      break;
  }

  v4 = *(*v2 + 376);

  v6 = v4(v5);
  v7 = v6;
  if (*(*a1 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v6), (v8 & 1) != 0))
  {
    v10 = specialized Dictionary.subscript.modify(v15, v7);
    if (*v9)
    {
      v11 = v9;

      MEMORY[0x21CE92260](v12);
      if (*((*v11 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      (v10)(v15, 0);
    }

    else
    {
      (v10)(v15, 0);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_21658E210;
    *(v13 + 32) = v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15[0] = *a1;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v13, v7, isUniquelyReferenced_nonNull_native);
    *a1 = v15[0];
  }
}

Swift::Int DBAsset.metadataHash.getter()
{
  v1 = Hasher.init()();
  v2 = (*(*v0 + 112))(v1);
  if (v3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = v2;
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x21CE937F0](v5);
  }

  if (*(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v6 = *(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  *&v21[0] = v6;

  specialized MutableCollection<>.sort(by:)(v21);

  v7 = *(*&v21[0] + 16);
  if (v7)
  {
    v8 = (*&v21[0] + 32);
    do
    {
      v10 = *v8++;
      v9 = v10;
      v11 = v10 & 0xFFFFFFFFFFFFFFFLL;
      switch(v10 >> 60)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          v9 = v11;
          break;
        default:
          break;
      }

      v12 = *(*v9 + 376);

      v14 = v12(v13);
      MEMORY[0x21CE937C0](v14);

      --v7;
    }

    while (v7);
  }

  v21[2] = v18;
  v21[3] = v19;
  v22 = v20;
  v21[0] = v16;
  v21[1] = v17;
  return Hasher.finalize()();
}

BOOL closure #1 in DBAsset.metadataHash.getter(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(*a1 >> 60)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
      v2 = *a1 & 0xFFFFFFFFFFFFFFFLL;
      break;
    default:
      break;
  }

  v4 = *(*v2 + 376);

  v6 = v4(v5);

  switch(v3 >> 60)
  {
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
      v3 &= 0xFFFFFFFFFFFFFFFuLL;
      break;
    default:
      break;
  }

  v7 = *(*v3 + 376);

  v9 = v7(v8);

  return v6 < v9;
}

uint64_t DBAsset.__allocating_init(universalUUID:representations:priorityScore:)(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  v33 = a1;
  v29 = a4;
  v30 = a3;
  v31 = type metadata accessor for UUID();
  v28 = *(v31 - 8);
  v5 = MEMORY[0x28223BE20](v31);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v26 = &v26 - v7;
  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v9 = 0;
    v10 = a2 & 0xC000000000000001;
    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = MEMORY[0x277D84F90];
    v34 = a2;
    while (1)
    {
      if (v10)
      {
        v13 = MEMORY[0x21CE93180](v9, a2);
      }

      else
      {
        if (v9 >= *(v11 + 16))
        {
          goto LABEL_18;
        }

        v13 = *(a2 + 8 * v9 + 32);
      }

      v14 = v13;
      v15 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v36 = v13;
      closure #1 in DBAsset.init(universalUUID:representations:priorityScore:)(&v36, &v35);

      v16 = v35;
      if ((~v35 & 0xF000000000000007) != 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v18 = *(v12 + 2);
        v17 = *(v12 + 3);
        if (v18 >= v17 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v12);
        }

        *(v12 + 2) = v18 + 1;
        *&v12[8 * v18 + 32] = v16;
        a2 = v34;
      }

      else
      {
        outlined consume of DBAssetModelType?(v35);
      }

      ++v9;
      if (v15 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_21:

  v19 = v28;
  v20 = v26;
  v21 = v33;
  v22 = v31;
  (*(v28 + 16))(v26, v33, v31);
  v23 = v27;
  UUID.init()();
  v24 = (*(v32 + 136))(v23, v20, v12, v30, v29 & 1);
  (*(v19 + 8))(v21, v22);
  return v24;
}

void closure #1 in DBAsset.init(universalUUID:representations:priorityScore:)(void **a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for MutableMapViewModel(0);
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = MutableMapViewModel.build()();
    if (v6)
    {
      v7 = v6 | 0x1000000000000000;
      goto LABEL_149;
    }

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static CommonLogger.viewModel);
    v12 = v3;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {

      goto LABEL_138;
    }

    v248 = a2;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v255[0] = v16;
    *v15 = 67110146;
    *(v15 + 4) = *(v5 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
    *(v15 + 8) = 2080;
    v17 = *(v5 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
    v247 = v3;
    if (v17)
    {
      v18 = MEMORY[0x21CE922B0](v17, &type metadata for AssetViewModel.Style);
      v20 = v19;
    }

    else
    {
      v18 = 7104878;
      v20 = 0xE300000000000000;
    }

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v20, v255);

    *(v15 + 10) = v36;
    *(v15 + 18) = 2080;
    v38 = MEMORY[0x277D85000];
    v39 = (*((*MEMORY[0x277D85000] & *v5) + 0xD0))(v37);
    v41 = v40;

    if (v41)
    {
      v42 = v39;
    }

    else
    {
      v42 = 7104878;
    }

    if (v41)
    {
      v43 = v41;
    }

    else
    {
      v43 = 0xE300000000000000;
    }

    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, v255);

    *(v15 + 20) = v44;
    *(v15 + 28) = 1024;
    v46 = (*((*v38 & *v5) + 0xB8))(v45);

    if (v46)
    {

      v47 = 1;
    }

    else
    {
      v47 = 0;
    }

    *(v15 + 30) = v47;

    *(v15 + 34) = 1024;
    (*((*v38 & *v5) + 0x288))(v253);
    v48 = v254;

    *(v15 + 36) = (v48 & 1) == 0;
    _os_log_impl(&dword_21607C000, v13, v14, "Failed to build DBAssetModelType from MutableMapViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseImage=%{BOOL}d, pinColor=%{BOOL}d", v15, 0x28u);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v16, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);

    goto LABEL_137;
  }

  type metadata accessor for MutableWorkoutViewModel(0);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    v9 = v8;
    v10 = MutableWorkoutViewModel.build()();
    if (v10)
    {
      v7 = v10 | 0x3000000000000000;
      goto LABEL_149;
    }

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static CommonLogger.viewModel);
    v25 = v3;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v26, v27))
    {

      goto LABEL_138;
    }

    v248 = a2;
    v28 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    v253[0] = v242;
    *v28 = 67110146;
    *(v28 + 4) = *(v9 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
    *(v28 + 8) = 2080;
    v29 = *(v9 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
    v247 = v3;
    if (v29)
    {
      v30 = MEMORY[0x21CE922B0](v29, &type metadata for AssetViewModel.Style);
      v32 = v31;
    }

    else
    {
      v30 = 7104878;
      v32 = 0xE300000000000000;
    }

    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, v253);

    *(v28 + 10) = v61;
    *(v28 + 18) = 2080;
    v63 = MEMORY[0x277D85000];
    v64 = (*((*MEMORY[0x277D85000] & *v9) + 0xD0))(v62);
    v66 = v65;

    if (v66)
    {
      v67 = v64;
    }

    else
    {
      v67 = 7104878;
    }

    if (v66)
    {
      v68 = v66;
    }

    else
    {
      v68 = 0xE300000000000000;
    }

    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v67, v68, v253);

    *(v28 + 20) = v69;
    *(v28 + 28) = 1024;
    v71 = (*((*v63 & *v9) + 0xB8))(v70);

    if (v71)
    {

      v72 = 1;
    }

    else
    {
      v72 = 0;
    }

    *(v28 + 30) = v72;

    *(v28 + 34) = 2080;
    (*((*v63 & *v9) + 0x280))();
    type metadata accessor for UUID();
    _s10Foundation4UUIDVACSEAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v73 = Set.description.getter();
    v75 = v74;

    v76 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v73, v75, v253);

    *(v28 + 36) = v76;
    _os_log_impl(&dword_21607C000, v26, v27, "Failed to build DBAssetModelType from MutableWorkoutViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseImage=%{BOOL}d, workoutUUIDs=%s", v28, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x21CE94770](v242, -1, -1);
    MEMORY[0x21CE94770](v28, -1, -1);

    goto LABEL_137;
  }

  type metadata accessor for MutableMotionActivityViewModel(0);
  v21 = swift_dynamicCastClass();
  if (v21)
  {
    v22 = v21;
    v23 = MutableMotionActivityViewModel.build()();
    if (v23)
    {
      v7 = v23 | 0x2000000000000000;
      goto LABEL_149;
    }

    v248 = a2;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static CommonLogger.viewModel);
    v50 = v3;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v256 = v243;
      *v53 = 67109890;
      *(v53 + 4) = *(v22 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v53 + 8) = 2080;
      v54 = *(v22 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      v247 = v3;
      if (v54)
      {
        v55 = MEMORY[0x21CE922B0](v54, &type metadata for AssetViewModel.Style);
        v57 = v56;
      }

      else
      {
        v57 = 0xE300000000000000;
        v55 = 7104878;
      }

      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, &v256);

      *(v53 + 10) = v85;
      *(v53 + 18) = 2080;
      v86 = (v22 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v87 = v86[1];
      if (v87)
      {
        v88 = *v86;
      }

      else
      {
        v87 = 0xE300000000000000;
        v88 = 7104878;
      }

      v89 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v87, &v256);

      *(v53 + 20) = v89;
      *(v53 + 28) = 1024;
      v90 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v91 = *(v22 + v90);

      *(v53 + 30) = v91 != 0;
      v92 = "Failed to build DBAssetModelType from MutableMotionActivityViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseImage=%{BOOL}d";
LABEL_135:
      _os_log_impl(&dword_21607C000, v51, v52, v92, v53, 0x22u);
      v172 = v243;
LABEL_136:
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v172, -1, -1);
      MEMORY[0x21CE94770](v53, -1, -1);

LABEL_137:
      a2 = v248;
      v3 = v247;
      goto LABEL_138;
    }

    goto LABEL_132;
  }

  type metadata accessor for MutableMediaFirstPartyViewModel(0);
  v33 = swift_dynamicCastClass();
  if (v33)
  {
    v34 = v33;
    PartyView = MutableMediaFirstPartyViewModel.build()();
    if (PartyView)
    {
      v7 = PartyView | 0x5000000000000000;
      goto LABEL_149;
    }

    v248 = a2;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v77 = type metadata accessor for Logger();
    __swift_project_value_buffer(v77, static CommonLogger.viewModel);
    v50 = v3;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v256 = v243;
      *v53 = 67109890;
      *(v53 + 4) = *(v34 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v53 + 8) = 2080;
      v78 = *(v34 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      v247 = v3;
      if (v78)
      {
        v79 = MEMORY[0x21CE922B0](v78, &type metadata for AssetViewModel.Style);
        v81 = v80;
      }

      else
      {
        v81 = 0xE300000000000000;
        v79 = 7104878;
      }

      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v81, &v256);

      *(v53 + 10) = v101;
      *(v53 + 18) = 2080;
      v102 = (v34 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v103 = v102[1];
      if (v103)
      {
        v104 = *v102;
      }

      else
      {
        v103 = 0xE300000000000000;
        v104 = 7104878;
      }

      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v103, &v256);

      *(v53 + 20) = v105;
      *(v53 + 28) = 1024;
      v106 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v107 = *(v34 + v106);

      *(v53 + 30) = v107 != 0;
      v92 = "Failed to build DBAssetModelType from MutableMediaFirstPartyViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseImage=%{BOOL}d";
      goto LABEL_135;
    }

LABEL_132:

    a2 = v248;
    goto LABEL_138;
  }

  type metadata accessor for MutableMediaThirdPartyViewModel(0);
  v58 = swift_dynamicCastClass();
  if (v58)
  {
    v59 = v58;
    v60 = MutableMediaThirdPartyViewModel.build()();
    if (v60)
    {
      v7 = v60 | 0x6000000000000000;
      goto LABEL_149;
    }

    v248 = a2;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v93 = type metadata accessor for Logger();
    __swift_project_value_buffer(v93, static CommonLogger.viewModel);
    v50 = v3;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v256 = v243;
      *v53 = 67109890;
      *(v53 + 4) = *(v59 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v53 + 8) = 2080;
      v94 = *(v59 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      v247 = v3;
      if (v94)
      {
        v95 = MEMORY[0x21CE922B0](v94, &type metadata for AssetViewModel.Style);
        v97 = v96;
      }

      else
      {
        v97 = 0xE300000000000000;
        v95 = 7104878;
      }

      v116 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v97, &v256);

      *(v53 + 10) = v116;
      *(v53 + 18) = 2080;
      v117 = (v59 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v118 = v117[1];
      if (v118)
      {
        v119 = *v117;
      }

      else
      {
        v118 = 0xE300000000000000;
        v119 = 7104878;
      }

      v120 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v118, &v256);

      *(v53 + 20) = v120;
      *(v53 + 28) = 1024;
      v121 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v122 = *(v59 + v121);

      *(v53 + 30) = v122 != 0;
      v92 = "Failed to build DBAssetModelType from MutableMediaThirdPartyViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseImage=%{BOOL}d";
      goto LABEL_135;
    }

    goto LABEL_132;
  }

  type metadata accessor for MutableStateOfMindViewModel(0);
  v82 = swift_dynamicCastClass();
  if (v82)
  {
    v83 = v82;
    v84 = MutableStateOfMindViewModel.build()();
    if (v84)
    {
      v7 = v84 | 0x4000000000000000;
      goto LABEL_149;
    }

    v248 = a2;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v108 = type metadata accessor for Logger();
    __swift_project_value_buffer(v108, static CommonLogger.viewModel);
    v50 = v3;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v256 = v243;
      *v53 = 67109890;
      *(v53 + 4) = *(v83 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v53 + 8) = 2080;
      v109 = *(v83 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      v247 = v3;
      if (v109)
      {
        v110 = MEMORY[0x21CE922B0](v109, &type metadata for AssetViewModel.Style);
        v112 = v111;
      }

      else
      {
        v112 = 0xE300000000000000;
        v110 = 7104878;
      }

      v131 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v112, &v256);

      *(v53 + 10) = v131;
      *(v53 + 18) = 2080;
      v132 = (v83 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v133 = v132[1];
      if (v133)
      {
        v134 = *v132;
      }

      else
      {
        v133 = 0xE300000000000000;
        v134 = 7104878;
      }

      v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v133, &v256);

      *(v53 + 20) = v135;
      *(v53 + 28) = 1024;
      v136 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v137 = *(v83 + v136);

      *(v53 + 30) = v137 != 0;
      v92 = "Failed to build DBAssetModelType from MutableStateOfMindViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseImage=%{BOOL}d";
      goto LABEL_135;
    }

    goto LABEL_132;
  }

  type metadata accessor for MutablePhotoViewModel(0);
  v98 = swift_dynamicCastClass();
  if (v98)
  {
    v99 = v98;
    v100 = MutablePhotoViewModel.build()();
    if (v100)
    {
      v7 = v100 | 0x7000000000000000;
      goto LABEL_149;
    }

    v248 = a2;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v123 = type metadata accessor for Logger();
    __swift_project_value_buffer(v123, static CommonLogger.viewModel);
    v50 = v3;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v256 = v243;
      *v53 = 67109890;
      *(v53 + 4) = *(v99 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v53 + 8) = 2080;
      v124 = *(v99 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      v247 = v3;
      if (v124)
      {
        v125 = MEMORY[0x21CE922B0](v124, &type metadata for AssetViewModel.Style);
        v127 = v126;
      }

      else
      {
        v127 = 0xE300000000000000;
        v125 = 7104878;
      }

      v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v125, v127, &v256);

      *(v53 + 10) = v147;
      *(v53 + 18) = 2080;
      v148 = (v99 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v149 = v148[1];
      if (v149)
      {
        v150 = *v148;
      }

      else
      {
        v149 = 0xE300000000000000;
        v150 = 7104878;
      }

      v151 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v150, v149, &v256);

      *(v53 + 20) = v151;
      *(v53 + 28) = 1024;
      v152 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v153 = *(v99 + v152);

      *(v53 + 30) = v153 != 0;
      v92 = "Failed to build DBAssetModelType from MutablePhotoViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseImage=%{BOOL}d";
      goto LABEL_135;
    }

    goto LABEL_132;
  }

  type metadata accessor for MutableReflectionViewModel(0);
  v113 = swift_dynamicCastClass();
  if (v113)
  {
    v114 = v113;
    v115 = MutableReflectionViewModel.build()();
    if (v115)
    {
      v7 = v115 | 0x8000000000000000;
      goto LABEL_149;
    }

    v248 = a2;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v138 = type metadata accessor for Logger();
    __swift_project_value_buffer(v138, static CommonLogger.viewModel);
    v50 = v3;
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v243 = swift_slowAlloc();
      v256 = v243;
      *v53 = 67109890;
      *(v53 + 4) = *(v114 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v53 + 8) = 2080;
      v139 = *(v114 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      v247 = v3;
      if (v139)
      {
        v140 = MEMORY[0x21CE922B0](v139, &type metadata for AssetViewModel.Style);
        v142 = v141;
      }

      else
      {
        v142 = 0xE300000000000000;
        v140 = 7104878;
      }

      v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v142, &v256);

      *(v53 + 10) = v165;
      *(v53 + 18) = 2080;
      v166 = (v114 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v167 = v166[1];
      if (v167)
      {
        v168 = *v166;
      }

      else
      {
        v167 = 0xE300000000000000;
        v168 = 7104878;
      }

      v169 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v168, v167, &v256);

      *(v53 + 20) = v169;
      *(v53 + 28) = 1024;
      v170 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v171 = *(v114 + v170);

      *(v53 + 30) = v171 != 0;
      v92 = "Failed to build DBAssetModelType from MutableReflectionViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseImage=%{BOOL}d";
      goto LABEL_135;
    }

    goto LABEL_132;
  }

  type metadata accessor for MutableLivePhotoViewModel(0);
  v128 = swift_dynamicCastClass();
  if (v128)
  {
    v129 = v128;
    v130 = MutableLivePhotoViewModel.build()();
    if (v130)
    {
      v7 = v130 | 0x9000000000000000;
      goto LABEL_149;
    }

    v248 = a2;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v154 = type metadata accessor for Logger();
    __swift_project_value_buffer(v154, static CommonLogger.viewModel);
    v50 = v3;
    v51 = Logger.logObject.getter();
    v155 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v51, v155))
    {
      v244 = 7104878;
      v247 = v3;
      v53 = swift_slowAlloc();
      v239 = swift_slowAlloc();
      v256 = v239;
      *v53 = 67109890;
      *(v53 + 4) = *(v129 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v53 + 8) = 2080;
      v156 = *(v129 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      if (v156)
      {
        v157 = MEMORY[0x21CE922B0](v156, &type metadata for AssetViewModel.Style);
        v159 = v158;
      }

      else
      {
        v159 = 0xE300000000000000;
        v157 = 7104878;
      }

      v205 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v159, &v256);

      *(v53 + 10) = v205;
      *(v53 + 18) = 2080;
      v206 = (v129 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v207 = v206[1];
      if (v207)
      {
        v244 = *v206;
      }

      else
      {
        v207 = 0xE300000000000000;
      }

      v208 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v244, v207, &v256);

      *(v53 + 20) = v208;
      *(v53 + 28) = 1024;
      v209 = OBJC_IVAR____TtC9MomentsUI25MutableLivePhotoViewModel_livePhoto;
      swift_beginAccess();
      v210 = *(v129 + v209);

      *(v53 + 30) = v210 != 0;
      _os_log_impl(&dword_21607C000, v51, v155, "Failed to build DBAssetModelType from MutableLivePhotoViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, baseLivePhoto=%{BOOL}d", v53, 0x22u);
      v172 = v239;
      goto LABEL_136;
    }

    goto LABEL_132;
  }

  type metadata accessor for MutableVideoViewModel(0);
  v143 = swift_dynamicCastClass();
  if (v143)
  {
    v144 = v143;
    v145 = v3;
    v146 = MutableVideoViewModel.build()();
    if (v146)
    {
      v7 = v146 | 0xA000000000000000;
      goto LABEL_149;
    }

    v249 = a2;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v193 = type metadata accessor for Logger();
    __swift_project_value_buffer(v193, static CommonLogger.viewModel);
    v194 = v3;
    v195 = Logger.logObject.getter();
    v196 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v195, v196))
    {
      v245 = 7104878;
      v197 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      v256 = v240;
      *v197 = 67109890;
      *(v197 + 4) = *(v144 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v197 + 8) = 2080;
      v198 = *(v144 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      if (v198)
      {
        v199 = MEMORY[0x21CE922B0](v198, &type metadata for AssetViewModel.Style);
        v201 = v200;
      }

      else
      {
        v201 = 0xE300000000000000;
        v199 = 7104878;
      }

      v219 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v199, v201, &v256);

      *(v197 + 10) = v219;
      *(v197 + 18) = 2080;
      v220 = (v144 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v221 = v220[1];
      if (v221)
      {
        v245 = *v220;
      }

      else
      {
        v221 = 0xE300000000000000;
      }

      v222 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v245, v221, &v256);

      *(v197 + 20) = v222;
      *(v197 + 28) = 1024;
      v223 = OBJC_IVAR____TtC9MomentsUI21MutableVideoViewModel_video;
      swift_beginAccess();
      v224 = *(v144 + v223);

      *(v197 + 30) = v224 != 0;
      _os_log_impl(&dword_21607C000, v195, v196, "Failed to build DBAssetModelType from MutableVideoViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s, video=%{BOOL}d", v197, 0x22u);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v240, -1, -1);
      MEMORY[0x21CE94770](v197, -1, -1);
    }

    else
    {
    }

    a2 = v249;
    v3 = v145;
    goto LABEL_138;
  }

  v160 = a2;
  type metadata accessor for MutableContactViewModel(0);
  v161 = v3;
  v162 = swift_dynamicCastClass();
  if (v162)
  {
    v163 = v162;
    v164 = MutableContactViewModel.build()();
    if (v164)
    {
      v7 = v164 | 0xB000000000000000;
      goto LABEL_149;
    }

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v211 = type metadata accessor for Logger();
    __swift_project_value_buffer(v211, static CommonLogger.viewModel);
    v212 = v3;
    v213 = Logger.logObject.getter();
    v250 = static os_log_type_t.error.getter();
    log = v213;
    if (os_log_type_enabled(v213, v250))
    {
      v246 = 7104878;
      v214 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      v255[0] = v241;
      *v214 = 67109634;
      *(v214 + 4) = *(v163 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v214 + 8) = 2080;
      v215 = *(v163 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      if (v215)
      {
        v216 = MEMORY[0x21CE922B0](v215, &type metadata for AssetViewModel.Style);
        v218 = v217;
      }

      else
      {

        v218 = 0xE300000000000000;
        v216 = 7104878;
      }

      v234 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v216, v218, v255);

      *(v214 + 10) = v234;
      *(v214 + 18) = 2080;
      v235 = (v163 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
      swift_beginAccess();
      v236 = v235[1];
      if (v236)
      {
        v246 = *v235;
      }

      else
      {
        v236 = 0xE300000000000000;
      }

      v237 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v246, v236, v255);

      *(v214 + 20) = v237;
      _os_log_impl(&dword_21607C000, log, v250, "Failed to build DBAssetModelType from MutableContactViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s, baseTitle=%s", v214, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x21CE94770](v241, -1, -1);
      MEMORY[0x21CE94770](v214, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    type metadata accessor for MutablePosterViewModel(0);
    v202 = swift_dynamicCastClass();
    if (!v202)
    {
      goto LABEL_138;
    }

    v203 = v202;
    v204 = MutablePosterViewModel.build()();
    if (v204)
    {
      v7 = v204 | 0xC000000000000000;
      goto LABEL_149;
    }

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v225 = type metadata accessor for Logger();
    __swift_project_value_buffer(v225, static CommonLogger.viewModel);
    v226 = v3;
    v227 = Logger.logObject.getter();
    v228 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v227, v228))
    {
      v229 = swift_slowAlloc();
      loga = swift_slowAlloc();
      v253[0] = loga;
      *v229 = 67109378;
      *(v229 + 4) = *(v203 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport) != 0;
      *(v229 + 8) = 2080;
      v230 = *(v203 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
      if (v230)
      {
        v231 = MEMORY[0x21CE922B0](v230, &type metadata for AssetViewModel.Style);
        v233 = v232;
      }

      else
      {
        v231 = 7104878;

        v233 = 0xE300000000000000;
      }

      v238 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v231, v233, v253);

      *(v229 + 10) = v238;
      _os_log_impl(&dword_21607C000, v227, v228, "Failed to build DBAssetModelType from MutablePosterViewModel, maximumSupportedViewport=%{BOOL}d, supportedStyles=%s", v229, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(loga);
      MEMORY[0x21CE94770](loga, -1, -1);
      MEMORY[0x21CE94770](v229, -1, -1);
    }

    else
    {
    }
  }

  a2 = v160;
  v3 = v161;
LABEL_138:
  v173 = AssetViewModel.buildGenericFallbackModel()();
  if (v173)
  {
    v7 = v173;
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v174 = type metadata accessor for Logger();
    __swift_project_value_buffer(v174, static CommonLogger.processing);
    v175 = v3;
    v176 = Logger.logObject.getter();
    v177 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v256 = v179;
      *v178 = 136315138;
      swift_getObjectType();
      v180 = _typeName(_:qualified:)();
      v182 = a2;
      v183 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v180, v181, &v256);

      *(v178 + 4) = v183;
      a2 = v182;
      _os_log_impl(&dword_21607C000, v176, v177, "[DBAsset.init] generic model, %s", v178, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v179);
      MEMORY[0x21CE94770](v179, -1, -1);
      MEMORY[0x21CE94770](v178, -1, -1);
    }
  }

  else
  {
    if (one-time initialization token for processing != -1)
    {
      swift_once();
    }

    v184 = type metadata accessor for Logger();
    __swift_project_value_buffer(v184, static CommonLogger.processing);
    v185 = v3;
    v186 = Logger.logObject.getter();
    v187 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v186, v187))
    {
      v188 = swift_slowAlloc();
      v189 = swift_slowAlloc();
      v256 = v189;
      *v188 = 136315138;
      swift_getObjectType();
      v190 = _typeName(_:qualified:)();
      v192 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v190, v191, &v256);

      *(v188 + 4) = v192;
      _os_log_impl(&dword_21607C000, v186, v187, "[DBAsset.init] nil model, %s", v188, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v189);
      MEMORY[0x21CE94770](v189, -1, -1);
      MEMORY[0x21CE94770](v188, -1, -1);
    }

    v7 = 0xF000000000000007;
  }

LABEL_149:
  *a2 = v7;
}

unint64_t DBAsset.dumpMapRepresentations.getter()
{
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    do
    {
      type metadata accessor for DBMapModel(0);
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v11;
        swift_retain_n();
        _StringGuts.grow(_:)(124);
        v13 = MEMORY[0x21CE92100](0xD00000000000001FLL, 0x800000021657F920);
        (*(*v12 + 376))(v13);
        v14 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x21CE92100](v14);

        MEMORY[0x21CE92100](0x744970616D0A202CLL, 0xEF3D687361486D65);
        v15 = *(v12 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_mapItem);
        if (v15)
        {
          v4 = *(*v15 + 224);

          v4(v5);
        }

        v6 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x21CE92100](v6);

        MEMORY[0x21CE92100](0x3D74616C0A2CLL, 0xE600000000000000);
        Double.write<A>(to:)();
        MEMORY[0x21CE92100](0x3D676E6F6C0A2CLL, 0xE700000000000000);
        Double.write<A>(to:)();
        MEMORY[0x21CE92100](0x6469666E6F630A2CLL, 0xED00003D65636E65);
        Double.write<A>(to:)();
        MEMORY[0x21CE92100](0x3D797469630A2CLL, 0xE700000000000000);
        v7 = *(v12 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_city);
        v8 = *(v12 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_city + 8);

        MEMORY[0x21CE92100](v7, v8);

        MEMORY[0x21CE92100](0x6F7A69726F680A2CLL, 0xED00003D6C61746ELL);
        Double.write<A>(to:)();
        MEMORY[0x21CE92100](0x697461636F6C0A2CLL, 0xEF3D656D614E6E6FLL);
        v9 = *(v12 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_locationName);
        v10 = *(v12 + OBJC_IVAR____TtC9MomentsUI10DBMapModel_locationName + 8);

        MEMORY[0x21CE92100](v9, v10);

        MEMORY[0x21CE92100](44, 0xE100000000000000);
        MEMORY[0x21CE92100](0, 0xE000000000000000);
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {
  }

  return 0xD000000000000028;
}

unint64_t DBAsset.dumpLivePhotoRepresentations.getter()
{
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations))
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI7DBAsset__representations);
  }

  else
  {
    v1 = MEMORY[0x277D84F90];
  }

  v2 = *(v1 + 16);
  if (v2)
  {

    v3 = 32;
    do
    {
      type metadata accessor for DBLivePhotoModel(0);
      v6 = swift_dynamicCastClass();
      if (v6)
      {
        v7 = v6;
        swift_retain_n();
        _StringGuts.grow(_:)(63);
        v8 = MEMORY[0x21CE92100](0xD000000000000025, 0x800000021657F980);
        (*(*v7 + 376))(v8);
        v9 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x21CE92100](v9);

        MEMORY[0x21CE92100](0xD000000000000013, 0x800000021657F9B0);
        if (*(v7 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8))
        {
          v4 = *(v7 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier);
          v5 = *(v7 + OBJC_IVAR____TtC9MomentsUI19DBPhotosFamilyModel_localIdentifier + 8);
        }

        else
        {
          v5 = 0xE300000000000000;
          v4 = 7104878;
        }

        MEMORY[0x21CE92100](v4, v5);

        MEMORY[0x21CE92100](663596, 0xE300000000000000);
        MEMORY[0x21CE92100](0, 0xE000000000000000);
      }

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {
  }

  return 0xD000000000000034;
}

void specialized MutableCollection<>.sort(by:)(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = _minimumMergeRunLength(_:)(v3);
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = result - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v20 = v7;
    v21 = v6;
    while (1)
    {
      v9 = *v6;
      switch(v8 >> 60)
      {
        case 1uLL:
        case 2uLL:
        case 3uLL:
        case 4uLL:
        case 5uLL:
        case 6uLL:
        case 7uLL:
        case 8uLL:
        case 9uLL:
        case 0xAuLL:
        case 0xBuLL:
        case 0xCuLL:
          v8 &= 0xFFFFFFFFFFFFFFFuLL;
          break;
        default:
          break;
      }

      v10 = *(*v8 + 376);

      v12 = v10(v11);
      if (v9 >> 60)
      {
        v13 = v9 & 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = v9;
      }

      v14 = *(*v13 + 376);

      v16 = v14(v15);

      if (v12 >= v16)
      {
LABEL_4:
        ++v4;
        v6 = v21 + 1;
        v7 = v20 - 1;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v17 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v17;
      --v6;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_99:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_138;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_132;
    }

    goto LABEL_101;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v106 = v8;
    if ((v7 + 1) >= v6)
    {
      v14 = v7 + 1;
    }

    else
    {
      v108 = v6;
      v10 = *a3;
      v11 = *(*a3 + 8 * (v7 + 1));
      v110 = *(*a3 + 8 * v7);
      v111 = v11;

      v104 = closure #1 in DBAsset.metadataHash.getter(&v111, &v110);
      if (v5)
      {

        return;
      }

      v12 = v7 + 2;
      v100 = v7;
      v13 = (v10 + 8 * v7 + 16);
      while (1)
      {
        v14 = v108;
        if (v108 == v12)
        {
          break;
        }

        v15 = v5;
        v17 = *(v13 - 1);
        v16 = *v13;
        switch(*v13 >> 60)
        {
          case 1uLL:
          case 2uLL:
          case 3uLL:
          case 4uLL:
          case 5uLL:
          case 6uLL:
          case 7uLL:
          case 8uLL:
          case 9uLL:
          case 0xAuLL:
          case 0xBuLL:
          case 0xCuLL:
            v16 = *v13 & 0xFFFFFFFFFFFFFFFLL;
            break;
          default:
            break;
        }

        v18 = *(*v16 + 376);
        v7 = (*v16 + 376);

        v20 = v18(v19);
        if (v17 >> 60)
        {
          v21 = v17 & 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v21 = v17;
        }

        v22 = *(*v21 + 376);

        v24 = v22(v23);

        ++v12;
        ++v13;
        v5 = v15;
        v8 = v106;
        if (((v104 ^ (v20 >= v24)) & 1) == 0)
        {
          v14 = v12 - 1;
          break;
        }
      }

      v9 = v100;
      if (v104)
      {
        if (v14 < v100)
        {
          goto LABEL_131;
        }

        if (v100 < v14)
        {
          v25 = v14 - 1;
          v26 = v100;
          do
          {
            if (v26 != v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_135;
              }

              v29 = *(v28 + 8 * v26);
              *(v28 + 8 * v26) = *(v28 + 8 * v25);
              *(v28 + 8 * v25) = v29;
            }
          }

          while (++v26 < v25--);
        }
      }
    }

    v30 = a3[1];
    if (v14 < v30)
    {
      if (__OFSUB__(v14, v9))
      {
        goto LABEL_128;
      }

      if (v14 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_129;
        }

        if (&v9[a4] < v30)
        {
          v30 = &v9[a4];
        }

        if (v30 < v9)
        {
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
LABEL_101:
          v112 = v8;
          v94 = *(v8 + 2);
          if (v94 >= 2)
          {
            while (*a3)
            {
              v95 = *&v8[16 * v94];
              v96 = *&v8[16 * v94 + 24];
              specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v95), (*a3 + 8 * *&v8[16 * v94 + 16]), (*a3 + 8 * v96), v7);
              if (v5)
              {
                goto LABEL_109;
              }

              if (v96 < v95)
              {
                goto LABEL_125;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
              }

              if (v94 - 2 >= *(v8 + 2))
              {
                goto LABEL_126;
              }

              v97 = &v8[16 * v94];
              *v97 = v95;
              *(v97 + 1) = v96;
              v112 = v8;
              specialized Array.remove(at:)(v94 - 1);
              v8 = v112;
              v94 = *(v112 + 2);
              if (v94 <= 1)
              {
                goto LABEL_109;
              }
            }

            goto LABEL_136;
          }

LABEL_109:

          return;
        }

        if (v14 != v30)
        {
          break;
        }
      }
    }

    v7 = v14;
    if (v14 < v9)
    {
      goto LABEL_127;
    }

LABEL_34:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v32 = *(v8 + 2);
    v31 = *(v8 + 3);
    v33 = v32 + 1;
    if (v32 >= v31 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1, v8);
    }

    *(v8 + 2) = v33;
    v34 = &v8[16 * v32];
    *(v34 + 4) = v9;
    *(v34 + 5) = v7;
    v35 = *a1;
    if (!*a1)
    {
      goto LABEL_137;
    }

    if (v32)
    {
      while (1)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          break;
        }

        if (v33 == 3)
        {
          v37 = *(v8 + 4);
          v38 = *(v8 + 5);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_53:
          if (v40)
          {
            goto LABEL_116;
          }

          v53 = &v8[16 * v33];
          v55 = *v53;
          v54 = *(v53 + 1);
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_119;
          }

          v59 = &v8[16 * v36 + 32];
          v61 = *v59;
          v60 = *(v59 + 1);
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_122;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_123;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v36 = v33 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v63 = &v8[16 * v33];
        v65 = *v63;
        v64 = *(v63 + 1);
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_67:
        if (v58)
        {
          goto LABEL_118;
        }

        v66 = &v8[16 * v36];
        v68 = *(v66 + 4);
        v67 = *(v66 + 5);
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_121;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_74:
        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_130;
        }

        if (!*a3)
        {
          goto LABEL_134;
        }

        v75 = *&v8[16 * v74 + 32];
        v76 = *&v8[16 * v36 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * v75), (*a3 + 8 * *&v8[16 * v36 + 32]), (*a3 + 8 * v76), v35);
        if (v5)
        {
          goto LABEL_109;
        }

        if (v76 < v75)
        {
          goto LABEL_112;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
        }

        if (v74 >= *(v8 + 2))
        {
          goto LABEL_113;
        }

        v77 = &v8[16 * v74];
        *(v77 + 4) = v75;
        *(v77 + 5) = v76;
        v112 = v8;
        specialized Array.remove(at:)(v36);
        v8 = v112;
        v33 = *(v112 + 2);
        if (v33 <= 1)
        {
          goto LABEL_3;
        }
      }

      v41 = &v8[16 * v33 + 32];
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_114;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_115;
      }

      v48 = &v8[16 * v33];
      v50 = *v48;
      v49 = *(v48 + 1);
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_117;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_120;
      }

      if (v52 >= v44)
      {
        v70 = &v8[16 * v36 + 32];
        v72 = *v70;
        v71 = *(v70 + 1);
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_124;
        }

        if (v39 < v73)
        {
          v36 = v33 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_99;
    }
  }

  v103 = v30;
  v98 = v5;
  v78 = v9;
  v79 = *a3;
  v80 = (*a3 + 8 * v14 - 8);
  v101 = v78;
  v81 = v78 - v14;
LABEL_85:
  v109 = v14;
  v82 = *(v79 + 8 * v14);
  v83 = v81;
  v105 = v80;
  while (1)
  {
    v84 = *v80;
    switch(v82 >> 60)
    {
      case 1uLL:
      case 2uLL:
      case 3uLL:
      case 4uLL:
      case 5uLL:
      case 6uLL:
      case 7uLL:
      case 8uLL:
      case 9uLL:
      case 0xAuLL:
      case 0xBuLL:
      case 0xCuLL:
        v82 &= 0xFFFFFFFFFFFFFFFuLL;
        break;
      default:
        break;
    }

    v85 = *(*v82 + 376);

    v87 = v85(v86);
    if (v84 >> 60)
    {
      v88 = v84 & 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v88 = v84;
    }

    v89 = *(*v88 + 376);

    v91 = v89(v90);

    if (v87 >= v91)
    {
LABEL_84:
      v14 = v109 + 1;
      v80 = v105 + 1;
      --v81;
      if (v109 + 1 != v103)
      {
        goto LABEL_85;
      }

      v5 = v98;
      v8 = v106;
      v7 = v103;
      v9 = v101;
      if (v103 < v101)
      {
        goto LABEL_127;
      }

      goto LABEL_34;
    }

    if (!v79)
    {
      break;
    }

    v92 = *v80;
    v82 = v80[1];
    *v80 = v82;
    v80[1] = v92;
    --v80;
    if (__CFADD__(v83++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v75 = v8 + 16;
    v76 = *(v8 + 2);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[16 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        *(v77 + 1) = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v29 = *(v8 + 3);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v30;
    v31 = v8 + 32;
    v32 = &v8[16 * v5 + 32];
    *v32 = v9;
    *(v32 + 1) = v7;
    v84 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 4);
          v34 = *(v8 + 5);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[16 * v30];
          v51 = *v49;
          v50 = *(v49 + 1);
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[16 * v5];
          v57 = *v55;
          v56 = *(v55 + 1);
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[16 * v30];
        v61 = *v59;
        v60 = *(v59 + 1);
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[16 * v5];
        v64 = *v62;
        v63 = *(v62 + 1);
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[16 * v5 - 16];
        v71 = *v70;
        v72 = &v31[16 * v5];
        v73 = *(v72 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        *(v70 + 1) = v73;
        v74 = *(v8 + 2);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        memmove(&v31[16 * v5], v72 + 16, 16 * (v74 - 1 - v5));
        *(v8 + 2) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[16 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[16 * v30];
      v46 = *v44;
      v45 = *(v44 + 1);
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[16 * v5];
        v68 = *v66;
        v67 = *(v66 + 1);
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    }

    v86 = v8 + 16;
    v87 = *(v8 + 2);
    if (v87 >= 2)
    {
      while (*a3)
      {
        v88 = &v8[16 * v87];
        v89 = *v88;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v88), (*a3 + 32 * *v90), (*a3 + 32 * v91), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v91 < v89)
        {
          goto LABEL_114;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_115;
        }

        *v88 = v89;
        *(v88 + 1) = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_116;
        }

        v87 = *v86 - 1;
        memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        if (v87 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v93 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 16);
      v11 = *a3 + 32 * v9;
      v12 = *(v11 + 16);
      v13 = v9 + 2;
      v14 = (v11 + 80);
      v15 = v10;
      while (v6 != v13)
      {
        v16 = *v14;
        v14 += 4;
        v17 = (v12 < v10) ^ (v15 >= v16);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v7 = v13 - 1;
          if (v12 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v12 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v18 = 32 * v7 - 16;
        v19 = 32 * v9 + 24;
        v20 = v7;
        v21 = v9;
        do
        {
          if (v21 != --v20)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v28 + v19);
            v23 = (v28 + v18);
            v24 = *(v22 - 3);
            v25 = *(v22 - 1);
            v26 = *v22;
            v27 = *v23;
            *(v22 - 3) = *(v23 - 1);
            *(v22 - 1) = v27;
            *(v23 - 1) = v24;
            *v23 = v25;
            *(v23 + 1) = v26;
          }

          ++v21;
          v18 -= 32;
          v19 += 32;
        }

        while (v21 < v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v40 = *(v8 + 3);
    v41 = v5 + 1;
    if (v5 >= v40 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v41;
    v42 = v8 + 32;
    v43 = &v8[16 * v5 + 32];
    *v43 = v9;
    *(v43 + 1) = v7;
    v95 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v44 = *(v8 + 4);
          v45 = *(v8 + 5);
          v54 = __OFSUB__(v45, v44);
          v46 = v45 - v44;
          v47 = v54;
LABEL_57:
          if (v47)
          {
            goto LABEL_104;
          }

          v60 = &v8[16 * v41];
          v62 = *v60;
          v61 = *(v60 + 1);
          v63 = __OFSUB__(v61, v62);
          v64 = v61 - v62;
          v65 = v63;
          if (v63)
          {
            goto LABEL_106;
          }

          v66 = &v42[16 * v5];
          v68 = *v66;
          v67 = *(v66 + 1);
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v64, v69))
          {
            goto LABEL_111;
          }

          if (v64 + v69 >= v46)
          {
            if (v46 < v69)
            {
              v5 = v41 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v41 < 2)
        {
          goto LABEL_112;
        }

        v70 = &v8[16 * v41];
        v72 = *v70;
        v71 = *(v70 + 1);
        v54 = __OFSUB__(v71, v72);
        v64 = v71 - v72;
        v65 = v54;
LABEL_72:
        if (v65)
        {
          goto LABEL_108;
        }

        v73 = &v42[16 * v5];
        v75 = *v73;
        v74 = *(v73 + 1);
        v54 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v54)
        {
          goto LABEL_110;
        }

        if (v76 < v64)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v41)
        {
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
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v81 = &v42[16 * v5 - 16];
        v82 = *v81;
        v83 = &v42[16 * v5];
        v84 = *(v83 + 1);
        specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 32 * *v81), (*a3 + 32 * *v83), (*a3 + 32 * v84), v95);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v84 < v82)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v81 = v82;
        *(v81 + 1) = v84;
        v85 = *(v8 + 2);
        if (v5 >= v85)
        {
          goto LABEL_101;
        }

        v41 = v85 - 1;
        memmove(&v42[16 * v5], v83 + 16, 16 * (v85 - 1 - v5));
        *(v8 + 2) = v85 - 1;
        if (v85 <= 2)
        {
          goto LABEL_3;
        }
      }

      v48 = &v42[16 * v41];
      v49 = *(v48 - 8);
      v50 = *(v48 - 7);
      v54 = __OFSUB__(v50, v49);
      v51 = v50 - v49;
      if (v54)
      {
        goto LABEL_102;
      }

      v53 = *(v48 - 6);
      v52 = *(v48 - 5);
      v54 = __OFSUB__(v52, v53);
      v46 = v52 - v53;
      v47 = v54;
      if (v54)
      {
        goto LABEL_103;
      }

      v55 = &v8[16 * v41];
      v57 = *v55;
      v56 = *(v55 + 1);
      v54 = __OFSUB__(v56, v57);
      v58 = v56 - v57;
      if (v54)
      {
        goto LABEL_105;
      }

      v54 = __OFADD__(v46, v58);
      v59 = v46 + v58;
      if (v54)
      {
        goto LABEL_107;
      }

      if (v59 >= v51)
      {
        v77 = &v42[16 * v5];
        v79 = *v77;
        v78 = *(v77 + 1);
        v54 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v54)
        {
          goto LABEL_113;
        }

        if (v46 < v80)
        {
          v5 = v41 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v93;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7 - 32;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 32 * v7 + 16);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (*(v34 + 16) >= v32)
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 32);
    v36 = *(v34 + 40);
    v37 = *(v34 + 56);
    v38 = *(v34 + 16);
    *(v34 + 32) = *v34;
    *(v34 + 48) = v38;
    *v34 = v35;
    *(v34 + 8) = v36;
    *(v34 + 16) = v32;
    *(v34 + 24) = v37;
    v34 -= 32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

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
}