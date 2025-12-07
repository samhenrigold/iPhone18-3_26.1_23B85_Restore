uint64_t objectdestroy_2Tm_3()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

BOOL NSRunLoop.runUntil(predicate:timeout:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Current = CFAbsoluteTimeGetCurrent();
  if (a4)
  {
    static Date.distantFuture.getter();
    Date.timeIntervalSinceNow.getter();
    v17 = v16;
    v14 = (*(v10 + 8))(v13, v9);
  }

  else
  {
    v17 = *&a3;
  }

  if (a1(v14))
  {
    return 1;
  }

  v19 = (v10 + 8);
  do
  {
    v20 = CFAbsoluteTimeGetCurrent() - Current;
    v18 = v17 >= v20;
    if (v17 < v20)
    {
      break;
    }

    Date.init(timeIntervalSinceNow:)();
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*v19)(v13, v9);
    [v5 runUntilDate_];
  }

  while (((a1)() & 1) == 0);
  return v18;
}

Swift::Int NSRunLoop.DOCRunUntilPredicateResult.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type NSRunLoop.DOCRunUntilPredicateResult and conformance NSRunLoop.DOCRunUntilPredicateResult()
{
  result = lazy protocol witness table cache variable for type NSRunLoop.DOCRunUntilPredicateResult and conformance NSRunLoop.DOCRunUntilPredicateResult;
  if (!lazy protocol witness table cache variable for type NSRunLoop.DOCRunUntilPredicateResult and conformance NSRunLoop.DOCRunUntilPredicateResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSRunLoop.DOCRunUntilPredicateResult and conformance NSRunLoop.DOCRunUntilPredicateResult);
  }

  return result;
}

id DOCCircularCancelButton.init(primaryAction:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v17 - v5;
  v7 = type metadata accessor for UIButton.Configuration();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DOCCircularCancelButton();
  v18.receiver = v1;
  v18.super_class = v12;
  v13 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = objc_opt_self();
  v15 = v13;

  static UIButton.Configuration.borderless()();
  closure #1 in DOCCircularCancelButton.init(primaryAction:)();
  (*(v8 + 16))(v6, v11, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  UIButton.configuration.setter();
  [v15 setDoc:a1 primaryAction:?];

  v17.receiver = v15;
  v17.super_class = v12;
  objc_msgSendSuper2(&v17, sel_setTranslatesAutoresizingMaskIntoConstraints_, 0);

  (*(v8 + 8))(v11, v7);
  return v15;
}

void closure #1 in DOCCircularCancelButton.init(primaryAction:)()
{
  v0 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v33 = *(v0 - 8);
  v34 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v32 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for UIBackgroundConfiguration();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v31 - v10;
  v12 = MEMORY[0x24C1FAD20](0x69632E6B72616D78, 0xEC000000656C6372, v9);
  v13 = [objc_opt_self() systemImageNamed_];

  if (v13)
  {
    [v13 alignmentRectInsets];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20 + -0.5;
    UIButton.Configuration.contentInsets.setter();
    v22 = [v13 imageWithAlignmentRectInsets_];
    UIButton.Configuration.image.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v23 = swift_allocObject();
    v31 = xmmword_249BA37E0;
    *(v23 + 16) = xmmword_249BA37E0;
    v24 = objc_opt_self();
    *(v23 + 32) = [v24 configurationWithWeight_];
    *(v23 + 40) = [v24 configurationWithTextStyle_];
    v25 = swift_allocObject();
    *(v25 + 16) = v31;
    v26 = objc_opt_self();
    *(v25 + 32) = [v26 secondaryLabelColor];
    *(v25 + 40) = [v26 clearColor];
    *(v25 + 48) = [v26 clearColor];
    type metadata accessor for UIColor();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v28 = [v24 configurationWithPaletteColors_];

    *(v23 + 48) = v28;
    specialized static UIImageSymbolConfiguration.applying(_:)(v23);

    UIButton.Configuration.preferredSymbolConfigurationForImage.setter();
    static UIBackgroundConfiguration.clear()();
    v29 = [objc_opt_self() effectWithStyle_];
    UIBackgroundConfiguration.visualEffect.setter();
    UIBackgroundConfiguration.cornerRadius.setter();
    (*(v33 + 104))(v32, *MEMORY[0x277D74FE0], v34);
    UIButton.Configuration.cornerStyle.setter();
    v30 = v35;
    (*(v3 + 16))(v6, v11, v35);
    UIButton.Configuration.background.setter();

    (*(v3 + 8))(v11, v30);
  }

  else
  {
    __break(1u);
  }
}

id DOCCircularCancelButton.translatesAutoresizingMaskIntoConstraints.getter()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCCircularCancelButton();
  return objc_msgSendSuper2(&v2, sel_translatesAutoresizingMaskIntoConstraints);
}

id DOCCircularCancelButton.translatesAutoresizingMaskIntoConstraints.setter(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DOCCircularCancelButton();
  return objc_msgSendSuper2(&v4, sel_setTranslatesAutoresizingMaskIntoConstraints_, a1 & 1);
}

id DOCCircularCancelButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCCircularCancelButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCCircularCancelButton();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *specialized DOCCircularCancelButton.hitTest(_:with:)(CGFloat a1, CGFloat a2)
{
  v5 = [v2 traitCollection];
  v6 = [v5 layoutDirection];

  if (v6 == 1)
  {
    v7 = -25.0;
  }

  else
  {
    v7 = 0.0;
  }

  v8 = [v2 traitCollection];
  [v8 layoutDirection];

  [v2 bounds];
  v16.origin.x = UIEdgeInsetsInsetRect(v9, v10, v11, v12, 0.0, v7);
  v15.x = a1;
  v15.y = a2;
  if (!CGRectContainsPoint(v16, v15))
  {
    return 0;
  }

  v13 = v2;
  return v2;
}

double static DOCNamedLocation.allCases.getter()
{
  swift_beginAccess();

  return result;
}

double static DOCNamedLocation.allCases.setter(void *a1)
{
  swift_beginAccess();
  static DOCNamedLocation.allCases = a1;

  return result;
}

uint64_t DOCNamedLocation.subfolderPathComponent.getter(unint64_t a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return *&aDocumentdeskto[8 * a1];
  }
}

uint64_t DOCNamedLocation.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x64616F6C6E776F44;
    }

    if (a1 == 3)
    {
      return 0x724464756F6C4369;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x746E656D75636F44;
    }

    if (a1 == 1)
    {
      return 0x706F746B736544;
    }
  }

  type metadata accessor for DOCNamedLocation(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t static DOCNamedLocation.from(location:)(uint64_t a1, unint64_t a2)
{
  v4 = String.lowercased()();
  if (v4 == __PAIR128__(0xE900000000000073, 0x746E656D75636F64) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  if (v4._countAndFlagsBits == 0x706F746B736564 && v4._object == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  if (v4._countAndFlagsBits == 0x64616F6C6E776F64 && v4._object == 0xE900000000000073 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  if (v4._countAndFlagsBits == 0x726464756F6C6369 && v4._object == 0xEB00000000657669)
  {

    return 3;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    return 3;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.UI);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = v11;
    *v10 = 136315138;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v12);
    _os_log_impl(&dword_2493AC000, v8, v9, "Can not create a named location from provided string: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x24C1FE850](v11, -1, -1);
    MEMORY[0x24C1FE850](v10, -1, -1);
  }

  return 0;
}

double protocol witness for static CaseIterable.allCases.getter in conformance DOCNamedLocation@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = static DOCNamedLocation.allCases;

  return result;
}

unint64_t lazy protocol witness table accessor for type [DOCNamedLocation] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DOCNamedLocation] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DOCNamedLocation] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo16DOCNamedLocationVGMd, _sSaySo16DOCNamedLocationVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DOCNamedLocation] and conformance [A]);
  }

  return result;
}

id key path getter for DOCUSBEraseOperation.operationState : DOCUSBEraseOperation@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 operationState];
  *a2 = result;
  return result;
}

void *DOCRemovableMediaStateSidebarCellAccessoryItem.init(with:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingStateObserver] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_preferredIconColor] = 0;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_imageProperties;
  v4 = type metadata accessor for UIListContentConfiguration.ImageProperties();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___progressIndicatorView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___errorImageView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___finishedImageView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___syncingMetadataImageView] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingOperation] = a1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for DOCRemovableMediaStateSidebarCellAccessoryItem(0);
  v5 = a1;
  v6 = objc_msgSendSuper2(&v11, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v7 = *((*MEMORY[0x277D85000] & *v6) + 0x118);
  v8 = v6;
  v7(v8, v9);

  return v8;
}

uint64_t type metadata accessor for DOCRemovableMediaStateSidebarCellAccessoryItem(uint64_t a1)
{
  result = type metadata singleton initialization cache for DOCRemovableMediaStateSidebarCellAccessoryItem;
  if (!type metadata singleton initialization cache for DOCRemovableMediaStateSidebarCellAccessoryItem)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *DOCRemovableMediaStateSidebarCellAccessoryItem.preferredIconColor.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_preferredIconColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.preferredIconColor.setter(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_preferredIconColor;
  v5 = swift_beginAccess();
  v6 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (a1)
  {
    if (v6)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor, 0x277D75348);
      v7 = a1;
      v8 = v6;
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {

LABEL_11:
        return;
      }
    }

    else
    {
      v5 = a1;
    }

LABEL_8:
    v10 = MEMORY[0x277D85000];
    v11 = (*((*MEMORY[0x277D85000] & *v2) + 0x120))(v5);
    type metadata accessor for DOCProgressIndicatorView();
    v12 = swift_dynamicCastClass();
    if (v12)
    {
      v13 = *(v2 + v4);
      v14 = *((*v10 & *v12) + 0x88);
      v15 = v13;
      v14(v13);
    }

    v8 = a1;
    goto LABEL_11;
  }

  if (v6)
  {
    goto LABEL_8;
  }
}

void (*DOCRemovableMediaStateSidebarCellAccessoryItem.preferredIconColor.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_preferredIconColor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCRemovableMediaStateSidebarCellAccessoryItem.preferredIconColor.modify;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.preferredIconColor.modify(uint64_t *a1, char a2)
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
    if (v3)
    {
      if (v7)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor, 0x277D75348);
        v8 = v3;
        v9 = v7;
        v10 = static NSObject.== infix(_:_:)();

        if (v10)
        {

LABEL_18:
LABEL_19:
          v11 = *v4;
          goto LABEL_24;
        }
      }

      else
      {
        a1 = v3;
      }
    }

    else if (!v7)
    {
      goto LABEL_19;
    }

    v14 = MEMORY[0x277D85000];
    v15 = (*((*MEMORY[0x277D85000] & **(v2 + 32)) + 0x120))(a1);
    type metadata accessor for DOCProgressIndicatorView();
    v16 = swift_dynamicCastClass();
    if (v16)
    {
      v17 = *(*(v2 + 32) + *(v2 + 40));
      v18 = *((*v14 & *v16) + 0x88);
      v19 = v17;
      v18(v17);
    }

    v8 = v3;
    goto LABEL_18;
  }

  if (v3)
  {
    if (v7)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor, 0x277D75348);
      v11 = v3;
      v12 = v7;
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {

LABEL_24:
        goto LABEL_25;
      }
    }

    else
    {
      a1 = v3;
    }

LABEL_21:
    v20 = MEMORY[0x277D85000];
    v21 = (*((*MEMORY[0x277D85000] & **(v2 + 32)) + 0x120))(a1);
    type metadata accessor for DOCProgressIndicatorView();
    v22 = swift_dynamicCastClass();
    if (v22)
    {
      v23 = *(*(v2 + 32) + *(v2 + 40));
      v24 = *((*v20 & *v22) + 0x88);
      v25 = v23;
      v24(v23);
    }

    v11 = v3;
    goto LABEL_24;
  }

  if (v7)
  {
    goto LABEL_21;
  }

LABEL_25:

  free(v2);
}

uint64_t key path setter for DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties : DOCRemovableMediaStateSidebarCellAccessoryItem(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of UIListContentConfiguration.ImageProperties?(a1, &v9 - v6);
  return (*((*MEMORY[0x277D85000] & **a2) + 0xF0))(v7);
}

id DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.didset(uint64_t a1)
{
  v2 = v1;
  v43 = a1;
  v3 = type metadata accessor for UIListContentConfiguration.ImageProperties();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v41 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v39[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v39[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSg_AFtMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSg_AFtMR);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v39[-v22];
  v24 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_imageProperties;
  swift_beginAccess();
  v25 = *(v20 + 56);
  v42 = v2;
  outlined init with copy of UIListContentConfiguration.ImageProperties?(v2 + v24, v23);
  outlined init with copy of UIListContentConfiguration.ImageProperties?(v43, &v23[v25]);
  v26 = *(v4 + 48);
  if (v26(v23, 1, v3) == 1)
  {
    if (v26(&v23[v25], 1, v3) == 1)
    {
      v27 = v23;
      return outlined destroy of CharacterSet?(v27, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMR);
    }
  }

  else
  {
    outlined init with copy of UIListContentConfiguration.ImageProperties?(v23, v18);
    if (v26(&v23[v25], 1, v3) != 1)
    {
      (*(v4 + 32))(v10, &v23[v25], v3);
      lazy protocol witness table accessor for type UIListContentConfiguration.ImageProperties and conformance UIListContentConfiguration.ImageProperties();
      v40 = dispatch thunk of static Equatable.== infix(_:_:)();
      v43 = v4;
      v38 = *(v4 + 8);
      v38(v10, v3);
      v38(v18, v3);
      result = outlined destroy of CharacterSet?(v23, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMR);
      if (v40)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v4 + 8))(v18, v3);
  }

  v43 = v4;
  outlined destroy of CharacterSet?(v23, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSg_AFtMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSg_AFtMR);
LABEL_7:
  v28 = v42;
  outlined init with copy of UIListContentConfiguration.ImageProperties?(v42 + v24, v14);
  if (v26(v14, 1, v3) == 1)
  {
    v27 = v14;
    return outlined destroy of CharacterSet?(v27, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMR);
  }

  v30 = v43;
  v31 = v41;
  (*(v43 + 32))(v41, v14, v3);
  result = [v28 tintColor];
  if (result)
  {
    v32 = result;
    isa = UIListContentConfiguration.ImageProperties.resolvedTintColor(for:)(result).super.isa;

    v34 = MEMORY[0x277D85000];
    v35 = (*((*MEMORY[0x277D85000] & *v28) + 0x138))();
    v36 = isa;
    [v35 setTintColor_];

    v37 = (*((*v34 & *v28) + 0x150))();
    [v37 setTintColor_];

    return (*(v30 + 8))(v31, v3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_imageProperties;
  swift_beginAccess();
  return outlined init with copy of UIListContentConfiguration.ImageProperties?(v1 + v3, a1);
}

uint64_t DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_imageProperties;
  swift_beginAccess();
  outlined init with copy of UIListContentConfiguration.ImageProperties?(v1 + v7, v6);
  swift_beginAccess();
  outlined assign with copy of UIListContentConfiguration.ImageProperties?(a1, v1 + v7);
  swift_endAccess();
  DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.didset(v6);
  outlined destroy of CharacterSet?(a1, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMR);
  return outlined destroy of CharacterSet?(v6, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMR);
}

void (*DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.modify(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMR) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_imageProperties;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  outlined init with copy of UIListContentConfiguration.ImageProperties?(v1 + v9, v8);
  return DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.modify;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    outlined init with copy of UIListContentConfiguration.ImageProperties?(*(*a1 + 12), v6);
    outlined init with copy of UIListContentConfiguration.ImageProperties?(v7 + v4, v5);
    swift_beginAccess();
    outlined assign with copy of UIListContentConfiguration.ImageProperties?(v6, v7 + v4);
    swift_endAccess();
    DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.didset(v5);
    outlined destroy of CharacterSet?(v5, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMR);
  }

  else
  {
    outlined init with copy of UIListContentConfiguration.ImageProperties?(v7 + v4, v6);
    swift_beginAccess();
    outlined assign with copy of UIListContentConfiguration.ImageProperties?(v3, v7 + v4);
    swift_endAccess();
    DOCRemovableMediaStateSidebarCellAccessoryItem.imageProperties.didset(v6);
  }

  outlined destroy of CharacterSet?(v6, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMR);
  outlined destroy of CharacterSet?(v3, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMR);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

Swift::Void __swiftcall DOCRemovableMediaStateSidebarCellAccessoryItem.startObserving()()
{
  v1 = v0;
  v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingOperation);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = v5;
  v3 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingStateObserver);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingStateObserver) = v3;
}

double closure #1 in DOCRemovableMediaStateSidebarCellAccessoryItem.startObserving()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (one-time initialization token for Rename != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static Logger.Rename);
    v7 = v5;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v10 = 136315138;
      v12 = *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingOperation];
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v19);

      *(v10 + 4) = v17;
      _os_log_impl(&dword_2493AC000, v8, v9, "ERASE: Formatting operation state changed %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x24C1FE850](v11, -1, -1);
      MEMORY[0x24C1FE850](v10, -1, -1);
    }

    *(swift_allocObject() + 16) = v7;
    v18 = v7;
    DOCRunInMainThread(_:)();
  }

  return result;
}

Swift::Void __swiftcall DOCRemovableMediaStateSidebarCellAccessoryItem.stopObserving()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingStateObserver);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingStateObserver) = 0;
}

Swift::Void __swiftcall DOCRemovableMediaStateSidebarCellAccessoryItem.didMoveToSuperview()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for DOCRemovableMediaStateSidebarCellAccessoryItem(0);
  objc_msgSendSuper2(&v1, sel_didMoveToSuperview);
  DOCRemovableMediaStateSidebarCellAccessoryItem.updateViews(state:)([*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_formattingOperation] operationState]);
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.updateViews(state:)(uint64_t a1)
{
  v15 = *((*MEMORY[0x277D85000] & *v1) + 0x188);
  v2 = v15();
  v3 = [v2 arrangedSubviews];

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v15();
      [v10 removeArrangedSubview_];

      [v8 removeFromSuperview];
      ++v6;
      if (v9 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return;
    }

    if (a1 == 3)
    {
      v12 = (v15)(v11);
      v13 = (*((*MEMORY[0x277D85000] & *v1) + 0x138))();
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v12 = (v15)(v11);
      v13 = (*((*MEMORY[0x277D85000] & *v1) + 0x150))();
      goto LABEL_23;
    }

LABEL_26:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v12 = (v15)(v11);
  v13 = (*((*MEMORY[0x277D85000] & *v1) + 0x120))();
LABEL_23:
  v16 = v13;
  [v12 addArrangedSubview_];
}

Swift::Void __swiftcall DOCRemovableMediaStateSidebarCellAccessoryItem.setUpMainContainer()()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x188);
  v2 = v1();
  [v0 addSubview_];

  v3 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249BA0470;
  v5 = v1();
  v6 = [v5 leadingAnchor];

  v7 = [v0 leadingAnchor];
  v8 = [v6 constraintEqualToAnchor_];

  *(v4 + 32) = v8;
  v9 = v1();
  v10 = [v9 trailingAnchor];

  v11 = [v0 trailingAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v4 + 40) = v12;
  v13 = v1();
  v14 = [v13 topAnchor];

  v15 = [v0 topAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v4 + 48) = v16;
  v17 = v1();
  v18 = [v17 bottomAnchor];

  v19 = [v0 bottomAnchor];
  v20 = [v18 constraintEqualToAnchor_];

  *(v4 + 56) = v20;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v3 activateConstraints_];
}

char *DOCRemovableMediaStateSidebarCellAccessoryItem.progressIndicatorView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___progressIndicatorView;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___progressIndicatorView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___progressIndicatorView);
  }

  else
  {
    v4 = v0;
    v12 = 1;
    v5 = objc_allocWithZone(type metadata accessor for DOCProgressIndicatorView());
    v6 = DOCProgressIndicatorView.init(style:progressChangeAnimationDuration:)(&v12, 0.5);
    v7 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v0) + 0xD0))();
    (*((*v7 & *v6) + 0x88))(v8);
    v9 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.progressIndicatorView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___progressIndicatorView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___progressIndicatorView) = a1;
}

void (*DOCRemovableMediaStateSidebarCellAccessoryItem.progressIndicatorView.modify(char **a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCRemovableMediaStateSidebarCellAccessoryItem.progressIndicatorView.getter();
  return DOCRemovableMediaStateSidebarCellAccessoryItem.progressIndicatorView.modify;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.progressIndicatorView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___progressIndicatorView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___progressIndicatorView) = v2;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.errorImageView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___errorImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___errorImageView) = a1;
}

void (*DOCRemovableMediaStateSidebarCellAccessoryItem.errorImageView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCRemovableMediaStateSidebarCellAccessoryItem.errorImageView.getter();
  return DOCRemovableMediaStateSidebarCellAccessoryItem.errorImageView.modify;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.errorImageView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___errorImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___errorImageView) = v2;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.finishedImageView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___finishedImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___finishedImageView) = a1;
}

void (*DOCRemovableMediaStateSidebarCellAccessoryItem.finishedImageView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCRemovableMediaStateSidebarCellAccessoryItem.finishedImageView.getter();
  return DOCRemovableMediaStateSidebarCellAccessoryItem.finishedImageView.modify;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.finishedImageView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___finishedImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___finishedImageView) = v2;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.syncingMetadataImageView.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___syncingMetadataImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___syncingMetadataImageView) = a1;
}

void (*DOCRemovableMediaStateSidebarCellAccessoryItem.syncingMetadataImageView.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCRemovableMediaStateSidebarCellAccessoryItem.syncingMetadataImageView.getter();
  return DOCRemovableMediaStateSidebarCellAccessoryItem.syncingMetadataImageView.modify;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.syncingMetadataImageView.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___syncingMetadataImageView);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___syncingMetadataImageView) = v2;
}

id DOCRemovableMediaStateSidebarCellAccessoryItem.mainContainer.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setAxis_];
    [v4 setDistribution_];
    [v4 setAlignment_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.mainContainer.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer) = a1;
}

void (*DOCRemovableMediaStateSidebarCellAccessoryItem.mainContainer.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCRemovableMediaStateSidebarCellAccessoryItem.mainContainer.getter();
  return DOCRemovableMediaStateSidebarCellAccessoryItem.mainContainer.modify;
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.mainContainer.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer) = v2;
}

id DOCRemovableMediaStateSidebarCellAccessoryItem.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void DOCRemovableMediaStateSidebarCellAccessoryItem.__ivar_destroyer()
{
  outlined destroy of CharacterSet?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem_imageProperties, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMd, &_s5UIKit26UIListContentConfigurationV15ImagePropertiesVSgMR);

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables46DOCRemovableMediaStateSidebarCellAccessoryItem____lazy_storage___mainContainer);
}

id DOCRemovableMediaStateSidebarCellAccessoryItem.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCRemovableMediaStateSidebarCellAccessoryItem(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for DOCSidebarCellProgressAccessoryItem.preferredIconColor.modify in conformance DOCRemovableMediaStateSidebarCellAccessoryItem(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & **v1) + 0xE0))();
  return protocol witness for DOCUserActivityHosting.currentUserActivity.modify in conformance DOCSmartFolderManager;
}

void type metadata completion function for DOCRemovableMediaStateSidebarCellAccessoryItem(uint64_t a1)
{
  type metadata accessor for UIListContentConfiguration.ImageProperties?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

BOOL NSError.isProviderDomainNotAuthenticated.getter()
{
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    return [v0 code] == -1000;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v7)
  {
    return [v0 code] == -1000;
  }

  return result;
}

id static NSError.noSuchFileError.getter()
{
  v0 = *MEMORY[0x277CCA050];
  v1 = objc_allocWithZone(MEMORY[0x277CCA9B8]);

  return [v1 initWithDomain:v0 code:4 userInfo:0];
}

BOOL NSError.isProviderNotFound.getter()
{
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    return [v0 code] == -2001;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v7)
  {
    return [v0 code] == -2001;
  }

  return result;
}

BOOL NSError.isProviderServerUnreachable.getter()
{
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {

    return [v0 code] == -1004;
  }

  v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v7)
  {
    return [v0 code] == -1004;
  }

  return result;
}

BOOL NSError.isFilenameCollisionError.getter()
{
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v0 code] == -1001)
  {
    return 1;
  }

LABEL_10:
  v9 = [v0 domain];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    return [v0 code] == -48;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v15)
  {
    return [v0 code] == -48;
  }

  return result;
}

id static NSError.userCancelledError.getter()
{
  v0 = *MEMORY[0x277CCA050];
  v1 = objc_allocWithZone(MEMORY[0x277CCA9B8]);

  return [v1 initWithDomain:v0 code:3072 userInfo:0];
}

BOOL NSError.isUserCancelledError.getter()
{
  v1 = [v0 domain];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  if (v2 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v4 == v5)
  {
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  if ([v0 code] == 3072)
  {
    return 1;
  }

LABEL_10:
  v9 = [v0 domain];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    return [v0 code] == -128;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if (v15)
  {
    return [v0 code] == -128;
  }

  return result;
}

id DOCItemCollectionCellContent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCFakeFPItemDecoration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCFakeFPItemDecoration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void DOCNodeStatusAppearance.iconVerticalOffset(forTitleFont:traitCollection:)(void *a1, void *a2)
{
  v5 = type metadata accessor for FloatingPointRoundingRule();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = 4.0;
  if ((v11 - 3) < 3 || v11 == 1)
  {
    if (!a2)
    {
LABEL_10:
      v16 = [objc_opt_self() mainScreen];
      [v16 scale];
      v15 = v17;

      goto LABEL_11;
    }
  }

  else
  {
    v8 = 0.0;
    if (v11 == 8)
    {
      return;
    }

    v12 = 10.0;
    if (!a2)
    {
      goto LABEL_10;
    }
  }

  [a2 displayScale];
  v15 = v14;
LABEL_11:
  [a1 capHeight];
  v19 = -v18 / v12;
  (*(v6 + 104))(v10, *MEMORY[0x277D84688], v5);
  specialized CGFloat.init(_:roundedBy:inScale:)(v10, v19, v15);
}

Swift::Int DOCListAccessoryType.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

void protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance DOCItemCollectionCellContent.CellContentProperties(uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)();

  *a2 = v3;
}

void one-time initialization function for numberFormatter(double a1)
{
  v1 = type metadata accessor for Locale();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v6 setNumberStyle_];
  [v6 setMaximumFractionDigits_];
  [v6 setMinimumFractionDigits_];
  static Locale.current.getter();
  isa = Locale._bridgeToObjectiveC()().super.isa;
  (*(v2 + 8))(v5, v1);
  [v6 setLocale_];

  static DOCItemCollectionCellContent.numberFormatter = v6;
}

uint64_t *DOCItemCollectionCellContent.numberFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for numberFormatter != -1)
  {
    swift_once();
  }

  return &static DOCItemCollectionCellContent.numberFormatter;
}

id static DOCItemCollectionCellContent.numberFormatter.getter()
{
  if (one-time initialization token for numberFormatter != -1)
  {
    swift_once();
  }

  v1 = static DOCItemCollectionCellContent.numberFormatter;

  return v1;
}

