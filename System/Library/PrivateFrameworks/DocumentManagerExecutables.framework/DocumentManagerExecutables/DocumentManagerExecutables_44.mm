id specialized DOCUSBFormatting.createSecondAlert(displayName:dismissHandler:confirmationHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  v55._object = 0x8000000249BE87A0;
  v12._object = 0x8000000249BE8770;
  v55._countAndFlagsBits = 0xD00000000000003FLL;
  v12._countAndFlagsBits = 0x1000000000000028;
  v13.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v13.value._object = 0xEB00000000656C62;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, v13, v11, v14, v55);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249B9A480;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = a1;
  *(v15 + 40) = a2;

  v16 = static String.localizedStringWithFormat(_:_:)();
  v18 = v17;

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v19 = result;
  v56._object = 0x8000000249BE8820;
  v20._countAndFlagsBits = 0xD000000000000035;
  v20._object = 0x8000000249BE87E0;
  v56._countAndFlagsBits = 0xD000000000000064;
  v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v21.value._object = 0xEB00000000656C62;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  v23 = NSLocalizedString(_:tableName:bundle:value:comment:)(v20, v21, v19, v22, v56);

  v24 = MEMORY[0x24C1FAD20](v16, v18);

  v25 = MEMORY[0x24C1FAD20](v23._countAndFlagsBits, v23._object);

  v26 = [objc_opt_self() alertControllerWithTitle:v24 message:v25 preferredStyle:1];

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v27 = result;
  v57._object = 0x8000000249BD2AF0;
  v28._countAndFlagsBits = 0x6C65636E6143;
  v28._object = 0xE600000000000000;
  v29.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v29.value._object = 0xEB00000000656C62;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0xD00000000000001BLL;
  v31 = NSLocalizedString(_:tableName:bundle:value:comment:)(v28, v29, v27, v30, v57);

  result = _DocumentManagerBundle();
  if (result)
  {
    v32 = result;
    v58._object = 0x8000000249BE8740;
    v33._countAndFlagsBits = 0x6573617245;
    v58._countAndFlagsBits = 0xD00000000000002DLL;
    v33._object = 0xE500000000000000;
    v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v34.value._object = 0xEB00000000656C62;
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    v36 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v32, v35, v58);

    v37 = swift_allocObject();
    *(v37 + 16) = a3;
    *(v37 + 24) = a4;

    v38 = MEMORY[0x24C1FAD20](v31._countAndFlagsBits, v31._object);

    v53 = thunk for @callee_guaranteed () -> ()partial apply;
    v54 = v37;
    aBlock = MEMORY[0x277D85DD0];
    v50 = 1107296256;
    v51 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v52 = &block_descriptor_76_1;
    v39 = _Block_copy(&aBlock);

    v40 = objc_opt_self();
    v41 = [v40 actionWithTitle:v38 style:0 handler:v39];
    _Block_release(v39);

    v42 = swift_allocObject();
    *(v42 + 16) = a5;
    *(v42 + 24) = a6;

    v43 = MEMORY[0x24C1FAD20](v36._countAndFlagsBits, v36._object);

    v53 = thunk for @callee_guaranteed () -> ()partial apply;
    v54 = v42;
    aBlock = MEMORY[0x277D85DD0];
    v50 = 1107296256;
    v51 = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    v52 = &block_descriptor_82_0;
    v44 = _Block_copy(&aBlock);

    v45 = [v40 actionWithTitle:v43 style:2 handler:v44];
    _Block_release(v44);

    v46 = v26;
    [v46 addAction_];
    [v46 addAction_];
    [v46 setPreferredAction_];

    return v46;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type DOCUSBFormattingErrorCode and conformance DOCUSBFormattingErrorCode()
{
  result = lazy protocol witness table cache variable for type DOCUSBFormattingErrorCode and conformance DOCUSBFormattingErrorCode;
  if (!lazy protocol witness table cache variable for type DOCUSBFormattingErrorCode and conformance DOCUSBFormattingErrorCode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCUSBFormattingErrorCode and conformance DOCUSBFormattingErrorCode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DOCUSBEraseOperation.State and conformance DOCUSBEraseOperation.State()
{
  result = lazy protocol witness table cache variable for type DOCUSBEraseOperation.State and conformance DOCUSBEraseOperation.State;
  if (!lazy protocol witness table cache variable for type DOCUSBEraseOperation.State and conformance DOCUSBEraseOperation.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCUSBEraseOperation.State and conformance DOCUSBEraseOperation.State);
  }

  return result;
}

uint64_t objectdestroy_84Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void FPItemManager.scheduleOperation(_:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();

  specialized FPItemManager.scheduleOperation(_:)(a1, ObjectType, a2);
}

void specialized FPItemManager.scheduleOperation(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([objc_opt_self() useFIOperations])
  {
    v10 = a1;
    v11 = a3;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables13SomeOperation_pMd, &_s26DocumentManagerExecutables13SomeOperation_pMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables11Schedulable_pMd, &_s26DocumentManagerExecutables11Schedulable_pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of DOCGoToFolderCandidate(v8, v12);
      v5 = v13;
      v6 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      (*(v6 + 8))(v5, v6);
      __swift_destroy_boxed_opaque_existential_0(v12);
      return;
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    outlined destroy of Schedulable?(v8);
  }

  v7 = [objc_opt_self() defaultManager];
  objc_opt_self();
  [v7 scheduleAction_];
}

uint64_t outlined destroy of Schedulable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables11Schedulable_pSgMd, &_s26DocumentManagerExecutables11Schedulable_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void DOCHostedCreateDocumentOptions.createDocumentHandler.setter(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_createDocumentHandler;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*DOCHostedCreateDocumentOptions.createDocumentHandler.modify(uint64_t *a1))(id **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_createDocumentHandler;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCHostedCreateDocumentOptions.createDocumentHandler.modify;
}

void DOCHostedCreateDocumentOptions.createDocumentHandler.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[6] + (*a1)[5] + 8) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

id DOCHostedCreateDocumentOptions.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_createDocumentHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_hostProvidedMenu] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_documentCreationItems] = MEMORY[0x277D84F90];
  v4 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_serviceBrowserSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_docLandingMode] = -1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_configuration] = a1;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

id DOCHostedCreateDocumentOptions.init(configuration:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_createDocumentHandler + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_hostProvidedMenu] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_documentCreationItems] = MEMORY[0x277D84F90];
  v4 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_serviceBrowserSize];
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_docLandingMode] = -1;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_configuration] = a1;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

void *DOCHostedCreateDocumentOptions.hostProvidedMenu.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_hostProvidedMenu;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void key path setter for DOCHostedCreateDocumentOptions.hostProvidedMenu : DOCHostedCreateDocumentOptions(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_hostProvidedMenu;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  DOCHostedCreateDocumentOptions.loadBarButtonItemRepresentations()();
}

void DOCHostedCreateDocumentOptions.hostProvidedMenu.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_hostProvidedMenu;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  DOCHostedCreateDocumentOptions.loadBarButtonItemRepresentations()();
}

void DOCHostedCreateDocumentOptions.loadBarButtonItemRepresentations()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_hostProvidedMenu;
  swift_beginAccess();
  v3 = *&v1[v2];
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = [v3 children];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
    v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v50 = v4;
  if (v6 >> 62)
  {
LABEL_28:
    v46 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = __CocoaSet.count.getter();
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_29:
    v9 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v46 = v6 & 0xFFFFFFFFFFFFFF8;
  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_29;
  }

LABEL_6:
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  do
  {
    v44 = v9;
    v10 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x24C1FC540](v10, v6);
      }

      else
      {
        if (v10 >= *(v46 + 16))
        {
          goto LABEL_27;
        }

        v15 = *(v6 + 8 * v10 + 32);
      }

      v16 = v15;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      objc_opt_self();
      v17 = swift_dynamicCastObjCClass();
      if (v17)
      {
        break;
      }

      objc_opt_self();
      v18 = swift_dynamicCastObjCClass();
      if (v18)
      {
        v19 = DOCHostedCreateDocumentOptions._serviceCreateDocumentAction(forHostAction:actionUsage:)(v18, 0);
        if (v19)
        {
          v33 = v19;
          DocumentBarButtonItem = type metadata accessor for DOCHostedCreateDocumentBarButtonItem();
          v49.receiver = objc_allocWithZone(DocumentBarButtonItem);
          v49.super_class = DocumentBarButtonItem;
          v35 = objc_msgSendSuper2(&v49, sel_init);
          v36 = v33;
          [v35 setPrimaryAction_];
          rawValue = v35;
          goto LABEL_21;
        }
      }

LABEL_10:

      ++v10;
      if (v8 == v7)
      {
        v9 = v44;
        goto LABEL_30;
      }
    }

    v11 = v17;
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v1;
    v13 = v1;
    v14 = v16;
    if (!closure #1 in DOCHostedCreateDocumentOptions._serviceCreateDocumentsMenuBarButtonItem(forHostMenu:)(v11, v13))
    {

      goto LABEL_10;
    }

    children = [v11 image];
    v20 = [v11 title];
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v21;

    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenu, 0x277D75710);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    preferredElementSize = swift_allocObject();
    *(preferredElementSize + 16) = xmmword_249BA0290;
    v23 = objc_opt_self();
    v24 = swift_allocObject();
    *(v24 + 16) = partial apply for closure #1 in DOCHostedCreateDocumentOptions._serviceCreateDocumentsMenuBarButtonItem(forHostMenu:);
    *(v24 + 24) = v12;
    aBlock[4] = partial apply for closure #2 in DOCHostedCreateDocumentOptions._serviceCreateDocumentsMenuBarButtonItem(forHostMenu:);
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed @escaping @callee_guaranteed (@guaranteed [UIMenuElement]) -> ()) -> ();
    aBlock[3] = &block_descriptor_94;
    v25 = _Block_copy(aBlock);

    v26 = [v23 elementWithUncachedProvider_];
    _Block_release(v25);
    *(preferredElementSize + 32) = v26;
    v27._countAndFlagsBits = 0;
    v27._object = 0xE000000000000000;
    v51.value.super.isa = 0;
    v51.is_nil = 0;
    UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v28, v27, 0, v51, 0, 0xFFFFFFFFFFFFFFFFLL, preferredElementSize, children);
    v30 = v29;
    v31 = type metadata accessor for DOCHostedCreateDocumentBarButtonItem();
    v47.receiver = objc_allocWithZone(v31);
    v47.super_class = v31;
    v16 = objc_msgSendSuper2(&v47, sel_init);
    v32 = MEMORY[0x24C1FAD20](v45, v43);

    [v16 setTitle_];

    rawValue = childrena._rawValue;
    [v16 setImage_];

    v36 = v30;
    [v16 setMenu_];

LABEL_21:
    MEMORY[0x24C1FB090]();
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v9 = v50;
  }

  while (v8 != v7);
LABEL_30:

  v38 = specialized _copyCollectionToContiguousArray<A>(_:)(v9);

  if (v38 < 0 || (v38 & 0x4000000000000000) != 0)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);

    v39 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);
    v39 = v38;
  }

  v40 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_documentCreationItems;
  swift_beginAccess();
  *&v1[v40] = v39;

  DOCHostedCreateDocumentOptions.updateBarButtonItemRepresentations()();
}

void (*DOCHostedCreateDocumentOptions.hostProvidedMenu.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCHostedCreateDocumentOptions.hostProvidedMenu.modify;
}

void DOCHostedCreateDocumentOptions.hostProvidedMenu.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCHostedCreateDocumentOptions.loadBarButtonItemRepresentations()();
  }
}

void DOCHostedCreateDocumentOptions.updateContent(serviceBrowserSize:docLandingMode:)(uint64_t a1, __n128 a2, double a3)
{
  *(v3 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_docLandingMode) = a1;
  v4 = v3 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_serviceBrowserSize;
  *v4 = a2.n128_u64[0];
  *(v4 + 8) = a3;
  *(v4 + 16) = 0;
  DOCHostedCreateDocumentOptions.updateBarButtonItemRepresentations()();
}

void DOCHostedCreateDocumentOptions.updateBarButtonItemRepresentations()()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_docLandingMode);
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_documentCreationItems;
  swift_beginAccess();
  v15 = v0;
  v3 = *(v0 + v2);
  if (v3 >> 62)
  {
LABEL_15:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x24C1FC540](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    ++v5;
    [v6 setHidden_];
    _StringGuts.grow(_:)(18);

    v8 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x24C1FAEA0](v8);

    v9 = MEMORY[0x24C1FAD20](0xD000000000000010, 0x8000000249BE8BD0);

    [v7 setIdentifier_];

    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }
  }

  v10 = v0 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_createDocumentHandler;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(v13 + 8))(v15, ObjectType, v13);
  }
}

uint64_t DOCHostedCreateDocumentOptions._serviceCreateDocumentAction(forHostAction:actionUsage:)(void *a1, char a2)
{
  v4 = UIAction.documentCreationIntent.getter();
  if (!v4)
  {
    if (one-time initialization token for documentCreation != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.documentCreation);
    v21 = a1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138412290;
      *(v24 + 4) = v21;
      *v25 = v21;
      v26 = v21;
      _os_log_impl(&dword_2493AC000, v22, v23, "hosted createDocument action did not have a documentCreationIntent, ignoring: %@", v24, 0xCu);
      outlined destroy of NSObject?(v25);
      MEMORY[0x24C1FE850](v25, -1, -1);
      MEMORY[0x24C1FE850](v24, -1, -1);
    }

    return 0;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
  {

    goto LABEL_16;
  }

  v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v11)
  {
LABEL_16:
    v19 = specialized DOCHostedCreateDocumentOptions._serviceCreateDocumentPasteboardAction(forHostAction:actionUsage:)(a2 & 1);
    goto LABEL_17;
  }

  v12 = UIAction.documentCreationIntent.getter();
  if (!v12)
  {
    if (one-time initialization token for documentCreation != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    __swift_project_value_buffer(v29, static Logger.documentCreation);
    v30 = a1;
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v30;
      *v34 = v30;
      v35 = v30;
      _os_log_impl(&dword_2493AC000, v31, v32, "hosted createDocument action with no creationIntent, ignoring: %@", v33, 0xCu);
      outlined destroy of NSObject?(v34);
      MEMORY[0x24C1FE850](v34, -1, -1);
      MEMORY[0x24C1FE850](v33, -1, -1);
    }

    return 0;
  }

  v13 = v12;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  v14 = [a1 title];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v15 = [a1 image];
  v16 = [a1 identifier];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v13;
  v19 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
LABEL_17:
  v28 = v19;

  return v28;
}

unint64_t closure #1 in DOCHostedCreateDocumentOptions._serviceCreateDocumentsMenuBarButtonItem(forHostMenu:)(void *a1, uint64_t a2)
{
  v2 = [a1 children];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v21 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x24C1FC540](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v20 = v7;
      closure #1 in closure #1 in DOCHostedCreateDocumentOptions._serviceCreateDocumentsMenuBarButtonItem(forHostMenu:)(&v20, &v19);

      if (v19)
      {
        MEMORY[0x24C1FB090]();
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v6 = v21;
      }

      ++v5;
      if (v9 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_18:

  if (v6 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
      return v6;
    }
  }

  else if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v6;
  }

  if (one-time initialization token for documentCreation != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.documentCreation);
  v11 = a1;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v11;
    v16 = v11;
    _os_log_impl(&dword_2493AC000, v12, v13, "hosted createDocuments menu had no valid children, ignoring: %@", v14, 0xCu);
    outlined destroy of NSObject?(v15);
    MEMORY[0x24C1FE850](v15, -1, -1);
    MEMORY[0x24C1FE850](v14, -1, -1);
  }

  return 0;
}

void closure #1 in closure #1 in DOCHostedCreateDocumentOptions._serviceCreateDocumentsMenuBarButtonItem(forHostMenu:)(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
    if (one-time initialization token for documentCreation != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.documentCreation);
    v10 = v3;
    v6 = Logger.logObject.getter();
    v11 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v6, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v10;
      *v13 = v10;
      v14 = v10;
      _os_log_impl(&dword_2493AC000, v6, v11, "hosted createDocuments menu does not support nesting, ignoring: %@", v12, 0xCu);
      outlined destroy of NSObject?(v13);
      MEMORY[0x24C1FE850](v13, -1, -1);
      MEMORY[0x24C1FE850](v12, -1, -1);
    }

    goto LABEL_13;
  }

  v5 = v4;
  v6 = v3;
  v7 = DOCHostedCreateDocumentOptions._serviceCreateDocumentAction(forHostAction:actionUsage:)(v5, 1);
  if (!v7)
  {
    if (one-time initialization token for documentCreation != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.documentCreation);
    v6 = v6;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v6;
      *v19 = v6;
      v20 = v6;
      _os_log_impl(&dword_2493AC000, v16, v17, "hosted createDocuments menu child was not valid, ignoring: %@", v18, 0xCu);
      outlined destroy of NSObject?(v19);
      MEMORY[0x24C1FE850](v19, -1, -1);
      MEMORY[0x24C1FE850](v18, -1, -1);
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  v8 = v7;
LABEL_14:

  *a2 = v8;
}

double closure #2 in DOCHostedCreateDocumentOptions._serviceCreateDocumentsMenuBarButtonItem(forHostMenu:)(void (*a1)(uint64_t), uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

  if (v5 >> 62)
  {
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);

    v6 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIMenuElement, 0x277D75720);
    v6 = v5;
  }

  a1(v6);

  return result;
}

id UIAction.documentCreationIntent.getter()
{
  v1 = [v0 identifier];
  v2 = MEMORY[0x24C1FAD20](0xD000000000000022, 0x8000000249BE8BF0);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (v3 == v6 && v5 == v8)
  {

    goto LABEL_8;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
LABEL_8:
    v11 = *MEMORY[0x277D77398];
    goto LABEL_9;
  }

  v11 = _UIDocumentCreationIntentForActionIdentifier();
LABEL_9:
  v12 = v11;

  return v12;
}

void closure #1 in DOCHostedCreateDocumentOptions._serviceCreateDocumentDefaultAction(forHostAction:actionUsage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_createDocumentHandler;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = *(v6 + 8);
      v9 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 16))(v5, a3, ObjectType, v8);

      v5 = v9;
    }
  }
}

void closure #1 in DOCHostedCreateDocumentOptions._serviceCreateDocumentPasteboardAction(forHostAction:actionUsage:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_createDocumentHandler;
    swift_beginAccess();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (v7)
    {
      v8 = *(v6 + 8);
      v9 = v7;
      ObjectType = swift_getObjectType();
      (*(v8 + 24))(v5, a3, ObjectType, v8);

      v5 = v9;
    }
  }
}

id DOCHostedCreateDocumentOptions.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCHostedCreateDocumentBarButtonItem.init(title:image:menu:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v14.receiver = v5;
  v14.super_class = swift_getObjectType();
  v10 = objc_msgSendSuper2(&v14, sel_init);
  v11 = v10;
  if (a2)
  {
    v12 = MEMORY[0x24C1FAD20](a1, a2);
  }

  else
  {
    v12 = 0;
  }

  [v10 setTitle_];

  [v10 setImage_];
  [v10 setMenu_];

  return v10;
}

void DOCHostedCreateDocumentBarButtonItem.copy(with:)(void *a1@<X8>)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = [v1 title];
  if (v5)
  {
    v6 = v5;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [v2 image];
  v11 = [v2 menu];
  v12 = objc_allocWithZone(ObjectType);
  v13 = DOCHostedCreateDocumentBarButtonItem.init(title:image:menu:)(v7, v9, v10, v11);
  v14 = [v2 primaryAction];
  [v13 setPrimaryAction_];

  v15 = [v2 identifier];
  [v13 setIdentifier_];

  [v13 setHidden_];
  a1[3] = ObjectType;
  *a1 = v13;
}

id specialized DOCHostedCreateDocumentOptions._serviceCreateDocumentPasteboardAction(forHostAction:actionUsage:)(char a1)
{
  v54 = type metadata accessor for UTType();
  v3 = *(v54 - 8);
  v5 = MEMORY[0x28223BE20](v54, v4);
  v53 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_configuration;
  v8 = [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCHostedCreateDocumentOptions_configuration) isInUIPDocumentLanding];
  v9 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  if (v8)
  {
    v11 = [*(v1 + v7) documentContentTypes];
    v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
  MEMORY[0x24C1FAD20](0xD000000000000022, 0x8000000249BE8BF0);
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v10;

  v14 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  if ((a1 & 1) == 0)
  {
    if (one-time initialization token for documentCreation != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.documentCreation);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2493AC000, v16, v17, "  WARNING: 'new from clipboard' only supports Secure Paste if presented as a menu item.\n  Contact DocumentManager team if you need to present 'new from clipboard' as a button.", v18, 2u);
      MEMORY[0x24C1FE850](v18, -1, -1);
    }

    result = _DocumentManagerBundle();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v20 = result;
    v56._object = 0x8000000249BE8C40;
    v21.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v21.value._object = 0xEB00000000656C62;
    v22._countAndFlagsBits = 0xD000000000000012;
    v22._object = 0x8000000249BE8C20;
    v56._countAndFlagsBits = 0xD000000000000021;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v24 = NSLocalizedString(_:tableName:bundle:value:comment:)(v22, v21, v20, v23, v56);

    v25 = MEMORY[0x24C1FAD20](v24._countAndFlagsBits, v24._object);

    [v14 setTitle_];

    v26 = objc_opt_self();
    v27 = MEMORY[0x24C1FAD20](0xD000000000000010, 0x8000000249BE8C70);
    v28 = [v26 __systemImageNamedSwift_];

    [v14 setImage_];
  }

  v29 = [objc_opt_self() generalPasteboard];
  isa = [v29 pasteboardTypes];

  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v50 = v14;
  v31 = *(v10 + 16);
  if (v31)
  {
    v49[0] = isa;
    v55 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
    v32 = v55;
    v34 = *(v3 + 16);
    v33 = v3 + 16;
    v35 = *(v33 + 64);
    v49[1] = v10;
    v36 = v10 + ((v35 + 32) & ~v35);
    v51 = *(v33 + 56);
    v52 = v34;
    v37 = (v33 - 8);
    do
    {
      v38 = v53;
      v39 = v54;
      v52(v53, v36, v54);
      v40 = UTType.identifier.getter();
      v42 = v41;
      (*v37)(v38, v39);
      v55 = v32;
      v44 = *(v32 + 16);
      v43 = *(v32 + 24);
      if (v44 >= v43 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v43 > 1), v44 + 1, 1);
        v32 = v55;
      }

      *(v32 + 16) = v44 + 1;
      v45 = v32 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v42;
      v36 += v51;
      --v31;
    }

    while (v31);

    isa = v49[0];
  }

  else
  {
  }

  v46 = Array._bridgeToObjectiveC()().super.isa;

  v47 = _UIOneOfTypesConformsToAcceptableTypes();

  v48 = v50;
  [v50 setAttributes_];
  return v48;
}

