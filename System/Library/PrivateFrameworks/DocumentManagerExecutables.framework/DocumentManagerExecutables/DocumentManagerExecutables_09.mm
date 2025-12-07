Swift::Void __swiftcall DOCEjectButton.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for DOCEjectButton(0);
  objc_msgSendSuper2(&v12, sel_traitCollectionDidChange_, isa);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateDisabled;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateDisabled] = 1;
  v5 = [v2 traitCollection];
  v6 = [v5 sourceOutlineStyle];

  v7 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_sourceOutlineStyle];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_sourceOutlineStyle] = v6;
  if (v6 != v7)
  {
    [v2 setNeedsUpdateConfiguration];
  }

  v8 = [v2 traitCollection];
  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v10 = static UITraitCollection.Traits.sizeCategory;
  v11 = qword_27EEE9CC0;

  v9 = UITraitCollection.doc_hasChanged(_:comparesTo:)(&v10, isa);

  if (v9)
  {
    v2[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateNeeded] = 1;
  }

  v2[v4] = 0;
  if (v2[OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateNeeded] == 1)
  {
    [v2 setNeedsUpdateConfiguration];
    [v2 updateConfiguration];
  }
}

Swift::Void __swiftcall DOCEjectButton.didMoveToWindow()()
{
  v1.receiver = v0;
  v1.super_class = type metadata accessor for DOCEjectButton(0);
  objc_msgSendSuper2(&v1, sel_didMoveToWindow);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateNeeded) == 1)
  {
    [v0 setNeedsUpdateConfiguration];
    [v0 updateConfiguration];
  }
}

Swift::Bool __swiftcall DOCEjectButton.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  y = inside.y;
  x = inside.x;
  [v2 bounds];
  v5 = v15.origin.x;
  v6 = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  v9 = CGRectGetWidth(v15);
  v16.origin.x = v5;
  v16.origin.y = v6;
  v16.size.width = width;
  v16.size.height = height;
  v10 = CGRectGetHeight(v16);
  if (v9 > v10)
  {
    v10 = v9;
  }

  v11 = fmax(v10, 45.0) * 0.5;
  v17.origin.x = v5;
  v17.origin.y = v6;
  v17.size.width = width;
  v17.size.height = height;
  v12 = CGRectGetMidX(v17) - v11;
  v18.origin.x = v5;
  v18.origin.y = v6;
  v18.size.width = width;
  v18.size.height = height;
  v19.origin.y = CGRectGetMidY(v18) - v11;
  v19.size.width = v11 + v11;
  v19.origin.x = v12;
  v19.size.height = v11 + v11;
  v21.origin.x = v5;
  v21.origin.y = v6;
  v21.size.width = width;
  v21.size.height = height;
  v20 = CGRectUnion(v19, v21);
  v14.x = x;
  v14.y = y;
  return CGRectContainsPoint(v20, v14);
}

id DOCEjectButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id DOCEjectButton.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCEjectButton(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *DOCEjectionController.observation.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCEjectionController.observation.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t DOCEjectionController.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCEjectionController.delegate.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCEjectionController.delegate.modify;
}

void DOCEjectionController.delegate.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

char *DOCEjectionController.__allocating_init(source:alertPresenting:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button] = 0;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source] = a1;
  swift_unknownObjectWeakAssign();
  v13.receiver = v5;
  v13.super_class = v2;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v13, sel_init);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v7;
  v9 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
  swift_beginAccess();
  v11 = *&v8[v10];
  *&v8[v10] = v9;

  return v8;
}

char *DOCEjectionController.init(source:alertPresenting:)(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation] = 0;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source] = a1;
  swift_unknownObjectWeakAssign();
  v13.receiver = v2;
  v13.super_class = ObjectType;
  v6 = a1;
  v7 = objc_msgSendSuper2(&v13, sel_init);
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = v7;
  v9 = _KeyValueCodingAndObserving.observe<A>(_:options:changeHandler:)();

  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_observation;
  swift_beginAccess();
  v11 = *&v8[v10];
  *&v8[v10] = v9;

  return v8;
}

id key path getter for DOCFileProviderSource.isEjectable : DOCFileProviderSource@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 isEjectable];
  *a2 = result;
  return result;
}

void closure #1 in DOCEjectionController.init(source:alertPresenting:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      [v5 ejectionStateDidChange];
      swift_unknownObjectRelease();
    }
  }
}

char *DOCEjectionController._button.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button);
  }

  else
  {
    v4 = closure #1 in DOCEjectionController._button.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *closure #1 in DOCEjectionController._button.getter(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = objc_allocWithZone(type metadata accessor for DOCEjectButton(0));
  v4 = DOCEjectButton.init(primaryAction:)(partial apply for closure #1 in closure #1 in DOCEjectionController._button.getter, v2);
  v5 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source);
  v6 = v4;
  v7 = [v5 identifier];
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  MEMORY[0x24C1FAEA0](0x75427463656A652DLL, 0xEC0000006E6F7474);

  v11 = MEMORY[0x24C1FAD20](v8, v10);

  [v6 setAccessibilityIdentifier_];

  [v6 setHidden_];
  return v6;
}

void closure #1 in closure #1 in DOCEjectionController._button.getter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    DOCEjectionController.eject()();
  }
}

Swift::Void __swiftcall DOCEjectionController.eject()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source);
  if ([v1 isEjectable])
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v17 = Strong;
      DOCEjectionController.__performEjection(alertPresentingViewController:)(Strong);

      return;
    }

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v10 = static DOCLog.UI;
    v11 = static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_249B9A480;
    v13 = [v1 identifier];
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;

    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v12 + 32) = v14;
    *(v12 + 40) = v16;
    os_log(_:dso:log:type:_:)("Trying to eject a source but alert presenting view controller is nil %@", 71, 2, &dword_2493AC000, v10, v11, v12);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v3 = static DOCLog.UI;
    v4 = static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_249B9A480;
    v6 = [v1 identifier];
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    *(v5 + 56) = MEMORY[0x277D837D0];
    *(v5 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v5 + 32) = v7;
    *(v5 + 40) = v9;
    os_log(_:dso:log:type:_:)("Trying to eject a source that's not ejectable %@", 48, 2, &dword_2493AC000, v3, v4, v5);
  }
}

Swift::Void __swiftcall DOCEjectionController.showEjectButton()()
{
  v1 = DOCEjectionController._button.getter();
  v2 = [v1 isHidden];

  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button);

    [v3 setHidden_];
  }
}

Swift::Void __swiftcall DOCEjectionController.hideEjectButton()()
{
  v1 = DOCEjectionController._button.getter();
  v2 = [v1 isHidden];

  if ((v2 & 1) == 0)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController____lazy_storage____button);

    [v3 setHidden_];
  }
}

void DOCEjectionController.__performEjection(alertPresentingViewController:)(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCEjectionController_source);
  if (!*&sharedTypeToFocusInputView._viewFlags || (v4 = v3, , DOCDebugUIScenarioManager.scenario(for:)(v4, v18), , v4, v18[0] == 1) || (v5 = BYTE1(v18[1]), outlined destroy of CharacterSet?(v18, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMd, &_s26DocumentManagerExecutables18DOCDebugUIScenarioVSgMR), v5 == 2) || (v5 & 1) == 0)
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v11 = static DOCLog.UI;
    v12 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_249B9A480;
    v14 = [v3 identifier];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v13 + 32) = v15;
    *(v13 + 40) = v17;
    os_log(_:dso:log:type:_:)("Trying to eject source %@", 25, 2, &dword_2493AC000, v11, v12, v13);

    (*((*MEMORY[0x277D85000] & *v3) + 0x288))(a1);
  }

  else
  {
    v6 = MEMORY[0x24C1FAD20](0x6353206775626544, 0xEE006F6972616E65);
    v7 = MEMORY[0x24C1FAD20](0xD000000000000020, 0x8000000249BCB550);
    v8 = [objc_opt_self() alertControllerWithTitle:v6 message:v7 preferredStyle:1];

    v9 = MEMORY[0x24C1FAD20](19279, 0xE200000000000000);
    v10 = [objc_opt_self() actionWithTitle:v9 style:0 handler:0];

    [v8 addAction_];
    [a1 presentViewController:v8 animated:1 completion:0];
  }
}

id DOCEjectionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCEjectionController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized DOCEjectButton.init(coder:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_buttonSize;
  v2 = *MEMORY[0x277D75030];
  v3 = type metadata accessor for UIButton.Configuration.Size();
  (*(*(v3 - 8) + 104))(v0 + v1, v2, v3);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_sourceOutlineStyle;
  v5 = [objc_opt_self() mainScreen];
  v6 = [v5 traitCollection];

  v7 = [v6 sourceOutlineStyle];
  *(v0 + v4) = v7;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateDisabled) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_iconUpdateNeeded) = 1;
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables14DOCEjectButton_color;
  *(v0 + v8) = [objc_opt_self() labelColor];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t type metadata accessor for DOCEjectButton(uint64_t a1)
{
  result = type metadata singleton initialization cache for DOCEjectButton;
  if (!type metadata singleton initialization cache for DOCEjectButton)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t specialized DOCEjectButton.customImageBaseline(forIconStyle:contentCategory:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCSourceOutlineStyleO_SDySo21UIContentSizeCategorya12CoreGraphics7CGFloatVGtGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCSourceOutlineStyleO_SDySo21UIContentSizeCategorya12CoreGraphics7CGFloatVGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249B9FA70;
  *(inited + 32) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo21UIContentSizeCategorya_12CoreGraphics7CGFloatVtGMd, &_ss23_ContiguousArrayStorageCySo21UIContentSizeCategorya_12CoreGraphics7CGFloatVtGMR);
  v3 = swift_initStackObject();
  v4 = *MEMORY[0x277D76800];
  *(v3 + 32) = *MEMORY[0x277D76800];
  *(v3 + 16) = xmmword_249BA08D0;
  v5 = *MEMORY[0x277D767F8];
  *(v3 + 40) = 0x4014000000000000;
  *(v3 + 48) = v5;
  v6 = *MEMORY[0x277D767F0];
  *(v3 + 56) = 0x4014000000000000;
  *(v3 + 64) = v6;
  v7 = *MEMORY[0x277D767E8];
  *(v3 + 72) = 0x4014000000000000;
  *(v3 + 80) = v7;
  *(v3 + 88) = 0x4014000000000000;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  v16 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21UIContentSizeCategorya_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21UIContentSizeCategorya_12CoreGraphics7CGFloatVtMd, &_sSo21UIContentSizeCategorya_12CoreGraphics7CGFloatVtMR);
  swift_arrayDestroy();
  *(inited + 40) = v16;
  *(inited + 48) = 0;
  v17 = swift_initStackObject();
  *(v17 + 16) = xmmword_249BA08D0;
  *(v17 + 32) = v12;
  *(v17 + 40) = 0x4022000000000000;
  *(v17 + 48) = v13;
  *(v17 + 56) = 0x4022000000000000;
  *(v17 + 64) = v14;
  *(v17 + 72) = 0x4022000000000000;
  *(v17 + 80) = v15;
  *(v17 + 88) = 0x4022000000000000;
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21UIContentSizeCategorya_12CoreGraphics7CGFloatVTt0g5Tf4g_n(v17);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 56) = v18;
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC26DocumentManagerExecutables21DOCSourceOutlineStyleO_SDySo21UIContentSizeCategorya12CoreGraphics7CGFloatVGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables21DOCSourceOutlineStyleO_SDySo21UIContentSizeCategorya12CoreGraphics7CGFloatVGtMd, &_s26DocumentManagerExecutables21DOCSourceOutlineStyleO_SDySo21UIContentSizeCategorya12CoreGraphics7CGFloatVGtMR);
  swift_arrayDestroy();
  if (v19[2] && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(), (v21 & 1) != 0))
  {
    v22 = *(v19[7] + 8 * v20);

    if (*(v22 + 16) && (v23 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

uint64_t type metadata completion function for DOCEjectButton(uint64_t a1)
{
  result = type metadata accessor for UIButton.Configuration.Size();
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

uint64_t specialized Sequence.compactMap<A>(_:)(unint64_t a1, void *a2)
{
  v13 = MEMORY[0x277D84F90];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_22:
  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v6 = 0;
  result = MEMORY[0x277D84F90];
  do
  {
    v12 = result;
    for (i = v6; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x24C1FC540](i, a1);
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (i >= *(v4 + 16))
        {
          goto LABEL_21;
        }

        v9 = *(a1 + 8 * i + 32);
        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      if ([v9 fpfs_fpItem])
      {
        break;
      }

      v10 = swift_unknownObjectRetain();
      MEMORY[0x24C1FB090](v10);
      if (*((*a2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_unknownObjectRelease();
      if (v6 == v5)
      {
        return v12;
      }
    }

    v11 = swift_unknownObjectRelease();
    MEMORY[0x24C1FB090](v11);
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    result = v13;
  }

  while (v6 != v5);
  return result;
}

double DOCPickerContext.utisToSave.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___DOCPickerContext_utisToSave;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void key path getter for DOCPickerContext.utisToSave : DOCPickerContext(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 utisToSave];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a2 = v4;
}

uint64_t *DOCPickerContext.Fetcher.deinit()
{

  type metadata accessor for Array();
  type metadata accessor for Optional();
  swift_getTupleTypeMetadata2();
  type metadata accessor for _Cell();
  UnsafeMutablePointer.deinitialize(count:)();
  return v0;
}

uint64_t DOCPickerContext.Fetcher.__deallocating_deinit()
{
  DOCPickerContext.Fetcher.deinit();

  return swift_deallocClassInstance();
}

Swift::OpaquePointer_optional __swiftcall DOCPickerContext.fpfs_availableFINodesToMove()()
{
  v0 = DOCPickerContext.fpfs_availableFINodesToMove()(&OBJC_IVAR___DOCPickerContext__fiNodeFetcher, specialized Array<A>.fpfs_syncFetchAvailableFINodes());
  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

uint64_t specialized Array<A>.fpfs_syncFetchAvailableFINodes()(unint64_t a1)
{
  v1 = a1;
  v17 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_47:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = 0;
    v16 = MEMORY[0x277D84F90];
    while (2)
    {
      v6 = v5;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](v6, v1);
          v5 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_43;
          }
        }

        else
        {
          if (v6 >= *(v2 + 16))
          {
            goto LABEL_44;
          }

          swift_unknownObjectRetain();
          v5 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_43:
            __break(1u);
LABEL_44:
            __break(1u);
LABEL_45:
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          break;
        }

        v7 = swift_unknownObjectRetain();
        MEMORY[0x24C1FB090](v7);
        if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v4 = v18;
        swift_unknownObjectRelease();
        ++v6;
        if (v5 == v3)
        {
          goto LABEL_22;
        }
      }

      MEMORY[0x24C1FB090]();
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v16 = v17;
      if (v5 != v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

LABEL_22:
  if (v4 >> 62)
  {
    v8 = __CocoaSet.count.getter();
  }

  else
  {
    v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v1 = 0;
    v18 = MEMORY[0x277D84F90];
    v2 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v11 = v10;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x24C1FC540](v11, v4);
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v11 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          swift_unknownObjectRetain();
          v10 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_45;
          }
        }

        swift_getObjectType();
        v12 = DOCNode.fpfs_syncFetchFINode()();
        if (!v1)
        {
          break;
        }

        swift_unknownObjectRelease();
        v1 = 0;
LABEL_28:
        ++v11;
        if (v10 == v8)
        {
          goto LABEL_41;
        }
      }

      v13 = v12;
      v14 = swift_unknownObjectRelease();
      if (!v13)
      {
        goto LABEL_28;
      }

      MEMORY[0x24C1FB090](v14);
      if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v9 = v18;
      if (v10 == v8)
      {
LABEL_41:

        specialized Array.append<A>(contentsOf:)(v9);
        return v16;
      }
    }
  }

  return v16;
}