id DOCItemCollectionCellContent.primaryBadgeItemDecoration.getter()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x3D0))();
  v37 = result;
  if (!result)
  {
    return result;
  }

  if (!DOCIsInternalBuild())
  {
    goto LABEL_10;
  }

  if (one-time initialization token for docUserDefaults != -1)
  {
    goto LABEL_50;
  }

  while (1)
  {
    swift_beginAccess();
    if (static NSUserDefaults.docUserDefaults)
    {
      v2 = static NSUserDefaults.docUserDefaults;
      v3 = MEMORY[0x24C1FAD20](0xD00000000000001CLL, 0x8000000249BF41B0);
      v4 = [v2 BOOLForKey_];

      if (v4)
      {
        break;
      }
    }

LABEL_10:
    v11 = [v37 itemDecorations];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemDecoration, 0x277CC63F8);
    v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = MEMORY[0x277D84F90];
    if (v12 >> 62)
    {
      goto LABEL_36;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
    {
      v14 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x24C1FC540](v14, v12);
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_35;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v18 = [v15 type];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;
        if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
        {
        }

        else
        {
          v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v24 & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v25 = [v16 decorationIdentifier];
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;

        if (v26 == 0x64656E6E6950 && v28 == 0xE600000000000000)
        {

          goto LABEL_14;
        }

        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v29 & 1) == 0)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_14;
        }

LABEL_13:

LABEL_14:
        ++v14;
        if (v17 == i)
        {
          v30 = v39;
          goto LABEL_38;
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      ;
    }

    v30 = MEMORY[0x277D84F90];
LABEL_38:

    if ((v30 & 0x8000000000000000) != 0 || (v30 & 0x4000000000000000) != 0)
    {
      if (!__CocoaSet.count.getter())
      {
LABEL_46:
        swift_unknownObjectRelease();

        return 0;
      }
    }

    else if (!*(v30 + 16))
    {
      goto LABEL_46;
    }

    if ((v30 & 0xC000000000000001) != 0)
    {
      v35 = MEMORY[0x24C1FC540](0, v30);
      goto LABEL_44;
    }

    if (*(v30 + 16))
    {
      v35 = *(v30 + 32);
LABEL_44:
      v36 = v35;
      swift_unknownObjectRelease();

      return v36;
    }

    __break(1u);
LABEL_50:
    swift_once();
  }

  v5 = &unk_285C7F298;
  v6 = 12;
  while (1)
  {
    v8 = *(v5 - 1);
    v7 = *v5;

    v9 = [v37 displayName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    String.lowercased()();

    v10._countAndFlagsBits = v8;
    v10._object = v7;
    LOBYTE(v9) = String.hasPrefix(_:)(v10);

    if (v9)
    {
      break;
    }

    v5 += 2;
    if (!--v6)
    {
      swift_arrayDestroy();
      goto LABEL_10;
    }
  }

  swift_arrayDestroy();
  v39 = 0xD000000000000020;
  v40 = 0x8000000249BF41D0;
  MEMORY[0x24C1FAEA0](v8, v7);

  v31 = type metadata accessor for DOCFakeFPItemDecoration();
  v32 = objc_allocWithZone(v31);
  v33 = &v32[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_B700B1D3F74C3145CA523EE0550A1F4223DOCFakeFPItemDecoration_ut];
  *v33 = 0xD000000000000020;
  *(v33 + 1) = 0x8000000249BF41D0;
  v38.receiver = v32;
  v38.super_class = v31;
  v34 = objc_msgSendSuper2(&v38, sel_init);
  swift_unknownObjectRelease();
  return v34;
}

uint64_t DOCItemCollectionCellContent.withNotificationsDisabled(_:)(uint64_t (*a1)(uint64_t))
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v9 = _dispatchPreconditionTest(_:)();
  result = (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_disabledNotificationCount;
  v12 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_disabledNotificationCount);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_disabledNotificationCount) = v14;
  if (!v14)
  {
    result = (*((*MEMORY[0x277D85000] & *v2) + 0xBB0))(result);
  }

  result = a1(result);
  v15 = *(v2 + v11);
  v13 = __OFSUB__(v15, 1);
  v16 = v15 - 1;
  if (v13)
  {
    goto LABEL_11;
  }

  *(v2 + v11) = v16;
  if (!v16)
  {
    return (*((*MEMORY[0x277D85000] & *v2) + 0xBB0))(result);
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.pendingNotifications.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_pendingNotifications;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionCellContent.pendingNotifications.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_pendingNotifications;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionCellContent.gridItemLayoutTraits.didset(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v53 - v5;
  v7 = a1[9];
  v100 = a1[8];
  v101 = v7;
  v102[0] = a1[10];
  *(v102 + 9) = *(a1 + 169);
  v8 = a1[5];
  v96 = a1[4];
  v97 = v8;
  v9 = a1[7];
  v98 = a1[6];
  v99 = v9;
  v10 = a1[1];
  v92 = *a1;
  v93 = v10;
  v11 = a1[2];
  v12 = a1[3];
  v13 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_gridItemLayoutTraits);
  v94 = v11;
  v95 = v12;
  swift_beginAccess();
  v14 = v13[9];
  v15 = v13[7];
  v110 = v13[8];
  v111 = v14;
  v16 = v13[9];
  v112[0] = v13[10];
  *(v112 + 9) = *(v13 + 169);
  v17 = v13[5];
  v18 = v13[3];
  v106 = v13[4];
  v107 = v17;
  v19 = v13[5];
  v20 = v13[7];
  v108 = v13[6];
  v109 = v20;
  v21 = v13[1];
  v103[0] = *v13;
  v103[1] = v21;
  v22 = v13[3];
  v23 = *v13;
  v24 = v13[1];
  v104 = v13[2];
  v105 = v22;
  v25 = v13[9];
  v91[8] = v13[8];
  v91[9] = v25;
  v91[10] = v13[10];
  *(&v91[10] + 9) = *(v13 + 169);
  v26 = v13[5];
  v91[4] = v13[4];
  v91[5] = v26;
  v27 = v13[7];
  v91[6] = v13[6];
  v91[7] = v27;
  v28 = v13[1];
  v91[0] = *v13;
  v91[1] = v28;
  v29 = v13[3];
  v91[2] = v13[2];
  v91[3] = v29;
  *(&v91[22] + 9) = *(v102 + 9);
  v91[21] = v101;
  v91[22] = v102[0];
  v91[17] = v97;
  v91[18] = v98;
  v91[20] = v100;
  v91[19] = v99;
  v91[12] = v92;
  v91[13] = v93;
  v91[14] = v94;
  v91[16] = v96;
  v91[15] = v95;
  v113[8] = v110;
  v113[9] = v16;
  v114[0] = v13[10];
  *(v114 + 9) = *(v13 + 169);
  v113[4] = v106;
  v113[5] = v19;
  v113[6] = v108;
  v113[7] = v15;
  v113[0] = v23;
  v113[1] = v24;
  v113[2] = v104;
  v113[3] = v18;
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v113) == 1)
  {
    v79[8] = v91[20];
    v79[9] = v91[21];
    v79[10] = v91[22];
    *(&v79[10] + 9) = *(&v91[22] + 9);
    v79[4] = v91[16];
    v79[5] = v91[17];
    v79[6] = v91[18];
    v79[7] = v91[19];
    v79[0] = v91[12];
    v79[1] = v91[13];
    v79[2] = v91[14];
    v79[3] = v91[15];
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v79) == 1)
    {
      v88 = v91[8];
      v89 = v91[9];
      v90[0] = v91[10];
      *(v90 + 9) = *(&v91[10] + 9);
      v84 = v91[4];
      v85 = v91[5];
      v86 = v91[6];
      v87 = v91[7];
      v80 = v91[0];
      v81 = v91[1];
      v82 = v91[2];
      v83 = v91[3];
      outlined init with copy of DOCGridLayout.Spec?(v103, &v68, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
      outlined init with copy of DOCGridLayout.Spec?(&v92, &v68, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
      return outlined destroy of CharacterSet?(&v80, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
    }

    outlined init with copy of DOCGridLayout.Spec?(v103, &v80, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
    outlined init with copy of DOCGridLayout.Spec?(&v92, &v80, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
  }

  else
  {
    v88 = v91[8];
    v89 = v91[9];
    v90[0] = v91[10];
    *(v90 + 9) = *(&v91[10] + 9);
    v84 = v91[4];
    v85 = v91[5];
    v86 = v91[6];
    v87 = v91[7];
    v80 = v91[0];
    v81 = v91[1];
    v82 = v91[2];
    v83 = v91[3];
    v76 = v91[8];
    v77 = v91[9];
    v78[0] = v91[10];
    *(v78 + 9) = *(&v91[10] + 9);
    v72 = v91[4];
    v73 = v91[5];
    v74 = v91[6];
    v75 = v91[7];
    v68 = v91[0];
    v69 = v91[1];
    v70 = v91[2];
    v71 = v91[3];
    v79[8] = v91[20];
    v79[9] = v91[21];
    v79[10] = v91[22];
    *(&v79[10] + 9) = *(&v91[22] + 9);
    v79[4] = v91[16];
    v79[5] = v91[17];
    v79[6] = v91[18];
    v79[7] = v91[19];
    v79[0] = v91[12];
    v79[1] = v91[13];
    v79[2] = v91[14];
    v79[3] = v91[15];
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v79) != 1)
    {
      v65 = v91[20];
      v66 = v91[21];
      v67[0] = v91[22];
      *(v67 + 9) = *(&v91[22] + 9);
      v61 = v91[16];
      v62 = v91[17];
      v63 = v91[18];
      v64 = v91[19];
      v57 = v91[12];
      v58 = v91[13];
      v59 = v91[14];
      v60 = v91[15];
      outlined init with copy of DOCGridLayout.Spec?(v103, v55, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
      outlined init with copy of DOCGridLayout.Spec?(&v92, v55, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
      outlined init with copy of DOCGridLayout.Spec?(&v80, v55, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
      v52 = specialized static DOCItemCollectionLayoutTraits.GridItemTraits.== infix(_:_:)(&v68, &v57);
      v53[8] = v65;
      v53[9] = v66;
      v54[0] = v67[0];
      *(v54 + 9) = *(v67 + 9);
      v53[4] = v61;
      v53[5] = v62;
      v53[6] = v63;
      v53[7] = v64;
      v53[0] = v57;
      v53[1] = v58;
      v53[2] = v59;
      v53[3] = v60;
      outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v53);
      v55[8] = v76;
      v55[9] = v77;
      v56[0] = v78[0];
      *(v56 + 9) = *(v78 + 9);
      v55[4] = v72;
      v55[5] = v73;
      v55[6] = v74;
      v55[7] = v75;
      v55[0] = v68;
      v55[1] = v69;
      v55[2] = v70;
      v55[3] = v71;
      outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v55);
      v65 = v91[8];
      v66 = v91[9];
      v67[0] = v91[10];
      *(v67 + 9) = *(&v91[10] + 9);
      v61 = v91[4];
      v62 = v91[5];
      v63 = v91[6];
      v64 = v91[7];
      v57 = v91[0];
      v58 = v91[1];
      v59 = v91[2];
      v60 = v91[3];
      result = outlined destroy of CharacterSet?(&v57, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
      if (v52)
      {
        return result;
      }

      goto LABEL_8;
    }

    v65 = v91[8];
    v66 = v91[9];
    v67[0] = v91[10];
    *(v67 + 9) = *(&v91[10] + 9);
    v61 = v91[4];
    v62 = v91[5];
    v63 = v91[6];
    v64 = v91[7];
    v57 = v91[0];
    v58 = v91[1];
    v59 = v91[2];
    v60 = v91[3];
    outlined init with copy of DOCGridLayout.Spec?(v103, v55, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
    outlined init with copy of DOCGridLayout.Spec?(&v92, v55, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
    outlined init with copy of DOCGridLayout.Spec?(&v80, v55, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
    outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(&v57);
  }

  memcpy(v79, v91, 0x179uLL);
  outlined destroy of CharacterSet?(v79, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSg_AFtMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSg_AFtMR);
LABEL_8:
  v31 = v13[9];
  v91[8] = v13[8];
  v91[9] = v31;
  v91[10] = v13[10];
  *(&v91[10] + 9) = *(v13 + 169);
  v32 = v13[5];
  v91[4] = v13[4];
  v91[5] = v32;
  v33 = v13[7];
  v91[6] = v13[6];
  v91[7] = v33;
  v34 = v13[1];
  v91[0] = *v13;
  v91[1] = v34;
  v35 = v13[3];
  v91[2] = v13[2];
  v91[3] = v35;
  result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v91);
  if (result != 1)
  {
    v36 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail) = 0;
    DOCItemCollectionCellContent._thumbnail.didset(v36);
    swift_unknownObjectRelease();
    v37 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
    *v37 = 0;
    v37[1] = 0;

    v38 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v38 - 8) + 56))(v6, 1, 1, v38);
    v39 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v1 + v39, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
    swift_endAccess();
    v40 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

    v41 = MEMORY[0x277D85000];
    v42 = *((*MEMORY[0x277D85000] & *v1) + 0x2D0);
    v44 = v42(v79);
    if ((*v43 & 0x200) == 0)
    {
      *v43 |= 0x200uLL;
    }

    v44(v79, 0);
    v46 = v42(v79);
    if ((*v45 & 0x100) == 0)
    {
      *v45 |= 0x100uLL;
    }

    v46(v79, 0);
    v48 = v42(v79);
    if ((*v47 & 0x1000) == 0)
    {
      *v47 |= 0x1000uLL;
    }

    v48(v79, 0);
    v50 = v42(v79);
    if ((*v49 & 0x2000) == 0)
    {
      *v49 |= 0x2000uLL;
    }

    v51 = v50(v79, 0);
    return (*((*v41 & *v1) + 0xBB0))(v51);
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.gridItemLayoutTraits.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_gridItemLayoutTraits);
  swift_beginAccess();
  v4 = v3[9];
  v5 = v3[7];
  v27 = v3[8];
  v28 = v4;
  v6 = v3[9];
  v29[0] = v3[10];
  *(v29 + 9) = *(v3 + 169);
  v7 = v3[5];
  v9 = v3[3];
  v23 = v3[4];
  v8 = v23;
  v24 = v7;
  v10 = v3[5];
  v11 = v3[7];
  v25 = v3[6];
  v12 = v25;
  v26 = v11;
  v13 = v3[1];
  v20[0] = *v3;
  v20[1] = v13;
  v14 = v3[3];
  v16 = *v3;
  v15 = v3[1];
  v21 = v3[2];
  v17 = v21;
  v22 = v14;
  a1[8] = v27;
  a1[9] = v6;
  a1[10] = v3[10];
  *(a1 + 169) = *(v3 + 169);
  a1[4] = v8;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v5;
  *a1 = v16;
  a1[1] = v15;
  a1[2] = v17;
  a1[3] = v9;
  return outlined init with copy of DOCGridLayout.Spec?(v20, v19, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
}

uint64_t DOCItemCollectionCellContent.gridItemLayoutTraits.setter(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_gridItemLayoutTraits);
  swift_beginAccess();
  v4 = v3[9];
  v5 = v3[7];
  v31 = v3[8];
  v32 = v4;
  v6 = v3[9];
  v33[0] = v3[10];
  *(v33 + 9) = *(v3 + 169);
  v7 = v3[5];
  v8 = v3[3];
  v27 = v3[4];
  v28 = v7;
  v9 = v3[5];
  v10 = v3[7];
  v29 = v3[6];
  v30 = v10;
  v11 = v3[1];
  v23 = *v3;
  v24 = v11;
  v12 = v3[3];
  v14 = *v3;
  v13 = v3[1];
  v25 = v3[2];
  v26 = v12;
  v34[8] = v31;
  v34[9] = v6;
  v35[0] = v3[10];
  *(v35 + 9) = *(v3 + 169);
  v34[4] = v27;
  v34[5] = v9;
  v34[6] = v29;
  v34[7] = v5;
  v34[0] = v14;
  v34[1] = v13;
  v34[2] = v25;
  v34[3] = v8;
  v15 = a1[9];
  v3[8] = a1[8];
  v3[9] = v15;
  v3[10] = a1[10];
  *(v3 + 169) = *(a1 + 169);
  v16 = a1[5];
  v3[4] = a1[4];
  v3[5] = v16;
  v17 = a1[7];
  v3[6] = a1[6];
  v3[7] = v17;
  v18 = a1[1];
  *v3 = *a1;
  v3[1] = v18;
  v19 = a1[3];
  v3[2] = a1[2];
  v3[3] = v19;
  outlined init with copy of DOCGridLayout.Spec?(&v23, v21, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
  outlined destroy of CharacterSet?(v34, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
  v21[8] = v31;
  v21[9] = v32;
  v22[0] = v33[0];
  *(v22 + 9) = *(v33 + 9);
  v21[4] = v27;
  v21[5] = v28;
  v21[6] = v29;
  v21[7] = v30;
  v21[0] = v23;
  v21[1] = v24;
  v21[2] = v25;
  v21[3] = v26;
  DOCItemCollectionCellContent.gridItemLayoutTraits.didset(v21);
  return outlined destroy of CharacterSet?(&v23, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
}

void (*DOCItemCollectionCellContent.gridItemLayoutTraits.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x568uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = v3 + 192;
  *(v3 + 1368) = v1;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_gridItemLayoutTraits;
  *(v3 + 1376) = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_gridItemLayoutTraits;
  v7 = (v1 + v6);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  v4[2] = v7[2];
  v4[3] = v10;
  *v4 = v8;
  v4[1] = v9;
  v11 = v7[4];
  v12 = v7[5];
  v13 = v7[7];
  v4[6] = v7[6];
  v4[7] = v13;
  v4[4] = v11;
  v4[5] = v12;
  v14 = v7[8];
  v15 = v7[9];
  v16 = v7[10];
  *(v4 + 169) = *(v7 + 169);
  v4[9] = v15;
  v4[10] = v16;
  v4[8] = v14;
  v17 = *v7;
  v18 = v7[1];
  v19 = v7[3];
  v4[14] = v7[2];
  v4[15] = v19;
  v4[12] = v17;
  v4[13] = v18;
  v20 = v7[4];
  v21 = v7[5];
  v22 = v7[7];
  v4[18] = v7[6];
  v4[19] = v22;
  v4[16] = v20;
  v4[17] = v21;
  v23 = v7[8];
  v24 = v7[9];
  v25 = v7[10];
  *(v5 + 169) = *(v7 + 169);
  v4[21] = v24;
  v4[22] = v25;
  v4[20] = v23;
  outlined init with copy of DOCGridLayout.Spec?(v4, (v4 + 24), &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
  return DOCItemCollectionCellContent.gridItemLayoutTraits.modify;
}

void DOCItemCollectionCellContent.gridItemLayoutTraits.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 192);
  v4 = (*a1 + 384);
  v5 = (*a1 + 576);
  v6 = (*a1 + 768);
  v7 = (*(v2 + 1368) + *(v2 + 1376));
  if (a2)
  {
    v8 = *(*a1 + 320);
    *(v2 + 1072) = *(*a1 + 304);
    v9 = v3[5];
    *(v2 + 1056) = v3[6];
    *(v2 + 1040) = v9;
    v10 = v3[3];
    v11 = v3[4];
    *(v2 + 1129) = *(v3 + 169);
    v12 = v3[9];
    *(v2 + 1120) = v3[10];
    *(v2 + 1104) = v12;
    *(v2 + 1088) = v8;
    v13 = v3[1];
    *(v2 + 960) = *v3;
    *(v2 + 976) = v13;
    v14 = v3[3];
    v16 = *v3;
    v15 = v3[1];
    v17 = v3[2];
    *(v2 + 992) = v17;
    *(v2 + 1008) = v14;
    *(v2 + 1024) = v11;
    v18 = *v7;
    v19 = v7[1];
    v20 = v7[3];
    v6[2] = v7[2];
    v6[3] = v20;
    *v6 = v18;
    v6[1] = v19;
    v21 = v7[4];
    v22 = v7[5];
    v23 = v7[7];
    v6[6] = v7[6];
    v6[7] = v23;
    v6[4] = v21;
    v6[5] = v22;
    v24 = v7[8];
    v25 = v7[9];
    v26 = v7[10];
    *(v6 + 169) = *(v7 + 169);
    v6[9] = v25;
    v6[10] = v26;
    v6[8] = v24;
    v27 = *v7;
    v28 = v7[1];
    v29 = v7[3];
    v5[2] = v7[2];
    v5[3] = v29;
    *v5 = v27;
    v5[1] = v28;
    v30 = v7[4];
    v31 = v7[5];
    v32 = v7[7];
    v5[6] = v7[6];
    v5[7] = v32;
    v5[4] = v30;
    v5[5] = v31;
    v33 = v7[8];
    v34 = v7[9];
    v35 = v7[10];
    *(v5 + 169) = *(v7 + 169);
    v5[9] = v34;
    v5[10] = v35;
    v5[8] = v33;
    v7[2] = v17;
    v7[3] = v10;
    *v7 = v16;
    v7[1] = v15;
    v36 = v3[4];
    v37 = v3[5];
    v38 = v3[7];
    v7[6] = v3[6];
    v7[7] = v38;
    v7[4] = v36;
    v7[5] = v37;
    v39 = v3[8];
    v40 = v3[9];
    v41 = v3[10];
    *(v7 + 169) = *(v3 + 169);
    v7[9] = v40;
    v7[10] = v41;
    v7[8] = v39;
    outlined init with copy of DOCGridLayout.Spec?(v2 + 960, v2 + 1152, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
    outlined init with copy of DOCGridLayout.Spec?(v6, v2 + 1152, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
    outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
    v42 = v6[9];
    v93 = v6[8];
    v94 = v42;
    v95[0] = v6[10];
    *(v95 + 9) = *(v6 + 169);
    v43 = v6[5];
    v89 = v6[4];
    v90 = v43;
    v44 = v6[7];
    v91 = v6[6];
    v92 = v44;
    v45 = v6[1];
    v85 = *v6;
    v86 = v45;
    v46 = v6[3];
    v87 = v6[2];
    v88 = v46;
    DOCItemCollectionCellContent.gridItemLayoutTraits.didset(&v85);
    outlined destroy of CharacterSet?(v6, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
    v47 = v3[9];
    v4[8] = v3[8];
    v4[9] = v47;
    v4[10] = v3[10];
    *(v4 + 169) = *(v3 + 169);
    v48 = v3[5];
    v4[4] = v3[4];
    v4[5] = v48;
    v49 = v3[7];
    v4[6] = v3[6];
    v4[7] = v49;
    v50 = v3[1];
    *v4 = *v3;
    v4[1] = v50;
    v51 = v3[3];
    v4[2] = v3[2];
    v4[3] = v51;
    v52 = v4;
  }

  else
  {
    v53 = v7[3];
    v55 = *v7;
    v54 = v7[1];
    *(*a1 + 608) = v7[2];
    v5[3] = v53;
    *v5 = v55;
    v5[1] = v54;
    v56 = v7[7];
    v58 = v7[4];
    v57 = v7[5];
    v5[6] = v7[6];
    v5[7] = v56;
    v5[4] = v58;
    v5[5] = v57;
    v60 = v7[9];
    v59 = v7[10];
    v61 = v7[8];
    *(v5 + 169) = *(v7 + 169);
    v5[9] = v60;
    v5[10] = v59;
    v5[8] = v61;
    v62 = *v7;
    v63 = v7[1];
    v64 = v7[3];
    v4[2] = v7[2];
    v4[3] = v64;
    *v4 = v62;
    v4[1] = v63;
    v65 = v7[4];
    v66 = v7[5];
    v67 = v7[7];
    v4[6] = v7[6];
    v4[7] = v67;
    v4[4] = v65;
    v4[5] = v66;
    v68 = v7[8];
    v69 = v7[9];
    v70 = v7[10];
    *(v4 + 169) = *(v7 + 169);
    v4[9] = v69;
    v4[10] = v70;
    v4[8] = v68;
    v71 = *v3;
    v72 = v3[1];
    v73 = v3[3];
    v7[2] = v3[2];
    v7[3] = v73;
    *v7 = v71;
    v7[1] = v72;
    v74 = v3[4];
    v75 = v3[5];
    v76 = v3[7];
    v7[6] = v3[6];
    v7[7] = v76;
    v7[4] = v74;
    v7[5] = v75;
    v77 = v3[8];
    v78 = v3[9];
    v79 = v3[10];
    *(v7 + 169) = *(v3 + 169);
    v7[9] = v78;
    v7[10] = v79;
    v7[8] = v77;
    outlined init with copy of DOCGridLayout.Spec?(v5, v6, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
    outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
    v80 = v5[9];
    v93 = v5[8];
    v94 = v80;
    v95[0] = v5[10];
    *(v95 + 9) = *(v5 + 169);
    v81 = v5[5];
    v89 = v5[4];
    v90 = v81;
    v82 = v5[7];
    v91 = v5[6];
    v92 = v82;
    v83 = v5[1];
    v85 = *v5;
    v86 = v83;
    v84 = v5[3];
    v87 = v5[2];
    v88 = v84;
    DOCItemCollectionCellContent.gridItemLayoutTraits.didset(&v85);
    v52 = v5;
  }

  outlined destroy of CharacterSet?(v52, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);

  free(v2);
}

uint64_t DOCItemCollectionCellContent.listItemLayoutTraits.didset(__int128 *a1)
{
  v2 = a1[5];
  v97 = a1[4];
  v98 = v2;
  v3 = a1[7];
  v99 = a1[6];
  v100 = v3;
  v4 = a1[1];
  v93 = *a1;
  v94 = v4;
  v5 = a1[3];
  v6 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_listItemLayoutTraits);
  v95 = a1[2];
  v96 = v5;
  swift_beginAccess();
  v7 = v6[3];
  v8 = v6[5];
  v102 = v6[4];
  v103 = v8;
  v9 = v6[5];
  v10 = v6[7];
  v104 = v6[6];
  v105 = v10;
  v11 = v6[1];
  v101[0] = *v6;
  v101[1] = v11;
  v12 = v6[3];
  v14 = *v6;
  v13 = v6[1];
  v101[2] = v6[2];
  v101[3] = v12;
  v15 = v6[5];
  v81 = v6[4];
  v82 = v15;
  v16 = v6[7];
  v83 = v6[6];
  v84 = v16;
  v17 = v6[1];
  v18 = v6[2];
  v77 = *v6;
  v78 = v17;
  v19 = v6[3];
  v79 = v6[2];
  v80 = v19;
  v88 = v96;
  v87 = v95;
  v86 = v94;
  v85 = v93;
  v92 = v100;
  v91 = v99;
  v90 = v98;
  v89 = v97;
  v106[2] = v18;
  v106[3] = v7;
  v106[0] = v14;
  v106[1] = v13;
  v20 = v6[7];
  v106[6] = v104;
  v106[7] = v20;
  v106[4] = v102;
  v106[5] = v9;
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v106) == 1)
  {
    v57 = v89;
    v58 = v90;
    v59 = v91;
    v60 = v92;
    v53 = v85;
    v54 = v86;
    v55 = v87;
    v56 = v88;
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v53) == 1)
    {
      v73 = v81;
      v74 = v82;
      v75 = v83;
      v76 = v84;
      v69 = v77;
      v70 = v78;
      v71 = v79;
      v72 = v80;
      outlined init with copy of DOCGridLayout.Spec?(v101, &v45, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
      outlined init with copy of DOCGridLayout.Spec?(&v93, &v45, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
      return outlined destroy of CharacterSet?(&v69, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
    }

    outlined init with copy of DOCGridLayout.Spec?(v101, &v69, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
    outlined init with copy of DOCGridLayout.Spec?(&v93, &v69, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
  }

  else
  {
    v73 = v81;
    v74 = v82;
    v75 = v83;
    v76 = v84;
    v69 = v77;
    v70 = v78;
    v71 = v79;
    v72 = v80;
    v47 = v79;
    v48 = v80;
    v45 = v77;
    v46 = v78;
    v51 = v83;
    v52 = v84;
    v49 = v81;
    v50 = v82;
    v55 = v87;
    v56 = v88;
    v53 = v85;
    v54 = v86;
    v59 = v91;
    v60 = v92;
    v57 = v89;
    v58 = v90;
    if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v53) != 1)
    {
      v41 = v89;
      v42 = v90;
      v43 = v91;
      v44 = v92;
      v37 = v85;
      v38 = v86;
      v39 = v87;
      v40 = v88;
      outlined init with copy of DOCGridLayout.Spec?(v101, v36, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
      outlined init with copy of DOCGridLayout.Spec?(&v93, v36, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
      outlined init with copy of DOCGridLayout.Spec?(&v69, v36, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
      v34 = specialized static DOCItemCollectionLayoutTraits.ListItemTraits.== infix(_:_:)(&v45, &v37);
      v35[4] = v41;
      v35[5] = v42;
      v35[6] = v43;
      v35[7] = v44;
      v35[0] = v37;
      v35[1] = v38;
      v35[2] = v39;
      v35[3] = v40;
      outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v35);
      v36[4] = v49;
      v36[5] = v50;
      v36[6] = v51;
      v36[7] = v52;
      v36[0] = v45;
      v36[1] = v46;
      v36[2] = v47;
      v36[3] = v48;
      outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v36);
      v41 = v81;
      v42 = v82;
      v43 = v83;
      v44 = v84;
      v37 = v77;
      v38 = v78;
      v39 = v79;
      v40 = v80;
      result = outlined destroy of CharacterSet?(&v37, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
      if (v34)
      {
        return result;
      }

      goto LABEL_8;
    }

    v41 = v81;
    v42 = v82;
    v43 = v83;
    v44 = v84;
    v37 = v77;
    v38 = v78;
    v39 = v79;
    v40 = v80;
    outlined init with copy of DOCGridLayout.Spec?(v101, v36, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
    outlined init with copy of DOCGridLayout.Spec?(&v93, v36, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
    outlined init with copy of DOCGridLayout.Spec?(&v69, v36, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
    outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(&v37);
  }

  v65 = v89;
  v66 = v90;
  v67 = v91;
  v68 = v92;
  v61 = v85;
  v62 = v86;
  v63 = v87;
  v64 = v88;
  v57 = v81;
  v58 = v82;
  v59 = v83;
  v60 = v84;
  v53 = v77;
  v54 = v78;
  v55 = v79;
  v56 = v80;
  outlined destroy of CharacterSet?(&v53, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSg_AFtMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSg_AFtMR);
LABEL_8:
  v22 = v6[5];
  v81 = v6[4];
  v82 = v22;
  v23 = v6[7];
  v83 = v6[6];
  v84 = v23;
  v24 = v6[1];
  v77 = *v6;
  v78 = v24;
  v25 = v6[3];
  v79 = v6[2];
  v80 = v25;
  result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v77);
  if (result != 1)
  {
    v26 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v27 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableSubtitle);
    *v27 = 0;
    v27[1] = 0;

    v28 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeCompactWidthTextTableSubtitle);
    *v28 = 0;
    v28[1] = 0;

    v29 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeRegularWidthTextTableSubtitle);
    *v29 = 0;
    v29[1] = 0;

    v30 = MEMORY[0x277D85000];
    v32 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))(&v53);
    if ((*v31 & 0x200) == 0)
    {
      *v31 |= 0x200uLL;
    }

    v33 = v32(&v53, 0);
    return (*((*v30 & *v1) + 0xBB0))(v33);
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.listItemLayoutTraits.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_listItemLayoutTraits);
  swift_beginAccess();
  v5 = v3[5];
  v16 = v3[4];
  v4 = v16;
  v17 = v5;
  v7 = v3[7];
  v18 = v3[6];
  v6 = v18;
  v19 = v7;
  v8 = v3[1];
  v13[0] = *v3;
  v13[1] = v8;
  v10 = v3[3];
  v14 = v3[2];
  v9 = v14;
  v15 = v10;
  *a1 = v13[0];
  a1[1] = v8;
  a1[2] = v9;
  a1[3] = v10;
  a1[4] = v4;
  a1[5] = v5;
  a1[6] = v6;
  a1[7] = v7;
  return outlined init with copy of DOCGridLayout.Spec?(v13, v12, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
}

uint64_t DOCItemCollectionCellContent.listItemLayoutTraits.setter(__int128 *a1)
{
  v3 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_listItemLayoutTraits);
  swift_beginAccess();
  v4 = v3[5];
  v18 = v3[4];
  v19 = v4;
  v5 = v3[7];
  v20 = v3[6];
  v21 = v5;
  v6 = v3[1];
  v14 = *v3;
  v15 = v6;
  v7 = v3[3];
  v16 = v3[2];
  v17 = v7;
  v22[0] = v14;
  v22[1] = v6;
  v22[2] = v16;
  v22[3] = v7;
  v22[4] = v18;
  v22[5] = v4;
  v22[6] = v20;
  v22[7] = v5;
  v8 = a1[3];
  v3[2] = a1[2];
  v3[3] = v8;
  v9 = a1[1];
  *v3 = *a1;
  v3[1] = v9;
  v10 = a1[7];
  v3[6] = a1[6];
  v3[7] = v10;
  v11 = a1[5];
  v3[4] = a1[4];
  v3[5] = v11;
  outlined init with copy of DOCGridLayout.Spec?(&v14, v13, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
  outlined destroy of CharacterSet?(v22, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
  v13[4] = v18;
  v13[5] = v19;
  v13[6] = v20;
  v13[7] = v21;
  v13[0] = v14;
  v13[1] = v15;
  v13[2] = v16;
  v13[3] = v17;
  DOCItemCollectionCellContent.listItemLayoutTraits.didset(v13);
  return outlined destroy of CharacterSet?(&v14, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
}

void (*DOCItemCollectionCellContent.listItemLayoutTraits.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x3A8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 920) = v1;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_listItemLayoutTraits;
  *(v3 + 928) = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_listItemLayoutTraits;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[3];
  v4[2] = v6[2];
  v4[3] = v9;
  *v4 = v7;
  v4[1] = v8;
  v10 = v6[4];
  v11 = v6[5];
  v12 = v6[7];
  v4[6] = v6[6];
  v4[7] = v12;
  v4[4] = v10;
  v4[5] = v11;
  v13 = v6[7];
  v15 = v6[4];
  v14 = v6[5];
  v4[14] = v6[6];
  v4[15] = v13;
  v4[12] = v15;
  v4[13] = v14;
  v16 = *v6;
  v17 = v6[1];
  v18 = v6[3];
  v4[10] = v6[2];
  v4[11] = v18;
  v4[8] = v16;
  v4[9] = v17;
  outlined init with copy of DOCGridLayout.Spec?(v4, (v4 + 16), &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
  return DOCItemCollectionCellContent.listItemLayoutTraits.modify;
}

void DOCItemCollectionCellContent.listItemLayoutTraits.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*(v2 + 920) + *(v2 + 928));
  if (a2)
  {
    v4 = *(v2 + 144);
    *(v2 + 640) = *(v2 + 128);
    *(v2 + 656) = v4;
    v5 = *(v2 + 176);
    v7 = *(v2 + 128);
    v6 = *(v2 + 144);
    *(v2 + 672) = *(v2 + 160);
    *(v2 + 688) = v5;
    v8 = *(v2 + 240);
    *(v2 + 736) = *(v2 + 224);
    *(v2 + 752) = v8;
    v9 = *(v2 + 208);
    v11 = *(v2 + 160);
    v10 = *(v2 + 176);
    *(v2 + 704) = *(v2 + 192);
    *(v2 + 720) = v9;
    v12 = *v3;
    v13 = v3[1];
    v14 = v3[3];
    *(v2 + 544) = v3[2];
    *(v2 + 560) = v14;
    *(v2 + 512) = v12;
    *(v2 + 528) = v13;
    v15 = v3[4];
    v16 = v3[5];
    v17 = v3[7];
    *(v2 + 608) = v3[6];
    *(v2 + 624) = v17;
    *(v2 + 576) = v15;
    *(v2 + 592) = v16;
    v18 = *v3;
    v19 = v3[1];
    v20 = v3[3];
    *(v2 + 416) = v3[2];
    *(v2 + 432) = v20;
    *(v2 + 384) = v18;
    *(v2 + 400) = v19;
    v21 = v3[4];
    v22 = v3[5];
    v23 = v3[7];
    *(v2 + 480) = v3[6];
    *(v2 + 496) = v23;
    *(v2 + 448) = v21;
    *(v2 + 464) = v22;
    v3[2] = v11;
    v3[3] = v10;
    *v3 = v7;
    v3[1] = v6;
    v24 = *(v2 + 192);
    v25 = *(v2 + 208);
    v26 = *(v2 + 240);
    v3[6] = *(v2 + 224);
    v3[7] = v26;
    v3[4] = v24;
    v3[5] = v25;
    outlined init with copy of DOCGridLayout.Spec?(v2 + 640, v2 + 768, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
    outlined init with copy of DOCGridLayout.Spec?(v2 + 512, v2 + 768, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
    outlined destroy of CharacterSet?(v2 + 384, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
    v27 = *(v2 + 592);
    v62 = *(v2 + 576);
    v63 = v27;
    v28 = *(v2 + 624);
    v64 = *(v2 + 608);
    v65 = v28;
    v29 = *(v2 + 528);
    v58 = *(v2 + 512);
    v59 = v29;
    v30 = *(v2 + 560);
    v60 = *(v2 + 544);
    v61 = v30;
    DOCItemCollectionCellContent.listItemLayoutTraits.didset(&v58);
    outlined destroy of CharacterSet?(v2 + 512, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
    v31 = *(v2 + 208);
    *(v2 + 320) = *(v2 + 192);
    *(v2 + 336) = v31;
    v32 = *(v2 + 240);
    *(v2 + 352) = *(v2 + 224);
    *(v2 + 368) = v32;
    v33 = *(v2 + 144);
    *(v2 + 256) = *(v2 + 128);
    *(v2 + 272) = v33;
    v34 = *(v2 + 176);
    *(v2 + 288) = *(v2 + 160);
    *(v2 + 304) = v34;
    v35 = v2 + 256;
  }

  else
  {
    v36 = v3[3];
    v38 = *v3;
    v37 = v3[1];
    *(v2 + 416) = v3[2];
    *(v2 + 432) = v36;
    *(v2 + 384) = v38;
    *(v2 + 400) = v37;
    v39 = v3[7];
    v41 = v3[4];
    v40 = v3[5];
    *(v2 + 480) = v3[6];
    *(v2 + 496) = v39;
    *(v2 + 448) = v41;
    *(v2 + 464) = v40;
    v42 = v3[3];
    v44 = *v3;
    v43 = v3[1];
    *(v2 + 288) = v3[2];
    *(v2 + 304) = v42;
    *(v2 + 256) = v44;
    *(v2 + 272) = v43;
    v45 = v3[7];
    v47 = v3[4];
    v46 = v3[5];
    *(v2 + 352) = v3[6];
    *(v2 + 368) = v45;
    *(v2 + 320) = v47;
    *(v2 + 336) = v46;
    v48 = *(v2 + 128);
    v49 = *(v2 + 144);
    v50 = *(v2 + 176);
    v3[2] = *(v2 + 160);
    v3[3] = v50;
    *v3 = v48;
    v3[1] = v49;
    v51 = *(v2 + 192);
    v52 = *(v2 + 208);
    v53 = *(v2 + 240);
    v3[6] = *(v2 + 224);
    v3[7] = v53;
    v3[4] = v51;
    v3[5] = v52;
    outlined init with copy of DOCGridLayout.Spec?(v2 + 384, v2 + 512, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
    outlined destroy of CharacterSet?(v2 + 256, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
    v54 = *(v2 + 464);
    v62 = *(v2 + 448);
    v63 = v54;
    v55 = *(v2 + 496);
    v64 = *(v2 + 480);
    v65 = v55;
    v56 = *(v2 + 400);
    v58 = *(v2 + 384);
    v59 = v56;
    v57 = *(v2 + 432);
    v60 = *(v2 + 416);
    v61 = v57;
    DOCItemCollectionCellContent.listItemLayoutTraits.didset(&v58);
    v35 = v2 + 384;
  }

  outlined destroy of CharacterSet?(v35, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);

  free(v2);
}

double DOCItemCollectionCellContent.minimumRowHeight.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_minimumRowHeight;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionCellContent.minimumRowHeight.setter(double a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_minimumRowHeight;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  if (v4 != a1)
  {
    v5 = MEMORY[0x277D85000];
    v7 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))(v9);
    if ((*v6 & 0x200) == 0)
    {
      *v6 |= 0x200uLL;
    }

    v8 = v7(v9, 0);
    (*((*v5 & *v1) + 0xBB0))(v8);
  }
}

void (*DOCItemCollectionCellContent.minimumRowHeight.modify(uint64_t *a1))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_minimumRowHeight;
  *(v3 + 64) = v1;
  *(v3 + 72) = v5;
  swift_beginAccess();
  *(v4 + 56) = *(v1 + v5);
  return DOCItemCollectionCellContent.minimumRowHeight.modify;
}

void DOCItemCollectionCellContent.minimumRowHeight.modify(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  v3 = *(*a1 + 72);
  v5 = *(v4 + v3);
  *(v4 + v3) = v2;
  if (v2 != v5)
  {
    v7 = (*((*MEMORY[0x277D85000] & *v1[8]) + 0x2D0))(v1);
    if ((*v6 & 0x200) == 0)
    {
      *v6 |= 0x200uLL;
    }

    v8 = v1[8];
    v9 = v7(v1, 0);
    (*((*MEMORY[0x277D85000] & *v8) + 0xBB0))(v9);
  }

  free(v1);
}

void DOCItemCollectionCellContent.appearance.didset(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v23[-v6 - 8];
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_appearance;
  swift_beginAccess();
  v9 = *(v2 + v8);
  if (v9)
  {
    if (!a1 || (type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCAppearance, 0x277D05EA0), v10 = v9, v11 = a1, v12 = static NSObject.== infix(_:_:)(), v10, v11, (v12 & 1) == 0) && *(v2 + v8))
    {
      v13 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
      *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

      v14 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
      *v14 = 0;
      v14[1] = 0;

      v15 = type metadata accessor for DOCFastLabel.LabelInformation(0);
      (*(*(v15 - 8) + 56))(v7, 1, 1, v15);
      v16 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
      swift_beginAccess();
      outlined assign with take of IndexPath?(v7, v2 + v16, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
      swift_endAccess();
      v17 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
      *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

      v18 = MEMORY[0x277D85000];
      v20 = (*((*MEMORY[0x277D85000] & *v2) + 0x2D0))(v23);
      if ((*v19 & 1) == 0)
      {
        *v19 |= 1uLL;
      }

      v21 = v20(v23, 0);
      (*((*v18 & *v2) + 0xBB0))(v21);
    }
  }
}

void *DOCItemCollectionCellContent.appearance.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_appearance;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void (*DOCItemCollectionCellContent.appearance.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_appearance;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCItemCollectionCellContent.appearance.modify;
}

void DOCItemCollectionCellContent.traitCollection.setter(void *a1)
{
  v2 = v1;
  v48 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v47 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd, &_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMR);
  MEMORY[0x28223BE20](v48, v7);
  v9 = &v47 - v8;
  if (v10)
  {
    if (one-time initialization token for displayScale != -1)
    {
      swift_once();
    }

    v49 = static UITraitCollection.Traits.displayScale;
    v50 = qword_27EEE9C90;

    v11 = UITraitCollection.doc_hasSpecified(_:)(&v49);

    if (v11)
    {
      [v48 displayScale];
      v13 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__traitCollection;
      v14 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__traitCollection);
      if (v14 && (v15 = v12, [v14 displayScale], v15 == v16) && (v17 = objc_msgSend(v48, sel_userInterfaceStyle), (v18 = *(v2 + v13)) != 0) && v17 == objc_msgSend(v18, sel_userInterfaceStyle))
      {
        v19 = *(v2 + v13);
        v20 = v19;
        v52.value.super.isa = v19;
        v21 = UITraitCollection.traitCollectionTintEqual(_:)(v52);
      }

      else
      {
        v21 = 1;
      }

      v23 = v48;
      v24 = *(v2 + v13);
      *(v2 + v13) = v48;
      v25 = v23;

      UITraitCollection._ifColorForIconFolderTintComponents.getter();
      v26 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_folderTintComponents;
      swift_beginAccess();
      outlined assign with take of IndexPath?(v9, v2 + v26, &_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd, &_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMR);
      swift_endAccess();
      v27 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__date);
      *v27 = 0;
      v27[1] = 0;

      v28 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
      *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

      v29 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableSubtitle);
      *v29 = 0;
      v29[1] = 0;

      if (v21)
      {
        v30 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail);
        *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail) = 0;
        DOCItemCollectionCellContent._thumbnail.didset(v30);
        swift_unknownObjectRelease();
      }

      v31 = type metadata accessor for DOCFastLabel.LabelInformation(0);
      (*(*(v31 - 8) + 56))(v6, 1, 1, v31);
      v32 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
      swift_beginAccess();
      outlined assign with take of IndexPath?(v6, v2 + v32, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
      swift_endAccess();
      v33 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
      *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

      v34 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shareString);
      *v34 = 0;
      v34[1] = 0;

      v35 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeCompactWidthTextTableSubtitle);
      *v35 = 0;
      v35[1] = 0;

      v36 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeRegularWidthTextTableSubtitle);
      *v36 = 0;
      v36[1] = 0;

      v37 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitle);
      *v37 = 0;
      v37[1] = 0;

      *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitleColumnTypes) = 0;

      v38 = MEMORY[0x277D85000];
      v39 = *((*MEMORY[0x277D85000] & *v2) + 0x2D0);
      v41 = v39(&v49);
      if ((*v40 & 2) == 0)
      {
        *v40 |= 2uLL;
      }

      v41(&v49, 0);
      v43 = v39(&v49);
      if ((*v42 & 0x100) == 0)
      {
        *v42 |= 0x100uLL;
      }

      v43(&v49, 0);
      v45 = v39(&v49);
      if ((*v44 & 0x80) == 0)
      {
        *v44 |= 0x80uLL;
      }

      v46 = v45(&v49, 0);
      (*((*v38 & *v2) + 0xBB0))(v46);
    }

    else
    {
      v22 = v48;
    }
  }
}