id FilenameTextField.init(frame:)(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_862056B4A354BCBBEF20EF95BA98F05417FilenameTextField_prefersInitiallySelectedText] = 1;
  v4[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_862056B4A354BCBBEF20EF95BA98F05417FilenameTextField_hasEverBeenFirstResponder] = 0;
  v15.receiver = v4;
  v15.super_class = type metadata accessor for FilenameTextField();
  v9 = objc_msgSendSuper2(&v15, sel_initWithFrame_, a1, a2, a3, a4);
  v10 = objc_opt_self();
  v11 = *MEMORY[0x277D76918];
  v12 = v9;
  v13 = [v10 preferredFontForTextStyle_];
  [v12 setFont_];

  [v12 setAdjustsFontForContentSizeCategory_];
  FilenameTextField.updateTextFieldBackground()();
  [v12 setWritingToolsBehavior_];

  return v12;
}

void FilenameTextField.updateTextFieldBackground()()
{
  if (_UISolariumEnabled())
  {
    v10 = 0;
  }

  else
  {
    v1 = DOCFrameworkBundle();
    v2 = [v0 traitCollection];
    v3 = MEMORY[0x24C1FAD20](0xD00000000000001ELL, 0x8000000249BE9030);
    v10 = [objc_opt_self() colorNamed:v3 inBundle:v1 compatibleWithTraitCollection:v2];
  }

  if ([v0 isEnabled])
  {
    v4 = [objc_opt_self() labelColor];
    [v0 setTextColor_];

    [v0 setBackgroundColor_];
  }

  else
  {
    v5 = _UISolariumEnabled();
    v6 = objc_opt_self();
    v7 = &selRef_labelColor;
    if (!v5)
    {
      v7 = &selRef_secondaryLabelColor;
    }

    v8 = [v6 *v7];
    [v0 setTextColor_];

    if (v10)
    {
      v9 = [v10 colorWithAlphaComponent_];
    }

    else
    {
      v9 = 0;
    }

    [v0 setBackgroundColor_];
  }
}

id FilenameTextField.becomeFirstResponder()()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for FilenameTextField();
  v21.receiver = v0;
  v21.super_class = v11;
  result = objc_msgSendSuper2(&v21, sel_becomeFirstResponder);
  if (result)
  {
    if (v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_862056B4A354BCBBEF20EF95BA98F05417FilenameTextField_hasEverBeenFirstResponder])
    {
      v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_862056B4A354BCBBEF20EF95BA98F05417FilenameTextField_hasEverBeenFirstResponder] = 1;
    }

    else
    {
      v13 = v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_862056B4A354BCBBEF20EF95BA98F05417FilenameTextField_prefersInitiallySelectedText];
      v0[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_862056B4A354BCBBEF20EF95BA98F05417FilenameTextField_hasEverBeenFirstResponder] = 1;
      if (v13 == 1)
      {
        v19 = result;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
        v14 = static OS_dispatch_queue.main.getter();
        v15 = swift_allocObject();
        *(v15 + 16) = v0;
        aBlock[4] = partial apply for closure #1 in FilenameTextField.becomeFirstResponder();
        aBlock[5] = v15;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        aBlock[3] = &block_descriptor_95;
        v16 = _Block_copy(aBlock);
        v17 = v0;

        static DispatchQoS.unspecified.getter();
        aBlock[0] = MEMORY[0x277D84F90];
        lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
        dispatch thunk of SetAlgebra.init<A>(_:)();
        MEMORY[0x24C1FB9A0](0, v10, v5, v16);
        _Block_release(v16);

        (*(v2 + 8))(v5, v1);
        (*(v7 + 8))(v10, v6);
        return v19;
      }
    }
  }

  return result;
}

void @objc FilenameTextField.textRect(forBounds:)(void *a1, double a2, double a3, double a4, double a5, uint64_t a6, const char **a7)
{
  v26.receiver = a1;
  v26.super_class = type metadata accessor for FilenameTextField();
  v12 = *a7;
  v13 = v26.receiver;
  objc_msgSendSuper2(&v26, v12, a2, a3, a4, a5);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  if (_UISolariumEnabled())
  {
    v22 = 0.0;
  }

  else
  {
    v22 = 10.0;
  }

  v23 = [v13 leftView];
  v24 = v22;
  if (v23)
  {

    v24 = 0.0;
  }

  v25 = [v13 rightView];
  if (v25)
  {
  }

  UIEdgeInsetsInsetRect(v15, v17, v19, v21, v22, v24);
}

uint64_t DOCPickerFilenameView.delegate.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_delegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCPickerFilenameView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCSidebarItemCell.delegate.modify;
}

id DOCPickerFilenameView.pickerContext.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_pickerContext;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void DOCPickerFilenameView.pickerContext.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_pickerContext;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  DOCPickerFilenameView.updateStackView()();
}

void (*DOCPickerFilenameView.pickerContext.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCPickerFilenameView.pickerContext.modify;
}

void DOCPickerFilenameView.pickerContext.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    DOCPickerFilenameView.updateStackView()();
  }
}

uint64_t DOCPickerFilenameView.renamableFilename.getter()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
  v2 = [v1 canRename];

  if (!v2)
  {
    return 0;
  }

  v3 = DOCPickerFilenameView.filenameTextField.getter();
  v4 = [v3 text];

  if (!v4)
  {
    return 0;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v5;
}

void DOCPickerFilenameView.renamableFilename.setter(uint64_t a1, uint64_t a2)
{
  v5 = (*((*MEMORY[0x277D85000] & *v2) + 0xF0))();
  v6 = [v5 canRename];

  if (v6)
  {
    v7 = DOCPickerFilenameView.filenameTextField.getter();
    if (a2)
    {
      v8 = MEMORY[0x24C1FAD20](a1, a2);
    }

    else
    {
      v8 = 0;
    }

    [v7 setText_];
  }

  else
  {
  }
}

void (*DOCPickerFilenameView.renamableFilename.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = (*((*MEMORY[0x277D85000] & *v1) + 0xF0))();
  v4 = [v3 canRename];

  if (v4 && (v5 = DOCPickerFilenameView.filenameTextField.getter(), v6 = [v5 text], v5, v6))
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  *a1 = v7;
  a1[1] = v9;
  return DOCPickerFilenameView.renamableFilename.modify;
}

void DOCPickerFilenameView.renamableFilename.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    DOCPickerFilenameView.renamableFilename.setter(v3, v2);
  }

  else
  {
    DOCPickerFilenameView.renamableFilename.setter(*a1, v2);
  }
}

uint64_t DOCPickerFilenameView.moveTitle.getter()
{
  v0 = DOCPickerFilenameView.moveTypeLabel.getter();
  v1 = [v0 text];

  if (!v1)
  {
    return 0;
  }

  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void DOCPickerFilenameView.moveTitle.setter(uint64_t a1, uint64_t a2)
{
  v4 = DOCPickerFilenameView.moveTypeLabel.getter();
  v5 = MEMORY[0x24C1FAD20](a1, a2);

  [v4 setText_];
}

void (*DOCPickerFilenameView.moveTitle.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = DOCPickerFilenameView.moveTypeLabel.getter();
  v4 = [v3 text];

  if (v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  *a1 = v5;
  a1[1] = v7;
  return DOCPickerFilenameView.moveTitle.modify;
}

void DOCPickerFilenameView.moveTitle.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (a2)
  {

    v5 = DOCPickerFilenameView.moveTypeLabel.getter();
    v4 = MEMORY[0x24C1FAD20](v3, v2);

    [v5 setText_];
  }

  else
  {
    v5 = DOCPickerFilenameView.moveTypeLabel.getter();
    v4 = MEMORY[0x24C1FAD20](v3, v2);

    [v5 setText_];
  }
}

void key path setter for DOCPickerFilenameView.tags : DOCPickerFilenameView(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_tags;
  swift_beginAccess();
  *(v3 + v4) = v2;

  v5 = DOCPickerFilenameView.tagButton.getter();
  [v5 setNeedsUpdateConfiguration];
}

uint64_t DOCPickerFilenameView.Metrics.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0x4028000000000000;
  v2 = _UISolariumEnabled();
  v3 = 12.0;
  v4 = 0.0;
  if (v2)
  {
    IsPad = DOCDeviceIsPad();
    v4 = 28.0;
    if (IsPad)
    {
      v4 = 16.0;
    }

    v3 = 0.0;
  }

  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v4;
  *(a1 + 32) = v4;
  v6 = _UISolariumEnabled();
  if (v6)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = 12.0;
  }

  v8 = 16.0;
  if (!v6)
  {
    v8 = 0.0;
  }

  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  *(a1 + 56) = v8;
  *(a1 + 64) = v8;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = vdupq_n_s64(0x4049000000000000uLL);
  *(a1 + 104) = 0;
  v9 = type metadata accessor for DOCPickerFilenameView.Metrics(0);
  if (_UISolariumEnabled())
  {
    static UIButton.Configuration.gray()();
  }

  else
  {
    v10 = objc_opt_self();

    static UIButton.Configuration.borderless()();
  }

  v11 = v9[12];
  if (_UISolariumEnabled())
  {
    v12 = *MEMORY[0x277D75030];
    v13 = type metadata accessor for UIButton.Configuration.Size();
    v14 = *(v13 - 8);
    (*(v14 + 104))(a1 + v11, v12, v13);
    (*(v14 + 56))(a1 + v11, 0, 1, v13);
  }

  else
  {
    v15 = type metadata accessor for UIButton.Configuration.Size();
    (*(*(v15 - 8) + 56))(a1 + v11, 1, 1, v15);
  }

  v16 = v9[13];
  if (_UISolariumEnabled())
  {
    v17 = *MEMORY[0x277D74FD8];
    v18 = type metadata accessor for UIButton.Configuration.CornerStyle();
    v19 = *(v18 - 8);
    (*(v19 + 104))(a1 + v16, v17, v18);
    (*(v19 + 56))(a1 + v16, 0, 1, v18);
  }

  else
  {
    v20 = type metadata accessor for UIButton.Configuration.CornerStyle();
    (*(*(v20 - 8) + 56))(a1 + v16, 1, 1, v20);
  }

  result = _UISolariumEnabled();
  v22 = 0x4020000000000000;
  if (result)
  {
    v22 = 0;
  }

  v23 = a1 + v9[14];
  *v23 = v22;
  *(v23 + 8) = v22;
  *(v23 + 16) = v22;
  *(v23 + 24) = v22;
  *(v23 + 32) = result;
  *(a1 + v9[15]) = 0x4028000000000000;
  return result;
}

uint64_t DOCPickerFilenameView.Metrics.tagButtonBaseConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DOCPickerFilenameView.Metrics(0) + 44);
  v4 = type metadata accessor for UIButton.Configuration();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 DOCPickerFilenameView.Metrics.tagButtonInsets.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DOCPickerFilenameView.Metrics(0) + 56);
  v4 = *(v3 + 32);
  result = *v3;
  v6 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

void __swiftcall DOCPickerFilenameView.Metrics.newBackgroundBlurView()(UIView *__return_ptr retstr)
{
  v1 = [objc_opt_self() effectWithStyle_];
  [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];
}

id DOCPickerFilenameView.stackView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setAxis_];
    [v4 setSpacing_];
    [v4 setAlignment_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id DOCPickerFilenameView.stackedThumbnailView.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___stackedThumbnailView;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___stackedThumbnailView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___stackedThumbnailView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_metrics + 88);
    v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_metrics + 96);
    v6 = type metadata accessor for DOCStackedThumbnailView();
    v7 = objc_allocWithZone(v6);
    v8 = OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_imageCache;
    type metadata accessor for ImageCache();
    swift_allocObject();
    v9 = v0;
    *&v7[v8] = ImageCache.init()();
    *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_nodes] = 0;
    *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_urls] = 0;
    *&v7[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_thumbnailImageViews] = MEMORY[0x277D84F90];
    v10 = &v7[OBJC_IVAR____TtC26DocumentManagerExecutables23DOCStackedThumbnailView_topThumbnailSize];
    *v10 = v4;
    *(v10 + 1) = v5;
    v18.receiver = v7;
    v18.super_class = v6;
    v11 = objc_msgSendSuper2(&v18, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    [v11 setClipsToBounds_];
    LODWORD(v12) = 1148846080;
    [v11 setContentCompressionResistancePriority:0 forAxis:v12];
    LODWORD(v13) = 1148846080;
    [v11 setContentCompressionResistancePriority:1 forAxis:v13];
    LODWORD(v14) = 1148846080;
    [v11 setContentHuggingPriority:0 forAxis:v14];
    v15 = *(v0 + v1);
    *(v9 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v16 = v2;
  return v3;
}

void *DOCPickerFilenameView.filenameButton.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameButton;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameButton);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameButton);
  }

  else
  {
    v4 = *MEMORY[0x277D76918];
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v6 = objc_allocWithZone(type metadata accessor for DOCRenameButton());
    v7 = v4;
    v8 = v5;
    v9 = v0;
    v10 = DOCRenameButton.init(textStyle:primaryAction:)(v7, partial apply for closure #1 in closure #1 in DOCPickerFilenameView.filenameButton.getter, v8);
    [v10 setContentHorizontalAlignment_];
    v11 = *((*MEMORY[0x277D85000] & *v10) + 0xA0);
    v12 = swift_unknownObjectRetain();
    v11(v12, &protocol witness table for DOCPickerFilenameView);
    v13 = *(v9 + v1);
    *(v9 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v14 = v2;
  return v3;
}

void closure #1 in closure #1 in DOCPickerFilenameView.filenameButton.getter(uint64_t a1)
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v42 - v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v42 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v16 = swift_unknownObjectWeakLoadStrong();
  if (!v16)
  {

    return;
  }

  v17 = v16;
  v18 = MEMORY[0x277D85000];
  v19 = (*((*MEMORY[0x277D85000] & *v15) + 0xF0))();
  v20 = [v19 urlsToSave];

  if (v20)
  {
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v21 + 16))
    {
      v42 = v17;
      v22 = v18;
      v23 = *(v2 + 16);
      v23(v9, v21 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v1);

      v24 = (*(v2 + 32))(v13, v9, v1);
      v25 = (*((*v22 & *v15) + 0x108))(v24);
      if (v26)
      {
        v27 = v25;
        v28 = v26;
        v23(v5, v13, v1);
        v29 = objc_allocWithZone(type metadata accessor for DOCRenameViewController());
        v30 = DOCRenameViewController.init(renamingURL:name:transitionProxy:)(v5, v27, v28, 0);
        v31 = MEMORY[0x277D85000];
        v32 = *((*MEMORY[0x277D85000] & *v30) + 0x138);
        v33 = v15;
        v32(v15, &protocol witness table for DOCPickerFilenameView);
        v34 = *((*v31 & *v30) + 0xE0);
        v35 = v42;
        v34(v42, 1);
      }

      else
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v39 = static DOCLog.UI;
        v40 = static os_log_type_t.error.getter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_249B9A480;
        *(v41 + 56) = MEMORY[0x277D837D0];
        *(v41 + 64) = lazy protocol witness table accessor for type String and conformance String();
        strcpy((v41 + 32), "filenameButton");
        *(v41 + 47) = -18;
        os_log(_:dso:log:type:_:)("%@: Renaming an item when there is no name is not allowed", 57, 2, &dword_2493AC000, v39, v40, v41);
      }

      (*(v2 + 8))(v13, v1);
      return;
    }
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v36 = static DOCLog.UI;
  v37 = static os_log_type_t.error.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_249B9A480;
  *(v38 + 56) = MEMORY[0x277D837D0];
  *(v38 + 64) = lazy protocol witness table accessor for type String and conformance String();
  strcpy((v38 + 32), "filenameButton");
  *(v38 + 47) = -18;
  os_log(_:dso:log:type:_:)("%@: Renaming an item that isn't a URL is not allowed", 52, 2, &dword_2493AC000, v36, v37, v38);
}

id DOCPickerFilenameView.moveTypeLabel.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___moveTypeLabel;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___moveTypeLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___moveTypeLabel);
  }

  else
  {
    v4 = closure #1 in DOCPickerFilenameView.moveTypeLabel.getter();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCPickerFilenameView.moveTypeLabel.getter()
{
  v0 = _UISolariumEnabled();
  v1 = MEMORY[0x277D76968];
  if (!v0)
  {
    v1 = MEMORY[0x277D76920];
  }

  v2 = *v1;
  v3 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v4 = [objc_opt_self() preferredFontForTextStyle_];
  [v3 setFont_];

  [v3 setAdjustsFontForContentSizeCategory_];
  v5 = [objc_opt_self() secondaryLabelColor];
  [v3 setTextColor_];

  return v3;
}

id DOCPickerFilenameView.filenameTextField.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameTextField;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameTextField);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameTextField);
  }

  else
  {
    v4 = closure #1 in DOCPickerFilenameView.filenameTextField.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id closure #1 in DOCPickerFilenameView.filenameTextField.getter(uint64_t a1)
{
  type metadata accessor for FilenameTextField();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v2 setRightViewMode_];
  [v2 addTarget:a1 action:sel_textFieldDidBeginEditing_ forControlEvents:0x10000];
  [v2 addTarget:a1 action:sel_textFieldDidEndEditing_ forControlEvents:0x40000];
  [v2 addTarget:a1 action:sel_textFieldDidEndEditingOnExit_ forControlEvents:0x80000];
  [v2 addTarget:a1 action:sel_textFieldDidChange_ forControlEvents:0x20000];
  [v2 setEnablesReturnKeyAutomatically_];
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 pickerFilenameTextField];
  if (!v5)
  {
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = MEMORY[0x24C1FAD20](v6);
  }

  [v4 setAccessibilityIdentifier_];

  return v4;
}

double DOCPickerFilenameView.textFieldDidEndEditingOnExit(_:)(void *a1)
{
  v3 = [v1 setNeedsUpdateConstraints];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0xD8))(v3))
  {
    v6 = v4;
    v7 = [a1 text];
    if (v7)
    {
      v8 = v7;
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0;
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 16))(v1, v9, v11, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  return result;
}

double DOCPickerFilenameView.textFieldDidChange(_:)(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_tagButtonDisplaysTitle;
  if (*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_tagButtonDisplaysTitle) == 1)
  {
    v4 = DOCPickerFilenameView.filenameTextField.getter();
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;

    v29.origin.x = 0.0;
    v29.origin.y = 0.0;
    v29.size.width = 0.0;
    v29.size.height = 0.0;
    v28.origin.x = v6;
    v28.origin.y = v8;
    v28.size.width = v10;
    v28.size.height = v12;
    if (!CGRectEqualToRect(v28, v29))
    {
      [v1 layoutIfNeeded];
      v13 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameTextField;
      [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameTextField) systemLayoutSizeFittingSize_];
      if (v14 > 0.0)
      {
        v15 = v14;
        [*(v1 + v13) bounds];
        if (v16 <= v15)
        {
          *(v1 + v3) = 0;
          v17 = DOCPickerFilenameView.tagButton.getter();
          [v17 setNeedsUpdateConfiguration];
        }
      }
    }
  }

  if ((*((*MEMORY[0x277D85000] & *v1) + 0xD8))())
  {
    v20 = v18;
    v21 = [a1 text];
    if (v21)
    {
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;
    }

    else
    {
      v23 = 0;
      v25 = 0;
    }

    ObjectType = swift_getObjectType();
    (*(v20 + 8))(v1, v23, v25, ObjectType, v20);
    swift_unknownObjectRelease();
  }

  return result;
}

void DOCPickerFilenameView.collapseTagButtonTitleIfNeeded()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_tagButtonDisplaysTitle;
  if (v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_tagButtonDisplaysTitle] == 1)
  {
    v2 = DOCPickerFilenameView.filenameTextField.getter();
    [v2 bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;

    v18.origin.x = 0.0;
    v18.origin.y = 0.0;
    v18.size.width = 0.0;
    v18.size.height = 0.0;
    v17.origin.x = v4;
    v17.origin.y = v6;
    v17.size.width = v8;
    v17.size.height = v10;
    if (!CGRectEqualToRect(v17, v18))
    {
      [v0 layoutIfNeeded];
      v11 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameTextField;
      [*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameTextField] systemLayoutSizeFittingSize_];
      if (v12 > 0.0)
      {
        v13 = v12;
        [*&v0[v11] bounds];
        if (v14 <= v13)
        {
          v0[v1] = 0;
          v15 = DOCPickerFilenameView.tagButton.getter();
          [v15 setNeedsUpdateConfiguration];
        }
      }
    }
  }
}

id DOCPickerFilenameView.tagButton.getter()
{
  v1 = type metadata accessor for UIButton.Configuration();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v27 - v8;
  v10 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___tagButton;
  v11 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___tagButton];
  if (v11)
  {
    v12 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___tagButton];
  }

  else
  {
    v27[1] = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIButton, 0x277D75220);
    v13 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_metrics];
    v14 = type metadata accessor for DOCPickerFilenameView.Metrics(0);
    v15 = *(v2 + 16);
    v15(v9, &v13[*(v14 + 44)], v1);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v15(v5, v9, v1);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIAction, 0x277D750C8);
    v17 = swift_allocObject();
    *(v17 + 16) = partial apply for closure #1 in closure #1 in DOCPickerFilenameView.tagButton.getter;
    *(v17 + 24) = v16;
    swift_retain_n();
    v18 = v0;
    UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
    v19 = UIButton.init(configuration:primaryAction:)();

    (*(v2 + 8))(v9, v1);

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = partial apply for closure #2 in closure #1 in DOCPickerFilenameView.tagButton.getter;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed UIAlertAction) -> ();
    aBlock[3] = &block_descriptor_66_0;
    v21 = _Block_copy(aBlock);

    [v19 setConfigurationUpdateHandler_];
    _Block_release(v21);
    [v19 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v22) = 1148846080;
    [v19 setContentHuggingPriority:0 forAxis:v22];
    LODWORD(v23) = 1148846080;
    [v19 setContentCompressionResistancePriority:0 forAxis:v23];
    [v18 updateTagButtonAccessibility_];
    v24 = *&v18[v10];
    *&v18[v10] = v19;
    v12 = v19;

    v11 = 0;
  }

  v25 = v11;
  return v12;
}

void closure #1 in closure #1 in DOCPickerFilenameView.tagButton.getter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    DOCPickerFilenameView.displayTagView()();
  }
}