Swift::OpaquePointer_optional __swiftcall DOCPickerContext.fpfs_allFINodesToMove()()
{
  v0 = DOCPickerContext.fpfs_allFINodesToMove()(&OBJC_IVAR___DOCPickerContext__fiNodeFetcher, specialized Array<A>.fpfs_syncFetchAllFINodes());
  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

unint64_t specialized Array<A>.fpfs_syncFetchAllFINodes()(unint64_t a1)
{
  v1 = a1;
  v3 = specialized Array<A>._fpfs_prefetchAllFINodes()(a1);
  v4 = v2;
  v5 = *(v2 + 16);
  if (v5)
  {
    v25 = v1;
    v6 = 0;
    v7 = (v2 + 40);
    while (v6 < *(v4 + 16))
    {
      v1 = *(v7 - 1);
      v8 = *v7;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v9 = DOCNode.fpfs_syncFetchFINode()();
      if (v10)
      {

LABEL_21:
        swift_unknownObjectRelease();
LABEL_22:

        v19 = 0;
        v1 = MEMORY[0x277D84F90];
        v27 = MEMORY[0x277D84F90];
        v20 = *(v3 + 16);
        v5 = v25;
        while (v20 != v19)
        {
          if (v19 >= *(v3 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v21 = *(v3 + 8 * v19++ + 32);
          if (v21)
          {
            v22 = v21;
            MEMORY[0x24C1FB090]();
            if (*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v1 = v27;
          }
        }

        if (v1 >> 62)
        {
          goto LABEL_39;
        }

        v23 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v25 >> 62)
        {
          goto LABEL_40;
        }

        goto LABEL_31;
      }

      v11 = v9;
      if (!v9)
      {
        goto LABEL_21;
      }

      v12 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      }

      swift_unknownObjectRelease();
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_37;
      }

      if (v8 >= *(v3 + 16))
      {
        goto LABEL_38;
      }

      ++v6;
      v13 = v3 + 8 * v8;
      v14 = *(v13 + 32);
      *(v13 + 32) = v11;

      v7 += 2;
      if (v5 == v6)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {

    v15 = 0;
    v1 = MEMORY[0x277D84F90];
    v26 = MEMORY[0x277D84F90];
    v16 = *(v3 + 16);
    while (1)
    {
      if (v16 == v15)
      {

        return v1;
      }

      if (v15 >= *(v3 + 16))
      {
        break;
      }

      v17 = *(v3 + 8 * v15++ + 32);
      if (v17)
      {
        v18 = v17;
        MEMORY[0x24C1FB090]();
        if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = v26;
      }
    }

LABEL_35:
    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  v23 = __CocoaSet.count.getter();
  if (v5 >> 62)
  {
LABEL_40:
    if (v23 == __CocoaSet.count.getter())
    {
      return v1;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (v23 != *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:

    return 0;
  }

  return v1;
}

Swift::OpaquePointer_optional __swiftcall DOCPickerContext.fpfs_availableFPItemsToMove()()
{
  v0 = DOCPickerContext.fpfs_availableFINodesToMove()(&OBJC_IVAR___DOCPickerContext__fpItemFetcher, specialized Array<A>.fpfs_syncFetchAvailableFPItems());
  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

unint64_t DOCPickerContext.fpfs_availableFINodesToMove()(void *a1, uint64_t (*a2)(void))
{
  v3 = *(v2 + *a1);
  if (v3)
  {
    os_unfair_lock_lock((v3 + 24));
    v5 = *(v3 + 16);
    if (v5 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
        goto LABEL_4;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      v6 = *(v3 + 32);
      if (v6 || (v6 = *(v3 + 40)) != 0)
      {

LABEL_15:
        os_unfair_lock_unlock((v3 + 24));
        return v6;
      }

      v6 = a2(*(v3 + 16));
      *(v3 + 32) = v6;
      swift_bridgeObjectRetain_n();

      if (v6 >> 62)
      {
        v7 = __CocoaSet.count.getter();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = *(v3 + 16);
      if (v8 >> 62)
      {
        if (v7 == __CocoaSet.count.getter())
        {
          goto LABEL_12;
        }
      }

      else if (v7 == *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_12:
        *(v3 + 40) = v6;

        goto LABEL_15;
      }

      goto LABEL_15;
    }

    v6 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  return 0;
}

unint64_t specialized Array<A>.fpfs_syncFetchAvailableFPItems()(unint64_t a1)
{
  v1 = MEMORY[0x277D84F90];
  v12 = MEMORY[0x277D84F90];
  v2 = specialized Sequence.compactMap<A>(_:)(a1, &v12);
  v3 = v12;
  if (v12 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v2 = v10)
  {
    v5 = v2;
    v6 = 0;
    v12 = v1;
    while (1)
    {
      if (i == v6)
      {

        v12 = v5;
        specialized Array.append<A>(contentsOf:)(v1);
        return v12;
      }

      if ((v3 & 0xC000000000000001) == 0)
      {
        break;
      }

      v2 = MEMORY[0x24C1FC540](v6, v3);
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_16;
      }

LABEL_8:
      swift_getObjectType();
      v8 = DOCNode.fpfs_syncFetchFPItem()();
      v2 = swift_unknownObjectRelease();
      ++v6;
      if (v8)
      {
        MEMORY[0x24C1FB090](v2);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v2 = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = v12;
        v6 = v7;
      }
    }

    if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }

    v2 = swift_unknownObjectRetain();
    v7 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_8;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    v10 = v2;
    i = __CocoaSet.count.getter();
  }

  v11 = v2;

  return v11;
}

Swift::OpaquePointer_optional __swiftcall DOCPickerContext.fpfs_allFPItemsToMove()()
{
  v0 = DOCPickerContext.fpfs_allFINodesToMove()(&OBJC_IVAR___DOCPickerContext__fpItemFetcher, specialized Array<A>.fpfs_syncFetchAllFPItems());
  result.value._rawValue = v0;
  result.is_nil = v1;
  return result;
}

uint64_t DOCPickerContext.fpfs_allFINodesToMove()(void *a1, uint64_t (*a2)(void))
{
  v3 = *(v2 + *a1);
  if (v3)
  {
    os_unfair_lock_lock((v3 + 24));
    v5 = *(v3 + 16);
    if (v5 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_4:
        v6 = *(v3 + 40);
        if (v6)
        {
        }

        else if (*(v3 + 32))
        {
          v6 = 0;
        }

        else
        {
          v6 = a2(*(v3 + 16));
          *(v3 + 40) = v6;
          swift_bridgeObjectRetain_n();

          *(v3 + 32) = v6;
        }

        goto LABEL_12;
      }
    }

    else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    v6 = MEMORY[0x277D84F90];
LABEL_12:
    os_unfair_lock_unlock((v3 + 24));
    return v6;
  }

  return 0;
}

unint64_t specialized Array<A>.fpfs_syncFetchAllFPItems()(unint64_t a1)
{
  v2 = a1;
  v4 = specialized Array<A>._fpfs_prefetchAllFPItems()(a1);
  v5 = v3;
  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v3 + 40);
    while (v7 < *(v5 + 16))
    {
      v1 = *(v8 - 1);
      v9 = *v8;
      swift_getObjectType();
      swift_unknownObjectRetain();
      v10 = DOCNode.fpfs_syncFetchFPItem()();
      if (!v10)
      {
        swift_unknownObjectRelease();
LABEL_20:

        v18 = 0;
        v1 = MEMORY[0x277D84F90];
        v25 = MEMORY[0x277D84F90];
        v19 = *(v4 + 16);
        while (v19 != v18)
        {
          if (v18 >= *(v4 + 16))
          {
            __break(1u);
            goto LABEL_33;
          }

          v20 = *(v4 + 8 * v18++ + 32);
          if (v20)
          {
            v21 = v20;
            MEMORY[0x24C1FB090]();
            if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v1 = v25;
          }
        }

        if (v1 >> 62)
        {
          goto LABEL_37;
        }

        v22 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v2 >> 62)
        {
          goto LABEL_38;
        }

        goto LABEL_29;
      }

      v11 = v10;
      v12 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      }

      swift_unknownObjectRelease();
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      if (v9 >= *(v4 + 16))
      {
        goto LABEL_36;
      }

      ++v7;
      v13 = v4 + 8 * v9;
      v14 = *(v13 + 32);
      *(v13 + 32) = v11;

      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_20;
      }
    }
  }

  else
  {

    v15 = 0;
    v1 = MEMORY[0x277D84F90];
    v24 = MEMORY[0x277D84F90];
    v16 = *(v4 + 16);
    while (1)
    {
      if (v16 == v15)
      {

        return v1;
      }

      if (v15 >= *(v4 + 16))
      {
        break;
      }

      v17 = *(v4 + 8 * v15++ + 32);
      if (v17)
      {
        v2 = v17;
        MEMORY[0x24C1FB090]();
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v1 = v24;
      }
    }

LABEL_33:
    __break(1u);
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  v22 = __CocoaSet.count.getter();
  if (v2 >> 62)
  {
LABEL_38:
    if (v22 == __CocoaSet.count.getter())
    {
      return v1;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (v22 != *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_30:

    return 0;
  }

  return v1;
}

id DOCPickerContext.canRename.getter()
{
  result = [v0 urlsToSave];
  if (result)
  {
    v2 = result;
    type metadata accessor for URL();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = *(v3 + 16);

    return (v4 == 1);
  }

  return result;
}

BOOL DOCPickerContext.canSetTags.getter()
{
  v1 = [v0 urlsToSave];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

id DOCPickerContext.numberOfItems.getter()
{
  v1 = [v0 urlsToSave];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for URL();
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = *(v3 + 16);
LABEL_6:

    return v4;
  }

  v4 = [v0 nodesToMove];
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v5 >> 62)
    {
      v4 = __CocoaSet.count.getter();
    }

    else
    {
      v4 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    goto LABEL_6;
  }

  return v4;
}

void DOCPickerContext.firstDisplayName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v11 = &v25 - v10;
  v12 = [v1 urlsToSave];
  if (v12)
  {
    v13 = v12;
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v14 + 16))
    {
      (*(v3 + 16))(v6, v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

      (*(v3 + 32))(v11, v6, v2);
      v15 = [objc_opt_self() defaultManager];
      v16 = URL.path.getter();
      v17 = MEMORY[0x24C1FAD20](v16);

      v18 = [v15 displayNameAtPath_];

      if (v18)
      {
        v19 = [v18 stringByDeletingPathExtension];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
        (*(v3 + 8))(v11, v2);
        return;
      }

      goto LABEL_18;
    }
  }

  v20 = [v1 nodesToMove];
  if (v20)
  {
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
    v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v22 >> 62)
    {
      if (__CocoaSet.count.getter())
      {
LABEL_9:
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x24C1FC540](0, v22);
        }

        else
        {
          if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_18:
            __break(1u);
            return;
          }

          v23 = *(v22 + 32);
          swift_unknownObjectRetain();
        }

        v24 = [v23 displayName];
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        swift_unknownObjectRelease();

        return;
      }
    }

    else if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }
  }
}

id DOCPickerContext.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void DOCPickerContext.init()()
{
  *(v0 + OBJC_IVAR___DOCPickerContext_utisToSave) = MEMORY[0x277D84F90];
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id DOCPickerContext.init(fpurls:)(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPSandboxingURLWrapper, 0x277CC6438);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithFPURLs_];

  return v3;
}

void *DOCPickerContext.init(fpurls:)(unint64_t a1)
{
  v2 = v1;
  v21 = type metadata accessor for URL();
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!(a1 >> 62))
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_13:

LABEL_14:
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [v2 initWithURLs_];

    return v18;
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_3:
  v22 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v20 = v1;
    v10 = 0;
    v11 = v22;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x24C1FC540](v10, a1);
      }

      else
      {
        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 url];
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = v11;
      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      if (v16 >= v15 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1);
        v11 = v22;
      }

      ++v10;
      *(v11 + 16) = v16 + 1;
      (*(v4 + 32))(v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, v7, v21);
    }

    while (v8 != v10);

    v2 = v20;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id DOCPickerContext.init(urls:)(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for URL();
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithURLs_];

  return v3;
}

{
  v44[3] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR___DOCPickerContext_utisToSave;
  v9 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___DOCPickerContext_utisToSave] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___DOCPickerContext_urlsToSave] = a1;
  *&v1[OBJC_IVAR___DOCPickerContext_nodesToMove] = 0;
  *&v1[OBJC_IVAR___DOCPickerContext__fiNodeFetcher] = 0;
  *&v1[OBJC_IVAR___DOCPickerContext__fpItemFetcher] = 0;
  v10 = *(a1 + 16);
  if (v10)
  {
    v33 = v8;
    v34 = a1;
    v35 = v1;
    v12 = *(v4 + 16);
    v11 = v4 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v38 = *(v11 + 56);
    v39 = v12;
    v37 = (v11 - 8);

    v36 = 0;
    v40 = v3;
    v41 = v11;
    while (1)
    {
      v42 = v9;
      v39(v7, v13, v3);
      v14 = v7;
      URL._bridgeToObjectiveC()(v15);
      v17 = v16;
      v18 = [v16 startAccessingSecurityScopedResource];
      v44[0] = 0;
      v19 = [v17 br:v44 typeIdentifierWithError:?];
      v20 = v44[0];
      if (!v19)
      {
        break;
      }

      v21 = v19;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
      v25 = v20;

      if (v18)
      {
        goto LABEL_7;
      }

LABEL_8:

      v7 = v14;
      v3 = v40;
      (*v37)(v14, v40);
      if (v24)
      {
        v9 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
        }

        v27 = *(v9 + 2);
        v26 = *(v9 + 3);
        if (v27 >= v26 >> 1)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1, v9);
        }

        *(v9 + 2) = v27 + 1;
        v28 = &v9[16 * v27];
        *(v28 + 4) = v22;
        *(v28 + 5) = v24;
      }

      else
      {
        v9 = v42;
      }

      v13 += v38;
      if (!--v10)
      {

        v1 = v35;
        v8 = v33;
        goto LABEL_17;
      }
    }

    v29 = v44[0];
    v30 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v22 = 0;
    v24 = 0;
    v36 = 0;
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_7:
    [v17 stopAccessingSecurityScopedResource];
    goto LABEL_8;
  }

LABEL_17:
  swift_beginAccess();
  *&v1[v8] = v9;

  v43.receiver = v1;
  v43.super_class = DOCPickerContext;
  return objc_msgSendSuper2(&v43, sel_init);
}

id DOCPickerContext.init(nodes:)(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v3 = [v1 initWithNodes_];

  return v3;
}

{
  *&v1[OBJC_IVAR___DOCPickerContext_utisToSave] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___DOCPickerContext_urlsToSave] = 0;
  *&v1[OBJC_IVAR___DOCPickerContext_nodesToMove] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16DOCPickerContextC26DocumentManagerExecutablesE7Fetcher33_1A4A2D95C962EA9F59C398F93B7285EBLLCy_So6FINodeCGMd, &_sSo16DOCPickerContextC26DocumentManagerExecutablesE7Fetcher33_1A4A2D95C962EA9F59C398F93B7285EBLLCy_So6FINodeCGMR);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 16) = a1;
  *&v1[OBJC_IVAR___DOCPickerContext__fiNodeFetcher] = v3;
  swift_bridgeObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16DOCPickerContextC26DocumentManagerExecutablesE7Fetcher33_1A4A2D95C962EA9F59C398F93B7285EBLLCy_So6FPItemCGMd, &_sSo16DOCPickerContextC26DocumentManagerExecutablesE7Fetcher33_1A4A2D95C962EA9F59C398F93B7285EBLLCy_So6FPItemCGMR);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 16) = a1;
  *&v1[OBJC_IVAR___DOCPickerContext__fpItemFetcher] = v4;
  v6.receiver = v1;
  v6.super_class = DOCPickerContext;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t specialized Array<A>._fpfs_prefetchAllFPItems()(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_26:
    v15 = __CocoaSet.count.getter();
    v3 = _sSa9repeating5countSayxGx_SitcfCSo6FPItemCSg_Tt1g5Tf4gn_n(0, v15);
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      return v3;
    }
  }

  else
  {
    v3 = _sSa9repeating5countSayxGx_SitcfCSo6FPItemCSg_Tt1g5Tf4gn_n(0, *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *(v2 + 16);
    if (!v4)
    {
      return v3;
    }
  }

  v5 = 0;
  v17 = MEMORY[0x277D84F90];
  do
  {
    for (i = v5 + 4; ; ++i)
    {
      v7 = i - 4;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1FC540](i - 4, a1);
        v5 = i - 3;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_24;
        }

        v8 = *(a1 + 8 * i);
        swift_unknownObjectRetain();
        v5 = i - 3;
        if (__OFADD__(v7, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      v9 = [v8 fpfs_fpItem];
      if (!v9)
      {
        break;
      }

      v10 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      }

      if (v7 >= *(v3 + 16))
      {
        goto LABEL_25;
      }

      v11 = *(v3 + 8 * i);
      *(v3 + 8 * i) = v10;
      swift_unknownObjectRelease();

      if (v5 == v4)
      {
        return v3;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    }

    v13 = v17[2];
    v12 = v17[3];
    if (v13 >= v12 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v17);
    }

    v17[2] = v13 + 1;
    v14 = &v17[2 * v13];
    v14[4] = v8;
    v14[5] = v7;
  }

  while (v5 != v4);
  return v3;
}

uint64_t specialized Array<A>._fpfs_prefetchAllFINodes()(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_26:
    v15 = __CocoaSet.count.getter();
    v3 = _sSa9repeating5countSayxGx_SitcfCSo6FINodeCSg_Tt1g5Tf4gn_n(0, v15);
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      return v3;
    }
  }

  else
  {
    v3 = _sSa9repeating5countSayxGx_SitcfCSo6FINodeCSg_Tt1g5Tf4gn_n(0, *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *(v2 + 16);
    if (!v4)
    {
      return v3;
    }
  }

  v5 = 0;
  v17 = MEMORY[0x277D84F90];
  do
  {
    for (i = v5 + 4; ; ++i)
    {
      v7 = i - 4;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x24C1FC540](i - 4, a1);
        v5 = i - 3;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
          goto LABEL_24;
        }

        v8 = *(a1 + 8 * i);
        swift_unknownObjectRetain();
        v5 = i - 3;
        if (__OFADD__(v7, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      if (!v9)
      {
        break;
      }

      v10 = v9;
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
      }

      if (v7 >= *(v3 + 16))
      {
        goto LABEL_25;
      }

      v11 = *(v3 + 8 * i);
      *(v3 + 8 * i) = v10;
      swift_unknownObjectRelease();

      if (v5 == v4)
      {
        return v3;
      }
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
    }

    v13 = v17[2];
    v12 = v17[3];
    if (v13 >= v12 >> 1)
    {
      v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v17);
    }

    v17[2] = v13 + 1;
    v14 = &v17[2 * v13];
    v14[4] = v8;
    v14[5] = v7;
  }

  while (v5 != v4);
  return v3;
}

uint64_t DOCAppearance.copy.getter()
{
  [v0 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCAppearance, 0x277D05EA0);
  swift_dynamicCast();
  return v2;
}

double DOCTabBarVariableBlurBackgroundView.Metrics.init()@<D0>(uint64_t a1@<X8>)
{
  result = 6.0;
  *a1 = xmmword_249BA1270;
  *(a1 + 16) = 0x402C000000000000;
  *(a1 + 24) = &outlined read-only object #0 of DOCTabBarVariableBlurBackgroundView.Metrics.init();
  *(a1 + 32) = &outlined read-only object #1 of DOCTabBarVariableBlurBackgroundView.Metrics.init();
  return result;
}

void DOCTabBarVariableBlurBackgroundView.backdropConfiguration.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_gradientView))
  {
  }

  else
  {
    __break(1u);
  }
}

id DOCTabBarVariableBlurBackgroundView.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *DOCTabBarVariableBlurBackgroundView.init()()
{
  swift_getObjectType();
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics];
  *v1 = xmmword_249BA1270;
  *(v1 + 2) = 0x402C000000000000;
  *(v1 + 3) = &outlined read-only object #0 of DOCTabBarVariableBlurBackgroundView.Metrics.init();
  *(v1 + 4) = &outlined read-only object #1 of DOCTabBarVariableBlurBackgroundView.Metrics.init();
  v2 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_lastSeenBounds];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_blurView;
  *&v0[v3] = [objc_allocWithZone(MEMORY[0x277D75D68]) init];
  *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_gradientView] = 0;
  v21.receiver = v0;
  v21.super_class = type metadata accessor for DOCTabBarVariableBlurBackgroundView();
  v4 = objc_msgSendSuper2(&v21, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v5 = objc_opt_self();
  v6 = v4;

  v7 = *MEMORY[0x277CDA690];
  v22[1] = 0;
  v22[2] = 0;
  v22[0] = v7;
  v23 = xmmword_249BA1280;
  v24 = xmmword_249BA1290;
  v8 = objc_allocWithZone(type metadata accessor for BackdropGradientView());
  v9 = v7;
  v10 = BackdropGradientView.init(gradient:)(v22);
  v11 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_gradientView];
  *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_gradientView] = v10;
  v12 = v10;

  [v6 addSubview_];
  result = [objc_opt_self() effectWithBlurRadius_];
  if (result)
  {
    v14 = result;
    v15 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    v16 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_blurView];
    *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_blurView] = v15;
    v17 = v15;

    [v6 addSubview_];
    DOCTabBarVariableBlurBackgroundView.updateGradientLocationColors()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_249B9A480;
    v19 = type metadata accessor for UITraitUserInterfaceStyle();
    v20 = MEMORY[0x277D74BF0];
    *(v18 + 32) = v19;
    *(v18 + 40) = v20;
    UIView.registerForTraitChanges<A>(_:handler:)();

    swift_unknownObjectRelease();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCTabBarVariableBlurBackgroundView.metrics.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics + 16);
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics + 24);
  v4 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics + 32);
  *a1 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics);
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
}

Swift::Void __swiftcall DOCTabBarVariableBlurBackgroundView.layoutSubviews()()
{
  v30.receiver = v0;
  v30.super_class = type metadata accessor for DOCTabBarVariableBlurBackgroundView();
  objc_msgSendSuper2(&v30, sel_layoutSubviews);
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_lastSeenBounds];
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_lastSeenBounds];
  v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_lastSeenBounds + 8];
  v4 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_lastSeenBounds + 16];
  v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_lastSeenBounds + 24];
  [v0 bounds];
  v34.origin.x = v6;
  v34.origin.y = v7;
  v34.size.width = v8;
  v34.size.height = v9;
  v33.origin.x = v2;
  v33.origin.y = v3;
  v33.size.width = v4;
  v33.size.height = v5;
  v10 = CGRectEqualToRect(v33, v34);
  [v0 bounds];
  *v1 = v11;
  *(v1 + 1) = v12;
  *(v1 + 2) = v13;
  *(v1 + 3) = v14;
  if (!v10)
  {
    [v0 bounds];
    v16 = v15;
    v18 = v17;
    v19 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics + 8];
    v20 = -v19;
    v22 = v21 + v19;
    v23 = OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_blurView;
    [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_blurView] setFrame_];
    v24 = *&v0[v23];
    *v31 = v16;
    *&v31[1] = v20;
    *&v31[2] = v18;
    *&v31[3] = v22;
    v32 = 0;
    v25 = v24;
    v26 = DOCTabBarVariableBlurBackgroundView.effect(in:)(v31);
    [v25 setEffect_];

    v27 = OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_gradientView;
    v28 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_gradientView];
    if (v28)
    {
      [v28 setAlpha_];
      v29 = *&v0[v27];
      if (v29)
      {
        [v29 setFrame_];
        DOCTabBarVariableBlurBackgroundView.updateGradientLocationColors()();
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

id DOCTabBarVariableBlurBackgroundView.effect(in:)(uint64_t a1)
{
  v6 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics];
  if ((*(a1 + 32) & 1) != 0 || (v2 = *a1, v3 = *(a1 + 8), v4 = *(a1 + 16), v5 = *(a1 + 24), v20.origin.x = *a1, v20.origin.y = v3, v20.size.width = v4, v20.size.height = v5, CGRectIsEmpty(v20)))
  {
    result = [objc_opt_self() effectWithBlurRadius_];
    if (result)
    {
      return result;
    }

    __break(1u);
  }

  v21.origin.x = v2;
  v21.origin.y = v3;
  v21.size.width = v4;
  v21.size.height = v5;
  v8 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v9 = swift_allocObject();
  *(v9 + 2) = v1;
  v9[3] = v2;
  v9[4] = v3;
  v9[5] = v4;
  v9[6] = v5;
  v10 = swift_allocObject();
  *(v10 + 16) = partial apply for closure #1 in DOCTabBarVariableBlurBackgroundView.effect(in:);
  *(v10 + 24) = v9;
  v19[4] = partial apply for thunk for @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v19[5] = v10;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIGraphicsImageRendererContext) -> ();
  v19[3] = &block_descriptor_8;
  v11 = _Block_copy(v19);
  v12 = v1;

  v13 = [v8 imageWithActions_];
  _Block_release(v11);
  LOBYTE(v11) = swift_isEscapingClosureAtFileLocation();

  if (v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v13 size];
  v15 = v14;
  v17 = v16;
  result = objc_opt_self();
  if (v15 != 0.0 || v17 != 0.0)
  {
LABEL_10:
    result = [result _effectWithVariableBlurRadius_imageMask_scale_];
    if (result)
    {
      goto LABEL_11;
    }

LABEL_14:
    __break(1u);
    return result;
  }

  result = [result effectWithBlurRadius_];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

LABEL_11:
  v18 = result;

  return v18;
}