void *DOCItemCollectionCellContent.traitCollection.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__traitCollection);
  v2 = v1;
  return v1;
}

void (*DOCItemCollectionCellContent.traitCollection.modify(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__traitCollection);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return DOCItemCollectionCellContent.traitCollection.modify;
}

void DOCItemCollectionCellContent.traitCollection.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    DOCItemCollectionCellContent.traitCollection.setter(v2);
  }

  else
  {
    DOCItemCollectionCellContent.traitCollection.setter(*a1);
  }
}

uint64_t DOCItemCollectionCellContent.preferLastUsedDate.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_preferLastUsedDate;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionCellContent.preferLastUsedDate.setter(int a1)
{
  v3 = a1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_preferLastUsedDate;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v3 != 2 && (v5 == 2 || ((v5 ^ a1) & 1) != 0))
  {
    v6 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__date);
    *v6 = 0;
    v6[1] = 0;

    (*((*MEMORY[0x277D85000] & *v1) + 0xBB0))(v7);
  }
}

void (*DOCItemCollectionCellContent.preferLastUsedDate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_preferLastUsedDate;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionCellContent.preferLastUsedDate.modify;
}

void DOCItemCollectionCellContent.preferLastUsedDate.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  if (a2)
  {
    DOCItemCollectionCellContent.preferLastUsedDate.setter(v3);
  }

  else
  {
    v5 = v2[3];
    v4 = v2[4];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != 2 && (v6 == 2 || ((v6 ^ v3) & 1) != 0))
    {
      v7 = v2[3];
      v8 = (v7 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__date);
      *v8 = 0;
      v8[1] = 0;

      (*((*MEMORY[0x277D85000] & *v7) + 0xBB0))(v9);
    }
  }

  free(v2);
}

uint64_t DOCItemCollectionCellContent.useSystemHighlightStyle.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_useSystemHighlightStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionCellContent.useSystemHighlightStyle.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_useSystemHighlightStyle;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionCellContent.roundedCorners.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_roundedCorners;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionCellContent.roundedCorners.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_roundedCorners;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void DOCItemCollectionCellContent.node.didset()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v72[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v72[-v8];
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_node;
  swift_beginAccess();
  v11 = *(v1 + v10);
  if (!v11)
  {
    return;
  }

  v12 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sizeLock);
  swift_unknownObjectRetain();
  [v12 lock];
  v13 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__size);
  *v13 = 0;
  v13[1] = 0;

  [v12 unlock];
  v14 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shareString);
  *v14 = 0;
  v14[1] = 0;

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tags) = 0;

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__isFolder) = 2;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__isExcludedFromSync) = 2;
  v15 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x8A0))(0);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showGridCircularProgressView) = 2;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showHorizontalProgressView) = 2;
  v16 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__date);
  *v16 = 0;
  v16[1] = 0;

  v17 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__kind);
  *v17 = 0;
  v17[1] = 0;

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__statusAppearance) = 10;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldShowItemStatusBadge) = 2;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldShowItemAccessStatusBadge) = 2;
  (*((*v15 & *v1) + 0x920))(2);
  v18 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail) = 0;
  DOCItemCollectionCellContent._thumbnail.didset(v18);
  swift_unknownObjectRelease();
  v19 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
  *v19 = 0;
  v19[1] = 0;

  v20 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
  v21 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v9, v1 + v21, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  swift_endAccess();
  v22 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

  v23 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

  v24 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableSubtitle);
  *v24 = 0;
  v24[1] = 0;

  v25 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeCompactWidthTextTableSubtitle);
  *v25 = 0;
  v25[1] = 0;

  v26 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeRegularWidthTextTableSubtitle);
  *v26 = 0;
  v26[1] = 0;

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__listAccessory) = 2;
  v27 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__itemDecorationAccessType;
  *v27 = 0;
  v27[8] = 1;
  v28 = type metadata accessor for Date();
  v29 = *(*(v28 - 8) + 56);
  v29(v5, 1, 1, v28);
  v30 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__doc_creationDate;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v5, v1 + v30, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  swift_endAccess();
  v29(v5, 1, 1, v28);
  v31 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__doc_lastUsedDate;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v5, v1 + v31, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  swift_endAccess();
  v29(v5, 1, 1, v28);
  v32 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__modificationDate;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v5, v1 + v32, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  swift_endAccess();
  v29(v5, 1, 1, v28);
  v33 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__dateAdded;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v5, v1 + v33, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  swift_endAccess();
  v34 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitle);
  *v34 = 0;
  v34[1] = 0;

  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitleColumnTypes) = 0;

  v36 = (*((*v15 & *v1) + 0x610))(v35);
  if (v37)
  {
    v38 = v36;
    v39 = v37;
    v40 = [v11 filename];
    if (!v40)
    {
      __break(1u);
      return;
    }

    v41 = v40;
    v42 = [v40 stringByDeletingPathExtension];

    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    if (v38 == v43 && v39 == v45)
    {
    }

    else
    {
      v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v46 & 1) == 0)
      {
        (*((*v15 & *v1) + 0x600))(0, 0);
        v36 = (*((*v15 & *v1) + 0x618))(0, 0);
      }
    }
  }

  v47 = (*((*v15 & *v1) + 0x568))(v36);
  if ((*((*v15 & *v1) + 0x3D0))())
  {
    ObjectType = swift_getObjectType();
    DOCNode.debugUIScenario.getter(ObjectType, v73);
    swift_unknownObjectRelease();
    if (v73[0] != 1)
    {
      v49 = v74;
      v50 = v74;
      outlined destroy of CharacterSet?(v73, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMR);
      if (v49)
      {

        goto LABEL_32;
      }
    }
  }

  if ([v11 isExternalDownloadPlaceholder])
  {
    v51 = [v11 downloadingProgress];
    if (v51)
    {
      goto LABEL_25;
    }
  }

  if ([v11 isCloudItem] && objc_msgSend(v11, sel_isDownloading))
  {
    v52 = [v11 downloadingError];
    if (v52)
    {
    }

    else
    {
      v51 = [v11 downloadingProgress];
      if (v51)
      {
        goto LABEL_25;
      }
    }
  }

  if ([v11 isCloudItem] && objc_msgSend(v11, sel_isUploading))
  {
    v53 = [v11 uploadingError];
    if (v53)
    {

      goto LABEL_23;
    }

    v51 = [v11 uploadingProgress];
    if (!v51)
    {
      goto LABEL_23;
    }

LABEL_25:
    v50 = v51;

    v49 = v50;
    goto LABEL_32;
  }

LABEL_23:
  if ([v11 isCopying])
  {
    v51 = [v11 copyingProgress];
    if (v51)
    {
      goto LABEL_25;
    }
  }

  if ([v11 isActionable])
  {
    v54 = (*((*v15 & *v1) + 0x538))();
    if (v54)
    {

      if (!v47)
      {
        goto LABEL_36;
      }

LABEL_31:
      v50 = v47;
      v49 = v47;
LABEL_32:
      if ([v50 isFinished])
      {
        v56 = 0;
      }

      else
      {
        v57 = v49;
        v56 = v49;
      }

      goto LABEL_37;
    }
  }

  else
  {
    v55 = [objc_opt_self() progressWithTotalUnitCount_];

    v47 = v55;
    if (v55)
    {
      goto LABEL_31;
    }
  }

LABEL_36:
  v56 = 0;
  v49 = 0;
LABEL_37:
  (*((*v15 & *v1) + 0x570))(v56);
  v58 = *((*v15 & *v1) + 0x2D0);
  v60 = v58(v72);
  if ((*v59 & 4) == 0)
  {
    *v59 |= 4uLL;
  }

  v60(v72, 0);
  v62 = v58(v72);
  if ((*v61 & 1) == 0)
  {
    *v61 |= 1uLL;
  }

  v62(v72, 0);
  v64 = v58(v72);
  if ((*v63 & 0x80) == 0)
  {
    *v63 |= 0x80uLL;
  }

  v64(v72, 0);
  v66 = v58(v72);
  if ((*v65 & 0x100) == 0)
  {
    *v65 |= 0x100uLL;
  }

  v66(v72, 0);
  v68 = v58(v72);
  if ((*v67 & 0x1000) == 0)
  {
    *v67 |= 0x1000uLL;
  }

  v68(v72, 0);
  v70 = v58(v72);
  if ((*v69 & 0x2000) == 0)
  {
    *v69 |= 0x2000uLL;
  }

  v71 = v70(v72, 0);
  (*((*v15 & *v1) + 0xBB0))(v71);
  swift_unknownObjectRelease();
}