char *closure #2 in closure #1 in DOCPickerFilenameView.tagButton.getter(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationV11CornerStyleOSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationV11CornerStyleOSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v88 = v77 - v5;
  v6 = type metadata accessor for UIButton.Configuration.CornerStyle();
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v87 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v86 = v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationV4SizeOSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationV4SizeOSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v77 - v14;
  v16 = type metadata accessor for UIButton.Configuration.Size();
  v89 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v85 = v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v84 = v77 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = v77 - v28;
  v30 = type metadata accessor for UIButton.Configuration();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v34 = v77 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v36 = result;
  UIButton.configuration.getter();
  if ((*(v31 + 48))(v29, 1, v30) == 1)
  {

    return outlined destroy of CharacterSet?(v29, &_sSo8UIButtonC5UIKitE13ConfigurationVSgMd, _sSo8UIButtonC5UIKitE13ConfigurationVSgMR);
  }

  v80 = v15;
  v78 = v16;
  v81 = a1;
  (*(v31 + 32))(v34, v29, v30);
  v79 = objc_opt_self();
  v37 = [v79 defaultMetrics];
  v38 = &v36[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_metrics];
  v39 = type metadata accessor for DOCPickerFilenameView.Metrics(0);
  v40 = *&v38[*(v39 + 60)];
  v41 = v36;
  v42 = [v41 traitCollection];
  [v37 scaledValueForValue:v42 compatibleWithTraitCollection:v40];
  v44 = v43;

  v82 = v39;
  v83 = v38;
  if (v38[*(v39 + 56) + 32])
  {
    v45 = UIButton.Configuration.contentInsets.getter();
  }

  v46 = *((*MEMORY[0x277D85000] & *v41) + 0x138);
  v47 = v46(v45);
  v48 = v25;
  v49 = v80;
  if (v47 >> 62)
  {
    v77[1] = v47;
    v59 = __CocoaSet.count.getter();

    if (!v59)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v50 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v50)
    {
LABEL_11:
      v54 = [objc_opt_self() configurationWithScale_];
      v60 = MEMORY[0x24C1FAD20](0x6162656C63726963, 0xED0000322E656764);
      v61 = [objc_opt_self() systemImageNamed:v60 withConfiguration:v54];

      UIButton.Configuration.image.setter();
      v62 = [v79 defaultMetrics];
      v63 = [v41 traitCollection];

      [v62 scaledValueForValue:v63 compatibleWithTraitCollection:2.0];
      goto LABEL_12;
    }
  }

  v46(v51);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v53 = [objc_opt_self() requestForChainedTags:isa tagDimension:v44];

  if (!v53)
  {
    goto LABEL_11;
  }

  v54 = v53;
  v55 = [v79 defaultMetrics];
  v56 = [v41 traitCollection];

  [v55 scaledValueForValue:v56 compatibleWithTraitCollection:4.0];
  [v54 setSpacingType_];
  v57 = [objc_opt_self() shared];
  v58 = [v57 renderImageWithRequest_];

  UIButton.Configuration.image.setter();
LABEL_12:
  UIButton.Configuration.imagePadding.setter();

  v64 = v81;
  if (v41[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_tagButtonDisplaysTitle] == 1)
  {
    result = _DocumentManagerBundle();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v65 = result;
    v92._object = 0x8000000249BE90B0;
    v66.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v66.value._object = 0xEB00000000656C62;
    v67._object = 0x8000000249BE9090;
    v92._countAndFlagsBits = 0xD000000000000028;
    v67._countAndFlagsBits = 0xD000000000000011;
    v68._countAndFlagsBits = 1936154964;
    v68._object = 0xE400000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v67, v66, v65, v68, v92);

    UIButton.Configuration.title.setter();
    v64 = v81;
  }

  else
  {
    UIButton.Configuration.title.setter();
  }

  [v41 updateTagButtonAccessibility_];
  UIButton.Configuration.contentInsets.setter();
  outlined init with copy of DOCGridLayout.Spec?(&v83[*(v82 + 48)], v49, &_sSo8UIButtonC5UIKitE13ConfigurationV4SizeOSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationV4SizeOSgMR);
  v69 = v89;
  v70 = v78;
  if ((*(v89 + 48))(v49, 1, v78) == 1)
  {
    outlined destroy of CharacterSet?(v49, &_sSo8UIButtonC5UIKitE13ConfigurationV4SizeOSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationV4SizeOSgMR);
  }

  else
  {
    v71 = v84;
    (*(v69 + 32))(v84, v49, v70);
    (*(v69 + 16))(v85, v71, v70);
    UIButton.Configuration.buttonSize.setter();
    (*(v69 + 8))(v71, v70);
  }

  v72 = v88;
  outlined init with copy of DOCGridLayout.Spec?(&v83[*(v82 + 52)], v88, &_sSo8UIButtonC5UIKitE13ConfigurationV11CornerStyleOSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationV11CornerStyleOSgMR);
  v74 = v90;
  v73 = v91;
  if ((*(v90 + 48))(v72, 1, v91) == 1)
  {
    outlined destroy of CharacterSet?(v72, &_sSo8UIButtonC5UIKitE13ConfigurationV11CornerStyleOSgMd, &_sSo8UIButtonC5UIKitE13ConfigurationV11CornerStyleOSgMR);
  }

  else
  {
    v75 = v86;
    (*(v74 + 32))(v86, v72, v73);
    (*(v74 + 16))(v87, v75, v73);
    UIButton.Configuration.cornerStyle.setter();
    (*(v74 + 8))(v75, v73);
  }

  (*(v31 + 16))(v48, v34, v30);
  (*(v31 + 56))(v48, 0, 1, v30);
  UIButton.configuration.setter();
  v76 = DOCPickerFilenameView.filenameButton.getter();
  [v76 setNeedsUpdateConfiguration];

  return (*(v31 + 8))(v34, v30);
}

id DOCPickerFilenameView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCPickerFilenameView.init(with:presentingViewController:)(void *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v121 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit29_UICornerMaskingConfigurationVSgMd, &_s5UIKit29_UICornerMaskingConfigurationVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v121 - v11;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v13 = MEMORY[0x277D84F90];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_tags] = MEMORY[0x277D84F90];
  DOCPickerFilenameView.Metrics.init()(&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_metrics]);
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerView;
  v15 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v16 = [objc_opt_self() clearColor];
  [v15 setBackgroundColor_];

  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v14] = v15;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___stackView] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___stackedThumbnailView] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameButton] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___moveTypeLabel] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameTextField] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_tagButtonDisplaysTitle] = 1;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___tagButton] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_activeConstraints] = v13;
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewBottomLayoutConstraint] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewLeadingLayoutConstraint] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewTrailingLayoutConstraint] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_pickerContext] = a1;
  v126 = a2;
  swift_unknownObjectWeakAssign();
  v17 = type metadata accessor for DOCPickerFilenameView(0);
  v127.receiver = v2;
  v127.super_class = v17;
  v125 = a1;
  v18 = objc_msgSendSuper2(&v127, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v18 setPreservesSuperviewLayoutMargins_];
  v19 = [v18 keyboardLayoutGuide];
  [v19 setUsesBottomSafeArea_];

  DOCPickerFilenameView.setupBackground()();
  v20 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerView;
  v21 = *&v18[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerView];
  v22 = v18;
  [v22 addSubview_];
  v23 = *&v18[v20];
  v24 = DOCPickerFilenameView.stackView.getter();
  [v23 addSubview_];

  v25 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___stackView;
  v26 = *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___stackView];
  v27 = DOCPickerFilenameView.stackedThumbnailView.getter();
  [v26 addArrangedSubview_];

  v28 = *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_metrics + 8];
  v29 = *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_metrics + 16];
  v30 = *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_metrics + 24];
  v31 = *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_metrics + 32];
  LODWORD(v27) = _UISolariumEnabled();

  if (!v27)
  {

    v124 = objc_opt_self();
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_249BA0D00;
    v87 = [*&v18[v20] leadingAnchor];
    v88 = [v22 layoutMarginsGuide];
    v89 = v25;
    v90 = [v88 &selRef_next + 1];

    v91 = [v87 constraintEqualToAnchor:v90 constant:v29];
    *(v86 + 32) = v91;
    v92 = [*&v18[v20] trailingAnchor];
    v93 = [v22 layoutMarginsGuide];

    v94 = [v93 trailingAnchor];
    v95 = [v92 constraintEqualToAnchor:v94 constant:-v31];

    *(v86 + 40) = v95;
    v96 = [*&v18[v20] topAnchor];
    v97 = [v22 &selRef_updateBarVisibilityIfNecessary];

    v98 = [v96 constraintEqualToAnchor:v97 constant:v28];
    *(v86 + 48) = v98;
    v99 = [*&v22[v89] leadingAnchor];
    v100 = [*&v18[v20] leadingAnchor];
    v101 = [v99 constraintEqualToAnchor_];

    *(v86 + 56) = v101;
    v102 = [*&v22[v89] trailingAnchor];
    v103 = [*&v18[v20] trailingAnchor];
    v104 = [v102 constraintEqualToAnchor_];

    *(v86 + 64) = v104;
    v122 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v124 activateConstraints_];

    v106 = *&v22[v89];
    v107 = DOCPickerFilenameView.filenameTextField.getter();
    [v106 addArrangedSubview_];

    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_249BA37E0;
    v109 = [v22 keyboardLayoutGuide];

    v110 = [v109 topAnchor];
    v111 = [*&v18[v20] bottomAnchor];
    v112 = [v110 constraintEqualToAnchor:v111 constant:12.0];

    *(v108 + 32) = v112;
    v113 = [*&v18[v20] bottomAnchor];
    v114 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameTextField;
    v115 = [*&v22[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameTextField] bottomAnchor];
    v116 = [v113 constraintEqualToAnchor:v115 constant:v30];

    *(v108 + 40) = v116;
    v117 = [*&v22[v114] topAnchor];
    v118 = [*&v18[v20] topAnchor];
    v119 = [v117 constraintEqualToAnchor_];

    *(v108 + 48) = v119;
    v120 = Array._bridgeToObjectiveC()().super.isa;

    [v124 activateConstraints_];

LABEL_9:
    DOCPickerFilenameView.updateStackView()();

    return;
  }

  v32 = *&v18[v20];
  static _UICornerMaskingConfiguration.CornerStyle.fixed(radius:)();
  v33 = type metadata accessor for _UICornerMaskingConfiguration.CornerStyle();
  (*(*(v33 - 8) + 56))(v8, 0, 1, v33);
  static _UICornerMaskingConfiguration.containerConcentric(symmetric:fallbackStyle:)();
  outlined destroy of CharacterSet?(v8, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMd, &_s5UIKit29_UICornerMaskingConfigurationV11CornerStyleVSgMR);
  v34 = type metadata accessor for _UICornerMaskingConfiguration();
  (*(*(v34 - 8) + 56))(v12, 0, 1, v34);
  UIView.cornerMaskingConfiguration.setter();

  [*&v22[v25] setLayoutMarginsRelativeArrangement_];
  v123 = v25;
  [*&v22[v25] setPreservesSuperviewLayoutMargins_];
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_249BA1010;
  *(v35 + 32) = DOCPickerFilenameView.moveTypeLabel.getter();
  *(v35 + 40) = DOCPickerFilenameView.filenameTextField.getter();
  v36 = objc_allocWithZone(MEMORY[0x277D75A68]);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  v37 = Array._bridgeToObjectiveC()().super.isa;

  v38 = [v36 initWithArrangedSubviews_];

  [v38 setAxis_];
  [v38 setAlignment_];
  [v38 setSpacing_];
  [v38 setLayoutMarginsRelativeArrangement_];
  v39 = v38;
  [v39 setDirectionalLayoutMargins_];
  v40 = [v22 semanticContentAttribute];

  [v39 setSemanticContentAttribute_];
  v41 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameTextField;
  v42 = *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameTextField];
  v43 = [v22 semanticContentAttribute];

  [v42 setSemanticContentAttribute_];
  v44 = *&v22[v41];
  v45 = [v22 effectiveUserInterfaceLayoutDirection] == 1;

  [v44 setTextAlignment_];
  v122 = v41;
  [*&v22[v41] setTranslatesAutoresizingMaskIntoConstraints_];
  v46 = [v22 keyboardLayoutGuide];

  v47 = [v46 topAnchor];
  v48 = [*&v18[v20] bottomAnchor];
  v49 = [v47 constraintEqualToAnchor:v48 constant:0.0];

  v50 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewBottomLayoutConstraint;
  v51 = *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewBottomLayoutConstraint];
  *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewBottomLayoutConstraint] = v49;

  v52 = [*&v18[v20] leadingAnchor];
  v53 = [v22 leadingAnchor];

  v54 = [v52 constraintEqualToAnchor:v53 constant:v29];
  v55 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewLeadingLayoutConstraint;
  v56 = *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewLeadingLayoutConstraint];
  *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewLeadingLayoutConstraint] = v54;

  v57 = [*&v18[v20] trailingAnchor];
  v58 = [v22 trailingAnchor];

  v59 = [v57 constraintEqualToAnchor:v58 constant:-v31];
  v60 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewTrailingLayoutConstraint;
  v61 = *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewTrailingLayoutConstraint];
  *&v22[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewTrailingLayoutConstraint] = v59;

  v62 = swift_allocObject();
  *(v62 + 16) = xmmword_249BAD7D0;
  v63 = *&v22[v55];
  if (!v63)
  {
    __break(1u);
    goto LABEL_11;
  }

  v64 = v62;
  *(v62 + 32) = v63;
  v65 = *&v22[v60];
  if (!v65)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *(v62 + 40) = v65;
  v66 = *&v18[v20];
  v67 = v65;
  v68 = v63;
  v69 = [v66 topAnchor];
  v70 = [v22 topAnchor];

  v71 = [v69 constraintEqualToAnchor:v70 constant:v28];
  v64[6] = v71;
  v72 = *&v22[v50];
  if (v72)
  {
    v73 = objc_opt_self();
    v64[7] = v72;
    v74 = *&v18[v20];
    v75 = v72;
    v76 = [v74 bottomAnchor];
    v77 = [v22 bottomAnchor];

    v78 = [v76 constraintLessThanOrEqualToAnchor:v77 constant:-v30];
    v64[8] = v78;
    v79 = [*&v22[v122] widthAnchor];
    v80 = [v39 widthAnchor];

    v81 = [v79 constraintEqualToAnchor_];
    v64[9] = v81;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
    v82 = Array._bridgeToObjectiveC()().super.isa;

    [v73 activateConstraints_];

    v83 = v123;
    v84 = DOCConstraintsToResizeWithSuperview();
    if (!v84)
    {
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = Array._bridgeToObjectiveC()().super.isa;
    }

    [v73 activateConstraints_];

    [*&v22[v83] addArrangedSubview_];
    v85 = v22;
    goto LABEL_9;
  }

LABEL_12:
  __break(1u);
}

void DOCPickerFilenameView.updateStackView()()
{
  v1 = MEMORY[0x277D85000];
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0xF0);
  v3 = v2();
  v4 = [v3 numberOfItems];

  if (v4 == 1 && (v5 = v2(), v6 = [v5 firstDisplayName], v5, v6))
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v11 = _DocumentManagerBundle();
    if (!v11)
    {
      __break(1u);
      return;
    }

    v12 = v11;
    v50._object = 0xEF736D6574692066;
    v13._countAndFlagsBits = 0x6D65744920756C25;
    v14.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v14.value._object = 0xEB00000000656C62;
    v50._countAndFlagsBits = 0x6F207265626D754ELL;
    v13._object = 0xE900000000000073;
    v15._countAndFlagsBits = 0;
    v15._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v13, v14, v12, v15, v50);

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_249B9A480;
    v17 = v2();
    v18 = [v17 numberOfItems];

    v19 = MEMORY[0x277D83C10];
    *(v16 + 56) = MEMORY[0x277D83B88];
    *(v16 + 64) = v19;
    *(v16 + 32) = v18;
    v7 = static String.localizedStringWithFormat(_:_:)();
    v9 = v20;
  }

  v21 = (v2)(v10);
  v22 = [v21 canRename];

  v23 = DOCPickerFilenameView.filenameTextField.getter();
  v24 = MEMORY[0x24C1FAD20](v7, v9);

  [v23 setText_];

  v25 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameTextField;
  [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameTextField) setEnabled_];
  v26 = *(v0 + v25);
  v27 = objc_opt_self();
  v28 = v26;
  v29 = &selRef_labelColor;
  if (!v22)
  {
    v29 = &selRef_secondaryLabelColor;
  }

  v30 = [v27 *v29];
  [v28 setTextColor_];

  if (_UISolariumEnabled())
  {
    v31 = DOCPickerFilenameView.moveTypeLabel.getter();
    v32 = MEMORY[0x24C1FAD20](32, 0xE100000000000000);
    [v31 setText_];
  }

  v33 = DOCPickerFilenameView.stackView.getter();
  [v33 setSpacing_];

  v34 = v2();
  v35 = [v34 canSetTags];

  if (v35)
  {
    if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_metrics + 104) == 1)
    {
      v36 = *(v0 + v25);
      v37 = DOCPickerFilenameView.tagButton.getter();
      [v36 setRightView_];

      v38 = [*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___stackView) removeArrangedSubview_];
      goto LABEL_16;
    }

    v39 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___stackView);
    v40 = DOCPickerFilenameView.tagButton.getter();
    [v39 addArrangedSubview_];
  }

  else
  {
    v39 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___stackView);
    v40 = DOCPickerFilenameView.tagButton.getter();
    [v39 removeArrangedSubview_];
  }

  v38 = [*(v0 + v25) setRightView_];
LABEL_16:
  v41 = (v2)(v38);
  v42 = [v41 urlsToSave];

  if (v42)
  {
    type metadata accessor for URL();
    v44 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v44 + 16))
    {
      v48 = DOCPickerFilenameView.stackedThumbnailView.getter();
      (*((*v1 & *v48) + 0x98))(v44);
LABEL_24:

      return;
    }
  }

  v45 = (v2)(v43);
  v46 = [v45 nodesToMove];

  if (!v46)
  {
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  v47 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v47 >> 62)
  {
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_23;
    }
  }

  else if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_23:
    v48 = DOCPickerFilenameView.stackedThumbnailView.getter();
    (*((*v1 & *v48) + 0x80))(v47);
    goto LABEL_24;
  }
}

void DOCPickerFilenameView.setupBackground()()
{
  v1 = v0;
  v2 = type metadata accessor for _Glass._GlassVariant();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = [objc_opt_self() clearColor];
  [v0 setBackgroundColor_];

  if (_UISolariumEnabled())
  {
    v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerView];
    static _Glass._GlassVariant.regular.getter();
    v16[3] = type metadata accessor for _Glass();
    v16[4] = MEMORY[0x277D74E20];
    __swift_allocate_boxed_opaque_existential_1(v16);
    _Glass.init(_:smoothness:)();
    UIView._background.setter();

    v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
    [v6 setTranslatesAutoresizingMaskIntoConstraints_];
    [v1 addSubview_];
    isa = DOCConstraintsToResizeWithSuperview();
    if (!isa)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      isa = Array._bridgeToObjectiveC()().super.isa;
    }

    [objc_opt_self() activateConstraints_];
  }

  else
  {
    v8 = [objc_opt_self() effectWithStyle_];
    v9 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

    [v9 setTranslatesAutoresizingMaskIntoConstraints_];
    [v1 addSubview_];
    v10 = DOCConstraintsToResizeWithSuperview();
    if (!v10)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = Array._bridgeToObjectiveC()().super.isa;
    }

    v11 = objc_opt_self();
    [v11 activateConstraints_];

    v12 = [objc_allocWithZone(MEMORY[0x277D063B8]) init];
    [v12 setTranslatesAutoresizingMaskIntoConstraints_];
    [v1 addSubview_];
    v13 = DOCConstraintsToResizeWithSuperview();
    if (!v13)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = Array._bridgeToObjectiveC()().super.isa;

      v13 = v14;
    }

    [v11 activateConstraints_];
  }
}

void DOCPickerFilenameView.displayTagView()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_allocWithZone(DOCTagEditorViewController) init];
    v4 = [v3 setDelegate_];
    (*((*MEMORY[0x277D85000] & *v0) + 0x138))(v4);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCTag, 0x277D06260);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v3 setSelectedTags_];

    v18 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];
    [v18 setModalPresentationStyle_];
    v6 = [v18 popoverPresentationController];
    if (v6)
    {
      v7 = v6;
      [v6 setSourceView_];
    }

    v8 = [v18 popoverPresentationController];

    if (v8)
    {
      v9 = DOCPickerFilenameView.tagButton.getter();
      [v9 bounds];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;

      [v0 convertRect:*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___tagButton) fromCoordinateSpace:{v11, v13, v15, v17}];
      [v8 setSourceRect_];
    }

    [v2 presentViewController:v18 animated:1 completion:0];
  }
}

id DOCPickerFilenameView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id FilenameTextField.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t DOCPickerFilenameView.renameViewController(_:didChooseName:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *((*MEMORY[0x277D85000] & *v3) + 0x110);

  return v7(a2, a3);
}

uint64_t protocol witness for DOCRenameViewControllerDelegate.renameViewController(_:didChooseName:) in conformance DOCPickerFilenameView(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *((*MEMORY[0x277D85000] & *v3) + 0x110);

  return v7(a2, a3);
}

void DOCPickerFilenameView.tagEditor(_:userDidDeselect:)(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_tags;
  swift_beginAccess();
  v5 = a2;
  v6 = specialized MutableCollection._halfStablePartition(isSuffixElement:)((v2 + v4), v5);

  v8 = *(v2 + v4);
  if (v8 >> 62)
  {
    v9 = __CocoaSet.count.getter();
    if (v9 >= v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9 >= v6)
    {
LABEL_3:
      specialized Array.replaceSubrange<A>(_:with:)(v6, v7, v9);
      swift_endAccess();
      v10 = DOCPickerFilenameView.tagButton.getter();
      [v10 setNeedsUpdateConfiguration];

      return;
    }
  }

  __break(1u);
}

void DOCPickerFilenameView.renameButtonInsets(for:)()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
  v2 = [v1 canSetTags];

  if (v2)
  {
    v3 = DOCPickerFilenameView.tagButton.getter();
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12.origin.x = v5;
    v12.origin.y = v7;
    v12.size.width = v9;
    v12.size.height = v11;
    CGRectGetWidth(v12);
  }
}

void protocol witness for DOCRenameButtonDelegate.renameButtonInsets(for:) in conformance DOCPickerFilenameView()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))();
  v2 = [v1 canSetTags];

  if (v2)
  {
    v3 = DOCPickerFilenameView.tagButton.getter();
    [v3 frame];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12.origin.x = v5;
    v12.origin.y = v7;
    v12.size.width = v9;
    v12.size.height = v11;
    CGRectGetWidth(v12);
  }
}