void closure #1 in DOCTabBarVariableBlurBackgroundView.effect(in:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v13 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics + 24);
  v14 = *(v13 + 16);
  if (v14)
  {
    v44 = a1;
    v45 = v12;
    *&v46 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
    v15 = v46;
    v16 = objc_opt_self();
    v17 = 0;
    v18 = *(v13 + 16);
    do
    {
      if (v18 == v17)
      {
        __break(1u);
        return;
      }

      v19 = *(v13 + 32 + 8 * v17);
      v20 = [v16 blackColor];
      v21 = [v20 colorWithAlphaComponent_];

      *&v46 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        v15 = v46;
      }

      v24 = v17++ / (v14 - 1);
      *(v15 + 16) = v23 + 1;
      v25 = v15 + 16 * v23;
      *(v25 + 32) = v24;
      *(v25 + 40) = v21;
    }

    while (v14 != v17);
    v26 = MEMORY[0x277D84F90];
    *&v46 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 + 1, 0);
    v27 = v46;
    v28 = *(v46 + 16);
    v29 = v23 + 1;
    v30 = 32;
    do
    {
      v31 = *(v15 + v30);
      *&v46 = v27;
      v32 = *(v27 + 24);
      if (v28 >= v32 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v28 + 1, 1);
        v27 = v46;
      }

      *(v27 + 16) = v28 + 1;
      *(v27 + 8 * v28 + 32) = v31;
      v30 += 16;
      ++v28;
      --v29;
    }

    while (v29);
    specialized _arrayForceCast<A, B>(_:)(v27);

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v45 setLocations_];

    v48 = v26;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 + 1, 0);
    v34 = v26;
    v35 = v23 + 1;
    v36 = 40;
    do
    {
      v37 = *(v15 + v36);
      v38 = [v37 CGColor];
      type metadata accessor for CGColorRef(0);
      v47 = v39;

      *&v46 = v38;
      v48 = v34;
      v41 = *(v34 + 16);
      v40 = *(v34 + 24);
      if (v41 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
        v34 = v48;
      }

      *(v34 + 16) = v41 + 1;
      outlined init with take of Any(&v46, (v34 + 32 * v41 + 32));
      v36 += 16;
      --v35;
    }

    while (v35);

    v42 = Array._bridgeToObjectiveC()().super.isa;

    [v45 setColors_];

    [v45 setStartPoint_];
    [v45 setEndPoint_];
    [v45 setFrame_];
    v43 = [v44 CGContext];
    [v45 renderInContext_];
  }

  else
  {
  }
}

void DOCTabBarVariableBlurBackgroundView.updateGradientLocationColors()()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  v3 = [v2 userInterfaceStyle];

  v4 = objc_opt_self();
  v5 = &selRef_blackColor;
  if (v3 != 2)
  {
    v5 = &selRef_whiteColor;
  }

  v6 = [v4 *v5];
  v7 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_metrics + 32];
  v8 = *(v7 + 16);
  if (v8)
  {
    v25 = v6;
    *&v27[0] = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = 0;
    v10 = *&v27[0];
    v11 = *(v7 + 16);
    do
    {
      if (v11 == v9)
      {
        __break(1u);
        goto LABEL_15;
      }

      v12 = [v25 colorWithAlphaComponent_];
      *&v27[0] = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        v17 = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v17;
        v10 = *&v27[0];
      }

      v15 = v9++ / (v8 - 1);
      *(v10 + 16) = v14 + 1;
      v16 = v10 + 16 * v14;
      *(v16 + 32) = v15;
      *(v16 + 40) = v12;
    }

    while (v8 != v9);
    v18 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_gradientView];
    if (v18)
    {
      v19 = &v18[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradient];
      *&v18[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradient + 8] = v10;
      v20 = v18;

      v21 = *v19;
      v22 = *(v19 + 1);
      v23 = *(v19 + 2);
      v28 = *(v19 + 6);
      v27[1] = v22;
      v27[2] = v23;
      v27[0] = v21;
      v24 = *&v20[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradientMaskLayer];
      outlined init with copy of Gradient(v27, v26);
      Gradient.configureLayer(_:)(v24);
      outlined destroy of Gradient(v27);

      return;
    }

LABEL_15:
    __break(1u);
  }

  else
  {
  }
}

id DOCTabBarVariableBlurBackgroundView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void DOCTabBarVariableBlurBackgroundView.__ivar_destroyer()
{

  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables35DOCTabBarVariableBlurBackgroundView_gradientView);
}

void one-time initialization function for sharedCaptureGroup()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D763E8]) init];
  v1 = MEMORY[0x24C1FAD20](0xD000000000000014, 0x8000000249BCB9B0);
  [v0 setGroupName_];

  v2 = MEMORY[0x24C1FAD20](0xD000000000000019, 0x8000000249BCB9D0);
  [v0 setGroupNamespace_];

  static BackdropGradientView.sharedCaptureGroup = v0;
}

id _UIVisualEffectViewBackdropCaptureGroup.init(captureGroup:namespace:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v9 = MEMORY[0x24C1FAD20](a1, a2);

  [v8 setGroupName_];

  v10 = MEMORY[0x24C1FAD20](a3, a4);

  [v8 setGroupNamespace_];

  return v8;
}

char *BackdropGradientView.init(gradient:)(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradientMaskLayer;
  *&v2[v4] = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_backdropConfiguration;
  if (one-time initialization token for sharedCaptureGroup != -1)
  {
    swift_once();
  }

  v6 = static BackdropGradientView.sharedCaptureGroup;
  type metadata accessor for DOCBackdropConfiguration();
  swift_allocObject();
  *&v2[v5] = DOCBackdropConfiguration.init(renderMode:captureGroup:layoutHandler:)(1, v6, DOCGridLayout.specIconWidth.modify, 0);
  v7 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradient];
  *(v7 + 6) = *(a1 + 48);
  v8 = *(a1 + 32);
  *(v7 + 1) = *(a1 + 16);
  *(v7 + 2) = v8;
  *v7 = *a1;
  outlined init with copy of Gradient(a1, v34);
  v33.receiver = v2;
  v33.super_class = type metadata accessor for BackdropGradientView();
  v9 = objc_msgSendSuper2(&v33, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_backdropConfiguration;
  v11 = *(**&v9[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_backdropConfiguration] + 200);
  v12 = v9;

  v14 = v11(v13);

  [v12 setCaptureGroup_];

  v15 = [v12 backdropLayer];
  v34[0] = 23;
  type metadata accessor for CGBlendMode(0);
  [v15 setCompositingFilter_];

  swift_unknownObjectRelease();
  v16 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradientMaskLayer;
  v17 = *&v12[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradientMaskLayer];
  Gradient.configureLayer(_:)(v17);

  v18 = [v12 backdropLayer];
  [v18 setMask_];

  v19 = *&v12[v16];
  v20 = [v12 backdropLayer];
  [v20 bounds];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  [v19 setFrame_];
  v29 = *&v9[v10];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v31 = *(*v29 + 256);

  v31(partial apply for closure #1 in BackdropGradientView.init(gradient:), v30);

  outlined destroy of Gradient(a1);

  return v12;
}

id Gradient.configureLayer(_:)(void *a1)
{
  v2 = v1;
  [a1 setType_];
  v4 = *(v1 + 1);
  if (v4)
  {
    v5 = *(v4 + 16);
    v6 = MEMORY[0x277D84F90];
    if (v5)
    {
      *&v23 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5, 0);
      v6 = v23;
      v7 = (v4 + 32);
      v8 = *(v23 + 16);
      do
      {
        v9 = *v7;
        *&v23 = v6;
        v10 = *(v6 + 24);
        if (v8 >= v10 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v8 + 1, 1);
          v6 = v23;
        }

        *(v6 + 16) = v8 + 1;
        *(v6 + 8 * v8 + 32) = v9;
        v7 += 2;
        ++v8;
        --v5;
      }

      while (v5);
    }

    specialized _arrayForceCast<A, B>(_:)(v6);

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    v11.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  [a1 setLocations_];

  isa = *(v2 + 2);
  if (isa)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for CAMediaTimingFunction, 0x277CD9EF8);
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  [a1 setInterpolations_];

  if (v4)
  {
    v13 = *(v4 + 16);
    if (v13)
    {
      v25 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
      v14 = v25;
      v15 = (v4 + 40);
      do
      {
        v16 = *v15;
        v17 = [v16 CGColor];
        type metadata accessor for CGColorRef(0);
        v24 = v18;

        *&v23 = v17;
        v25 = v14;
        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1);
          v14 = v25;
        }

        *(v14 + 16) = v20 + 1;
        outlined init with take of Any(&v23, (v14 + 32 * v20 + 32));
        v15 += 2;
        --v13;
      }

      while (v13);
    }

    v21.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v21.super.isa = 0;
  }

  [a1 setColors_];

  [a1 setStartPoint_];
  return [a1 setEndPoint_];
}

void closure #1 in BackdropGradientView.init(gradient:)(uint64_t a1, uint64_t a2)
{
  v3 = (*(*a1 + 224))(a1);
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = Strong;
      [v6 bounds];
      Height = CGRectGetHeight(v30);
      [v4 bounds];
      v9 = v8;
      v11 = v10;
      [v4 bounds];
      v12 = CGRectGetMaxY(v31) - Height;
      v13 = *(*a1 + 128);
      v14 = v13();
      [v14 setFrame_];

      v15 = v13();
      [v15 setTranslatesAutoresizingMaskIntoConstraints_];

      v16 = v13();
      [v16 setAutoresizingMask_];

      v17 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradientMaskLayer];
      v18 = [v6 backdropLayer];
      [v18 bounds];
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v26 = v25;

      [v17 setFrame_];
      v27 = v13();
      [v4 sendSubviewToBack_];

      v28 = (*(*a1 + 152))();
      [v4 sendSubviewToBack_];

      v29 = [v6 effectiveAppearance];
      BackdropGradientView.updateAppearanceColorView(appearance:)(v29);
    }
  }
}

void BackdropGradientView.updateAppearanceColorView(appearance:)(void *a1)
{
  v3 = *(**(v1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_backdropConfiguration) + 152);

  v5 = v3(v4);

  if (a1)
  {
    v6 = a1;
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D05EA0]) init];
  }

  v7 = a1;
  [v6 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCAppearance, 0x277D05EA0);
  swift_dynamicCast();
  [v9 setForceClearBackground_];
  v8 = [v9 backgroundColor];
  [v5 setBackgroundColor_];
}

id DOCTabBarVariableBlurBackgroundView.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void key path setter for DOCBackdropConfiguration.view : DOCBackdropConfiguration(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

id DOCBackdropConfiguration.view.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void key path setter for DOCBackdropConfiguration.appearanceColorView : DOCBackdropConfiguration(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;
}

id DOCBackdropConfiguration.appearanceColorView.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void key path setter for DOCBackdropConfiguration.captureGroup : DOCBackdropConfiguration(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
  v5 = v2;
}

id DOCBackdropConfiguration.captureGroup.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);

  return v1;
}

uint64_t key path setter for DOCBackdropConfiguration.layoutHandler : DOCBackdropConfiguration(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *(**a2 + 256);

  return v6(partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ()), v5);
}

uint64_t DOCBackdropConfiguration.layoutHandler.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

uint64_t DOCBackdropConfiguration.layoutHandler.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

void *DOCBackdropConfiguration.init(renderMode:captureGroup:layoutHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v9 = [objc_allocWithZone(MEMORY[0x277D763C8]) initWithFrame_];
  [v9 setRenderMode_];
  [v9 setCaptureGroup_];
  v4[4] = a1;
  v4[5] = a2;
  v10 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4[2] = v9;
  v4[3] = v10;
  v4[7] = a3;
  v4[8] = a4;
  return v4;
}

Swift::Void __swiftcall DOCBackdropConfiguration.activate(inContainer:)(UIView *inContainer)
{
  v2 = v1;
  v4 = (*(*v1 + 224))();
  if (!v4 || (v5 = v4, type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18), v6 = inContainer, v7 = static NSObject.== infix(_:_:)(), v6, v5, (v7 & 1) == 0))
  {
    (*(*v2 + 288))();
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakAssign();
  v9 = *(*v2 + 152);
  v10 = (v9)(v8);
  [(UIView *)inContainer addSubview:v10];

  v11 = *(*v2 + 128);
  v12 = v11();
  [(UIView *)inContainer addSubview:v12];

  v13 = v9();
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  v36 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_249BA0470;
  v15 = v9();
  v16 = [v15 leadingAnchor];

  v17 = v11();
  v18 = [v17 leadingAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v14 + 32) = v19;
  v20 = v9();
  v21 = [v20 trailingAnchor];

  v22 = v11();
  v23 = [v22 trailingAnchor];

  v24 = [v21 constraintEqualToAnchor_];
  *(v14 + 40) = v24;
  v25 = v9();
  v26 = [v25 topAnchor];

  v27 = v11();
  v28 = [v27 topAnchor];

  v29 = [v26 constraintEqualToAnchor_];
  *(v14 + 48) = v29;
  v30 = v9();
  v31 = [v30 bottomAnchor];

  v32 = v11();
  v33 = [v32 bottomAnchor];

  v34 = [v31 constraintEqualToAnchor_];
  *(v14 + 56) = v34;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v36 activateConstraints_];

  (*(*v2 + 296))();
}

Swift::Void __swiftcall DOCBackdropConfiguration.deactivate()()
{
  v1 = v0;
  v2 = (*(*v0 + 224))();
  if (v2)
  {
    v9 = v2;
    v3 = *(*v0 + 128);
    v4 = v3();
    v5 = [v4 superview];

    if (v5 && (type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18), v9 = v9, v6 = static NSObject.== infix(_:_:)(), v9, v5, (v6 & 1) != 0))
    {
      v7 = (*(*v1 + 152))();
      [v7 removeFromSuperview];

      v8 = v3();
      [v8 removeFromSuperview];

      swift_beginAccess();
      swift_unknownObjectWeakAssign();
    }

    else
    {
    }
  }
}

Swift::Void __swiftcall DOCBackdropConfiguration.updateLayout()()
{
  v1 = (*(*v0 + 224))();
  if (v1)
  {

    v2 = (*(*v0 + 248))();
    v2();
  }
}

id *DOCBackdropConfiguration.deinit()
{
  MEMORY[0x24C1FE970](v0 + 6);

  return v0;
}

uint64_t DOCBackdropConfiguration.__deallocating_deinit()
{
  MEMORY[0x24C1FE970](v0 + 6);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LocationColor(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
  return static NSObject.== infix(_:_:)() & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Gradient(uint64_t a1, uint64_t a2)
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
  return specialized static Gradient.== infix(_:_:)(v5, v7);
}

uint64_t getEnumTagSinglePayload for DOCTabBarVariableBlurBackgroundView.Metrics(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for DOCTabBarVariableBlurBackgroundView.Metrics(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for Gradient(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for Gradient(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL specialized static Gradient.== infix(_:_:)(uint64_t a1, double *a2)
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *(a1 + 8);
  v11 = *(a2 + 1);
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    _sSasSQRzlE2eeoiySbSayxG_ABtFZ26DocumentManagerExecutables13LocationColor33_0BFB980FCBDEF78F05FB1DEEFECAD8EFLLV_Tt1g5(v10, v11);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  v15 = *(a2 + 2);
  if (v14)
  {
    if (!v15)
    {
      return 0;
    }

    v16 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSo21CAMediaTimingFunctionC_Tt1g5(v14, v15);

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  return *(a1 + 24) == a2[3] && *(a1 + 32) == a2[4] && *(a1 + 40) == a2[5] && *(a1 + 48) == a2[6];
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed DOCBackdropConfiguration) -> (@out ())(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t getEnumTagSinglePayload for LocationColor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for LocationColor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t presentFPErrorAlert(error:alertPresenting:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v5 = a1;
  v6 = a2;
  DOCRunInMainThread(_:)();
}

uint64_t DOCDataOwnerState.uiDataOwner.getter(unint64_t a1)
{
  if (a1 < 3)
  {
    return qword_249BA16C0[a1];
  }

  type metadata accessor for DOCDataOwnerState(0);
  v4[3] = v3;
  v4[0] = a1;
  doc_warnUnrecognizedEnumValueEncountered(_:)(v4);
  __swift_destroy_boxed_opaque_existential_0(v4);
  return 0;
}

void NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  ObjectType = swift_getObjectType();

  specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(a1, v7, v6, v5, v4, ObjectType);
}

uint64_t closure #1 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(void (*a1)(uint64_t, unint64_t, void *), uint64_t a2, uint64_t a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v4 = [objc_opt_self() archivedDataWithRootObject:a3 requiringSecureCoding:1 error:v13];
  v5 = v13[0];
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    outlined copy of Data._Representation(v6, v8);
    a1(v6, v8, 0);
    outlined consume of Data._Representation(v6, v8);
    outlined consume of Data._Representation(v6, v8);
  }

  else
  {
    v9 = v5;
    v10 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v11 = v10;
    a1(0, 0xF000000000000000, v10);
  }

  return 0;
}

id static NSError.doc_dragAndDropError(code:userInfo:)(unsigned __int8 a1, Class isa)
{
  v4 = MEMORY[0x24C1FAD20](0xD000000000000025, 0x8000000249BCB9F0);
  if (isa)
  {
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  v5 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:v4 code:a1 + 1001 userInfo:isa];

  return v5;
}

void NSItemProvider.doc_setTeamDataSafely(_:)(uint64_t a1, unint64_t a2)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      goto LABEL_14;
    }

    LODWORD(v6) = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v6 = v6;
      goto LABEL_7;
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
    goto LABEL_9;
  }

  if (v5 != 2)
  {
    goto LABEL_14;
  }

  v8 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (v9)
  {
    goto LABEL_21;
  }

LABEL_7:
  if (v6 <= 0x2000)
  {
    goto LABEL_14;
  }

  v4 = a1;
  v3 = a2;
  if (one-time initialization token for UI != -1)
  {
    goto LABEL_22;
  }

LABEL_9:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.UI);
  outlined copy of Data._Representation(v4, v3);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v11, v12))
  {
    outlined consume of Data._Representation(v4, v3);
LABEL_19:

    v18 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v19 = MEMORY[0x24C1FAD20](0xD000000000000025, 0x8000000249BCB9F0);
    [v18 initWithDomain:v19 code:1001 userInfo:0];

    swift_willThrow();
    return;
  }

  v2 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v20 = v13;
  *v2 = 136315650;
  *(v2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000019, 0x8000000249BCBA20, &v20);
  *(v2 + 12) = 2048;
  if (v5 == 2)
  {
    v15 = *(v4 + 16);
    v14 = *(v4 + 24);
    v9 = __OFSUB__(v14, v15);
    v16 = v14 - v15;
    if (!v9)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_14:
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v2 setTeamData_];

    return;
  }

  LODWORD(v16) = HIDWORD(v4) - v4;
  if (!__OFSUB__(HIDWORD(v4), v4))
  {
    v16 = v16;
LABEL_18:
    *(v2 + 14) = v16;
    outlined consume of Data._Representation(v4, v3);
    *(v2 + 22) = 2048;
    *(v2 + 24) = 0x2000;
    _os_log_impl(&dword_2493AC000, v11, v12, "%s: teamData size %ld bytes exceeds maximum allowed size of %ld bytes", v2, 0x20u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x24C1FE850](v13, -1, -1);
    MEMORY[0x24C1FE850](v2, -1, -1);
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t closure #2 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(void (*a1)(uint64_t, void, __n128), uint64_t a2, void *a3, uint64_t a4)
{
  v25 = a4;
  v26 = a2;
  v27 = a1;
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v24 = static DOCLog.UI;
  v23 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_249BA08C0;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = lazy protocol witness table accessor for type String and conformance String();
  *(v10 + 64) = v12;
  *(v10 + 32) = 0xD00000000000005BLL;
  *(v10 + 40) = 0x8000000249BCBBB0;
  v13 = [a3 displayName];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 72) = v14;
  *(v10 + 80) = v16;
  v17 = [a3 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = UTType.identifier.getter();
  v20 = v19;
  (*(v6 + 8))(v9, v5);
  *(v10 + 136) = v11;
  *(v10 + 144) = v12;
  *(v10 + 112) = v18;
  *(v10 + 120) = v20;
  os_log(_:dso:log:type:_:)("%@: providing %@ with type %@", 29, 2, &dword_2493AC000, v24, v23, v10);

  (v27)(v25, 0);
  return 0;
}

uint64_t closure #3 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v20 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DOCGridLayout.Spec?(a1, v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return outlined destroy of CharacterSet?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  (*(v12 + 32))(v15, v10, v11);
  v17 = _s26DocumentManagerExecutables11LaunchUtilsV28bundleIdentifierOfDefaultApp3for4nodeSSSg10Foundation3URLV_So7DOCNode_ptFZTf4nen_nSo6FPItemC_Tt1g5(v15, a4);
  if (v18)
  {
    v19 = MEMORY[0x24C1FAD20](v17);
  }

  else
  {
    v19 = 0;
  }

  [a3 setDocui:v19 preferredApplicationBundleIdentifier:?];

  return (*(v12 + 8))(v15, v11);
}