uint64_t DOCItemCollectionCellContent.node.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_node;
  swift_beginAccess();
  *(v1 + v3) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  DOCItemCollectionCellContent.node.didset();
  return swift_unknownObjectRelease();
}

void (*DOCItemCollectionCellContent.node.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCItemCollectionCellContent.node.modify;
}

void DOCItemCollectionCellContent.node.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCItemCollectionCellContent.node.didset();
  }
}

uint64_t key path setter for DOCItemCollectionCellContent.sortingDescriptor : DOCItemCollectionCellContent(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v5 = *(a1 + 24);
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = v3;
  v9 = v5;
  v6 = *((*MEMORY[0x277D85000] & *v4) + 0x3F0);
  outlined copy of DOCItemSortDescriptor?(v8[0], v2, v3);
  return v6(v8);
}

void DOCItemCollectionCellContent.sortingDescriptor.getter(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_sortingDescriptor;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = *(v3 + 24);
  outlined copy of DOCItemSortDescriptor?(v4, v5, v6);
}

uint64_t DOCItemCollectionCellContent.sortingDescriptor.setter(__int128 *a1)
{
  v14 = *a1;
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_sortingDescriptor;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 1);
  v7 = *(v4 + 2);
  *v4 = v14;
  *(v4 + 2) = v2;
  v4[24] = v3;
  v8.n128_f64[0] = outlined consume of DOCItemSortDescriptor?(v5, v6, v7);
  v9 = MEMORY[0x277D85000];
  v11 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))(v15, v8);
  if ((*v10 & 0x200) == 0)
  {
    *v10 |= 0x200uLL;
  }

  v12 = v11(v15, 0);
  return (*((*v9 & *v1) + 0xBB0))(v12);
}

uint64_t (*DOCItemCollectionCellContent.sortingDescriptor.modify(uint64_t *a1))()
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
  *(v3 + 32) = v1;
  swift_beginAccess();
  return DOCItemCollectionCellContent.sortingDescriptor.modify;
}

void DOCItemCollectionCellContent.sortingDescriptor.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *v3[4]) + 0x2D0))(v3);
    if ((*v5 & 0x200) == 0)
    {
      *v5 |= 0x200uLL;
    }

    v7 = v3[4];
    v8 = v6(v3, 0);
    (*((*v4 & *v7) + 0xBB0))(v8);
  }

  free(v3);
}

uint64_t DOCItemCollectionCellContent.isInSearchMode.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isInSearchMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionCellContent.isInSearchMode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isInSearchMode;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void DOCItemCollectionCellContent.grouping.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_grouping;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void DOCItemCollectionCellContent.grouping.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_grouping;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t DOCItemCollectionCellContent.isParentItemShared.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isParentItemShared;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionCellContent.isParentItemShared.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isParentItemShared;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionCellContent.shouldPreserveSpaceForDisclosureButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_shouldPreserveSpaceForDisclosureButton;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionCellContent.shouldPreserveSpaceForDisclosureButton.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_shouldPreserveSpaceForDisclosureButton;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void DOCItemCollectionCellContent.isInCreateMode.didset(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v44[-v5 - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v44[-v9 - 8];
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isInCreateMode;
  swift_beginAccess();
  v12 = *(v1 + v11);
  if (v12 != 2 && (a1 == 2 || ((v12 ^ a1) & 1) != 0))
  {
    v13 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sizeLock);
    [v13 lock];
    v14 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__size);
    *v14 = 0;
    v14[1] = 0;

    [v13 unlock];
    v15 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shareString);
    *v15 = 0;
    v15[1] = 0;

    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tags) = 0;

    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__isFolder) = 2;
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__isExcludedFromSync) = 2;
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showGridCircularProgressView) = 2;
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showHorizontalProgressView) = 2;
    v16 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__date);
    *v16 = 0;
    v16[1] = 0;

    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__statusAppearance) = 10;
    v17 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v1) + 0x920))(2);
    v18 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail) = 0;
    DOCItemCollectionCellContent._thumbnail.didset(v18);
    swift_unknownObjectRelease();
    v19 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
    *v19 = 0;
    v19[1] = 0;

    v20 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
    v21 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v10, v1 + v21, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
    swift_endAccess();
    v22 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

    v23 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v24 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableSubtitle);
    *v24 = 0;
    v24[1] = 0;

    v25 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeCompactWidthTextTableSubtitle);
    *v25 = 0;
    v25[1] = 0;

    v26 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeRegularWidthTextTableSubtitle);
    *v26 = 0;
    v26[1] = 0;

    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__listAccessory) = 2;
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDim) = 2;
    v27 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__itemDecorationAccessType;
    *v27 = 0;
    v27[8] = 1;
    v28 = type metadata accessor for Date();
    v29 = *(*(v28 - 8) + 56);
    v29(v6, 1, 1, v28);
    v30 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__doc_creationDate;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v1 + v30, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
    swift_endAccess();
    v29(v6, 1, 1, v28);
    v31 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__doc_lastUsedDate;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v1 + v31, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
    swift_endAccess();
    v29(v6, 1, 1, v28);
    v32 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__modificationDate;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v1 + v32, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
    swift_endAccess();
    v29(v6, 1, 1, v28);
    v33 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__dateAdded;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v1 + v33, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
    swift_endAccess();
    v34 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitle);
    *v34 = 0;
    v34[1] = 0;

    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitleColumnTypes) = 0;

    v35 = *((*v17 & *v1) + 0x2D0);
    v37 = v35(v44);
    if ((*v36 & 1) == 0)
    {
      *v36 |= 1uLL;
    }

    v37(v44, 0);
    v39 = v35(v44);
    if ((*v38 & 0x100) == 0)
    {
      *v38 |= 0x100uLL;
    }

    v39(v44, 0);
    v41 = v35(v44);
    if ((*v40 & 8) == 0)
    {
      *v40 |= 8uLL;
    }

    v42 = v41(v44, 0);
    (*((*v17 & *v1) + 0xBB0))(v42);
  }
}

uint64_t DOCItemCollectionCellContent.isInCreateMode.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isInCreateMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*DOCItemCollectionCellContent.isInCreateMode.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isInCreateMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionCellContent.isInCreateMode.modify;
}

uint64_t DOCItemCollectionCellContent.itemsOrigin.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_itemsOrigin;
  swift_beginAccess();
  return *v1;
}

void DOCItemCollectionCellContent.itemsOrigin.setter(uint64_t a1, char a2)
{
  v5 = a2 & 1;
  v6 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_itemsOrigin;
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[8];
  *v6 = a1;
  v6[8] = v5;
  v9 = v7 != a1;
  if (a2 & 1) == 0 && ((v8 | v9))
  {
    v10 = MEMORY[0x277D85000];
    v12 = (*((*MEMORY[0x277D85000] & *v2) + 0x2D0))(v14);
    if ((*v11 & 1) == 0)
    {
      *v11 |= 1uLL;
    }

    v13 = v12(v14, 0);
    (*((*v10 & *v2) + 0xBB0))(v13);
  }
}

void (*DOCItemCollectionCellContent.itemsOrigin.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_itemsOrigin;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 8);
  *(v4 + 56) = *v6;
  *(v4 + 64) = v7;
  return DOCItemCollectionCellContent.itemsOrigin.modify;
}

void DOCItemCollectionCellContent.itemsOrigin.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = (*(*a1 + 72) + *(*a1 + 80));
  v5 = *(*a1 + 64);
  v6 = *v4;
  v7 = *(v4 + 8);
  *v4 = v3;
  *(v4 + 8) = v5;
  v8 = (v5 ^ 1) & (v7 | (v3 != v6));
  if (a2)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v8)
  {
    goto LABEL_8;
  }

  v10 = (*((*MEMORY[0x277D85000] & *v2[9]) + 0x2D0))(v2);
  if ((*v9 & 1) == 0)
  {
    *v9 |= 1uLL;
  }

  v11 = v2[9];
  v12 = v10(v2, 0);
  (*((*MEMORY[0x277D85000] & *v11) + 0xBB0))(v12);
LABEL_8:

  free(v2);
}

void DOCItemCollectionCellContent.isSelecting.didset(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v18[-v5 - 8];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isSelecting;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8 != 2 && (a1 == 2 || ((v8 ^ a1) & 1) != 0))
  {
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDim) = 2;
    v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v10 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v1 + v11, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
    swift_endAccess();
    v12 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

    v13 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v1) + 0x920))(2);
    v15 = (*((*v13 & *v1) + 0x2D0))(v18);
    if ((*v14 & 8) == 0)
    {
      *v14 |= 8uLL;
    }

    v16 = v15(v18, 0);
    (*((*v13 & *v1) + 0xBB0))(v16);
  }
}

uint64_t DOCItemCollectionCellContent.isSelecting.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isSelecting;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*DOCItemCollectionCellContent.isSelecting.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isSelecting;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionCellContent.isSelecting.modify;
}

uint64_t key path setter for DOCItemCollectionCellContent.titleHighlightIndexSet : DOCItemCollectionCellContent(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v9 - v6;
  outlined init with copy of DOCGridLayout.Spec?(a1, &v9 - v6, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  return (*((*MEMORY[0x277D85000] & **a2) + 0x4B0))(v7);
}

id DOCItemCollectionCellContent.titleHighlightIndexSet.didset(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v44 = &v42[-v6];
  v7 = type metadata accessor for IndexSet();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v45 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v42[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSg_ADtMd, &_s10Foundation8IndexSetVSg_ADtMR);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v42[-v18];
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_titleHighlightIndexSet;
  swift_beginAccess();
  v21 = *(v16 + 56);
  outlined init with copy of DOCGridLayout.Spec?(v2 + v20, v19, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  outlined init with copy of DOCGridLayout.Spec?(a1, &v19[v21], &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  v46 = v8;
  v22 = *(v8 + 48);
  if (v22(v19, 1, v7) == 1)
  {
    if (v22(&v19[v21], 1, v7) == 1)
    {
      return outlined destroy of CharacterSet?(v19, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
    }
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(v19, v14, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
    if (v22(&v19[v21], 1, v7) != 1)
    {
      v25 = v45;
      (*(v46 + 32))(v45, &v19[v21], v7);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, MEMORY[0x277CC9A28], MEMORY[0x277CC9A40]);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      v26 = *(v46 + 8);
      v26(v25, v7);
      v26(v14, v7);
      result = outlined destroy of CharacterSet?(v19, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
      if (v43)
      {
        return result;
      }

      goto LABEL_7;
    }

    (*(v46 + 8))(v14, v7);
  }

  outlined destroy of CharacterSet?(v19, &_s10Foundation8IndexSetVSg_ADtMd, &_s10Foundation8IndexSetVSg_ADtMR);
LABEL_7:
  result = [objc_opt_self() typeToFocusIsSupported];
  if (result)
  {
    if (v22(v2 + v20, 1, v7))
    {
      v24 = 0;
    }

    else
    {
      v27 = v46;
      v28 = v2 + v20;
      v29 = v45;
      (*(v46 + 16))(v45, v28, v7);
      v24 = IndexSet.isEmpty.getter();
      (*(v27 + 8))(v29, v7);
    }

    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDim) = v24 & 1;
    v30 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v31 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    v32 = v44;
    (*(*(v31 - 8) + 56))(v44, 1, 1, v31);
    v33 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v32, v2 + v33, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
    swift_endAccess();
    v34 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

    v35 = MEMORY[0x277D85000];
    v36 = *((*MEMORY[0x277D85000] & *v2) + 0x2D0);
    v38 = v36(v47);
    if ((*v37 & 1) == 0)
    {
      *v37 |= 1uLL;
    }

    v38(v47, 0);
    v40 = v36(v47);
    if ((*v39 & 8) == 0)
    {
      *v39 |= 8uLL;
    }

    v41 = v40(v47, 0);
    return (*((*v35 & *v2) + 0xBB0))(v41);
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.titleHighlightIndexSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_titleHighlightIndexSet;
  swift_beginAccess();
  return outlined init with copy of DOCGridLayout.Spec?(v1 + v3, a1, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
}

uint64_t DOCItemCollectionCellContent.titleHighlightIndexSet.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9[-v5];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_titleHighlightIndexSet;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v1 + v7, v6, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  swift_beginAccess();
  outlined assign with copy of IndexSet?(a1, v1 + v7);
  swift_endAccess();
  DOCItemCollectionCellContent.titleHighlightIndexSet.didset(v6);
  outlined destroy of CharacterSet?(a1, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  return outlined destroy of CharacterSet?(v6, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
}

void (*DOCItemCollectionCellContent.titleHighlightIndexSet.modify(uint64_t *a1))(char **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_titleHighlightIndexSet;
  v5[12] = v7;
  v5[13] = v9;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v1 + v9, v8, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  return DOCItemCollectionCellContent.titleHighlightIndexSet.modify;
}

void DOCItemCollectionCellContent.titleHighlightIndexSet.modify(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = *(*a1 + 13);
  v5 = *(*a1 + 10);
  v6 = *(*a1 + 11);
  v7 = *(*a1 + 9);
  if (a2)
  {
    outlined init with copy of DOCGridLayout.Spec?(*(*a1 + 12), v6, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
    outlined init with copy of DOCGridLayout.Spec?(v7 + v4, v5, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
    swift_beginAccess();
    outlined assign with copy of IndexSet?(v6, v7 + v4);
    swift_endAccess();
    DOCItemCollectionCellContent.titleHighlightIndexSet.didset(v5);
    outlined destroy of CharacterSet?(v5, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  }

  else
  {
    outlined init with copy of DOCGridLayout.Spec?(v7 + v4, v6, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
    swift_beginAccess();
    outlined assign with copy of IndexSet?(v3, v7 + v4);
    swift_endAccess();
    DOCItemCollectionCellContent.titleHighlightIndexSet.didset(v6);
  }

  outlined destroy of CharacterSet?(v6, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  outlined destroy of CharacterSet?(v3, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  free(v3);
  free(v6);
  free(v5);

  free(v2);
}

uint64_t DOCItemCollectionCellContent.isFocusing.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isFocusing;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionCellContent.isFocusing.setter(char a1)
{
  v3 = a1 & 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v19[-v6 - 8];
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isFocusing;
  swift_beginAccess();
  v9 = *(v1 + v8);
  *(v1 + v8) = a1;
  if (v9 != v3)
  {
    v10 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v11 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
    v12 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v7, v1 + v12, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
    swift_endAccess();
    v13 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

    v14 = MEMORY[0x277D85000];
    v16 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))(v19);
    if ((*v15 & 0x10) == 0)
    {
      *v15 |= 0x10uLL;
    }

    v17 = v16(v19, 0);
    (*((*v14 & *v1) + 0xBB0))(v17);
  }
}

void (*DOCItemCollectionCellContent.isFocusing.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 80) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isFocusing;
  *(v5 + 88) = v7;
  *(v5 + 96) = v8;
  swift_beginAccess();
  *(v5 + 104) = *(v1 + v8);
  return DOCItemCollectionCellContent.isFocusing.modify;
}

void DOCItemCollectionCellContent.isFocusing.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v4 = v2[10];
  if (a2)
  {
    v5 = v2[11];
    DOCItemCollectionCellContent.isFocusing.setter(v3);
  }

  else
  {
    v6 = v2[12];
    v7 = *(v4 + v6);
    *(v4 + v6) = v3;
    if (v3 != v7)
    {
      v9 = v2[10];
      v8 = v2[11];
      v10 = *(v9 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
      *(v9 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

      v11 = type metadata accessor for DOCFastLabel.LabelInformation(0);
      (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
      v12 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
      swift_beginAccess();
      outlined assign with take of IndexPath?(v8, v9 + v12, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
      swift_endAccess();
      v13 = *(v9 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
      *(v9 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

      v14 = MEMORY[0x277D85000];
      v16 = (*((*MEMORY[0x277D85000] & *v9) + 0x2D0))(v2);
      if ((*v15 & 0x10) == 0)
      {
        *v15 |= 0x10uLL;
      }

      v17 = v2[10];
      v18 = v16(v2, 0);
      (*((*v14 & *v17) + 0xBB0))(v18);
    }

    v5 = v2[11];
  }

  free(v5);

  free(v2);
}

uint64_t DOCItemCollectionCellContent.isDropping.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isDropping;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionCellContent.isDropping.setter(int a1)
{
  v3 = a1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isDropping;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v3 != 2 && (v5 == 2 || ((v5 ^ a1) & 1) != 0))
  {
    v6 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))(v10);
    if ((*v7 & 0x800) == 0)
    {
      *v7 |= 0x800uLL;
    }

    v9 = v8(v10, 0);
    (*((*v6 & *v1) + 0xBB0))(v9);
  }
}

void (*DOCItemCollectionCellContent.isDropping.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isDropping;
  *(v3 + 56) = v1;
  *(v3 + 64) = v5;
  swift_beginAccess();
  *(v4 + 72) = *(v1 + v5);
  return DOCItemCollectionCellContent.isDropping.modify;
}

void DOCItemCollectionCellContent.isDropping.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  if (a2)
  {
    DOCItemCollectionCellContent.isDropping.setter(v3);
  }

  else
  {
    v5 = v2[7];
    v4 = v2[8];
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v3 != 2 && (v6 == 2 || ((v6 ^ v3) & 1) != 0))
    {
      v7 = MEMORY[0x277D85000];
      v9 = (*((*MEMORY[0x277D85000] & *v2[7]) + 0x2D0))(v2);
      if ((*v8 & 0x800) == 0)
      {
        *v8 |= 0x800uLL;
      }

      v10 = v2[7];
      v11 = v9(v2, 0);
      (*((*v7 & *v10) + 0xBB0))(v11);
    }
  }

  free(v2);
}

void DOCItemCollectionCellContent.isPickable.didset(int a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v21[-v5 - 8];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isPickable;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8 != 2 && (a1 == 2 || ((v8 ^ a1) & 1) != 0))
  {
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDim) = 2;
    v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v10 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v10 - 8) + 56))(v6, 1, 1, v10);
    v11 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v1 + v11, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
    swift_endAccess();
    v12 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

    v13 = MEMORY[0x277D85000];
    v14 = *((*MEMORY[0x277D85000] & *v1) + 0x2D0);
    v16 = v14(v21);
    if ((*v15 & 0x20) == 0)
    {
      *v15 |= 0x20uLL;
    }

    v16(v21, 0);
    v18 = v14(v21);
    if ((*v17 & 8) == 0)
    {
      *v17 |= 8uLL;
    }

    v19 = v18(v21, 0);
    (*((*v13 & *v1) + 0xBB0))(v19);
  }
}

uint64_t DOCItemCollectionCellContent.isPickable.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isPickable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DOCItemCollectionCellContent.isInCreateMode.setter(char a1, uint64_t *a2, uint64_t (*a3)(uint64_t))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  return a3(v7);
}

void (*DOCItemCollectionCellContent.isPickable.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isPickable;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCItemCollectionCellContent.isPickable.modify;
}

void DOCItemCollectionCellContent.isInCreateMode.modify(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v3 = *a1;
  v5 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v7 = *(v5 + v4);
  *(v5 + v4) = v6;
  a3(v7, a2);

  free(v3);
}

uint64_t DOCItemCollectionCellContent.canBecomeSelectable.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_canBecomeSelectable;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionCellContent.canBecomeSelectable.setter(int a1)
{
  v3 = a1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_canBecomeSelectable;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v3 != 2 && (v5 == 2 || ((v5 ^ a1) & 1) != 0))
  {
    v6 = MEMORY[0x277D85000];
    v7 = *((*MEMORY[0x277D85000] & *v1) + 0x2D0);
    v9 = v7(v13);
    if ((*v8 & 1) == 0)
    {
      *v8 |= 1uLL;
    }

    v9(v13, 0);
    v11 = v7(v13);
    if ((*v10 & 8) == 0)
    {
      *v10 |= 8uLL;
    }

    v12 = v11(v13, 0);
    (*((*v6 & *v1) + 0xBB0))(v12);
  }
}

void (*DOCItemCollectionCellContent.canBecomeSelectable.modify(uint64_t *a1))(uint64_t a1)
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
  *(v3 + 24) = v1;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_canBecomeSelectable;
  swift_beginAccess();
  *(v4 + 32) = *(v1 + v5);
  return DOCItemCollectionCellContent.canBecomeSelectable.modify;
}

void DOCItemCollectionCellContent.canBecomeSelectable.modify(uint64_t a1)
{
  v1 = *a1;
  DOCItemCollectionCellContent.canBecomeSelectable.setter(*(*a1 + 32));

  free(v1);
}

void DOCItemCollectionCellContent.stackMetrics.didset(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_stackMetrics);
  swift_beginAccess();
  if ((LOBYTE(v5[2].f64[1]) & 1) == 0 && ((v4 & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v5, *a1), vceqq_f64(v5[1], *(a1 + 16))))) & 1) == 0 || v5[2].f64[0] != v3))
  {
    v6 = MEMORY[0x277D85000];
    v8 = (*((*MEMORY[0x277D85000] & *v1) + 0x2D0))(v10);
    if ((*v7 & 0x400) == 0)
    {
      *v7 |= 0x400uLL;
    }

    v9 = v8(v10, 0);
    (*((*v6 & *v1) + 0xBB0))(v9);
  }
}

__n128 DOCItemCollectionCellContent.stackMetrics.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_stackMetrics;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  result = *v3;
  v7 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v7;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

__n128 DOCItemCollectionCellContent.stackMetrics.setter(__int128 *a1)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 40);
  v5 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_stackMetrics);
  swift_beginAccess();
  v6 = *(v5 + 4);
  v7 = *(v5 + 40);
  v9 = *a1;
  v8 = a1[1];
  *(v5 + 4) = v3;
  *(v5 + 40) = v4;
  v10 = *v5;
  v11 = v5[1];
  *v5 = v9;
  v5[1] = v8;
  v13[0] = v10;
  v13[1] = v11;
  v14 = v6;
  v15 = v7;
  DOCItemCollectionCellContent.stackMetrics.didset(v13);
  return result;
}

uint64_t (*DOCItemCollectionCellContent.stackMetrics.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_stackMetrics;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  v7 = *(v6 + 32);
  v8 = *(v6 + 40);
  v9 = *(v6 + 16);
  *v4 = *v6;
  *(v4 + 16) = v9;
  *(v4 + 32) = v7;
  *(v4 + 40) = v8;
  return DOCItemCollectionCellContent.stackMetrics.modify;
}

void DOCItemCollectionCellContent.stackMetrics.modify(_OWORD **a1)
{
  v1 = *a1;
  v2 = (*(*a1 + 9) + *(*a1 + 10));
  v3 = *(*a1 + 4);
  v4 = *(*a1 + 40);
  v6 = *v2;
  v5 = v2[1];
  v8 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + 40);
  v11 = (*a1)[1];
  *v2 = **a1;
  *(v2 + 1) = v11;
  v2[4] = v3;
  *(v2 + 40) = v4;
  v12[0] = v6;
  v12[1] = v5;
  v12[2] = v8;
  v12[3] = v7;
  v12[4] = v9;
  v13 = v10;
  DOCItemCollectionCellContent.stackMetrics.didset(v12);

  free(v1);
}

void DOCItemCollectionCellContent.loadingProgress.didset(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_loadingProgress;
  swift_beginAccess();
  v5 = *(v2 + v4);
  if (a1)
  {
    if (v5)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress, 0x277CCAC48);
      v6 = v5;
      v7 = a1;
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        return;
      }
    }
  }

  else if (!v5)
  {
    return;
  }

  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__statusAppearance) = 10;
  v9 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x920))(2);
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__listAccessory) = 2;
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showGridCircularProgressView) = 2;
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showHorizontalProgressView) = 2;
  v11 = (*((*v9 & *v2) + 0x2D0))(v16);
  if ((*v10 & 4) == 0)
  {
    *v10 |= 4uLL;
  }

  v11(v16, 0);
  v12 = *(v2 + v4);
  if (v12)
  {
    if ([v12 isFinished])
    {
      v12 = 0;
    }

    else
    {
      v13 = *(v2 + v4);
      v14 = v13;
      v12 = v13;
    }
  }

  v15 = (*((*v9 & *v2) + 0x570))(v12);
  (*((*v9 & *v2) + 0xBB0))(v15);
}

void *DOCItemCollectionCellContent.loadingProgress.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_loadingProgress;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionCellContent.appearance.setter(void *a1, uint64_t *a2, void (*a3)(void *))
{
  v6 = *a2;
  swift_beginAccess();
  v7 = *(v3 + v6);
  *(v3 + v6) = a1;
  v8 = a1;
  a3(v7);
}

void (*DOCItemCollectionCellContent.loadingProgress.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_loadingProgress;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCItemCollectionCellContent.loadingProgress.modify;
}

void DOCItemCollectionCellContent.appearance.modify(uint64_t a1, char a2, void (*a3)(void *))
{
  v5 = *a1;
  v7 = (*a1 + 24);
  v6 = *v7;
  v9 = *(*a1 + 32);
  v8 = *(*a1 + 40);
  v10 = *(v9 + v8);
  *(v9 + v8) = *v7;
  v11 = v6;
  v12 = v11;
  if (a2)
  {
    v13 = v11;
    a3(v10);

    v10 = *v7;
  }

  else
  {
    a3(v10);
  }

  free(v5);
}

Swift::Void __swiftcall DOCItemCollectionCellContent.clearCachedResources()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail) = 0;
  if (v2)
  {
    [v2 removeListener_];
    v3 = *(v0 + v1);
    if (v3)
    {
      [v3 addListener_];
    }

    swift_unknownObjectRelease();
  }
}

Swift::Void __swiftcall DOCItemCollectionCellContent.clearCachedTitles()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
  *v5 = 0;
  v5[1] = 0;

  v6 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v4, v0 + v7, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  swift_endAccess();
  v8 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;

  v9 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;
}

Swift::Void __swiftcall DOCItemCollectionCellContent.prepareForReuse()()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x570))(0);
  memset(v2, 0, sizeof(v2));
  v3 = 0;
  (*((*v1 & *v0) + 0x3F0))(v2);
  (*((*v1 & *v0) + 0x438))(0);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__statusAppearance) = 10;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showGridCircularProgressView) = 2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showHorizontalProgressView) = 2;
}