id specialized DOCPickerFilenameView.textFieldDidBeginEditing(_:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewBottomLayoutConstraint;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewBottomLayoutConstraint];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v5 = [v3 isInHardwareKeyboardMode];
    v6 = 0.0;
    if ((v5 & 1) == 0)
    {
      v6 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_metrics + 56];
    }

    [v4 setConstant_];

    v7 = *&v0[v1];
    if (v7)
    {
      [v7 setActive_];
    }
  }

  v8 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewLeadingLayoutConstraint];
  if (v8)
  {
    [v8 setConstant_];
  }

  v9 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewTrailingLayoutConstraint];
  if (v9)
  {
    [v9 setConstant_];
  }

  return [v0 setNeedsUpdateConstraints];
}

id specialized DOCPickerFilenameView.textFieldDidEndEditing(_:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewBottomLayoutConstraint;
  v2 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewBottomLayoutConstraint];
  if (v2)
  {
    [v2 setConstant_];
    v3 = *&v0[v1];
    if (v3)
    {
      [v3 setActive_];
    }
  }

  v4 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewLeadingLayoutConstraint];
  if (v4)
  {
    [v4 setConstant_];
  }

  v5 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewTrailingLayoutConstraint];
  if (v5)
  {
    [v5 setConstant_];
  }

  return [v0 setNeedsUpdateConstraints];
}

void specialized DOCPickerFilenameView.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_tags) = MEMORY[0x277D84F90];
  DOCPickerFilenameView.Metrics.init()(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_metrics);
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerView;
  v3 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = [objc_opt_self() clearColor];
  [v3 setBackgroundColor_];

  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v2) = v3;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___stackedThumbnailView) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameButton) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___moveTypeLabel) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___filenameTextField) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_tagButtonDisplaysTitle) = 1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView____lazy_storage___tagButton) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_activeConstraints) = v1;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewBottomLayoutConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewLeadingLayoutConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_containerViewTrailingLayoutConstraint) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void specialized DOCPickerFilenameView.tagEditor(_:userDidSelect:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCPickerFilenameView_tags;
  swift_beginAccess();
  v5 = a1;
  MEMORY[0x24C1FB090]();
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  swift_endAccess();
  v6 = DOCPickerFilenameView.tagButton.getter();
  [v6 setNeedsUpdateConfiguration];
}

uint64_t type metadata completion function for DOCPickerFilenameView(uint64_t a1)
{
  result = type metadata accessor for DOCPickerFilenameView.Metrics(319);
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void type metadata completion function for DOCPickerFilenameView.Metrics(uint64_t a1)
{
  type metadata accessor for NSDirectionalEdgeInsets(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIButton.Configuration();
      if (v3 <= 0x3F)
      {
        type metadata accessor for UIButton.Configuration.Size?(319, &lazy cache variable for type metadata for UIButton.Configuration.Size?, MEMORY[0x277D75038]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UIButton.Configuration.Size?(319, &lazy cache variable for type metadata for UIButton.Configuration.CornerStyle?, MEMORY[0x277D74FE8]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for UIButton.Configuration.Size?(319, &lazy cache variable for type metadata for NSDirectionalEdgeInsets?, type metadata accessor for NSDirectionalEdgeInsets);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for UIButton.Configuration.Size?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t outlined destroy of DOCPickerFilenameView.Metrics(uint64_t a1)
{
  v2 = type metadata accessor for DOCPickerFilenameView.Metrics(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int DOCAppIntentsGenericError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DOCAppIntentsGenericError and conformance DOCAppIntentsGenericError()
{
  result = lazy protocol witness table cache variable for type DOCAppIntentsGenericError and conformance DOCAppIntentsGenericError;
  if (!lazy protocol witness table cache variable for type DOCAppIntentsGenericError and conformance DOCAppIntentsGenericError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAppIntentsGenericError and conformance DOCAppIntentsGenericError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DOCAppIntentsGenericError and conformance DOCAppIntentsGenericError;
  if (!lazy protocol witness table cache variable for type DOCAppIntentsGenericError and conformance DOCAppIntentsGenericError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCAppIntentsGenericError and conformance DOCAppIntentsGenericError);
  }

  return result;
}

uint64_t OutlineManager.__allocating_init(sortMode:)(unsigned __int8 *a1)
{
  v2 = swift_allocObject();
  OutlineManager.init(sortMode:)(a1);
  return v2;
}

BOOL static DragLocation.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1)
      {
        return 0;
      }

      return a1 == a3;
    }

    if (a4 == 2 && !a3)
    {
      return 1;
    }
  }

  else if (!a4)
  {
    return a1 == a3;
  }

  return 0;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DragLocation(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  if (*(a1 + 8) != 1)
  {
    v8 = v10;
  }

  if (*(a1 + 8))
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

void OutlineSizingInputs.safeAreaInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
}

__n128 OutlineSizingInputs.init()@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *(a1 + 8) = 0;
  result = *MEMORY[0x277D768C8];
  v2 = *(MEMORY[0x277D768C8] + 16);
  *(a1 + 16) = *MEMORY[0x277D768C8];
  *(a1 + 32) = v2;
  return result;
}

uint64_t OutlineSizingInputs.init(needsInitialSizing:sizedWidth:safeAreaInsets:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  *a2 = result;
  *(a2 + 8) = a3;
  *(a2 + 16) = a4;
  *(a2 + 24) = a5;
  *(a2 + 32) = a6;
  *(a2 + 40) = a7;
  return result;
}

id OutlineManager.visualEffectForDrag.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void OutlineManager.visualEffectForDrag.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

double OutlineManager.trackedPortalLayers.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  return result;
}

void OutlineManager.currentDragHeaderLocation.setter(uint64_t a1, char a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t OutlineManager.columnData.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  v4 = *(v1 + 88);
  v5 = *(v1 + 96);
  v7 = *(v1 + 104);
  v6 = *(v1 + 112);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6;
}

double OutlineManager.columnData.setter(char *a1)
{
  v3 = *a1;
  swift_beginAccess();
  *(v1 + 80) = v3;
  *(v1 + 88) = *(a1 + 8);
  *(v1 + 104) = *(a1 + 24);

  return result;
}

double OutlineManager.sizingInputs.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 160);
  *a1 = *(v1 + 120);
  v4 = *(v1 + 144);
  *(a1 + 8) = *(v1 + 128);
  *(a1 + 24) = v4;
  *(a1 + 40) = result;
  return result;
}

__n128 OutlineManager.sizingInputs.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 120) = *a1;
  *(v1 + 136) = v3;
  result = *(a1 + 32);
  *(v1 + 152) = result;
  return result;
}

double OutlineManager.dateCache.getter()
{
  swift_beginAccess();

  return result;
}

double OutlineManager.dateCache.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 184) = a1;

  return result;
}

double OutlineManager.customDateToDateFormattersCache.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 192) = a1;

  return result;
}

uint64_t OutlineManager.disabledBandSelectionInteraction.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 200) = a1;
  return swift_unknownObjectRelease();
}

id OutlineManager.init(sortMode:)(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = objc_opt_self();
  v4 = [v3 whiteColor];
  v5 = [v4 colorWithAlphaComponent_];

  v6 = [objc_opt_self() colorEffectColor_];
  v7 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  *(v1 + 16) = v7;
  v8 = MEMORY[0x277D768C8];
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  v9 = v8[1];
  *(v1 + 136) = *v8;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = 2;
  *(v1 + 120) = 1;
  *(v1 + 128) = 0;
  *(v1 + 152) = v9;
  type metadata accessor for DateCache();
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  *(v10 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_26DocumentManagerExecutables0D10CalculatorCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v1 + 184) = v10;
  *(v1 + 192) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_26DocumentManagerExecutables0D10CalculatorCTt0g5Tf4g_n(v11);
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  swift_beginAccess();
  v12 = *(v1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_249BA0290;
  v14 = objc_opt_self();
  v15 = v12;
  result = [v14 effectWithBlurRadius_];
  if (result)
  {
    *(v13 + 32) = result;
    type metadata accessor for UIVisualEffect();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setBackgroundEffects_];

    v18 = [*(v1 + 16) layer];
    v19 = [v3 tertiarySystemFillColor];
    v20 = [v19 CGColor];

    [v18 setBorderColor_];
    v21 = [*(v1 + 16) layer];
    [v21 setBorderWidth_];

    v23[0] = v2;
    v22 = specialized static OutlineColumnData.fetchVisibleColumnTypes(defaultSortMode:)(v23);
    OutlineColumnData.init(visibleColumnTypes:availableColumnTypes:isInCompactSizeClass:sizes:dateFormatterForColumnsType:)(v22, &outlined read-only object #0 of static ColumnType.allCases.getter, 0, 0, 0, v23);
    *(v1 + 80) = v23[0];
    *(v1 + 88) = v24;
    *(v1 + 104) = v25;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t OutlineManager.deinit()
{

  swift_unknownObjectRelease();
  return v0;
}

uint64_t OutlineManager.__deallocating_deinit()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t type metadata accessor for UIVisualEffect()
{
  result = lazy cache variable for type metadata for UIVisualEffect;
  if (!lazy cache variable for type metadata for UIVisualEffect)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIVisualEffect);
  }

  return result;
}

uint64_t getEnumTag for DragLocation(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t getEnumTagSinglePayload for OutlineSizingInputs(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[48])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for OutlineSizingInputs(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t DOCWeakUncheckedSendable.__allocating_init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = specialized DOCWeakUncheckedSendable.__allocating_init(_:)(a1, a2, a3, a4);
  swift_unknownObjectRelease();
  return v4;
}

uint64_t key path setter for DOCUncheckedSendable.object : <A>DOCUncheckedSendable<A>(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x28223BE20](a1, a1);
  v5 = &v8 - v4;
  (*(v6 + 16))(&v8 - v4, v3);
  return (*(**a2 + 104))(v5);
}

uint64_t DOCUncheckedSendable.object.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

double DOCUncheckedSendable.object.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 40))(v1 + v4, a1);
  swift_endAccess();
  return result;
}

uint64_t DOCUncheckedSendable.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  return v2;
}

uint64_t DOCUncheckedSendable.performAsyncThrowing(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*v2 + 80);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](DOCUncheckedSendable.performAsyncThrowing(_:), 0, 0);
}

uint64_t DOCUncheckedSendable.performAsyncThrowing(_:)()
{
  v1 = *(v0 + 16);
  (*(**(v0 + 32) + 96))();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = DOCUncheckedSendable.performAsyncThrowing(_:);
  v3 = *(v0 + 56);

  return v5(v3);
}

{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  v5 = *v1;
  *(v5 + 72) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](DOCUncheckedSendable.performAsyncThrowing(_:), 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DOCUncheckedSendable.__deallocating_deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t DOCWeakUncheckedSendable.object.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCWeakUncheckedSendable.object.modify(uint64_t *a1))(void **a1, char a2)
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
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCWeakUncheckedSendable.object.modify;
}

void DOCWeakUncheckedSendable.object.modify(void **a1, char a2)
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

uint64_t DOCWeakUncheckedSendable.init(_:)(uint64_t a1)
{
  v1 = specialized DOCWeakUncheckedSendable.init(_:)(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t DOCWeakUncheckedSendable.__deallocating_deinit()
{
  MEMORY[0x24C1FE970](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t specialized DOCWeakUncheckedSendable.init(_:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t specialized DOCWeakUncheckedSendable.__allocating_init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DOCWeakUncheckedSendable(0, *(v4 + 80), a3, a4);
  swift_allocObject();
  return specialized DOCWeakUncheckedSendable.init(_:)(a1);
}

uint64_t type metadata completion function for DOCUncheckedSendable(uint64_t a1)
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

uint64_t dispatch thunk of DOCUncheckedSendable.performAsyncThrowing(_:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return v8(a1, a2);
}

uint64_t static SaveToFilesIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables17SaveToFilesIntentVGMd, &_s10AppIntents22ParameterSummaryStringVy26DocumentManagerExecutables17SaveToFilesIntentVGMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables17SaveToFilesIntentV_GMd, &_s10AppIntents22ParameterSummaryStringV0E13InterpolationVy26DocumentManagerExecutables17SaveToFilesIntentV_GMR);
  MEMORY[0x28223BE20](v2, v3);
  lazy protocol witness table accessor for type SaveToFilesIntent and conformance SaveToFilesIntent();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v4._object = 0x8000000249BE9300;
  v4._countAndFlagsBits = 0xD000000000000023;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v4);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables17SaveToFilesIntentV10AppIntents0I9ParameterCySayAC12FINodeEntityVGGGMd, &_ss7KeyPathCy26DocumentManagerExecutables17SaveToFilesIntentV10AppIntents0I9ParameterCySayAC12FINodeEntityVGGGMR);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v5);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7KeyPathCy26DocumentManagerExecutables17SaveToFilesIntentV10AppIntents0I9ParameterCyAC12FINodeEntityVGGMd, &_ss7KeyPathCy26DocumentManagerExecutables17SaveToFilesIntentV10AppIntents0I9ParameterCyAC12FINodeEntityVGGMR);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v6);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

unint64_t lazy protocol witness table accessor for type SaveToFilesIntent and conformance SaveToFilesIntent()
{
  result = lazy protocol witness table cache variable for type SaveToFilesIntent and conformance SaveToFilesIntent;
  if (!lazy protocol witness table cache variable for type SaveToFilesIntent and conformance SaveToFilesIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SaveToFilesIntent and conformance SaveToFilesIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SaveToFilesIntent and conformance SaveToFilesIntent;
  if (!lazy protocol witness table cache variable for type SaveToFilesIntent and conformance SaveToFilesIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SaveToFilesIntent and conformance SaveToFilesIntent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SaveToFilesIntent and conformance SaveToFilesIntent;
  if (!lazy protocol witness table cache variable for type SaveToFilesIntent and conformance SaveToFilesIntent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SaveToFilesIntent and conformance SaveToFilesIntent);
  }

  return result;
}

void (*SaveToFilesIntent.files.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return protocol witness for ShowInAppSearchResultsIntent.criteria.modify in conformance SearchInBrowserIntent;
}

uint64_t one-time initialization function for needsInputItemsDialog(double a1)
{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for IntentDialog();
  __swift_allocate_value_buffer(v12, static SaveToFilesIntent.needsInputItemsDialog);
  __swift_project_value_buffer(v12, static SaveToFilesIntent.needsInputItemsDialog);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  return IntentDialog.init(_:)();
}

{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for IntentDialog();
  __swift_allocate_value_buffer(v12, static MoveItemsIntent.needsInputItemsDialog);
  __swift_project_value_buffer(v12, static MoveItemsIntent.needsInputItemsDialog);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  return IntentDialog.init(_:)();
}

uint64_t key path setter for SaveToFilesIntent.folder : SaveToFilesIntent(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v11 - v8;
  outlined init with copy of FINodeEntity(a1, &v11 - v8);
  outlined init with copy of FINodeEntity(v9, v5);
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(v9);
}

uint64_t SaveToFilesIntent.folder.setter(uint64_t a1)
{
  v2 = type metadata accessor for FINodeEntity(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  outlined init with copy of FINodeEntity(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return outlined destroy of FINodeEntity(a1);
}

void (*SaveToFilesIntent.folder.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return RenameItemIntent.newName.modify;
}

uint64_t one-time initialization function for needsDestinationDialog(double a1)
{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for IntentDialog();
  __swift_allocate_value_buffer(v12, static SaveToFilesIntent.needsDestinationDialog);
  __swift_project_value_buffer(v12, static SaveToFilesIntent.needsDestinationDialog);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  return IntentDialog.init(_:)();
}

{
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v10 = type metadata accessor for LocalizedStringResource();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = type metadata accessor for IntentDialog();
  __swift_allocate_value_buffer(v12, static MoveItemsIntent.needsDestinationDialog);
  __swift_project_value_buffer(v12, static MoveItemsIntent.needsDestinationDialog);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v1);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  return IntentDialog.init(_:)();
}

uint64_t static SaveToFilesIntent.title.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t SaveToFilesIntent.title.unsafeMutableAddressor(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

uint64_t static SaveToFilesIntent.authenticationPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static SaveToFilesIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SaveToFilesIntent.authenticationPolicy.setter(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static SaveToFilesIntent.authenticationPolicy);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SaveToFilesIntent.authenticationPolicy.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for IntentAuthenticationPolicy();
  __swift_project_value_buffer(v1, static SaveToFilesIntent.authenticationPolicy);
  swift_beginAccess();
  return DOCSmartFolderManager.defaultSaveLocationItemId.modify;
}

uint64_t key path getter for static SaveToFilesIntent.authenticationPolicy : SaveToFilesIntent.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static SaveToFilesIntent.authenticationPolicy);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

double key path setter for static SaveToFilesIntent.authenticationPolicy : SaveToFilesIntent.Type(uint64_t a1)
{
  if (one-time initialization token for authenticationPolicy != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for IntentAuthenticationPolicy();
  v3 = __swift_project_value_buffer(v2, static SaveToFilesIntent.authenticationPolicy);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  swift_endAccess();
  return result;
}

uint64_t SaveToFilesIntent.perform()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = *(type metadata accessor for FINodeEntity(0) - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](SaveToFilesIntent.perform(), 0, 0);
}

uint64_t SaveToFilesIntent.perform()()
{
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.AppIntents);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2493AC000, v2, v3, "[SaveToFilesIntent] Performing Save To Files Intent", v4, 2u);
    MEMORY[0x24C1FE850](v4, -1, -1);
  }

  IntentParameter.wrappedValue.getter();
  v5 = v0[2];
  v0[10] = v5;
  IntentParameter.wrappedValue.getter();
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = SaveToFilesIntent.perform();
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];

  return SaveToFilesIntent.save(_:to:)(v5, v7, v8, v9);
}

{
  v1 = v0[12];
  if (*(v1 + 16))
  {
    v2 = *(v0[8] + 80);
    v0[3] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables12FINodeEntityVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables12FINodeEntityVGMR);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_249B9A480;
    outlined init with copy of FINodeEntity(v1 + ((v2 + 32) & ~v2), v3 + ((v2 + 32) & ~v2));
    v0[4] = specialized RevealItemsIntent.init(targets:)(v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26DocumentManagerExecutables12FINodeEntityVGMd, &_sSay26DocumentManagerExecutables12FINodeEntityVGMR);
    lazy protocol witness table accessor for type [FINodeEntity] and conformance <A> [A]();
    lazy protocol witness table accessor for type RevealItemsIntent and conformance RevealItemsIntent();
    static IntentResult.result<A, B>(value:opensIntent:)();
  }

  else
  {

    lazy protocol witness table accessor for type SaveToFilesIntent.PerformError and conformance SaveToFilesIntent.PerformError();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
  }

  v4 = v0[1];

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SaveToFilesIntent.perform()(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v1;

  outlined destroy of FINodeEntity(*(v3 + 72));

  if (v1)
  {
    v5 = SaveToFilesIntent.perform();
  }

  else
  {
    v5 = SaveToFilesIntent.perform();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t SaveToFilesIntent.save(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for FINodeEntity(0);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = type metadata accessor for UTType();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](SaveToFilesIntent.save(_:to:), 0, 0);
}

uint64_t SaveToFilesIntent.save(_:to:)()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 88);
  v4 = *(v0 + 96);
  v5 = *(*(v0 + 32) + *(*(v0 + 56) + 32));
  v6 = [v5 contentType];
  static UTType._unconditionallyBridgeFromObjectiveC(_:)();

  static UTType.folder.getter();
  LOBYTE(v6) = static UTType.== infix(_:_:)();
  v7 = *(v4 + 8);
  v7(v2, v3);
  v7(v1, v3);
  if (v6)
  {
    v8 = *(v0 + 24);
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *(v9 + 16) = *(v0 + 40);
    *(v9 + 32) = v8;
    *(v9 + 40) = v5;
    v10 = swift_task_alloc();
    *(v0 + 128) = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
    *v10 = v0;
    v10[1] = SaveToFilesIntent.save(_:to:);

    return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0x743A5F2865766173, 0xEB00000000293A6FLL, partial apply for closure #1 in SaveToFilesIntent.save(_:to:), v9, v11);
  }

  else
  {
    lazy protocol witness table accessor for type SaveToFilesIntent.PerformError and conformance SaveToFilesIntent.PerformError();
    swift_allocError();
    *v12 = 0;
    swift_willThrow();

    v13 = *(v0 + 8);

    return v13();
  }
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = SaveToFilesIntent.save(_:to:);
  }

  else
  {

    v2 = SaveToFilesIntent.save(_:to:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[2];
  if (v1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    v4 = v0[8];
    v5 = MEMORY[0x277D84F90];
    while ((v1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v3, v1);
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_17;
      }

LABEL_9:
      swift_getObjectType();
      v7 = DOCNode.fpfs_syncFetchFPItem()();
      if (v7)
      {
        v9 = v0[9];
        v8 = v0[10];
        FINodeEntity.init(item:)(v7, v9);
        swift_unknownObjectRelease();
        outlined init with take of FINodeEntity(v9, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
        }

        v11 = v5[2];
        v10 = v5[3];
        if (v11 >= v10 >> 1)
        {
          v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v5);
        }

        v12 = v0[10];
        v5[2] = v11 + 1;
        outlined init with take of FINodeEntity(v12, v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11);
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_21;
      }
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_18;
    }

    swift_unknownObjectRetain();
    v6 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_9;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v5 = MEMORY[0x277D84F90];
LABEL_21:

  v13 = v0[1];

  return v13(v5);
}

{

  v1 = *(v0 + 8);

  return v1();
}

double closure #1 in SaveToFilesIntent.save(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo7DOCNode_pGs5Error_pGMd, &_sScCySaySo7DOCNode_pGs5Error_pGMR);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v17 - v12;
  (*(v9 + 16))(&v17 - v12, a1, v8, v11);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = swift_allocObject();
  (*(v9 + 32))(v15 + v14, v13, v8);
  specialized SaveToFilesIntent.save(_:destinationFolder:completionBlock:)(a4, a5, partial apply for closure #1 in closure #1 in SaveToFilesIntent.save(_:to:), v15);

  return result;
}

uint64_t closure #1 in closure #1 in SaveToFilesIntent.save(_:to:)(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo7DOCNode_pGs5Error_pGMd, &_sScCySaySo7DOCNode_pGs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo7DOCNode_pGs5Error_pGMd, &_sScCySaySo7DOCNode_pGs5Error_pGMR);
    return CheckedContinuation.resume(returning:)();
  }
}