void folderLoadHandler #1 (node:completionBlock:) in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(void *a1, void (*a2)(void, void), uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &aBlock[-1] - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &aBlock[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v17 = swift_dynamicCastObjCClass();
  if (v17)
  {
    v18 = v17;
    swift_unknownObjectRetain();
    v19 = [v18 fileURL];
    if (v19)
    {
      v20 = v19;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v13 + 16))(v11, v16, v12);
      (*(v13 + 56))(v11, 0, 1, v12);
      callCompletionBlock #1 (_:error:) in folderLoadHandler #1 (node:completionBlock:) in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(v11, 0, a1, a2, a3);
      swift_unknownObjectRelease();
      outlined destroy of CharacterSet?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(v13 + 8))(v16, v12);
      return;
    }

    swift_unknownObjectRelease();
  }

  if (a4)
  {
    v21 = objc_opt_self();
    v22 = a4;
    v23 = [v21 defaultManager];
    v24 = swift_allocObject();
    v24[2] = a1;
    v24[3] = a2;
    v24[4] = a3;
    aBlock[4] = partial apply for closure #1 in folderLoadHandler #1 (node:completionBlock:) in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed URL?, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_38;
    v25 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [v23 fetchURLForItem:v22 completionHandler:v25];
    _Block_release(v25);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    __swift_project_value_buffer(v26, static Logger.UI);
    swift_unknownObjectRetain();
    v34 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v34, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      aBlock[0] = v29;
      *v28 = 136315394;
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000028, 0x8000000249BCBCB0, aBlock);
      *(v28 + 12) = 2080;
      aBlock[6] = a1;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
      v30 = String.init<A>(describing:)();
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, aBlock);

      *(v28 + 14) = v32;
      _os_log_impl(&dword_2493AC000, v34, v27, "%s could not get URL for node: %s", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1FE850](v29, -1, -1);
      MEMORY[0x24C1FE850](v28, -1, -1);
    }

    else
    {
      v33 = v34;
    }
  }
}

uint64_t callCompletionBlock #1 (_:error:) in folderLoadHandler #1 (node:completionBlock:) in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(uint64_t a1, void (*a2)(void, void, void), void *a3, void (*a4)(void, void), uint64_t a5)
{
  v84 = a5;
  v85 = a4;
  v71 = a3;
  v74 = a2;
  v82 = a1;
  v5 = type metadata accessor for UTType();
  v72 = *(v5 - 8);
  v73 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v80 = *(v9 - 8);
  v81 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v78 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for DispatchQoS();
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v12);
  v76 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for DispatchTime();
  v75 = *(v83 - 8);
  MEMORY[0x28223BE20](v83, v14);
  v16 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v70 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v70 - v27;
  v29 = type metadata accessor for URL();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29, v32);
  v70 = &v70 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v70 - v35;
  v38 = v37;
  outlined init with copy of DOCGridLayout.Spec?(v82, v28, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v39 = (*(v30 + 48))(v28, 1, v38);
  v86 = v38;
  if (v39 == 1)
  {
    outlined destroy of CharacterSet?(v28, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v83 = static DOCLog.UI;
    LODWORD(v82) = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_249BA08D0;
    v41 = MEMORY[0x277D837D0];
    *(v40 + 56) = MEMORY[0x277D837D0];
    v42 = lazy protocol witness table accessor for type String and conformance String();
    *(v40 + 64) = v42;
    *(v40 + 32) = 0xD00000000000001DLL;
    *(v40 + 40) = 0x8000000249BCBCE0;
    v43 = v71;
    v44 = [v71 displayName];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    *(v40 + 96) = v41;
    *(v40 + 104) = v42;
    *(v40 + 72) = v45;
    *(v40 + 80) = v47;
    v48 = [v43 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = UTType.identifier.getter();
    v51 = v50;
    (*(v72 + 8))(v8, v73);
    *(v40 + 136) = v41;
    *(v40 + 144) = v42;
    *(v40 + 112) = v49;
    *(v40 + 120) = v51;
    v52 = v74;
    if (v74)
    {
      v53 = _convertErrorToNSError(_:)();
      v89 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
      v90 = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
      *&aBlock = v53;
      outlined init with take of DOCGoToFolderCandidate(&aBlock, v40 + 152);
    }

    else
    {
      *(v40 + 176) = v41;
      *(v40 + 184) = v42;
      *(v40 + 152) = 0xD000000000000013;
      *(v40 + 160) = 0x8000000249BCBD00;
    }

    os_log(_:dso:log:type:_:)("%@: failed to provide %@ with type %@ error: %@", 47, 2, &dword_2493AC000, v83, v82, v40);

    (*(v30 + 56))(v24, 1, 1, v86);
    (v85)(v24, 0, v52);
    return outlined destroy of CharacterSet?(v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v54 = *(v30 + 32);
    v82 = v30 + 32;
    v74 = v54;
    v54(v36, v28, v38);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v73 = static DOCLog.UI;
    LODWORD(v72) = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_249B9FA70;
    *(v55 + 56) = MEMORY[0x277D837D0];
    *(v55 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v55 + 32) = 0xD00000000000001DLL;
    *(v55 + 40) = 0x8000000249BCBCE0;
    URL._bridgeToObjectiveC()(0xD00000000000001DLL);
    v57 = v56;
    *(v55 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
    *(v55 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
    *(v55 + 72) = v57;
    os_log(_:dso:log:type:_:)("%@: successfully provided %@", 28, 2, &dword_2493AC000, v73, v72, v55);

    LODWORD(v72) = URL.startAccessingSecurityScopedResource()();
    v58 = *(v30 + 16);
    v59 = v86;
    v58(v24, v36, v86);
    (*(v30 + 56))(v24, 0, 1, v59);
    (v85)(v24, 1, 0);
    outlined destroy of CharacterSet?(v24, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v84 = static OS_dispatch_queue.main.getter();
    static DispatchTime.now()();
    + infix(_:_:)();
    v73 = v20;
    v85 = *(v75 + 8);
    v85(v16, v83);
    v60 = v70;
    v58(v70, v36, v59);
    v61 = (*(v30 + 80) + 17) & ~*(v30 + 80);
    v62 = swift_allocObject();
    *(v62 + 16) = v72 & 1;
    v74(v62 + v61, v60, v59);
    v90 = partial apply for closure #1 in callCompletionBlock #1 (_:error:) in folderLoadHandler #1 (node:completionBlock:) in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:);
    v91 = v62;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v88 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v89 = &block_descriptor_44;
    v63 = _Block_copy(&aBlock);

    v64 = v76;
    static DispatchQoS.unspecified.getter();
    *&aBlock = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v65 = v78;
    v66 = v81;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v67 = v73;
    v68 = v84;
    MEMORY[0x24C1FB940](v73, v64, v65, v63);
    _Block_release(v63);

    (*(v80 + 8))(v65, v66);
    (*(v77 + 8))(v64, v79);
    v85(v67, v83);
    return (*(v30 + 8))(v36, v86);
  }
}

uint64_t closure #4 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(void (*a1)(void, void), uint64_t a2, void *a3, void *a4)
{
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.UI);
  swift_unknownObjectRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v39 = a4;
    v40 = v17;
    v37 = v17;
    *v16 = 136315650;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005BLL, 0x8000000249BCBBB0, &v40);
    *(v16 + 12) = 2080;
    v18 = [a3 displayName];
    v36 = v15;
    v19 = v18;
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = a2;
    v21 = v20;
    v22 = v8;
    v23 = a1;
    v25 = v24;

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v25, &v40);
    a1 = v23;

    *(v16 + 14) = v26;
    *(v16 + 22) = 2080;
    v27 = [a3 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = UTType.identifier.getter();
    v30 = v29;
    (*(v9 + 8))(v12, v22);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v40);
    a2 = v38;

    *(v16 + 24) = v31;
    _os_log_impl(&dword_2493AC000, v14, v36, "%s: providing: %s with type: %s", v16, 0x20u);
    v32 = v37;
    swift_arrayDestroy();
    v33 = v32;
    a4 = v39;
    MEMORY[0x24C1FE850](v33, -1, -1);
    MEMORY[0x24C1FE850](v16, -1, -1);
  }

  folderLoadHandler #1 (node:completionBlock:) in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(a3, a1, a2, a4);
  return 0;
}

uint64_t closure #5 in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(void (*a1)(void, void), uint64_t a2, void *a3, void *a4)
{
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.UI);
  swift_unknownObjectRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000005BLL, 0x8000000249BCBBB0, &v23);
    *(v11 + 12) = 2080;
    v12 = [a3 displayName];
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = a4;
    v16 = v15;

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v16, &v23);

    *(v11 + 14) = v17;
    *(v11 + 22) = 2080;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v23);
    a4 = v14;

    *(v11 + 24) = v20;
    _os_log_impl(&dword_2493AC000, v9, v10, "%s: providing: %s with type: %s", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v22, -1, -1);
    MEMORY[0x24C1FE850](v11, -1, -1);
  }

  folderLoadHandler #1 (node:completionBlock:) in NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(a3, a1, a2, a4);
  return 0;
}

BOOL static DOCDocumentSource.sessionContainsSources(_:)(void *a1, unint64_t *a2, void *a3)
{
  specialized static DOCDocumentSource.sourcesFromDropSession(_:)(a1, a2, a3);
  if (v3 >> 62)
  {
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 > 0;
}

void DOCTag.setTags(for:alertPresenting:)(unint64_t a1, void *a2)
{
  v55 = FPTagFromDOCTag();
  aBlock = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_59:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  v50 = a1;
  if (v3)
  {
    v5 = 0;
    v52 = a1 & 0xFFFFFFFFFFFFFF8;
    v53 = a1 & 0xC000000000000001;
    v51 = a1 + 32;
    v49 = v3;
    do
    {
      if (v53)
      {
        v6 = MEMORY[0x24C1FC540](v5, a1);
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v5 >= *(v52 + 16))
        {
          goto LABEL_58;
        }

        v6 = *(v51 + 8 * v5);
        swift_unknownObjectRetain();
        v7 = __OFADD__(v5++, 1);
        if (v7)
        {
          goto LABEL_57;
        }
      }

      v8 = [v6 tags];
      if (v8)
      {
        v9 = v8;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPTag, 0x277CC6468);
        v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v54 = v5;
        if (v10 >> 62)
        {
          v11 = __CocoaSet.count.getter();
        }

        else
        {
          v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a1 = 0;
        while (1)
        {
          if (v11 == a1)
          {

            v3 = v49;
            a1 = v50;
            v4 = MEMORY[0x277D84F90];
            v5 = v54;
            goto LABEL_6;
          }

          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x24C1FC540](a1, v10);
          }

          else
          {
            if (a1 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_56;
            }

            v13 = *(v10 + 8 * a1 + 32);
          }

          v14 = v13;
          if (__OFADD__(a1, 1))
          {
            break;
          }

          v15 = [v13 label];
          v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v18 = v17;

          v19 = [v55 label];
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;

          if (v16 == v20 && v18 == v22)
          {
            swift_unknownObjectRelease();

LABEL_26:

            v3 = v49;
            a1 = v50;
            v4 = MEMORY[0x277D84F90];
            v5 = v54;
            goto LABEL_7;
          }

          v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

          ++a1;
          if (v12)
          {
            swift_unknownObjectRelease();
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

LABEL_6:
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
LABEL_7:
      ;
    }

    while (v5 != v3);
    v23 = aBlock;
    if ((aBlock & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_60;
  }

  v23 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
    goto LABEL_60;
  }

LABEL_34:
  if ((v23 & 0x4000000000000000) != 0)
  {
LABEL_60:
    v24 = __CocoaSet.count.getter();
    if (v24 <= 0)
    {
      goto LABEL_61;
    }

    goto LABEL_36;
  }

  v24 = *(v23 + 16);
  if (v24 <= 0)
  {
LABEL_61:

    return;
  }

LABEL_36:
  aBlock = v4;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
  v25 = 0;
  v26 = v4;
  do
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x24C1FC540](v25, v23);
    }

    else
    {
      v27 = *(v23 + 8 * v25 + 32);
      swift_unknownObjectRetain();
    }

    v28 = [v27 tags];
    if (v28)
    {
      v29 = v28;
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPTag, 0x277CC6468);
      v30 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v30 = MEMORY[0x277D84F90];
    }

    v62 = v30;
    v31 = v55;
    MEMORY[0x24C1FB090]();
    if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    swift_unknownObjectRelease();
    v32 = v62;
    aBlock = v26;
    v34 = *(v26 + 16);
    v33 = *(v26 + 24);
    if (v34 >= v33 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
      v26 = aBlock;
    }

    ++v25;
    *(v26 + 16) = v34 + 1;
    *(v26 + 8 * v34 + 32) = v32;
  }

  while (v24 != v25);
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(v23);

  if (All)
  {
    v36 = [objc_opt_self() shared];
    v37 = objc_allocWithZone(MEMORY[0x277D06258]);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    isa = Array._bridgeToObjectiveC()().super.isa;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo5FPTagCGMd, &_sSaySo5FPTagCGMR);
    v39 = Array._bridgeToObjectiveC()().super.isa;

    v40 = [v37 initWithItems:isa tagsLists:v39 isUndoable:1 shouldClearUndoStack:0 undoManager:v36];

    v41 = swift_allocObject();
    v41[2] = v50;
    v41[3] = v47;
    v41[4] = a2;
    v60 = partial apply for closure #3 in DOCTag.setTags(for:alertPresenting:);
    v61 = v41;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v58 = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
    v59 = &block_descriptor_132;
    v42 = _Block_copy(&aBlock);
    v43 = v40;

    v44 = v47;
    v45 = a2;

    [v43 setActionCompletionBlock_];
    _Block_release(v42);

    v46 = [objc_opt_self() defaultManager];
    [v46 scheduleAction_];

    aBlock = 0xD00000000000002ELL;
    v57 = 0x8000000249BCBFF0;
    v58 = 0;
    v59 = 0;
    LOBYTE(v60) = 1;
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    specialized DOCAnalyticsManager.sendEvent(_:)(&aBlock, static DOCAnalyticsManager.shared);

    outlined destroy of DOCAnalyticsItemTaggedEvent(&aBlock);
  }

  else
  {
  }
}

void closure #3 in DOCTag.setTags(for:alertPresenting:)(void *a1, uint64_t a2, void *a3, void *a4)
{
  if (a1)
  {
    v8 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_249BA08C0;
    *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
    *(v9 + 64) = lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DOCNode] and conformance [A], &_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR, MEMORY[0x277CC9C50]);
    *(v9 + 32) = a2;
    *(v9 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
    *(v9 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type DOCTag and conformance NSObject, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
    *(v9 + 72) = a3;

    v10 = a3;
    v11 = _convertErrorToNSError(_:)();
    *(v9 + 136) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v9 + 144) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v9 + 112) = v11;
    type metadata accessor for NSMutableAttributedString(0, lazy cache variable for type metadata for OS_os_log, 0x277D86200);
    v12 = static OS_os_log.default.getter();
    os_log(_:dso:log:type:_:)("Error settings the tag for items %@ tags %@. Error: %@", 54, 2, &dword_2493AC000, v12, v8, v9);

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a4;
    v14 = a1;
    v15 = a1;
    v16 = a4;
    DOCRunInMainThread(_:)();
  }
}

void DOCTag.dropOnto(dropSession:alertPresenting:)(void *a1, void *a2)
{
  v5 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  v6 = v2;
  specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(a1, a2, v5, v6);
}

double specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(void *a1, void *a2, uint64_t a3)
{
  v29 = a2;
  v4 = type metadata accessor for UTType();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v8);
  v10 = v9;
  (*(v5 + 8))(v8, v4);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v28 = static DOCLog.UI;
  v11 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_249BA08C0;
  *(v12 + 56) = MEMORY[0x277D837D0];
  *(v12 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v12 + 32) = 0xD000000000000041;
  *(v12 + 40) = 0x8000000249BCBA40;
  v13 = MEMORY[0x277D83B88];
  v14 = MEMORY[0x277D83C10];
  v15 = *(v10 + 16);
  *(v12 + 96) = MEMORY[0x277D83B88];
  *(v12 + 104) = v14;
  *(v12 + 72) = v15;
  v16 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v17 >> 62)
  {
    v18 = __CocoaSet.count.getter();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v12 + 136) = v13;
  *(v12 + 144) = v14;
  *(v12 + 112) = v18;
  os_log(_:dso:log:type:_:)("%@: got %d nodes; drop session had %d items", 43, 2, &dword_2493AC000, v28, v11, v12);

  v19 = [a1 items];
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v20 >> 62)
  {
    v21 = __CocoaSet.count.getter();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15 == v21)
  {
    if (v15)
    {
      v30 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v22 = 40;
      do
      {
        swift_unknownObjectRetain();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v22 += 16;
        --v15;
      }

      while (v15);

      v23 = v30;
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

    closure #1 in closure #1 in static DOCFileProviderSource.createSpotlightSources()(v23, v29);
  }

  else
  {

    v24 = [a1 items];
    v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v25, v29, specialized closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:), 0);
  }

  return result;
}

double static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(void *a1, void *a2, void (*a3)(uint64_t, uint64_t, __n128), uint64_t a4)
{
  v35 = a2;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v31 = a4;
  v32 = a3;
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v34 = v12;

  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v11);
  v14 = v13;
  (*(v8 + 8))(v11, v7);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v33 = static DOCLog.UI;
  v15 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_249BA08C0;
  *(v16 + 56) = MEMORY[0x277D837D0];
  *(v16 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v16 + 32) = 0xD000000000000041;
  *(v16 + 40) = 0x8000000249BCBA40;
  v17 = MEMORY[0x277D83B88];
  v18 = MEMORY[0x277D83C10];
  v19 = *(v14 + 16);
  *(v16 + 96) = MEMORY[0x277D83B88];
  *(v16 + 104) = v18;
  *(v16 + 72) = v19;
  v20 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v21 >> 62)
  {
    v22 = __CocoaSet.count.getter();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v16 + 136) = v17;
  *(v16 + 144) = v18;
  *(v16 + 112) = v22;
  os_log(_:dso:log:type:_:)("%@: got %d nodes; drop session had %d items", 43, 2, &dword_2493AC000, v33, v15, v16);

  v23 = [a1 items];
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v24 >> 62)
  {
    v25 = __CocoaSet.count.getter();
  }

  else
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19 == v25)
  {
    if (v19)
    {
      v36 = MEMORY[0x277D84F90];
      specialized ContiguousArray.reserveCapacity(_:)();
      v26 = 40;
      do
      {
        swift_unknownObjectRetain();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v26 += 16;
        --v19;
      }

      while (v19);

      v27 = v36;
    }

    else
    {

      v27 = MEMORY[0x277D84F90];
    }

    (v32)(v27, v35);
  }

  else
  {

    v28 = [a1 items];
    v29 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v29, v35, partial apply for closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:), v34);
  }

  return result;
}

uint64_t static FPItem.sessionContainsDOCNode(_:)(void *a1)
{
  ObjectType = swift_getObjectType();

  return specialized static FPItem.sessionContainsDOCNode(_:)(a1, v1, ObjectType);
}

uint64_t static FPItem.sessionContainsLocations(_:)(void *a1)
{
  swift_getObjectType();

  return specialized static FPItem.sessionContainsLocations(_:)(a1, v1);
}

uint64_t static FPItem.sessionContainsFile(_:)(void *a1)
{
  swift_getObjectType();

  return specialized static FPItem.sessionContainsFile(_:)(a1, v1);
}

void static FPItem.sessionContainsFavorites(_:)(void *a1)
{
  swift_getObjectType();

  specialized static FPItem.sessionContainsFavorites(_:)(a1);
}

uint64_t static FPItem.nodesFromLocalDropSession(_:itemContentType:)(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  return specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(a1, a2, v2, ObjectType);
}