id DOCItemCollectionCellContent.__deallocating_deinit()
{
  DOCItemCollectionCellContent.stopObservingProgressIfNeeded()();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCItemCollectionCellContent(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DOCItemCollectionCellContent.observedProgress.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_observedProgress;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCItemCollectionCellContent.observedProgress.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_observedProgress;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (a1)
  {
    if (v4)
    {
      v5 = v4 == a1;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      *(v1 + v3) = a1;
      v6 = a1;
      goto LABEL_10;
    }
  }

  else if (!v4)
  {
    return;
  }

  v7 = v4;
  DOCItemCollectionCellContent.stopObservingProgressIfNeeded()();
  v8 = *(v1 + v3);
  *(v1 + v3) = a1;
  v6 = a1;

  if (!v4)
  {
    if (!a1)
    {
      return;
    }

    goto LABEL_14;
  }

LABEL_10:
  if (!a1 || v4 != a1)
  {
LABEL_14:
    v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x568))();
    if (v9)
    {
      v10 = v9;
      if (([v9 isFinished] & 1) == 0)
      {
        *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isObservingProgress) = 1;
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v11 = static DOCLog.UI;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_249B9A480;
        *(v12 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress, 0x277CCAC48);
        *(v12 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSProgress and conformance NSObject, &lazy cache variable for type metadata for NSProgress, 0x277CCAC48);
        *(v12 + 32) = v10;
        v13 = v10;
        v14 = static os_log_type_t.default.getter();
        os_log(_:dso:log:type:_:)("Progress: [CELL CONTENT] ADD fractionCompleted observer for: %{public}@", 71, 2, &dword_2493AC000, v11, v14, v12);

        v15 = MEMORY[0x24C1FAD20](0xD000000000000011, 0x8000000249BD68C0);
        [v13 addObserver:v1 forKeyPath:v15 options:1 context:&DOCItemCollectionCellObservationContext];

        v10 = MEMORY[0x24C1FAD20](0x6D72657465646E69, 0xED00006574616E69);
        [v13 addObserver:v1 forKeyPath:v10 options:1 context:&DOCItemCollectionCellObservationContext];

        v4 = v6;
        v6 = v13;
      }

      v4 = v6;
      v6 = v10;
    }
  }
}

void (*DOCItemCollectionCellContent.observedProgress.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  *(v3 + 32) = v1;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_observedProgress;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCItemCollectionCellContent.observedProgress.modify;
}

void DOCItemCollectionCellContent.observedProgress.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    DOCItemCollectionCellContent.observedProgress.setter(v3);
  }

  else
  {
    DOCItemCollectionCellContent.observedProgress.setter(*(*a1 + 24));
  }

  free(v2);
}

void *DOCItemCollectionCellContent.hasObservedProgress.getter()
{
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x568))();
  if (result)
  {
    v2 = result;
    v3 = [result isFinished];

    return (v3 ^ 1);
  }

  return result;
}

void DOCItemCollectionCellContent.stopObservingProgressIfNeeded()()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x568))();
  if (v1)
  {
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isObservingProgress) == 1)
    {
      v7 = v1;
      *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_isObservingProgress) = 0;
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v2 = static DOCLog.UI;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v3 = swift_allocObject();
      *(v3 + 16) = xmmword_249B9A480;
      *(v3 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress, 0x277CCAC48);
      *(v3 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSProgress and conformance NSObject, &lazy cache variable for type metadata for NSProgress, 0x277CCAC48);
      *(v3 + 32) = v7;
      v4 = v7;
      v5 = static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)("Progress: [CELL CONTENT] REMOVE fractionCompleted observer for: %{public}@", 74, 2, &dword_2493AC000, v2, v5, v3);

      v6 = MEMORY[0x24C1FAD20](0xD000000000000011, 0x8000000249BD68C0);
      [v4 removeObserver:v0 forKeyPath:v6 context:&DOCItemCollectionCellObservationContext];

      v8 = MEMORY[0x24C1FAD20](0x6D72657465646E69, 0xED00006574616E69);
      [v4 removeObserver:v0 forKeyPath:v8 context:&DOCItemCollectionCellObservationContext];

      v1 = v8;
    }
  }
}

void DOCItemCollectionCellContent.observeValue(forKeyPath:of:change:context:)(uint64_t a1, uint64_t a2, uint64_t a3, Class isa, Swift::Int *a5)
{
  if (a5 == &DOCItemCollectionCellObservationContext)
  {
    outlined init with copy of DOCGridLayout.Spec?(a3, &v22, &_sypSgMd, &_sypSgMR);
    v7 = swift_allocObject();
    v8 = v23;
    *(v7 + 16) = v22;
    *(v7 + 32) = v8;
    *(v7 + 48) = v5;
    v9 = v5;
    DOCRunInMainThread(_:)();

    return;
  }

  if (a2)
  {
    v12 = MEMORY[0x24C1FAD20](a1);
  }

  else
  {
    v12 = 0;
  }

  outlined init with copy of DOCGridLayout.Spec?(a3, &v22, &_sypSgMd, &_sypSgMR);
  v13 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    v19 = 0;
    if (!isa)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v14 = __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
  v15 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v14, v14);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v18, v16);
  v19 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v15 + 8))(v18, v13);
  __swift_destroy_boxed_opaque_existential_0(&v22);
  if (isa)
  {
LABEL_8:
    type metadata accessor for NSKeyValueChangeKey(0);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey, &protocol conformance descriptor for NSKeyValueChangeKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

LABEL_9:
  v20 = type metadata accessor for DOCItemCollectionCellContent(0);
  v21.receiver = v5;
  v21.super_class = v20;
  objc_msgSendSuper2(&v21, sel_observeValueForKeyPath_ofObject_change_context_, v12, v19, isa, a5);

  swift_unknownObjectRelease();
}

void closure #1 in DOCItemCollectionCellContent.observeValue(forKeyPath:of:change:context:)(uint64_t a1, void *a2)
{
  outlined init with copy of DOCGridLayout.Spec?(a1, v19, &_sypSgMd, &_sypSgMR);
  if (v20)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress, 0x277CCAC48);
    if (swift_dynamicCast())
    {
      v3 = v18;
      goto LABEL_6;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(v19, &_sypSgMd, &_sypSgMR);
  }

  v3 = 0;
LABEL_6:
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & *a2) + 0x538))();
  v6 = v5;
  if (v3)
  {
    if (v5)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSProgress, 0x277CCAC48);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        return;
      }

      goto LABEL_14;
    }

    v6 = v3;
  }

  else if (!v5)
  {
    return;
  }

LABEL_14:
  v8 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
  *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

  v9 = (a2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableSubtitle);
  *v9 = 0;
  v9[1] = 0;

  v10 = (a2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeCompactWidthTextTableSubtitle);
  *v10 = 0;
  v10[1] = 0;

  v11 = (a2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__largeRegularWidthTextTableSubtitle);
  *v11 = 0;
  v11[1] = 0;

  v12 = *((*v4 & *a2) + 0x2D0);
  v14 = v12(v19);
  if ((*v13 & 0x80) == 0)
  {
    *v13 |= 0x80uLL;
  }

  v14(v19, 0);
  v16 = v12(v19);
  if ((*v15 & 4) == 0)
  {
    *v15 |= 4uLL;
  }

  v17 = v16(v19, 0);
  (*((*v4 & *a2) + 0xBB0))(v17);
}

double DOCItemCollectionCellContent.thumbnailLoaded(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;

  swift_unknownObjectRetain();
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in DOCItemCollectionCellContent.thumbnailLoaded(_:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = MEMORY[0x277D85000];
    v6 = (*((*MEMORY[0x277D85000] & *Strong) + 0xA80))();
    if (v6)
    {
      v7 = v6;
      v8 = swift_unknownObjectRelease();
      if (v7 == a2)
      {
        v9 = (*((*v5 & *v4) + 0x368))(v8);
        if (v9)
        {
          v10 = v9;
          v11 = [v9 preferredContentSizeCategory];

          LOBYTE(v10) = UIContentSizeCategory.isAccessibilityCategory.getter();
          if (v10)
          {
            v12 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
            *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;
          }
        }

        v14 = (*((*v5 & *v4) + 0x2D0))(v16);
        if ((*v13 & 0x100) == 0)
        {
          *v13 |= 0x100uLL;
        }

        v15 = v14(v16, 0);
        (*((*v5 & *v4) + 0xBB0))(v15);
      }
    }
  }
}

uint64_t DOCItemCollectionCellContent.updateThumbnail(completion:)(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail;
  v7 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail);
  *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail) = 0;
  DOCItemCollectionCellContent._thumbnail.didset(v7);
  swift_unknownObjectRelease();
  DOCItemCollectionCellContent.fetchThumbnailIfNeeded()();
  v8 = *(v2 + v6);
  if (v8)
  {
    [swift_unknownObjectRetain() scheduleUpdateIfNeeded];
    v9 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_thumbnailUpdateLock;
    [*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_thumbnailUpdateLock) lock];
    if ([v8 hasFinishedTryingToFetchCorrectThumbnail])
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v10 = static DOCLog.UI;
      v11 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_249B9FA70;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12DOCThumbnail_pMd, &_sSo12DOCThumbnail_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
      v13 = swift_dynamicCast();
      v28 = (*((*MEMORY[0x277D85000] & *v2) + 0x3D0))(v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pSgMd, &_sSo7DOCNode_pSgMR);
      v14 = String.init<A>(describing:)();
      v16 = v15;
      *(v12 + 96) = MEMORY[0x277D837D0];
      *(v12 + 104) = lazy protocol witness table accessor for type String and conformance String();
      *(v12 + 72) = v14;
      *(v12 + 80) = v16;
      os_log(_:dso:log:type:_:)("thumbnail %@ for item %@ is already up to date", 46, 2, &dword_2493AC000, v10, v11, v12, v28, v8);

      a1(v17);
    }

    else
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v22 = static DOCLog.UI;
      v23 = static os_log_type_t.debug.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_249B9A480;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12DOCThumbnail_pMd, &_sSo12DOCThumbnail_pMR);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd, &_ss7CVarArg_pMR);
      swift_dynamicCast();
      os_log(_:dso:log:type:_:)("waiting for thumbnail %@ to update", 34, 2, &dword_2493AC000, v22, v23, v24);

      v25 = (v3 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_thumbnailUpdateBlock);
      v26 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_thumbnailUpdateBlock);
      v27 = *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_thumbnailUpdateBlock + 8);
      *v25 = a1;
      v25[1] = a2;

      outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v26, v27);
    }

    [*(v3 + v9) unlock];
    return swift_unknownObjectRelease();
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v18 = static DOCLog.UI;
    v19 = static os_log_type_t.default.getter();
    v20 = os_log(_:dso:log:type:_:)("updateThumbnail failed: fetchThumbnailIfNeeded did not set _thumbnail, calling the completion block right away", 110, 2, &dword_2493AC000, v18, v19, MEMORY[0x277D84F90]);
    return (a1)(v20);
  }
}

double DOCItemCollectionCellContent.inflightRenameTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_inflightRenameTitle);
  v6 = swift_beginAccess();
  v8 = *v5;
  v9 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  if (a2)
  {
    if (v9)
    {
      if (v8 == a1 && v9 == a2)
      {
        goto LABEL_13;
      }

      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (v6)
      {
        goto LABEL_13;
      }
    }
  }

  else if (!v9)
  {
    return result;
  }

  v11 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v2) + 0x558))(v6);
  v13 = (*((*v11 & *v2) + 0x2D0))(v15);
  if ((*v12 & 1) == 0)
  {
    *v12 |= 1uLL;
  }

  v14 = v13(v15, 0);
  (*((*v11 & *v2) + 0xBB0))(v14);
LABEL_13:

  return result;
}

void (*DOCItemCollectionCellContent.inflightRenameTitle.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_inflightRenameTitle;
  *(v3 + 72) = v1;
  *(v3 + 80) = v5;
  v6 = (v1 + v5);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 56) = *v6;
  *(v4 + 64) = v7;

  return DOCItemCollectionCellContent.inflightRenameTitle.modify;
}

void DOCItemCollectionCellContent.inflightRenameTitle.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if ((a2 & 1) == 0)
  {
    v5 = (v2[9] + v2[10]);
    v6 = *v5;
    v7 = v5[1];
    *v5 = v3;
    v5[1] = v4;
    if (v4)
    {
      if (v7)
      {
        v8 = v3 == v6 && v4 == v7;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_15;
        }
      }
    }

    else if (!v7)
    {
      goto LABEL_16;
    }

    v9 = v2[9];
    v10 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v9) + 0x558))();
    v12 = (*((*v10 & *v9) + 0x2D0))(v2);
    if ((*v11 & 1) == 0)
    {
      *v11 |= 1uLL;
    }

    v13 = v2[9];
    v14 = v12(v2, 0);
    (*((*v10 & *v13) + 0xBB0))(v14);
    goto LABEL_15;
  }

  DOCItemCollectionCellContent.inflightRenameTitle.setter(v3, v4);
LABEL_15:

LABEL_16:

  free(v2);
}

uint64_t DOCItemCollectionCellContent.inflightRenameTitle.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

double DOCItemCollectionCellContent.inflightRenameOldTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_inflightRenameOldTitle);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void DOCItemCollectionCellContent.title.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title + 8))
  {
    goto LABEL_7;
  }

  v2 = MEMORY[0x277D85000];
  v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x3D0))();
  if (v3)
  {
    v4 = DOCItemCollectionCellContent.title(forNode:)(v3);
    v6 = v5;
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = (*((*v2 & *v0) + 0x320))();
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = v7;
    v9 = [v7 collectionCreateButtonTitle];

    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v10;
  }

  *v1 = v4;
  v1[1] = v6;

  if (v1[1])
  {
LABEL_7:

    return;
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

double DOCItemCollectionCellContent.attributedStringAttachmentDimension(forTitleFont:)(void *a1)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v3 - 8);
  v6.n128_f64[0] = MEMORY[0x28223BE20](v3, v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x368))(v6);
  if (v9)
  {
    v10 = v9;
    [v9 displayScale];
  }

  else
  {
    v10 = [objc_opt_self() mainScreen];
    [v10 scale];
  }

  v12 = v11;

  [a1 capHeight];
  v14 = v13 * 0.5;
  (*(v4 + 104))(v8, *MEMORY[0x277D84688], v3);
  v15 = fmax(specialized CGFloat.init(_:roundedBy:inScale:)(v8, v14, v12), 5.0);
  return v15 + v15;
}

id DOCItemCollectionCellContent._titleColor.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCItemCollectionCellContent._titleColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void DOCItemCollectionCellContent.titleColor.setter(void *a1)
{
  v2 = v1;
  v17 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v17 - v6;
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x658))(v5);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor, 0x277D75348);
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v11 = v17;
  }

  else
  {
    (*((*v8 & *v2) + 0x660))(v17);
    v12 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
    *v12 = 0;
    v12[1] = 0;

    v13 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v14 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v7, v2 + v15, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
    swift_endAccess();
    v16 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;
  }
}

id DOCItemCollectionCellContent.titleColor.getter()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x910))())
  {
    v2 = [objc_opt_self() tertiaryLabelColor];

    return v2;
  }

  else
  {
    v4 = *((*v1 & *v0) + 0x658);

    return v4();
  }
}

void (*DOCItemCollectionCellContent.titleColor.modify(void *a1))(void **a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x910))())
  {
    v4 = [objc_opt_self() tertiaryLabelColor];
  }

  else
  {
    v4 = (*((*v3 & *v1) + 0x658))();
  }

  *a1 = v4;
  return DOCItemCollectionCellContent.titleColor.modify;
}

void DOCItemCollectionCellContent.trailingAttachmentcolor.didset(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v16[-v5];
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_trailingAttachmentcolor;
  swift_beginAccess();
  v8 = *(v1 + v7);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor, 0x277D75348);
  v9 = v8;
  v10 = static NSObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
    v11 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
    *v11 = 0;
    v11[1] = 0;

    v12 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v13 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    v14 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v6, v2 + v14, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
    swift_endAccess();
    v15 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;
  }
}

id DOCItemCollectionCellContent.trailingAttachmentcolor.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_trailingAttachmentcolor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCItemCollectionCellContent.trailingAttachmentcolor.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_trailingAttachmentcolor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  DOCItemCollectionCellContent.trailingAttachmentcolor.didset(v4);
}

void (*DOCItemCollectionCellContent.trailingAttachmentcolor.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_trailingAttachmentcolor;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return DOCItemCollectionCellContent.trailingAttachmentcolor.modify;
}

void DOCItemCollectionCellContent.trailingAttachmentcolor.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    DOCItemCollectionCellContent.trailingAttachmentcolor.didset(v8);

    v10 = *v5;
  }

  else
  {
    DOCItemCollectionCellContent.trailingAttachmentcolor.didset(v8);
  }

  free(v3);
}

id DOCItemCollectionCellContent._suffixColor.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__suffixColor;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCItemCollectionCellContent._suffixColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__suffixColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void DOCItemCollectionCellContent.suffixColor.setter(void *a1)
{
  v2 = v1;
  v17 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v3 - 8, v4);
  v7 = &v17 - v6;
  v8 = MEMORY[0x277D85000];
  v9 = (*((*MEMORY[0x277D85000] & *v1) + 0x6A0))(v5);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor, 0x277D75348);
  v10 = static NSObject.== infix(_:_:)();

  if (v10)
  {
    v11 = v17;
  }

  else
  {
    (*((*v8 & *v2) + 0x6A8))(v17);
    v12 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__title);
    *v12 = 0;
    v12[1] = 0;

    v13 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle) = 0;

    v14 = type metadata accessor for DOCFastLabel.LabelInformation(0);
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
    swift_beginAccess();
    outlined assign with take of IndexPath?(v7, v2 + v15, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
    swift_endAccess();
    v16 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
    *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags) = 0;
  }
}

id DOCItemCollectionCellContent.suffixColor.getter()
{
  v1 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v0) + 0x910))())
  {
    v2 = [objc_opt_self() quaternaryLabelColor];

    return v2;
  }

  else
  {
    v4 = *((*v1 & *v0) + 0x6A0);

    return v4();
  }
}

void (*DOCItemCollectionCellContent.suffixColor.modify(void *a1))(void **a1, uint64_t a2)
{
  a1[1] = v1;
  v3 = MEMORY[0x277D85000];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x910))())
  {
    v4 = [objc_opt_self() quaternaryLabelColor];
  }

  else
  {
    v4 = (*((*v3 & *v1) + 0x6A0))();
  }

  *a1 = v4;
  return DOCItemCollectionCellContent.suffixColor.modify;
}

void DOCItemCollectionCellContent.titleColor.modify(void **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  if (a2)
  {
    v5 = v4;
    (a3)();
  }

  else
  {
    a3(v4);
  }
}