void closure #3 in SaveToFilesIntent.save(_:destinationFolder:completionBlock:)(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v16, v17);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v21 = _convertErrorToNSError(_:)();
    if (one-time initialization token for AppIntents != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.AppIntents);
    v23 = v21;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock[0] = v28;
      *v26 = 136315394;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002ALL, 0x8000000249BE95E0, aBlock);
      *(v26 + 12) = 2112;
      *(v26 + 14) = v23;
      *v27 = v23;
      v29 = v23;
      _os_log_impl(&dword_2493AC000, v24, v25, "%s: Copy Operation failed: %@", v26, 0x16u);
      outlined destroy of NSObject?(v27);
      MEMORY[0x24C1FE850](v27, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x24C1FE850](v28, -1, -1);
      MEMORY[0x24C1FE850](v26, -1, -1);
    }

    v38 = v23;
    a2(v23, 1);

    v30 = v38;
  }

  else
  {
    v37 = v18;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v36 = static OS_dispatch_queue.main.getter();
    v31 = swift_allocObject();
    v31[2] = a4;
    v31[3] = a5;
    v31[4] = a6;
    v31[5] = a2;
    v31[6] = a3;
    aBlock[4] = partial apply for closure #1 in closure #3 in SaveToFilesIntent.save(_:destinationFolder:completionBlock:);
    aBlock[5] = v31;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_96;
    v32 = _Block_copy(aBlock);
    v33 = a4;
    swift_unknownObjectRetain();

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [DOCDragAndDropErrorCode] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v34 = v36;
    MEMORY[0x24C1FB9A0](0, v20, v15, v32);
    _Block_release(v32);

    (*(v38 + 1))(v15, v12);
    (*(v37 + 8))(v20, v16);
  }
}

double closure #1 in closure #3 in SaveToFilesIntent.save(_:destinationFolder:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, uint64_t))
{
  v26 = a4;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() mainBundle];
  v12 = [v11 bundleIdentifier];

  if (v12)
  {
    Date.init()();
    v13 = objc_allocWithZone(MEMORY[0x277D05ED0]);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v15 = [v13 initWithAppBundleIdentifier:v12 folderItem:a1 type:1 lastUsedDate:isa frecency:1.0];

    (*(v7 + 8))(v10, v6);
    if (one-time initialization token for sharedManager != -1)
    {
      swift_once();
    }

    DOCSmartFolderManager.register(event:)(v15, v16);
  }

  ObjectType = swift_getObjectType();
  v18 = (*(a3 + 88))(ObjectType, a3);
  if (!v18)
  {
    goto LABEL_9;
  }

  v19 = v18;
  v20 = *(v18 + 16);
  if (v20)
  {
    v21 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo15UIBarButtonItemC_Tt1g5();
    v22 = specialized Sequence._copySequenceContents(initializing:)(&v27, (v21 + 32), v20, v19);
    v23 = v27;

    outlined consume of Set<UITouch>.Iterator._Variant(v23);
    if (v22 != v20)
    {
      __break(1u);
LABEL_9:
      v24 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
      v26(v24, 1);

      return result;
    }
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  v26(v21, 0);

  return result;
}

Swift::Int SaveToFilesIntent.PerformError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1 & 1);
  return Hasher._finalize()();
}

uint64_t default argument 0 of SaveToFilesIntent.init(files:folder:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v41 = *(v0 - 8);
  v42 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v43 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v39 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v36 = &v34 - v11;
  v12 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v19 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v35 = type metadata accessor for LocalizedStringResource();
  v21 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v22);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMd, &_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMR);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v25 = *MEMORY[0x277CC9110];
  v26 = *(v13 + 104);
  v26(v16, v25, v12);
  v38 = v24;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v26(v16, v25, v12);
  v27 = v36;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v21 + 56))(v27, 0, 1, v35);
  v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.item.getter();
  static UTType.folder.getter();
  if (one-time initialization token for needsInputItemsDialog != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for IntentDialog();
  v29 = __swift_project_value_buffer(v28, static SaveToFilesIntent.needsInputItemsDialog);
  v30 = *(v28 - 8);
  v31 = v39;
  (*(v30 + 16))(v39, v29, v28);
  v32 = *(v30 + 56);
  v32(v31, 0, 1, v28);
  v32(v40, 1, 1, v28);
  (*(v41 + 104))(v43, *MEMORY[0x277CBA308], v42);
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity, &protocol conformance descriptor for FINodeEntity);
  return IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t default argument 1 of SaveToFilesIntent.init(files:folder:)()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v47 = *(v0 - 8);
  v48 = v0;
  MEMORY[0x28223BE20](v0, v1);
  v49 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v46 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v45 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd, &_s26DocumentManagerExecutables12FINodeEntityVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v42 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v41 = &v39 - v14;
  v15 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v22 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v40 = type metadata accessor for LocalizedStringResource();
  v24 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v25);
  v27 = &v39 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMd, &_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMR);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28 = *MEMORY[0x277CC9110];
  v29 = *(v16 + 104);
  v29(v19, v28, v15);
  v44 = v27;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v29(v19, v28, v15);
  v30 = v42;
  v31 = v41;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  (*(v24 + 56))(v31, 0, 1, v40);
  v32 = type metadata accessor for FINodeEntity(0);
  (*(*(v32 - 8) + 56))(v30, 1, 1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9A480;
  static UTType.folder.getter();
  if (one-time initialization token for needsDestinationDialog != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for IntentDialog();
  v34 = __swift_project_value_buffer(v33, static SaveToFilesIntent.needsDestinationDialog);
  v35 = *(v33 - 8);
  v36 = v45;
  (*(v35 + 16))(v45, v34, v33);
  v37 = *(v35 + 56);
  v37(v36, 0, 1, v33);
  v37(v46, 1, 1, v33);
  (*(v47 + 104))(v49, *MEMORY[0x277CBA308], v48);
  lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity, &protocol conformance descriptor for FINodeEntity);
  return IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
}

uint64_t protocol witness for static AppIntent.title.getter in conformance SaveToFilesIntent@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for title != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for LocalizedStringResource();
  v4 = __swift_project_value_buffer(v3, static SaveToFilesIntent.title);
  v5 = *(*(v3 - 8) + 16);

  return v5(a1, v4, v3);
}

uint64_t protocol witness for AppIntent.perform() in conformance SaveToFilesIntent(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = partial apply for closure #1 in DOCRenameOperation._schedule();

  return SaveToFilesIntent.perform()(a1, v5, v4);
}

uint64_t protocol witness for AppIntent.init() in conformance SaveToFilesIntent@<X0>(uint64_t *a1@<X8>)
{
  result = specialized SaveToFilesIntent.init()();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static PersistentlyIdentifiable.persistentIdentifier.getter in conformance SaveToFilesIntent(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SaveToFilesIntent and conformance SaveToFilesIntent();

  return MEMORY[0x28210B538](a1, v2);
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, v5 & 1);
    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for DOCHashableNode();
    v10 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  specialized _NativeDictionary.copy()();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  *(v21[6] + 8 * v10) = v7;
  v22 = (v21[7] + 16 * v10);
  *v22 = v6;
  v22[1] = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x24C1FAEA0](0xD00000000000001BLL, 0x8000000249BE9630);
    type metadata accessor for DOCHashableNode();
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x24C1FAEA0](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v6 = 1;
    while (v6 < a1[2])
    {
      v7 = *(v5 - 2);
      v25 = *(v5 - 1);
      v8 = *v5;
      v26 = *a3;

      v27 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v31, 1);
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      *(v33[6] + 8 * v27) = v7;
      v34 = (v33[7] + 16 * v27);
      *v34 = v25;
      v34[1] = v8;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v6;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v6)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

void *specialized makeDOCCopyOperation(nodes:destinationFolder:isDuplication:undoManager:)(unint64_t a1, void *a2, char a3, void *a4)
{
  if ([objc_opt_self() useFIOperations])
  {
    v8 = objc_allocWithZone(type metadata accessor for DOC_FICopyOperation());

    return specialized DOC_FICopyOperation.init(nodes:destinationFolder:isDuplication:undoManager:)(a1, a2, a3 & 1, a4, v8);
  }

  else
  {
    result = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
    if (result)
    {
      v10 = result;
      v11 = specialized DOCNode.fpfs_syncFetchFPItem()();
      if (v11)
      {
        v12 = v11;
        v13 = type metadata accessor for DOCCopyOperation();
        v14 = objc_allocWithZone(v13);
        v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_allowDSCopyEngine] = 1;
        *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsTransferResults] = 0;
        *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsSourceNodeToURL] = 0;
        *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsSourceURLToNode] = 0;
        *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_dsItemIDToPlaceholderID] = 0;
        *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation__doc_targetFilenamesByNode] = 0;
        v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_engineTypeUsed] = 0;
        v15 = OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_isDuplication;
        v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_isDuplication] = 0;
        *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceURLs] = MEMORY[0x277D84F90];
        *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_sourceItems] = v10;
        *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_destinationFolderItem] = v12;
        swift_beginAccess();
        v14[v15] = a3 & 1;
        *&v14[OBJC_IVAR____TtC26DocumentManagerExecutables16DOCCopyOperation_undoManager] = a4;
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
        v16 = a4;

        v17 = v12;
        isa = Array._bridgeToObjectiveC()().super.isa;

        v22.receiver = v14;
        v22.super_class = v13;
        v19 = objc_msgSendSuper2(&v22, sel_initWithItems_destinationFolder_, isa, v17);

        v20 = *((*MEMORY[0x277D85000] & *v19) + 0x1A0);
        v21 = v19;
        v20();

        return v19;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

void *specialized DOC_FICopyOperation.init(nodes:destinationFolder:isDuplication:undoManager:)(unint64_t a1, void *a2, char a3, void *a4, _BYTE *a5)
{
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_fiOperation] = 0;
  v10 = &a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_actionCompletionBlock];
  *v10 = 0;
  v10[1] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_doc_transferResults] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_targetFilenamesByURL] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_doc_targetFilenamesByNode] = 0;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_lastUsageUpdatePolicy] = 2;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_shouldBounceOnCollision] = 0;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_engineTypeUsed] = 0;
  v11 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_isDuplication;
  a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_isDuplication] = 0;
  v12 = &a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_resolutionForRemainingConflicts];
  v12[4] = 1;
  *v12 = 0;
  v13 = MEMORY[0x277D84F90];
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_sourceURLs] = MEMORY[0x277D84F90];
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_sourceItems] = a1;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_destinationFolder] = a2;
  swift_beginAccess();
  a5[v11] = a3;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_undoManager] = a4;
  *&a5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_resultNodes] = v13;
  v44.receiver = a5;
  v44.super_class = type metadata accessor for DOC_FICopyOperation();

  v14 = a2;
  v15 = a4;
  v16 = objc_msgSendSuper2(&v44, sel_init);
  v17 = a1 >> 62;
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_21:
    v33 = v16;
    goto LABEL_22;
  }

  result = __CocoaSet.count.getter();
  if (!result)
  {
    goto LABEL_21;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v41 = v16;
    MEMORY[0x24C1FC540](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v19 = v16;
    swift_unknownObjectRetain();
LABEL_6:
    swift_getObjectType();
    v20 = DOCNode.isFINode.getter();
    swift_unknownObjectRelease();
    if (v20)
    {
      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (v21)
      {
        v22 = v21;
        if (v17)
        {
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);

          v24 = v14;
          _bridgeCocoaArray<A>(_:)();
          swift_bridgeObjectRelease_n();
        }

        else
        {

          v23 = v14;
          dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
          type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
          if (swift_dynamicCastMetatype() || (v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
          {
          }

          else
          {
            v42 = v15;
            v32 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
            do
            {
              objc_opt_self();
              if (!swift_dynamicCastObjCClass())
              {
                break;
              }

              v32 += 8;
              --v31;
            }

            while (v31);

            v15 = v42;
          }
        }

        v25 = [v22 fileOpNode];
        v26 = objc_allocWithZone(MEMORY[0x277D046D0]);
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FINode, 0x277D04700);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v28 = [v26 initWithSourceNodes:isa destinationFolder:v25];

        v29 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_fiOperation;
        swift_beginAccess();
        v30 = *(v16 + v29);
        *(v16 + v29) = v28;
LABEL_27:

        DOC_FICopyOperation.setUpCallbacks()();
        (*((*MEMORY[0x277D85000] & *v16) + 0x238))();

        return v16;
      }
    }

LABEL_22:
    v43 = v15;
    if (v17)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);

      _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
      if (!swift_dynamicCastMetatype())
      {
        v39 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v39)
        {
          v40 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
          do
          {
            objc_opt_self();
            if (!swift_dynamicCastObjCClass())
            {
              break;
            }

            v40 += 8;
            --v39;
          }

          while (v39);
        }
      }
    }

    objc_opt_self();
    v34 = swift_dynamicCastObjCClassUnconditional();
    v35 = objc_allocWithZone(MEMORY[0x277D046D0]);
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    swift_unknownObjectRetain();
    v36 = Array._bridgeToObjectiveC()().super.isa;

    v37 = [v35 initWithSourceItems:v36 destinationItem:v34];

    v38 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOC_FICopyOperation_fiOperation;
    swift_beginAccess();
    v30 = *(v16 + v38);
    *(v16 + v38) = v37;
    v15 = v43;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type SaveToFilesIntent.PerformError and conformance SaveToFilesIntent.PerformError()
{
  result = lazy protocol witness table cache variable for type SaveToFilesIntent.PerformError and conformance SaveToFilesIntent.PerformError;
  if (!lazy protocol witness table cache variable for type SaveToFilesIntent.PerformError and conformance SaveToFilesIntent.PerformError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SaveToFilesIntent.PerformError and conformance SaveToFilesIntent.PerformError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SaveToFilesIntent.PerformError and conformance SaveToFilesIntent.PerformError;
  if (!lazy protocol witness table cache variable for type SaveToFilesIntent.PerformError and conformance SaveToFilesIntent.PerformError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SaveToFilesIntent.PerformError and conformance SaveToFilesIntent.PerformError);
  }

  return result;
}

void specialized SaveToFilesIntent.save(_:destinationFolder:completionBlock:)(uint64_t a1, void *a2, void (*a3)(id, uint64_t), uint64_t a4)
{
  v67 = a3;
  v68 = a4;
  v6 = type metadata accessor for FINodeEntity(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v70 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v14 = &v63 - v13;
  v15 = MEMORY[0x277D84F90];
  v71[0] = MEMORY[0x277D84F90];
  v16 = *(a1 + 16);
  v69 = a2;
  v66 = v12;
  if (v16)
  {
    v17 = *(v12 + 32);
    v18 = *(v7 + 80);
    v65 = a1;
    v19 = a1 + ((v18 + 32) & ~v18);
    v20 = *(v7 + 72);
    v21 = v16;
    do
    {
      outlined init with copy of FINodeEntity(v19, v14);
      v22 = *&v14[v17];
      v23 = outlined destroy of FINodeEntity(v14);
      MEMORY[0x24C1FB090](v23);
      if (*((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v64 = *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v19 += v20;
      --v21;
    }

    while (v21);
    v24 = v71[0];
    a2 = v69;
    a1 = v65;
    if (!(v71[0] >> 62))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_7:

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      v25 = v24;
      goto LABEL_8;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  v25 = _bridgeCocoaArray<A>(_:)();

LABEL_8:
  v26 = [objc_opt_self() shared];
  v27 = specialized makeDOCCopyOperation(nodes:destinationFolder:isDuplication:undoManager:)(v25, a2, 0, v26);
  v29 = v28;

  if (!v27)
  {

    v45 = [objc_allocWithZone(MEMORY[0x277CCA9B8]) initWithDomain:*MEMORY[0x277CCA050] code:4 userInfo:0];
    v67(v45, 1);

    return;
  }

  if (v16)
  {
    v63 = v24;
    v64 = v29;
    v65 = v27;
    v30 = *(v66 + 32);
    v31 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v32 = *(v7 + 72);
    v33 = MEMORY[0x277D84F90];
    do
    {
      v34 = v70;
      outlined init with copy of FINodeEntity(v31, v70);
      v35 = *(v34 + v30);
      type metadata accessor for DOCHashableNode();
      v36 = swift_allocObject();
      *(v36 + 16) = v35;
      v37 = v35;
      v38 = [v37 displayName];
      v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v41 = v40;

      outlined destroy of FINodeEntity(v34);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v33[2] + 1, 1, v33);
      }

      v43 = v33[2];
      v42 = v33[3];
      if (v43 >= v42 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v33);
      }

      v33[2] = v43 + 1;
      v44 = &v33[3 * v43];
      v44[4] = v36;
      v44[5] = v39;
      v44[6] = v41;
      v31 += v32;
      --v16;
    }

    while (v16);
    v29 = v64;
    v27 = v65;
    a2 = v69;
  }

  else if (!*(v15 + 16))
  {
    v46 = MEMORY[0x277D84F98];
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy26DocumentManagerExecutables15DOCHashableNodeCSSGMd, &_ss18_DictionaryStorageCy26DocumentManagerExecutables15DOCHashableNodeCSSGMR);
  v46 = static _DictionaryStorage.allocate(capacity:)();
LABEL_22:
  v71[0] = v46;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v47, 1, v71);
  ObjectType = swift_getObjectType();

  (*(v29 + 104))(v71[0], ObjectType, v29);
  (*(v29 + 48))(2, ObjectType, v29);
  (*(v29 + 24))(1, ObjectType, v29);
  v49 = swift_allocObject();
  v49[2] = v67;
  v49[3] = v68;
  v49[4] = a2;
  v49[5] = v27;
  v49[6] = v29;
  v50 = *(v29 + 8);
  v51 = *(v50 + 16);

  v52 = a2;
  swift_unknownObjectRetain();
  v51(partial apply for closure #3 in SaveToFilesIntent.save(_:destinationFolder:completionBlock:), v49, ObjectType, v50);
  if (one-time initialization token for AppIntents != -1)
  {
    swift_once();
  }

  v53 = type metadata accessor for Logger();
  __swift_project_value_buffer(v53, static Logger.AppIntents);
  swift_unknownObjectRetain();
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v71[1] = v29;
    v72 = v57;
    *v56 = 136315138;
    v71[0] = v27;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables17SomeCopyOperation_pMd, &_s26DocumentManagerExecutables17SomeCopyOperation_pMR);
    v58 = String.init<A>(describing:)();
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v72);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_2493AC000, v54, v55, "Adding copy operation %s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x24C1FE850](v57, -1, -1);
    MEMORY[0x24C1FE850](v56, -1, -1);
  }

  v61 = [objc_opt_self() defaultManager];
  v62 = swift_unknownObjectRetain();
  specialized FPItemManager.scheduleOperation(_:)(v62, ObjectType, v50);

  swift_unknownObjectRelease_n();
}

uint64_t specialized SaveToFilesIntent.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables12FINodeEntityVSgMd, &_s26DocumentManagerExecutables12FINodeEntityVSgMR);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v71 = v52 - v2;
  v76 = type metadata accessor for InputConnectionBehavior();
  v78 = *(v76 - 8);
  MEMORY[0x28223BE20](v76, v3);
  v75 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents12IntentDialogVSgMd, &_s10AppIntents12IntentDialogVSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v73 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v72 = v52 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v77 = v52 - v13;
  v14 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v19 - 8, v20);
  v21 = type metadata accessor for String.LocalizationValue();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v23 = type metadata accessor for LocalizedStringResource();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = v52 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMd, &_s10AppIntents15IntentParameterCySay26DocumentManagerExecutables12FINodeEntityVGGMR);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v28 = *MEMORY[0x277CC9110];
  v29 = *(v15 + 104);
  v29(v18, v28, v14);
  v74 = v27;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v66 = v28;
  v69 = v15 + 104;
  v70 = v14;
  v65 = v29;
  v29(v18, v28, v14);
  v30 = v77;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v31 = *(v24 + 56);
  v67 = v24 + 56;
  v68 = v23;
  v63 = v31;
  v31(v30, 0, 1, v23);
  v79[0] = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  v33 = *(type metadata accessor for UTType() - 8);
  v34 = *(v33 + 72);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v59 = *(v33 + 80);
  v64 = v32;
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  v62 = v35;
  static UTType.item.getter();
  v60 = v34;
  static UTType.folder.getter();
  if (one-time initialization token for needsInputItemsDialog != -1)
  {
    swift_once();
  }

  v36 = type metadata accessor for IntentDialog();
  v37 = __swift_project_value_buffer(v36, static SaveToFilesIntent.needsInputItemsDialog);
  v38 = *(v36 - 8);
  v39 = *(v38 + 16);
  v40 = v72;
  v56 = v38 + 16;
  v55 = v39;
  v39(v72, v37, v36);
  v41 = *(v38 + 56);
  v41(v40, 0, 1, v36);
  v58 = v38 + 56;
  v57 = v41;
  v41(v73, 1, 1, v36);
  v42 = *(v78 + 104);
  v54 = *MEMORY[0x277CBA308];
  v78 += 104;
  v53 = v42;
  v42(v75);
  v52[1] = lazy protocol witness table accessor for type FINodeEntity and conformance FINodeEntity(&lazy protocol witness table cache variable for type FINodeEntity and conformance FINodeEntity, type metadata accessor for FINodeEntity, &protocol conformance descriptor for FINodeEntity);
  v61 = IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  v52[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMd, &_s10AppIntents15IntentParameterCy26DocumentManagerExecutables12FINodeEntityVGMR);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v43 = v66;
  v44 = v70;
  v45 = v65;
  v65(v18, v66, v70);
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v45(v18, v43, v44);
  v46 = v77;
  LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
  v63(v46, 0, 1, v68);
  v47 = type metadata accessor for FINodeEntity(0);
  (*(*(v47 - 8) + 56))(v71, 1, 1, v47);
  *(swift_allocObject() + 16) = xmmword_249B9A480;
  static UTType.folder.getter();
  if (one-time initialization token for needsDestinationDialog != -1)
  {
    swift_once();
  }

  v48 = __swift_project_value_buffer(v36, static SaveToFilesIntent.needsDestinationDialog);
  v49 = v72;
  v55(v72, v48, v36);
  v50 = v57;
  v57(v49, 0, 1, v36);
  v50(v73, 1, 1, v36);
  v53(v75, v54, v76);
  IntentParameter<>.init(title:description:default:supportedContentTypes:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  return v61;
}

uint64_t partial apply for closure #1 in closure #1 in SaveToFilesIntent.save(_:to:)(void *a1, char a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySaySo7DOCNode_pGs5Error_pGMd, &_sScCySaySo7DOCNode_pGs5Error_pGMR);

  return closure #1 in closure #1 in SaveToFilesIntent.save(_:to:)(a1, a2 & 1);
}