uint64_t static FPItem.sessionContainsFolder(_:)(void *a1)
{
  swift_getObjectType();

  return specialized static FPItem.sessionContainsFolder(_:)(a1, v1);
}

BOOL static FPItem.dropSessionContainsSMBItems(_:)(void *a1)
{
  v3 = type metadata accessor for UTType();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.item.getter();
  ObjectType = swift_getObjectType();
  v9 = specialized static FPItem.nodesFromLocalDropSession(_:itemContentType:)(a1, v7, v1, ObjectType);
  (*(v4 + 8))(v7, v3);
  if (v9 >> 62)
  {
LABEL_15:
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  do
  {
    v12 = v11;
    if (v10 == v11)
    {
      break;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x24C1FC540](v11, v9);
      if (__OFADD__(v12, 1))
      {
LABEL_12:
        __break(1u);
        break;
      }
    }

    else
    {
      if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_15;
      }

      v13 = *(v9 + 8 * v11 + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(v12, 1))
      {
        goto LABEL_12;
      }
    }

    v14 = [v13 providerDomainID];
    v15 = DOCProviderDomainIDIsSharedServerDomainID();
    swift_unknownObjectRelease();

    v11 = v12 + 1;
  }

  while (!v15);

  return v10 != v12;
}

uint64_t static FPItem.folderDragInfoFromDropSession(_:alertPresenting:completion:)(void *a1, _OWORD *a2, void (*a3)(uint64_t, __n128), uint64_t a4)
{
  v79 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v78 = &v66 - v9;
  v10 = type metadata accessor for UTType();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v74 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v66 - v16;
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v66 - v20;
  v22 = swift_allocObject();
  v70 = a3;
  v71 = v22;
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  v69 = a4;

  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v21);
  v24 = v23;
  v77 = v11;
  v25 = *(v11 + 8);
  v73 = v21;
  v80 = v25;
  v81 = v11 + 8;
  v25(v21, v10);
  if (one-time initialization token for UI != -1)
  {
LABEL_34:
    swift_once();
  }

  *&v84 = static DOCLog.UI;
  LODWORD(v83) = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_249BA08C0;
  *(v26 + 56) = MEMORY[0x277D837D0];
  *(v26 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v26 + 32) = 0xD000000000000041;
  *(v26 + 40) = 0x8000000249BCBA40;
  v27 = MEMORY[0x277D83B88];
  v28 = MEMORY[0x277D83C10];
  v82 = v24;
  v29 = *(v24 + 16);
  *(v26 + 96) = MEMORY[0x277D83B88];
  *(v26 + 104) = v28;
  *(v26 + 72) = v29;
  v30 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v31 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v31 >> 62)
  {
    v32 = __CocoaSet.count.getter();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v26 + 136) = v27;
  *(v26 + 144) = v28;
  *(v26 + 112) = v32;
  os_log(_:dso:log:type:_:)("%@: got %d nodes; drop session had %d items", 43, 2, &dword_2493AC000, v84, v83, v26);

  v33 = [a1 items];
  v34 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v34 >> 62)
  {
    v35 = __CocoaSet.count.getter();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v36 = v82;
  if (v29 == v35)
  {
    v37 = *(v82 + 16);
    if (!v37)
    {
      v24 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

    v38 = 0;
    v79 = (v82 + 32);
    v75 = (v77 + 48);
    v72 = (v77 + 32);
    v67 = v37 - 1;
    v24 = MEMORY[0x277D84F90];
    v76 = v17;
    v77 = v37;
    while (1)
    {
      v68 = v24;
      v39 = v38;
      while (1)
      {
        if (v39 >= *(v36 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v84 = v79[v39];
        v83 = v84;
        v24 = *(&v84 + 1);
        v41 = [swift_unknownObjectRetain() contentType];
        static UTType._unconditionallyBridgeFromObjectiveC(_:)();

        v42 = UTType.identifier.getter();
        v44 = v43;
        if (one-time initialization token for folderUTICache != -1)
        {
          swift_once();
        }

        v45 = folderUTICache;
        v46 = MEMORY[0x24C1FAD20](v42, v44);
        a1 = [v45 objectForKey_];

        if (!a1)
        {
          break;
        }

        v40 = [a1 BOOLValue];

        v80(v17, v10);
        if (v40)
        {
          goto LABEL_22;
        }

LABEL_11:
        ++v39;
        swift_unknownObjectRelease();

        v36 = v82;
        if (v37 == v39)
        {
          v24 = v68;
          goto LABEL_31;
        }
      }

      v47 = v78;
      UTType.init(_:)();
      if ((*v75)(v47, 1, v10) == 1)
      {
        outlined destroy of CharacterSet?(v47, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
        v48 = 0;
        v49 = v80;
      }

      else
      {
        v50 = v74;
        (*v72)(v74, v47, v10);
        v51 = v73;
        static UTType.folder.getter();
        v52 = UTType.conforms(to:)();
        v49 = v80;
        v80(v51, v10);
        if (v52)
        {
          static UTType.package.getter();
          v53 = UTType.conforms(to:)();
          v49(v51, v10);
          v49(v50, v10);
          v48 = v53 ^ 1;
        }

        else
        {
          v49(v50, v10);
          v48 = 0;
        }
      }

      v54 = folderUTICache;
      v55 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      v56 = v54;
      a1 = [v55 initWithBool_];
      v57 = MEMORY[0x24C1FAD20](v42, v44);

      [v56 setObject:a1 forKey:v57];

      v58 = v76;
      v49(v76, v10);
      v17 = v58;
      v37 = v77;
      if ((v48 & 1) == 0)
      {
        goto LABEL_11;
      }

LABEL_22:
      v24 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85[0] = v24;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        a1 = v85;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 16) + 1, 1);
        v24 = v85[0];
      }

      v36 = v82;
      v61 = *(v24 + 16);
      v60 = *(v24 + 24);
      if (v61 >= v60 >> 1)
      {
        v62 = v82;
        a1 = v85;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
        v36 = v62;
        v24 = v85[0];
      }

      v38 = v39 + 1;
      *(v24 + 16) = v61 + 1;
      *(v24 + 16 * v61 + 32) = v84;
      v37 = v77;
      if (v67 == v39)
      {
LABEL_31:

        (v70)(v24);
      }
    }
  }

  v63 = [a1 items];
  v64 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v64, v79, partial apply for closure #1 in static FPItem.folderDragInfoFromDropSession(_:alertPresenting:completion:), v71);
}

void closure #1 in static FPItem.folderDragInfoFromDropSession(_:alertPresenting:completion:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v46[1] = a4;
  v47 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = v46 - v7;
  v9 = type metadata accessor for UTType();
  MEMORY[0x28223BE20](v9, v10);
  MEMORY[0x28223BE20](v11, v12);
  MEMORY[0x28223BE20](v13, v14);
  v19 = v46 - v16;
  v20 = *(a1 + 16);
  if (v20)
  {
    v51 = v18;
    v52 = v17;
    v21 = 0;
    v56 = a1 + 32;
    v54 = (v15 + 48);
    v49 = (v15 + 32);
    v22 = MEMORY[0x277D84F90];
    v55 = v8;
    v58 = (v15 + 8);
    v59 = v9;
    v50 = v46 - v16;
    v57 = v20;
    do
    {
      v48 = v22;
      v23 = v21;
      while (1)
      {
        if (v23 >= v20)
        {
          __break(1u);
LABEL_29:
          __break(1u);
          return;
        }

        v21 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_29;
        }

        v61 = *(v56 + 16 * v23);
        v60 = v61;
        v24 = [swift_unknownObjectRetain() contentType];
        static UTType._unconditionallyBridgeFromObjectiveC(_:)();

        v25 = UTType.identifier.getter();
        v27 = v26;
        if (one-time initialization token for folderUTICache != -1)
        {
          swift_once();
        }

        v28 = folderUTICache;
        v29 = MEMORY[0x24C1FAD20](v25, v27);
        v30 = [v28 objectForKey_];

        if (v30)
        {

          v31 = [v30 BOOLValue];
        }

        else
        {

          UTType.init(_:)();
          v32 = v59;
          if ((*v54)(v8, 1, v59) == 1)
          {
            outlined destroy of CharacterSet?(v8, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
            v31 = 0;
          }

          else
          {
            v53 = v23 + 1;
            v33 = v51;
            (*v49)(v51, v8, v32);
            v34 = v52;
            static UTType.folder.getter();
            v35 = UTType.conforms(to:)();
            v36 = *v58;
            (*v58)(v34, v32);
            if (v35)
            {
              static UTType.package.getter();
              v37 = UTType.conforms(to:)();
              v36(v34, v32);
              v36(v33, v32);
              v31 = v37 ^ 1;
            }

            else
            {
              v36(v33, v32);
              v31 = 0;
            }

            v19 = v50;
            v21 = v53;
          }

          v38 = folderUTICache;
          v39 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          v40 = v38;
          v41 = [v39 initWithBool_];
          v30 = MEMORY[0x24C1FAD20](v25, v27);

          [v40 setObject:v41 forKey:v30];

          v8 = v55;
        }

        v42 = v59;

        (*v58)(v19, v42);
        if (v31)
        {
          break;
        }

        swift_unknownObjectRelease();

        ++v23;
        v20 = v57;
        if (v21 == v57)
        {
          v22 = v48;
          goto LABEL_27;
        }
      }

      v22 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 16) + 1, 1);
        v22 = v62;
      }

      v20 = v57;
      v45 = *(v22 + 16);
      v44 = *(v22 + 24);
      if (v45 >= v44 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1);
        v22 = v62;
      }

      *(v22 + 16) = v45 + 1;
      *(v22 + 16 * v45 + 32) = v61;
      v8 = v55;
    }

    while (v21 != v20);
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

LABEL_27:
  v47(v22);
}

double static FPItem.docDragInfosFromDropSession(_:alertPresenting:completionHandler:)(void *a1, void *a2, void (*a3)(uint64_t, uint64_t, __n128), uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v27 = a2;
  v5 = type metadata accessor for UTType();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UTType.item.getter();
  swift_getObjectType();
  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, v9);
  v11 = v10;
  (*(v6 + 8))(v9, v5);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v26 = static DOCLog.UI;
  v12 = static os_log_type_t.debug.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249BA08C0;
  *(v13 + 56) = MEMORY[0x277D837D0];
  *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v13 + 32) = 0xD000000000000041;
  *(v13 + 40) = 0x8000000249BCBA40;
  v14 = MEMORY[0x277D83B88];
  v15 = MEMORY[0x277D83C10];
  v16 = *(v11 + 16);
  *(v13 + 96) = MEMORY[0x277D83B88];
  *(v13 + 104) = v15;
  *(v13 + 72) = v16;
  v17 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v18 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v18 >> 62)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v13 + 136) = v14;
  *(v13 + 144) = v15;
  *(v13 + 112) = v19;
  os_log(_:dso:log:type:_:)("%@: got %d nodes; drop session had %d items", 43, 2, &dword_2493AC000, v26, v12, v13);

  v20 = [a1 items];
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v21 >> 62)
  {
    v22 = __CocoaSet.count.getter();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v16 == v22)
  {
    (v28)(v11, v27);
  }

  else
  {

    v23 = [a1 items];
    v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    specialized static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(v24, v27, v28, v29);
  }

  return result;
}

void static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(void *a1, uint64_t a2)
{
  swift_getObjectType();

  specialized static FPItem.docDragInfoFromLocalDropSession(_:itemContentType:)(a1, a2);
}

uint64_t UIDragItem.localObjectAsNode.getter()
{
  if ([v0 localObject])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5 = v3;
  v6 = v4;
  outlined init with copy of DOCGridLayout.Spec?(&v5, &v3, &_sypSgMd, &_sypSgMR);
  if (*(&v4 + 1))
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
    if (swift_dynamicCast())
    {
      outlined destroy of CharacterSet?(&v5, &_sypSgMd, &_sypSgMR);
      return v2;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(&v3, &_sypSgMd, &_sypSgMR);
  }

  v3 = v5;
  v4 = v6;
  if (*(&v6 + 1))
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {
    outlined destroy of CharacterSet?(&v3, &_sypSgMd, &_sypSgMR);
  }

  return 0;
}

double specialized closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(uint64_t a1, void *a2, __n128 a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v6 = a2;
    v9 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v7 = a1 + 40;
    do
    {
      v7 += 16;
      swift_unknownObjectRetain();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v3;
    }

    while (v3);
    v4 = v9;
    a2 = v6;
  }

  closure #1 in closure #1 in static DOCFileProviderSource.createSpotlightSources()(v4, a2);

  return result;
}

double closure #1 in static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v7 = a2;
    v10 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v8 = a1 + 40;
    do
    {
      v8 += 16;
      swift_unknownObjectRetain();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v4;
    }

    while (v4);
    v5 = v10;
    a2 = v7;
  }

  a3(v5, a2);

  return result;
}

uint64_t closure #2 in static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;

  v9 = a4;
  DOCRunInMainThread(_:)();
}

double closure #1 in closure #2 in static FPItem.docDragInfosFromDragItems(_:alertPresenting:completionHandler:)(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6, 0);
    v7 = v15;
    v9 = (a1 + 32);
    do
    {
      v14 = *v9;
      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      v12 = *v9;
      swift_unknownObjectRetain();
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      *(v15 + 16) = v11 + 1;
      *(v15 + 16 * v11 + 32) = v14;
      v9 += 2;
      --v6;
    }

    while (v6);
  }

  a2(v7, a4);

  return result;
}

void static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();

  specialized static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(a1, a2, a3, a4, a5, v5, ObjectType);
}

uint64_t UIDragItem.typeToRequest.getter()
{
  v1 = [v0 itemProvider];
  v2 = NSItemProvider.typeToRequest.getter();

  return v2;
}

void closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(uint64_t a1, uint64_t a2, void *a3, NSObject *a4, NSObject *a5, void *a6, uint64_t a7, void *a8, void *a9, uint64_t a10)
{
  v130 = a4;
  v131 = a5;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v115 - v17;
  v19 = type metadata accessor for URL();
  MEMORY[0x28223BE20](v19, v20);
  v126 = v21;
  v127 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v115 - v24;
  v27 = v26;
  outlined init with copy of DOCGridLayout.Spec?(a1, v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v27 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of CharacterSet?(v18, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v28 = static DOCLog.UI;
    v29 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_249B9FA70;
    v31 = MEMORY[0x277D837D0];
    *(v30 + 56) = MEMORY[0x277D837D0];
    v32 = lazy protocol witness table accessor for type String and conformance String();
    *(v30 + 64) = v32;
    *(v30 + 32) = 0xD00000000000003CLL;
    *(v30 + 40) = 0x8000000249BCBD70;
    if (a3)
    {
      v33 = _convertErrorToNSError(_:)();
      v135 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
      v136 = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
      *&v134 = v33;
      outlined init with take of DOCGoToFolderCandidate(&v134, v30 + 72);
    }

    else
    {
      *(v30 + 96) = v31;
      *(v30 + 104) = v32;
      *(v30 + 72) = 0xD000000000000013;
      *(v30 + 80) = 0x8000000249BCBD00;
    }

    os_log(_:dso:log:type:_:)("%@: Unable to get URL: %@", 25, 2, &dword_2493AC000, v28, v29, v30);

    if (a3)
    {
      v106 = swift_allocObject();
      v107 = v131;
      *(v106 + 16) = a3;
      *(v106 + 24) = v107;
      v108 = a3;
      v109 = v107;
      v110 = a3;
      DOCRunInMainThread(_:)();
    }

    dispatch_group_leave(v130);
    return;
  }

  v34 = *(v27 + 32);
  v128 = v25;
  v129 = v19;
  v119 = v27 + 32;
  v118 = v34;
  v34(v25, v18, v19);
  v35 = swift_allocObject();
  v36 = [a6 itemProvider];
  v37._countAndFlagsBits = a7;
  v37._object = a8;
  v38 = NSItemProvider.suggestedName(for:)(v37);

  *(v35 + 16) = v38._countAndFlagsBits;
  v117 = v35 + 16;
  *(v35 + 24) = v38._object;

  v39._countAndFlagsBits = 46;
  v39._object = 0xE100000000000000;
  LOBYTE(v36) = String.hasPrefix(_:)(v39);

  v123 = v27;
  if (v36)
  {
    v40 = dispatch_semaphore_create(0);
    v41 = _DocumentManagerBundle();
    if (v41)
    {
      v42 = v41;
      v43.value._object = 0xEB00000000656C62;
      v43.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v137._countAndFlagsBits = 0xD00000000000001FLL;
      v137._object = 0x8000000249BCBE60;
      v44._object = 0x8000000249BCBE20;
      v44._countAndFlagsBits = 0x1000000000000032;
      v45._countAndFlagsBits = 0;
      v45._object = 0xE000000000000000;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v43, v42, v45, v137);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_249B9A480;
      v47 = *(v35 + 16);
      v48 = *(v35 + 24);
      *(v46 + 56) = MEMORY[0x277D837D0];
      *(v46 + 64) = lazy protocol witness table accessor for type String and conformance String();
      *(v46 + 32) = v47;
      *(v46 + 40) = v48;

      v49 = static String.localizedStringWithFormat(_:_:)();
      v51 = v50;

      v52 = _DocumentManagerBundle();
      if (v52)
      {
        v53 = v52;
        v138._countAndFlagsBits = 0xD000000000000021;
        v54._countAndFlagsBits = 0xD000000000000026;
        v138._object = 0x8000000249BCBEB0;
        v54._object = 0x8000000249BCBE80;
        v55.value._countAndFlagsBits = 0x617A696C61636F4CLL;
        v55.value._object = 0xEB00000000656C62;
        v56._countAndFlagsBits = 0;
        v56._object = 0xE000000000000000;
        v57 = NSLocalizedString(_:tableName:bundle:value:comment:)(v54, v55, v53, v56, v138);

        v58 = swift_allocObject();
        v58[1]._countAndFlagsBits = v49;
        v58[1]._object = v51;
        v58[2] = v57;
        v58[3]._countAndFlagsBits = v35;
        v58[3]._object = v40;
        v59 = v131;
        v58[4]._countAndFlagsBits = v131;

        v60 = v40;
        v61 = v59;
        DOCRunInMainThread(_:)();

        OS_dispatch_semaphore.wait()();

        v27 = v123;
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

LABEL_10:
  v125 = v35;
  v122 = dispatch_semaphore_create(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR);
  v62 = *(v27 + 80);
  v63 = swift_allocObject();
  v121 = xmmword_249B9A480;
  *(v63 + 16) = xmmword_249B9A480;
  v64 = v128;
  v124 = *(v27 + 16);
  v124(v63 + ((v62 + 32) & ~v62), v128, v129);
  v65 = [objc_opt_self() shared];
  v66 = specialized makeDOCCopyOperation(urls:destinationFolder:undoManager:)(v63, a9, v65);
  v68 = v67;

  if (v66)
  {
    v116 = a10;
    v115 = ~v62;
    ObjectType = swift_getObjectType();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation3URLV_SStGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLV_SStGMR);
    v69 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR) - 8);
    v70 = (*(*v69 + 80) + 32) & ~*(*v69 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = v121;
    v72 = v71 + v70;
    v73 = (v72 + v69[14]);
    v74 = v64;
    v75 = v64;
    v76 = v129;
    v124(v72, v74, v129);
    swift_beginAccess();
    v77 = *(v125 + 24);
    *v73 = *(v125 + 16);
    v73[1] = v77;

    v78 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation3URLV_SSTt0g5Tf4g_n(v71);
    swift_setDeallocating();
    outlined destroy of CharacterSet?(v72, &_s10Foundation3URLV_SStMd, &_s10Foundation3URLV_SStMR);
    swift_deallocClassInstance();
    v79 = ObjectType;
    (*(v68 + 72))(v78, ObjectType, v68);
    (*(v68 + 48))(2, v79, v68);
    (*(v68 + 24))(1, v79, v68);
    v80 = v127;
    v124(v127, v75, v76);
    v81 = (v62 + 56) & v115;
    v82 = (v126 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
    v83 = swift_allocObject();
    v84 = v122;
    v85 = v130;
    v86 = v131;
    *(v83 + 2) = v122;
    *(v83 + 3) = v85;
    *(v83 + 4) = v86;
    *(v83 + 5) = v66;
    *(v83 + 6) = v68;
    v118(&v83[v81], v80, v76);
    *&v83[v82] = v116;
    v87 = *(v68 + 8);
    v88 = *(v87 + 16);
    v89 = v86;
    v90 = ObjectType;
    v131 = v84;
    v91 = v85;
    swift_unknownObjectRetain();

    v88(partial apply for closure #2 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:), v83, v90, v87);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v92 = static DOCLog.UI;
    v93 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_249BA08C0;
    v95 = MEMORY[0x277D837D0];
    *(v94 + 56) = MEMORY[0x277D837D0];
    v96 = lazy protocol witness table accessor for type String and conformance String();
    *(v94 + 64) = v96;
    *(v94 + 32) = 0xD00000000000003CLL;
    *(v94 + 40) = 0x8000000249BCBD70;
    v132 = v66;
    v133 = v68;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17SomeCopyOperation_pMd, &_s26DocumentManagerExecutables17SomeCopyOperation_pMR);
    v97 = String.init<A>(describing:)();
    *(v94 + 96) = v95;
    *(v94 + 104) = v96;
    *(v94 + 72) = v97;
    *(v94 + 80) = v98;
    v99 = v128;
    URL._bridgeToObjectiveC()(v100);
    v102 = v101;
    *(v94 + 136) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
    *(v94 + 144) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSURL and conformance NSObject, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
    *(v94 + 112) = v102;
    os_log(_:dso:log:type:_:)("%@: adding copy operation %@", 28, 2, &dword_2493AC000, v92, v93, v94);

    v103 = [objc_opt_self() defaultManager];
    v104 = swift_unknownObjectRetain();
    specialized FPItemManager.scheduleOperation(_:)(v104, v90, v87);

    swift_unknownObjectRelease();
    v105 = v131;
    OS_dispatch_semaphore.wait()();

    swift_unknownObjectRelease();
    (*(v123 + 8))(v99, v129);
  }

  else
  {
    v111 = v122;
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v112 = static DOCLog.UI;
    v113 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v114 = swift_allocObject();
    *(v114 + 16) = v121;
    *(v114 + 56) = MEMORY[0x277D837D0];
    *(v114 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v114 + 32) = 0xD00000000000003CLL;
    *(v114 + 40) = 0x8000000249BCBD70;
    os_log(_:dso:log:type:_:)("%@: failed to create copy operation", 35, 2, &dword_2493AC000, v112, v113, v114);

    (*(v27 + 8))(v128, v129);
  }
}

void closure #1 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7)
{
  v11 = MEMORY[0x24C1FAD20](a1, a2);
  v12 = MEMORY[0x24C1FAD20](a3, a4);
  v13 = [objc_opt_self() alertControllerWithTitle:v11 message:v12 preferredStyle:1];

  v14 = _DocumentManagerBundle();
  if (v14)
  {
    v15 = v14;
    v16.value._object = 0xEB00000000656C62;
    v44._object = 0xE400000000000000;
    v17._countAndFlagsBits = 2003789907;
    v17._object = 0xE400000000000000;
    v16.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v18._countAndFlagsBits = 0;
    v18._object = 0xE000000000000000;
    v44._countAndFlagsBits = 2003789907;
    v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, v16, v15, v18, v44);

    v20 = swift_allocObject();
    *(v20 + 16) = a5;
    *(v20 + 24) = a6;

    v21 = a6;
    v22 = MEMORY[0x24C1FAD20](v19._countAndFlagsBits, v19._object);

    v42 = partial apply for closure #1 in closure #1 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:);
    v43 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v41 = &block_descriptor_81;
    v23 = _Block_copy(&aBlock);

    v24 = objc_opt_self();
    v25 = [v24 actionWithTitle:v22 style:0 handler:v23];
    _Block_release(v23);

    [v13 addAction_];
    v26 = _DocumentManagerBundle();
    if (v26)
    {
      v27 = v26;
      v45._object = 0xE400000000000000;
      v28._countAndFlagsBits = 1701079368;
      v28._object = 0xE400000000000000;
      v29.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v29.value._object = 0xEB00000000656C62;
      v30._countAndFlagsBits = 0;
      v30._object = 0xE000000000000000;
      v45._countAndFlagsBits = 1701079368;
      v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v45);

      v32 = swift_allocObject();
      *(v32 + 16) = v21;
      v33 = v21;
      v34 = MEMORY[0x24C1FAD20](v31._countAndFlagsBits, v31._object);

      v42 = partial apply for closure #2 in closure #1 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:);
      v43 = v32;
      aBlock = MEMORY[0x277D85DD0];
      v39 = 1107296256;
      v40 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
      v41 = &block_descriptor_87;
      v35 = _Block_copy(&aBlock);

      v36 = [v24 actionWithTitle:v34 style:1 handler:v35];
      _Block_release(v35);

      [v13 addAction_];
      [a7 presentViewController:v13 animated:1 completion:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

Swift::Int closure #1 in closure #1 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  while (1)
  {

    v2._countAndFlagsBits = 46;
    v2._object = 0xE100000000000000;
    v3 = String.hasPrefix(_:)(v2);

    if (!v3)
    {
      break;
    }

    swift_beginAccess();
    String.remove(at:)();
    swift_endAccess();
  }

  return OS_dispatch_semaphore.signal()();
}

void closure #2 in closure #1 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(uint64_t a1, uint64_t a2, NSObject *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v10 = _convertErrorToNSError(_:)();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v11 = static DOCLog.UI;
    v12 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_249B9FA70;
    *(v13 + 56) = MEMORY[0x277D837D0];
    *(v13 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v13 + 32) = 0xD00000000000003CLL;
    *(v13 + 40) = 0x8000000249BCBD70;
    *(v13 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v13 + 104) = lazy protocol witness table accessor for type NSItemProvider and conformance NSObject(&lazy protocol witness table cache variable for type NSError and conformance NSObject, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v13 + 72) = v10;
    v14 = v10;
    os_log(_:dso:log:type:_:)("%@: Copy Operation failed: %@", 29, 2, &dword_2493AC000, v11, v12, v13);

    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = a4;
    v16 = v14;
    v17 = a4;
    DOCRunInMainThread(_:)();

    OS_dispatch_semaphore.signal()();

    dispatch_group_leave(a3);
  }

  else
  {
    ObjectType = swift_getObjectType();
    v22 = (*(a6 + 88))(ObjectType, a6);
    if (v22)
    {
      if (*(v22 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a7), (v23 & 1) != 0))
      {
        swift_unknownObjectRetain();

        swift_beginAccess();
        v24 = swift_unknownObjectRetain();
        MEMORY[0x24C1FB090](v24);
        if (*((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    OS_dispatch_semaphore.signal()();
    dispatch_group_leave(a3);
  }
}

double closure #2 in static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();

    a1(v4);
  }

  return result;
}

void static FPItem.performDrop(_:underItem:alertPresenting:completion:)(unint64_t a1, void *a2, void *a3, void (*a4)(void), unint64_t a5)
{
  swift_getObjectType();

  specialized static FPItem.performDrop(_:underItem:alertPresenting:completion:)(a1, a2, a3, a4, a5);
}

uint64_t isMoveAllowed #1 () in static FPItem.performDrop(_:underItem:alertPresenting:completion:)(void *a1, unint64_t a2)
{
  v3 = [a1 cachedDomain];
  if (a2 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, a2);
      }

      else
      {
        if (v5 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v6 = *(a2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 cachedDomain];
      if (v9)
      {
        v10 = v9;
        if (v3)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPProviderDomain, 0x277CC6420);
          v11 = v3;
          v12 = static NSObject.== infix(_:_:)();

          if (v12)
          {
            v13 = 1;
            v3 = v11;
            goto LABEL_21;
          }
        }

        else
        {
        }
      }

      else
      {

        if (!v3)
        {
          return 1;
        }
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_20:
  v13 = 0;
LABEL_21:

  return v13;
}

Swift::Bool __swiftcall FPItem.isValidDropTarget(forUTIs:)(Swift::OpaquePointer forUTIs)
{
  v2 = [objc_opt_self() defaultManager];
  isa = Array._bridgeToObjectiveC()().super.isa;
  v4 = [v2 eligibleActionsForDroppingUTIs:isa underItem:v1];

  type metadata accessor for FPAction(0);
  lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type FPAction and conformance FPAction, type metadata accessor for FPAction, &protocol conformance descriptor for FPAction);
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if (specialized Set.contains(_:)())
  {
    v5 = 1;
  }

  else
  {
    v5 = specialized Set.contains(_:)();
  }

  return v5 & 1;
}

uint64_t DOCNode.dataOwner.getter()
{
  v1 = [objc_opt_self() defaultPermission];
  v2 = [v1 dataOwnerStateForNode_];

  if (v2 < 3)
  {
    return qword_249BA16C0[v2];
  }

  type metadata accessor for DOCDataOwnerState(0);
  v5[3] = v4;
  v5[0] = v2;
  doc_warnUnrecognizedEnumValueEncountered(_:)(v5);
  __swift_destroy_boxed_opaque_existential_0(v5);
  return 0;
}

uint64_t DOCNode.supportsDrag.getter(uint64_t a1)
{
  if (![v1 isReadable])
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.UI);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_18;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7374726F70707573, 0xEC00000067617244, &v11);
    v7 = "%s: Item cannot be dragged because isReadable=false";
    goto LABEL_17;
  }

  if (DOCNode.doc_isAppContainerRoot.getter())
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    __swift_project_value_buffer(v2, static Logger.UI);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_18;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7374726F70707573, 0xEC00000067617244, &v11);
    v7 = "%s: Item cannot be dragged because doc_isAppContainerRoot=true";
LABEL_17:
    _os_log_impl(&dword_2493AC000, v3, v4, v7, v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
LABEL_18:

    return 0;
  }

  if ([v1 doc_isCollaborationInvitation] & 1) != 0 || (DOCNode.areDiskPropertiesSupported.getter())
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.UI);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_18;
    }

    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x7374726F70707573, 0xEC00000067617244, &v11);
    v7 = "%s: Item cannot be dragged because doc_isCollaborationInvitation=true";
    goto LABEL_17;
  }

  return 1;
}

id DOCNode.dragItemFor(session:supportsPickingFolders:)(void *a1, char a2, uint64_t a3)
{
  v4 = [a1 items];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v5 >> 62)
  {
LABEL_24:
    v6 = __CocoaSet.count.getter();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  do
  {
    if (v6 == v7)
    {

      v33 = 0;
      v11 = [objc_opt_self() defaultPermission];
      v12 = v3;
      v13 = [v11 dataOwnerStateForNode_];

      if (v13 == 1)
      {
        v14 = 2;
      }

      else
      {
        v14 = v13 == 2;
      }

      v15 = objc_opt_self();
      v16 = swift_allocObject();
      *(v16 + 16) = a3;
      *(v16 + 24) = &v33;
      *(v16 + 32) = v3;
      *(v16 + 40) = a2;
      v17 = swift_allocObject();
      *(v17 + 16) = partial apply for closure #2 in DOCNode.dragItemFor(session:supportsPickingFolders:);
      *(v17 + 24) = v16;
      aBlock[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
      aBlock[5] = v17;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
      aBlock[3] = &block_descriptor_9;
      v18 = _Block_copy(aBlock);
      swift_unknownObjectRetain();

      [v15 _performAsDataOwner_block_];
      _Block_release(v18);
      LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

      if ((v18 & 1) == 0)
      {
        if (v33)
        {
          v20 = [objc_allocWithZone(MEMORY[0x277D75470]) initWithItemProvider_];
          [v20 setLocalObject_];
          v21 = v33;

          return v20;
        }

        else
        {
          __break(1u);
        }

        return result;
      }

      __break(1u);
      goto LABEL_26;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x24C1FC540](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v8 = *(v5 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v10 = [v3 isEqual_];

    swift_unknownObjectRelease();
    ++v7;
  }

  while (!v10);

  if (one-time initialization token for UI != -1)
  {
LABEL_26:
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  __swift_project_value_buffer(v22, static Logger.UI);
  swift_unknownObjectRetain();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v25 = 136315394;
    *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x8000000249BCBAC0, aBlock);
    *(v25 + 12) = 2080;
    v27 = DOCNode.nodeDescription.getter();
    v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, aBlock);

    *(v25 + 14) = v29;
    _os_log_impl(&dword_2493AC000, v23, v24, "%s node: %s cannot be added to the drag because it is already part of the drag", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v26, -1, -1);
    MEMORY[0x24C1FE850](v25, -1, -1);
  }

  return 0;
}

void closure #2 in DOCNode.dragItemFor(session:supportsPickingFolders:)(id *a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = [objc_allocWithZone(MEMORY[0x277CCAA88]) init];
  v9 = *a1;
  *a1 = v8;

  if (*a1)
  {
    v10 = *a1;
    specialized NSItemProvider.registerNode(_:supportsPickingFolders:disableExternalFolders:includeTeamDataForPasteboard:)(a2, v5, 0, 0, v10, a4);
  }
}

void *static FPItem.from(_:conformingTo:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UTType();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = UIDragItem.localObjectAsNode.getter();
  if (result)
  {
    v8 = result;
    v9 = [result contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v9) = UTType.conforms(to:)();
    (*(v3 + 8))(v6, v2);
    result = v8;
    if ((v9 & 1) == 0)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t UIDropSession.uniqueUTIsForDragItems.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v254 = &v247 - v2;
  v3 = type metadata accessor for UTType();
  v248 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v266 = &v247 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v265 = &v247 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v264 = &v247 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v267 = &v247 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v249 = &v247 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v260 = &v247 - v20;
  MEMORY[0x28223BE20](v21, v22);
  v259 = &v247 - v23;
  MEMORY[0x28223BE20](v24, v25);
  v258 = &v247 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v282 = &v247 - v29;
  MEMORY[0x28223BE20](v30, v31);
  v270 = &v247 - v32;
  MEMORY[0x28223BE20](v33, v34);
  v269 = &v247 - v35;
  MEMORY[0x28223BE20](v36, v37);
  v268 = &v247 - v38;
  MEMORY[0x28223BE20](v39, v40);
  v283 = &v247 - v41;
  v300 = type metadata accessor for DOCDragPasteboardType(0);
  v42 = *(v300 - 8);
  MEMORY[0x28223BE20](v300, v43);
  v45 = &v247 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47);
  v280 = &v247 - v48;
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v247 - v51;
  MEMORY[0x28223BE20](v53, v54);
  v56 = &v247 - v55;
  MEMORY[0x28223BE20](v57, v58);
  v294 = &v247 - v59;
  MEMORY[0x28223BE20](v60, v61);
  v253 = &v247 - v62;
  MEMORY[0x28223BE20](v63, v64);
  v295 = &v247 - v65;
  MEMORY[0x28223BE20](v66, v67);
  v250 = &v247 - v68;
  MEMORY[0x28223BE20](v69, v70);
  v263 = &v247 - v71;
  MEMORY[0x28223BE20](v72, v73);
  v272 = &v247 - v74;
  MEMORY[0x28223BE20](v75, v76);
  v271 = &v247 - v77;
  MEMORY[0x28223BE20](v78, v79);
  v297 = &v247 - v80;
  MEMORY[0x28223BE20](v81, v82);
  v298 = &v247 - v83;
  MEMORY[0x28223BE20](v84, v85);
  v292 = &v247 - v86;
  MEMORY[0x28223BE20](v87, v88);
  v291 = &v247 - v89;
  MEMORY[0x28223BE20](v90, v91);
  v93 = &v247 - v92;
  MEMORY[0x28223BE20](v94, v95);
  v299 = &v247 - v96;
  MEMORY[0x28223BE20](v97, v98);
  v100 = &v247 - v99;
  v103 = MEMORY[0x28223BE20](v101, v102);
  v105 = (&v247 - v104);
  if (one-time initialization token for DOCAcceptableDragPasteboardTypes != -1)
  {
    goto LABEL_194;
  }

  while (1)
  {
    v281 = v45;
    rawValue = DOCAcceptableDragPasteboardTypes._rawValue;
    v107 = *(DOCAcceptableDragPasteboardTypes._rawValue + 2);
    v293 = v3;
    v276 = v42;
    v288 = v52;
    v290 = v56;
    v252 = v107;
    if (v107)
    {
      v45 = 0;
      v285 = v248 + 8;
      v286 = v248 + 32;
      v296 = MEMORY[0x277D84F90];
      v274 = "ntManager.FINode.File";
      v273 = "com.apple.icloud.applecorporate";
      v279 = "ntManager.FINode.Location";
      v278 = "ntManager.FPItem.File";
      v277 = "ntManager.FPItem.Location";
      v289 = v93;
      v287 = v105;
      v251 = DOCAcceptableDragPasteboardTypes._rawValue;
      while (1)
      {
        if (v45 >= rawValue[2])
        {
          goto LABEL_191;
        }

        v3 = *(v42 + 80);
        v110 = (v3 + 32) & ~v3;
        v111 = *(v42 + 72);
        outlined init with copy of DOCDragPasteboardType(rawValue + v110 + v111 * v45, v105, v103);
        v262 = v45 + 1;
        v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDragPasteboardTypeOGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables21DOCDragPasteboardTypeOGMR);
        v257 = v3;
        v256 = v112;
        v255 = v110 + 2 * v111;
        v113 = swift_allocObject();
        v261 = v110;
        v275 = v113;
        v114 = v113 + v110;
        *(v113 + v110) = 0;
        swift_storeEnumTagMultiPayload();
        *(v114 + v111) = 1;
        swift_storeEnumTagMultiPayload();
        v115 = 0;
        v116 = 0;
        v117 = v283;
        v284 = v111;
        do
        {
          v120 = v115;
          outlined init with copy of DOCDragPasteboardType(v114 + v116 * v111, v100, v109);
          outlined init with copy of DOCDragPasteboardType(v105, v299, v121);
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          if (!EnumCaseMultiPayload)
          {
            v132 = *v299;
            outlined init with copy of DOCDragPasteboardType(v100, v93, v123);
            if (swift_getEnumCaseMultiPayload())
            {
              v118 = v93;
              goto LABEL_10;
            }

            if (v132)
            {
              v127 = 0xD000000000000029;
            }

            else
            {
              v127 = 0xD000000000000025;
            }

            if (v132)
            {
              v144 = v274;
            }

            else
            {
              v144 = v273;
            }

            v128 = v144 | 0x8000000000000000;
            if (*v93)
            {
              v130 = 0xD000000000000029;
            }

            else
            {
              v130 = 0xD000000000000025;
            }

            if (*v93)
            {
              v131 = v274;
            }

            else
            {
              v131 = v273;
            }

            goto LABEL_51;
          }

          if (EnumCaseMultiPayload == 1)
          {
            v124 = *v299;
            v3 = v291;
            outlined init with copy of DOCDragPasteboardType(v100, v291, v123);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              v118 = v291;
LABEL_10:
              outlined destroy of DOCDragPasteboardType(v118, v125);
LABEL_11:
              outlined destroy of DOCDragPasteboardType(v100, v119);
              goto LABEL_12;
            }

            if (v124 == 1)
            {
              v126 = v278;
            }

            else
            {
              v126 = v277;
            }

            if (v124)
            {
              v127 = 0xD000000000000029;
            }

            else
            {
              v127 = 0xD000000000000025;
            }

            if (!v124)
            {
              v126 = v279;
            }

            v128 = v126 | 0x8000000000000000;
            if (*v291 == 1)
            {
              v129 = v278;
            }

            else
            {
              v129 = v277;
            }

            if (*v291)
            {
              v130 = 0xD000000000000029;
            }

            else
            {
              v130 = 0xD000000000000025;
            }

            if (*v291)
            {
              v131 = v129;
            }

            else
            {
              v131 = v279;
            }

LABEL_51:
            if (v127 == v130 && v128 == (v131 | 0x8000000000000000))
            {

              outlined destroy of DOCDragPasteboardType(v100, v108);
              v93 = v289;
LABEL_5:
              outlined destroy of DOCDragPasteboardType(v105, v109);
              swift_setDeallocating();
              swift_arrayDestroy();
              swift_deallocClassInstance();
              goto LABEL_6;
            }

            v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

            outlined destroy of DOCDragPasteboardType(v100, v145);
            v93 = v289;
            if (v3)
            {
              goto LABEL_5;
            }

            goto LABEL_12;
          }

          v133 = *v286;
          v134 = v100;
          v135 = v293;
          v136 = (*v286)(v117, v299, v293);
          v3 = v292;
          outlined init with copy of DOCDragPasteboardType(v134, v292, v136);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            outlined destroy of DOCDragPasteboardType(v292, v137);
            (*v285)(v117, v135);
            v100 = v134;
            v105 = v287;
            v111 = v284;
            goto LABEL_11;
          }

          v138 = v270;
          v133(v270, v292, v135);
          v139 = v269;
          v133(v269, v138, v135);
          v140 = v268;
          v133(v268, v139, v135);
          v141 = UTType.conforms(to:)();
          v3 = *v285;
          v142 = v140;
          v117 = v283;
          (*v285)(v142, v135);
          v143 = (v3)(v117, v135);
          outlined destroy of DOCDragPasteboardType(v134, v143);
          v100 = v134;
          v105 = v287;
          v111 = v284;
          if (v141)
          {
            goto LABEL_5;
          }

LABEL_12:
          v115 = 1;
          v116 = 1;
        }

        while ((v120 & 1) == 0);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v257 = swift_allocObject();
        v146 = v257 + v261;
        *(v257 + v261) = 0;
        swift_storeEnumTagMultiPayload();
        *(v146 + v111) = 1;
        swift_storeEnumTagMultiPayload();
        v147 = 0;
        v148 = 0;
        v3 = v263;
        v275 = v146;
        do
        {
          v152 = v147;
          outlined init with copy of DOCDragPasteboardType(v146 + v148 * v111, v298, v109);
          outlined init with copy of DOCDragPasteboardType(v105, v297, v153);
          v154 = swift_getEnumCaseMultiPayload();
          if (!v154)
          {
            v149 = v3;
            v165 = *v297;
            v3 = v271;
            outlined init with copy of DOCDragPasteboardType(v298, v271, v155);
            if (swift_getEnumCaseMultiPayload())
            {
              v150 = v3;
              goto LABEL_57;
            }

            if (v165)
            {
              v182 = 0xD000000000000029;
            }

            else
            {
              v182 = 0xD000000000000025;
            }

            if (v165)
            {
              v183 = v274;
            }

            else
            {
              v183 = v273;
            }

            if (*v3)
            {
              v184 = 0xD000000000000029;
            }

            else
            {
              v184 = 0xD000000000000025;
            }

            if (*v3)
            {
              v185 = v274;
            }

            else
            {
              v185 = v273;
            }

            if (v182 == v184 && (v183 | 0x8000000000000000) == (v185 | 0x8000000000000000))
            {
              goto LABEL_110;
            }

            goto LABEL_103;
          }

          if (v154 == 1)
          {
            v156 = *v297;
            v157 = v272;
            outlined init with copy of DOCDragPasteboardType(v298, v272, v155);
            if (swift_getEnumCaseMultiPayload() != 1)
            {
              v149 = v3;
              v150 = v157;
LABEL_57:
              outlined destroy of DOCDragPasteboardType(v150, v158);
LABEL_58:
              outlined destroy of DOCDragPasteboardType(v298, v151);
              goto LABEL_59;
            }

            if (v156 == 1)
            {
              v159 = v278;
            }

            else
            {
              v159 = v277;
            }

            if (v156)
            {
              v160 = 0xD000000000000029;
            }

            else
            {
              v160 = 0xD000000000000025;
            }

            if (!v156)
            {
              v159 = v279;
            }

            v161 = v159 | 0x8000000000000000;
            if (*v157 == 1)
            {
              v162 = v278;
            }

            else
            {
              v162 = v277;
            }

            if (*v157)
            {
              v163 = 0xD000000000000029;
            }

            else
            {
              v163 = 0xD000000000000025;
            }

            if (*v157)
            {
              v164 = v162;
            }

            else
            {
              v164 = v279;
            }

            if (v160 == v163 && v161 == (v164 | 0x8000000000000000))
            {
LABEL_110:

              outlined destroy of DOCDragPasteboardType(v298, v191);
              v93 = v289;
              goto LABEL_5;
            }

            v149 = v3;
LABEL_103:
            v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

            outlined destroy of DOCDragPasteboardType(v298, v186);
            v93 = v289;
            if (v3)
            {
              goto LABEL_5;
            }

            goto LABEL_59;
          }

          v166 = *v286;
          v167 = v293;
          v168 = (*v286)(v282, v297, v293);
          v169 = v298;
          outlined init with copy of DOCDragPasteboardType(v298, v3, v168);
          if (swift_getEnumCaseMultiPayload() != 2)
          {
            v149 = v3;
            outlined destroy of DOCDragPasteboardType(v3, v170);
            (*v285)(v282, v167);
            v93 = v289;
            v105 = v287;
            v146 = v275;
            goto LABEL_58;
          }

          v171 = v3;
          v172 = v260;
          v166(v260, v171, v167);
          v173 = v100;
          v174 = v259;
          v166(v259, v172, v167);
          v175 = v258;
          v176 = v174;
          v177 = v282;
          v166(v258, v176, v167);
          v178 = UTType.conforms(to:)();
          v3 = *v285;
          v179 = v175;
          v149 = v263;
          (*v285)(v179, v167);
          v180 = v177;
          v100 = v173;
          v111 = v284;
          v181 = (v3)(v180, v167);
          outlined destroy of DOCDragPasteboardType(v169, v181);
          v93 = v289;
          v105 = v287;
          v146 = v275;
          if (v178)
          {
            goto LABEL_5;
          }

LABEL_59:
          v147 = 1;
          v148 = 1;
          v3 = v149;
        }

        while ((v152 & 1) == 0);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        outlined init with take of DOCDragPasteboardType(v105, v250, type metadata accessor for DOCDragPasteboardType);
        v187 = v296;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v301 = v187;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v187 + 16) + 1, 1);
          v187 = v301;
        }

        v190 = *(v187 + 16);
        v189 = *(v187 + 24);
        if (v190 >= v189 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v189 > 1), v190 + 1, 1);
          v187 = v301;
        }

        *(v187 + 16) = v190 + 1;
        v296 = v187;
        outlined init with take of DOCDragPasteboardType(v250, v187 + v261 + v190 * v111, type metadata accessor for DOCDragPasteboardType);