void *DOCItemCollectionCellContent.titleWithTags.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v317 = *MEMORY[0x277D85DE8];
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12CharacterSetVSgMd, &_s10Foundation12CharacterSetVSgMR);
  MEMORY[0x28223BE20](v242, v4);
  v243 = &v217 - v5;
  v6 = type metadata accessor for CharacterSet();
  v244 = *(v6 - 8);
  v245 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v231 = &v217 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v257 = &v217 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v258 = &v217 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v217 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v217 - v21;
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v217 - v25;
  v27 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithTags;
  swift_beginAccess();
  outlined init with copy of DOCGridLayout.Spec?(v27, v26, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  v28 = type metadata accessor for DOCFastLabel.LabelInformation(0);
  v246 = *(v28 - 8);
  v29 = v246 + 48;
  v30 = *(v246 + 48);
  if (v30(v26, 1, v28) != 1)
  {
    v36 = v26;
    v37 = a1;
    return outlined init with take of DOCFastLabel.LabelInformation(v36, v37);
  }

  v226 = v30;
  v227 = v29;
  v240 = v28;
  v241 = v22;
  v228 = v27;
  v229 = v18;
  v31 = outlined destroy of CharacterSet?(v26, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  v32 = *MEMORY[0x277D85000] & *v2;
  v265 = *(v32 + 0x368);
  *&v266 = v32 + 872;
  v33 = v265(v31);
  if (v33)
  {
    v34 = v33;
    [v33 displayScale];
  }

  else
  {
    v34 = [objc_opt_self() mainScreen];
    [v34 scale];
  }

  v38 = v35;

  v39 = MEMORY[0x277D85000];
  v40 = *((*MEMORY[0x277D85000] & *v2) + 0x2D8);
  v264 = ((*MEMORY[0x277D85000] & *v2) + 728);
  v40(&v302);
  v313[8] = v310;
  v313[9] = v311;
  v314[0] = v312[0];
  *(v314 + 9) = *(v312 + 9);
  v313[4] = v306;
  v313[5] = v307;
  v313[6] = v308;
  v313[7] = v309;
  v313[0] = v302;
  v313[1] = v303;
  v313[2] = v304;
  v313[3] = v305;
  v315[8] = v310;
  v315[9] = v311;
  v316[0] = v312[0];
  *(v316 + 9) = *(v312 + 9);
  v315[4] = v306;
  v315[5] = v307;
  v315[6] = v308;
  v315[7] = v309;
  v315[0] = v302;
  v315[1] = v303;
  v315[2] = v304;
  v315[3] = v305;
  result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v315);
  if (result == 1)
  {
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v42 = *&v315[0];
  v43 = outlined destroy of CharacterSet?(v313, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
  v44 = (*((*v39 & *v2) + 0x3D0))(v43);
  v225 = a1;
  v263 = v42;
  if (v44)
  {
    swift_unknownObjectRelease();
    v45 = DOCItemCollectionCellContent.attributedStringAttachmentDimension(forTitleFont:)(v42);
    (*((*v39 & *v2) + 0x7E0))();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v47 = [objc_opt_self() requestForChainedTags:isa tagDimension:v45];

    if (v47)
    {
      v48 = (v265)();
      if (v48)
      {
        v49 = v48;
        v50 = [v48 layoutDirection];

        v51 = v50 == 1;
      }

      else
      {
        v51 = 0;
      }

      [v47 setLayoutDirection_];
      v58 = [v47 setSpacingType_];
      if ((*((*MEMORY[0x277D85000] & *v2) + 0x4C0))(v58))
      {
        v59 = [objc_opt_self() lightTextColor];
      }

      else
      {
        v59 = 0;
      }

      [v47 setSelectionOutlineColor_];

      v60 = [objc_opt_self() shared];
      [v60 sizeOfTagContentForRenderingRequest_];
      v62 = v61;
      v64 = v63;

      v65 = swift_allocObject();
      *(v65 + 16) = v47;
      v55 = v62;
      v57 = v64;
      v238 = v65;
      v239 = partial apply for closure #1 in DOCItemCollectionCellContent.titleWithTags.getter;
      v236 = 0x4018000000000000;
    }

    else
    {
      v55 = 0;
      v57 = 0;
      v236 = 0;
      v238 = 0;
      v239 = 0;
    }

    v237 = v57;
    v66 = MEMORY[0x277D85000];
    v67 = (*((*MEMORY[0x277D85000] & *v2) + 0x718))(v45);
    if (v67)
    {
      v68 = v67;
      v69 = [v67 size];
      v71 = v70;
      v73 = v72;
      v74 = (*((*MEMORY[0x277D85000] & *v2) + 0xAA0))(&v302, v69);
      v75 = v265(v74);
      DOCNodeStatusAppearance.iconVerticalOffset(forTitleFont:traitCollection:)(v42, v75);
      v77 = v76;

      v78 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v79 = swift_allocObject();
      *(v79 + 16) = v78;
      *(v79 + 24) = v68;
      v250 = v79;
      v66 = MEMORY[0x277D85000];
      v255 = v71;
      v248 = v77;
      v249 = v73;
      v256 = partial apply for closure #2 in DOCItemCollectionCellContent.titleWithTags.getter;
      v254 = 0x4010000000000000;
    }

    else
    {
      v254 = 0;
      v255 = 0;
      v248 = 0;
      v249 = 0;
      v256 = 0;
      v250 = 0;
    }

    v230 = (*((*v66 & *v2) + 0x640))();
    v235 = v80;
    v56 = v66;
  }

  else
  {
    result = (*((*v39 & *v2) + 0x320))();
    if (!result)
    {
LABEL_87:
      __break(1u);
      return result;
    }

    v52 = result;
    v53 = [result collectionCreateButtonTitle];

    v230 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v235 = v54;

    v254 = 0;
    v255 = 0;
    v248 = 0;
    v249 = 0;
    v256 = 0;
    v250 = 0;
    v55 = 0;
    v236 = 0;
    v237 = 0;
    v238 = 0;
    v239 = 0;
    v56 = MEMORY[0x277D85000];
  }

  v81 = (*((*v56 & *v2) + 0x4A8))();
  (v40)(&v289, v81);
  v300[8] = v297;
  v300[9] = v298;
  v301[0] = v299[0];
  *(v301 + 9) = *(v299 + 9);
  v300[4] = v293;
  v300[5] = v294;
  v300[6] = v295;
  v300[7] = v296;
  v300[0] = v289;
  v300[1] = v290;
  v300[2] = v291;
  v300[3] = v292;
  v310 = v297;
  v311 = v298;
  v312[0] = v299[0];
  *(v312 + 9) = *(v299 + 9);
  v306 = v293;
  v307 = v294;
  v308 = v295;
  v309 = v296;
  v302 = v289;
  v303 = v290;
  v304 = v291;
  v305 = v292;
  result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v302);
  if (result == 1)
  {
    goto LABEL_84;
  }

  v82 = outlined destroy of CharacterSet?(v300, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
  (v40)(&v274, v82);
  v285[8] = v282;
  v285[9] = v283;
  v286[0] = v284[0];
  *(v286 + 9) = *(v284 + 9);
  v285[4] = v278;
  v285[5] = v279;
  v285[6] = v280;
  v285[7] = v281;
  v285[0] = v274;
  v285[1] = v275;
  v285[2] = v276;
  v285[3] = v277;
  v287[8] = v282;
  v287[9] = v283;
  v288[0] = v284[0];
  *(v288 + 9) = *(v284 + 9);
  v287[4] = v278;
  v287[5] = v279;
  v287[6] = v280;
  v287[7] = v281;
  v287[0] = v274;
  v287[1] = v275;
  v287[2] = v276;
  v287[3] = v277;
  result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v287);
  if (result == 1)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v83 = outlined destroy of CharacterSet?(v285, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
  v253 = (*((*MEMORY[0x277D85000] & *v2) + 0x670))(v83);
  v84 = (v265)();
  v85 = v241;
  v86 = v236;
  v87 = v263;
  if (v84)
  {
    v88 = v84;
    v89 = [v84 layoutDirection];

    v234 = v89 == 1;
  }

  else
  {
    v234 = 0;
  }

  v90 = *(&v287[0] + 1);
  *v85 = v87;
  outlined init with copy of DOCGridLayout.Spec?(v258, v257, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  v91 = v85 + *(v240 + 20);
  v273 = 0x3FF0000000000000;
  v92 = v87;
  outlined copy of DOCFastLabel.AttachmentRenderer?(v255, v249, v254, v248, v256);
  v93 = v238;
  v94 = v239;
  v95 = outlined copy of DOCFastLabel.AttachmentRenderer?(v55, v237, v86, 0, v239);
  [v253 getRed:0 green:0 blue:0 alpha:{&v273, v95}];
  v96 = v273;
  v222 = type metadata accessor for DOCFastLabel.TextDrawInformation(0);
  v223 = v91;
  *&v91[*(v222 + 48)] = v96;
  v252 = 0u;
  v97 = 0.0;
  if (v94)
  {

    UICeilToScale();
    v247 = v98;
    UICeilToScale();
    v266 = v99;
    UIPointRoundToScale();
    *&v100 = v247;
    v102 = *&v247 + *&v101;
    *(&v101 + 1) = v103;
    v221 = v101;
    *(&v100 + 1) = v266;
    v247 = v100;
    v220 = v93;
  }

  else
  {
    v220 = 0;
    v102 = 0.0;
    v247 = 0uLL;
    v221 = 0uLL;
  }

  v232 = v55;
  if (v256)
  {
    v104 = v250;

    UICeilToScale();
    v252 = v105;
    UICeilToScale();
    v266 = v106;
    UIPointRoundToScale();
    *&v107 = v252;
    v97 = *&v252 + *&v108;
    *(&v108 + 1) = v109;
    v219 = v108;
    *(&v107 + 1) = v266;
    v252 = v107;
    v218 = v104;
  }

  else
  {
    v218 = 0;
    v219 = 0u;
  }

  UICeilToScale();
  v111 = v110;
  v112 = [v253 colorWithAlphaComponent_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_249B9FA70;
  v114 = *MEMORY[0x277D740A8];
  *(v113 + 32) = *MEMORY[0x277D740A8];
  v115 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont, 0x277D74300);
  *(v113 + 40) = v92;
  v116 = *MEMORY[0x277D740C0];
  *(v113 + 64) = v115;
  *(v113 + 72) = v116;
  *(v113 + 104) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor, 0x277D75348);
  *(v113 + 80) = v112;
  v233 = v92;
  v117 = v114;
  v118 = v116;
  v119 = v112;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v113);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v120 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v121 = MEMORY[0x24C1FAD20](v230, v235);
  type metadata accessor for NSAttributedStringKey(0);
  v123 = v122;
  v260 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
  v261 = v123;
  v124 = Dictionary._bridgeToObjectiveC()().super.isa;

  v125 = [v120 initWithString:v121 attributes:v124];

  v224 = v125;
  v217 = v119;
  v126.super.isa = applyHighlighting(to:indexSet:color:)(v125, v257, v119).super.isa;
  v127 = CTTypesetterCreateWithAttributedString(v126.super.isa);
  v128 = MEMORY[0x277D84F90];
  v267 = MEMORY[0x277D84F90];
  v129 = [(objc_class *)v126.super.isa length];
  v130 = 0;
  *&v266 = v90 - 1;
  v251 = xmmword_249B9A480;
  v131 = v128;
  v263 = v129;
  v264 = v126.super.isa;
  v262 = v90;
  v259 = v127;
  while (v130 < v129)
  {
    if (v131 >> 62)
    {
      if (__CocoaSet.count.getter() >= v90)
      {
        break;
      }

      v133 = __CocoaSet.count.getter() == v266;
      if (v130)
      {
LABEL_39:
        v134 = v111;
        if (!v133)
        {
          goto LABEL_49;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v132 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v132 >= v90)
      {
        break;
      }

      v133 = v132 == v266;
      if (v130)
      {
        goto LABEL_39;
      }
    }

    v134 = v111 - v102;
    if (!v133)
    {
LABEL_49:
      v153 = CTTypesetterSuggestLineBreak(v127, v130, v134);
      if (__OFADD__(v130, v153))
      {
        goto LABEL_81;
      }

      v147 = v153;
      if (v130 + v153 >= v129)
      {
        v147 = CTTypesetterSuggestLineBreak(v127, v130, v134 - v97);
      }

      v319.location = v130;
      v319.length = v147;
      Line = CTTypesetterCreateLine(v127, v319);
      goto LABEL_53;
    }

LABEL_40:
    v318.location = v130;
    v318.length = 0;
    v265 = CTTypesetterCreateLine(v127, v318);
    if (one-time initialization token for horizontalEllipsis != -1)
    {
      swift_once();
    }

    v135 = (*((*MEMORY[0x277D85000] & *static DOCUnicode.horizontalEllipsis) + 0x58))();
    v137 = v136;
    v138 = [(objc_class *)v126.super.isa attributesAtIndex:0 effectiveRange:0];
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v139 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v140 = MEMORY[0x24C1FAD20](v135, v137);

    v141 = Dictionary._bridgeToObjectiveC()().super.isa;

    v142 = [v139 initWithString:v140 attributes:v141];

    v143 = CTLineCreateWithAttributedString(v142);
    Line = v265;
    TruncatedLine = CTLineCreateTruncatedLine(v265, v134 - v97, kCTLineTruncationMiddle, v143);
    if (TruncatedLine)
    {
      v146 = TruncatedLine;

      v147 = 0;
      Line = v146;
      v126.super.isa = v264;
    }

    else
    {
      v148 = DOCUILogHandle();
      v149 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v150 = swift_allocObject();
      *(v150 + 16) = v251;
      *(v150 + 56) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
      *(v150 + 64) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSAttributedString and conformance NSObject, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
      v151 = v264;
      *(v150 + 32) = v264;
      v152 = v151;
      os_log(_:dso:log:type:_:)("Failed to create truncated last line for text %@", 48, 2, &dword_2493AC000, v148, v149, v150);

      v147 = 0;
      v126.super.isa = v151;
    }

    v90 = v262;
    v129 = v263;
    v128 = MEMORY[0x277D84F90];
    v127 = v259;
LABEL_53:
    v154 = Line;
    MEMORY[0x24C1FB090]();
    if (*((v267 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v267 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      v129 = v263;
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    v131 = v267;
    v155 = __OFADD__(v130, v147);
    v130 += v147;
    if (v155)
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }
  }

  v90 = v233;
  specialized static DOCFastLabel.TextDrawInformation.lineMetrics(for:font:leadingAttachmentOffset:trailingAttachmentOffset:layoutDirection:scale:)(v131, v233, v234, v102, v97, v38);
  v130 = v156;
  v97 = v157;
  v158 = *(MEMORY[0x277D768C8] + 8);
  v159 = *(MEMORY[0x277D768C8] + 16);
  v160 = *(MEMORY[0x277D768C8] + 24);
  v272 = *MEMORY[0x277D768C8];
  v271 = v158;
  v269 = v160;
  v270 = v159;
  if (one-time initialization token for charsWithSpecialOutset == -1)
  {
    goto LABEL_59;
  }

LABEL_82:
  swift_once();
LABEL_59:
  v161 = __swift_project_value_buffer(v242, static DOCFastLabel.TextDrawInformation.charsWithSpecialOutset);
  v162 = v243;
  outlined init with copy of DOCGridLayout.Spec?(v161, v243, &_s10Foundation12CharacterSetVSgMd, &_s10Foundation12CharacterSetVSgMR);
  v164 = v244;
  v163 = v245;
  if ((*(v244 + 48))(v162, 1, v245) == 1)
  {

    outlined destroy of CharacterSet?(v162, &_s10Foundation12CharacterSetVSgMd, &_s10Foundation12CharacterSetVSgMR);
    v165 = DOCUILogHandle();
    v166 = static os_log_type_t.error.getter();
    os_log(_:dso:log:type:_:)("charsWithSpecialOutset is nil", 29, 2, &dword_2493AC000, v165, v166, MEMORY[0x277D84F90]);

    v167 = v232;
  }

  else
  {
    v168 = v231;
    (*(v164 + 32))(v231, v162, v163);
    v267 = v230;
    v268 = v235;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol.rangeOfCharacter(from:options:range:)();
    v170 = v169;
    (*(v164 + 8))(v168, v163);

    v167 = v232;
    if ((v170 & 1) == 0)
    {
      CTFontGetLanguageAwareOutsets();
      v271 = -v271;
      v272 = -v272;
      v269 = -v269;
      v270 = -v270;
    }
  }

  v171 = *(v130 + 16);
  *&v266 = v130;
  if (v171)
  {
    v267 = v128;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v171, 0);
    v128 = v267;
    v172 = v130 + 56;
    do
    {
      Height = CGRectGetHeight(*(v172 - 24));
      v267 = v128;
      v175 = *(v128 + 16);
      v174 = *(v128 + 24);
      v176 = v175 + 1;
      if (v175 >= v174 >> 1)
      {
        v177 = Height;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v174 > 1), v175 + 1, 1);
        Height = v177;
        v128 = v267;
      }

      *(v128 + 16) = v176;
      *(v128 + 8 * v175 + 32) = Height;
      v172 += 32;
      --v171;
    }

    while (v171);
    v167 = v232;
LABEL_70:
    v178 = v224;
    if (v176 <= 3)
    {
      v179 = 0;
      v180 = 0.0;
      goto LABEL_75;
    }

    v179 = v176 & 0xFFFFFFFFFFFFFFFCLL;
    v181 = (v128 + 48);
    v180 = 0.0;
    v182 = v176 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v180 = v180 + *(v181 - 2) + *(v181 - 1) + *v181 + v181[1];
      v181 += 4;
      v182 -= 4;
    }

    while (v182);
    if (v176 != v179)
    {
LABEL_75:
      v183 = v176 - v179;
      v184 = 8 * v179 + 32;
      do
      {
        v180 = v180 + *(v128 + v184);
        v184 += 8;
        --v183;
      }

      while (v183);
    }
  }

  else
  {
    v176 = *(v128 + 16);
    if (v176)
    {
      goto LABEL_70;
    }

    v180 = 0.0;
    v178 = v224;
  }

  UIEdgeInsetsInsetRect(0.0, 0.0, v97, v180, v272, v271);
  UIRectIntegralWithScale();
  v186 = v185;
  v188 = v187;
  v190 = v189;
  v192 = v191;

  v194 = v248;
  v193 = v249;
  v195 = v250;
  outlined consume of DOCFastLabel.AttachmentRenderer?(v255, v249, v254, v248, v256, v250);
  v196 = v167;
  v198 = v237;
  v197 = v238;
  v199 = v167;
  v200 = v236;
  v201 = v239;
  outlined consume of DOCFastLabel.AttachmentRenderer?(v196, v237, v236, 0, v239, v238);
  v202 = v200;
  v203 = v201;
  outlined consume of DOCFastLabel.AttachmentRenderer?(v199, v198, v202, 0, v201, v197);
  v204 = v193;
  v205 = v256;
  outlined consume of DOCFastLabel.AttachmentRenderer?(v255, v204, v254, v194, v256, v195);
  outlined destroy of CharacterSet?(v258, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  v207 = v222;
  v206 = v223;
  outlined init with take of (key: URL, value: FPItem)(v257, &v223[*(v222 + 36)], &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  *v206 = 0;
  *(v206 + 1) = 0;
  *(v206 + 2) = v97;
  *(v206 + 3) = v180;
  *(v206 + 4) = v186;
  *(v206 + 5) = v188;
  *(v206 + 6) = v190;
  *(v206 + 7) = v192;
  v208 = v266;
  *(v206 + 9) = v131;
  *(v206 + 10) = v208;
  *&v206[v207[13]] = v234;
  v209 = &v206[v207[10]];
  *(v209 + 1) = v221;
  *v209 = v247;
  v210 = v220;
  *(v209 + 4) = v203;
  *(v209 + 5) = v210;
  v211 = &v206[v207[11]];
  *(v211 + 1) = v219;
  *v211 = v252;
  v212 = v218;
  *(v211 + 4) = v205;
  *(v211 + 5) = v212;
  *(v206 + 8) = v264;
  v214 = v240;
  v213 = v241;
  (*(v246 + 56))(v241, 0, 1, v240);
  v215 = v228;
  swift_beginAccess();
  outlined assign with take of IndexPath?(v213, v215, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  swift_endAccess();
  v216 = v229;
  outlined init with copy of DOCGridLayout.Spec?(v215, v229, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMd, &_s26DocumentManagerExecutables12DOCFastLabelC0E11InformationVSgMR);
  result = v226(v216, 1, v214);
  if (result == 1)
  {
    goto LABEL_86;
  }

  v36 = v216;
  v37 = v225;
  return outlined init with take of DOCFastLabel.LabelInformation(v36, v37);
}

void closure #1 in DOCItemCollectionCellContent.titleWithTags.getter(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() shared];
  v8 = [v3 renderImageWithRequest_];

  v4 = [v8 CGImage];
  if (v4)
  {
    v5 = v4;
    [v8 size];
    v10.size.width = v6;
    v10.size.height = v7;
    v10.origin.x = 0.0;
    v10.origin.y = 0.0;
    CGContextRef.draw(_:in:byTiling:)(v5, v10, 0);
  }
}

void closure #2 in DOCItemCollectionCellContent.titleWithTags.getter(CGContext *a1, uint64_t a2, void *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [a3 CGImage];
    if (v7)
    {
      v8 = v7;
      [a3 size];
      v10 = v9;
      v12 = v11;
      v15.origin.x = 0.0;
      v15.origin.y = 0.0;
      v15.size.width = v10;
      v15.size.height = v12;
      CGContextRef.draw(_:in:byTiling:)(v8, v15, 0);
      CGContextSetBlendMode(a1, kCGBlendModeSourceIn);
      v13 = (*((*MEMORY[0x277D85000] & *v6) + 0x688))();
      v14 = [v13 CGColor];

      CGContextSetFillColorWithColor(a1, v14);
      v16.origin.x = 0.0;
      v16.origin.y = 0.0;
      v16.size.width = v10;
      v16.size.height = v12;
      CGContextFillRect(a1, v16);
    }
  }
}

void DOCItemCollectionCellContent.titleWithIconAndTags.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__titleWithIconAndTags);
  if (v2)
  {
    goto LABEL_31;
  }

  v3 = v0;
  v4 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x2F0))(v93);
  v94[4] = v93[4];
  v94[5] = v93[5];
  v94[6] = v93[6];
  v94[7] = v93[7];
  v94[0] = v93[0];
  v94[1] = v93[1];
  v94[2] = v93[2];
  v94[3] = v93[3];
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v94) == 1)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v5 = *&v94[0];
  v6 = outlined destroy of CharacterSet?(v93, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
  if ((*((*v4 & *v0) + 0x3D0))(v6))
  {
    v7 = swift_unknownObjectRelease();
    v8 = (*((*v4 & *v0) + 0xA80))(v7);
    if (v8)
    {
      v88 = v1;
      v9 = [v8 thumbnail];
      swift_unknownObjectRelease();
      v10 = [objc_allocWithZone(MEMORY[0x277D74270]) init];
      [v9 size];
      v12 = v11;
      [v9 size];
      v14 = v12 / v13;
      [v5 lineHeight];
      v16 = v15;
      [v5 descender];
      v89 = v9;
      v91 = v10;
      if ((*((*v4 & *v0) + 0x940))([v10 setBounds_]))
      {
        v18 = [objc_allocWithZone(MEMORY[0x277D06368]) initWithImage_];
        [v18 setAddDecoration_];
        v19 = v18;
        [v10 bounds];
        [v19 setFrame_];

        v20 = v19;
        [v10 bounds];
        [v20 setFittingSize_];

        [v20 bounds];
        v95.width = v23;
        v95.height = v24;
        UIGraphicsBeginImageContextWithOptions(v95, 0, 0.0);
        v25 = UIGraphicsGetCurrentContext();
        if (v25)
        {
          v26 = v25;
          v27 = [v20 layer];
          [v27 renderInContext_];
        }

        v28 = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        [v10 setImage_];
      }

      else
      {
        [v10 setImage_];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249B9FA70;
      v35 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v36 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont, 0x277D74300);
      *(inited + 40) = v5;
      v37 = *MEMORY[0x277D740C0];
      *(inited + 64) = v36;
      *(inited + 72) = v37;
      v38 = *((*v4 & *v3) + 0x670);
      v90 = v5;
      v39 = v5;
      v40 = v35;
      v41 = v38(v37);
      *(inited + 104) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor, 0x277D75348);
      *(inited + 80) = v41;
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
      swift_arrayDestroy();
      v42 = DOCItemCollectionCellContent.attributedStringAttachmentDimension(forTitleFont:)(v39);
      v43 = (*((*v4 & *v3) + 0x7E0))();
      v44 = *((*v4 & *v3) + 0x640);
      v45 = (v44)(v43);
      v47 = v46;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v49 = MEMORY[0x24C1FAD20](v45, v47);

      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
      v50 = Dictionary._bridgeToObjectiveC()().super.isa;
      v51 = [objc_opt_self() requestForChainedTags:isa tagDimension:v49 text:v50 textAttributes:v42];

      if (v51)
      {

        [v51 setTagToTitleSpacing_];
        [v51 setTagBaselineAdjustment_];
        v52 = MEMORY[0x277D85000];
        v53 = *((*MEMORY[0x277D85000] & *v3) + 0x368);
        v54 = v51;
        v55 = v53();
        if (v55)
        {
          v56 = v55;
          v57 = [v55 layoutDirection];

          v58 = v57 == 1;
        }

        else
        {
          v58 = 0;
        }

        [v54 setLayoutDirection_];

        v64.super.isa = [objc_opt_self() shared];
        v66 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = partial apply for closure #1 in DOCItemCollectionCellContent.titleWithIconAndTags.getter;
        aBlock[5] = v66;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed _UIContentViewEditingState) -> (@owned _UIContentViewEditingState);
        aBlock[3] = &block_descriptor_128;
        v67 = _Block_copy(aBlock);

        v65 = [(objc_class *)v64.super.isa renderAttributedStringWithRequest:v54 titleHighlighter:v67];

        _Block_release(v67);
      }

      else
      {
        v59 = v44();
        v61 = v60;
        v62 = objc_allocWithZone(MEMORY[0x277CCA898]);
        v63 = MEMORY[0x24C1FAD20](v59, v61);

        v64.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v65 = [v62 initWithString:v63 attributes:v64.super.isa];

        v52 = MEMORY[0x277D85000];
      }

      v68 = objc_opt_self();
      v31 = v65;
      v69 = [v68 attributedStringWithAttachment_];
      v33 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
      if (one-time initialization token for nonBreakingSpace_zeroWidth != -1)
      {
        swift_once();
      }

      v70 = static DOCUnicode.nonBreakingSpace_zeroWidth;
      v71 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v72 = (*((*v52 & *v70) + 0x58))();
      v73 = MEMORY[0x24C1FAD20](v72);

      v74 = [v71 initWithString_];

      [v33 appendAttributedString_];
      [v33 appendAttributedString_];
      if (one-time initialization token for nonBreakingSpace != -1)
      {
        swift_once();
      }

      v75 = static DOCUnicode.nonBreakingSpace;
      v76 = objc_allocWithZone(MEMORY[0x277CCA898]);
      v77 = (*((*v52 & *v75) + 0x58))();
      v78 = MEMORY[0x24C1FAD20](v77);

      v79 = [v76 initWithString_];

      [v33 appendAttributedString_];
      v80 = [v31 wrappedInDirectionalIsolation_];

      [v33 appendAttributedString_];
      v81 = (*((*v52 & *v3) + 0x368))();
      if (v81 && (v82 = v81, v83 = [v81 layoutDirection], v82, v83 == 1))
      {
        v84 = 2;
      }

      else
      {
        v84 = 1;
      }

      v5 = v90;
      [v33 wrapInDirectionalIsolation_];

      v1 = v88;
      goto LABEL_29;
    }
  }

  v29 = (*((*v4 & *v0) + 0x320))();
  if (v29)
  {
    v30 = v29;
    v31 = [v29 collectionCreateButtonTitle];

    if (!v31)
    {
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = MEMORY[0x24C1FAD20](v32);
    }

    v33 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithString_];
LABEL_29:

    v85 = *(v3 + v1);
    *(v3 + v1) = v33;

    v86 = *(v3 + v1);
    if (v86)
    {
      v86;

      v2 = 0;
LABEL_31:
      v87 = v2;
      return;
    }

    goto LABEL_33;
  }

LABEL_34:
  __break(1u);
}

id closure #1 in DOCItemCollectionCellContent.titleWithIconAndTags.getter(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];
  }

  v8 = Strong;
  v9 = MEMORY[0x277D85000];
  v10 = (*((*MEMORY[0x277D85000] & *Strong) + 0x4A8))();
  v11 = (*((*v9 & *v8) + 0x670))(v10);
  isa = applyHighlighting(to:indexSet:color:)(a1, v6, v11).super.isa;

  outlined destroy of CharacterSet?(v6, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  v13 = [objc_allocWithZone(MEMORY[0x277CCAB48]) initWithAttributedString_];

  return v13;
}

double DOCItemCollectionCellContent.attributedTitleIconWidth(forTextHeight:)(double a1)
{
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xA80))();
  if (v3)
  {
    v4 = [v3 thumbnail];
    swift_unknownObjectRelease();
    [v4 size];
    v6 = v5;
    [v4 size];
    v8 = v7;

    return v6 / v8 * a1;
  }

  return a1;
}

void DOCItemCollectionCellContent.date.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__date);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__date + 8))
  {
    goto LABEL_13;
  }

  v2 = v0;
  v3 = MEMORY[0x277D85000];
  if (!(*((*MEMORY[0x277D85000] & *v0) + 0x3D0))())
  {
    goto LABEL_11;
  }

  v4 = (*((*v3 & *v0) + 0x368))();
  if (!v4)
  {
    swift_unknownObjectRelease();
LABEL_11:
    v11 = 0;
    v12 = 0xE000000000000000;
    goto LABEL_12;
  }

  v5 = v4;
  if (one-time initialization token for hSizeClass != -1)
  {
    swift_once();
  }

  v18 = static UITraitCollection.Traits.hSizeClass;
  v19 = qword_27EEE9C60;
  if ((UITraitCollection.doc_hasSpecified(_:)(&v18) & 1) == 0)
  {
    v9 = [objc_opt_self() standardUserDefaults];
    v10 = MEMORY[0x24C1FAD20](0xD000000000000029, 0x8000000249BDA260);
    [v9 BOOLForKey_];
    swift_unknownObjectRelease();

    goto LABEL_11;
  }

  v6 = [v5 preferredContentSizeCategory];
  v7 = UIContentSizeCategory.isAccessibilityCategory.getter();

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = [v5 horizontalSizeClass];
  }

  v13 = (*((*v3 & *v2) + 0x380))();
  if (v13 == 2)
  {
    goto LABEL_23;
  }

  v14 = v13;
  swift_getObjectType();
  v15 = DOCNode.localizedDate(horizontalSizeClass:preferLastUsedDate:)(v8, v14 & 1);
  v17 = v16;
  swift_unknownObjectRelease();

  if (v17)
  {
    v11 = v15;
  }

  else
  {
    v11 = 0;
  }

  v12 = 0xE000000000000000;
  if (v17)
  {
    v12 = v17;
  }

LABEL_12:
  *v1 = v11;
  v1[1] = v12;

  if (v1[1])
  {
LABEL_13:

    return;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

uint64_t DOCItemCollectionCellContent.size.getter()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sizeLock);
  [v2 lock];
  v3 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__size);
  countAndFlagsBits = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__size);
  v5 = v3[1];

  v6 = [v2 unlock];
  if (!v5)
  {
    v7 = MEMORY[0x277D85000];
    v8 = *((*MEMORY[0x277D85000] & *v1) + 0x3D0);
    v9 = (v8)(v6);
    if (v9)
    {
      ObjectType = swift_getObjectType();
      DOCNode.debugUIScenario.getter(ObjectType, v22);
      v9 = swift_unknownObjectRelease();
      if (v22[0] != 1)
      {
        if (v22[7])
        {
          v11 = v22[9];
          v9 = outlined destroy of CharacterSet?(v22, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMR);
          if (v11)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v9 = outlined destroy of CharacterSet?(v22, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMR);
        }
      }
    }

    v12 = (*((*v7 & *v1) + 0x800))(v9);
    v13 = v8();
    v14 = v13;
    if (v12)
    {
      if (v13)
      {
        swift_getObjectType();
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();

        countAndFlagsBits = DOCNode.cachedLocalizedChildItemCountDescription(fetchIfStale:completionHandler:)(1, partial apply for closure #2 in DOCItemCollectionCellContent.size.getter, v15);
        object = v16;

        if (!object)
        {
          v18 = DOCLocalizedMetadataStringForUnavailablePropertyValue();
          countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
          object = v19;
          swift_unknownObjectRelease();

LABEL_18:
          [v2 lock];
          *v3 = countAndFlagsBits;
          v3[1] = object;

          [v2 unlock];
          return countAndFlagsBits;
        }

LABEL_17:
        swift_unknownObjectRelease();
        goto LABEL_18;
      }
    }

    else if (v13)
    {
      swift_getObjectType();
      if (([v14 isExternalDownloadPlaceholder] & 1) == 0)
      {
        v20 = DOCNode.localizedSizeDescription()();
        countAndFlagsBits = v20._countAndFlagsBits;
        object = v20._object;
        goto LABEL_17;
      }

      swift_unknownObjectRelease();
    }

LABEL_15:
    countAndFlagsBits = 0;
    object = 0xE000000000000000;
    goto LABEL_18;
  }

  return countAndFlagsBits;
}

char *closure #2 in DOCItemCollectionCellContent.size.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &aBlock[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = *&result[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sizeLock];
    v23 = v10;
    v18 = v17;
    [v17 lock];
    v19 = &v16[OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__size];
    *v19 = a1;
    *(v19 + 1) = a2;

    [v18 unlock];

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v20 = static OS_dispatch_queue.main.getter();
    v21 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #2 in closure #2 in DOCItemCollectionCellContent.size.getter;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_283_0;
    v22 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x24C1FB9A0](0, v14, v9, v22);
    _Block_release(v22);

    (*(v6 + 8))(v9, v5);
    return (*(v11 + 8))(v14, v23);
  }

  return result;
}

void closure #2 in closure #2 in DOCItemCollectionCellContent.size.getter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = MEMORY[0x277D85000];
    v5 = (*((*MEMORY[0x277D85000] & *Strong) + 0x2D0))(v7);
    if ((*v4 & 0x80) == 0)
    {
      *v4 |= 0x80uLL;
    }

    v6 = v5(v7, 0);
    (*((*v3 & *v2) + 0xBB0))(v6);
  }
}

void DOCItemCollectionCellContent.kind.getter()
{
  v1 = type metadata accessor for UTType();
  v2 = *(v1 - 8);
  v5 = MEMORY[0x28223BE20](v1, v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__kind);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__kind + 8))
  {
    goto LABEL_11;
  }

  v9 = v4;
  v10 = (*((*MEMORY[0x277D85000] & *v0) + 0x3D0))(v5);
  v11 = 0xE000000000000000;
  if (v10)
  {
    v12 = [v10 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = UTType.localizedDescription.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    (*(v2 + 8))(v7, v9);
    v16 = v15 ? v13 : 0;
    if (v15)
    {
      v11 = v15;
    }
  }

  else
  {
    v16 = 0;
  }

  *v8 = v16;
  v8[1] = v11;

  if (v8[1])
  {
LABEL_11:
  }

  else
  {
    __break(1u);
  }
}