uint64_t DOCTabSwitcherStyle.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x736261546F6ELL;
    case 2:
      return 0x74616F6C46706F74;
    case 1:
      return 0x61426D6F74746F62;
  }

  type metadata accessor for DOCTabSwitcherStyle(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t DOCTabSwitcherStyle.sidebarCanPresentNonBrowseTabItemContent.getter(unint64_t a1)
{
  if (a1 < 3)
  {
    return (a1 & 1) == 0;
  }

  type metadata accessor for DOCTabSwitcherStyle(0);
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DOCTabSwitcherStyle(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    return 0x736261546F6ELL;
  }

  if (v2 == 2)
  {
    return 0x74616F6C46706F74;
  }

  if (v2 == 1)
  {
    return 0x61426D6F74746F62;
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall DOCIsRunningUnitTests()()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(v2 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x8000000249BE9850, MEMORY[0x277D83758], specialized __RawDictionaryStorage.find<A>(_:hashValue:));
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void doc_fatalErrorUnrecognizedEnumValueEncountered(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v1 = _typeName(_:qualified:)();
  MEMORY[0x24C1FAEA0](v1);

  MEMORY[0x24C1FAEA0](0x6E776F6E6B6E7528, 0xEA0000000000203ALL);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  _StringGuts.grow(_:)(49);

  MEMORY[0x24C1FAEA0](0, 0xE000000000000000);
  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void doc_warnUnrecognizedEnumValueEncountered(_:)(void *a1)
{
  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v1 = _typeName(_:qualified:)();
  MEMORY[0x24C1FAEA0](v1);

  MEMORY[0x24C1FAEA0](0x6E776F6E6B6E7528, 0xEA0000000000203ALL);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v8);

    *(v5 + 4) = v7;
    _os_log_impl(&dword_2493AC000, v3, v4, "Warning: Unrecognized enum value encountered => %s)", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  else
  {
  }
}

void static DOCDeviceModel.current.getter(char *a1@<X8>)
{
  v3 = MobileGestalt_get_current_device();
  if (v3)
  {
    v4 = v3;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber > 2)
    {
      if (deviceClassNumber == 11)
      {
        v6 = 3;
        goto LABEL_12;
      }

      if (deviceClassNumber == 3)
      {
        v6 = 1;
        goto LABEL_12;
      }
    }

    else
    {
      if (deviceClassNumber == 1)
      {
        v6 = 0;
        goto LABEL_12;
      }

      if (deviceClassNumber == 2)
      {
        v6 = 2;
LABEL_12:
        *a1 = v6;
        return;
      }
    }

    v6 = 4;
    goto LABEL_12;
  }

  __break(1u);
}

Swift::Void __swiftcall DOCAssertUnexpectedError(errorTitle:message:)(Swift::String errorTitle, Swift::String message)
{
  object = message._object;
  countAndFlagsBits = message._countAndFlagsBits;
  v4 = MEMORY[0x24C1FAD20](errorTitle._countAndFlagsBits, errorTitle._object);
  v5 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);
  v6 = MEMORY[0x24C1FAD20](countAndFlagsBits, object);
  DOCAssertWithIntenalBuildAlert();
}

uint64_t AttributedString.init(doc_localized:options:locale:comment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v27 = a6;
  v29 = a4;
  v30 = a5;
  v26 = a1;
  v28 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v26 - v12;
  v14 = type metadata accessor for AttributedString.FormattingOptions();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for String.LocalizationValue();
  v20 = *(v19 - 8);
  v22 = MEMORY[0x28223BE20](v19, v21);
  (*(v20 + 16))(&v26 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v19, v22);
  (*(v15 + 16))(v18, a2, v14);
  v24 = _DocumentManagerBundle();
  outlined init with copy of DOCGridLayout.Spec?(a3, v13, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  AttributedString.init(localized:options:table:bundle:locale:comment:)();
  outlined destroy of CharacterSet?(a3, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(v15 + 8))(a2, v14);
  return (*(v20 + 8))(v26, v19);
}

id one-time initialization function for DocumentManager()
{
  result = DOCLogHandle();
  static DOCLog.DocumentManager = result;
  return result;
}

id one-time initialization function for Persona()
{
  result = DOCPersonaLogHandle();
  static DOCLog.Persona = result;
  return result;
}

id one-time initialization function for SmartFolders()
{
  result = DOCSmartFolderLogHandle();
  static DOCLog.SmartFolders = result;
  return result;
}

id one-time initialization function for Picker()
{
  result = DOCPickerLogHandle();
  static DOCLog.Picker = result;
  return result;
}

id one-time initialization function for Rename()
{
  result = DOCRenameLogHandle();
  static DOCLog.Rename = result;
  return result;
}

id one-time initialization function for BrowserHistory()
{
  result = DOCBrowserHistoryLogHandle();
  static DOCLog.BrowserHistory = result;
  return result;
}

id one-time initialization function for Tests()
{
  result = DOCTestsLogHandle();
  static DOCLog.Tests = result;
  return result;
}

id one-time initialization function for DownloadService()
{
  result = DOCDownloadServiceLogHandle();
  static DOCLog.DownloadService = result;
  return result;
}

id one-time initialization function for StateStore()
{
  result = DOCStateStoreLogHandle();
  static DOCLog.StateStore = result;
  return result;
}

id one-time initialization function for Analytics()
{
  result = DOCAnalyticsLogHandle();
  static DOCLog.Analytics = result;
  return result;
}

id one-time initialization function for Application()
{
  result = DOCApplicationLogHandle();
  static DOCLog.Application = result;
  return result;
}

id one-time initialization function for ProgressUI()
{
  result = DOCProgressUILogHandle();
  static DOCLog.ProgressUI = result;
  return result;
}

id one-time initialization function for Enumeration()
{
  result = DOCEnumerationLogHandle();
  static DOCLog.Enumeration = result;
  return result;
}

id one-time initialization function for FileProviderSyncState()
{
  result = DOCFileProviderSyncStateLogHandle();
  static DOCLog.FileProviderSyncState = result;
  return result;
}

id one-time initialization function for AppIntents()
{
  result = DOCAppIntentsLogHandle();
  static DOCLog.AppIntents = result;
  return result;
}

id one-time initialization function for Sidebar()
{
  result = DOCSidebarLogHandle();
  static DOCLog.Sidebar = result;
  return result;
}

id one-time initialization function for Preview()
{
  result = DOCPreviewLogHandle();
  static DOCLog.Preview = result;
  return result;
}

Swift::Int DOCDeviceModel.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](v1);
  return Hasher._finalize()();
}

Swift::Bool __swiftcall DOCIsAttachedInDebugger()()
{
  if (one-time initialization token for _isAttachedInDebugger != -1)
  {
    swift_once();
  }

  return _isAttachedInDebugger;
}

uint64_t doc_unrecognizedEnumValueDescription(_:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v1 = _typeName(_:qualified:)();
  MEMORY[0x24C1FAEA0](v1);

  MEMORY[0x24C1FAEA0](0x6E776F6E6B6E7528, 0xEA0000000000203ALL);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return 0;
}

uint64_t one-time initialization function for _isAttachedInDebugger()
{
  result = closure #1 in variable initialization expression of _isAttachedInDebugger();
  _isAttachedInDebugger = result & 1;
  return result;
}

uint64_t closure #1 in variable initialization expression of _isAttachedInDebugger()
{
  v14 = *MEMORY[0x277D85DE8];
  bzero(v13, 0x288uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int32VGMd, &_ss23_ContiguousArrayStorageCys5Int32VGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_249BA08D0;
  *(v0 + 32) = 0xE00000001;
  *(v0 + 40) = 1;
  *(v0 + 44) = getpid();
  v11 = 648;
  v1 = sysctl((v0 + 32), 4u, v13, &v11, 0, 0);

  if (!v1)
  {
    return (v13[33] >> 3) & 1;
  }

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.UI);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    MEMORY[0x24C1F9920]();
    v7 = dispatch thunk of CustomStringConvertible.description.getter();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v12);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2493AC000, v3, v4, "sysctl(3) failed: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x24C1FE850](v6, -1, -1);
    MEMORY[0x24C1FE850](v5, -1, -1);
  }

  return 0;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(float64x2_t *a1)
{
  Hasher.init(_seed:)();
  v2 = a1[7].f64[0];
  v3 = a1[7].f64[1];
  v4 = a1[8].f64[0];
  v5 = a1[8].f64[1];
  v6 = a1[9].f64[0];
  v7 = a1[9].f64[1];
  v8 = a1[10].f64[0];
  DOCGridLayout.Spec.hash(into:)(v12);
  CGSize.hash(into:)(v2, v3);
  UIEdgeInsets.hash(into:)(v4, v5, v6, v7);
  v9 = 0.0;
  if (v8 != 0.0)
  {
    v9 = v8;
  }

  MEMORY[0x24C1FCC00](*&v9);
  v10 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v10);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t *a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

{
  Hasher.init(_seed:)();
  v2 = *(a1 + 24);
  v3 = a1[4];
  v4 = *(a1 + 15);
  v15 = *(a1 + 13);
  v16 = v4;
  v5 = *(a1 + 19);
  v17 = *(a1 + 17);
  v18 = v5;
  v6 = *(a1 + 7);
  v11 = *(a1 + 5);
  v12 = v6;
  v7 = *(a1 + 11);
  v13 = *(a1 + 9);
  v14 = v7;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();

  MEMORY[0x24C1FCBD0](qword_249BB0DA0[v2]);
  MEMORY[0x24C1FCBD0](v3);
  DOCItemCollectionLayoutTraits.ListItemTraits.hash(into:)(v10);
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    MEMORY[0x24C1FCBD0](1);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x24C1FCBD0](0);
    NSObject.hash(into:)();
  }

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2 & 1, v4);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  Hasher.init(_seed:)();
  if (v3)
  {
    if (v3 != 1)
    {
      if (a1 > 1)
      {
        if (a1 ^ 2 | a2)
        {
          v7 = 3;
        }

        else
        {
          v7 = 2;
        }
      }

      else
      {
        v7 = (a1 | a2) != 0;
      }

      MEMORY[0x24C1FCBD0](v7);
      goto LABEL_12;
    }

    v6 = 5;
  }

  else
  {
    v6 = 4;
  }

  MEMORY[0x24C1FCBD0](v6);
  String.hash(into:)();
LABEL_12:
  v8 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v3, v8);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  Hasher.init(_seed:)();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x24C1FCBD0](1);
      MEMORY[0x24C1FCC00](a1);
      MEMORY[0x24C1FCC00](a2);
    }

    else
    {
      MEMORY[0x24C1FCBD0](2);
    }
  }

  else
  {
    MEMORY[0x24C1FCBD0](0);
    MEMORY[0x24C1FCC00](a1);
  }

  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v3, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, unint64_t a2)
{
  Hasher.init(_seed:)();
  switch(a2)
  {
    case 0uLL:
      v4 = 0;
      goto LABEL_7;
    case 1uLL:
      v4 = 2;
      goto LABEL_7;
    case 2uLL:
      v4 = 3;
LABEL_7:
      MEMORY[0x24C1FCBD0](v4);
      goto LABEL_9;
  }

  MEMORY[0x24C1FCBD0](1);
  String.hash(into:)();
LABEL_9:
  v5 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v5);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, v2);
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1 & 1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(void *a1)
{
  Hasher.init(_seed:)();
  __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v8 = 3;
      }

      else
      {
        v8 = 4;
      }

      goto LABEL_20;
    }

    if (!a2)
    {
      v8 = 0;
      goto LABEL_20;
    }

    if (a2 == 1)
    {
      v8 = 2;
      goto LABEL_20;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v8 = 5;
      }

      else
      {
        v8 = 6;
      }

      goto LABEL_20;
    }

    switch(a2)
    {
      case 6:
        v8 = 7;
        goto LABEL_20;
      case 7:
        v8 = 8;
        goto LABEL_20;
      case 8:
        v8 = 9;
LABEL_20:
        MEMORY[0x24C1FCBD0](v8);
        goto LABEL_21;
    }
  }

  MEMORY[0x24C1FCBD0](1);
  String.hash(into:)();