LABEL_6:
        v45 = v262;
        v42 = v276;
        v52 = v288;
        v56 = v290;
        rawValue = v251;
        if (v262 == v252)
        {
          goto LABEL_112;
        }
      }
    }

    v296 = MEMORY[0x277D84F90];
LABEL_112:
    v302 = MEMORY[0x277D84FA0];
    v192 = [v247 items];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
    v193 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v271 = v193;
    v42 = v193 >> 62 ? __CocoaSet.count.getter() : *((v193 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = v254;
    v194 = v267;
    v93 = v294;
    if (!v42)
    {
      break;
    }

    v45 = 0;
    v273 = (v271 & 0xC000000000000001);
    v269 = (v271 & 0xFFFFFFFFFFFFFF8);
    v268 = (v271 + 32);
    v270 = v248 + 48;
    v105 = (v248 + 32);
    v291 = v248 + 8;
    v283 = "ntManager.FINode.File";
    v282 = "com.apple.icloud.applecorporate";
    v289 = "ntManager.FINode.Location";
    v285 = "ntManager.FPItem.Location";
    v286 = "ntManager.FPItem.File";
    v297 = (v248 + 32);
    v272 = v42;
    while (1)
    {
      if (v273)
      {
        v195 = MEMORY[0x24C1FC540](v45, v271);
        v196 = __OFADD__(v45++, 1);
        if (v196)
        {
          goto LABEL_192;
        }
      }

      else
      {
        if (v45 >= *(v269 + 2))
        {
          goto LABEL_193;
        }

        v195 = *&v268[8 * v45];
        v196 = __OFADD__(v45++, 1);
        if (v196)
        {
          goto LABEL_192;
        }
      }

      v275 = v45;
      v274 = v195;
      v197 = [v195 itemProvider];
      v198 = [v197 registeredTypeIdentifiers];

      v42 = v276;
      v100 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v45 = v100;
      v278 = *(v100 + 16);
      if (v278)
      {
        break;
      }

LABEL_116:

LABEL_117:
      v42 = v272;
      v45 = v275;
      if (v275 == v272)
      {
        goto LABEL_188;
      }
    }

    v199 = 0;
    v279 = (v100 + 32);
    v277 = v100;
    while (1)
    {
      if (v199 >= *(v45 + 16))
      {
        goto LABEL_190;
      }

      v200 = v3;
      v284 = v199;
      v201 = &v279[16 * v199];
      v202 = *v201;
      v100 = v201[1];

      v298 = v202;
      v203._countAndFlagsBits = v202;
      v203._object = v100;
      v204 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UIDropSession.uniqueUTIsForDragItems.getter, v203);
      v287 = v100;
      if (!v204)
      {
        v206 = 0;
LABEL_131:
        v207 = v253;
        *v253 = v206;
LABEL_132:
        v3 = v298;
        goto LABEL_133;
      }

      v205 = v293;
      if (v204 == 1)
      {
        v206 = 1;
        v52 = v288;
        goto LABEL_131;
      }

      v3 = v298;
      v241._countAndFlagsBits = v298;
      v241._object = v100;
      v242 = _findStringSwitchCase(cases:string:)(&outlined read-only object #1 of UIDropSession.uniqueUTIsForDragItems.getter, v241);
      if (v242 > 2)
      {

        v3 = v200;
        UTType.init(_:)();
        if ((*v270)(v200, 1, v205) == 1)
        {

          outlined destroy of CharacterSet?(v200, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
          v52 = v288;
          goto LABEL_179;
        }

        v45 = *v105;
        v243 = v249;
        (*v105)(v249, v200, v205);
        v207 = v253;
        v244 = v243;
        v42 = v276;
        (v45)(v253, v244, v205);
        v52 = v288;
        goto LABEL_132;
      }

      v207 = v253;
      *v253 = v242;
      v52 = v288;
LABEL_133:
      swift_storeEnumTagMultiPayload();
      outlined init with take of DOCDragPasteboardType(v207, v295, type metadata accessor for DOCDragPasteboardType);
      v209 = *(v296 + 16);
      if (v209)
      {
        break;
      }

LABEL_178:

      outlined destroy of DOCDragPasteboardType(v295, v240);
      v3 = v254;
      v105 = v297;
      v45 = v277;
LABEL_179:
      v199 = v284 + 1;
      if ((v284 + 1) == v278)
      {
        goto LABEL_116;
      }
    }

    v100 = 0;
    v299 = (v296 + ((*(v42 + 80) + 32) & ~*(v42 + 80)));
    v292 = v209;
    while (v100 < *(v296 + 16))
    {
      outlined init with copy of DOCDragPasteboardType(&v299[*(v42 + 72) * v100], v93, v208);
      outlined init with copy of DOCDragPasteboardType(v295, v56, v211);
      v212 = swift_getEnumCaseMultiPayload();
      if (!v212)
      {
        v45 = *v56;
        outlined init with copy of DOCDragPasteboardType(v93, v52, v213);
        if (swift_getEnumCaseMultiPayload())
        {
          outlined destroy of DOCDragPasteboardType(v52, v220);
          goto LABEL_136;
        }

        if (v45)
        {
          v219 = 0xD000000000000029;
        }

        else
        {
          v219 = 0xD000000000000025;
        }

        if (v45)
        {
          v233 = v283;
        }

        else
        {
          v233 = v282;
        }

        v45 = v233 | 0x8000000000000000;
        if (*v52)
        {
          v234 = 0xD000000000000029;
        }

        else
        {
          v234 = 0xD000000000000025;
        }

        if (*v52)
        {
          v235 = v283;
        }

        else
        {
          v235 = v282;
        }

        goto LABEL_174;
      }

      if (v212 == 1)
      {
        v45 = *v56;
        v214 = v280;
        outlined init with copy of DOCDragPasteboardType(v93, v280, v213);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          outlined destroy of DOCDragPasteboardType(v214, v215);
          v56 = v290;
LABEL_136:
          outlined destroy of DOCDragPasteboardType(v93, v210);
          goto LABEL_137;
        }

        if (v45)
        {
          v217 = v285;
          v216 = v286;
          if (v45 == 1)
          {
            v218 = v286;
          }

          else
          {
            v218 = v285;
          }

          v219 = 0xD000000000000029;
        }

        else
        {
          v219 = 0xD000000000000025;
          v218 = v289;
          v217 = v285;
          v216 = v286;
        }

        v236 = *v214;
        v45 = v218 | 0x8000000000000000;
        if (v236 == 1)
        {
          v237 = v216;
        }

        else
        {
          v237 = v217;
        }

        if (*v214)
        {
          v234 = 0xD000000000000029;
        }

        else
        {
          v234 = 0xD000000000000025;
        }

        v235 = v289;
        v56 = v290;
        if (v236)
        {
          v235 = v237;
        }

LABEL_174:
        if (v219 == v234 && v45 == (v235 | 0x8000000000000000))
        {

          outlined destroy of DOCDragPasteboardType(v93, v245);
          v52 = v288;
LABEL_187:
          outlined destroy of DOCDragPasteboardType(v295, v208);

          specialized Set._Variant.insert(_:)(&v301, v3, v287);

          v3 = v254;
          v93 = v294;
          v105 = v297;
          goto LABEL_117;
        }

        v105 = v93;
        v238 = _stringCompareWithSmolCheck(_:_:expecting:)();

        outlined destroy of DOCDragPasteboardType(v105, v239);
        v52 = v288;
        if (v238)
        {
          goto LABEL_187;
        }

        goto LABEL_137;
      }

      v45 = *v297;
      v221 = v93;
      v222 = v293;
      v223 = (*v297)(v194, v56, v293);
      v224 = v281;
      outlined init with copy of DOCDragPasteboardType(v221, v281, v223);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        outlined destroy of DOCDragPasteboardType(v224, v225);
        (*v291)(v194, v222);
        v56 = v290;
        v93 = v221;
        v3 = v298;
        v209 = v292;
        goto LABEL_136;
      }

      v226 = v266;
      (v45)(v266, v224, v222);
      v227 = v265;
      (v45)(v265, v226, v222);
      v228 = v264;
      v229 = v227;
      v194 = v267;
      (v45)(v264, v229, v222);
      v45 = UTType.conforms(to:)();
      v230 = *v291;
      v231 = v228;
      v42 = v276;
      (*v291)(v231, v222);
      v232 = v230(v194, v222);
      v52 = v288;
      outlined destroy of DOCDragPasteboardType(v221, v232);
      v56 = v290;
      v3 = v298;
      v209 = v292;
      if (v45)
      {
        goto LABEL_187;
      }

LABEL_137:
      ++v100;
      v93 = v294;
      if (v209 == v100)
      {
        goto LABEL_178;
      }
    }

    __break(1u);
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
LABEL_194:
    swift_once();
  }

LABEL_188:

  return v302;
}

void NSItemProvider.doc_nodeFromTeamData(completion:)(void (*a1)(id, id), void *a2)
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v2 teamData];
  if (v11)
  {
    v65 = a1;
    v66 = a2;
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_249B9FA70;
    *(v16 + 32) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItemID, 0x277CC6400);
    *(v16 + 40) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSURL, 0x277CBEBC0);
    static NSKeyedUnarchiver.unarchivedObject(ofClasses:from:)();

    if (v69)
    {
      outlined init with take of Any(&aBlock, v73);
      outlined init with copy of Any(v73, &aBlock);
      if (swift_dynamicCast())
      {
        v21 = v72;
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v22 = type metadata accessor for Logger();
        __swift_project_value_buffer(v22, static Logger.UI);
        v23 = v21;
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *&aBlock = v64;
          *v26 = 136315394;
          *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BCBAF0, &aBlock);
          *(v26 + 12) = 2080;
          v27 = v23;
          v28 = [v27 description];
          v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v31 = v30;

          v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &aBlock);

          *(v26 + 14) = v32;
          _os_log_impl(&dword_2493AC000, v24, v25, "%s Unarchived a ItemID from teamData: %s", v26, 0x16u);
          v33 = v64;
          swift_arrayDestroy();
          MEMORY[0x24C1FE850](v33, -1, -1);
          MEMORY[0x24C1FE850](v26, -1, -1);
        }

        v34 = [objc_opt_self() defaultManager];
        v35 = swift_allocObject();
        v36 = v66;
        *(v35 + 16) = v65;
        *(v35 + 24) = v36;
        v70 = partial apply for closure #1 in NSItemProvider.doc_nodeFromTeamData(completion:);
        v71 = v35;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        v68 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
        v69 = &block_descriptor_19_0;
        v37 = _Block_copy(&aBlock);

        [v34 fetchItemForItemID:v23 completionHandler:v37];
        outlined consume of Data._Representation(v13, v15);
        _Block_release(v37);
      }

      else
      {
        outlined init with copy of Any(v73, &aBlock);
        if (swift_dynamicCast())
        {
          v38 = v72;
          if (one-time initialization token for UI != -1)
          {
            swift_once();
          }

          v39 = type metadata accessor for Logger();
          __swift_project_value_buffer(v39, static Logger.UI);
          v40 = v38;
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.debug.getter();

          v64 = v41;
          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            HIDWORD(v61) = v42;
            v44 = v43;
            v62 = swift_slowAlloc();
            *&aBlock = v62;
            *v44 = 136315394;
            *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BCBAF0, &aBlock);
            *(v44 + 12) = 2080;
            v45 = v40;
            v46 = [v45 description];
            v63 = v40;
            v47 = v46;
            v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v50 = v49;

            v40 = v63;
            v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &aBlock);

            *(v44 + 14) = v51;
            v52 = v64;
            _os_log_impl(&dword_2493AC000, v64, BYTE4(v61), "%s Unarchived url from teamData: %s", v44, 0x16u);
            v53 = v62;
            swift_arrayDestroy();
            MEMORY[0x24C1FE850](v53, -1, -1);
            MEMORY[0x24C1FE850](v44, -1, -1);
          }

          else
          {
          }

          static URL._unconditionallyBridgeFromObjectiveC(_:)();
          URL._bridgeToObjectiveC()(v57);
          v59 = v58;
          (*(v6 + 8))(v10, v5);
          v60 = [objc_opt_self() fiNodeFromURL_];

          v23 = v60;
          v65(v60, 0);
          outlined consume of Data._Representation(v13, v15);
        }

        else
        {
          v54 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v55 = MEMORY[0x24C1FAD20](0xD000000000000025, 0x8000000249BCB9F0);
          v56 = [v54 initWithDomain:v55 code:1003 userInfo:0];

          v23 = v56;
          v65(0, v56);
          outlined consume of Data._Representation(v13, v15);
        }

        v34 = v23;
      }

      __swift_destroy_boxed_opaque_existential_0(v73);
    }

    else
    {
      outlined consume of Data._Representation(v13, v15);
      outlined destroy of CharacterSet?(&aBlock, &_sypSgMd, &_sypSgMR);
    }
  }

  else
  {
    v17 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v18 = MEMORY[0x24C1FAD20](0xD000000000000025, 0x8000000249BCB9F0);
    v19 = [v17 initWithDomain:v18 code:1002 userInfo:0];

    v66 = v19;
    a1(0, v19);

    v20 = v66;
  }
}

DocumentManagerExecutables::DOCDragAndDropErrorCode_optional __swiftcall DOCDragAndDropErrorCode.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue - 1001) >= 3)
  {
    return 3;
  }

  else
  {
    return (rawValue + 23);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCDragAndDropErrorCode()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1 + 1001);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCDragAndDropErrorCode(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v2 + 1001);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance DOCDragAndDropErrorCode@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result - 1001;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t *a2, int64_t a3)
{
  v4 = v3;
  v8 = *v3;
  Hasher.init(_seed:)();
  v25 = a1;
  if (a3 <= 3)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v9 = 3;
      }

      else
      {
        v9 = 4;
      }

      goto LABEL_20;
    }

    if (!a3)
    {
      v9 = 0;
      goto LABEL_20;
    }

    if (a3 == 1)
    {
      v9 = 2;
      goto LABEL_20;
    }

LABEL_63:
    MEMORY[0x24C1FCBD0](1);
    String.hash(into:)();
    goto LABEL_21;
  }

  if (a3 <= 5)
  {
    if (a3 == 4)
    {
      v9 = 5;
    }

    else
    {
      v9 = 6;
    }

    goto LABEL_20;
  }

  if (a3 == 6)
  {
    v9 = 7;
    goto LABEL_20;
  }

  if (a3 == 7)
  {
    v9 = 8;
    goto LABEL_20;
  }

  if (a3 != 8)
  {
    goto LABEL_63;
  }

  v9 = 9;
LABEL_20:
  MEMORY[0x24C1FCBD0](v9);