id DOCItemCollectionCellContent.statusText.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v0) + 0x3D0))();
  if (result)
  {
    v4 = result;
    if ([result isExcludedFromSync] && !objc_msgSend(v4, sel_isExternalDownloadPlaceholder))
    {
      goto LABEL_74;
    }

    v5 = [v4 downloadingError];
    if (v5)
    {

      v6 = (*((*v2 & *v0) + 0x368))();
      if (v6)
      {
        v7 = v6;
        v8 = [v6 horizontalSizeClass];

        if (v8 == 1)
        {
          result = _DocumentManagerBundle();
          if (result)
          {
            v9 = result;
            v116 = 0x8000000249BF3930;
            v10 = 0x617A696C61636F4CLL;
            v11 = 0xEB00000000656C62;
            v12 = 0x6F727245209386E2;
            v13 = 0xD00000000000003ALL;
LABEL_16:
            v14 = 0xA900000000000072;
            goto LABEL_19;
          }

          goto LABEL_122;
        }
      }

      result = _DocumentManagerBundle();
      if (result)
      {
        v9 = result;
        v116 = 0x8000000249BF38F0;
        v12 = 0x64616F6C6E776F44;
        v14 = 0xEE00726F72724520;
        v10 = 0x617A696C61636F4CLL;
        v11 = 0xEB00000000656C62;
        v13 = 0xD000000000000030;
LABEL_19:
        v19.super.isa = v9;
        v20 = 0;
        v21 = 0xE000000000000000;
LABEL_20:
        countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v12, *&v10, v19, *&v20, *&v13)._countAndFlagsBits;

        v23 = [v4 isDownloading];
        goto LABEL_21;
      }

LABEL_121:
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    v15 = [v4 uploadingError];
    if (v15)
    {

      v16 = (*((*v2 & *v0) + 0x368))();
      if (v16)
      {
        v17 = v16;
        v18 = [v16 horizontalSizeClass];

        if (v18 == 1)
        {
          result = _DocumentManagerBundle();
          if (result)
          {
            v9 = result;
            v116 = 0x8000000249BF38B0;
            v12 = 0x6F727245209186E2;
            v10 = 0x617A696C61636F4CLL;
            v11 = 0xEB00000000656C62;
            v13 = 0xD000000000000038;
            goto LABEL_16;
          }

          goto LABEL_124;
        }
      }

      result = _DocumentManagerBundle();
      if (result)
      {
        v9 = result;
        v116 = 0x8000000249BF3880;
        v12 = 0x452064616F6C7055;
        v14 = 0xEC000000726F7272;
        v10 = 0x617A696C61636F4CLL;
        v11 = 0xEB00000000656C62;
        v13 = 0xD00000000000002ELL;
        goto LABEL_19;
      }

LABEL_123:
      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    if (([v4 isUploaded] & 1) == 0 && (objc_msgSend(v4, sel_isActionable) & 1) == 0 && (objc_msgSend(v4, sel_isExternalDownloadPlaceholder) & 1) == 0)
    {
      v26 = [v4 providerID];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v30)
      {
        v32 = 1;
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v33)
      {
        v35 = 1;
      }

      else
      {
        v35 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v29 == v36)
      {
      }

      else
      {
        v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (((v32 | v35) & 1) == 0 && (v69 & 1) == 0)
        {
          result = _DocumentManagerBundle();
          if (result)
          {
            v9 = result;
            v116 = 0x8000000249BF3680;
            v12 = 0x6F6C705520746F4ELL;
            v14 = 0xEC00000064656461;
            v10 = 0x617A696C61636F4CLL;
            v11 = 0xEB00000000656C62;
            v19.super.isa = v9;
            v20 = 0;
            v21 = 0xE000000000000000;
            v13 = 0xD000000000000029;
            goto LABEL_20;
          }

          goto LABEL_128;
        }
      }
    }

    v37 = [v4 downloadingProgress];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 doc_isPending];

      if ([v4 isDownloading])
      {
        v40 = v39 == 0;
      }

      else
      {
        v40 = 1;
      }

      if (!v40)
      {
        result = _DocumentManagerBundle();
        if (result)
        {
          v41 = result;
          v118._object = 0x8000000249BF3830;
          v42._object = 0xAE00A680E2676E69;
          v43.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v43.value._object = 0xEB00000000656C62;
          v42._countAndFlagsBits = 0x74696157209386E2;
          v118._countAndFlagsBits = 0x1000000000000046;
          v44._countAndFlagsBits = 0;
          v44._object = 0xE000000000000000;
          countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v42, v43, v41, v44, v118)._countAndFlagsBits;

          v23 = [v4 isDownloading];
LABEL_21:
          if (v23)
          {
LABEL_22:
            swift_unknownObjectRelease();
            return countAndFlagsBits;
          }

LABEL_23:
          v24 = [v4 isUploading];
          swift_unknownObjectRelease();
          if ((v24 & 1) == 0)
          {
            v25 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_lastPartialProgress;
            *v25 = 0;
            v25[8] = 1;
          }

          return countAndFlagsBits;
        }

        goto LABEL_125;
      }
    }

    else
    {
      [v4 isDownloading];
    }

    v45 = [v4 uploadingProgress];
    if (v45)
    {
      v46 = v45;
      v47 = [v45 doc_isPending];

      if ([v4 isUploading] && v47)
      {
        result = _DocumentManagerBundle();
        if (result)
        {
          v48 = result;
          v119._object = 0x8000000249BF37E0;
          v49._countAndFlagsBits = 0x74696157209186E2;
          v49._object = 0xAE00A680E2676E69;
          v50.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v50.value._object = 0xEB00000000656C62;
          v119._countAndFlagsBits = 0x1000000000000044;
          v51._countAndFlagsBits = 0;
          v51._object = 0xE000000000000000;
          countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, v50, v48, v51, v119)._countAndFlagsBits;

          if ([v4 isDownloading])
          {
            goto LABEL_22;
          }

          goto LABEL_23;
        }

        goto LABEL_126;
      }
    }

    else
    {
      [v4 isUploading];
    }

    if (![v4 isExternalDownloadPlaceholder] || (v52 = objc_msgSend(v4, sel_downloadingProgress)) == 0)
    {
LABEL_63:
      v54 = [v4 fileSize];
      if (!v54)
      {
        goto LABEL_73;
      }

      v55 = v54;
      v56 = [v54 longLongValue];

      if (v56 < 1)
      {
        goto LABEL_73;
      }

      if (![v4 isDownloading] || (v57 = objc_msgSend(v4, sel_downloadingProgress)) == 0)
      {
LABEL_69:
        if ([v4 isUploading])
        {
          v59 = [v4 uploadingProgress];
          if (v59)
          {
            v60 = v59;
            if ([v59 isFinished])
            {

              goto LABEL_73;
            }

            result = [v60 fractionCompleted];
            v103 = (1.0 - v102) * v56;
            if ((*&v103 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
            {
              if (v103 > -9.22337204e18)
              {
                if (v103 < 9.22337204e18)
                {
                  v104 = DOCItemCollectionCellContent.displayablePartialProgress(for:fileSize:)(v103, v56);
                  v105 = [objc_opt_self() stringFromByteCount:v104 countStyle:0];
                  v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v108 = v107;

                  result = _DocumentManagerBundle();
                  if (!result)
                  {
LABEL_132:
                    __break(1u);
                    return result;
                  }

                  v109 = result;
                  v110._countAndFlagsBits = 0x4025209186E2;
                  v122._object = 0x8000000249BF36B0;
                  v111.value._countAndFlagsBits = 0x617A696C61636F4CLL;
                  v111.value._object = 0xEB00000000656C62;
                  v122._countAndFlagsBits = 0x100000000000002BLL;
                  v110._object = 0xA600000000000000;
                  v112._countAndFlagsBits = 0;
                  v112._object = 0xE000000000000000;
                  NSLocalizedString(_:tableName:bundle:value:comment:)(v110, v111, v109, v112, v122);

                  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
                  v113 = swift_allocObject();
                  *(v113 + 16) = xmmword_249B9A480;
                  *(v113 + 56) = MEMORY[0x277D837D0];
                  *(v113 + 64) = lazy protocol witness table accessor for type String and conformance String();
                  *(v113 + 32) = v106;
                  *(v113 + 40) = v108;
                  v101 = static String.localizedStringWithFormat(_:_:)();

                  if ([v4 isDownloading])
                  {
LABEL_111:
                    swift_unknownObjectRelease();
                    return v101;
                  }

LABEL_112:
                  v114 = [v4 isUploading];
                  swift_unknownObjectRelease();
                  if ((v114 & 1) == 0)
                  {
                    v115 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_lastPartialProgress;
                    *v115 = 0;
                    v115[8] = 1;
                  }

                  return v101;
                }

LABEL_120:
                __break(1u);
                goto LABEL_121;
              }

LABEL_119:
              __break(1u);
              goto LABEL_120;
            }

LABEL_118:
            __break(1u);
            goto LABEL_119;
          }
        }

LABEL_73:
        if (![v4 isDownloading])
        {
          v61 = [v4 isUploading];
          swift_unknownObjectRelease();
          if ((v61 & 1) == 0)
          {
            result = 0;
            v62 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_lastPartialProgress;
            *v62 = 0;
            v62[8] = 1;
            return result;
          }

          return 0;
        }

LABEL_74:
        swift_unknownObjectRelease();
        return 0;
      }

      v58 = v57;
      if ([v57 isFinished])
      {

        goto LABEL_69;
      }

      result = [v58 fractionCompleted];
      v90 = (1.0 - v89) * v56;
      if ((*&v90 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v90 > -9.22337204e18)
      {
        if (v90 < 9.22337204e18)
        {
          v91 = DOCItemCollectionCellContent.displayablePartialProgress(for:fileSize:)(v90, v56);
          v92 = [objc_opt_self() stringFromByteCount:v91 countStyle:0];
          v93 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v95 = v94;

          result = _DocumentManagerBundle();
          if (!result)
          {
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          v96 = result;
          v121._object = 0x8000000249BF36E0;
          v97._countAndFlagsBits = 0x4025209386E2;
          v98.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v98.value._object = 0xEB00000000656C62;
          v121._countAndFlagsBits = 0x100000000000002DLL;
          v97._object = 0xA600000000000000;
          v99._countAndFlagsBits = 0;
          v99._object = 0xE000000000000000;
          NSLocalizedString(_:tableName:bundle:value:comment:)(v97, v98, v96, v99, v121);

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v100 = swift_allocObject();
          *(v100 + 16) = xmmword_249B9A480;
          *(v100 + 56) = MEMORY[0x277D837D0];
          *(v100 + 64) = lazy protocol witness table accessor for type String and conformance String();
          *(v100 + 32) = v93;
          *(v100 + 40) = v95;
          v101 = static String.localizedStringWithFormat(_:_:)();

          if ([v4 isDownloading])
          {
            goto LABEL_111;
          }

          goto LABEL_112;
        }

        goto LABEL_117;
      }

      __break(1u);
LABEL_117:
      __break(1u);
      goto LABEL_118;
    }

    v53 = v52;
    if ([v52 isFinished])
    {

      goto LABEL_63;
    }

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    [v53 fractionCompleted];
    v64.super.super.isa = NSNumber.init(floatLiteral:)(v63).super.super.isa;
    if (one-time initialization token for numberFormatter != -1)
    {
      swift_once();
    }

    v65 = [static DOCItemCollectionCellContent.numberFormatter stringFromNumber_];
    if (v65)
    {
      v66 = v65;
      v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      result = _DocumentManagerBundle();
      if (!result)
      {
LABEL_129:
        __break(1u);
        goto LABEL_130;
      }

      v66 = result;
      v120._object = 0x8000000249BF3710;
      v120._countAndFlagsBits = 0x100000000000003ALL;
      v70._countAndFlagsBits = 4271950;
      v70._object = 0xE300000000000000;
      v71.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v71.value._object = 0xEB00000000656C62;
      v72._countAndFlagsBits = 0;
      v72._object = 0xE000000000000000;
      v73 = NSLocalizedString(_:tableName:bundle:value:comment:)(v70, v71, v66, v72, v120);
      object = v73._object;
      v67 = v73._countAndFlagsBits;
    }

    v74 = v67;
    v75 = object;

    v76 = (*((*v2 & *v1) + 0x368))();
    if (v76 && (v77 = v76, v78 = [v76 horizontalSizeClass], v77, v78 == 1))
    {
      result = _DocumentManagerBundle();
      if (!result)
      {
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v79 = result;
      v117 = 0x8000000249BF37B0;
      v80 = 0x4025209386E2;
      v81 = 0x100000000000002ELL;
      v82 = 0xA600000000000000;
    }

    else
    {
      result = _DocumentManagerBundle();
      if (!result)
      {
LABEL_127:
        __break(1u);
LABEL_128:
        __break(1u);
        goto LABEL_129;
      }

      v79 = result;
      v117 = 0x8000000249BF3770;
      v82 = 0x8000000249BF3750;
      v81 = 0x1000000000000038;
      v80 = 0x1000000000000011;
    }

    v83.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v83.value._object = 0xEB00000000656C62;
    v84._countAndFlagsBits = 0;
    v84._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(*&v80, v83, v79, v84, *&v81);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_249B9A480;
    *(v85 + 56) = MEMORY[0x277D837D0];
    *(v85 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v85 + 32) = v74;
    *(v85 + 40) = v75;
    v86 = String.init(format:_:)();

    if ([v4 isDownloading])
    {
      swift_unknownObjectRelease();
    }

    else
    {
      v87 = [v4 isUploading];
      swift_unknownObjectRelease();
      if ((v87 & 1) == 0)
      {
        v88 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_lastPartialProgress;
        *v88 = 0;
        v88[8] = 1;
      }
    }

    return v86;
  }

  return result;
}

uint64_t DOCItemCollectionCellContent.displayablePartialProgress(for:fileSize:)(uint64_t result, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_lastPartialProgress);
  if (*(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_lastPartialProgress + 8))
  {
    goto LABEL_9;
  }

  v4 = *v3;
  v5 = result - *v3;
  if (__OFSUB__(result, *v3))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v5 < 0)
  {
    v6 = __OFSUB__(0, v5);
    v5 = *v3 - result;
    if (v6)
    {
      goto LABEL_15;
    }
  }

  v7 = a2 * 0.05;
  if (COERCE__INT64(fabs(v7)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_12;
  }

  if (v7 > -9.22337204e18)
  {
    if (v7 < 9.22337204e18)
    {
      if (v5 <= v7)
      {
        return v4;
      }

LABEL_9:
      *v3 = result;
      *(v3 + 8) = 0;
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

void DOCItemCollectionCellContent.share.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shareString);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shareString + 8))
  {
    goto LABEL_16;
  }

  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x3D0);
  if (v3() && (v4 = swift_getObjectType(), DOCNode.debugUIScenario.getter(v4, v16), swift_unknownObjectRelease(), v16[0] != 1) && (v18 = v17, outlined init with copy of DOCGridLayout.Spec?(&v18, v14, &_sSSSgMd, &_sSSSgMR), outlined destroy of CharacterSet?(v16, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMR), *(&v18 + 1)))
  {
    v5 = v18;
  }

  else
  {
    if (v3())
    {
      v15 = 0;
      v6 = (*((*v2 & *v0) + 0x368))();
      v9 = 0;
      if (v6)
      {
        v7 = v6;
        v8 = [v6 horizontalSizeClass];

        if (v8 == 1)
        {
          v9 = 1;
        }
      }

      ObjectType = swift_getObjectType();
      v14[0] = v9;
      v11 = DOCNode.localizedSharingStatusDescription(type:options:)(&v15, v14, ObjectType);
      v13 = v12;
      swift_unknownObjectRelease();
      if (v13)
      {
        *v1 = v11;
        v1[1] = v13;
        goto LABEL_15;
      }
    }

    v5 = xmmword_249BA62B0;
  }

  *v1 = v5;
LABEL_15:

  if (v1[1])
  {
LABEL_16:

    return;
  }

  __break(1u);
}

void DOCItemCollectionCellContent.tags.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tags;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tags) || ((v2 = v0, v3 = *((*MEMORY[0x277D85000] & *v0) + 0x3D0), v3()) && (ObjectType = swift_getObjectType(), DOCNode.debugUIScenario.getter(ObjectType, &v10), swift_unknownObjectRelease(), v10 != 1) ? (v16 = v10, v19 = v13, v20 = v14, v21 = v15, v17 = v11, v18 = v12, v9 = DOCDebugUIScenario.tags.getter(), outlined destroy of CharacterSet?(&v10, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMR), *(v2 + v1) = v9) : (v5 = v3()) == 0 ? (*(v0 + v1) = MEMORY[0x277D84F90]) : (v6 = [v5 tags], v7 = DOCTagsFromFPTags(), v6, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260), v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v7, swift_unknownObjectRelease(), *(v0 + v1) = v8), , *(v2 + v1)))
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t DOCItemCollectionCellContent.isFolder.getter(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4 == 2)
  {
    v6 = (*((*MEMORY[0x277D85000] & *v2) + 0x3D0))();
    if (v6)
    {
      v7 = [v6 *a2];
      swift_unknownObjectRelease();
      LOBYTE(v4) = v7;
    }

    else
    {
      v7 = 0;
      LOBYTE(v4) = 0;
    }

    *(v2 + v3) = v7;
  }

  return v4 & 1;
}

double DOCItemCollectionCellContent.sourceName.setter(uint64_t a1, uint64_t a2)
{
  if (String.count.getter() < 1)
  {

    a1 = 0;
    a2 = 0;
  }

  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sourceName);
  *v5 = a1;
  v5[1] = a2;

  return result;
}

uint64_t DOCItemCollectionCellContent.sourceName.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sourceName + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sourceName);
  }

  else if ((*((*MEMORY[0x277D85000] & *v0) + 0x3D0))() && (ObjectType = swift_getObjectType(), DOCNode.debugUIScenario.getter(ObjectType, v5), swift_unknownObjectRelease(), v5[0] != 1) && (v1 = v5[8], v3 = v5[9], , outlined destroy of CharacterSet?(v5, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMR), v3))
  {
  }

  else
  {

    return 0;
  }

  return v1;
}

void (*DOCItemCollectionCellContent.sourceName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__sourceName;
  *(v3 + 104) = v1;
  *(v3 + 112) = v5;
  v6 = (v1 + v5);
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else if (!(*((*MEMORY[0x277D85000] & *v1) + 0x3D0))() || (ObjectType = swift_getObjectType(), DOCNode.debugUIScenario.getter(ObjectType, v4), swift_unknownObjectRelease(), *v4 == 1) || (v7 = v4[8], v8 = v4[9], , outlined destroy of CharacterSet?(v4, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMR), !v8))
  {

    v7 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_11;
  }

LABEL_11:
  v4[11] = v7;
  v4[12] = v8;
  return DOCItemCollectionCellContent.sourceName.modify;
}

void DOCItemCollectionCellContent.sourceName.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 96);
  if (a2)
  {

    if (String.count.getter() < 1)
    {

      v3 = 0;
      v4 = 0;
    }

    v5 = (v2[13] + v2[14]);
    *v5 = v3;
    v5[1] = v4;
  }

  else
  {
    if (String.count.getter() < 1)
    {

      v3 = 0;
      v4 = 0;
    }

    v6 = (v2[13] + v2[14]);
    *v6 = v3;
    v6[1] = v4;
  }

  free(v2);
}

uint64_t DOCItemCollectionCellContent.shouldShowItemStatusBadge.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldShowItemStatusBadge;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldShowItemStatusBadge);
  if (v2 == 2)
  {
    v3 = DOCItemCollectionCellContent.primaryBadgeItemDecoration.getter();
    v4 = v3;
    LOBYTE(v2) = v3 != 0;
    if (v3)
    {
    }

    *(v0 + v1) = v4 != 0;
  }

  return v2 & 1;
}

uint64_t DOCItemCollectionCellContent.shouldShowItemAccessStatusBadge.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldShowItemAccessStatusBadge;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldShowItemAccessStatusBadge);
  if (v2 == 2)
  {
    v3 = (*((*MEMORY[0x277D85000] & *v0) + 0x3D0))();
    if (v3)
    {
      v4 = [v3 fpfs_fpItem];
      swift_unknownObjectRelease();
      if (v4)
      {
        v5 = [v4 itemID];
        v6 = [v5 isPlaceholder];

        if ((v6 & 1) == 0)
        {
          if ([v4 isWritable])
          {
            v8 = [v4 isReadable];

            LOBYTE(v2) = v8 ^ 1;
          }

          else
          {

            LOBYTE(v2) = 1;
          }

          goto LABEL_7;
        }
      }
    }

    LOBYTE(v2) = 0;
LABEL_7:
    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

uint64_t DOCItemCollectionCellContent.disableProgressViews.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_disableProgressViews;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionCellContent.disableProgressViews.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_disableProgressViews;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionCellContent.showGridCircularProgressView.getter()
{
  v1 = v0;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x898);
  if (v3())
  {
    v4 = 0;
LABEL_3:
    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showGridCircularProgressView) = v4;
    goto LABEL_8;
  }

  if ((*((*v2 & *v0) + 0x3D0))())
  {
    ObjectType = swift_getObjectType();
    DOCNode.debugUIScenario.getter(ObjectType, v17);
    swift_unknownObjectRelease();
    if (v17[0] != 1)
    {
      v18 = v17[10];
      outlined init with copy of DOCGridLayout.Spec?(&v18, v16, &_sSo10NSProgressCSgMd, &_sSo10NSProgressCSgMR);
      outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMR);
      if (v18)
      {
        v6 = [v18 isFinished];
        outlined destroy of CharacterSet?(&v18, &_sSo10NSProgressCSgMd, &_sSo10NSProgressCSgMR);
        if ((v6 & 1) == 0)
        {
          v4 = 1;
          goto LABEL_3;
        }
      }
    }
  }

LABEL_8:
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showGridCircularProgressView;
  v8 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showGridCircularProgressView);
  if (v8 == 2)
  {
    v9 = (*((*v2 & *v1) + 0x3D0))();
    if (!v9)
    {
LABEL_20:
      LOBYTE(v8) = 0;
LABEL_21:
      *(v1 + v7) = v8;
      return v8 & 1;
    }

    v10 = v9;
    v11 = (*((*v2 & *v1) + 0x568))();
    if (v11)
    {
      v12 = v11;
      if ((v3() & 1) == 0)
      {
        if ([v12 isIndeterminate])
        {
        }

        else
        {
          v13 = [v12 isFinished];

          if (v13)
          {
            goto LABEL_19;
          }
        }

        swift_getObjectType();
        if (([v10 isExternalDownloadPlaceholder] & 1) == 0 && (DOCNode.doc_isAppContainerRoot.getter() & 1) == 0)
        {
          v15 = [v10 isTrashed];
          swift_unknownObjectRelease();
          LOBYTE(v8) = v15 ^ 1;
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }

LABEL_19:
    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  return v8 & 1;
}

uint64_t DOCItemCollectionCellContent.showHorizontalProgressView.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x898);
  if (v2())
  {
    *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showHorizontalProgressView) = 0;
  }

  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showHorizontalProgressView;
  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__showHorizontalProgressView);
  if (v4 == 2)
  {
    v5 = (*((*v1 & *v0) + 0x3D0))();
    if (v5)
    {
      if ([v5 isExternalDownloadPlaceholder])
      {
        v6 = (*((*v1 & *v0) + 0x568))();
        if (v6)
        {
          v7 = v6;
          if ((v2() & 1) == 0)
          {
            if ([v7 isIndeterminate])
            {

              swift_unknownObjectRelease();
              LOBYTE(v4) = 1;
            }

            else
            {
              v9 = [v7 isFinished];

              swift_unknownObjectRelease();
              LOBYTE(v4) = v9 ^ 1;
            }

            goto LABEL_11;
          }
        }
      }

      swift_unknownObjectRelease();
    }

    LOBYTE(v4) = 0;
LABEL_11:
    *(v0 + v3) = v4;
  }

  return v4 & 1;
}

uint64_t DOCItemCollectionCellContent.shouldDim.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDim;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDim);
  if (v2 == 2)
  {
    v3 = MEMORY[0x277D85000];
    v4 = (*((*MEMORY[0x277D85000] & *v0) + 0x460))();
    if (v4 == 2 || (v4 & 1) == 0)
    {
      LOBYTE(v2) = (*((*v3 & *v0) + 0x4F0))();
      LOBYTE(v2) = (v2 != 2) ^ v2;
    }

    else
    {
      LOBYTE(v2) = (*((*v3 & *v0) + 0x490))();
    }

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t DOCItemCollectionCellContent._shouldDimThumbnail.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDimThumbnail;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCItemCollectionCellContent._shouldDimThumbnail.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__shouldDimThumbnail;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCItemCollectionCellContent.shouldDimThumbnail.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x918);
  v3 = v2();
  if (v3 != 2)
  {
    goto LABEL_8;
  }

  v4 = (*((*v1 & *v0) + 0x3D0))();
  if (v4)
  {
    v5 = v4;
    if (![v4 isActionable] || (objc_msgSend(v5, sel_isCopying) & 1) != 0)
    {
      goto LABEL_5;
    }

    if ([v5 isDownloading])
    {
      v9 = [v5 downloadingError];
      if (!v9)
      {
LABEL_5:
        v6 = 1;
LABEL_6:
        (*((*v1 & *v0) + 0x920))(v6);
        v3 = swift_unknownObjectRelease();
        goto LABEL_8;
      }
    }

    v6 = (*((*v1 & *v0) + 0x538))();
    if (v6)
    {
      v10 = v6;
      v11 = [v6 isFinished];

      v6 = v11 ^ 1;
    }

    goto LABEL_6;
  }

  v7 = (*((*v1 & *v0) + 0x490))();
  v3 = (*((*v1 & *v0) + 0x920))(v7 & 1);
LABEL_8:
  result = (v2)(v3);
  if (result != 2)
  {
    return result & 1;
  }

  __break(1u);
  return result;
}

id DOCItemCollectionCellContent.hasGeneratedThumbnail.getter()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0xA80))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if ((*((*v1 & *v0) + 0x800))())
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isRepresentativeIcon];
  }

  swift_unknownObjectRelease();
  return v4;
}

id DOCItemCollectionCellContent._thumbnail.didset(id a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail;
  result = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail);
  if (!result)
  {
    if (!a1)
    {
      return result;
    }

LABEL_6:
    [a1 removeListener_];
    result = *(v1 + v3);
    if (!result)
    {
      return result;
    }

    goto LABEL_7;
  }

  if (result == a1)
  {
    return result;
  }

  if (a1)
  {
    goto LABEL_6;
  }

LABEL_7:

  return [result addListener_];
}

double DOCItemCollectionCellContent.imageCache.getter()
{
  swift_beginAccess();

  return result;
}

double DOCItemCollectionCellContent.imageCache.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_imageCache;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

__n128 DOCItemCollectionCellContent.neededThumbnailCreationProperties.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x3D0))();
  if (v4)
  {
    v5 = v4;
    v6 = (*((*v3 & *v1) + 0x368))();
    if (v6)
    {
      v7 = v6;
      (*((*v3 & *v1) + 0x2D8))(v14);
      if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v14) != 1)
      {
        v25 = v14[8];
        v26 = v14[9];
        v27[0] = v15[0];
        *(v27 + 9) = *(v15 + 9);
        v21 = v14[4];
        v22 = v14[5];
        v23 = v14[6];
        v24 = v14[7];
        v17 = v14[0];
        v18 = v14[1];
        v19 = v14[2];
        v20 = v14[3];
        *&v16 = v5;
        *(&v16 + 1) = v7;
        DOCGridLayout.specIconWidth.modify();
        goto LABEL_7;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  _sSo7DOCNode_p_So17UITraitCollectionC26DocumentManagerExecutables07DOCItemC12LayoutTraitsC08GridItemI0VtSgWOi0_(&v16);
LABEL_7:
  v8 = v27[0];
  *(a1 + 160) = v26;
  *(a1 + 176) = v8;
  *(a1 + 185) = *(v27 + 9);
  v9 = v23;
  *(a1 + 96) = v22;
  *(a1 + 112) = v9;
  v10 = v25;
  *(a1 + 128) = v24;
  *(a1 + 144) = v10;
  v11 = v19;
  *(a1 + 32) = v18;
  *(a1 + 48) = v11;
  v12 = v21;
  *(a1 + 64) = v20;
  *(a1 + 80) = v12;
  result = v17;
  *a1 = v16;
  *(a1 + 16) = result;
  return result;
}