LABEL_21:
  specialized Set.hash(into:)(v11, a3);
  specialized Dictionary<>.hash(into:)(v11, a4);
  v9 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, a4, v9);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v8 = ~v4;
  while (1)
  {
    v9 = (*(v3 + 48) + 16 * v5);
    v10 = *v9;
    v11 = v9[1];
    if (v11 <= 3)
    {
      if (v11 > 1)
      {
        if (v11 == 2)
        {
          if (a2 == 2)
          {
            v15 = *v9;
            v16 = 2;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v12 = 2;
        }

        else
        {
          if (a2 == 3)
          {
            v15 = *v9;
            v16 = 3;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v12 = 3;
        }

        goto LABEL_33;
      }

      if (!v11)
      {
        if (!a2)
        {
          v15 = *v9;
          v16 = 0;
          goto LABEL_53;
        }

        outlined copy of ColumnType(a1, a2);
        v12 = 0;
        goto LABEL_33;
      }

      if (v11 == 1)
      {
        if (a2 == 1)
        {
          v15 = *v9;
          v16 = 1;
          goto LABEL_53;
        }

        outlined copy of ColumnType(a1, a2);
        v12 = 1;
        goto LABEL_33;
      }
    }

    else
    {
      if (v11 <= 5)
      {
        if (v11 == 4)
        {
          if (a2 == 4)
          {
            v15 = *v9;
            v16 = 4;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v12 = 4;
        }

        else
        {
          if (a2 == 5)
          {
            v15 = *v9;
            v16 = 5;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v12 = 5;
        }

        goto LABEL_33;
      }

      switch(v11)
      {
        case 6:
          if (a2 == 6)
          {
            v15 = *v9;
            v16 = 6;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v12 = 6;
          goto LABEL_33;
        case 7:
          if (a2 == 7)
          {
            v15 = *v9;
            v16 = 7;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v12 = 7;
          goto LABEL_33;
        case 8:
          if (a2 == 8)
          {
            v15 = *v9;
            v16 = 8;
            goto LABEL_53;
          }

          outlined copy of ColumnType(a1, a2);
          v12 = 8;
          goto LABEL_33;
      }
    }

    if (a2 < 9)
    {
      outlined copy of ColumnType(a1, a2);
      outlined copy of ColumnType(v10, v11);
      v12 = v11;
LABEL_33:
      outlined consume of ColumnType(v10, v12);
      outlined consume of ColumnType(a1, a2);
      goto LABEL_34;
    }

    if (v10 == a1 && v11 == a2)
    {
      break;
    }

    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of ColumnType(a1, a2);
    outlined copy of ColumnType(v10, v11);
    outlined consume of ColumnType(v10, v11);
    outlined consume of ColumnType(a1, a2);
    if (v14)
    {
      return v5;
    }

LABEL_34:
    v5 = (v5 + 1) & v8;
    if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  outlined copy of ColumnType(a1, a2);
  outlined copy of ColumnType(a1, a2);
  v15 = a1;
  v16 = a2;
LABEL_53:
  outlined consume of ColumnType(v15, v16);
  outlined consume of ColumnType(a1, a2);
  return v5;
}

{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12 <= 4)
      {
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            if (a2 == 2)
            {
              return v6;
            }
          }

          else if (v12 == 3)
          {
            if (a2 == 3)
            {
              return v6;
            }
          }

          else if (a2 == 4)
          {
            return v6;
          }

          goto LABEL_4;
        }

        if (!v12)
        {
          if (!a2)
          {
            return v6;
          }

          goto LABEL_4;
        }

        if (v12 == 1)
        {
          if (a2 == 1)
          {
            return v6;
          }

          goto LABEL_4;
        }
      }

      else
      {
        if (v12 <= 7)
        {
          if (v12 == 5)
          {
            if (a2 == 5)
            {
              return v6;
            }
          }

          else if (v12 == 6)
          {
            if (a2 == 6)
            {
              return v6;
            }
          }

          else if (a2 == 7)
          {
            return v6;
          }

          goto LABEL_4;
        }

        switch(v12)
        {
          case 8:
            if (a2 == 8)
            {
              return v6;
            }

            goto LABEL_4;
          case 9:
            if (a2 == 9)
            {
              return v6;
            }

            goto LABEL_4;
          case 10:
            if (a2 == 10)
            {
              return v6;
            }

            goto LABEL_4;
        }
      }

      if (a2 >= 0xB)
      {
        v13 = *v11 == a1 && v12 == a2;
        if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (v12 == 1)
        {
          if (a2 == 1)
          {
            return v6;
          }
        }

        else if (v12 == 2)
        {
          if (a2 == 2)
          {
            return v6;
          }
        }

        else if (a2 >= 3)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(float64x2_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    v7 = a1[5];
    v57 = a1[4];
    v58 = v7;
    v59 = a1[6];
    v8 = a1[1];
    v53 = *a1;
    v54 = v8;
    v9 = a1[3];
    v55 = a1[2];
    v56 = v9;
    v10 = a1[7].f64[0];
    v11 = a1[7].f64[1];
    v29 = a1[8];
    v30 = a1[9];
    v12 = a1[10].f64[0];
    do
    {
      v13 = *(v2 + 48) + 168 * v4;
      v15 = *(v13 + 16);
      v14 = *(v13 + 32);
      v46[0] = *v13;
      v46[1] = v15;
      v46[2] = v14;
      v16 = *(v13 + 96);
      v18 = *(v13 + 48);
      v17 = *(v13 + 64);
      v46[5] = *(v13 + 80);
      v46[6] = v16;
      v46[3] = v18;
      v46[4] = v17;
      v20 = *(v13 + 128);
      v19 = *(v13 + 144);
      v21 = *(v13 + 112);
      v50 = *(v13 + 160);
      v48 = v20;
      v49 = v19;
      v47 = v21;
      v22 = *(v13 + 64);
      v23 = *(v13 + 80);
      v24 = *(v13 + 32);
      v42 = *(v13 + 48);
      v43 = v22;
      v25 = *(v13 + 96);
      v44 = v23;
      v45 = v25;
      v26 = *v13;
      v40 = *(v13 + 16);
      v41 = v24;
      v36 = v57;
      v37 = v58;
      v38 = v59;
      v39 = v26;
      v32 = v53;
      v33 = v54;
      v34 = v55;
      v35 = v56;
      outlined init with copy of DOCGridLayout.LayoutCalculator.CalculationVariables(v46, v31);
      outlined init with copy of DOCGridLayout.LayoutCalculator.CalculationVariables(a1, v31);
      v27 = specialized static DOCGridLayout.Spec.== infix(_:_:)(&v39, &v32);
      v51[4] = v36;
      v51[5] = v37;
      v51[6] = v38;
      v51[0] = v32;
      v51[1] = v33;
      v51[2] = v34;
      v51[3] = v35;
      outlined destroy of DOCGridLayout.Spec(v51);
      v52[4] = v43;
      v52[5] = v44;
      v52[6] = v45;
      v52[0] = v39;
      v52[1] = v40;
      v52[2] = v41;
      v52[3] = v42;
      outlined destroy of DOCGridLayout.Spec(v52);
      if (v27 && *&v47 == v10 && *(&v47 + 1) == v11 && (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v48, v29), vceqq_f64(v49, v30)))) & 1) != 0 && v50 == v12)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a4;
  v23[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v11.n128_f64[0] = MEMORY[0x28223BE20](v8, v10);
  v13 = v23 - v12;
  v24 = v6;
  v14 = -1 << *(v6 + 32);
  v15 = a2 & ~v14;
  v23[0] = v6 + 64;
  if ((*(v6 + 64 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v13, *(v24 + 48) + v20 * v15, v8, v11);
      lazy protocol witness table accessor for type UUID and conformance UUID(v25, v26, v27);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v13, v8);
      if (v21)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
    }

    while (((*(v23[0] + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
  }

  return v15;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    type metadata accessor for NSMutableAttributedString(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = static NSObject.== infix(_:_:)();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = *a1;
    v7 = a1[1];
    do
    {
      v8 = (*(v2 + 48) + 40 * v4);
      if (*v8 == v6 && v8[1] == v7)
      {
        break;
      }

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v36 = a1[4];
    v37 = *(a1 + 24);
    v6 = *(a1 + 15);
    v63 = *(a1 + 13);
    v64 = v6;
    v7 = *(a1 + 19);
    v65 = *(a1 + 17);
    v66 = v7;
    v8 = *(a1 + 7);
    v59 = *(a1 + 5);
    v60 = v8;
    v9 = *(a1 + 11);
    v61 = *(a1 + 9);
    v62 = v9;
    do
    {
      v10 = *(v2 + 48) + 168 * v4;
      v12 = *(v10 + 16);
      v11 = *(v10 + 32);
      v56 = *v10;
      v57 = v12;
      *v58 = v11;
      v13 = *(v10 + 96);
      v15 = *(v10 + 48);
      v14 = *(v10 + 64);
      *&v58[48] = *(v10 + 80);
      *&v58[64] = v13;
      *&v58[16] = v15;
      *&v58[32] = v14;
      v17 = *(v10 + 128);
      v16 = *(v10 + 144);
      v18 = *(v10 + 112);
      *&v58[128] = *(v10 + 160);
      *&v58[96] = v17;
      *&v58[112] = v16;
      *&v58[80] = v18;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
      {
        outlined init with copy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(&v56, v55);
      }

      else
      {
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined init with copy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(&v56, v55);

        if ((v23 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v26 = v25;
      if (v24 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v26 == v27)
      {
      }

      else
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v28 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;
      if (v29 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v31 == v32)
      {
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v33 & 1) == 0)
        {
          goto LABEL_3;
        }
      }

      if (qword_249BB0DA0[SBYTE8(v57)] != qword_249BB0DA0[v37] || *v58 != v36)
      {
LABEL_3:
        outlined destroy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(&v56);
        goto LABEL_4;
      }

      v50 = *&v58[72];
      v51 = *&v58[88];
      v52 = *&v58[104];
      v53 = *&v58[120];
      v46 = *&v58[8];
      v47 = *&v58[24];
      v48 = *&v58[40];
      v49 = *&v58[56];
      v42 = v63;
      v43 = v64;
      v44 = v65;
      v45 = v66;
      v38 = v59;
      v39 = v60;
      v40 = v61;
      v41 = v62;
      outlined init with copy of DOCItemCollectionLayoutTraits.ListItemTraits(&v58[8], v55);
      outlined init with copy of DOCItemCollectionLayoutTraits.ListItemTraits(&v59, v55);
      v34 = specialized static DOCItemCollectionLayoutTraits.ListItemTraits.== infix(_:_:)(&v46, &v38);
      v54[4] = v42;
      v54[5] = v43;
      v54[6] = v44;
      v54[7] = v45;
      v54[0] = v38;
      v54[1] = v39;
      v54[2] = v40;
      v54[3] = v41;
      outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v54);
      v55[4] = v50;
      v55[5] = v51;
      v55[6] = v52;
      v55[7] = v53;
      v55[0] = v46;
      v55[1] = v47;
      v55[2] = v48;
      v55[3] = v49;
      outlined destroy of DOCItemCollectionLayoutTraits.ListItemTraits(v55);
      outlined destroy of DOCItemCollectionListSpec.DOCItemHeightDeterminingFactors(&v56);
      if (v34)
      {
        return v4;
      }

LABEL_4:
      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v9 = ~v5;
    do
    {
      v10 = *(v7 + 48) + 16 * v6;
      v11 = *v10;
      if (*(v10 + 8))
      {
        if (a2)
        {
          v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v14 = v13;
          if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
          {

            return v6;
          }

          v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v17)
          {
            return v6;
          }
        }
      }

      else if ((a2 & 1) == 0)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
        v18 = v11;
        v19 = static NSObject.== infix(_:_:)();

        if (v19)
        {
          return v6;
        }
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    v13 = a1 != 3;
    v14 = a1 != 2;
    v15 = a1 != 1;
    if (a2)
    {
      v13 = 1;
      v14 = 1;
      v15 = 1;
    }

    if (a3 != 2)
    {
      v13 = 1;
    }

    v27 = v13;
    v16 = a3 != 2 || v14;
    v26 = v16;
    v17 = a3 != 2 || v15;
    v25 = v17;
    if (a2 | a1)
    {
      v18 = 0;
    }

    else
    {
      v18 = a3 == 2;
    }

    do
    {
      v19 = v12 + 24 * v7;
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      if (v22)
      {
        if (v22 != 1)
        {
          if (v20 > 1)
          {
            if (v20 ^ 2 | v21)
            {
              if (!v27)
              {
                return v7;
              }
            }

            else if ((v26 & 1) == 0)
            {
              return v7;
            }
          }

          else if (v20 | v21)
          {
            if ((v25 & 1) == 0)
            {
              return v7;
            }
          }

          else if (v18)
          {
            return v7;
          }

          goto LABEL_16;
        }

        if (a3 != 1)
        {
          goto LABEL_16;
        }
      }

      else if (a3)
      {
        goto LABEL_16;
      }

      v23 = v20 == a1 && v21 == a2;
      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return v7;
      }

LABEL_16:
      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

{
  v6 = -1 << *(v4 + 32);
  result = a4 & ~v6;
  if ((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v8 = ~v6;
    v10 = a3 == 2 && (a2 | a1) == 0;
    do
    {
      v11 = *(v4 + 48) + 24 * result;
      v12 = *v11;
      if (*(v11 + 16))
      {
        if (*(v11 + 16) == 1)
        {
          if (a3 == 1)
          {
            v13 = *(v11 + 8);
            if (v12 == a1 && v13 == a2)
            {
              return result;
            }
          }
        }

        else if (v10)
        {
          return result;
        }
      }

      else if (!a3 && v12 == a1)
      {
        return result;
      }

      result = (result + 1) & v8;
    }

    while (((*(v4 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 > 4)
      {
        if (*(*(v2 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v11 = 0xE400000000000000;
            v10 = 1684957547;
          }

          else
          {
            v11 = 0xE800000000000000;
            v10 = 0x7942646572616873;
          }
        }

        else if (v6 == 7)
        {
          v10 = 0x6E6F697461657263;
          v11 = 0xEC00000065746144;
        }

        else if (v6 == 8)
        {
          v10 = 0x6564644165746164;
          v11 = 0xE900000000000064;
        }

        else
        {
          v10 = 0x745364756F6C6369;
          v11 = 0xEC00000073757461;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 1936154996;
        }

        else
        {
          v7 = 1702521203;
        }

        if (v6 == 2)
        {
          v7 = 1701667182;
        }

        v8 = *(*(v2 + 48) + v4) ? 0x646573557473616CLL : 0xD000000000000010;
        v9 = *(*(v2 + 48) + v4) ? 0xEC00000065746144 : 0x8000000249BC5DF0;
        v10 = *(*(v2 + 48) + v4) <= 1u ? v8 : v7;
        v11 = *(*(v2 + 48) + v4) <= 1u ? v9 : 0xE400000000000000;
      }

      v12 = 0x745364756F6C6369;
      if (v5 == 8)
      {
        v12 = 0x6564644165746164;
      }

      v13 = 0xEC00000073757461;
      if (v5 == 8)
      {
        v13 = 0xE900000000000064;
      }

      if (v5 == 7)
      {
        v12 = 0x6E6F697461657263;
        v13 = 0xEC00000065746144;
      }

      v14 = 0x7942646572616873;
      if (v5 == 5)
      {
        v14 = 1684957547;
      }

      v15 = 0xE800000000000000;
      if (v5 == 5)
      {
        v15 = 0xE400000000000000;
      }

      if (v5 <= 6)
      {
        v12 = v14;
        v13 = v15;
      }

      if (v5 == 3)
      {
        v16 = 1936154996;
      }

      else
      {
        v16 = 1702521203;
      }

      v17 = 0xE400000000000000;
      if (v5 == 2)
      {
        v16 = 1701667182;
        v17 = 0xE400000000000000;
      }

      if (v5)
      {
        v18 = 0x646573557473616CLL;
      }

      else
      {
        v18 = 0xD000000000000010;
      }

      if (v5)
      {
        v19 = 0xEC00000065746144;
      }

      else
      {
        v19 = 0x8000000249BC5DF0;
      }

      if (v5 <= 1)
      {
        v16 = v18;
        v17 = v19;
      }

      v20 = v5 <= 4 ? v16 : v12;
      v21 = v5 <= 4 ? v17 : v13;
      if (v10 == v20 && v11 == v21)
      {
        break;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v22 & 1) == 0)
      {
        v4 = (v4 + 1) & v24;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      v7 = v6 == 2 ? 7562856 : 1936093281;
      v8 = v6 == 2 ? 0xE300000000000000 : 0xE400000000000000;
      v9 = *(*(v2 + 48) + v4) ? 0x7461667865 : 0x736F64736DLL;
      v10 = *(*(v2 + 48) + v4) <= 1u ? v9 : v7;
      v11 = *(*(v2 + 48) + v4) <= 1u ? 0xE500000000000000 : v8;
      v12 = v5 == 2 ? 7562856 : 1936093281;
      v13 = v5 == 2 ? 0xE300000000000000 : 0xE400000000000000;
      v14 = v5 ? 0x7461667865 : 0x736F64736DLL;
      v15 = v5 <= 1 ? v14 : v12;
      v16 = v5 <= 1 ? 0xE500000000000000 : v13;
      if (v10 == v15 && v11 == v16)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x6574707972636E65;
          v8 = 0xE900000000000064;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0x736E655365736163;
          v8 = 0xED00006576697469;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE400000000000000;
            if (v7 != 1701736302)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE400000000000000;
        v7 = 1701736302;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6574707972636E65;
      }

      else
      {
        v10 = 0x736E655365736163;
      }

      if (v9 == 1)
      {
        v11 = 0xE900000000000064;
      }

      else
      {
        v11 = 0xED00006576697469;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        v8 = *(*(v2 + 48) + v4) ? 1684957547 : 1701736302;
        v9 = 0xE400000000000000;
      }

      else if (v7 == 2)
      {
        v9 = 0xE400000000000000;
        v8 = 1702125924;
      }

      else
      {
        v8 = v7 == 3 ? 1702521203 : 0x7942646572616873;
        v9 = v7 == 3 ? 0xE400000000000000 : 0xE800000000000000;
      }

      if (v6 == 3)
      {
        v10 = 1702521203;
      }

      else
      {
        v10 = 0x7942646572616873;
      }

      if (v6 == 3)
      {
        v11 = 0xE400000000000000;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      if (v6 == 2)
      {
        v10 = 1702125924;
        v11 = 0xE400000000000000;
      }

      v12 = v6 ? 1684957547 : 1701736302;
      v13 = v6 <= 1 ? v12 : v10;
      v14 = v6 <= 1 ? 0xE400000000000000 : v11;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0xE400000000000000;
        if (*(*(v2 + 48) + v4) == 1)
        {
          v8 = 2003789939;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v8 = 1701079400;
          v9 = a1;
          if (!a1)
          {
LABEL_14:
            v11 = 0xE600000000000000;
            if (v8 != 0x656C67676F74)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {
        v7 = 0xE600000000000000;
        v8 = 0x656C67676F74;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_14;
        }
      }

      if (v9 == 1)
      {
        v10 = 2003789939;
      }

      else
      {
        v10 = 1701079400;
      }

      v11 = 0xE400000000000000;
      if (v8 != v10)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_16:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x69726F7661666E75;
          v8 = 0xEA00000000006574;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE600000000000000;
          v7 = 0x656C67676F74;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE800000000000000;
            if (v7 != 0x657469726F766166)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE800000000000000;
        v7 = 0x657469726F766166;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x69726F7661666E75;
      }

      else
      {
        v10 = 0x656C67676F74;
      }

      if (v9 == 1)
      {
        v11 = 0xEA00000000006574;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    a3(0);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x64726177726F66;
    }

    else
    {
      v6 = 1801675106;
    }

    if (a1)
    {
      v7 = 0xE700000000000000;
    }

    else
    {
      v7 = 0xE400000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x64726177726F66 : 1801675106;
      v9 = *(*(v2 + 48) + v4) ? 0xE700000000000000 : 0xE400000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x637241656C707061;
    }

    else
    {
      v6 = 7367034;
    }

    if (a1)
    {
      v7 = 0xEC00000065766968;
    }

    else
    {
      v7 = 0xE300000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x637241656C707061 : 7367034;
      v9 = *(*(v2 + 48) + v4) ? 0xEC00000065766968 : 0xE300000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(void *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      outlined init with copy of DOCIdentityHashableLocation(*(v6 + 48) + 56 * v5, v12);
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1(v13, v13[3]);
      dispatch thunk of Hashable.hash(into:)();
      v9 = Hasher._finalize()();
      Hasher.init(_seed:)();
      __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
      dispatch thunk of Hashable.hash(into:)();
      v10 = Hasher._finalize()();
      outlined destroy of DOCIdentityHashableLocation(v12);
      if (v9 == v10)
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = -1 << *(v5 + 32);
  v7 = a5 & ~v6;
  if ((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v24 = ~v6;
    do
    {
      v12 = (*(v5 + 48) + 32 * v7);
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = v12[3];
      if (v14 <= 3)
      {
        if (v14 > 1)
        {
          if (v14 == 2)
          {
            if (a2 != 2)
            {
              outlined copy of ColumnType(a1, a2);
              v10 = v13;
              v11 = 2;
              goto LABEL_4;
            }

            outlined copy of ColumnType(*v12, 2uLL);

            outlined consume of ColumnType(v13, 2uLL);
            v17 = 2;
          }

          else
          {
            if (a2 != 3)
            {
              outlined copy of ColumnType(a1, a2);
              v10 = v13;
              v11 = 3;
LABEL_4:
              outlined consume of ColumnType(v10, v11);
              outlined consume of ColumnType(a1, a2);
              goto LABEL_5;
            }

            outlined copy of ColumnType(*v12, 3uLL);

            outlined consume of ColumnType(v13, 3uLL);
            v17 = 3;
          }

          goto LABEL_51;
        }

        if (!v14)
        {
          if (a2)
          {
            outlined copy of ColumnType(a1, a2);
            v10 = v13;
            v11 = 0;
            goto LABEL_4;
          }

          outlined copy of ColumnType(*v12, 0);

          outlined consume of ColumnType(v13, 0);
          v17 = 0;
          goto LABEL_51;
        }

        if (v14 == 1)
        {
          if (a2 != 1)
          {
            outlined copy of ColumnType(a1, a2);
            v10 = v13;
            v11 = 1;
            goto LABEL_4;
          }

          outlined copy of ColumnType(*v12, 1uLL);

          outlined consume of ColumnType(v13, 1uLL);
          v17 = 1;
          goto LABEL_51;
        }
      }

      else
      {
        if (v14 <= 5)
        {
          if (v14 == 4)
          {
            if (a2 != 4)
            {
              outlined copy of ColumnType(a1, a2);
              v10 = v13;
              v11 = 4;
              goto LABEL_4;
            }

            outlined copy of ColumnType(*v12, 4uLL);

            outlined consume of ColumnType(v13, 4uLL);
            v17 = 4;
          }

          else
          {
            if (a2 != 5)
            {
              outlined copy of ColumnType(a1, a2);
              v10 = v13;
              v11 = 5;
              goto LABEL_4;
            }

            outlined copy of ColumnType(*v12, 5uLL);

            outlined consume of ColumnType(v13, 5uLL);
            v17 = 5;
          }

          goto LABEL_51;
        }

        switch(v14)
        {
          case 6:
            if (a2 != 6)
            {
              outlined copy of ColumnType(a1, a2);
              v10 = v13;
              v11 = 6;
              goto LABEL_4;
            }

            outlined copy of ColumnType(*v12, 6uLL);

            outlined consume of ColumnType(v13, 6uLL);
            v17 = 6;
            goto LABEL_51;
          case 7:
            if (a2 != 7)
            {
              outlined copy of ColumnType(a1, a2);
              v10 = v13;
              v11 = 7;
              goto LABEL_4;
            }

            outlined copy of ColumnType(*v12, 7uLL);

            outlined consume of ColumnType(v13, 7uLL);
            v17 = 7;
            goto LABEL_51;
          case 8:
            if (a2 != 8)
            {
              outlined copy of ColumnType(a1, a2);
              v10 = v13;
              v11 = 8;
              goto LABEL_4;
            }

            outlined copy of ColumnType(*v12, 8uLL);

            outlined consume of ColumnType(v13, 8uLL);
            v17 = 8;
            goto LABEL_51;
        }
      }

      if (a2 < 9)
      {
        outlined copy of ColumnType(a1, a2);
        outlined copy of ColumnType(v13, v14);
        v10 = v13;
        v11 = v14;
        goto LABEL_4;
      }

      if (v13 != a1 || v14 != a2)
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of ColumnType(v13, v14);

        outlined copy of ColumnType(a1, a2);
        outlined copy of ColumnType(v13, v14);
        outlined consume of ColumnType(v13, v14);
        outlined consume of ColumnType(a1, a2);
        if ((v19 & 1) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_52;
      }

      outlined copy of ColumnType(a1, a2);

      outlined copy of ColumnType(a1, a2);
      outlined copy of ColumnType(a1, a2);
      outlined consume of ColumnType(a1, a2);
      v17 = a2;
LABEL_51:
      outlined consume of ColumnType(a1, v17);
LABEL_52:
      if ((_sSh2eeoiySbShyxG_ABtFZ26DocumentManagerExecutables10ColumnTypeO_Tt1g5(v15, a3) & 1) == 0)
      {
LABEL_55:
        outlined consume of ColumnType(v13, v14);

        goto LABEL_5;
      }

      v20 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZ26DocumentManagerExecutables10ColumnTypeO_AC10FormattersOTt1g5(v16, a4);
      outlined consume of ColumnType(v13, v14);

      if (v20)
      {
        return v7;
      }

LABEL_5:
      v7 = (v7 + 1) & v24;
    }

    while (((*(v5 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t lazy protocol witness table accessor for type DOCDeviceModel and conformance DOCDeviceModel()
{
  result = lazy protocol witness table cache variable for type DOCDeviceModel and conformance DOCDeviceModel;
  if (!lazy protocol witness table cache variable for type DOCDeviceModel and conformance DOCDeviceModel)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCDeviceModel and conformance DOCDeviceModel);
  }

  return result;
}

id DOCPreviewLogHandle()
{
  v0 = MEMORY[0x277D062D0];
  v1 = *MEMORY[0x277D062D0];
  if (!*MEMORY[0x277D062D0])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCSidebarLogHandle()
{
  v0 = MEMORY[0x277D062E8];
  v1 = *MEMORY[0x277D062E8];
  if (!*MEMORY[0x277D062E8])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCAppIntentsLogHandle()
{
  v0 = MEMORY[0x277D06288];
  v1 = *MEMORY[0x277D06288];
  if (!*MEMORY[0x277D06288])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCFileProviderSyncStateLogHandle()
{
  v0 = MEMORY[0x277D062B0];
  v1 = *MEMORY[0x277D062B0];
  if (!*MEMORY[0x277D062B0])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCEnumerationLogHandle()
{
  v0 = MEMORY[0x277D062A8];
  v1 = *MEMORY[0x277D062A8];
  if (!*MEMORY[0x277D062A8])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCProgressUILogHandle()
{
  v0 = MEMORY[0x277D062D8];
  v1 = *MEMORY[0x277D062D8];
  if (!*MEMORY[0x277D062D8])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCApplicationLogHandle()
{
  v0 = MEMORY[0x277D06290];
  v1 = *MEMORY[0x277D06290];
  if (!*MEMORY[0x277D06290])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCAnalyticsLogHandle()
{
  v0 = MEMORY[0x277D06280];
  v1 = *MEMORY[0x277D06280];
  if (!*MEMORY[0x277D06280])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCStateStoreLogHandle()
{
  v0 = MEMORY[0x277D06300];
  v1 = *MEMORY[0x277D06300];
  if (!*MEMORY[0x277D06300])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCDownloadServiceLogHandle()
{
  v0 = MEMORY[0x277D062A0];
  v1 = *MEMORY[0x277D062A0];
  if (!*MEMORY[0x277D062A0])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCTestsLogHandle()
{
  v0 = MEMORY[0x277D06308];
  v1 = *MEMORY[0x277D06308];
  if (!*MEMORY[0x277D06308])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCBrowserHistoryLogHandle()
{
  v0 = MEMORY[0x277D06298];
  v1 = *MEMORY[0x277D06298];
  if (!*MEMORY[0x277D06298])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCRenameLogHandle()
{
  v0 = MEMORY[0x277D062E0];
  v1 = *MEMORY[0x277D062E0];
  if (!*MEMORY[0x277D062E0])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCPickerLogHandle()
{
  v0 = MEMORY[0x277D062C8];
  v1 = *MEMORY[0x277D062C8];
  if (!*MEMORY[0x277D062C8])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

id DOCPersonaLogHandle()
{
  v0 = MEMORY[0x277D062C0];
  v1 = *MEMORY[0x277D062C0];
  if (!*MEMORY[0x277D062C0])
  {
    DOCInitLogging();
    v1 = *v0;
  }

  return v1;
}

uint64_t specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)(char a1, char a2, char a3, uint64_t a4)
{
  if ((a1 & 1) == 0)
  {
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    MEMORY[0x24C1FAEA0](0xD000000000000032, 0x8000000249BE9940);
    _StringGuts.grow(_:)(26);

    MEMORY[0x24C1FAEA0](*(a4 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_reason), *(a4 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_reason + 8));
    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    MEMORY[0x24C1FAEA0](0xD000000000000017, 0x8000000249BCD290);

    if (a2)
    {
      if (one-time initialization token for _isAttachedInDebugger != -1)
      {
        swift_once();
      }

      if (_isAttachedInDebugger)
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v8 = type metadata accessor for Logger();
        __swift_project_value_buffer(v8, static Logger.UI);

        v9 = Logger.logObject.getter();
        v10 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v9, v10))
        {
          v11 = swift_slowAlloc();
          v12 = swift_slowAlloc();
          v22[0] = v12;
          *v11 = 136315138;
          v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v22);

          *(v11 + 4) = v13;
          v14 = "Skipping DOCGuardAssert() while attached in debugger: %s";
LABEL_16:
          _os_log_impl(&dword_2493AC000, v9, v10, v14, v11, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v12);
          MEMORY[0x24C1FE850](v12, -1, -1);
          MEMORY[0x24C1FE850](v11, -1, -1);
LABEL_24:

          return a1 & 1;
        }

        goto LABEL_23;
      }
    }

    if ((a3 & 1) != 0 && DOCIsRunningUnitTests()())
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.UI);

      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v22[0] = v12;
        *v11 = 136315138;
        v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v22);

        *(v11 + 4) = v16;
        v14 = "Skipping DOCGuardAssert() while unit-testing: %s";
        goto LABEL_16;
      }

LABEL_23:

      goto LABEL_24;
    }

    if (!DOCIsInternalBuild())
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Logger.UI);

      v9 = Logger.logObject.getter();
      v18 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v9, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v22[0] = v20;
        *v19 = 136315138;
        *(v19 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v22);
        _os_log_impl(&dword_2493AC000, v9, v18, "assertion failure: %s", v19, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
        MEMORY[0x24C1FE850](v20, -1, -1);
        MEMORY[0x24C1FE850](v19, -1, -1);
      }

      goto LABEL_23;
    }
  }

  return a1 & 1;
}

uint64_t specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)(char a1, char a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 1) == 0)
  {
    v26[0] = 0;
    v26[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(64);
    _StringGuts.grow(_:)(26);

    MEMORY[0x24C1FAEA0](*(a4 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_reason), *(a4 + OBJC_IVAR____TtCC26DocumentManagerExecutables22DOCHierarchyControllerP33_3085D686B27B1518531DD3257B8A8BC022PreventChangeAssertion_reason + 8));
    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    MEMORY[0x24C1FAEA0](0xD000000000000017, 0x8000000249BCD290);

    MEMORY[0x24C1FAEA0](0xD000000000000016, 0x8000000249BE9980);
    MEMORY[0x24C1FAEA0](a5, a6);
    MEMORY[0x24C1FAEA0](0xD000000000000026, 0x8000000249BE99A0);
    if (a2)
    {
      if (one-time initialization token for _isAttachedInDebugger != -1)
      {
        swift_once();
      }

      if (_isAttachedInDebugger)
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v12 = type metadata accessor for Logger();
        __swift_project_value_buffer(v12, static Logger.UI);

        v13 = Logger.logObject.getter();
        v14 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v26[0] = v16;
          *v15 = 136315138;
          v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v26);

          *(v15 + 4) = v17;
          v18 = "Skipping DOCGuardAssert() while attached in debugger: %s";
LABEL_16:
          _os_log_impl(&dword_2493AC000, v13, v14, v18, v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v16);
          MEMORY[0x24C1FE850](v16, -1, -1);
          MEMORY[0x24C1FE850](v15, -1, -1);
LABEL_24:

          return a1 & 1;
        }

        goto LABEL_23;
      }
    }

    if ((a3 & 1) != 0 && DOCIsRunningUnitTests()())
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      __swift_project_value_buffer(v19, static Logger.UI);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v26[0] = v16;
        *v15 = 136315138;
        v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v26);

        *(v15 + 4) = v20;
        v18 = "Skipping DOCGuardAssert() while unit-testing: %s";
        goto LABEL_16;
      }

LABEL_23:

      goto LABEL_24;
    }

    if (!DOCIsInternalBuild())
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v21 = type metadata accessor for Logger();
      __swift_project_value_buffer(v21, static Logger.UI);

      v13 = Logger.logObject.getter();
      v22 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v13, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v26[0] = v24;
        *v23 = 136315138;
        *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v26);
        _os_log_impl(&dword_2493AC000, v13, v22, "assertion failure: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x24C1FE850](v24, -1, -1);
        MEMORY[0x24C1FE850](v23, -1, -1);
      }

      goto LABEL_23;
    }
  }

  return a1 & 1;
}

uint64_t specialized DOCGuardAssert(_:_:logOnlyIfDebugging:logOnlyIfUnitTesting:)(char a1, char a2, char a3, void *a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = v45 - v16;
  if ((a1 & 1) == 0)
  {
    v46 = 0;
    v47 = 0xE000000000000000;
    _StringGuts.grow(_:)(103);
    v48 = v46;
    v49 = v47;
    MEMORY[0x24C1FAEA0](0xD00000000000004DLL, 0x8000000249BE98D0);
    v18 = [a4 description];
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    MEMORY[0x24C1FAEA0](v19, v21);

    MEMORY[0x24C1FAEA0](0xD000000000000015, 0x8000000249BE9920);
    v22 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_loadingDisabledOperation;
    swift_beginAccess();
    outlined init with copy of DOCGridLayout.Spec?(a5 + v22, v13, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
    v23 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
    v24 = *(v23 - 8);
    v25 = *(v24 + 48);
    if (v25(v13, 1, v23) == 1)
    {
      v26 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_localOperation;
      swift_beginAccess();
      outlined init with copy of DOCGridLayout.Spec?(a5 + v26, v17, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      if (v25(v13, 1, v23) != 1)
      {
        outlined destroy of CharacterSet?(v13, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      }
    }

    else
    {
      outlined init with take of DOCHierarchyController.FetchingOperationToken(v13, v17);
      (*(v24 + 56))(v17, 0, 1, v23);
    }

    if (v25(v17, 1, v23) == 1)
    {
      outlined destroy of CharacterSet?(v17, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
      v27 = 0;
    }

    else
    {
      v27 = *&v17[*(v23 + 28)];

      outlined destroy of DOCHierarchyController.FetchingOperationToken(v17);
    }

    v45[1] = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo19DOCConcreteLocationCGSgMd, &_sSaySo19DOCConcreteLocationCGSgMR);
    v28 = String.init<A>(describing:)();
    MEMORY[0x24C1FAEA0](v28);

    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    v30 = v48;
    v29 = v49;
    if (a2)
    {
      if (one-time initialization token for _isAttachedInDebugger != -1)
      {
        swift_once();
      }

      if (_isAttachedInDebugger)
      {
        if (one-time initialization token for UI != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logger.UI);

        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.fault.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v48 = v35;
          *v34 = 136315138;
          v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v48);

          *(v34 + 4) = v36;
          v37 = "Skipping DOCGuardAssert() while attached in debugger: %s";
LABEL_23:
          _os_log_impl(&dword_2493AC000, v32, v33, v37, v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v35);
          MEMORY[0x24C1FE850](v35, -1, -1);
          MEMORY[0x24C1FE850](v34, -1, -1);
LABEL_31:

          return a1 & 1;
        }

        goto LABEL_30;
      }
    }

    if ((a3 & 1) != 0 && DOCIsRunningUnitTests()())
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      __swift_project_value_buffer(v38, static Logger.UI);

      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v48 = v35;
        *v34 = 136315138;
        v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v48);

        *(v34 + 4) = v39;
        v37 = "Skipping DOCGuardAssert() while unit-testing: %s";
        goto LABEL_23;
      }

LABEL_30:

      goto LABEL_31;
    }

    if (!DOCIsInternalBuild())
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      __swift_project_value_buffer(v40, static Logger.UI);

      v32 = Logger.logObject.getter();
      v41 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v32, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v48 = v43;
        *v42 = 136315138;
        *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v48);
        _os_log_impl(&dword_2493AC000, v32, v41, "assertion failure: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x24C1FE850](v43, -1, -1);
        MEMORY[0x24C1FE850](v42, -1, -1);
      }

      goto LABEL_30;
    }
  }

  return a1 & 1;
}

unint64_t DOCDisplayMode.analyticsViewMode.getter@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    *a2 = 0x3020201u >> (8 * result);
  }

  return result;
}

uint64_t static DOCViewStyleSelectorAXIdentifier.identifier(for:)(unint64_t a1)
{
  if (a1 >= 4)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v1 = off_278FA5020[a1];
    [objc_opt_self() viewStyleSelector];
    swift_getObjCClassMetadata();
    v2 = [swift_getObjCClassFromMetadata() *v1];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  return result;
}

id DOCDisplayMode.image.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      goto LABEL_8;
    }

    if (a1 == 3)
    {
      v2 = 0x8000000249BE99D0;
      v1 = 0xD000000000000013;
      goto LABEL_9;
    }
  }

  else
  {
    if (!a1)
    {
      v1 = 0x672E657261757173;
      v2 = 0xEF3278322E646972;
LABEL_9:
      v3 = MEMORY[0x24C1FAD20](v1, v2);
      v4 = [objc_opt_self() systemImageNamed_];

      return v4;
    }

    if (a1 == 1)
    {
LABEL_8:
      v1 = 0x6C75622E7473696CLL;
      v2 = 0xEB0000000074656CLL;
      goto LABEL_9;
    }
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

uint64_t DOCDisplayMode.title.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 != 2)
    {
      if (a1 == 3)
      {
        v11 = _DocumentManagerBundle();
        if (v11)
        {
          v2 = v11;
          v14 = 0x8000000249BE9A50;
          v3 = 0x736E6D756C6F43;
          v4 = 0x617A696C61636F4CLL;
          v5 = 0xEB00000000656C62;
          v10 = 0xD000000000000028;
          v6 = 0xE700000000000000;
          v7.super.isa = v2;
          v8 = 0;
          v9 = 0xE000000000000000;
          goto LABEL_15;
        }

        goto LABEL_18;
      }

      goto LABEL_19;
    }

    a1 = _DocumentManagerBundle();
    if (a1)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!a1)
  {
    v1 = _DocumentManagerBundle();
    if (v1)
    {
      v2 = v1;
      v14 = 0x8000000249BE9A20;
      v3 = 0x736E6F6349;
      v4 = 0x617A696C61636F4CLL;
      v5 = 0xEB00000000656C62;
      v6 = 0xE500000000000000;
      v7.super.isa = v2;
      v8 = 0;
      v9 = 0xE000000000000000;
LABEL_11:
      v10 = 0xD000000000000026;
LABEL_15:
      countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v3, *&v4, v7, *&v8, *(&v14 - 1))._countAndFlagsBits;

      return countAndFlagsBits;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (a1 == 1)
  {
    a1 = _DocumentManagerBundle();
    if (!a1)
    {
LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_10:
    v2 = a1;
    v14 = 0x8000000249BE99F0;
    v4 = 0x617A696C61636F4CLL;
    v5 = 0xEB00000000656C62;
    v3 = 1953720652;
    v6 = 0xE400000000000000;
    v7.super.isa = v2;
    v8 = 1953720652;
    v9 = 0xE400000000000000;
    goto LABEL_11;
  }

LABEL_19:
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall DOCDisplayMode.canDisplay(_:)(DOCConcreteLocation *a1)
{
  v2 = v1;
  v3 = [(DOCConcreteLocation *)a1 fileProviderItem];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 isFolder];

    v6 = v2 == 3;
    if (v2 < 3)
    {
LABEL_3:
      v7 = (v5 == 2) | v5;
      return v7 & 1;
    }
  }

  else
  {
    v5 = 2;
    v6 = v2 == 3;
    if (v2 < 3)
    {
      goto LABEL_3;
    }
  }

  if (!v6)
  {
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
    return result;
  }

  v7 = 1;
  return v7 & 1;
}

uint64_t DOCDisplayMode.debugDescription.getter(uint64_t a1)
{
  _StringGuts.grow(_:)(18);

  v2 = DOCDisplayMode.title.getter(a1);
  MEMORY[0x24C1FAEA0](v2);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return 0x6C70736944434F44;
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DOCDisplayMode()
{
  v1 = *v0;
  _StringGuts.grow(_:)(18);

  v2 = DOCDisplayMode.title.getter(v1);
  MEMORY[0x24C1FAEA0](v2);

  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  return 0x6C70736944434F44;
}

unint64_t lazy protocol witness table accessor for type DOCDisplayMode and conformance DOCDisplayMode()
{
  result = lazy protocol witness table cache variable for type DOCDisplayMode and conformance DOCDisplayMode;
  if (!lazy protocol witness table cache variable for type DOCDisplayMode and conformance DOCDisplayMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCDisplayMode and conformance DOCDisplayMode);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DOCDisplayMode] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DOCDisplayMode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DOCDisplayMode] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26DocumentManagerExecutables14DOCDisplayModeOGMd, &_sSay26DocumentManagerExecutables14DOCDisplayModeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DOCDisplayMode] and conformance [A]);
  }

  return result;
}

uint64_t DOCHierarchyController.ChangeCoordinator.__allocating_init(browsedLocation:browser:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t DOCHierarchyController.ChangeCoordinator.init(browsedLocation:browser:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

double static DOCHierarchyController.ChangeCoordinator.log(_:_:)(os_log_type_t a1, uint64_t a2, unint64_t a3)
{
  strcpy(v15, "Coordinator-");
  BYTE5(v15[1]) = 0;
  HIWORD(v15[1]) = -5120;
  v7 = (*(v3 + 96))();
  MEMORY[0x24C1FAEA0](v7);

  v9 = v15[0];
  v8 = v15[1];
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v10 = static DOCLog.UI;
  if (os_log_type_enabled(static DOCLog.UI, a1))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15[0] = v12;
    *v11 = 136315394;
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v15);

    *(v11 + 4) = v13;
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v15);
    _os_log_impl(&dword_2493AC000, v10, a1, "[%s] %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v12, -1, -1);

    JUMPOUT(0x24C1FE850);
  }

  return result;
}

uint64_t DOCHierarchyController.ChangeCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall DOCHierarchyController.SuspendableUIChangeCoordinator.beginSuspendingVisualChanges(timeout:)(Swift::Double timeout)
{
  v24 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v2);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v25 = *(v5 - 8);
  v26 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchTime();
  v23 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v22 - v16;
  DOCHierarchyController.SuspendableUIChangeCoordinator.addSuspendVisualChangesAssertion(_:_:)(0, 0xD00000000000001DLL, 0x8000000249BE9A80);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v18 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  + infix(_:_:)();
  v19 = *(v10 + 8);
  v19(v13, v9);
  aBlock[4] = partial apply for closure #1 in DOCHierarchyController.SuspendableUIChangeCoordinator.beginSuspendingVisualChanges(timeout:);
  v29 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_98;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v21 = v24;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB940](v17, v8, v4, v20);
  _Block_release(v20);

  (*(v27 + 8))(v4, v21);
  (*(v25 + 8))(v8, v26);
  v19(v17, v23);
}

void closure #1 in DOCHierarchyController.SuspendableUIChangeCoordinator.beginSuspendingVisualChanges(timeout:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
  v3 = 1 << *(v2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v2 + 56);
  v6 = (v3 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v7 = 0;
  while (v5)
  {
    v8 = v5;
LABEL_11:
    v5 = (v8 - 1) & v8;
    v10 = *(a1 + 32);
    if (*(v10 + 16))
    {
      v11 = *(*(v2 + 48) + (__clz(__rbit64(v8)) | (v7 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x24C1FCBD0](v11);
      v12 = Hasher._finalize()();
      v13 = -1 << *(v10 + 32);
      v14 = v12 & ~v13;
      if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
      {
        v15 = ~v13;
        while (v11 != *(*(v10 + 48) + v14))
        {
          v14 = (v14 + 1) & v15;
          if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        v16 = static os_log_type_t.info.getter();
        _StringGuts.grow(_:)(21);
        MEMORY[0x24C1FAEA0](0x6F69747265737361, 0xEE00203D2D20736ELL);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x24C1FAEA0](23328, 0xE200000000000000);
        MEMORY[0x24C1FAEA0](0x74756F656D6974, 0xE700000000000000);
        MEMORY[0x24C1FAEA0](93, 0xE100000000000000);
        (*(*a1 + 120))(v16, 0, 0xE000000000000000);

        swift_beginAccess();
        specialized Set._Variant.remove(_:)(v11);
        swift_endAccess();
      }

LABEL_18:
      if (!*(*(a1 + 32) + 16))
      {
        v17 = [*(a1 + 24) dataSource];
        v18 = MEMORY[0x277D85000];
        v19 = (*((*MEMORY[0x277D85000] & *v17) + 0xA8))();

        (*((*v18 & *v19) + 0x1C0))(0);
        v20 = *(a1 + 40);
        if (v20)
        {
          v21 = *(a1 + 48);
          v27 = v21;
          v22 = v20;
          v23 = static os_log_type_t.info.getter();
          (*(*a1 + 120))(v23, 0xD000000000000012, 0x8000000249BEA000);
          [v22 removeFromSuperview];
          if (v21)
          {
            v24 = v27;
            [v24 setUserInteractionEnabled_];
          }

          v25 = *(a1 + 40);
          v26 = *(a1 + 48);
          *(a1 + 40) = 0;
          *(a1 + 48) = 0;
          outlined consume of DOCLocationChange?(v25, v26);
        }

        else
        {
        }
      }
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v8 = *(v2 + 56 + 8 * v9);
    ++v7;
    if (v8)
    {
      v7 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(_:)(Swift::String_optional a1)
{
  if (a1.value._object)
  {
    countAndFlagsBits = a1.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0xD000000000000023;
  }

  if (a1.value._object)
  {
    object = a1.value._object;
  }

  else
  {
    object = 0x8000000249BE9AA0;
  }

  DOCHierarchyController.SuspendableUIChangeCoordinator.removeSuspendVisualChangesAssertion(_:_:)(0, countAndFlagsBits, object);
}

void DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:)()
{
  v1 = v0;
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = [v2 hierarchyController];
  v5 = [v2 dataSource];
  v6 = (*((*MEMORY[0x277D85000] & *v5) + 0xA8))();

  v7 = static os_log_type_t.info.getter();
  (*(*v1 + 120))(v7, 0xD000000000000026, 0x8000000249BE9AD0);
  DOCHierarchyController.SuspendableUIChangeCoordinator.addSuspendVisualChangesAssertion(_:_:)(1, 0xD000000000000018, 0x8000000249BE9B00);
  v8 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v9);
  v11 = v10;
  v12 = swift_allocObject();
  v12[2] = v3;
  v12[3] = v1;
  v12[4] = v4;
  v12[5] = v6;
  v17[4] = partial apply for closure #1 in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:);
  v17[5] = v12;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed FPItem?, @guaranteed Error?) -> ();
  v17[3] = &block_descriptor_3_4;
  v13 = _Block_copy(v17);
  v14 = v3;

  v15 = v4;
  v16 = v6;

  [v8 fetchItemForURL:v11 completionHandler:v13];
  _Block_release(v13);
}

uint64_t endUpdating #1 () in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = aBlock - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v12 = static OS_dispatch_queue.main.getter();
  aBlock[4] = partial apply for closure #1 in endUpdating #1 () in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:);
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_148;
  v13 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v11, v6, v13);
  _Block_release(v13);

  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t closure #1 in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:)(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v11 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v28 = *(v15 - 8);
  v29 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v27 = static OS_dispatch_queue.main.getter();
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a3;
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = a6;
  aBlock[4] = partial apply for closure #1 in closure #1 in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_130_0;
  v20 = _Block_copy(aBlock);
  v21 = a1;
  v22 = a3;

  v23 = a5;
  v24 = a6;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v27;
  MEMORY[0x24C1FB9A0](0, v18, v14, v20);
  _Block_release(v20);

  (*(v30 + 8))(v14, v11);
  return (*(v28 + 8))(v18, v29);
}

void closure #1 in closure #1 in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:)(void *a1, NSObject *a2, uint64_t a3, char *a4, void *a5)
{
  v89 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v90 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v78 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMd, &_s26DocumentManagerExecutables22DOCHierarchyControllerC22FetchingOperationToken33_3085D686B27B1518531DD3257B8A8BC0LLVSgMR);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v21 = &v78 - v20;
  if (a1)
  {
    v86 = v13;
    v87 = v14;
    v88 = v10;
    v22 = a1;
    v23 = [v22 providerDomainID];
    v24 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v23 node:v22];

    [v24 setIsFPV2_];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCConcreteLocation, 0x277D05EA8);
    LOBYTE(v23) = static NSObject.== infix(_:_:)();

    if (v23)
    {

      goto LABEL_4;
    }

    v26 = static os_log_type_t.info.getter();
    (*(*a3 + 120))(v26, 0xD000000000000027, 0x8000000249BEA050);
    v27 = dispatch_group_create();
    dispatch_group_enter(v27);
    v28 = DOCHierarchyController.effectiveLocations.getter();
    v84 = v9;
    if (v28 >> 62)
    {
      v29 = __CocoaSet.count.getter();
    }

    else
    {
      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v85 = a2;

    v30 = &selRef_initWithFrame_;
    v83 = v17;
    if (v29 <= 1)
    {
      v59 = [v22 providerDomainID];
      v60 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v59 node:v22];

      v57 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      [v60 setIsFPV2_];
      v61 = swift_allocObject();
      *(v61 + 16) = v27;
      v62 = v27;
      DOCHierarchyController.reset(with:effectiveRootLocation:animated:shouldSave:shouldShowPlaceholder:completionHandler:)(v60, v60, 0, 1, 0, closure #4 in DOCItemCollectionViewController.notifyContentDidLoad()partial apply, v61);

      v56 = &selRef_initWithFrame_;

      v47 = v85;
      v58 = 0x277D05000uLL;
      goto LABEL_21;
    }

    specialized DOCHierarchyController.removeTrailingLocationCount(_:animated:)(1);
    v31 = [v22 providerDomainID];
    v32 = [objc_allocWithZone(MEMORY[0x277D05EA8]) initWithSourceIdentifier:v31 node:v22];

    [v32 setIsFPV2_];
    v82 = swift_allocObject();
    *(v82 + 16) = v27;
    aBlock = 0;
    v93 = 0xE000000000000000;
    v33 = v27;
    _StringGuts.grow(_:)(20);

    aBlock = 0xD000000000000011;
    v93 = 0x8000000249BCC8C0;
    v34 = [v32 shortDescription];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    MEMORY[0x24C1FAEA0](v35, v37);

    MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
    v81 = DOCHierarchyController.preventImmediateChangeRequests(reason:)(aBlock, v93);

    v38 = type metadata accessor for DOCHierarchyController.FetchingOperationToken(0);
    v80 = swift_allocBox();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_249BA0290;
    *(v41 + 32) = v32;
    v79 = v32;
    UUID.init()();
    v42 = v38[5];
    v43 = v38[6];
    *(v40 + v38[7]) = v41;
    *(v40 + v42) = 1;
    *(v40 + v43) = 1;
    outlined init with copy of DOCHierarchyController.FetchingOperationToken(v40, v21);
    (*(*(v38 - 1) + 56))(v21, 0, 1, v38);
    DOCHierarchyController.localOperation.setter(v21);
    v44 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCHierarchyController_locations;
    swift_beginAccess();
    v45 = *&a4[v44];
    if (v45 >> 62)
    {
      v46 = __CocoaSet.count.getter();
    }

    else
    {
      v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = v85;
    v85 = v27;
    v30 = &selRef_initWithFrame_;
    if (v46 < 2)
    {
LABEL_19:
      v52 = swift_allocObject();
      v53 = v80;
      *(v52 + 16) = a4;
      *(v52 + 24) = v53;
      *(v52 + 32) = v81;
      *(v52 + 40) = partial apply for closure #4 in DOCItemCollectionViewController.notifyContentDidLoad();
      *(v52 + 48) = v82;
      *(v52 + 56) = 0;
      *(v52 + 58) = 0;
      *(v52 + 64) = 0;

      v54 = a4;

      v55 = v79;
      specialized DOCHierarchyController._resolveLocationInformation(for:tryToFetchLocationInformation:completion:)(v79, 1, v54, partial apply for closure #1 in DOCHierarchyController.append(location:after:interruptable:isUserInteraction:animated:completion:), v52);

      v56 = &selRef_initWithFrame_;

      v57 = &_OBJC_LABEL_PROTOCOL___DOCUIPTraitObserving;
      v58 = 0x277D05000;
      v27 = v85;
LABEL_21:
      dispatch_group_enter(v27);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19DOCConcreteLocationC_ADtGMd, &_ss23_ContiguousArrayStorageCySo19DOCConcreteLocationC_ADtGMR);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_249B9A480;
      *(inited + 32) = v47;
      v64 = v47;
      v65 = [v22 v30[249]];
      v66 = [objc_allocWithZone(*(v58 + 3752)) v56[12]];

      [v66 v57[452]];
      *(inited + 40) = v66;
      v67 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo19DOCConcreteLocationC_ADTt0g5Tf4g_n(inited);
      swift_setDeallocating();
      outlined destroy of CharacterSet?(inited + 32, &_sSo19DOCConcreteLocationC_ABtMd, &_sSo19DOCConcreteLocationC_ABtMR);
      v68 = swift_allocObject();
      v69 = v89;
      *(v68 + 16) = v27;
      v70 = *((*MEMORY[0x277D85000] & *v69) + 0x1E0);
      v71 = v27;
      v70(v67, closure #4 in DOCItemCollectionViewController.notifyContentDidLoad()partial apply, v68);

      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v72 = static OS_dispatch_queue.main.getter();
      v96 = partial apply for closure #4 in closure #1 in closure #1 in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:);
      v97 = a3;
      aBlock = MEMORY[0x277D85DD0];
      v93 = 1107296256;
      v94 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      v95 = &block_descriptor_139_0;
      v73 = _Block_copy(&aBlock);

      v74 = v83;
      static DispatchQoS.unspecified.getter();
      v91 = MEMORY[0x277D84F90];
      lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
      v75 = v86;
      v76 = v84;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_group.notify(qos:flags:queue:execute:)();
      _Block_release(v73);

      (*(v88 + 8))(v75, v76);
      (*(v90 + 8))(v74, v87);

      return;
    }

    v48 = *&a4[v44];
    if (v48 >> 62)
    {
      v77 = __CocoaSet.count.getter();
      v50 = v77 - 2;
      if (!__OFSUB__(v77, 2))
      {
LABEL_15:
        swift_beginAccess();
        v51 = *&a4[v44];
        if ((v51 & 0xC000000000000001) == 0)
        {
          if ((v50 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v50 < *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            swift_endAccess();
            goto LABEL_19;
          }

          __break(1u);
          return;
        }

LABEL_27:
        MEMORY[0x24C1FC540](v50);
        swift_endAccess();
        swift_unknownObjectRelease();
        goto LABEL_19;
      }
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v50 = v49 - 2;
      if (!__OFSUB__(v49, 2))
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

LABEL_4:
  v25 = static os_log_type_t.info.getter();
  (*(*a3 + 120))(v25, 0xD00000000000002CLL, 0x8000000249BEA020);

  endUpdating #1 () in DOCHierarchyController.SuspendableUIChangeCoordinator.endSuspendingVisualChanges(afterUpdatingBrowsedLocationTo:)(a3);
}