LABEL_21:
  v10 = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  v12 = v10 & ~v11;
  if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_62:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v4;
    outlined copy of ColumnType(a2, a3);
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v12, isUniquelyReferenced_nonNull_native);
    *v4 = v26;
    *v25 = a2;
    v25[1] = a3;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(v8 + 48) + 16 * v12);
    v15 = *v14;
    v16 = v14[1];
    if (v16 <= 3)
    {
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          if (a3 == 2)
          {
            v22 = *v14;
            v23 = 2;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a2, a3);
          v17 = 2;
        }

        else
        {
          if (a3 == 3)
          {
            v22 = *v14;
            v23 = 3;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a2, a3);
          v17 = 3;
        }

        goto LABEL_53;
      }

      if (!v16)
      {
        if (!a3)
        {
          v22 = *v14;
          v23 = 0;
          goto LABEL_74;
        }

        outlined copy of ColumnType(a2, a3);
        v17 = 0;
        goto LABEL_53;
      }

      if (v16 == 1)
      {
        if (a3 == 1)
        {
          v22 = *v14;
          v23 = 1;
          goto LABEL_74;
        }

        outlined copy of ColumnType(a2, a3);
        v17 = 1;
        goto LABEL_53;
      }
    }

    else
    {
      if (v16 <= 5)
      {
        if (v16 == 4)
        {
          if (a3 == 4)
          {
            v22 = *v14;
            v23 = 4;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a2, a3);
          v17 = 4;
        }

        else
        {
          if (a3 == 5)
          {
            v22 = *v14;
            v23 = 5;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a2, a3);
          v17 = 5;
        }

        goto LABEL_53;
      }

      switch(v16)
      {
        case 6:
          if (a3 == 6)
          {
            v22 = *v14;
            v23 = 6;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a2, a3);
          v17 = 6;
          goto LABEL_53;
        case 7:
          if (a3 == 7)
          {
            v22 = *v14;
            v23 = 7;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a2, a3);
          v17 = 7;
          goto LABEL_53;
        case 8:
          if (a3 == 8)
          {
            v22 = *v14;
            v23 = 8;
            goto LABEL_74;
          }

          outlined copy of ColumnType(a2, a3);
          v17 = 8;
          goto LABEL_53;
      }
    }

    if (a3 < 9)
    {
      outlined copy of ColumnType(a2, a3);
      outlined copy of ColumnType(v15, v16);
      v17 = v16;
LABEL_53:
      outlined consume of ColumnType(v15, v17);
      outlined consume of ColumnType(a2, a3);
      goto LABEL_54;
    }

    if (v15 == a2 && v16 == a3)
    {
      break;
    }

    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of ColumnType(a2, a3);
    outlined copy of ColumnType(v15, v16);
    outlined consume of ColumnType(v15, v16);
    outlined consume of ColumnType(a2, a3);
    if (v19)
    {
      goto LABEL_75;
    }

LABEL_54:
    v12 = (v12 + 1) & v13;
    if (((*(v8 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  v22 = a2;
  v23 = a3;
LABEL_74:
  outlined consume of ColumnType(v22, v23);
LABEL_75:
  outlined consume of ColumnType(a2, a3);
  v24 = *(*(v8 + 48) + 16 * v12);
  *v25 = v24;
  outlined copy of ColumnType(v24, *(&v24 + 1));
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x24C1FC430](v16, a2);
      outlined destroy of AnyHashable(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of AnyHashable(a2);
    outlined init with copy of AnyHashable(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of AnyHashable(a2, v16);
    v15 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

{
  v4 = *v2;
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1((a2 + 8), *(a2 + 32));
  dispatch thunk of Hashable.hash(into:)();
  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      outlined init with copy of DOCIdentityHashableLocation(*(v4 + 48) + 56 * v7, &v16);
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1(v17, v17[3]);
      dispatch thunk of Hashable.hash(into:)();
      v9 = Hasher._finalize()();
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1((a2 + 8), *(a2 + 32));
      dispatch thunk of Hashable.hash(into:)();
      v10 = Hasher._finalize()();
      outlined destroy of DOCIdentityHashableLocation(&v16);
      if (v9 == v10)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    outlined destroy of DOCIdentityHashableLocation(a2);
    outlined init with copy of DOCIdentityHashableLocation(*(v4 + 48) + 56 * v7, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    outlined init with copy of DOCIdentityHashableLocation(a2, v18);
    v16 = *v14;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v7, isUniquelyReferenced_nonNull_native);
    *v14 = v16;
    v12 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v12;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, specialized _NativeSet.resize(capacity:), type metadata accessor for DOCDocumentSourceIdentifier, specialized _NativeSet.copyAndResize(capacity:), specialized _NativeSet.copy());
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, specialized _NativeSet.resize(capacity:), type metadata accessor for FPAction, specialized _NativeSet.copyAndResize(capacity:), specialized _NativeSet.copy());
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, specialized _NativeSet.resize(capacity:), type metadata accessor for FPProviderID, specialized _NativeSet.copyAndResize(capacity:), specialized _NativeSet.copy());
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  DOCItemFileTypeGroupCategory.hash(into:)(v19, a2, a3);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_45:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19[0] = *v3;
    outlined copy of DOCItemFileTypeGroupCategory(a2, a3);
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19[0];
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14 <= 4)
    {
      break;
    }

    if (v14 > 7)
    {
      switch(v14)
      {
        case 8:
          if (a3 == 8)
          {
            goto LABEL_44;
          }

          break;
        case 9:
          if (a3 == 9)
          {
            goto LABEL_44;
          }

          break;
        case 10:
          if (a3 == 10)
          {
            goto LABEL_44;
          }

          break;
        default:
          goto LABEL_37;
      }
    }

    else if (v14 == 5)
    {
      if (a3 == 5)
      {
        goto LABEL_44;
      }
    }

    else if (v14 == 6)
    {
      if (a3 == 6)
      {
        goto LABEL_44;
      }
    }

    else if (a3 == 7)
    {
      goto LABEL_44;
    }

LABEL_4:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      if (a3 == 2)
      {
        goto LABEL_44;
      }
    }

    else if (v14 == 3)
    {
      if (a3 == 3)
      {
        goto LABEL_44;
      }
    }

    else if (a3 == 4)
    {
      goto LABEL_44;
    }

    goto LABEL_4;
  }

  if (!v14)
  {
    if (!a3)
    {
      goto LABEL_44;
    }

    goto LABEL_4;
  }

  if (v14 == 1)
  {
    if (a3 == 1)
    {
      goto LABEL_44;
    }

    goto LABEL_4;
  }

LABEL_37:
  if (a3 < 0xB)
  {
    goto LABEL_4;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_4;
  }

  outlined consume of DOCItemFileTypeGroupCategory(a2, a3);
LABEL_44:
  v16 = *(*(v7 + 48) + 16 * v10);
  *a1 = v16;
  outlined copy of DOCItemFileTypeGroupCategory(v16, *(&v16 + 1));
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578], MEMORY[0x277D85588]);
  v34 = a2;
  v12 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v13 = v11 + 56;
  v32 = v11 + 56;
  v33 = v11;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  if ((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v29 = v2;
    v30 = a1;
    v31 = ~v14;
    v28 = v7;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    v20 = (v17 - 8);
    v27[1] = v17 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v21 = v16;
      v16(v10, *(v33 + 48) + v19 * v15, v6);
      lazy protocol witness table accessor for type FPAction and conformance FPAction(&lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578], MEMORY[0x277D85590]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v23 = *v20;
      (*v20)(v10, v6);
      if (v22)
      {
        break;
      }

      v15 = (v15 + 1) & v31;
      v16 = v21;
      if (((*(v32 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        v3 = v29;
        a1 = v30;
        v7 = v28;
        goto LABEL_7;
      }
    }

    v23(v34, v6);
    v21(v30, *(v33 + 48) + v19 * v15, v6);
    return 0;
  }

  else
  {
    v16 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = v34;
    v16(v10, v34, v6);
    v35 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v10, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v35;
    (*(v7 + 32))(a1, v25, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo20UICollectionViewCellC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for DOCItemCollectionCell();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC26DocumentManagerExecutables21DOCItemCollectionCellC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for DOCItemCollectionCell();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo7UITouchC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6FINodeC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6DOCTagC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2, void (*a3)(unint64_t), uint64_t (*a4)(void, __n128), void (*a5)(unint64_t), void (*a6)(void))
{
  v7 = v6;
  v10 = *v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();

  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if ((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {

        goto LABEL_12;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v24 = *(*(v10 + 48) + 8 * v13);
    *a1 = v24;
    v25 = v24;
    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v7;
    v22 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v22, v13, isUniquelyReferenced_nonNull_native, a3, a4, a5, a6);
    *v7 = v30;
    *a1 = v22;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  Hasher.init(_seed:)();
  v7 = a2 & 1;
  MEMORY[0x24C1FCBD0](v7);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(v6 + 48);
      if (*(v12 + v10) == v7)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(v7) = *(v12 + v10);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v7, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = v7;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      type metadata accessor for DSLightweightTagInfo();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC17DesktopServicesUI20DSLightweightTagInfoC_Tt1g5(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      specialized _NativeSet.resize(capacity:)(v17 + 1);
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  type metadata accessor for DSLightweightTagInfo();
  lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo(&lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo, MEMORY[0x282217CB0]);
  v10 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo(&lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo, MEMORY[0x282217CB8]);
  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  Task.hash(into:)();
  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {

      v9 = static Task.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    *a1 = *(*(v4 + 48) + 8 * v7);

    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v13;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v11, v7, isUniquelyReferenced_nonNull_native);
    *v13 = v15;
    *a1 = a2;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(unsigned __int8 *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v26 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v25 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      v9 = v8 == 2 ? 7562856 : 1936093281;
      v10 = v8 == 2 ? 0xE300000000000000 : 0xE400000000000000;
      v11 = *(*(v4 + 48) + v7) ? 0x7461667865 : 0x736F64736DLL;
      v12 = *(*(v4 + 48) + v7) <= 1u ? v11 : v9;
      v13 = *(*(v4 + 48) + v7) <= 1u ? 0xE500000000000000 : v10;
      v14 = v4;
      v15 = v3 == 2 ? 7562856 : 1936093281;
      v16 = v3 == 2 ? 0xE300000000000000 : 0xE400000000000000;
      v17 = v3 ? 0x7461667865 : 0x736F64736DLL;
      v18 = v3 <= 1u ? v17 : v15;
      v19 = v3 <= 1u ? 0xE500000000000000 : v16;
      if (v12 == v18 && v13 == v19)
      {
        break;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_39;
      }

      v7 = (v7 + 1) & v25;
      v4 = v14;
      if (((*(v26 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

LABEL_39:
    result = 0;
    v3 = *(*(v14 + 48) + v7);
  }

  else
  {
LABEL_37:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v23;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v3, v7, isUniquelyReferenced_nonNull_native);
    *v23 = v27;
    result = 1;
  }

  *a1 = v3;
  return result;
}

{
  v3 = a2;
  v4 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v4 + 48) + v7);
      if (v9 > 2)
      {
        if (v9 == 3)
        {
          v10 = 0x6E6F697461636F6CLL;
          v11 = 0xE900000000000073;
        }

        else
        {
          if (v9 == 4)
          {
            v10 = 0x73726576726573;
          }

          else
          {
            v10 = 1936154996;
          }

          if (v9 == 4)
          {
            v11 = 0xE700000000000000;
          }

          else
          {
            v11 = 0xE400000000000000;
          }
        }
      }

      else if (*(*(v4 + 48) + v7))
      {
        if (v9 == 1)
        {
          v10 = 0x796C746E65636572;
        }

        else
        {
          v10 = 0x657469726F766166;
        }

        if (v9 == 1)
        {
          v11 = 0xEC00000064657355;
        }

        else
        {
          v11 = 0xE900000000000073;
        }
      }

      else
      {
        v11 = 0xE300000000000000;
        v10 = 7368564;
      }

      v12 = 0x73726576726573;
      if (v3 != 4)
      {
        v12 = 1936154996;
      }

      v13 = 0xE700000000000000;
      if (v3 != 4)
      {
        v13 = 0xE400000000000000;
      }

      if (v3 == 3)
      {
        v12 = 0x6E6F697461636F6CLL;
        v13 = 0xE900000000000073;
      }

      v14 = 0x796C746E65636572;
      if (v3 != 1)
      {
        v14 = 0x657469726F766166;
      }

      v15 = 0xEC00000064657355;
      if (v3 != 1)
      {
        v15 = 0xE900000000000073;
      }

      if (!v3)
      {
        v14 = 7368564;
        v15 = 0xE300000000000000;
      }

      v16 = v3 <= 2u ? v14 : v12;
      v17 = v3 <= 2u ? v15 : v13;
      if (v10 == v16 && v11 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_44;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_42;
      }
    }

LABEL_44:
    result = 0;
    v3 = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_42:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v3, v7, isUniquelyReferenced_nonNull_native);
    *v21 = v23;
    result = 1;
  }

  *a1 = v3;
  return result;
}

BOOL specialized Set._Variant.insert(_:)()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](0);
  v2 = Hasher._finalize()() & ~(-1 << *(v1 + 32));
  v3 = (1 << v2) & *(v1 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8) + 56);
  if (!v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v0;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v2, isUniquelyReferenced_nonNull_native);
    *v0 = v6;
  }

  return v3 == 0;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3, Swift::Int a4)
{
  v9 = *v4;
  Hasher.init(_seed:)();
  v10 = MEMORY[0x24C1FAF70](a2, a3);
  MEMORY[0x24C1FCBD0](v10);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    while (1)
    {
      v15 = (*(v9 + 48) + 24 * v13);
      v16 = *v15 == a2 && v15[1] == a3;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v19 = (*(v9 + 48) + 24 * v13);
    v20 = v19[1];
    v21 = v19[2];
    *a1 = *v19;
    a1[1] = v20;
    a1[2] = v21;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v4;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, v13, isUniquelyReferenced_nonNull_native);
    *v4 = v22;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, _OWORD *a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  DOCSidebarItem.hashComparableValue.getter();
  String.hash(into:)();

  v6 = Hasher._finalize()();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = (*(v5 + 48) + 48 * v8);
      v11 = *(v10 + 25);
      v12 = v10[1];
      v31 = *v10;
      v32[0] = v12;
      *(v32 + 9) = v11;
      outlined init with copy of DOCSidebarItem(&v31, v30);
      v13 = DOCSidebarItem.hashComparableValue.getter();
      v15 = v14;
      if (v13 == DOCSidebarItem.hashComparableValue.getter() && v15 == v16)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      outlined destroy of DOCSidebarItem(&v31);
      if (v17)
      {
        goto LABEL_9;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    outlined destroy of DOCSidebarItem(&v31);
LABEL_9:
    outlined destroy of DOCSidebarItem(a2);
    v21 = *(v5 + 48) + 48 * v8;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    v26 = *(v21 + 32);
    *a1 = *v21;
    *(a1 + 8) = v23;
    *(a1 + 16) = v24;
    *(a1 + 24) = v25;
    *(a1 + 32) = v26;
    v27 = *(v21 + 40);
    *(a1 + 40) = v27;
    outlined copy of DOCSidebarItem(v22, v23, v24, v25, v26, v27);
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v28;
    outlined init with copy of DOCSidebarItem(a2, v30);
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v28 = v29;
    v19 = a2[1];
    *a1 = *a2;
    *(a1 + 16) = v19;
    *(a1 + 25) = *(a2 + 25);
    return 1;
  }
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo20UICollectionViewCellC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo20UICollectionViewCellCGMd, &_ss11_SetStorageCySo20UICollectionViewCellCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UICollectionViewCell, 0x277D752A8);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC17DesktopServicesUI20DSLightweightTagInfoC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy17DesktopServicesUI20DSLightweightTagInfoCGMd, &_ss11_SetStorageCy17DesktopServicesUI20DSLightweightTagInfoCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for DSLightweightTagInfo();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo(&lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo, MEMORY[0x282217CB0]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC26DocumentManagerExecutables21DOCItemCollectionCellC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy26DocumentManagerExecutables21DOCItemCollectionCellCGMd, "~V\t");
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for DOCItemCollectionCell();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo7UITouchC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo7UITouchCGMd, &_ss11_SetStorageCySo7UITouchCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UITouch, 0x277D75C68);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6FINodeC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6FINodeCGMd, &_ss11_SetStorageCySo6FINodeCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo6DOCTagC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo6DOCTagCGMd, &_ss11_SetStorageCySo6DOCTagCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DSLightweightTagInfo();
  lazy protocol witness table accessor for type DSLightweightTagInfo and conformance DSLightweightTagInfo(&lazy protocol witness table cache variable for type DSLightweightTagInfo and conformance DSLightweightTagInfo, MEMORY[0x282217CB0]);
  dispatch thunk of Hashable._rawHashValue(seed:)();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t *result, int64_t a2, unint64_t a3, char a4)
{
  v6 = v4;
  v10 = *(*v4 + 16);
  v11 = *(*v4 + 24);
  if (v11 > v10 && (a4 & 1) != 0)
  {
    goto LABEL_69;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_69;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v4;
  Hasher.init(_seed:)();
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v13 = 3;
      }

      else
      {
        v13 = 4;
      }

      goto LABEL_27;
    }

    if (!a2)
    {
      v13 = 0;
      goto LABEL_27;
    }

    if (a2 == 1)
    {
      v13 = 2;
      goto LABEL_27;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v13 = 5;
      }

      else
      {
        v13 = 6;
      }

      goto LABEL_27;
    }

    switch(a2)
    {
      case 6:
        v13 = 7;
        goto LABEL_27;
      case 7:
        v13 = 8;
        goto LABEL_27;
      case 8:
        v13 = 9;
LABEL_27:
        MEMORY[0x24C1FCBD0](v13);
        goto LABEL_28;
    }
  }

  MEMORY[0x24C1FCBD0](1);
  String.hash(into:)();
LABEL_28:
  v4 = v26;
  v14 = Hasher._finalize()();
  v15 = -1 << *(v12 + 32);
  a3 = v14 & ~v15;
  if ((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v16 = ~v15;
    do
    {
      v17 = (*(v12 + 48) + 16 * a3);
      v4 = *v17;
      v5 = v17[1];
      if (v5 <= 3)
      {
        if (v5 > 1)
        {
          if (v5 == 2)
          {
            if (a2 == 2)
            {
              goto LABEL_73;
            }

            outlined copy of ColumnType(result, a2);
            v18 = 2;
          }

          else
          {
            if (a2 == 3)
            {
              goto LABEL_73;
            }

            outlined copy of ColumnType(result, a2);
            v18 = 3;
          }

          goto LABEL_60;
        }

        if (!v5)
        {
          if (!a2)
          {
            goto LABEL_73;
          }

          outlined copy of ColumnType(result, a2);
          v18 = 0;
          goto LABEL_60;
        }

        if (v5 == 1)
        {
          if (a2 == 1)
          {
            goto LABEL_73;
          }

          outlined copy of ColumnType(result, a2);
          v18 = 1;
          goto LABEL_60;
        }
      }

      else
      {
        if (v5 <= 5)
        {
          if (v5 == 4)
          {
            if (a2 == 4)
            {
              goto LABEL_73;
            }

            outlined copy of ColumnType(result, a2);
            v18 = 4;
          }

          else
          {
            if (a2 == 5)
            {
              goto LABEL_73;
            }

            outlined copy of ColumnType(result, a2);
            v18 = 5;
          }

          goto LABEL_60;
        }

        switch(v5)
        {
          case 6:
            if (a2 == 6)
            {
              goto LABEL_73;
            }

            outlined copy of ColumnType(result, a2);
            v18 = 6;
            goto LABEL_60;
          case 7:
            if (a2 == 7)
            {
              goto LABEL_73;
            }

            outlined copy of ColumnType(result, a2);
            v18 = 7;
            goto LABEL_60;
          case 8:
            if (a2 == 8)
            {
              goto LABEL_73;
            }

            outlined copy of ColumnType(result, a2);
            v18 = 8;
            goto LABEL_60;
        }
      }

      if (a2 >= 9)
      {
        if (v4 == result && v5 == a2)
        {
          goto LABEL_76;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of ColumnType(result, a2);
        outlined copy of ColumnType(v4, v5);
        outlined consume of ColumnType(v4, v5);
        outlined consume of ColumnType(result, a2);
        if (v20)
        {
          goto LABEL_75;
        }

        goto LABEL_61;
      }

      outlined copy of ColumnType(result, a2);
      outlined copy of ColumnType(v4, v5);
      v18 = v5;
LABEL_60:
      outlined consume of ColumnType(v4, v18);
      outlined consume of ColumnType(result, a2);
LABEL_61:
      a3 = (a3 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_69:
  v21 = *v6;
  *(*v6 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v22 = (*(v21 + 48) + 16 * a3);
  *v22 = result;
  v22[1] = a2;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_73:
    a2 = v5;
    while (1)
    {
      outlined consume of ColumnType(v4, a2);
      outlined consume of ColumnType(result, a2);
LABEL_75:
      ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
LABEL_76:
      outlined copy of ColumnType(result, a2);
      outlined copy of ColumnType(result, a2);
      v4 = result;
    }
  }

  *(v21 + 16) = v25;
}