id DOCItemCollectionCellContent.primaryItemStatusBadgeImage.getter()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x978))(v12);
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v12) == 1)
  {
    return 0;
  }

  swift_unknownObjectRelease();
  v2 = v12[1];
  v3 = DOCItemCollectionCellContent.primaryBadgeItemDecoration.getter();
  if (v3)
  {
    v4 = v3;
    v5 = *&v13[19];
    v6 = *&v13[20];
    v7 = [v3 imageType];
    if (!v7)
    {
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = MEMORY[0x24C1FAD20](v8);
    }

    v9 = objc_opt_self();
    [v2 displayScale];
    v1 = [v9 vendorBadgeDecorationForType:v7 size:1 scale:v5 prepare:{v6, v10}];
  }

  else
  {
    v1 = 0;
  }

  outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v13);

  return v1;
}

uint64_t key path getter for DOCItemCollectionCellContent.DecorationImageObserver.image : DOCItemCollectionCellContent.DecorationImageObserver@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t key path setter for DOCItemCollectionCellContent.DecorationImageObserver.image : DOCItemCollectionCellContent.DecorationImageObserver(id *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);
  v4 = *a1;
  return v3(v2);
}

void *DOCItemCollectionCellContent.DecorationImageObserver.image.getter()
{
  swift_getKeyPath();
  (*(*v0 + 192))();

  swift_beginAccess();
  v1 = v0[6];
  v2 = v1;
  return v1;
}

void DOCItemCollectionCellContent.DecorationImageObserver.image.setter(void *a1)
{
  swift_beginAccess();
  v3 = v1[6];
  if (!v3)
  {
    if (!a1)
    {
      v7 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    v10 = MEMORY[0x28223BE20](KeyPath, v9);
    (*(*v1 + 200))(v10);

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIImage, 0x277D755B8);
  v4 = v3;
  v5 = a1;
  v6 = static NSObject.== infix(_:_:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  v7 = v1[6];
LABEL_8:
  v1[6] = a1;
}

void closure #1 in DOCItemCollectionCellContent.DecorationImageObserver.image.setter(uint64_t a1, void *a2)
{
  swift_beginAccess();
  v4 = *(a1 + 48);
  *(a1 + 48) = a2;
  v5 = a2;
}

uint64_t (*DOCItemCollectionCellContent.DecorationImageObserver.image.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
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
  (*(*v1 + 192))();

  v4[5] = OBJC_IVAR____TtCC26DocumentManagerExecutables28DOCItemCollectionCellContent23DecorationImageObserver___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type DOCItemCollectionCellContent.DecorationImageObserver and conformance DOCItemCollectionCellContent.DecorationImageObserver, type metadata accessor for DOCItemCollectionCellContent.DecorationImageObserver, "Y?h80O\a");
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = DOCInlineRenameController.proposedFileName.modify(v4);
  return DOCItemCollectionCellContent.DecorationImageObserver.image.modify;
}

void DOCItemCollectionCellContent.DecorationImageObserver.image.modify(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t DOCItemCollectionCellContent.DecorationImageObserver.__allocating_init(type:size:scale:)(uint64_t a1, double a2, double a3, double a4)
{
  v8 = swift_allocObject();
  *(v8 + 48) = 0;
  ObservationRegistrar.init()();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  return v8;
}

uint64_t DOCItemCollectionCellContent.DecorationImageObserver.init(type:size:scale:)(uint64_t a1, double a2, double a3, double a4)
{
  *(v4 + 48) = 0;
  ObservationRegistrar.init()();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 40) = a4;
  return v4;
}

Swift::Void __swiftcall DOCItemCollectionCellContent.DecorationImageObserver.fetchImage()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v12 - v5;
  v7 = (*(*v0 + 144))(v4);
  if (v7)
  {
  }

  else
  {
    v8 = type metadata accessor for TaskPriority();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
    type metadata accessor for MainActor();

    v9 = static MainActor.shared.getter();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v1;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in DOCItemCollectionCellContent.DecorationImageObserver.fetchImage(), v10);
  }
}

uint64_t closure #1 in DOCItemCollectionCellContent.DecorationImageObserver.fetchImage()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for MainActor();
  v4[4] = static MainActor.shared.getter();
  v8 = (*(*a4 + 184) + **(*a4 + 184));
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = closure #1 in DOCItemCollectionCellContent.DecorationImageObserver.fetchImage();

  return v8();
}

uint64_t closure #1 in DOCItemCollectionCellContent.DecorationImageObserver.fetchImage()(uint64_t a1)
{
  *(*v1 + 48) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in DOCItemCollectionCellContent.DecorationImageObserver.fetchImage(), v3, v2);
}

uint64_t closure #1 in DOCItemCollectionCellContent.DecorationImageObserver.fetchImage()()
{
  v1 = v0[6];
  v2 = v0[2];

  (*(*v2 + 152))(v1);
  v3 = v0[1];

  return v3();
}

uint64_t DOCItemCollectionCellContent.DecorationImageObserver.getImage()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](DOCItemCollectionCellContent.DecorationImageObserver.getImage(), 0, 0);
}

{
  v1 = [objc_opt_self() itemAccessDecorationForType:*(*(v0 + 16) + 16) size:1 scale:*(*(v0 + 16) + 24) prepare:{*(*(v0 + 16) + 32), *(*(v0 + 16) + 40)}];
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t DOCItemCollectionCellContent.DecorationImageObserver.deinit()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables28DOCItemCollectionCellContent23DecorationImageObserver___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t DOCItemCollectionCellContent.DecorationImageObserver.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCC26DocumentManagerExecutables28DOCItemCollectionCellContent23DecorationImageObserver___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t DOCItemCollectionCellContent.cachedItemDecorationAccessType.getter()
{
  v1 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__itemDecorationAccessType;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__itemDecorationAccessType + 8) == 1)
  {
    v2 = MEMORY[0x277D85000];
    if ((*((*MEMORY[0x277D85000] & *v0) + 0x3D0))())
    {
      v3 = (*((*v2 & *v0) + 0xA60))();
      v5 = v4;
      swift_unknownObjectRelease();
      *v1 = v3;
      v1[8] = v5 & 1;
    }
  }

  return *v1;
}

uint64_t DOCItemCollectionCellContent.cachedDocCreationDate(for:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(__int128 *)@<X1>, uint64_t *a3@<X2>, SEL *a4@<X3>, unint64_t a5@<X8>, __n128 a6@<Q0>)
{
  v37 = a6;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v35 - v18;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v35 - v22;
  v40 = v37;
  v39 = &v40;
  if (specialized Sequence.contains(where:)(a2, v38, a1))
  {
    v36 = v19;
    v37.n128_u64[0] = a5;
    v24 = *a3;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(v6 + v24, v23, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
    v25 = type metadata accessor for Date();
    v26 = *(v25 - 8);
    v27 = (*(v26 + 48))(v23, 1, v25);
    v28 = outlined destroy of CharacterSet?(v23, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
    if (v27 == 1)
    {
      v29 = (*((*MEMORY[0x277D85000] & *v6) + 0x3D0))(v28);
      if (v29)
      {
        v30 = [v29 *a4];
        swift_unknownObjectRelease();
        v31 = v36;
        if (v30)
        {
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v32 = 0;
        }

        else
        {
          v32 = 1;
        }

        (*(v26 + 56))(v15, v32, 1, v25);
        outlined init with take of (key: URL, value: FPItem)(v15, v31, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
      }

      else
      {
        v31 = v36;
        (*(v26 + 56))(v36, 1, 1, v25);
      }

      swift_beginAccess();
      outlined assign with take of IndexPath?(v31, v6 + v24, &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
      swift_endAccess();
    }

    return outlined init with copy of DOCGridLayout.Spec?(v6 + v24, v37.n128_i64[0], &_s10Foundation4DateVSgMd, _s10Foundation4DateVSgMR);
  }

  else
  {
    v33 = type metadata accessor for Date();
    return (*(*(v33 - 8) + 56))(a5, 1, 1, v33);
  }
}

Swift::String __swiftcall DOCItemCollectionCellContent.cachedSubtitle(for:)(Swift::OpaquePointer a1)
{
  v3 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitle);
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitle + 8);
  if (!v4 || !*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitleColumnTypes))
  {
    goto LABEL_5;
  }

  v5 = *v3;

  v7 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(v6, a1._rawValue);

  if ((v7 & 1) == 0)
  {

LABEL_5:
    v5 = (*((*MEMORY[0x277D85000] & *v1) + 0xAC8))(a1._rawValue);
    v4 = v8;
    *v3 = v5;
    v3[1] = v8;

    *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__cachedSubtitleColumnTypes) = a1._rawValue;
  }

  v9 = v5;
  v10 = v4;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t DOCItemCollectionCellContent.itemDecorationAccessType(for:)(void *a1)
{
  swift_getObjectType();
  if ([a1 isReadable])
  {
    return 0;
  }

  if ([a1 isWritable])
  {
    return 1;
  }

  if (DOCNode.isFINode.getter())
  {
    return 0;
  }

  if ([a1 isFullyFormed])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

void *DOCItemCollectionCellContent.itemAccessObserver.getter()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x978))(v12);
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v12) == 1)
  {
    return 0;
  }

  v2 = v12[1];
  v3 = (*((*v1 & *v0) + 0xA30))();
  if (v4)
  {
    outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v13);
    swift_unknownObjectRelease();

    return 0;
  }

  v6 = v3;
  v7 = v13[19];
  v8 = v13[20];
  [v2 displayScale];
  v10 = v9;
  type metadata accessor for DOCItemCollectionCellContent.DecorationImageObserver(0);
  v11 = swift_allocObject();
  v11[6] = 0;
  ObservationRegistrar.init()();
  swift_unknownObjectRelease();

  outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v13);
  result = v11;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v10;
  return result;
}

id DOCItemCollectionCellContent.itemAccessStatusBadgeImage.getter()
{
  v1 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v0) + 0x978))(v12);
  if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v12) == 1)
  {
    return 0;
  }

  v2 = v12[1];
  v3 = (*((*v1 & *v0) + 0xA30))();
  if (v4)
  {
    outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v13);
    swift_unknownObjectRelease();

    return 0;
  }

  v6 = v3;
  v7 = *&v13[19];
  v8 = *&v13[20];
  v9 = objc_opt_self();
  [v2 displayScale];
  v11 = [v9 itemAccessDecorationForType:v6 size:1 scale:v7 prepare:{v8, v10}];
  swift_unknownObjectRelease();

  outlined destroy of DOCItemCollectionLayoutTraits.GridItemTraits(v13);
  return v11;
}

void DOCItemCollectionCellContent.fetchThumbnailIfNeeded()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd, &_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v29 - v4;
  v6 = type metadata accessor for ImageOptions();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = v29 - v14;
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__thumbnail))
  {
    return;
  }

  v17 = MEMORY[0x277D85000];
  v18 = (*((*MEMORY[0x277D85000] & *v0) + 0x3D0))(v13);
  if (!v18)
  {
    return;
  }

  v32 = v18;
  v19 = (*((*v17 & *v0) + 0x960))();
  if (v19)
  {
    v31 = v19;
    v20 = (*((*v17 & *v0) + 0x460))();
    if (v20 == 2)
    {
      __break(1u);
    }

    else
    {
      if (v20)
      {
        swift_unknownObjectRelease();

        return;
      }

      v29[0] = v7;
      v21 = *((*v17 & *v0) + 0x2D8);
      v29[1] = (*v17 & *v0) + 728;
      v30 = v21;
      v21(v37);
      v39[8] = v37[8];
      v39[9] = v37[9];
      v40[0] = v38[0];
      *(v40 + 9) = *(v38 + 9);
      v39[4] = v37[4];
      v39[5] = v37[5];
      v39[6] = v37[6];
      v39[7] = v37[7];
      v39[0] = v37[0];
      v39[1] = v37[1];
      v39[2] = v37[2];
      v39[3] = v37[3];
      if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v39) != 1)
      {
        outlined destroy of CharacterSet?(v37, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
        v22 = [objc_opt_self() mainScreen];
        [v22 scale];

        v30(v33);
        v35[8] = v33[8];
        v35[9] = v33[9];
        v36[0] = v34[0];
        *(v36 + 9) = *(v34 + 9);
        v35[4] = v33[4];
        v35[5] = v33[5];
        v35[6] = v33[6];
        v35[7] = v33[7];
        v35[0] = v33[0];
        v35[1] = v33[1];
        v35[2] = v33[2];
        v35[3] = v33[3];
        if (_s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v35) != 1)
        {
          outlined destroy of CharacterSet?(v33, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMd, _s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08GridItemG0VSgMR);
          v23 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent_folderTintComponents;
          swift_beginAccess();
          outlined init with copy of DOCGridLayout.Spec?(v1 + v23, v5, &_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMd, &_s21DocumentManagerUICore12ImageOptionsV0dE21FolderColorComponentsVSgMR);
          ImageOptions.init(size:scale:isFolded:folderTintComponents:)();
          v24 = v29[0];
          (*(v29[0] + 16))(v10, v15, v6);
          v25 = objc_allocWithZone(type metadata accessor for NodeThumbnail());
          swift_unknownObjectRetain();

          v26 = NodeThumbnail.init(node:imageOptions:imageCache:)();
          v27 = *(v1 + v16);
          *(v1 + v16) = v26;
          v28 = v26;
          DOCItemCollectionCellContent._thumbnail.didset(v27);
          swift_unknownObjectRelease();

          swift_unknownObjectRelease();
          (*(v24 + 8))(v15, v6);
          return;
        }

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  swift_unknownObjectRelease();
}

uint64_t DOCItemCollectionCellContent.thumbnail.getter()
{
  DOCItemCollectionCellContent.fetchThumbnailIfNeeded()();

  return swift_unknownObjectRetain();
}

void DOCItemCollectionCellContent.statusAppearance.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__statusAppearance;
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__statusAppearance);
  if (v4 == 10)
  {
    v5 = v1;
    v6 = MEMORY[0x277D85000];
    v7 = *((*MEMORY[0x277D85000] & *v1) + 0x3D0);
    if (!v7() || (ObjectType = swift_getObjectType(), DOCNode.debugUIScenario.getter(ObjectType, &v20), swift_unknownObjectRelease(), v20 == 1))
    {
      v9 = v7();
      if (!v9)
      {
LABEL_8:
        LOBYTE(v4) = 2;
LABEL_26:
        *(v5 + v3) = v4;
        goto LABEL_27;
      }

      v7 = v9;
      swift_getObjectType();
      if ([v7 isExcludedFromSync] && objc_msgSend(v7, sel_isExternalDownloadPlaceholder))
      {
        swift_unknownObjectRelease();
        goto LABEL_8;
      }

      if ([v7 isExcludedFromSync])
      {
        swift_unknownObjectRelease();
        LOBYTE(v4) = 4;
        goto LABEL_26;
      }

      goto LABEL_13;
    }

    v26 = v20;
    v29 = v23;
    v30 = v24;
    v31 = v25;
    v27 = v21;
    v28 = v22;
    DOCDebugUIScenario.statusAppearance.getter(&v19);
    outlined destroy of CharacterSet?(&v20, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMR);
    v4 = v19;
    *(v1 + v3) = v19;
    if (v4 == 10)
    {
      __break(1u);
LABEL_13:
      v10 = (*((*v6 & *v1) + 0x538))();
      if (v10)
      {
        v11 = v10;
        v12 = [v10 isFinished];

        if (!v12)
        {
          goto LABEL_16;
        }
      }

      if ([v7 isCopying])
      {
        goto LABEL_16;
      }

      if ([v7 isDownloading])
      {
        v13 = [v7 downloadingError];
        if (!v13)
        {
LABEL_16:
          swift_unknownObjectRelease();
          LOBYTE(v4) = 7;
          goto LABEL_26;
        }
      }

      if ([v7 isCloudItem] && (objc_msgSend(v7, sel_isDownloading) & 1) == 0 && (objc_msgSend(v7, sel_isExternalDownloadPlaceholder) & 1) == 0)
      {
        if (![v7 isDownloaded])
        {
          goto LABEL_50;
        }

        if (![v7 isFolder])
        {
          goto LABEL_23;
        }

        v16 = [v7 cachedDomain];
        if (!v16)
        {
          goto LABEL_23;
        }

        v17 = v16;
        if ([v16 isiCloudDriveProvider])
        {
          v18 = FPProviderDomain.shouldUseDSEnumeration.getter();

          if ((v18 & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
        }

        if (([v7 isRecursivelyDownloaded] & 1) == 0)
        {
LABEL_50:
          swift_unknownObjectRelease();
          LOBYTE(v4) = 1;
          goto LABEL_26;
        }
      }

LABEL_23:
      v14 = [v7 uploadingError];
      if (v14 || (v14 = [v7 downloadingError]) != 0)
      {
        v15 = v14;
        swift_unknownObjectRelease();

        LOBYTE(v4) = 3;
        goto LABEL_26;
      }

      if ([v7 isCloudItem] && objc_msgSend(v7, sel_isItemPinned) && (objc_msgSend(v7, sel_isExternalDownloadPlaceholder) & 1) == 0)
      {
        swift_unknownObjectRelease();
        LOBYTE(v4) = 9;
        goto LABEL_26;
      }

      if ([v7 isCloudItem] && (objc_msgSend(v7, sel_isUploaded) & 1) == 0 && (objc_msgSend(v7, sel_isExternalDownloadPlaceholder) & 1) == 0)
      {
        swift_unknownObjectRelease();
        LOBYTE(v4) = 5;
        goto LABEL_26;
      }

      DOCNode.collaborationType.getter(&v26);
      swift_unknownObjectRelease();
      if (v26 == 2)
      {
        LOBYTE(v4) = 8;
        goto LABEL_26;
      }

      if (v26 != 3)
      {
        if (v26)
        {
          LOBYTE(v4) = 6;
        }

        else
        {
          LOBYTE(v4) = 0;
        }

        goto LABEL_26;
      }

      goto LABEL_8;
    }
  }

LABEL_27:
  *a1 = v4;
}

id DOCItemCollectionCellContent.tableTitle.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v7 = MEMORY[0x28223BE20](v4, v5);
  v9 = v103 - v8;
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle;
  result = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables28DOCItemCollectionCellContent__tableTitle);
  if (!result)
  {
    v111 = v6;
    v12 = MEMORY[0x277D85000];
    v113 = (*((*MEMORY[0x277D85000] & *v0) + 0x640))(v7);
    v14 = v13;
    v15 = *((*v12 & *v0) + 0x2F0);
    v15(v120);
    v125 = v120[4];
    v126 = v120[5];
    v127 = v120[6];
    v128 = v120[7];
    v121 = v120[0];
    v122 = v120[1];
    v123 = v120[2];
    v124 = v120[3];
    result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(&v121);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v16 = outlined destroy of CharacterSet?(v120, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
      if ((v122 & 4) != 0)
      {
        *&v114 = (*((*v12 & *v0) + 0x7C0))(v16);
        v115 = v17;
      }

      else
      {
        *&v114 = 0;
        v115 = 0xE000000000000000;
      }

      (v15)(v118, v16);
      v119[4] = v118[4];
      v119[5] = v118[5];
      v119[6] = v118[6];
      v119[7] = v118[7];
      v119[0] = v118[0];
      v119[1] = v118[1];
      v119[2] = v118[2];
      v119[3] = v118[3];
      result = _s26DocumentManagerExecutables13DOCGridLayoutVSgWOg(v119);
      if (result != 1)
      {
        v18 = *&v119[0];
        outlined destroy of CharacterSet?(v118, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMd, &_s26DocumentManagerExecutables29DOCItemCollectionLayoutTraitsC08ListItemG0VSgMR);
        v19 = v115;

        v20 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v20 = v114 & 0xFFFFFFFFFFFFLL;
        }

        if (v20)
        {
          v110 = v18;
          result = _DocumentManagerBundle();
          if (!result)
          {
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v21 = result;
          v131._object = 0x8000000249BF3970;
          v22._countAndFlagsBits = 0x25209380E2204025;
          v23.value._countAndFlagsBits = 0x617A696C61636F4CLL;
          v23.value._object = 0xEB00000000656C62;
          v22._object = 0xA900000000000040;
          v24._countAndFlagsBits = 0;
          v24._object = 0xE000000000000000;
          v131._countAndFlagsBits = 0x1000000000000053;
          v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v23, v21, v24, v131);

          v26 = (*((*v12 & *v1) + 0x368))();
          if (v26 && (v27 = v26, v28 = v14, v29 = [v26 layoutDirection], v27, v30 = v29 == 1, v14 = v28, v30))
          {
            v31 = 2;
          }

          else
          {
            v31 = 1;
          }

          v103[0] = v9;
          v108 = String.wrappedInDirectionalIsolation(_:)(v31, v25._countAndFlagsBits, v25._object);
          v112 = v32;
          if (one-time initialization token for bidiIsolateBeginFSI != -1)
          {
            swift_once();
          }

          v103[1] = v25._object;
          v104 = v10;
          v33 = *((*v12 & *static DOCUnicode.bidiIsolateBeginFSI) + 0x58);
          v106 = (*v12 & *static DOCUnicode.bidiIsolateBeginFSI) + 88;
          v107 = v33;
          v116 = (v33)();
          v117 = v34;

          v109 = v14;
          MEMORY[0x24C1FAEA0](v113, v14);

          v35 = v116;
          v36 = v117;
          if (one-time initialization token for bidiIsolateEnd != -1)
          {
            swift_once();
          }

          v105 = *((*v12 & *static DOCUnicode.bidiIsolateEnd) + 0x58);
          v37 = v105();
          v39 = v38;
          v116 = v35;
          v117 = v36;

          MEMORY[0x24C1FAEA0](v37, v39);

          v41 = v117;
          v113 = v116;
          v116 = v107(v40);
          v117 = v42;

          MEMORY[0x24C1FAEA0](v114, v115);

          v45 = v116;
          v44 = v117;
          v46 = (v105)(v43);
          v48 = v47;
          v116 = v45;
          v117 = v44;

          MEMORY[0x24C1FAEA0](v46, v48);

          v49 = v116;
          v50 = v117;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v51 = swift_allocObject();
          v114 = xmmword_249B9FA70;
          *(v51 + 16) = xmmword_249B9FA70;
          v52 = MEMORY[0x277D837D0];
          *(v51 + 56) = MEMORY[0x277D837D0];
          v53 = lazy protocol witness table accessor for type String and conformance String();
          *(v51 + 32) = v113;
          *(v51 + 40) = v41;
          *(v51 + 96) = v52;
          *(v51 + 104) = v53;
          *(v51 + 64) = v53;
          *(v51 + 72) = v49;
          *(v51 + 80) = v50;
          v107 = v41;

          v54 = String.init(format:_:)();
          v56 = v55;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
          inited = swift_initStackObject();
          v58 = MEMORY[0x277D740C0];
          *(inited + 16) = v114;
          v59 = *v58;
          *(inited + 32) = v59;
          v60 = (*((*MEMORY[0x277D85000] & *v1) + 0x6B8))(v59);
          v61 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIColor, 0x277D75348);
          *(inited + 40) = v60;
          v62 = *MEMORY[0x277D740A8];
          *(inited + 64) = v61;
          *(inited + 72) = v62;
          *(inited + 104) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont, 0x277D74300);
          v63 = v110;
          *(inited + 80) = v110;
          *&v114 = v63;
          v64 = v62;
          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
          swift_arrayDestroy();
          v65 = objc_allocWithZone(MEMORY[0x277CCAB48]);
          v66 = MEMORY[0x24C1FAD20](v54, v56);
          type metadata accessor for NSAttributedStringKey(0);
          lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
          isa = Dictionary._bridgeToObjectiveC()().super.isa;

          v68 = [v65 initWithString:v66 attributes:isa];

          v69 = MEMORY[0x277D85000];
          v70 = *((*MEMORY[0x277D85000] & *v1) + 0x4A8);
          v71 = v111;
          v70();
          v72 = type metadata accessor for IndexSet();
          if ((*(*(v72 - 8) + 48))(v71, 1, v72) == 1)
          {
            v73 = v113;
            outlined destroy of CharacterSet?(v71, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
            v74 = v68;
            result = [v74 string];
            if (!result)
            {
LABEL_34:
              __break(1u);
              return result;
            }

            v68 = result;

            v75 = MEMORY[0x24C1FAD20](v73, v107);

            v76 = [v68 rangeOfString_];
            v78 = v77;

            v79 = (*((*MEMORY[0x277D85000] & *v1) + 0x670))();
            v130.value.location = v76;
            v130.value.length = v78;
            v130.is_nil = 0;
            v80 = applyHighlightingRange(to:range:color:)(v74, v130, v79).super.isa;

            v81 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
          }

          else
          {

            v94 = outlined destroy of CharacterSet?(v71, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
            v95 = v103[0];
            (v70)(v94);
            v96 = [v68 string];
            v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v99 = v98;

            v100 = (*((*v69 & *v1) + 0x670))();
            v101 = applyHighlightingSubtitle(to:indexSet:fullString:fileName:color:)(v68, v95, v97, v99, v113, v107, v100);

            outlined destroy of CharacterSet?(v95, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
            v81 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
          }

          v10 = v104;
        }

        else
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMd, &_ss23_ContiguousArrayStorageCySo21NSAttributedStringKeya_yptGMR);
          v82 = swift_initStackObject();
          *(v82 + 16) = xmmword_249B9A480;
          v83 = *MEMORY[0x277D740A8];
          v84 = v9;
          *(v82 + 32) = *MEMORY[0x277D740A8];
          *(v82 + 64) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIFont, 0x277D74300);
          *(v82 + 40) = v18;
          v85 = v18;
          v86 = v83;
          _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21NSAttributedStringKeya_ypTt0g5Tf4g_n(v82);
          swift_setDeallocating();
          outlined destroy of CharacterSet?(v82 + 32, &_sSo21NSAttributedStringKeya_yptMd, &_sSo21NSAttributedStringKeya_yptMR);
          v87 = objc_allocWithZone(MEMORY[0x277CCA898]);
          v88 = MEMORY[0x24C1FAD20](v113, v14);

          type metadata accessor for NSAttributedStringKey(0);
          lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey, &protocol conformance descriptor for NSAttributedStringKey);
          v89 = Dictionary._bridgeToObjectiveC()().super.isa;

          v90 = [v87 initWithString:v88 attributes:v89];

          v91 = (*((*v12 & *v1) + 0x4A8))();
          v92 = (*((*v12 & *v1) + 0x670))(v91);
          v93 = applyHighlighting(to:indexSet:color:)(v90, v84, v92).super.isa;

          outlined destroy of CharacterSet?(v84, &_s10Foundation8IndexSetVSgMd, &_s10Foundation8IndexSetVSgMR);
          v81 = [objc_allocWithZone(MEMORY[0x277CCA898]) initWithAttributedString_];
        }

        v102 = *(v1 + v10);
        *(v1 + v10) = v81;

        result = *(v1 + v10);
        if (result)
        {
          goto LABEL_27;
        }

LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    __break(1u);
    goto LABEL_32;
  }

LABEL_27:

  return result;
}