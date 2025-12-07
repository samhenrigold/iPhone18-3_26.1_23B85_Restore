uint64_t DOCUIAction.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DOCUIAction.name.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall DOCUIAction.init(identifier:name:predicate:)(DocumentManagerExecutables::DOCUIAction *__return_ptr retstr, Swift::String identifier, Swift::String name, NSPredicate *predicate)
{
  retstr->identifier = identifier;
  retstr->name = name;
  retstr->predicate.super.isa = predicate;
}

uint64_t static DOCFileProviderSource.webDAVProviderSource.getter()
{
  swift_beginAccess();
  v0 = static DOCFileProviderSource.webDAVProviderSource;
  v1 = static DOCFileProviderSource.webDAVProviderSource;
  return v0;
}

void static DOCFileProviderSource.webDAVProviderSource.setter(uint64_t a1)
{
  swift_beginAccess();
  v2 = static DOCFileProviderSource.webDAVProviderSource;
  static DOCFileProviderSource.webDAVProviderSource = a1;
}

void key path setter for static DOCFileProviderSource.webDAVProviderSource : DOCFileProviderSource.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = static DOCFileProviderSource.webDAVProviderSource;
  static DOCFileProviderSource.webDAVProviderSource = v1;
  v3 = v1;
}

void *DOCFileProviderSource.providerDomain.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  v2 = v1;
  return v1;
}

uint64_t key path getter for DOCFileProviderSource.dropAction : DOCFileProviderSource@<X0>(void **a1@<X0>, uint64_t (**a2)()@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE0))();
  if (result)
  {
    v5 = result;
    v6 = v4;
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    v7 = partial apply for thunk for @escaping @callee_guaranteed (@guaranteed UIDropSession, @unowned UIDropOperation, @guaranteed UIViewController) -> ();
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  a2[1] = result;
  return result;
}

uint64_t key path setter for DOCFileProviderSource.dropAction : DOCFileProviderSource(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UIDropSession, @in_guaranteed UIDropOperation, @in_guaranteed UIViewController) -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_dropAction);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v8, v9);
}

uint64_t DOCFileProviderSource.dropAction.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_dropAction);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(*v1, v1[1]);
  return v2;
}

uint64_t DOCFileProviderSource.isProviderDomainEnabled.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isProviderDomainEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCFileProviderSource.isProviderDomainEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isProviderDomainEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id DOCFileProviderSource.actionManager.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager);
  }

  else
  {
    v4 = closure #1 in DOCFileProviderSource.actionManager.getter(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void DOCFileProviderSource.actionManager.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager) = a1;
}

id closure #1 in DOCFileProviderSource.actionManager.getter(uint64_t a1)
{
  if ((*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8) & 1) != 0 || (v1 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain)) == 0)
  {
    v12 = objc_allocWithZone(DOCActionManager);

    return [v12 init];
  }

  else
  {
    v2 = swift_allocObject();
    *(v2 + 16) = v1;
    v3 = type metadata accessor for DOCLazyActionManager();
    v4 = objc_allocWithZone(v3);
    *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager____lazy_storage____lazyActions] = 0;
    v5 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables20DOCLazyActionManager_actionsClosure];
    *v5 = partial apply for closure #1 in closure #1 in DOCFileProviderSource.actionManager.getter;
    v5[1] = v2;
    v6 = objc_opt_self();
    v7 = v1;

    v8 = [v6 defaultManager];
    v9 = [objc_opt_self() defaultPermission];
    v13.receiver = v4;
    v13.super_class = v3;
    v10 = objc_msgSendSuper2(&v13, sel_initWithItemManager_managedPermission_, v8, v9);

    return v10;
  }
}

uint64_t closure #1 in closure #1 in DOCFileProviderSource.actionManager.getter(void *a1)
{
  v1 = a1;
  v2 = [objc_opt_self() actionsForProviderDomain_];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPUIAction, 0x277CC64C0);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v32 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v4 < 0)
      {
        break;
      }

      v6 = 0;
      v28 = v3 & 0xC000000000000001;
      v23 = v3 & 0xFFFFFFFFFFFFFF8;
      v24 = v31;
      v26 = v3;
      v27 = v1;
      v25 = v4;
      while (1)
      {
        v1 = (v6 + 1);
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v28)
        {
          v15 = MEMORY[0x24C1FC540](v6, v3);
        }

        else
        {
          if (v6 >= *(v23 + 16))
          {
            goto LABEL_17;
          }

          v15 = *(v3 + 8 * v6 + 32);
        }

        v16 = v15;
        v29 = [v15 isNonUIAction];
        v17 = [v16 identifier];
        if (!v17)
        {
          v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = MEMORY[0x24C1FAD20](v18);
        }

        v19 = [v16 uiActionProviderIdentifier];
        v20 = [v27 providerID];
        v21 = [v16 displayName];
        if (!v21)
        {
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = MEMORY[0x24C1FAD20](v22);
        }

        v7 = [v16 predicate];
        v8 = [v16 displayInline];
        v9 = [objc_allocWithZone(MEMORY[0x277D05F30]) initWithIdentifier:v17 uiActionProviderIdentifier:v19 fileProviderIdentifier:v20 displayName:v21 predicate:v7 displayInline:v8];

        v10 = [objc_allocWithZone(MEMORY[0x277D05F28]) initWithUIActionDescriptor:v9 providerDomain:v27];
        [v10 setAvailability_];
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *(v11 + 24) = v29;
        *(v11 + 32) = v27;
        v31[2] = partial apply for closure #1 in closure #1 in closure #1 in closure #1 in DOCFileProviderSource.actionManager.getter;
        v31[3] = v11;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        v31[0] = thunk for @escaping @callee_guaranteed (@guaranteed [DOCNode], @in_guaranteed Any) -> ();
        v31[1] = &block_descriptor_305;
        v12 = _Block_copy(aBlock);
        v13 = v10;
        v14 = v27;

        [v13 setUnresolvedHandler_];

        _Block_release(v12);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        ++v6;
        v3 = v26;
        if (v1 == v25)
        {

          return v32;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v4 = __CocoaSet.count.getter();
      if (!v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    return MEMORY[0x277D84F90];
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in closure #1 in DOCFileProviderSource.actionManager.getter(unint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  outlined init with copy of Any(a2, aBlock);
  type metadata accessor for DOCActionContext();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v9 = aBlock[6];
  v10 = [a3 uiActionProviderIdentifier];
  if (!v10)
  {

    return;
  }

  v11 = v10;
  All = specialized Array<A>.fpfs_syncFetchAllFPItems()(a1);
  if (!All)
  {
LABEL_29:

    return;
  }

  v13 = All;
  if (All >> 62)
  {
    v14 = __CocoaSet.count.getter();
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_17:

    goto LABEL_18;
  }

  v14 = *((All & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_17;
  }

LABEL_6:
  v43 = a3;
  v44 = v11;
  aBlock[0] = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14 & ~(v14 >> 63), 0);
  if (v14 < 0)
  {
    __break(1u);
    return;
  }

  v15 = 0;
  v16 = aBlock[0];
  do
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x24C1FC540](v15, v13);
    }

    else
    {
      v17 = *(v13 + 8 * v15 + 32);
    }

    v18 = v17;
    v19 = [v17 itemIdentifier];

    aBlock[0] = v16;
    v21 = *(v16 + 16);
    v20 = *(v16 + 24);
    if (v21 >= v20 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
      v16 = aBlock[0];
    }

    ++v15;
    *(v16 + 16) = v21 + 1;
    *(v16 + 8 * v21 + 32) = v19;
  }

  while (v14 != v15);

  v11 = v44;
  a3 = v43;
LABEL_18:
  v22 = [a3 identifier];
  v23 = v22;
  if ((a4 & 1) == 0)
  {
    if (!v22)
    {
      v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v23 = MEMORY[0x24C1FAD20](v35);
    }

    v36 = [a3 localizedTitle];
    if (!v36)
    {
      v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v36 = MEMORY[0x24C1FAD20](v37);
    }

    v38 = objc_opt_self();
    type metadata accessor for NSFileProviderItemIdentifier(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v40 = [a5 identifier];
    v41 = [v38 actionControllerForActionIdentifier:v23 actionTitle:v36 items:isa providerIdentifier:v11 domainIdentifier:v40];

    v42 = *&v9[OBJC_IVAR___DOCActionContext_presentingViewController];
    [v42 presentViewController:v41 animated:1 completion:0];

    goto LABEL_29;
  }

  if (!v22)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = MEMORY[0x24C1FAD20](v24);
  }

  v25 = [a3 localizedTitle];
  if (!v25)
  {
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = MEMORY[0x24C1FAD20](v26);
  }

  v27 = objc_opt_self();
  type metadata accessor for NSFileProviderItemIdentifier(0);
  v28 = Array._bridgeToObjectiveC()().super.isa;

  v29 = [a5 identifier];
  v30 = [v27 actionControllerForActionIdentifier:v23 actionTitle:v25 items:v28 providerIdentifier:v11 domainIdentifier:v29];

  v31 = swift_allocObject();
  *(v31 + 16) = a3;
  aBlock[4] = partial apply for closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in DOCFileProviderSource.actionManager.getter;
  aBlock[5] = v31;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_311;
  v32 = _Block_copy(aBlock);
  v33 = a3;

  v34 = [v30 performActionWithCompletionHandler_];

  _Block_release(v32);
}

double closure #2 in closure #1 in closure #1 in closure #1 in closure #1 in DOCFileProviderSource.actionManager.getter(uint64_t a1, void *a2, __n128 a3)
{
  if (a1)
  {
    v4 = _convertErrorToNSError(_:)();
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v5 = static DOCLog.UI;
    v6 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_249B9FA70;
    v8 = [a2 identifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    *(v7 + 56) = MEMORY[0x277D837D0];
    *(v7 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 32) = v9;
    *(v7 + 40) = v11;
    *(v7 + 96) = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    *(v7 + 104) = lazy protocol witness table accessor for type NSError and conformance NSObject();
    *(v7 + 72) = v4;
    v12 = v4;
    os_log(_:dso:log:type:_:)("Action %@ failed with error: %@", 31, 2, &dword_2493AC000, v5, v6, v7);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v13 = static DOCLog.UI;
    v14 = static os_log_type_t.info.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_249B9A480;
    v16 = [a2 identifier];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    *(v15 + 56) = MEMORY[0x277D837D0];
    *(v15 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v15 + 32) = v17;
    *(v15 + 40) = v19;
    os_log(_:dso:log:type:_:)("Action %@ succeeded finished successfully", 41, 2, &dword_2493AC000, v13, v14, v15);
  }

  return result;
}

void (*DOCFileProviderSource.actionManager.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = DOCFileProviderSource.actionManager.getter();
  return DOCFileProviderSource.actionManager.modify;
}

void DOCFileProviderSource.actionManager.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager) = v2;
}

uint64_t DOCFileProviderSource.containingApplicationIdentifier.getter()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier);
  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier + 8);
  v5 = v3;
  if (v4 == 1)
  {
    v5 = closure #1 in DOCFileProviderSource.containingApplicationIdentifier.getter(v1);
    v6 = *v2;
    v7 = v2[1];
    *v2 = v5;
    v2[1] = v8;

    outlined consume of String??(v6, v7);
  }

  outlined copy of String??(v3, v4);
  return v5;
}

uint64_t closure #1 in DOCFileProviderSource.containingApplicationIdentifier.getter(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v29[-v9];
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v29[-v13];
  v15 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v17 = [v16 extensionBundleURL];
  if (!v17)
  {
    goto LABEL_13;
  }

  v18 = v17;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  (*(v3 + 32))(v14, v10, v2);
  (*(v3 + 16))(v6, v14, v2);
  v19 = objc_allocWithZone(MEMORY[0x277CC1E50]);
  v20 = @nonobjc LSApplicationExtensionRecord.init(url:)(v6);
  if (!v20)
  {
    (*(v3 + 8))(v14, v2);
LABEL_13:

    return 0;
  }

  v21 = v20;
  v22 = [v20 containingBundleRecord];
  if (!v22)
  {
    (*(v3 + 8))(v14, v2);
LABEL_12:

    goto LABEL_13;
  }

  v23 = v22;
  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (v24)
  {
    v25 = [v24 bundleIdentifier];
    if (v25)
    {
      v26 = v25;
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v3 + 8))(v14, v2);
      return v27;
    }

    (*(v3 + 8))(v14, v2);

    goto LABEL_12;
  }

  (*(v3 + 8))(v14, v2);
  return 0;
}

double DOCFileProviderSource.containingApplicationIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier);
  v4 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier);
  v5 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier + 8);
  *v3 = a1;
  v3[1] = a2;
  return outlined consume of String??(v4, v5);
}

void (*DOCFileProviderSource.containingApplicationIdentifier.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = DOCFileProviderSource.containingApplicationIdentifier.getter();
  a1[1] = v3;
  return DOCFileProviderSource.containingApplicationIdentifier.modify;
}

void DOCFileProviderSource.containingApplicationIdentifier.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = (a1[2] + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier);
  v4 = *v3;
  v5 = v3[1];
  *v3 = *a1;
  v3[1] = v2;
  if (a2)
  {

    outlined consume of String??(v4, v5);
  }

  else
  {

    outlined consume of String??(v4, v5);
  }
}

uint64_t DOCFileProviderSource._displayName.getter()
{
  v1 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____displayName];
  if (*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____displayName + 8])
  {
    v2 = *v1;
  }

  else
  {
    v2 = closure #1 in DOCFileProviderSource._displayName.getter(v0);
    *v1 = v2;
    v1[1] = v3;
  }

  return v2;
}

uint64_t closure #1 in DOCFileProviderSource._displayName.getter(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (!v1)
  {
    v5 = [a1 identifier];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
    if (v6 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v8 == v9)
    {

      goto LABEL_10;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v11)
    {

LABEL_10:
      v12 = [objc_opt_self() recentDocumentsLocation];
      v13 = [v12 displayName];
      goto LABEL_11;
    }

    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
    if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
    {

      goto LABEL_22;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v20)
    {

LABEL_22:
      v12 = [objc_opt_self() sharedItemsLocation];
      v13 = [v12 displayName];
      goto LABEL_11;
    }

    v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
    if (v21 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v23 == v24)
    {
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v25 & 1) == 0)
      {
        v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v28 = v27;
        if (v26 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v28 == v29)
        {
        }

        else
        {
          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v30 & 1) == 0)
          {
            return 0;
          }
        }

        v12 = [objc_opt_self() searchLocation];
        v13 = [v12 displayName];
LABEL_11:
        v3 = v13;

        if (v3)
        {
          v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          goto LABEL_13;
        }

        return 0;
      }
    }

    v12 = [objc_opt_self() trashedItemsLocation];
    v13 = [v12 displayName];
    goto LABEL_11;
  }

  v2 = v1;
  v3 = DOCLocalizedDisplayName();
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_13:
  return v4;
}

uint64_t DOCFileProviderSource._providerName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____providerName);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____providerName + 8))
  {
    v2 = *v1;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    if (v3)
    {
      v4 = v3;
      v5 = DOCLocalizedProviderOnlyDisplayName();
      v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v2 = 0;
      v7 = 0xE000000000000000;
    }

    *v1 = v2;
    v1[1] = v7;
  }

  return v2;
}

uint64_t DOCFileProviderSource._domainName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____domainName);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____domainName);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____domainName + 8);
  v4 = v2;
  if (v3 == 1)
  {
    v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    if (v5)
    {
      v6 = v5;
      v7 = [v6 domainDisplayName];
      if (v7)
      {
        v8 = v7;
        v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

LABEL_7:
        v11 = *v1;
        v12 = v1[1];
        *v1 = v4;
        v1[1] = v10;

        outlined consume of String??(v11, v12);
        goto LABEL_8;
      }
    }

    v4 = 0;
    v10 = 0;
    goto LABEL_7;
  }

LABEL_8:
  outlined copy of String??(v2, v3);
  return v4;
}

void canOpen #1 (node:) in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(void *a1, void *a2, uint64_t a3, SEL *a4)
{
  v34 = a3;
  v43 = a1;
  v6 = type metadata accessor for UTType();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v34 - v12;
  v16 = MEMORY[0x28223BE20](v14, v15);
  v37 = &v34 - v17;
  v18 = [a2 *a4];
  v40 = v6;
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v20 = 0;
  v38 = *(v19 + 16);
  v39 = v19;
  v36 = v7;
  v41 = v7 + 8;
  v42 = v7 + 16;
  do
  {
    if (v38 == v20)
    {

      return;
    }

    if (v20 >= *(v39 + 16))
    {
      __break(1u);
      return;
    }

    v21 = v36;
    v22 = v37;
    v23 = (*(v36 + 80) + 32) & ~*(v36 + 80);
    v24 = *(v36 + 72);
    v25 = *(v36 + 16);
    v26 = v40;
    v25(v37, v39 + v23 + v24 * v20++, v40);
    v27 = [v43 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v27) = UTType.conforms(to:)();
    v28 = *(v21 + 8);
    v28(v13, v26);
    v28(v22, v26);
  }

  while ((v27 & 1) == 0);

  v29 = v35;
  v30 = v34 + v23;
  v31 = *(v34 + 16) + 1;
  v32 = v40;
  do
  {
    if (!--v31)
    {
      break;
    }

    v39 = v30 + v24;
    (v25)(v29);
    v33 = [v43 contentType];
    static UTType._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v33) = UTType.conforms(to:)();
    v28(v13, v32);
    v28(v29, v32);
    v30 = v39;
  }

  while ((v33 & 1) == 0);
}

uint64_t closure #1 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  outlined init with copy of Any(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    if (([v13 isTrashed] & 1) == 0 && (DOCNode.isSharedServerNode.getter() & 1) == 0)
    {
      canOpen #1 (node:) in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(v13, a3, a4, &selRef_recentDocumentsContentTypes);
      if (v8 & 1) != 0 && ([a5 canHostAppPerformAction:2 targetNode:v13])
      {
        v9 = [v13 cachedDomain];
        if (!v9)
        {
          swift_unknownObjectRelease();
          return 1;
        }

        v10 = v9;
        if ([v9 isEnabled])
        {
          v11 = [v10 needsAuthentication];

          swift_unknownObjectRelease();
          return v11 ^ 1;
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t closure #2 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  outlined init with copy of Any(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    if (([v13 isTrashed] & 1) == 0 && (objc_msgSend(v13, sel_isTopLevelSharedItem) & 1) != 0 && (DOCNode.isSharedServerNode.getter() & 1) == 0)
    {
      if ([v13 isFolder] & 1) != 0 || (canOpen #1 (node:) in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(v13, a3, a4, &selRef_recentDocumentsContentTypes), (v8))
      {
        if ([a5 canHostAppPerformAction:2 targetNode:v13])
        {
          v9 = [v13 cachedDomain];
          if (!v9)
          {
            swift_unknownObjectRelease();
            return 1;
          }

          v10 = v9;
          if ([v9 isEnabled])
          {
            v11 = [v10 needsAuthentication];

            swift_unknownObjectRelease();
            return v11 ^ 1;
          }
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id closure #3 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(uint64_t a1, uint64_t a2, void *a3)
{
  outlined init with copy of Any(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    if ([v6 isTrashed] && (DOCNode.isSharedServerNode.getter() & 1) == 0)
    {
      v5 = [a3 canHostAppPerformAction:2 targetNode:v6];
      swift_unknownObjectRelease();
      return v5;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id closure #4 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(uint64_t a1, uint64_t a2, void *a3)
{
  outlined init with copy of Any(a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  if (swift_dynamicCast())
  {
    swift_getObjectType();
    if (([v6 isTrashed] & 1) == 0 && (DOCNode.isSharedServerNode.getter() & 1) == 0)
    {
      v5 = [a3 canHostAppPerformAction:2 targetNode:v6];
      swift_unknownObjectRelease();
      return v5;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

uint64_t closure #5 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  outlined init with copy of Any(a1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  if (swift_dynamicCast())
  {
    if ([v13 isFolder] & 1) != 0 || (canOpen #1 (node:) in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(v13, a3, a4, &selRef_documentContentTypes), (v8))
    {
      if ([a5 canHostAppPerformAction:2 targetNode:v13])
      {
        v9 = [v13 cachedDomain];
        if (!v9)
        {
          swift_unknownObjectRelease();
          return 1;
        }

        v10 = v9;
        if ([v9 isEnabled])
        {
          v11 = [v10 needsAuthentication];

          swift_unknownObjectRelease();
          return v11 ^ 1;
        }
      }
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

id closure #6 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  outlined init with copy of Any(a1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!a3)
  {
    goto LABEL_21;
  }

  v10 = [a3 tagIdentifiers];
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v10;
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  ObjectType = swift_getObjectType();
  v14 = [v39 tags];
  if (v14)
  {
    v15 = v14;
    v35 = ObjectType;
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPTag, 0x277CC6468);
    v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v36 = v39;
    v33 = a5;
    v34 = a6;
    v32 = a4;
    v38 = v12;
    if (v16 >> 62)
    {
LABEL_29:
      v37 = v16 & 0xFFFFFFFFFFFFFF8;
      v17 = __CocoaSet.count.getter();
    }

    else
    {
      v37 = v16 & 0xFFFFFFFFFFFFFF8;
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = 0;
    do
    {
      if (v17 == v18)
      {

        [v36 isTrashed];
        goto LABEL_21;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x24C1FC540](v18, v16);
      }

      else
      {
        if (v18 >= *(v37 + 16))
        {
          goto LABEL_28;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v21 = [v19 label];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v40[0] = v22;
      v40[1] = v24;
      MEMORY[0x28223BE20](v25, v26);
      v31[2] = v40;
      LOBYTE(v21) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v31, v38);

      ++v18;
    }

    while ((v21 & 1) == 0);

    v27 = v36;
    if (([v36 isTrashed] & 1) == 0 && (DOCNode.isSharedServerNode.getter() & 1) == 0)
    {
      if ([v27 isFolder] & 1) != 0 || (canOpen #1 (node:) in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(v27, v32, v33, &selRef_recentDocumentsContentTypes), (v29))
      {
        v30 = [v34 canHostAppPerformAction:2 targetNode:v27];
        swift_unknownObjectRelease();
        return v30;
      }
    }

LABEL_21:
    swift_unknownObjectRelease();
    return 0;
  }

  swift_unknownObjectRelease();

  return 0;
}

uint64_t closure #7 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(uint64_t a1, Class isa, void *a3, void *a4)
{
  outlined init with copy of Any(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7DOCNode_pMd, &_sSo7DOCNode_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  if (a3)
  {
    swift_unknownObjectRetain();
    if (isa)
    {
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    v8 = [a3 evaluateWithObject:v11 substitutionVariables:isa];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 1;
  }

  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9 && [v9 isTrashed] || (v8 & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  else
  {
    v10 = [a4 canHostAppPerformAction:2 targetNode:v11];
    swift_unknownObjectRelease();
    return v10;
  }
}

uint64_t DOCFileProviderSource.requiresCustomEnumerationProperties.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_requiresCustomEnumerationProperties;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCFileProviderSource.requiresCustomEnumerationProperties.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_requiresCustomEnumerationProperties;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void DOCFileProviderSource.defaultSorting.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultSorting;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

uint64_t DOCFileProviderSource.groupingEnabledByDefault.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_groupingEnabledByDefault;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCFileProviderSource.defaultGroupingMode.getter(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultGroupingMode;
  swift_beginAccess();
  *a1 = *(v1 + v3);
}

void DOCFileProviderSource.groupingModes.getter()
{
  v29 = *((*MEMORY[0x277D85000] & *v0) + 0x1D0);
  v1 = v29();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    v4 = MEMORY[0x277D84F90];
    while (1)
    {
      v6 = *v3++;
      v5 = v6;
      if (v6 > 4 || v5 != 2)
      {
        v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v7)
        {
          goto LABEL_4;
        }

        if (v5 != 3)
        {
          v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v8)
          {
            goto LABEL_4;
          }

          if (v5 <= 8)
          {
            v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v9 & 1) == 0)
            {
              v30 = v4;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1);
                v4 = v30;
              }

              v11 = *(v4 + 2);
              v10 = *(v4 + 3);
              if (v11 >= v10 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
                v4 = v30;
              }

              *(v4 + 2) = v11 + 1;
              v4[v11 + 32] = v5;
            }

            goto LABEL_4;
          }
        }
      }

LABEL_4:
      if (!--v2)
      {
        goto LABEL_18;
      }
    }
  }

  v4 = MEMORY[0x277D84F90];
LABEL_18:

  v30 = v4;
  v13 = (v29)(v12);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = 0;
    while (1)
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_56;
      }

      v16 = *(v13 + v15 + 32);
      if (v16 <= 4 && *(v13 + v15 + 32) <= 2u && v16 != 1 && v16 != 2)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_39;
      }

      if (v16 < 4 && v16 != 2 && v16 != 3)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        goto LABEL_39;
      }

      if (v16 > 6 && v16 != 8 && v16 != 9)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v19)
      {
        goto LABEL_39;
      }

      if (v16 > 6 && v16 != 9)
      {
        break;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_39;
      }

      if (v14 == ++v15)
      {
        goto LABEL_38;
      }
    }

LABEL_39:

    specialized MutableCollection._halfStablePartition(isSuffixElement:)(&v30, v16);
    v4 = v30;
    v22 = *(v30 + 2);
    if (v21 > v22)
    {
      __break(1u);
    }

    else
    {
      v23 = v21;
      if ((v21 & 0x8000000000000000) == 0)
      {
        v24 = v21;
        if (!__OFADD__(v22, v21 - v22))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v24 > *(v4 + 3) >> 1)
          {
            if (v22 <= v24)
            {
              v26 = v24;
            }

            else
            {
              v26 = v22;
            }

            v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v26, 1, v4);
            v30 = v4;
          }

          specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v23, v22, 0);
          goto LABEL_49;
        }

LABEL_59:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_59;
  }

LABEL_38:

LABEL_49:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_56:
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v4 + 2) + 1, 1, v4);
  }

  v28 = *(v4 + 2);
  v27 = *(v4 + 3);
  if (v28 >= v27 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v4);
  }

  *(v4 + 2) = v28 + 1;
  v4[v28 + 32] = 6;
}

uint64_t DOCFileProviderSource.defaultGroupingBehavior.getter@<X0>(char *a1@<X8>)
{
  v3 = MEMORY[0x277D85000];
  result = (*((*MEMORY[0x277D85000] & *v1) + 0x1E8))();
  if (result)
  {
    result = (*((*v3 & *v1) + 0x200))(&v6);
    v5 = v6;
  }

  else
  {
    v5 = 10;
  }

  *a1 = v5;
  return result;
}

double key path setter for DOCFileProviderSource.sortingModes : DOCFileProviderSource(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;

  return result;
}

uint64_t DOCFileProviderSource.errorCount.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_errorCount;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCFileProviderSource.errorCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_errorCount;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void *DOCFileProviderSource.type.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type);
  outlined copy of DOCFileProviderSourceType(v1);
  return v1;
}

uint64_t DOCFileProviderSource.supportsImportInDefaultSaveLocation.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_supportsImportInDefaultSaveLocation;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCFileProviderSource.supportsImportInDefaultSaveLocation.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_supportsImportInDefaultSaveLocation;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t DOCFileProviderSource.description.getter(uint64_t a1)
{
  v2 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (v2)
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    v12.receiver = v1;
    v12.super_class = type metadata accessor for DOCFileProviderSource();
    v3 = v2;
    v4 = objc_msgSendSuper2(&v12, sel_description);
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    MEMORY[0x24C1FAEA0](v5, v7);

    MEMORY[0x24C1FAEA0](0x3A6469203ALL, 0xE500000000000000);
    v11 = [v3 identifier];
    type metadata accessor for FPProviderDomainID(0);
    _print_unlocked<A, B>(_:_:)();

    return v13;
  }

  else
  {
    v15.receiver = v1;
    v15.super_class = type metadata accessor for DOCFileProviderSource();
    v9 = objc_msgSendSuper2(&v15, sel_description);
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v10;
  }
}

void *DOCFileProviderSource.init(_:)(void *a1)
{
  v2 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_dropAction];
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isProviderDomainEnabled;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isProviderDomainEnabled] = 2;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier] = xmmword_249BA5030;
  v4 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____displayName];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____providerName];
  *v5 = 0;
  v5[1] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____domainName] = xmmword_249BA5030;
  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isEjectable;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isEjectable] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_requiresCustomEnumerationProperties] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultSorting] = 2;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes] = &outlined read-only object #0 of DOCFileProviderSource.init(_:);
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_groupingEnabledByDefault] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultGroupingMode] = 5;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_availableDisplayModes] = &outlined read-only object #1 of DOCFileProviderSource.init(_:);
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_errorCount] = 0;
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_supportsImportInDefaultSaveLocation] = 0;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain] = a1;
  v7 = a1;
  v8 = [v7 providerID];
  v9 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
  *v9 = v8;
  v9[8] = 0;
  v10 = 0;
  if ([v7 isEnabled])
  {
    v10 = [v7 isHidden] ^ 1;
  }

  swift_beginAccess();
  v1[v3] = v10;
  v11 = [v7 canDisconnect];
  swift_beginAccess();
  v1[v6] = v11;
  v31.receiver = v1;
  v31.super_class = type metadata accessor for DOCFileProviderSource();
  v12 = objc_msgSendSuper2(&v31, sel_init);
  v13 = [v7 topLevelBundleIdentifier];
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  (*((*MEMORY[0x277D85000] & *v12) + 0x140))(v14, v16);
  v17 = [v7 identifier];
  [v12 setIdentifier_];

  isa = [v7 supportedFileTypes];
  if (!isa)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v19 = [objc_opt_self() doc:isa contentTypesForIdentifiers:?];

  type metadata accessor for UTType();
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v20 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
    *(swift_allocObject() + 16) = xmmword_249B9FA70;
    static UTType.content.getter();
    static UTType.item.getter();
  }

  v21 = Array._bridgeToObjectiveC()().super.isa;

  [v12 setDocumentContentTypes_];

  v22 = [objc_opt_self() outlineView];
  v23 = [v22 isEnabled];

  if (v23 && [v7 isiCloudDriveProvider])
  {
    v24 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes;
    swift_beginAccess();
    v25 = *(v12 + v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + v24) = v25;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v25 + 2) + 1, 1, v25);
      *(v12 + v24) = v25;
    }

    v28 = *(v25 + 2);
    v27 = *(v25 + 3);
    if (v28 >= v27 >> 1)
    {
      v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
    }

    *(v25 + 2) = v28 + 1;
    v25[v28 + 32] = 9;
    *(v12 + v24) = v25;
    swift_endAccess();
    v29 = v7;
    v7 = v12;
  }

  else
  {
    v29 = v12;
  }

  return v12;
}

id DOCFileProviderSource.enumerationIdentifier.getter()
{
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type + 8) == 1)
  {
    v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type);

    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(void *a1, void *a2)
{
  v5 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_dropAction];
  *v5 = 0;
  v5[1] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isProviderDomainEnabled] = 2;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier] = xmmword_249BA5030;
  v6 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____displayName];
  *v6 = 0;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____providerName];
  *v7 = 0;
  v7[1] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____domainName] = xmmword_249BA5030;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isEjectable] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_requiresCustomEnumerationProperties] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultSorting] = 2;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes] = &outlined read-only object #0 of DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:);
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_groupingEnabledByDefault] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultGroupingMode] = 5;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_availableDisplayModes] = &outlined read-only object #1 of DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:);
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_errorCount] = 0;
  v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_supportsImportInDefaultSaveLocation] = 0;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain] = 0;
  v8 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_type];
  *v8 = a1;
  v8[8] = 1;
  v13.receiver = v2;
  v13.super_class = type metadata accessor for DOCFileProviderSource();
  v9 = a1;
  v10 = objc_msgSendSuper2(&v13, sel_init);
  [v10 setIdentifier_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  type metadata accessor for UTType();
  *(swift_allocObject() + 16) = xmmword_249B9FA70;
  static UTType.content.getter();
  static UTType.item.getter();
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v10 setDocumentContentTypes_];

  return v10;
}

uint64_t DOCFileProviderSource.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, &v26);
  v3 = v27;
  if (v27)
  {
    v4 = __swift_project_boxed_opaque_existential_1(&v26, v27);
    v5 = *(v3 - 8);
    v6 = MEMORY[0x28223BE20](v4, v4);
    v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v5 + 8))(v8, v3);
    __swift_destroy_boxed_opaque_existential_0(&v26);
  }

  else
  {
    v9 = 0;
  }

  v10 = type metadata accessor for DOCFileProviderSource();
  v25.receiver = v1;
  v25.super_class = v10;
  v11 = objc_msgSendSuper2(&v25, sel_isEqual_, v9);
  swift_unknownObjectRelease();
  if (!v11)
  {
    goto LABEL_17;
  }

  outlined init with copy of Any?(a1, &v26);
  if (!v27)
  {
    outlined destroy of Any?(&v26);
    goto LABEL_17;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v20 = 0;
    return v20 & 1;
  }

  v12 = MEMORY[0x277D85000];
  v13 = (*((*MEMORY[0x277D85000] & *v1) + 0xF8))();
  result = outlined init with copy of Any?(a1, &v23);
  if (v24)
  {
    outlined init with take of Any(&v23, &v26);
    v15 = swift_dynamicCast();
    v16 = v22;
    v17 = (*((*v12 & *v22) + 0xF8))(v15);

    v18 = v13 == 2;
    if (v17 != 2)
    {
      v18 = 0;
    }

    v19 = v13 == 2 || v17 == 2;
    v20 = v17 ^ v13 ^ 1;
    if (v19)
    {
      v20 = v18;
    }

    return v20 & 1;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCFileProviderSource.eject(alertPresenting:)(UIViewController *alertPresenting)
{
  v2 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (v2)
  {
    v3 = objc_opt_self();
    v4 = v2;
    v9 = [v3 defaultManager];
    FPItemManager.disconnect(domain:alertPresenting:)(v4);
  }

  else
  {
    _StringGuts.grow(_:)(61);
    MEMORY[0x24C1FAEA0](0xD00000000000003BLL, 0x8000000249BD4890);
    v5 = [v1 description];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    MEMORY[0x24C1FAEA0](v6, v8);

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

void *one-time initialization function for recentDocumentsSource(uint64_t a1)
{
  result = closure #1 in variable initialization expression of static DOCFileProviderSource.recentDocumentsSource(a1);
  static DOCFileProviderSource.recentDocumentsSource = result;
  return result;
}

void *closure #1 in variable initialization expression of static DOCFileProviderSource.recentDocumentsSource(uint64_t a1)
{
  v1 = *MEMORY[0x277D060F8];
  v2 = objc_allocWithZone(type metadata accessor for DOCFileProviderSource());
  v3 = DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(@"com.apple.DocumentManager.SpotlightFileProvider.recentDocuments", v1);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultSorting;
  swift_beginAccess();
  *(v3 + v4) = 1;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes;
  swift_beginAccess();
  *(v3 + v5) = &outlined read-only object #0 of closure #1 in variable initialization expression of static DOCFileProviderSource.recentDocumentsSource;

  v7 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v3) + 0x1B8))(&v10, v6);
  LOBYTE(v1) = v10;
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultGroupingMode;
  swift_beginAccess();
  *(v3 + v8) = v1;
  (*((*v7 & *v3) + 0x1A8))(1);
  (*((*v7 & *v3) + 0x260))(1);
  return v3;
}

void *one-time initialization function for sharedItemsSource()
{
  result = closure #1 in variable initialization expression of static DOCFileProviderSource.sharedItemsSource();
  static DOCFileProviderSource.sharedItemsSource = result;
  return result;
}

void *closure #1 in variable initialization expression of static DOCFileProviderSource.sharedItemsSource()
{
  v0 = *MEMORY[0x277D05DC0];
  v1 = objc_allocWithZone(type metadata accessor for DOCSharedDocumentsSource()) + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSharedDocumentsSource____lazy_storage____displayName;
  *v1 = 0;
  v1[1] = 0;
  v2 = DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(@"com.apple.DocumentManager.SpotlightFileProvider.sharedItems", v0);
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultSorting;
  swift_beginAccess();
  v2[v3] = 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes;
  swift_beginAccess();
  *&v2[v4] = &outlined read-only object #0 of closure #1 in variable initialization expression of static DOCFileProviderSource.sharedItemsSource;
  v5 = v2;

  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_groupingEnabledByDefault;
  swift_beginAccess();
  *(v5 + v6) = 0;
  (*((*MEMORY[0x277D85000] & *v5) + 0x1A8))(1);

  return v5;
}

id DOCSharedDocumentsSource.__allocating_init(enumerationIdentifier:defaultIdentifier:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSharedDocumentsSource____lazy_storage____displayName];
  *v6 = 0;
  *(v6 + 1) = 0;
  return DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(a1, a2);
}

uint64_t *DOCFileProviderSource.sharedItemsSource.unsafeMutableAddressor()
{
  if (one-time initialization token for sharedItemsSource != -1)
  {
    swift_once();
  }

  return &static DOCFileProviderSource.sharedItemsSource;
}

void one-time initialization function for taggedItemsSource(uint64_t a1)
{
  v1 = *MEMORY[0x277D05DC8];
  v2 = objc_allocWithZone(type metadata accessor for DOCFileProviderSource());
  v3 = DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(@"com.apple.DocumentManager.SpotlightFileProvider.taggedItems", v1);
  (*((*MEMORY[0x277D85000] & *v3) + 0x1A8))(1);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes;
  swift_beginAccess();
  *(v3 + v4) = &outlined read-only object #0 of closure #1 in variable initialization expression of static DOCFileProviderSource.taggedItemsSource;

  static DOCFileProviderSource.taggedItemsSource = v3;
}

uint64_t *DOCFileProviderSource.taggedItemsSource.unsafeMutableAddressor()
{
  if (one-time initialization token for taggedItemsSource != -1)
  {
    swift_once();
  }

  return &static DOCFileProviderSource.taggedItemsSource;
}

void *one-time initialization function for searchSource(uint64_t a1)
{
  result = closure #1 in variable initialization expression of static DOCFileProviderSource.searchSource(a1);
  static DOCFileProviderSource.searchSource = result;
  return result;
}

void *closure #1 in variable initialization expression of static DOCFileProviderSource.searchSource(uint64_t a1)
{
  v1 = *MEMORY[0x277D05DB8];
  v2 = objc_allocWithZone(type metadata accessor for DOCFileProviderSource());
  v3 = DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(@"com.apple.DocumentManager.SpotlightFileProvider.search", v1);
  (*((*MEMORY[0x277D85000] & *v3) + 0x1A8))(1);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes;
  swift_beginAccess();
  *(v3 + v4) = &outlined read-only object #0 of closure #1 in variable initialization expression of static DOCFileProviderSource.searchSource;

  v5 = objc_opt_self();
  v6 = [v5 outlineView];
  v7 = [v6 isEnabled];

  if (v7 && (v8 = [v5 enableOldListToo], v9 = objc_msgSend(v8, sel_isEnabled), v8, (v9 & 1) == 0))
  {
    v10 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_availableDisplayModes;
    swift_beginAccess();
    v11 = &outlined read-only object #1 of closure #1 in variable initialization expression of static DOCFileProviderSource.searchSource;
  }

  else
  {
    v10 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_availableDisplayModes;
    swift_beginAccess();
    v11 = &outlined read-only object #2 of closure #1 in variable initialization expression of static DOCFileProviderSource.searchSource;
  }

  *(v3 + v10) = v11;

  return v3;
}

id DOCTrashedItemsSource.__allocating_init(enumerationIdentifier:defaultIdentifier:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCTrashedItemsSource____lazy_storage____displayName];
  *v6 = 0;
  *(v6 + 1) = 0;
  return DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(a1, a2);
}

double closure #1 in static DOCFileProviderSource.createSpotlightSources()(void *a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  ObjectType = swift_getObjectType();
  if (specialized static FPItem.sessionContainsDOCNode(_:)(a1, v5, ObjectType))
  {

    return specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(a1, a3, v5);
  }

  return result;
}

void closure #1 in closure #1 in static DOCFileProviderSource.createSpotlightSources()(unint64_t a1, void *a2)
{
  v12 = MEMORY[0x277D84F90];
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_20:
    v5 = __CocoaSet.count.getter();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      MEMORY[0x24C1FC540](v6, a1);
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_19;
      }

      swift_unknownObjectRetain();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    swift_getObjectType();
    v9 = DOCNode.fpfs_syncFetchFPItem()();
    v10 = swift_unknownObjectRelease();
    ++v6;
    if (v9)
    {
      MEMORY[0x24C1FB090](v10);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v12;
      v6 = v8;
    }
  }

  v11 = [objc_opt_self() defaultManager];
  FPItemManager.trashOrDeleteItems(_:alertPresenting:userCancellationHandler:)(v7, a2, 0, 0);
}

void *static DOCFileProviderSource.createSource(from:with:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = specialized static DOCFileProviderSource.newSource(from:with:)(a1, a2, a3);
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  v6 = (v4 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_dropAction);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = partial apply for closure #1 in static DOCFileProviderSource.createSource(from:with:);
  v6[1] = v5;
  v9 = a1;
  outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v7, v8);
  return v4;
}

void closure #1 in static DOCFileProviderSource.createSource(from:with:)(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v42 = a4;
  v39 = a1;
  v40 = a3;
  v44 = type metadata accessor for DispatchTimeInterval();
  v4 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v5);
  v7 = (&v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = type metadata accessor for DispatchTime();
  v8 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v38 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  v41 = (v16 + 16);
  v17 = dispatch_semaphore_create(0);
  v18 = [objc_opt_self() defaultManager];
  v19 = swift_allocObject();
  *(v19 + 16) = v16;
  *(v19 + 24) = v17;
  aBlock[4] = partial apply for closure #1 in closure #1 in static DOCFileProviderSource.createSource(from:with:);
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed DOCNode?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_216_0;
  v20 = _Block_copy(aBlock);
  v45 = v16;

  v21 = v17;

  [v18 doc:v42 fetchRootNodeForProviderDomain:v20 completionHandler:?];
  _Block_release(v20);

  static DispatchTime.now()();
  *v7 = 1;
  v22 = v44;
  (*(v4 + 104))(v7, *MEMORY[0x277D85188], v44);
  MEMORY[0x24C1FAA90](v11, v7);
  (*(v4 + 8))(v7, v22);
  v23 = *(v8 + 8);
  v24 = v11;
  v25 = v43;
  v23(v24, v43);
  MEMORY[0x24C1FBB60](v15);
  v23(v15, v25);
  if ((static DispatchTimeoutResult.== infix(_:_:)() & 1) != 0 && (v26 = v41, swift_beginAccess(), (v27 = *v26) != 0))
  {
    v28 = swift_allocObject();
    *(v28 + 16) = v27;
    v29 = type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
    v30 = v39;
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain_n();
    if (specialized static FPItem.sessionContainsDOCNode(_:)(v30, v29, ObjectType))
    {
      swift_unknownObjectRetain();

      specialized static FPItem.nodesFromDropSession(_:alertPresenting:completionHandler:)(v30, v40, v29, v27, partial apply for closure #2 in closure #1 in static DOCFileProviderSource.createSource(from:with:), v28);

      swift_unknownObjectRelease_n();
    }

    else
    {
      v35 = [v30 items];
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDragItem, 0x277D75470);
      v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      v37 = swift_getObjectType();

      specialized static FPItem.performExternalDrop(_:underItem:alertPresenting:completion:)(v36, v27, v40, partial apply for closure #2 in closure #1 in static DOCFileProviderSource.createSource(from:with:), v28, v29, v37);

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v32 = static DOCLog.UI;
    v33 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_249B9A480;
    *(v34 + 56) = MEMORY[0x277D837D0];
    *(v34 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v34 + 32) = 0xD000000000000018;
    *(v34 + 40) = 0x8000000249BD4E00;
    os_log(_:dso:log:type:_:)("%@: Failed to fetch root item", 29, 2, &dword_2493AC000, v32, v33, v34);
  }
}

Swift::Int closure #1 in closure #1 in static DOCFileProviderSource.createSource(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a3 + 16) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  return OS_dispatch_semaphore.signal()();
}

double closure #2 in closure #1 in static DOCFileProviderSource.createSource(from:with:)(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = one-time initialization token for UI;

    if (v4 != -1)
    {
      swift_once();
    }

    v5 = static DOCLog.UI;
    v6 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_249BA08C0;
    v8 = MEMORY[0x277D837D0];
    *(v7 + 56) = MEMORY[0x277D837D0];
    v9 = lazy protocol witness table accessor for type String and conformance String();
    *(v7 + 64) = v9;
    *(v7 + 32) = 0xD000000000000018;
    *(v7 + 40) = 0x8000000249BD4E00;
    *(v7 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
    *(v7 + 104) = lazy protocol witness table accessor for type [DOCNode] and conformance [A]();
    *(v7 + 72) = a1;
    v10 = [a2 description];
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;

    *(v7 + 136) = v8;
    *(v7 + 144) = v9;
    *(v7 + 112) = v11;
    *(v7 + 120) = v13;
    os_log(_:dso:log:type:_:)("%@: Did successfully drop %{public}@ under %{public}@", 53, 2, &dword_2493AC000, v5, v6, v7);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v14 = static DOCLog.UI;
    v15 = static os_log_type_t.debug.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_249B9FA70;
    v17 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    v18 = lazy protocol witness table accessor for type String and conformance String();
    *(v16 + 64) = v18;
    *(v16 + 32) = 0xD000000000000018;
    *(v16 + 40) = 0x8000000249BD4E00;
    v19 = [a2 description];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    *(v16 + 96) = v17;
    *(v16 + 104) = v18;
    *(v16 + 72) = v20;
    *(v16 + 80) = v22;
    os_log(_:dso:log:type:_:)("%@: Failed to drop items under %{public}@", 41, 2, &dword_2493AC000, v14, v15, v16);
  }

  return result;
}

void closure #3 in closure #1 in static DOCFileProviderSource.createSource(from:with:)(unint64_t a1, void *a2, void *a3, void (*a4)(void), unint64_t a5)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for FPItem, 0x277CC63E8);
  swift_getObjectType();

  specialized static FPItem.performDrop(_:underItem:alertPresenting:completion:)(a1, a3, a2, a4, a5);
}

id DOCFileProviderSource.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t DOCFileProviderSource.isValid(for:)(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
  if (!v3)
  {
    goto LABEL_9;
  }

  if ([*&v1[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain] isHiddenByProvider])
  {
    return 0;
  }

  v4 = v3;
  if ([a1 supportsRemovableFileProviders])
  {
  }

  else
  {
    if ([v4 canDisconnect])
    {
LABEL_25:

      return 0;
    }

    v27 = [v4 identifier];
    v28 = DOCProviderDomainIDIsExternalDevice();

    if (v28)
    {
      return 0;
    }
  }

  v4 = [v4 identifier];
  if (DOCProviderDomainIDIsExternalDevice())
  {
    v5 = [objc_opt_self() defaultPermission];
    v6 = [v5 isUSBAccessAllowed];

    if ((v6 & 1) == 0)
    {

      goto LABEL_25;
    }
  }

  v7 = DOCProviderDomainIDIsWebDAV();
  v8 = DOCProviderDomainIDIsSharedServerDomainID();

  v9 = [objc_opt_self() defaultPermission];
  v10 = [v9 isNetworkDriveAllowed];

  if (((v7 | v8) & 1) != 0 && !v10)
  {
    return 0;
  }

LABEL_9:
  v11 = [v1 identifier];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;
  if (v12 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v14 == v15)
  {

    return 0;
  }

  v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v17)
  {
    return 0;
  }

  if ([v1 isAvailableSystemWide])
  {
    goto LABEL_27;
  }

  if (!v3)
  {
    return 0;
  }

  v18 = [v3 topLevelBundleIdentifier];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = [a1 hostIdentifier];
  v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (v19 == v23 && v21 == v25)
  {

    goto LABEL_27;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v29 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  if ([a1 forPickingDocuments])
  {
    return 1;
  }

  v30.receiver = v1;
  v30.super_class = type metadata accessor for DOCFileProviderSource();
  return objc_msgSendSuper2(&v30, sel_isValidForConfiguration_, a1);
}

void DOCFileProviderSource.updateProviderDomainEnabled(for:)(uint64_t a1, unint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
  if (v3)
  {
    v4 = v2;
    v7 = v3;
    v8 = [v7 isHidden];
    v9 = [objc_opt_self() protectedApps];
    v10 = [v9 isEnabled];

    if (v10 && [v7 isHidden])
    {
      if (one-time initialization token for UI != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.UI);
      v45 = v4;
      v12 = v4;

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v47 = v44;
        *v15 = 136315906;
        *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BD4CE0, &v47);
        *(v15 + 12) = 2080;
        v16 = v7;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16FPProviderDomainCSgMd, &_sSo16FPProviderDomainCSgMR);
        v17 = String.init<A>(describing:)();
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v47);

        *(v15 + 14) = v19;
        *(v15 + 22) = 2080;
        v20 = [v16 topLevelBundleIdentifier];
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        v46[0] = v21;
        v46[1] = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v24 = String.init<A>(describing:)();
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v47);

        *(v15 + 24) = v26;
        *(v15 + 32) = 2080;
        *(v15 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v47);
        _os_log_impl(&dword_2493AC000, v13, v14, "[PROTECTED APPS] %s providerDomain: %s topLevelBundleIdentifier: %s hostIdentifier: %s", v15, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x24C1FE850](v44, -1, -1);
        MEMORY[0x24C1FE850](v15, -1, -1);
      }

      v4 = v45;
      if ([v7 owningApplicationIsHidden])
      {
        v27 = [v7 topLevelBundleIdentifier];
        v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v30 = v29;

        if (v28 == a1 && v30 == a2)
        {
          v31 = 1;
        }

        else
        {
          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        if ([v7 owningApplicationIsHidden] && (v31 & 1) != 0 && (objc_msgSend(v7, sel_isHiddenByProvider) & 1) == 0 && (objc_msgSend(v7, sel_isHiddenByUser) & 1) == 0)
        {
          v33 = v7;
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v46[0] = v37;
            *v36 = 136315650;
            *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, 0x8000000249BD4CE0, v46);
            *(v36 + 12) = 2080;
            v38 = v33;
            v39 = [v38 description];
            v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = v41;

            v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v40, v42, v46);

            *(v36 + 14) = v43;
            *(v36 + 22) = 1024;
            *(v36 + 24) = 0;
            _os_log_impl(&dword_2493AC000, v34, v35, "[PROTECTED APPS] %s providerDomain: %s shouldHide: %{BOOL}d", v36, 0x1Cu);
            swift_arrayDestroy();
            MEMORY[0x24C1FE850](v37, -1, -1);
            MEMORY[0x24C1FE850](v36, -1, -1);
          }

          v8 = 0;
          v4 = v45;
        }
      }

      else
      {
        [v7 owningApplicationIsHidden];
      }
    }

    v32 = [v7 isEnabled];
    (*((*MEMORY[0x277D85000] & *v4) + 0x100))(v32 & (v8 ^ 1));
  }
}

id DOCFileProviderSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

double static DOCFileProviderSource.getMainICloudSourceIfEnabled(configuration:sourceObserver:completion:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  [a2 startObservingSources];
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in static DOCFileProviderSource.getMainICloudSourceIfEnabled(configuration:sourceObserver:completion:);
  *(v9 + 24) = v8;
  v12[4] = partial apply for closure #1 in static DOCFileProviderSource.getICloudSourcesIfEnabled(configuration:sourceObserver:completion:);
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
  v12[3] = &block_descriptor_29;
  v10 = _Block_copy(v12);

  [a2 retrieveSourcesForConfiguration:a1 usingBlock:v10];
  _Block_release(v10);

  return result;
}

void closure #1 in static DOCFileProviderSource.getMainICloudSourceIfEnabled(configuration:sourceObserver:completion:)(unint64_t a1, void (*a2)(void *))
{
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v5 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x24C1FC540](v5, a1);
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = *&v6[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain];
      if (v9)
      {
        v11 = v7;
        v10 = [v9 isMainiCloudDriveDomain];
        v7 = v11;
        if (v10)
        {
          goto LABEL_17;
        }
      }

      ++v5;
      if (v8 == i)
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
  v7 = 0;
LABEL_17:
  v12 = v7;
  a2(v7);
}

void static DOCFileProviderSource.getICloudSourcesIfEnabled(configuration:sourceObserver:completion:)(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  [a2 startObservingSources];
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v10[4] = closure #1 in static DOCFileProviderSource.getICloudSourcesIfEnabled(configuration:sourceObserver:completion:)partial apply;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed [DOCDocumentSource], @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_17_0;
  v9 = _Block_copy(v10);

  [a2 retrieveSourcesForConfiguration:a1 usingBlock:v9];
  _Block_release(v9);
}

double closure #1 in static DOCFileProviderSource.getICloudSourcesIfEnabled(configuration:sourceObserver:completion:)(unint64_t a1, void *a2, void (*a3)(uint64_t), unint64_t a4, double a5)
{
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = (&v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v13 = static OS_dispatch_queue.main.getter();
  (*(v10 + 104))(v13, *MEMORY[0x277D851F0], v9);
  v14 = _dispatchPreconditionTest(_:)();
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    goto LABEL_23;
  }

  if (one-time initialization token for UI != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logger.UI);
    v16 = a2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v36 = v20;
      *v19 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        v21 = Error.localizedDescription.getter();
        v23 = v22;
      }

      else
      {
        v23 = 0xE300000000000000;
        v21 = 7104878;
      }

      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v36);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_2493AC000, v17, v18, "[Default Source UI]: Got list of sources with error: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x24C1FE850](v20, -1, -1);
      MEMORY[0x24C1FE850](v19, -1, -1);
    }

    v36 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      break;
    }

    v25 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = a4;
    v33 = a3;
    if (!v25)
    {
      goto LABEL_26;
    }

LABEL_10:
    v26 = 0;
    a2 = 0;
    a4 = a1 & 0xC000000000000001;
    v27 = MEMORY[0x277D84F90];
    while (1)
    {
      if (a4)
      {
        v28 = MEMORY[0x24C1FC540](v26, a1);
      }

      else
      {
        if (v26 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v28 = *(a1 + 8 * v26 + 32);
      }

      v29 = v28;
      a3 = (v26 + 1);
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v35 = v28;
      closure #1 in closure #1 in static DOCFileProviderSource.getICloudSourcesIfEnabled(configuration:sourceObserver:completion:)(&v35, &v34);

      if (v34)
      {
        MEMORY[0x24C1FB090](v30);
        if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v27 = v36;
      }

      ++v26;
      if (a3 == v25)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  v25 = __CocoaSet.count.getter();
  v32 = a4;
  v33 = a3;
  if (v25)
  {
    goto LABEL_10;
  }

LABEL_26:
  v27 = MEMORY[0x277D84F90];
LABEL_27:
  v33(v27);

  return result;
}

void closure #1 in closure #1 in static DOCFileProviderSource.getICloudSourcesIfEnabled(configuration:sourceObserver:completion:)(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.UI);
  v4 = v2;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v59 = v56;
    *v7 = 136315394;
    v8 = [v4 displayName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v59);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = v4;
    v14 = [v13 description];
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v59);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_2493AC000, v5, v6, "[Default Source UI]: \t %s — %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v56, -1, -1);
    MEMORY[0x24C1FE850](v7, -1, -1);
  }

  type metadata accessor for DOCFileProviderSource();
  v19 = swift_dynamicCastClass();
  if (v19)
  {
    v20 = *(v19 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    if (v20)
    {
      v21 = v19;
      v22 = v4;
      v23 = v20;
      if ([v23 isiCloudDriveProvider] && objc_msgSend(v23, sel_isEnabled) && (objc_msgSend(v23, sel_isHidden) & 1) == 0 && (v24 = objc_msgSend(objc_opt_self(), sel_defaultManager), v25 = objc_msgSend(v24, sel_ubiquityIdentityToken), v24, v25))
      {
        swift_unknownObjectRelease();
        v26 = [objc_opt_self() defaultPermission];
        v27 = [v26 canHostAppPerformAction:1 fileProviderDomain:v23];

        v23 = v22;
        if (v27)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }
    }
  }

  v28 = v4;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v59 = v57;
    *v31 = 136316162;
    v32 = [v28 displayName];
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;

    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v59);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v37 = swift_dynamicCastClass();
    if (v37)
    {
      v38 = *(v37 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16FPProviderDomainCSgMd, &_sSo16FPProviderDomainCSgMR);
    v39 = String.init<A>(describing:)();
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v59);

    *(v31 + 14) = v41;
    *(v31 + 22) = 2080;
    v42 = swift_dynamicCastClass();
    if (v42)
    {
      v43 = *(v42 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v43)
      {
        [v43 isEnabled];
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v44 = String.init<A>(describing:)();
    v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v59);

    *(v31 + 24) = v46;
    *(v31 + 32) = 2080;
    v47 = swift_dynamicCastClass();
    if (v47)
    {
      v48 = *(v47 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v48)
      {
        [v48 isHidden];
      }
    }

    v49 = String.init<A>(describing:)();
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v50, &v59);

    *(v31 + 34) = v51;
    *(v31 + 42) = 2080;
    v52 = [objc_opt_self() defaultManager];
    [v52 ubiquityIdentityToken];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSCoding_So9NSCopyingSo8NSObjectpSgMd, &_sSo8NSCoding_So9NSCopyingSo8NSObjectpSgMR);
    v53 = String.init<A>(describing:)();
    v55 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v54, &v59);

    *(v31 + 44) = v55;
    _os_log_impl(&dword_2493AC000, v29, v30, "[Default Source UI]: Filtered OUT source %s: \n\t domain: %s \n\t isEnabled: %s \n\t isHidden: %s \n\t ubiquityToken %s ", v31, 0x34u);
    swift_arrayDestroy();
    MEMORY[0x24C1FE850](v57, -1, -1);
    MEMORY[0x24C1FE850](v31, -1, -1);

    v21 = 0;
  }

  else
  {

    v21 = 0;
  }

LABEL_26:
  *a2 = v21;
}

id DOCTrashedItemsSource._displayName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCTrashedItemsSource____lazy_storage____displayName);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCTrashedItemsSource____lazy_storage____displayName + 8))
  {
    countAndFlagsBits = *v1;
LABEL_5:

    return countAndFlagsBits;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v9._object = 0x8000000249BD4D80;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v6._countAndFlagsBits = 0xD00000000000001ALL;
    v6._object = 0x8000000249BD4D60;
    v7._object = 0x8000000249BD09B0;
    v9._countAndFlagsBits = 0xD000000000000037;
    v7._countAndFlagsBits = 0xD000000000000010;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v5, v4, v7, v9);
    countAndFlagsBits = v8._countAndFlagsBits;

    *v1 = v8;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void *DOCTrashedItemsSource.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCTrashedItemsSource____lazy_storage____displayName];
  *v4 = 0;
  *(v4 + 1) = 0;
  return DOCFileProviderSource.init(_:)(a1);
}

void *DOCTrashedItemsSource.init(_:)(void *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCTrashedItemsSource____lazy_storage____displayName);
  *v2 = 0;
  v2[1] = 0;
  return DOCFileProviderSource.init(_:)(a1);
}

id DOCTrashedItemsSource.init(enumerationIdentifier:defaultIdentifier:)(void *a1, void *a2)
{
  v3 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCTrashedItemsSource____lazy_storage____displayName);
  *v3 = 0;
  v3[1] = 0;
  return DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(a1, a2);
}

id DOCSharedDocumentsSource._displayName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSharedDocumentsSource____lazy_storage____displayName);
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSharedDocumentsSource____lazy_storage____displayName + 8))
  {
    countAndFlagsBits = *v1;
LABEL_5:

    return countAndFlagsBits;
  }

  result = _DocumentManagerBundle();
  if (result)
  {
    v4 = result;
    v9._object = 0x8000000249BD4D30;
    v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v5.value._object = 0xEB00000000656C62;
    v6._countAndFlagsBits = 0x646572616853;
    v7._object = 0x8000000249BD4D10;
    v9._countAndFlagsBits = 0xD00000000000002FLL;
    v7._countAndFlagsBits = 0xD000000000000010;
    v6._object = 0xE600000000000000;
    v8 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v5, v4, v6, v9);
    countAndFlagsBits = v8._countAndFlagsBits;

    *v1 = v8;

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id @objc DOCFileProviderSource.displayName.getter(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x24C1FAD20](v5, v7);

  return v8;
}

uint64_t DOCTrashedItemsSource.providerName.getter()
{
  v1 = [v0 displayName];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

id @objc DOCTrashedItemsSource.displayName.setter(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  v6.receiver = a1;
  v6.super_class = a4(a1, a2);
  return objc_msgSendSuper2(&v6, sel_setDisplayName_, a3);
}

void DOCTrashedItemsSource.displayName.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = MEMORY[0x24C1FAD20](a1);

  v7.receiver = v3;
  v7.super_class = a3(v6);
  objc_msgSendSuper2(&v7, sel_setDisplayName_, v5);
}

void *DOCSharedDocumentsSource.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSharedDocumentsSource____lazy_storage____displayName];
  *v4 = 0;
  *(v4 + 1) = 0;
  return DOCFileProviderSource.init(_:)(a1);
}

void *DOCSharedDocumentsSource.init(_:)(void *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSharedDocumentsSource____lazy_storage____displayName);
  *v2 = 0;
  v2[1] = 0;
  return DOCFileProviderSource.init(_:)(a1);
}

id DOCSharedDocumentsSource.init(enumerationIdentifier:defaultIdentifier:)(void *a1, void *a2)
{
  v3 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables24DOCSharedDocumentsSource____lazy_storage____displayName);
  *v3 = 0;
  v3[1] = 0;
  return DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(a1, a2);
}

id DOCFileProviderSource.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id @nonobjc LSApplicationExtensionRecord.init(url:)(uint64_t a1)
{
  v2 = v1;
  v15 = *MEMORY[0x277D85DE8];
  URL._bridgeToObjectiveC()(v15);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v12 = type metadata accessor for URL();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

void specialized MutableCollection._halfStablePartition(isSuffixElement:)(uint64_t *a1, unsigned __int8 a2)
{
  v4 = *a1;
  v5 = specialized Collection.firstIndex(where:)(*a1, a2);
  v7 = v5;
  if (!v2 && (v6 & 1) == 0)
  {
    if (__OFADD__(v5, 1))
    {
      goto LABEL_83;
    }

    v9 = (v4 + 16);
    v8 = *(v4 + 16);
    if (v5 + 1 != v8)
    {
      v10 = v5 + 33;
      v11 = a2;
      do
      {
        v13 = v10 - 32;
        if (v10 - 32 >= v8)
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
          return;
        }

        v14 = *(v4 + v10);
        if ((DOCItemSortMode.isDateMode.getter() & 1) == 0)
        {
          goto LABEL_72;
        }

        if (v14 > 4)
        {
          if (v14 <= 6)
          {
            if (v14 == 5)
            {
              v21 = 0xE400000000000000;
              v20 = 1684957547;
            }

            else
            {
              v21 = 0xE800000000000000;
              v20 = 0x7942646572616873;
            }

            v18 = 0xEC00000065746144;
          }

          else
          {
            v18 = 0xEC00000065746144;
            if (v14 == 7)
            {
              v20 = 0x6E6F697461657263;
              v21 = 0xEC00000065746144;
              v16 = 0x646573557473616CLL;
              goto LABEL_41;
            }

            if (v14 == 8)
            {
              v20 = 0x6564644165746164;
              v21 = 0xE900000000000064;
            }

            else
            {
              v20 = 0x745364756F6C6369;
              v21 = 0xEC00000073757461;
            }
          }

          v16 = 0x646573557473616CLL;
        }

        else
        {
          if (v14 == 3)
          {
            v15 = 1936154996;
          }

          else
          {
            v15 = 1702521203;
          }

          if (v14 == 2)
          {
            v15 = 1701667182;
          }

          v16 = 0x646573557473616CLL;
          if (v14)
          {
            v17 = 0x646573557473616CLL;
          }

          else
          {
            v17 = 0xD000000000000010;
          }

          v18 = 0xEC00000065746144;
          if (v14)
          {
            v19 = 0xEC00000065746144;
          }

          else
          {
            v19 = 0x8000000249BC5DF0;
          }

          if (v14 <= 1)
          {
            v20 = v17;
          }

          else
          {
            v20 = v15;
          }

          if (v14 <= 1)
          {
            v21 = v19;
          }

          else
          {
            v21 = 0xE400000000000000;
          }
        }

LABEL_41:
        v22 = 0x745364756F6C6369;
        if (v11 == 8)
        {
          v22 = 0x6564644165746164;
        }

        v23 = 0xEC00000073757461;
        if (v11 == 8)
        {
          v23 = 0xE900000000000064;
        }

        if (v11 == 7)
        {
          v22 = 0x6E6F697461657263;
          v23 = 0xEC00000065746144;
        }

        v24 = 0x7942646572616873;
        if (v11 == 5)
        {
          v24 = 1684957547;
        }

        v25 = 0xE800000000000000;
        if (v11 == 5)
        {
          v25 = 0xE400000000000000;
        }

        if (v11 <= 6)
        {
          v22 = v24;
          v23 = v25;
        }

        if (v11 == 3)
        {
          v26 = 1936154996;
        }

        else
        {
          v26 = 1702521203;
        }

        v27 = 0xE400000000000000;
        if (v11 == 2)
        {
          v26 = 1701667182;
          v27 = 0xE400000000000000;
        }

        if (!v11)
        {
          v16 = 0xD000000000000010;
          v18 = 0x8000000249BC5DF0;
        }

        if (v11 <= 1)
        {
          v26 = v16;
          v27 = v18;
        }

        if (v11 <= 4)
        {
          v28 = v26;
        }

        else
        {
          v28 = v22;
        }

        if (v11 <= 4)
        {
          v29 = v27;
        }

        else
        {
          v29 = v23;
        }

        if (v20 == v28 && v21 == v29)
        {
        }

        else
        {
          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v30 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

LABEL_72:
        if (v13 != v7)
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_80;
          }

          if (v7 >= *v9)
          {
            goto LABEL_81;
          }

          if (v13 >= *v9)
          {
            goto LABEL_82;
          }

          v31 = *(v4 + 32 + v7);
          v32 = *(v4 + v10);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
          }

          *(v4 + v7 + 32) = v32;
          *(v4 + v10) = v31;
          *a1 = v4;
        }

        ++v7;
LABEL_9:
        v9 = (v4 + 16);
        v8 = *(v4 + 16);
        v12 = v10 - 31;
        ++v10;
      }

      while (v12 != v8);
    }
  }
}

uint64_t specialized static DOCFileProviderSourceType.== infix(_:_:)(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a4)
    {
      v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = v5;
      if (v4 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v6 != v7)
      {
LABEL_11:
        v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_12;
      }

LABEL_10:
      v8 = 1;
LABEL_12:

      return v8 & 1;
    }
  }

  else if ((a4 & 1) == 0)
  {
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;
    if (v9 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v11 != v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = 0;
  return v8 & 1;
}

double outlined consume of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined copy of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

id specialized static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:)(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = *(a4 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
  type metadata accessor for UTType();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249B9A480;
  static UTType.url.getter();
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;
  if (v10 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v12 == v13)
  {

    goto LABEL_15;
  }

  v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v15)
  {
LABEL_15:
    v26 = swift_allocObject();
    v26[2] = v8;
    v26[3] = v9;
    v26[4] = a3;
    v27 = swift_allocObject();
    *(v27 + 16) = partial apply for closure #1 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:);
    *(v27 + 24) = v26;
    v86 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @guaranteed [String : Any]?) -> (@unowned Bool)partial apply;
    v87 = v27;
    v82 = MEMORY[0x277D85DD0];
    v83 = 1107296256;
    v84 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v85 = &block_descriptor_293;
    v28 = _Block_copy(&v82);
    v29 = objc_opt_self();
    v30 = v8;
    v31 = a3;
    v32 = [v29 predicateWithBlock_];
    goto LABEL_16;
  }

  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  if (v16 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v18 == v19)
  {

    goto LABEL_19;
  }

  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
LABEL_19:
    v36 = swift_allocObject();
    v36[2] = v8;
    v36[3] = v9;
    v36[4] = a3;
    v37 = swift_allocObject();
    *(v37 + 16) = partial apply for closure #2 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:);
    *(v37 + 24) = v36;
    v86 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @guaranteed [String : Any]?) -> (@unowned Bool)partial apply;
    v87 = v37;
    v82 = MEMORY[0x277D85DD0];
    v83 = 1107296256;
    v84 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v85 = &block_descriptor_283;
    v28 = _Block_copy(&v82);
    v38 = objc_opt_self();
    v39 = v8;
    v40 = a3;
    v32 = [v38 predicateWithBlock_];
    goto LABEL_16;
  }

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;
  if (v22 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v24 == v25)
  {

LABEL_21:

    v42 = swift_allocObject();
    *(v42 + 16) = a3;
    v43 = swift_allocObject();
    *(v43 + 16) = partial apply for closure #3 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:);
    *(v43 + 24) = v42;
    v86 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @guaranteed [String : Any]?) -> (@unowned Bool)partial apply;
    v87 = v43;
    v82 = MEMORY[0x277D85DD0];
    v83 = 1107296256;
    v84 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v85 = &block_descriptor_273;
    v28 = _Block_copy(&v82);
    v44 = objc_opt_self();
    v45 = a3;
    v32 = [v44 predicateWithBlock_];
    goto LABEL_16;
  }

  v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v41)
  {
    goto LABEL_21;
  }

  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v48 = v47;
  if (v46 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v48 == v49)
  {

LABEL_26:

    v51 = swift_allocObject();
    *(v51 + 16) = a3;
    v52 = swift_allocObject();
    *(v52 + 16) = partial apply for closure #4 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:);
    *(v52 + 24) = v51;
    v86 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @guaranteed [String : Any]?) -> (@unowned Bool)partial apply;
    v87 = v52;
    v82 = MEMORY[0x277D85DD0];
    v83 = 1107296256;
    v84 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
    v85 = &block_descriptor_263;
    v28 = _Block_copy(&v82);
    v53 = objc_opt_self();
    v54 = a3;
    v32 = [v53 predicateWithBlock_];
    goto LABEL_16;
  }

  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v50)
  {
    goto LABEL_26;
  }

  v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v56;
  if (v55 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v57 == v58)
  {
  }

  else
  {
    v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v59 & 1) == 0)
    {
      v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v67 = v66;
      if (v65 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v67 == v68)
      {
      }

      else
      {
        v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v69 & 1) == 0)
        {

          v77 = swift_allocObject();
          *(v77 + 16) = a5;
          *(v77 + 24) = a3;
          v78 = swift_allocObject();
          *(v78 + 16) = partial apply for closure #7 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:);
          *(v78 + 24) = v77;
          v86 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @guaranteed [String : Any]?) -> (@unowned Bool);
          v87 = v78;
          v82 = MEMORY[0x277D85DD0];
          v83 = 1107296256;
          v84 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
          v85 = &block_descriptor_233;
          v28 = _Block_copy(&v82);
          v79 = objc_opt_self();
          v80 = a5;
          v81 = a3;
          v32 = [v79 predicateWithBlock_];
          goto LABEL_16;
        }
      }

      v70 = swift_allocObject();
      v70[2] = a2;
      v70[3] = v8;
      v70[4] = v9;
      v70[5] = a3;
      v71 = swift_allocObject();
      *(v71 + 16) = partial apply for closure #6 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:);
      *(v71 + 24) = v70;
      v86 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @guaranteed [String : Any]?) -> (@unowned Bool)partial apply;
      v87 = v71;
      v82 = MEMORY[0x277D85DD0];
      v83 = 1107296256;
      v84 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
      v85 = &block_descriptor_243_0;
      v72 = _Block_copy(&v82);
      v73 = objc_opt_self();
      v74 = a2;
      v75 = v8;
      v76 = a3;
      v33 = [v73 predicateWithBlock_];
      v34 = v72;
      goto LABEL_17;
    }
  }

  v60 = swift_allocObject();
  v60[2] = v8;
  v60[3] = v9;
  v60[4] = a3;
  v61 = swift_allocObject();
  *(v61 + 16) = partial apply for closure #5 in static DOCFileProviderSource.itemFilteringPredicate(for:enumerationProperties:managedPermission:itemCollectionConfiguration:existingPredicate:);
  *(v61 + 24) = v60;
  v86 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any, @guaranteed [String : Any]?) -> (@unowned Bool)partial apply;
  v87 = v61;
  v82 = MEMORY[0x277D85DD0];
  v83 = 1107296256;
  v84 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @guaranteed [String : Any]?) -> (@unowned Bool);
  v85 = &block_descriptor_253_0;
  v28 = _Block_copy(&v82);
  v62 = objc_opt_self();
  v63 = v8;
  v64 = a3;
  v32 = [v62 predicateWithBlock_];
LABEL_16:
  v33 = v32;
  v34 = v28;
LABEL_17:
  _Block_release(v34);

  return v33;
}

void specialized static DOCFileProviderSource.createSpotlightSources()()
{
  v0 = *MEMORY[0x277D05D78];
  v1 = type metadata accessor for DOCFileProviderSource();
  v2 = objc_allocWithZone(v1);
  v3 = DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(@"com.apple.DocumentManager.SpotlightFileProvider.activities", v0);
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultSorting;
  swift_beginAccess();
  *(v3 + v4) = 1;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes;
  swift_beginAccess();
  *(v3 + v5) = &outlined read-only object #0 of static DOCFileProviderSource.createSpotlightSources();

  (*((*MEMORY[0x277D85000] & *v3) + 0x1A8))(1);
  v6 = *MEMORY[0x277D05DA0];
  v7 = objc_allocWithZone(v1);
  v8 = DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(@"com.apple.DocumentManager.SpotlightFileProvider.favoriteFolders", v6);
  v9 = *MEMORY[0x277D05DD0];
  v10 = objc_allocWithZone(type metadata accessor for DOCTrashedItemsSource()) + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCTrashedItemsSource____lazy_storage____displayName;
  *v10 = 0;
  v10[1] = 0;
  v11 = DOCFileProviderSource.init(enumerationIdentifier:defaultIdentifier:)(@"com.apple.DocumentManager.SpotlightFileProvider.trashedItems", v9);
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultSorting;
  swift_beginAccess();
  v11[v12] = 2;
  v13 = OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes;
  swift_beginAccess();
  *&v11[v13] = &outlined read-only object #1 of static DOCFileProviderSource.createSpotlightSources();
  v14 = v11;

  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 trashedItemsLocation];
  v18 = [v17 promptText];

  if (v18)
  {
    [v16 setPromptText_];

    v19 = &v16[OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_dropAction];
    swift_beginAccess();
    v20 = *v19;
    v21 = v19[1];
    *v19 = closure #1 in static DOCFileProviderSource.createSpotlightSources();
    v19[1] = 0;
    outlined consume of (@escaping @callee_guaranteed () -> (@owned DOCCopyableBarButtonItem))?(v20, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_249BA5040;
    if (one-time initialization token for searchSource != -1)
    {
      swift_once();
    }

    v23 = static DOCFileProviderSource.searchSource;
    *(v22 + 32) = static DOCFileProviderSource.searchSource;
    v24 = one-time initialization token for recentDocumentsSource;
    v25 = v23;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = static DOCFileProviderSource.recentDocumentsSource;
    *(v22 + 40) = static DOCFileProviderSource.recentDocumentsSource;
    *(v22 + 48) = v3;
    v27 = one-time initialization token for taggedItemsSource;
    v28 = v26;
    v29 = v3;
    if (v27 != -1)
    {
      swift_once();
    }

    v30 = static DOCFileProviderSource.taggedItemsSource;
    *(v22 + 56) = static DOCFileProviderSource.taggedItemsSource;
    *(v22 + 64) = v8;
    v31 = one-time initialization token for sharedItemsSource;
    v32 = v30;
    v33 = v8;
    if (v31 != -1)
    {
      swift_once();
    }

    v34 = static DOCFileProviderSource.sharedItemsSource;
    *(v22 + 72) = static DOCFileProviderSource.sharedItemsSource;
    *(v22 + 80) = v16;
    v35 = v34;
  }

  else
  {
    __break(1u);
  }
}

void *specialized static DOCFileProviderSource.newSource(from:with:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = [a1 identifier];
  v7 = DOCProviderDomainIDIsLegacyWebDAV();

  if (v7)
  {
    v8 = type metadata accessor for DOCFileProviderSource();
LABEL_7:
    v13 = objc_allocWithZone(v8);
    return DOCFileProviderSource.init(_:)(a1);
  }

  v9 = [a1 identifier];
  v10 = DOCProviderDomainIDIsSharedServerDomainID();

  if (v10)
  {
    v8 = type metadata accessor for DOCSharedServerSource();
    goto LABEL_7;
  }

  v11 = [a1 identifier];
  v12 = DOCProviderDomainIDIsExternalDevice();

  if (v12)
  {
    v8 = type metadata accessor for DOCExternalDeviceSource();
    goto LABEL_7;
  }

  v15 = objc_allocWithZone(type metadata accessor for DOCFileProviderSource());
  v16 = DOCFileProviderSource.init(_:)(a1);
  DOCFileProviderSource.updateProviderDomainEnabled(for:)(a2, a3);
  return v16;
}

void specialized DOCFileProviderSource.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_dropAction);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isProviderDomainEnabled) = 2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___actionManager) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage___containingApplicationIdentifier) = xmmword_249BA5030;
  v2 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____displayName);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____providerName);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource____lazy_storage____domainName) = xmmword_249BA5030;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_isEjectable) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_requiresCustomEnumerationProperties) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultSorting) = 2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_sortingModes) = &outlined read-only object #0 of DOCFileProviderSource.init(coder:);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_groupingEnabledByDefault) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_defaultGroupingMode) = 5;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_availableDisplayModes) = &outlined read-only object #1 of DOCFileProviderSource.init(coder:);
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_errorCount) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_supportsImportInDefaultSaveLocation) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void keypath_set_31Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t getEnumTagSinglePayload for DOCFileProviderSourceType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DOCFileProviderSourceType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed UIDropSession, @in_guaranteed UIDropOperation, @in_guaranteed UIViewController) -> (@out ())(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a2;
  v8 = a1;
  v6 = a3;
  return v4(&v8, &v7, &v6);
}

unint64_t lazy protocol witness table accessor for type [DOCNode] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DOCNode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DOCNode] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DOCNode] and conformance [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [DOCNode] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DOCNode] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo7DOCNode_pGMd, &_sSaySo7DOCNode_pGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DOCNode] and conformance [A]);
  }

  return result;
}

uint64_t objectdestroy_245Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t lazy protocol witness table accessor for type NSError and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type NSError and conformance NSObject;
  if (!lazy protocol witness table cache variable for type NSError and conformance NSObject)
  {
    type metadata accessor for NSMutableAttributedString(255, &lazy cache variable for type metadata for NSError, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSError and conformance NSObject);
  }

  return result;
}

void static DOCBrowserLayout.grid.getter(void *a1@<X8>)
{
  a1[3] = &type metadata for DOCBrowserGridLayout_Modern;
  a1[4] = &protocol witness table for DOCBrowserGridLayout_Modern;
  a1[5] = &protocol witness table for DOCBrowserGridLayout_Modern;
}

id DOCItemCollectionGridCell_Base.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCItemCollectionGridCell_Base();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *DOCBrowserGridLayout_Modern.newCell(frame:containerViewForSizing:)(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = objc_allocWithZone(type metadata accessor for DOCItemCollectionGridCell());
  v11 = a1;
  return DOCItemCollectionGridCell.init(frame:containerView:)(a1, a2, a3, a4, a5);
}

char *protocol witness for DOCBrowserGridCellFactory.newCell(frame:containerViewForSizing:) in conformance DOCBrowserGridLayout_Modern(void *a1, double a2, double a3, double a4, double a5)
{
  v10 = objc_allocWithZone(type metadata accessor for DOCItemCollectionGridCell());
  v11 = a1;
  return DOCItemCollectionGridCell.init(frame:containerView:)(a1, a2, a3, a4, a5);
}

double DOCUnicode.rawValue.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables10DOCUnicode_rawValue);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id DOCUnicode.__allocating_init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables10DOCUnicode_rawValue];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id DOCUnicode.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC26DocumentManagerExecutables10DOCUnicode_rawValue];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for DOCUnicode();
  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCUnicode.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCUnicode.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCUnicode();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCUnicode@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 112))(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance DOCUnicode@<X0>(uint64_t *a1@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **v1) + 0x58))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

id static DOCUnicode.nonBreakingSpace(zeroWidth:)(char a1)
{
  if (a1)
  {
    if (one-time initialization token for nonBreakingSpace_zeroWidth != -1)
    {
      swift_once();
    }

    v1 = &static DOCUnicode.nonBreakingSpace_zeroWidth;
  }

  else
  {
    if (one-time initialization token for nonBreakingSpace != -1)
    {
      swift_once();
    }

    v1 = &static DOCUnicode.nonBreakingSpace;
  }

  v2 = *v1;

  return v2;
}

id @objc static DOCUnicode.horizontalEllipsis.getter(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

id DOCServiceActionPopoverTrackerController.__allocating_init(fullViewController:action:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCServiceActionPopoverTrackerController_action] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id DOCServiceActionPopoverTrackerController.init(fullViewController:action:)(void *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables40DOCServiceActionPopoverTrackerController_action] = a2;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for DOCServiceActionPopoverTrackerController();
  v5 = objc_msgSendSuper2(&v7, sel_init);

  return v5;
}

double DOCServiceActionPopoverTrackerController.getFrameFor(_:waitForNewThumbnail:completionBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = a3;
  v7[4] = a4;
  v8 = v4;

  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in DOCServiceActionPopoverTrackerController.getFrameFor(_:waitForNewThumbnail:completionBlock:)(uint64_t a1, void (*a2)(double, double, double, double), unint64_t a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = [Strong dataSource];

  v8 = (*((*MEMORY[0x277D85000] & *v7) + 0xF0))();
  if (v8 >> 62)
  {
    goto LABEL_31;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_32:

    return;
  }

LABEL_4:
  v10 = __OFSUB__(v9, 1);
  v11 = v9 - 1;
  if (v10)
  {
    __break(1u);
  }

  else if ((v8 & 0xC000000000000001) == 0)
  {
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v11 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v8 + 8 * v11 + 32);
      goto LABEL_9;
    }

    __break(1u);
    goto LABEL_39;
  }

  v12 = MEMORY[0x24C1FC540](v11, v8);
LABEL_9:
  v66 = v12;

  v13 = [v66 toolbarItems];
  v63 = a2;
  if (!v13)
  {
    goto LABEL_41;
  }

  v8 = v13;
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);
  a3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (a3 >> 62)
  {
LABEL_39:
    v14 = __CocoaSet.count.getter();
    if (!v14)
    {
LABEL_40:

      a2 = v63;
LABEL_41:
      type metadata accessor for DOCBrowserContainerController();
      v27 = swift_dynamicCastClass();
      if (v27)
      {
        goto LABEL_42;
      }

      goto LABEL_64;
    }

    goto LABEL_12;
  }

  v14 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_40;
  }

LABEL_12:
  v15 = 0;
  v64 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCServiceActionPopoverTrackerController_action;
  while (1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x24C1FC540](v15, a3);
    }

    else
    {
      if (v15 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v16 = *(a3 + 8 * v15 + 32);
    }

    v17 = v16;
    a2 = (v15 + 1);
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v9 = __CocoaSet.count.getter();
      if (!v9)
      {
        goto LABEL_32;
      }

      goto LABEL_4;
    }

    v8 = type metadata accessor for DOCActionToolBarItem();
    v18 = swift_dynamicCastClass();
    if (v18)
    {
      break;
    }

LABEL_14:

    ++v15;
    if (a2 == v14)
    {
      goto LABEL_40;
    }
  }

  v19 = *((*MEMORY[0x277D85000] & *v18) + 0x60);
  v20 = v17;
  v21 = v19();
  if (!v21)
  {

    goto LABEL_14;
  }

  v22 = v21;
  v23 = *(a1 + v64);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
  v24 = v23;
  v25 = static NSObject.== infix(_:_:)();

  if ((v25 & 1) == 0)
  {
    goto LABEL_14;
  }

  v26 = swift_dynamicCastClass();
  if (v26)
  {
    a2 = v63;
    goto LABEL_58;
  }

  type metadata accessor for DOCBrowserContainerController();
  v27 = swift_dynamicCastClass();
  a2 = v63;
  if (!v27)
  {
    goto LABEL_64;
  }

LABEL_42:
  v28 = *((*MEMORY[0x277D85000] & *v27) + 0x238);
  v29 = v66;
  v30 = v28();

  if (!v30)
  {
    __break(1u);
    return;
  }

  v31 = UINavigationItem.doc_allUnderlyingBarButtonItems.getter();

  if (!(v31 >> 62))
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_45;
    }

LABEL_63:

    a2 = v63;
LABEL_64:
    a2(0.0, 0.0, 0.0, 0.0);
    goto LABEL_65;
  }

  while (2)
  {
    v32 = __CocoaSet.count.getter();
    if (!v32)
    {
      goto LABEL_63;
    }

LABEL_45:
    v33 = 0;
    v65 = OBJC_IVAR____TtC26DocumentManagerExecutables40DOCServiceActionPopoverTrackerController_action;
LABEL_48:
    if ((v31 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x24C1FC540](v33, v31);
    }

    else
    {
      if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_61;
      }

      v34 = *(v31 + 8 * v33 + 32);
    }

    v35 = v34;
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      continue;
    }

    break;
  }

  type metadata accessor for DOCActionToolBarItem();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {
    goto LABEL_47;
  }

  v38 = *((*MEMORY[0x277D85000] & *v37) + 0x60);
  v39 = v35;
  v40 = v38();
  if (!v40)
  {

    goto LABEL_47;
  }

  v41 = v40;
  v42 = *(a1 + v65);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIDocumentBrowserAction, 0x277D05F28);
  v43 = v42;
  v44 = static NSObject.== infix(_:_:)();

  if ((v44 & 1) == 0)
  {
LABEL_47:

    ++v33;
    if (v36 == v32)
    {
      goto LABEL_63;
    }

    goto LABEL_48;
  }

  v26 = swift_dynamicCastClass();
  a2 = v63;
  if (!v26)
  {

    goto LABEL_64;
  }

LABEL_58:
  v45 = v26;
  v46 = [v45 _doc_ipi_viewForPresenting];
  [v45 _doc_ipi_rectForPresenting];
  v48 = v47;
  v50 = v49;
  v52 = v51;
  v54 = v53;

  [v46 convertRect:0 toView:{v48, v50, v52, v54}];
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v62 = v61;

  a2(v56, v58, v60, v62);
LABEL_65:
}

char *DOCServiceItemPopoverTrackerController.__allocating_init(itemCollection:node:)(char *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v6 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_configuration] = v6;
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_node] = a2;
  v10.receiver = v5;
  v10.super_class = v2;
  v7 = v6;
  v8 = objc_msgSendSuper2(&v10, sel_init);

  return v8;
}

char *DOCServiceItemPopoverTrackerController.init(itemCollection:node:)(char *a1, uint64_t a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v5 = *&a1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_configuration] = v5;
  *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_node] = a2;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for DOCServiceItemPopoverTrackerController();
  v6 = v5;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  return v7;
}

double DOCServiceItemPopoverTrackerController.getFrameFor(_:waitForNewThumbnail:completionBlock:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = [*&v4[OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_configuration] hostIdentifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = [objc_opt_self() mainBundle];
  v15 = [v14 bundleIdentifier];

  if (!v15)
  {

    goto LABEL_9;
  }

  v27 = a4;
  v16 = a3;
  v17 = a1;
  v18 = a2;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v11 == v19 && v13 == v21)
  {

    a2 = v18;
    a1 = v17;
    a3 = v16;
    a4 = v27;
    goto LABEL_11;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  a2 = v18;
  a1 = v17;
  a3 = v16;
  a4 = v27;
  if ((v23 & 1) == 0)
  {
LABEL_9:
    *(v9 + 16) = 1;
  }

LABEL_11:
  v24 = swift_allocObject();
  *(v24 + 16) = v4;
  *(v24 + 24) = a3;
  *(v24 + 32) = a4;
  *(v24 + 40) = a1;
  *(v24 + 48) = a2 & 1;
  *(v24 + 56) = v9;
  v25 = v4;

  DOCRunInMainThread(_:)();

  return result;
}

uint64_t closure #1 in DOCServiceItemPopoverTrackerController.getFrameFor(_:waitForNewThumbnail:completionBlock:)(char *a1, uint64_t (*a2)(double, double, double, double), uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v29 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for IndexPath();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return (a2)(Strong, 0.0, 0.0, 0.0, 0.0);
  }

  v21 = Strong;
  (*((*MEMORY[0x277D85000] & *Strong) + 0xD98))(*&a1[OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_node]);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {

    Strong = outlined destroy of IndexPath?(v14);
    return (a2)(Strong, 0.0, 0.0, 0.0, 0.0);
  }

  (*(v16 + 32))(v19, v14, v15);
  v23 = swift_allocObject();
  v24 = v29;
  *(v23 + 24) = a1;
  *(v23 + 32) = v24;
  *(v23 + 16) = v21;
  *(v23 + 40) = a5 & 1;
  *(v23 + 48) = a6;
  *(v23 + 56) = a2;
  *(v23 + 64) = a3;
  v25 = *((*MEMORY[0x277D85000] & *v21) + 0x18D8);
  v26 = v21;
  v27 = a1;

  v25(v19, partial apply for closure #1 in closure #1 in DOCServiceItemPopoverTrackerController.getFrameFor(_:waitForNewThumbnail:completionBlock:), v23);

  return (*(v16 + 8))(v19, v15);
}

double closure #1 in closure #1 in DOCServiceItemPopoverTrackerController.getFrameFor(_:waitForNewThumbnail:completionBlock:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a2 + OBJC_IVAR____TtC26DocumentManagerExecutables38DOCServiceItemPopoverTrackerController_node);
  swift_beginAccess();
  v14 = *(a5 + 16);
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  *(v15 + 24) = a7;
  v16 = *((*MEMORY[0x277D85000] & *a1) + 0x17F8);

  v16(v13, a3, a4, v14, partial apply for closure #1 in closure #1 in closure #1 in DOCServiceItemPopoverTrackerController.getFrameFor(_:waitForNewThumbnail:completionBlock:), v15);

  return result;
}

uint64_t DOCServiceTransitionController.sceneIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_sceneIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double DOCServiceTransitionController.sceneIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_sceneIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id DOCServiceTransitionController.__allocating_init(itemCollection:node:sceneIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  swift_unknownObjectWeakInit();
  v11 = &v10[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_sceneIdentifier];
  *v11 = 0;
  *(v11 + 1) = 0;
  swift_unknownObjectWeakAssign();
  *&v10[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node] = a2;
  swift_beginAccess();
  *v11 = a3;
  *(v11 + 1) = a4;
  swift_unknownObjectRetain();

  v14.receiver = v10;
  v14.super_class = v5;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  swift_unknownObjectRelease();
  return v12;
}

id DOCServiceTransitionController.init(itemCollection:node:sceneIdentifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = specialized DOCServiceTransitionController.init(itemCollection:node:sceneIdentifier:)(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v5;
}

double DOCServiceTransitionController.setHasProgress(_:loadingFractionCompleted:setIsIndeterminate:)(char a1, char a2, double a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a1;
  *(v7 + 25) = a2;
  *(v7 + 32) = a3;
  v8 = v3;
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in DOCServiceTransitionController.setHasProgress(_:loadingFractionCompleted:setIsIndeterminate:)(uint64_t a1, char a2, char a3, double a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v9 = MEMORY[0x277D85000];
  v32 = Strong;
  if (a2)
  {
    v10 = *((*MEMORY[0x277D85000] & *Strong) + 0xBF8);
    v11 = v10();
    if (v11 && (v12 = v11, swift_unknownObjectRetain(), outlined consume of (progress: NSProgress, node: DOCNode)?(v12), swift_getObjectType(), v13 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node), LOBYTE(v12) = DOCNode.isEqualTo(node:)(v13), v14 = swift_unknownObjectRelease(), (v12 & 1) != 0))
    {
      v15 = (v10)(v14);
      if (!v15)
      {
LABEL_29:
        __break(1u);
        return;
      }

      v17 = v15;
      v18 = v16;
    }

    else
    {
      v17 = [objc_allocWithZone(MEMORY[0x277CCAC48]) init];
      v18 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node);
      swift_unknownObjectRetain();
      v13 = v18;
    }

    v22 = sel_setTotalUnitCount_;
    v23 = v17;
    if (a3)
    {
      v24 = -1;
      goto LABEL_18;
    }

    [v17 setTotalUnitCount_];
    v25 = a4 * 1000.0;
    if (COERCE__INT64(fabs(a4 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        v24 = v25;
        v22 = sel_setCompletedUnitCount_;
        v23 = v17;
LABEL_18:
        [v23 v22];
        v26 = (*((*v9 & *v32) + 0x18D0))(v13);
        if (v26)
        {
          v27 = v26;
          v28 = (*((*v9 & *v26) + 0x208))();

          if (v28)
          {
            v29 = *((*v9 & *v28) + 0x540);
            v30 = v17;
            v29(v17);
          }
        }

        v31 = *((*v9 & *v32) + 0xC00);
        v21 = v17;
        swift_unknownObjectRetain();
        v31(v17, v18);
        swift_unknownObjectRelease();
        goto LABEL_22;
      }

      goto LABEL_28;
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  (*((*MEMORY[0x277D85000] & *Strong) + 0xC00))(0, 0);
  v19 = (*((*v9 & *v32) + 0x18D0))(*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node));
  if (v19)
  {
    v20 = v19;
    v21 = (*((*v9 & *v19) + 0x208))();

    if (v21)
    {
      (*((*v9 & *v21) + 0x540))(0);
LABEL_22:
    }
  }
}

double DOCServiceTransitionController.getDisplayInformation(waitForNewThumbnail:_:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a1;
  v8 = v3;

  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in DOCServiceTransitionController.getDisplayInformation(waitForNewThumbnail:_:)(uint64_t a1, void (*a2)(void, void, double, double, double, double), uint64_t a3, char a4)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node);
    v11 = swift_allocObject();
    *(v11 + 16) = a2;
    *(v11 + 24) = a3;
    v12 = *((*MEMORY[0x277D85000] & *v9) + 0x17F8);

    v12(v10, 0, a4 & 1, 0, partial apply for closure #1 in closure #1 in DOCServiceTransitionController.getDisplayInformation(waitForNewThumbnail:_:), v11);
  }

  else
  {
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.UI);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 136315138;
      *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002DLL, 0x8000000249BD5330, &v18);
      _os_log_impl(&dword_2493AC000, v14, v15, "%s itemCollection is nil. Can not get display imformation.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x24C1FE850](v17, -1, -1);
      MEMORY[0x24C1FE850](v16, -1, -1);
    }

    a2(0, 0, 0.0, 0.0, 0.0, 0.0);
  }
}

void closure #1 in DOCServiceTransitionController.startTransition()(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node);
    v4 = MEMORY[0x277D85000];
    v5 = *((*MEMORY[0x277D85000] & *Strong) + 0xC18);
    v9 = Strong;
    swift_unknownObjectRetain();
    v5(0, v3);
    v6 = (*((*v4 & *v9) + 0x18D0))(v3);
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);

      [v8 setHidden_];
    }
  }
}

double DOCServiceTransitionController.startTransition()(uint64_t a1, uint64_t a2)
{
  *(swift_allocObject() + 16) = v2;
  v3 = v2;
  DOCRunInMainThread(_:)();

  return result;
}

void closure #1 in DOCServiceTransitionController.endTransition()(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = MEMORY[0x277D85000];
    v17 = Strong;
    (*((*MEMORY[0x277D85000] & *Strong) + 0xC18))(0, 0);
    v4 = (*((*v3 & *v17) + 0x18D0))(*(a1 + OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node));
    if (v4)
    {
      v5 = v4;
      v6 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCItemCollectionCell_thumbnailView);

      [v6 setHidden_];
    }

    v7 = (*((*v3 & *v17) + 0xBD8))() == 3;
    v8 = (*((*v3 & *v17) + 0x1300))(v7, MEMORY[0x277D84F90]);
    v9 = (*((*v3 & *a1) + 0x80))(v8);
    if (v10)
    {
      v11 = MEMORY[0x24C1FAD20](v9);
    }

    else
    {
      v11 = 0;
    }

    v12 = specialized static DOCInteractionManager.sharedManager(for:)(v11);

    (*((*v3 & *v12) + 0x68))(0);
    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Logger.UI);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      MEMORY[0x24C1FE850](v16, -1, -1);
    }
  }
}

void @objc DOCServiceTransitionController.startTransition()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(swift_allocObject() + 16) = a1;
  v5 = a1;
  DOCRunInMainThread(_:)();
}

id DOCServiceTransitionController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DOCServiceActionPopoverTrackerController.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id specialized DOCServiceTransitionController.init(itemCollection:node:sceneIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_unknownObjectWeakInit();
  v8 = &v4[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_sceneIdentifier];
  *v8 = 0;
  *(v8 + 1) = 0;
  swift_unknownObjectWeakAssign();
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables30DOCServiceTransitionController_node] = a2;
  swift_beginAccess();
  *v8 = a3;
  *(v8 + 1) = a4;
  swift_unknownObjectRetain();

  v10.receiver = v4;
  v10.super_class = type metadata accessor for DOCServiceTransitionController();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t objectdestroyTm_3(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

void *outlined consume of (progress: NSProgress, node: DOCNode)?(void *result)
{
  if (result)
  {

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t outlined destroy of IndexPath?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathVSgMd, &_s10Foundation9IndexPathVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x277CC9AF8], &lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, MEMORY[0x277CC9AF8], MEMORY[0x277CC9B18]);
}

{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x277D85578], &lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578], MEMORY[0x277D85590]);
}

{
  return specialized Sequence<>.contains(_:)(a1, a2, MEMORY[0x277CC9578], &lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
}

{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

{
  v3 = a2 + 32;
  v4 = *(a2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 80;
    outlined init with copy of DOCGridLayout.Spec?(v3, v8, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
    v6 = MEMORY[0x24C1FC430](v8, a1);
    outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
    v3 = v5;
  }

  while ((v6 & 1) == 0);
  return v4 != 0;
}

BOOL specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    a3(0);
    ++v9;
    lazy protocol witness table accessor for type IndexPath and conformance IndexPath(a4, a5, a6);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v10 != v11;
}

BOOL specialized Sequence<>.contains(_:)(void *a1, uint64_t a2)
{
  v3 = a2 + 32;
  v4 = *(a2 + 16) + 1;
  do
  {
    if (!--v4)
    {
      break;
    }

    v5 = v3 + 56;
    outlined init with copy of DOCIdentityHashableLocation(v3, v9);
    Hasher.init(_seed:)();
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    dispatch thunk of Hashable.hash(into:)();
    v6 = Hasher._finalize()();
    Hasher.init(_seed:)();
    __swift_project_boxed_opaque_existential_1(a1 + 1, a1[4]);
    dispatch thunk of Hashable.hash(into:)();
    v7 = Hasher._finalize()();
    outlined destroy of DOCIdentityHashableLocation(v9);
    v3 = v5;
  }

  while (v6 != v7);
  return v4 != 0;
}

uint64_t specialized Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  for (i = a2 + 32; ; i += 80)
  {
    outlined init with copy of DOCGridLayout.Spec?(i, v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
    outlined init with copy of DOCGridLayout.Spec?(a1, &v11, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
    if (!v10)
    {
      break;
    }

    outlined init with copy of DOCGridLayout.Spec?(v9, v8, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
    if (!*(&v12 + 1))
    {
      outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
      goto LABEL_4;
    }

    v7[2] = v13;
    v7[3] = v14;
    v7[4] = v15;
    v7[0] = v11;
    v7[1] = v12;
    v5 = MEMORY[0x24C1FC430](v8, v7);
    outlined destroy of CharacterSet?(v7, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
    outlined destroy of CharacterSet?(v8, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMd, _s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGMR);
    outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
    if (v5)
    {
      return 1;
    }

LABEL_5:
    if (!--v2)
    {
      return 0;
    }
  }

  if (*(&v12 + 1))
  {
LABEL_4:
    outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSg_AFtMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSg_AFtMR);
    goto LABEL_5;
  }

  outlined destroy of CharacterSet?(v9, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMd, &_s26DocumentManagerExecutables21DOCDiffableIdentifierVyAA29DOCProgressProvidingOperation_pGSgMR);
  return 1;
}

void DOCFileTypeSuggestion.apply(on:)(void *a1)
{
  v30 = type metadata accessor for UTType();
  v3 = *(v30 - 8);
  v5 = MEMORY[0x28223BE20](v30, v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 allowedContentTypes];
  if (v8)
  {

    __break(1u);
    goto LABEL_11;
  }

  v9 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_7932FEBB571AFC57FDF941318C04239B21DOCFileTypeSuggestion_contentTypes);
  if (!v9)
  {
LABEL_11:
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v10 = *(v9 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v26 = a1;
    v31 = MEMORY[0x277D84F90];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v10, 0);
    v11 = v31;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v14 = *(v12 + 64);
    v25[1] = v9;
    v15 = v9 + ((v14 + 32) & ~v14);
    v27 = *(v12 + 56);
    v28 = v13;
    v29 = v12;
    v16 = (v12 - 8);
    do
    {
      v17 = v30;
      v28(v7, v15, v30);
      v18 = UTType.identifier.getter();
      v20 = v19;
      (*v16)(v7, v17);
      v31 = v11;
      v22 = *(v11 + 16);
      v21 = *(v11 + 24);
      if (v22 >= v21 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1);
        v11 = v31;
      }

      *(v11 + 16) = v22 + 1;
      v23 = v11 + 16 * v22;
      *(v23 + 32) = v18;
      *(v23 + 40) = v20;
      v15 += v27;
      --v10;
    }

    while (v10);

    a1 = v26;
  }

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v11);

  isa = Set._bridgeToObjectiveC()().super.isa;

  [a1 setAllowedContentTypes_];
}

id DOCFileTypeSuggestion.__allocating_init(inputString:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_7932FEBB571AFC57FDF941318C04239B21DOCFileTypeSuggestion_contentTypes] = 0;
  v5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category] = 0;
  v6 = &v5[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString];
  *v6 = a1;
  v6[1] = a2;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for DOCSearchSuggestion();
  return objc_msgSendSuper2(&v8, sel_init);
}

Swift::Void __swiftcall DOCFileTypeSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(Swift::String a1, Swift::Int forSearchId, Swift::OpaquePointer confirmedSuggestions)
{
  v4 = v3;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v9 = type metadata accessor for UTType();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v39 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = MEMORY[0x277D84F90];
  if (specialized DOCFileTypeSuggester.shouldDeliverSuggestions(forConfirmedSuggestions:)(confirmedSuggestions._rawValue))
  {
    v40 = v9;
    v19 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration);
    if ([v19 isFilesApp])
    {
      v20 = MEMORY[0x277D84F90];
      if (!*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = v13;
      v25 = v10;
      v26 = object;
      v27 = countAndFlagsBits;
      v28 = forSearchId;
      v29 = [v19 documentContentTypes];
      v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      forSearchId = v28;
      countAndFlagsBits = v27;
      object = v26;
      v10 = v25;
      v13 = v24;
      if (!v20[2])
      {
LABEL_17:
        if (one-time initialization token for shared != -1)
        {
          swift_once();
        }

        v34 = static DOCUTIDescriptorCollector.shared;
        v35 = MEMORY[0x277D85000];
        (*((*MEMORY[0x277D85000] & *static DOCUTIDescriptorCollector.shared) + 0xA8))();
        v36 = swift_allocObject();
        v36[2] = countAndFlagsBits;
        v36[3] = object;
        v36[4] = v18;
        v36[5] = v4;
        v36[6] = forSearchId;
        v37 = *((*v35 & *v34) + 0xA0);

        v38 = v4;
        v37(countAndFlagsBits, object, v20, partial apply for closure #1 in DOCFileTypeSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:), v36);

        return;
      }
    }

    v39 = forSearchId;
    static UTType.folder.getter();
    v30 = specialized Sequence<>.contains(_:)(v17, v20, MEMORY[0x277D85578], &lazy protocol witness table cache variable for type UTType and conformance UTType, MEMORY[0x277D85578], MEMORY[0x277D85590]);
    v31 = v40;
    (*(v10 + 8))(v17, v40);
    if (!v30)
    {
      static UTType.folder.getter();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20);
      }

      v33 = v20[2];
      v32 = v20[3];
      if (v33 >= v32 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v20);
      }

      v20[2] = v33 + 1;
      (*(v10 + 32))(v20 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v33, v13, v31);
    }

    forSearchId = v39;
    goto LABEL_17;
  }

  if ((*((*MEMORY[0x277D85000] & *v4) + 0x60))())
  {
    v22 = v21;
    ObjectType = swift_getObjectType();
    (*(v22 + 8))(v4, MEMORY[0x277D84F90], forSearchId, countAndFlagsBits, object, ObjectType, v22);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

double closure #1 in DOCFileTypeSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v12[6] = a5;
  v12[7] = a6;

  v13 = a5;
  DOCRunInMainThread(_:)();

  return result;
}

uint64_t closure #1 in closure #1 in DOCFileTypeSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{

  specialized Sequence.forEach(_:)(a1, a2, a3, (a4 + 16));

  result = (*((*MEMORY[0x277D85000] & *a5) + 0x60))(v12);
  if (result)
  {
    v15 = v14;
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v17 = *(a4 + 16);
    v18 = *(v15 + 8);

    v18(a5, v17, a6, a2, a3, ObjectType, v15);

    return swift_unknownObjectRelease();
  }

  return result;
}

void closure #1 in closure #1 in closure #1 in DOCFileTypeSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v64 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v58 - v9;
  v69 = type metadata accessor for UTType();
  v67 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v11);
  v63 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v61 = &v58 - v15;
  v65 = *a1;
  v17 = a1[2];
  v16 = a1[3];
  v18 = objc_allocWithZone(type metadata accessor for DOCFileTypeSuggestion());
  *&v18[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_7932FEBB571AFC57FDF941318C04239B21DOCFileTypeSuggestion_contentTypes] = 0;
  v18[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category] = 0;
  v19 = &v18[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString];
  *v19 = a2;
  v19[1] = a3;
  v20 = type metadata accessor for DOCSearchSuggestion();
  v68.receiver = v18;
  v68.super_class = v20;

  v21 = objc_msgSendSuper2(&v68, sel_init);
  v22 = MEMORY[0x277D85000];
  v23 = *((*MEMORY[0x277D85000] & *v21) + 0xB8);
  swift_bridgeObjectRetain_n();
  v24 = v21;
  v23(v17, v16);
  v25 = *((*v22 & *v24) + 0xE8);
  v26 = v24;
  v27 = v17;
  v28 = v65;
  v25(v27, v16);
  v62 = v21;
  (*((*v22 & *v26) + 0x1C0))(2);
  v29 = 1 << *(v28 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v31 = v30 & *(v28 + 56);
  v32 = (v29 + 63) >> 6;
  v33 = (v67 + 48);
  v60 = (v67 + 32);

  v34 = 0;
  v66 = MEMORY[0x277D84F90];
  while (1)
  {
    v35 = v34;
    if (!v31)
    {
      break;
    }

LABEL_8:
    v31 &= v31 - 1;

    UTType.init(_:)();
    if ((*v33)(v10, 1, v69) == 1)
    {
      outlined destroy of CharacterSet?(v10, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    }

    else
    {
      v59 = *v60;
      v59(v61, v10, v69);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v66 + 2) + 1, 1, v66);
      }

      v37 = *(v66 + 2);
      v36 = *(v66 + 3);
      v38 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        v58 = v37 + 1;
        v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1, v66);
        v38 = v58;
        v66 = v41;
      }

      v40 = v66;
      v39 = v67;
      *(v66 + 2) = v38;
      v59(&v40[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v37], v61, v69);
    }
  }

  while (1)
  {
    v34 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v34 >= v32)
    {
      break;
    }

    v31 = *(v28 + 56 + 8 * v34);
    ++v35;
    if (v31)
    {
      goto LABEL_8;
    }
  }

  *(v26 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_7932FEBB571AFC57FDF941318C04239B21DOCFileTypeSuggestion_contentTypes) = v66;

  if (*(v28 + 16) != 1)
  {
    goto LABEL_22;
  }

  v42 = specialized Collection.first.getter(v28);
  if (v43)
  {
    v44 = v42;
    v45 = v43;
    v46 = v63;
    static UTType.folder.getter();
    v47 = UTType.identifier.getter();
    v49 = v48;
    (*(v67 + 8))(v46, v69);
    if (v44 == v47 && v45 == v49)
    {

      goto LABEL_21;
    }

    v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v50)
    {
LABEL_21:
      v51 = MEMORY[0x24C1FAD20](0x7265646C6F66, 0xE600000000000000);
      v52 = [objc_opt_self() systemImageNamed_];

      v53 = MEMORY[0x277D85000];
      v54 = *((*MEMORY[0x277D85000] & *v26) + 0x118);
      v55 = v52;
      v54(v52);
      (*((*v53 & *v26) + 0x148))(v52);
    }

LABEL_22:

    v56 = v64;
    v57 = swift_beginAccess();
    MEMORY[0x24C1FB090](v57);
    if (*((*v56 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_23:
      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      swift_endAccess();

      return;
    }

LABEL_25:
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    goto LABEL_23;
  }

  __break(1u);
}

id DOCFileTypeSuggester.__allocating_init(configuration:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for DOCSuggester();
  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCFileTypeSuggester.init(configuration:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for DOCSuggester();
  return objc_msgSendSuper2(&v4, sel_init);
}

id one-time initialization function for defaultNaturalLanguageFileTypeDescriptors()
{
  result = closure #1 in variable initialization expression of static DOCNaturalLanguageFileTypeSuggester.defaultNaturalLanguageFileTypeDescriptors();
  static DOCNaturalLanguageFileTypeSuggester.defaultNaturalLanguageFileTypeDescriptors = result;
  return result;
}

id closure #1 in variable initialization expression of static DOCNaturalLanguageFileTypeSuggester.defaultNaturalLanguageFileTypeDescriptors()
{
  v120 = type metadata accessor for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(0);
  v0 = *(v120 - 8);
  MEMORY[0x28223BE20](v120, v1);
  v3 = (&v113 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v113 - v6);
  MEMORY[0x28223BE20](v8, v9);
  v11 = (&v113 - v10);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (&v113 - v14);
  MEMORY[0x28223BE20](v16, v17);
  v19 = (&v113 - v18);
  result = _DocumentManagerBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v21 = result;
  v22.value._object = 0xEB00000000656C62;
  v22.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v121._object = 0x8000000249BD5530;
  v23._countAndFlagsBits = 0xD000000000000015;
  v23._object = 0x8000000249BD5510;
  v121._countAndFlagsBits = 0xD00000000000002CLL;
  v24._countAndFlagsBits = 0x736567616D49;
  v24._object = 0xE600000000000000;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, v22, v21, v24, v121);
  object = v25._object;
  countAndFlagsBits = v25._countAndFlagsBits;

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v26 = result;
  v116 = v0;
  v117 = v3;
  v27._object = 0xEF656C7469546D6FLL;
  v122._object = 0x8000000249BD5560;
  v27._countAndFlagsBits = 0x7441736567616D49;
  v122._countAndFlagsBits = 0xD000000000000027;
  v28.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v28.value._object = 0xEB00000000656C62;
  v29._countAndFlagsBits = 0x736567616D49;
  v29._object = 0xE600000000000000;
  v30 = NSLocalizedString(_:tableName:bundle:value:comment:)(v27, v28, v26, v29, v122);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v31 = result;
  v123._object = 0x8000000249BD55B0;
  v32._countAndFlagsBits = 0x707C736567616D69;
  v32._object = 0xEF73657275746369;
  v33._object = 0x8000000249BD5590;
  v123._countAndFlagsBits = 0xD000000000000063;
  v33._countAndFlagsBits = 0xD000000000000013;
  v34.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v34.value._object = 0xEB00000000656C62;
  v35 = NSLocalizedString(_:tableName:bundle:value:comment:)(v33, v34, v31, v32, v123);

  v36 = String.doc_pipeSeparatedSanitizedComponentsForComparison.getter(v35._countAndFlagsBits, v35._object);

  static UTType.image.getter();
  v37 = object;
  v19->_countAndFlagsBits = countAndFlagsBits;
  v19->_object = v37;
  v19[1]._countAndFlagsBits = 0x6F746F6870;
  v19[1]._object = 0xE500000000000000;
  v19[2] = v30;
  v19[3]._countAndFlagsBits = 0x6F746F6870;
  v19[3]._object = 0xE500000000000000;
  v19[4]._countAndFlagsBits = v36;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v38 = result;
  v124._object = 0x8000000249BD5640;
  v39._countAndFlagsBits = 0xD000000000000015;
  v39._object = 0x8000000249BD5620;
  v124._countAndFlagsBits = 0xD00000000000002CLL;
  v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v40.value._object = 0xEB00000000656C62;
  v41._countAndFlagsBits = 0x736F65646956;
  v41._object = 0xE600000000000000;
  v42 = NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v124);
  object = v42._object;
  countAndFlagsBits = v42._countAndFlagsBits;

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v43 = result;
  v125._object = 0x8000000249BD5670;
  v44._countAndFlagsBits = 0x7441736F65646956;
  v125._countAndFlagsBits = 0xD000000000000027;
  v44._object = 0xEF656C7469546D6FLL;
  v45.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v45.value._object = 0xEB00000000656C62;
  v46._countAndFlagsBits = 0x736F65646956;
  v46._object = 0xE600000000000000;
  v47 = NSLocalizedString(_:tableName:bundle:value:comment:)(v44, v45, v43, v46, v125);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v48 = result;
  v126._object = 0x8000000249BD56C0;
  v49._countAndFlagsBits = 0x6D7C736F65646976;
  v49._object = 0xED0000736569766FLL;
  v50._object = 0x8000000249BD56A0;
  v126._countAndFlagsBits = 0xD000000000000063;
  v50._countAndFlagsBits = 0xD000000000000013;
  v51.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v51.value._object = 0xEB00000000656C62;
  v52 = NSLocalizedString(_:tableName:bundle:value:comment:)(v50, v51, v48, v49, v126);

  v53 = String.doc_pipeSeparatedSanitizedComponentsForComparison.getter(v52._countAndFlagsBits, v52._object);

  static UTType.movie.getter();
  v54 = object;
  v15->_countAndFlagsBits = countAndFlagsBits;
  v15->_object = v54;
  v15[1]._countAndFlagsBits = 0x6569766F6DLL;
  v15[1]._object = 0xE500000000000000;
  v15[2] = v47;
  v15[3]._countAndFlagsBits = 0x6569766F6DLL;
  v15[3]._object = 0xE500000000000000;
  v15[4]._countAndFlagsBits = v53;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v55 = result;
  v127._object = 0x8000000249BD5750;
  v56._countAndFlagsBits = 0xD000000000000015;
  v56._object = 0x8000000249BD5730;
  v127._countAndFlagsBits = 0xD000000000000031;
  v57.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v57.value._object = 0xEB00000000656C62;
  v58._countAndFlagsBits = 0x6946206F69647541;
  v58._object = 0xEB0000000073656CLL;
  v59 = NSLocalizedString(_:tableName:bundle:value:comment:)(v56, v57, v55, v58, v127);
  object = v59._object;
  countAndFlagsBits = v59._countAndFlagsBits;

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v60 = result;
  v128._object = 0x8000000249BD5790;
  v61._countAndFlagsBits = 0x7441736F69647541;
  v128._countAndFlagsBits = 0xD00000000000002CLL;
  v61._object = 0xEF656C7469546D6FLL;
  v62.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v62.value._object = 0xEB00000000656C62;
  v63._countAndFlagsBits = 0x6946206F69647541;
  v63._object = 0xEB0000000073656CLL;
  v64 = NSLocalizedString(_:tableName:bundle:value:comment:)(v61, v62, v60, v63, v128);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v65 = result;
  v129._object = 0x8000000249BD57E0;
  v66._countAndFlagsBits = 0x6F737C6F69647561;
  v66._object = 0xEB00000000646E75;
  v67._object = 0x8000000249BD57C0;
  v129._countAndFlagsBits = 0xD000000000000068;
  v67._countAndFlagsBits = 0xD000000000000013;
  v68.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v68.value._object = 0xEB00000000656C62;
  v69 = NSLocalizedString(_:tableName:bundle:value:comment:)(v67, v68, v65, v66, v129);

  v70 = String.doc_pipeSeparatedSanitizedComponentsForComparison.getter(v69._countAndFlagsBits, v69._object);

  static UTType.audio.getter();
  v71 = object;
  v11->_countAndFlagsBits = countAndFlagsBits;
  v11->_object = v71;
  v11[1]._countAndFlagsBits = 0x636973756DLL;
  v11[1]._object = 0xE500000000000000;
  v11[2] = v64;
  v11[3]._countAndFlagsBits = 0x636973756DLL;
  v11[3]._object = 0xE500000000000000;
  v11[4]._countAndFlagsBits = v70;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v72 = result;
  v115 = v11;
  v130._object = 0x8000000249BD5870;
  v73._countAndFlagsBits = 0xD00000000000001CLL;
  v73._object = 0x8000000249BD5850;
  v130._countAndFlagsBits = 0xD000000000000038;
  v74.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v74.value._object = 0xEB00000000656C62;
  v75._countAndFlagsBits = 0x61746E6573657250;
  v75._object = 0xED0000736E6F6974;
  v76 = NSLocalizedString(_:tableName:bundle:value:comment:)(v73, v74, v72, v75, v130);
  object = v76._object;
  countAndFlagsBits = v76._countAndFlagsBits;

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v77 = result;
  v114 = v15;
  v131._object = 0x8000000249BD58D0;
  v78._countAndFlagsBits = 0xD000000000000016;
  v78._object = 0x8000000249BD58B0;
  v131._countAndFlagsBits = 0xD000000000000033;
  v79.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v79.value._object = 0xEB00000000656C62;
  v80._countAndFlagsBits = 0x61746E6573657250;
  v80._object = 0xED0000736E6F6974;
  v81 = NSLocalizedString(_:tableName:bundle:value:comment:)(v78, v79, v77, v80, v131);

  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v82 = result;
  v132._object = 0x8000000249BD5950;
  v83._countAndFlagsBits = 0xD00000000000001ALL;
  v83._object = 0x8000000249BD5910;
  v84._countAndFlagsBits = 0xD000000000000014;
  v84._object = 0x8000000249BD5930;
  v132._countAndFlagsBits = 0xD00000000000006FLL;
  v85.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v85.value._object = 0xEB00000000656C62;
  v86 = NSLocalizedString(_:tableName:bundle:value:comment:)(v83, v85, v82, v84, v132);

  v87 = String.doc_pipeSeparatedSanitizedComponentsForComparison.getter(v86._countAndFlagsBits, v86._object);

  static UTType.presentation.getter();
  v88 = object;
  v7->_countAndFlagsBits = countAndFlagsBits;
  v7->_object = v88;
  v7[1]._countAndFlagsBits = 0x642E6E6F2E636F64;
  v7[1]._object = 0xEA0000000000636FLL;
  v7[2] = v81;
  v7[3]._countAndFlagsBits = 0x642E6E6F2E636F64;
  v7[3]._object = 0xEA0000000000636FLL;
  v7[4]._countAndFlagsBits = v87;
  result = _DocumentManagerBundle();
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v89 = result;
  v133._object = 0x8000000249BD59E0;
  v90._countAndFlagsBits = 0xD000000000000018;
  v90._object = 0x8000000249BD59C0;
  v133._countAndFlagsBits = 0xD000000000000037;
  v91.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v91.value._object = 0xEB00000000656C62;
  v92._countAndFlagsBits = 0x4320656372756F53;
  v92._object = 0xEB0000000065646FLL;
  v93 = NSLocalizedString(_:tableName:bundle:value:comment:)(v90, v91, v89, v92, v133);
  object = v93._object;
  countAndFlagsBits = v93._countAndFlagsBits;

  result = _DocumentManagerBundle();
  v95 = v114;
  v94 = v115;
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v96 = result;
  v97._countAndFlagsBits = 0xD000000000000012;
  v134._object = 0x8000000249BD5A40;
  v97._object = 0x8000000249BD5A20;
  v134._countAndFlagsBits = 0xD000000000000032;
  v98.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v98.value._object = 0xEB00000000656C62;
  v99._countAndFlagsBits = 0x4320656372756F53;
  v99._object = 0xEB0000000065646FLL;
  v100 = NSLocalizedString(_:tableName:bundle:value:comment:)(v97, v98, v96, v99, v134);

  result = _DocumentManagerBundle();
  if (result)
  {
    v101 = result;
    v135._object = 0x8000000249BD5AC0;
    v102._countAndFlagsBits = 0xD000000000000016;
    v102._object = 0x8000000249BD5A80;
    v103._countAndFlagsBits = 0xD000000000000016;
    v103._object = 0x8000000249BD5AA0;
    v135._countAndFlagsBits = 0xD00000000000006ELL;
    v104.value._countAndFlagsBits = 0x617A696C61636F4CLL;
    v104.value._object = 0xEB00000000656C62;
    v105 = NSLocalizedString(_:tableName:bundle:value:comment:)(v102, v104, v101, v103, v135);

    v106 = String.doc_pipeSeparatedSanitizedComponentsForComparison.getter(v105._countAndFlagsBits, v105._object);

    v107 = v117;
    static UTType.sourceCode.getter();
    v108 = object;
    v107->_countAndFlagsBits = countAndFlagsBits;
    v107->_object = v108;
    v107[1]._countAndFlagsBits = 0x642E6E6F2E636F64;
    v107[1]._object = 0xEA0000000000636FLL;
    v107[2] = v100;
    v107[3]._countAndFlagsBits = 0x642E6E6F2E636F64;
    v107[3]._object = 0xEA0000000000636FLL;
    v107[4]._countAndFlagsBits = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables35DOCNaturalLanguageFileTypeSuggesterC0ghiJ10Descriptor33_7932FEBB571AFC57FDF941318C04239BLLVGMd, &_ss23_ContiguousArrayStorageCy26DocumentManagerExecutables35DOCNaturalLanguageFileTypeSuggesterC0ghiJ10Descriptor33_7932FEBB571AFC57FDF941318C04239BLLVGMR);
    v109 = *(v116 + 72);
    v110 = (*(v116 + 80) + 32) & ~*(v116 + 80);
    v111 = swift_allocObject();
    *(v111 + 16) = xmmword_249BA54A0;
    v112 = v111 + v110;
    outlined init with copy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v19, v112);
    outlined init with copy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v95, v112 + v109);
    outlined init with copy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v94, v112 + 2 * v109);
    outlined init with copy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v7, v112 + 3 * v109);
    outlined init with take of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v107, v112 + 4 * v109);
    outlined destroy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v7);
    outlined destroy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v94);
    outlined destroy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v95);
    outlined destroy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v19);
    return v111;
  }

LABEL_31:
  __break(1u);
  return result;
}

Swift::Void __swiftcall DOCNaturalLanguageFileTypeSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(Swift::String a1, Swift::Int forSearchId, Swift::OpaquePointer confirmedSuggestions)
{
  v4 = v3;
  v76 = a1;
  v7 = type metadata accessor for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(0);
  v8 = *(v7 - 8);
  v74 = v7;
  v75 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = &v68 - v15;
  if ([*(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration) isFilesApp] && specialized DOCFileTypeSuggester.shouldDeliverSuggestions(forConfirmedSuggestions:)(confirmedSuggestions._rawValue))
  {
    v70 = forSearchId;
    v17 = swift_allocObject();
    *(v17 + 16) = MEMORY[0x277D84F90];
    v82 = v76;
    v18 = [objc_opt_self() currentLocale];
    static Locale._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = type metadata accessor for Locale();
    (*(*(v19 - 8) + 56))(v16, 0, 1, v19);
    lazy protocol witness table accessor for type String and conformance String();
    v20 = StringProtocol.folding(options:locale:)();
    v22 = v21;
    outlined destroy of CharacterSet?(v16, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
    v71 = v4;
    v23 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables35DOCNaturalLanguageFileTypeSuggester_naturalLanguageFileTypeDescriptors);
    v79 = *(v23 + 16);
    if (v79)
    {
      v73 = (v17 + 16);
      v69 = v17;
      v24 = v75;
      v78 = v23 + ((*(v75 + 80) + 32) & ~*(v75 + 80));

      v25 = 0;
      v72 = xmmword_249B9A480;
      v77 = v23;
      while (2)
      {
        if (v25 >= *(v23 + 16))
        {
LABEL_22:
          __break(1u);
          return;
        }

        outlined init with copy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v78 + *(v24 + 72) * v25, v11);
        v80 = v25 + 1;
        v26 = *(v11 + 8);
        v27 = v26 + 40;
        v28 = -*(v26 + 16);
        v29 = -1;
        while (v28 + v29 != -1)
        {
          if (++v29 >= *(v26 + 16))
          {
            __break(1u);
            goto LABEL_22;
          }

          v30 = v27 + 16;

          v31._countAndFlagsBits = v20;
          v31._object = v22;
          v32 = String.hasPrefix(_:)(v31);

          v27 = v30;
          if (v32)
          {
            v33 = objc_allocWithZone(type metadata accessor for DOCFileTypeSuggestion());
            *&v33[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_7932FEBB571AFC57FDF941318C04239B21DOCFileTypeSuggestion_contentTypes] = 0;
            v33[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_category] = 0;
            v34 = &v33[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCSearchSuggestion_inputString];
            object = v76._object;
            *v34 = v76._countAndFlagsBits;
            v34[1] = object;
            v36 = type metadata accessor for DOCSearchSuggestion();
            v81.receiver = v33;
            v81.super_class = v36;

            v37 = objc_msgSendSuper2(&v81, sel_init);
            v38 = *v11;
            v39 = *(v11 + 1);
            v40 = MEMORY[0x277D85000];
            v41 = *((*MEMORY[0x277D85000] & *v37) + 0xB8);
            v42 = v37;

            v41(v38, v39);
            v43 = *(v11 + 4);
            v44 = *(v11 + 5);
            v45 = *((*v40 & *v42) + 0xE8);
            v46 = v42;

            v45(v43, v44);
            v47 = MEMORY[0x277D85000];
            (*((*MEMORY[0x277D85000] & *v46) + 0x1C0))(2);
            v48 = MEMORY[0x24C1FAD20](*(v11 + 2), *(v11 + 3));
            v49 = objc_opt_self();
            v50 = [v49 systemImageNamed_];

            (*((*v47 & *v46) + 0x118))(v50);
            v51 = MEMORY[0x24C1FAD20](*(v11 + 6), *(v11 + 7));
            v52 = [v49 systemImageNamed_];

            (*((*v47 & *v46) + 0x148))(v52);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMd, &_ss23_ContiguousArrayStorageCy22UniformTypeIdentifiers6UTTypeVGMR);
            v53 = type metadata accessor for UTType();
            v54 = *(v53 - 8);
            v55 = (*(v54 + 80) + 32) & ~*(v54 + 80);
            v56 = swift_allocObject();
            *(v56 + 16) = v72;
            (*(v54 + 16))(v56 + v55, &v11[*(v74 + 36)], v53);
            *(v46 + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_7932FEBB571AFC57FDF941318C04239B21DOCFileTypeSuggestion_contentTypes) = v56;

            v58 = v73;
            MEMORY[0x24C1FB090](v57);
            if (*((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

            v24 = v75;
            break;
          }
        }

        outlined destroy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(v11);
        v25 = v80;
        v23 = v77;
        if (v80 != v79)
        {
          continue;
        }

        break;
      }

      v17 = v69;
    }

    v62 = swift_allocObject();
    v64 = v70;
    v63 = v71;
    v62[2] = v71;
    v62[3] = v17;
    countAndFlagsBits = v76._countAndFlagsBits;
    v66 = v76._object;
    v62[4] = v64;
    v62[5] = countAndFlagsBits;
    v62[6] = v66;
    v67 = v63;

    DOCRunInMainThread(_:)();
  }

  else if ((*((*MEMORY[0x277D85000] & *v4) + 0x60))())
  {
    v60 = v59;
    ObjectType = swift_getObjectType();
    (*(v60 + 8))(v4, MEMORY[0x277D84F90], forSearchId, v76._countAndFlagsBits, v76._object, ObjectType, v60);

    swift_unknownObjectRelease();
  }
}

uint64_t closure #2 in DOCNaturalLanguageFileTypeSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*((*MEMORY[0x277D85000] & *a1) + 0x60))();
  if (result)
  {
    v12 = v11;
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    v14 = *(a2 + 16);
    v15 = *(v12 + 8);

    v15(a1, v14, a3, a4, a5, ObjectType, v12);

    return swift_unknownObjectRelease();
  }

  return result;
}

id DOCNaturalLanguageFileTypeSuggester.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables35DOCNaturalLanguageFileTypeSuggester_naturalLanguageFileTypeDescriptors;
  if (one-time initialization token for defaultNaturalLanguageFileTypeDescriptors != -1)
  {
    swift_once();
  }

  *&v4[v5] = static DOCNaturalLanguageFileTypeSuggester.defaultNaturalLanguageFileTypeDescriptors;
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for DOCSuggester();

  return objc_msgSendSuper2(&v7, sel_init);
}

id DOCNaturalLanguageFileTypeSuggester.init(configuration:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables35DOCNaturalLanguageFileTypeSuggester_naturalLanguageFileTypeDescriptors;
  if (one-time initialization token for defaultNaturalLanguageFileTypeDescriptors != -1)
  {
    swift_once();
  }

  *&v1[v3] = static DOCNaturalLanguageFileTypeSuggester.defaultNaturalLanguageFileTypeDescriptors;
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables12DOCSuggester_configuration] = a1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for DOCSuggester();

  return objc_msgSendSuper2(&v5, sel_init);
}

id DOCFileTypeSuggestion.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = v5 - 1;
    v10 = (a1 + 40);
    do
    {
      v11 = v9;
      v12 = v10[3];
      v13 = v10[4];
      v14 = v10[1];
      v15 = v10[2];
      v16 = *v10;
      v17[0] = *(v10 - 1);
      v17[1] = v16;
      v17[2] = v14;
      v17[3] = v15;
      v17[4] = v12;
      v17[5] = v13;

      closure #1 in closure #1 in closure #1 in DOCFileTypeSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(v17, a2, a3, a4);

      if (v4)
      {
        break;
      }

      v9 = v11 - 1;
      v10 += 6;
    }

    while (v11);
  }
}

{
  v19 = a4;
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a1 + 48) + 24 * (__clz(__rbit64(v10)) | (v13 << 6)));
      v15 = v14[1];
      v16 = v14[2];
      v18[0] = *v14;
      v18[1] = v15;
      v18[2] = v16;

      closure #2 in closure #1 in DOCPersonSuggester.deliverSuggestions(for:forSearchId:confirmedSuggestions:)(v18, a2, a3, v19);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

BOOL specialized DOCFileTypeSuggester.shouldDeliverSuggestions(forConfirmedSuggestions:)(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = __CocoaSet.count.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  v5 = MEMORY[0x277D85000];
  do
  {
    v6 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x24C1FC540](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v7 = *(a1 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v9 = (*((*v5 & *v7) + 0x1B8))();

    v4 = v6 + 1;
  }

  while (v9 != 2);
  return v3 == v6;
}

uint64_t type metadata accessor for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(uint64_t a1)
{
  result = type metadata singleton initialization cache for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor;
  if (!type metadata singleton initialization cache for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(uint64_t a1)
{
  v2 = type metadata accessor for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void type metadata completion function for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(uint64_t a1)
{
  type metadata accessor for [String]();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UTType();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [String]()
{
  if (!lazy cache variable for type metadata for [String])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [String]);
    }
  }
}

uint64_t outlined init with take of DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DOCNaturalLanguageFileTypeSuggester.DOCNaturalLanguageFileTypeDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type IndexPath and conformance IndexPath(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

Swift::Int DOCCollectionViewEditMode.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x24C1FCBD0](a1);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type DOCCollectionViewEditMode and conformance DOCCollectionViewEditMode()
{
  result = lazy protocol witness table cache variable for type DOCCollectionViewEditMode and conformance DOCCollectionViewEditMode;
  if (!lazy protocol witness table cache variable for type DOCCollectionViewEditMode and conformance DOCCollectionViewEditMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DOCCollectionViewEditMode and conformance DOCCollectionViewEditMode);
  }

  return result;
}

double static DOCStatusFooterView.insets(forDisplayMode:)(uint64_t a1)
{
  result = 40.0;
  if (!a1)
  {
    return 0.0;
  }

  return result;
}

void (*DOCStatusFooterView.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.delegate.modify;
}

id DOCStatusFooterView.folderInformationLabel.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView____lazy_storage___folderInformationLabel;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView____lazy_storage___folderInformationLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView____lazy_storage___folderInformationLabel);
  }

  else
  {
    v4 = DOCStatusFooterView.createFolderInformationLabel()();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id DOCStatusFooterView.createFolderInformationLabel()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v2 = [objc_opt_self() secondaryLabelColor];
  [v1 setTextColor_];

  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D76968];
  v5 = [v0 traitCollection];
  v6 = [v3 preferredFontForTextStyle:v4 compatibleWithTraitCollection:v5];

  [v1 setFont_];
  [v1 setAdjustsFontForContentSizeCategory_];
  [v1 setNumberOfLines_];
  LODWORD(v7) = 1148846080;
  [v1 setContentCompressionResistancePriority:1 forAxis:v7];
  return v1;
}

uint64_t DOCStatusFooterView.delegate.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3 + *a3;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCStatusFooterView.gestureDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_gestureDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.gestureDelegate.modify;
}

uint64_t key path setter for DOCStatusFooterView.folderNode : DOCStatusFooterView(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode;
  swift_beginAccess();
  v5 = *(v3 + v4);
  swift_unknownObjectRetain();
  result = specialized static DOCStatusFooterView.isValid(toUseAsFolderNode:previousNode:)(v2, v5);
  if (result)
  {
    *(v3 + v4) = v2;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    DOCStatusFooterView.folderNode.didset(v5);
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t DOCStatusFooterView.folderNode.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode;
  swift_beginAccess();
  v4 = *(v1 + v3);
  swift_unknownObjectRetain();
  result = specialized static DOCStatusFooterView.isValid(toUseAsFolderNode:previousNode:)(a1, v4);
  if (result)
  {
    *(v1 + v3) = a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    DOCStatusFooterView.folderNode.didset(v4);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void DOCStatusFooterView.folderNode.didset(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode;
  swift_beginAccess();
  v5 = *(v1 + v3);
  if (v5)
  {
    if (a1)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v6 = DOCNode.isEqualTo(node:)(v5);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if (v6)
      {
        v7 = *(v1 + v3);
        if (v7)
        {
          v8 = [v7 isWritable];
          if ([a1 isWritable] == v8)
          {
            return;
          }
        }

        else
        {
          [a1 isWritable];
        }
      }
    }

LABEL_10:
    DOCStatusFooterView.updateLabels()(v4);
    return;
  }

  if (a1)
  {
    goto LABEL_10;
  }
}

uint64_t DOCStatusFooterView.updateLabels()(double a1)
{
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView;
  v3 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView];
  DOCStatusFooterView.updateQuotaLabel()(a1);
  DOCStatusFooterView.updateICloudQuotaWarningBanner()();
  DOCStatusFooterView.updateFolderInformationLabel()();
  DOCStatusFooterView.resetArrangedSubviews()();
  [v1 invalidateIntrinsicContentSize];
  [v1 setNeedsLayout];
  v4 = *&v1[v2];
  v5 = &v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v5 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))((v3 != 0) ^ (v4 != 0), ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

void (*DOCStatusFooterView.folderNode.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  swift_unknownObjectRetain();
  return DOCStatusFooterView.folderNode.modify;
}

void DOCStatusFooterView.folderNode.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*(*a1 + 32) + *(*a1 + 40));
  if ((a2 & 1) == 0)
  {
    swift_unknownObjectRetain();
    if (specialized static DOCStatusFooterView.isValid(toUseAsFolderNode:previousNode:)(v3, v4))
    {
      *(v2[4] + v2[5]) = v3;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      DOCStatusFooterView.folderNode.didset(v4);
      swift_unknownObjectRelease();
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return;
  }

  swift_unknownObjectRetain();
  v5 = swift_unknownObjectRetain();
  if ((specialized static DOCStatusFooterView.isValid(toUseAsFolderNode:previousNode:)(v5, v4) & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  *(v2[4] + v2[5]) = v3;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  DOCStatusFooterView.folderNode.didset(v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
LABEL_6:
  swift_unknownObjectRelease();

  free(v2);
}

uint64_t DOCStatusFooterView.displayMode.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_displayMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCStatusFooterView.displayMode.setter(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_displayMode;
  swift_beginAccess();
  v5 = *&v2[v4];
  *&v2[v4] = a1;
  if (v5 != a1)
  {
    v6 = 40.0;
    if (!a1)
    {
      v6 = 0.0;
    }

    [v2 setDirectionalLayoutMargins_];
    DOCStatusFooterView.updateLabels()(v7);
    if (v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates] != 1)
    {
      v8 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView];
      if (v8)
      {
        v2[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates] = 1;
        v9 = MEMORY[0x277D85000];
        v10 = *((*MEMORY[0x277D85000] & *v8) + 0xE8);
        v11 = v8;
        v10();
        v12 = *((*v9 & *v11) + 0xB8);
        v13 = swift_unknownObjectRetain();
        v12(v13, &protocol witness table for DOCStatusFooterView);
      }
    }
  }
}

void (*DOCStatusFooterView.displayMode.modify(uint64_t *a1))(uint64_t *a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_displayMode;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = *(v1 + v5);
  return DOCStatusFooterView.displayMode.modify;
}

void DOCStatusFooterView.displayMode.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    DOCStatusFooterView.displayMode.setter(v3);
  }

  else
  {
    v5 = *(v2 + 32);
    v4 = *(v2 + 40);
    v6 = *(v5 + v4);
    *(v5 + v4) = v3;
    if (v6 != v3)
    {
      v7 = *(v2 + 32);
      v8 = 40.0;
      if (!v3)
      {
        v8 = 0.0;
      }

      [*(v2 + 32) setDirectionalLayoutMargins_];
      DOCStatusFooterView.updateLabels()(v9);
      if ((*(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates) & 1) == 0)
      {
        v10 = *(*(v2 + 32) + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView);
        if (v10)
        {
          *(v7 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates) = 1;
          v11 = MEMORY[0x277D85000];
          v12 = *((*MEMORY[0x277D85000] & *v10) + 0xE8);
          v13 = v10;
          v12();
          v14 = *((*v11 & *v13) + 0xB8);
          v15 = swift_unknownObjectRetain();
          v14(v15, &protocol witness table for DOCStatusFooterView);
        }
      }
    }
  }

  free(v2);
}

id DOCStatusFooterView.wantsICloudQuotaBanner.getter()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x277D85000] & *Strong) + 0x298))();

    if (v4)
    {
      return 0;
    }
  }

  v6 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_displayMode;
  swift_beginAccess();
  if (*(v1 + v6) != 3 || (v7 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode, swift_beginAccess(), (result = *(v1 + v7)) != 0) && (result = [result isRootItem], result))
  {
    result = *(*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration) + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
    if (result)
    {
      return [result isSyncStateMessagingSupported];
    }
  }

  return result;
}

uint64_t static DOCStatusFooterView.isValid(toCreateWithFolderNode:)(void *a1)
{
  if (!a1)
  {
    return 1;
  }

  if ([a1 isFolder])
  {
    return 1;
  }

  v3 = [a1 description];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v7 = static DOCLog.UI;
  v8 = static os_log_type_t.fault.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249B9A480;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v9 + 32) = v4;
  *(v9 + 40) = v6;
  os_log(_:dso:log:type:_:)("Attempt to create DOCStatusFooterView with illegal DOCNode = %@", 63, 2, &dword_2493AC000, v7, v8, v9);

  return 0;
}

char *DOCStatusFooterView.init(validatedFolderNode:nodeCollection:itemCollectionConfiguration:)(uint64_t a1, void *a2, _OWORD *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_quotaLabel] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView____lazy_storage___folderInformationLabel] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_emptyTargetedPreview] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_gestureDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_displayMode] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView] = 0;
  swift_beginAccess();
  *&v3[v8] = a1;
  swift_unknownObjectWeakAssign();
  v9 = &v3[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration];
  v10 = a3[3];
  v9[2] = a3[2];
  v9[3] = v10;
  v9[4] = a3[4];
  v11 = a3[1];
  *v9 = *a3;
  v9[1] = v11;
  v36.receiver = v3;
  v36.super_class = ObjectType;
  swift_unknownObjectRetain();
  v12 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v12 setAxis_];
  [v12 setAlignment_];
  v13 = v12;
  [v13 setSpacing_];
  v14 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_displayMode;
  swift_beginAccess();
  v15 = 40.0;
  if (!*&v13[v14])
  {
    v15 = 0.0;
  }

  [v13 setDirectionalLayoutMargins_];

  [v13 setLayoutMarginsRelativeArrangement_];
  v16 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v16 setNumberOfLines_];
  LODWORD(v17) = 1148846080;
  [v16 setContentCompressionResistancePriority:1 forAxis:v17];
  v18 = *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_quotaLabel];
  *&v13[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_quotaLabel] = v16;

  DOCStatusFooterView.updateQuotaLabelFont()();
  DOCStatusFooterView.updateFolderInformationLabel()();
  DOCStatusFooterView.updateLabels()(v19);
  v20 = [objc_allocWithZone(MEMORY[0x277D753B8]) initWithDelegate_];
  [v13 addInteraction_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_249B9A480;
  v22 = type metadata accessor for UITraitPreferredContentSizeCategory();
  v23 = MEMORY[0x277D74DB8];
  *(v21 + 32) = v22;
  *(v21 + 40) = v23;
  UIView.registerForTraitChanges<A>(_:handler:)();
  swift_unknownObjectRelease();

  v24 = [v13 enclosingDocumentLandingMode];
  v25 = 1.0;
  if (v24 == 1)
  {
    v25 = 0.0;
  }

  [v13 setAlpha_];
  v30 = 0;
  LOBYTE(v31) = 1;
  UIView.registerForUIPDocumentLandingTraitChanges<A>(options:_:)(&v30, specialized closure #2 in DOCStatusFooterView.init(validatedFolderNode:nodeCollection:itemCollectionConfiguration:), 0, ObjectType);
  swift_unknownObjectRelease();
  v26 = [objc_opt_self() shared];
  v27 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = partial apply for closure #3 in DOCStatusFooterView.init(validatedFolderNode:nodeCollection:itemCollectionConfiguration:);
  v35 = v27;
  v30 = MEMORY[0x277D85DD0];
  v31 = 1107296256;
  v32 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v33 = &block_descriptor_30;
  v28 = _Block_copy(&v30);

  [v26 performAfterLaunch_];
  _Block_release(v28);

  swift_unknownObjectRelease();
  return v13;
}

Swift::Void __swiftcall DOCStatusFooterView.updateForChangedContentSizeCategory()()
{
  DOCStatusFooterView.updateQuotaLabelFont()();

  DOCStatusFooterView.updateFolderInformationLabel()();
}

void closure #3 in DOCStatusFooterView.init(validatedFolderNode:nodeCollection:itemCollectionConfiguration:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if ((Strong[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates] & 1) == 0)
    {
      v2 = *&Strong[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView];
      if (v2)
      {
        Strong[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates] = 1;
        v3 = MEMORY[0x277D85000];
        v4 = *((*MEMORY[0x277D85000] & *v2) + 0xE8);
        v5 = Strong;
        v6 = v2;
        v4();
        v7 = *((*v3 & *v6) + 0xB8);
        v8 = swift_unknownObjectRetain();
        v7(v8, &protocol witness table for DOCStatusFooterView);

        Strong = v5;
      }
    }
  }
}

void DOCStatusFooterView.updateQuotaLabel()(double a1)
{
  v2 = v1;
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  *v7 = static OS_dispatch_queue.main.getter();
  (*(v4 + 104))(v7, *MEMORY[0x277D85200], v3);
  v8 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v9 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_quotaLabel;
  v10 = *(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_quotaLabel);
  if (v10)
  {
    v11 = [v10 text];
    if (v11)
    {
      v12 = v11;
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = *(v2 + v9);
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v13 = 0;
      v15 = 0;
      v16 = *(v2 + v9);
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    v17 = v16;
    v18 = DOCStatusFooterView.quotaLabelText()();
    if (v19)
    {
      v20 = MEMORY[0x24C1FAD20](v18);
    }

    else
    {
      v20 = 0;
    }

    [v17 setText_];

    v21 = *(v2 + v9);
    if (v21)
    {
      v22 = [v21 text];
      if (v22)
      {
        v23 = v22;
        v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v26 = v25;

        if (v15)
        {
          goto LABEL_16;
        }

        goto LABEL_13;
      }
    }

LABEL_15:
    v24 = 0;
    v26 = 0;
    if (v15)
    {
LABEL_16:
      if (v26)
      {
        if (v13 == v24 && v15 == v26)
        {

          return;
        }

        v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v30)
        {
          return;
        }

LABEL_21:
        v27 = v2 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_delegate;
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v28 = *(v27 + 8);
          ObjectType = swift_getObjectType();
          (*(v28 + 8))(0, ObjectType, v28);
          swift_unknownObjectRelease();
        }

        return;
      }

LABEL_20:

      goto LABEL_21;
    }

LABEL_13:
    if (!v26)
    {
      return;
    }

    goto LABEL_20;
  }
}

void DOCStatusFooterView.__ivar_destroyer()
{
  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_delegate);
  MEMORY[0x24C1FE970](v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_nodeCollection);
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration);
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration + 24);
  v3 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration + 56);
  v4 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration + 72);

  swift_unknownObjectRelease();

  outlined destroy of weak DOCPresentationPreheatable?(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_gestureDelegate);
  swift_unknownObjectRelease();
  v5 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView);
}

id DOCStatusFooterView.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates] == 1)
  {
    v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView];
    if (v3)
    {
      v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_isListeningToProviderSyncStateUpdates] = 0;
      v4 = MEMORY[0x277D85000];
      v5 = *((*MEMORY[0x277D85000] & *v3) + 0xF0);
      v6 = ObjectType;
      v7 = v3;
      v5();
      (*((*v4 & *v7) + 0xB8))(0, 0);

      ObjectType = v6;
    }
  }

  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

Swift::Void __swiftcall DOCStatusFooterView.didMoveToWindow()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v2, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    DOCStatusFooterView.updateQuotaLabelFont()();
    DOCStatusFooterView.updateFolderInformationLabel()();
  }
}

void DOCStatusFooterView.updateQuotaLabelFont()()
{
  v1 = v0;
  v2 = [v0 traitCollection];
  if (one-time initialization token for sizeCategory != -1)
  {
    swift_once();
  }

  v30 = static UITraitCollection.Traits.sizeCategory;
  v31 = qword_27EEE9CC0;

  v3 = UITraitCollection.doc_hasSpecified(_:)(&v30);

  if (v3)
  {
    v4 = *MEMORY[0x277D743F8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMd, &_ss23_ContiguousArrayStorageCySo29UIFontDescriptorAttributeNamea_yptGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249B9FA70;
    v6 = *MEMORY[0x277D74378];
    *(inited + 32) = *MEMORY[0x277D74378];
    v7 = *MEMORY[0x277D769D0];
    type metadata accessor for UIFontTextStyle(0);
    *(inited + 40) = v7;
    v8 = *MEMORY[0x277D74380];
    *(inited + 64) = v9;
    *(inited + 72) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMd, &_ss23_ContiguousArrayStorageCySo24UIFontDescriptorTraitKeya_So0D6WeightatGMR);
    v10 = swift_initStackObject();
    v11 = MEMORY[0x277D74430];
    *(v10 + 16) = xmmword_249B9A480;
    v12 = *v11;
    *(v10 + 32) = *v11;
    *(v10 + 40) = v4;
    v13 = v6;
    v14 = v7;
    v15 = v8;
    v16 = v12;
    v17 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo24UIFontDescriptorTraitKeya_So0C6WeightaTt0g5Tf4g_n(v10);
    swift_setDeallocating();
    outlined destroy of (UIFontDescriptorTraitKey, UIFontWeight)(v10 + 32);
    *(inited + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMd, &_sSDySo24UIFontDescriptorTraitKeyaSo0A6WeightaGMR);
    *(inited + 80) = v17;
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo29UIFontDescriptorAttributeNamea_ypTt0g5Tf4g_n(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo29UIFontDescriptorAttributeNamea_yptMd, &_sSo29UIFontDescriptorAttributeNamea_yptMR);
    swift_arrayDestroy();
    v18 = objc_allocWithZone(MEMORY[0x277D74310]);
    type metadata accessor for UIFontDescriptorAttributeName(0);
    lazy protocol witness table accessor for type UIFontDescriptorAttributeName and conformance UIFontDescriptorAttributeName();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v20 = [v18 initWithFontAttributes_];

    v21 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_quotaLabel];
    if (v21)
    {
      v22 = objc_opt_self();
      v23 = v21;
      v24 = v20;
      v25 = [v1 traitCollection];
      v26 = [v22 preferredFontForTextStyle:v14 compatibleWithTraitCollection:v25];

      [v26 pointSize];
      v28 = v27;

      v29 = [v22 fontWithDescriptor:v24 size:v28];
      [v23 setFont_];
    }
  }
}

void DOCStatusFooterView.updateFolderInformationLabel()()
{
  v1 = v0;
  v12 = DOCStatusFooterView.folderInformationText()();
  v2 = DOCStatusFooterView.folderInformationLabel.getter();
  v3 = [v2 attributedText];

  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView____lazy_storage___folderInformationLabel;
  [*(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView____lazy_storage___folderInformationLabel) setHidden_];
  [*(v1 + v4) setAttributedText_];
  v5 = [*(v1 + v4) attributedText];
  v6 = v5;
  if (!v3)
  {
    if (!v5)
    {
      goto LABEL_9;
    }

LABEL_7:
    v9 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v10 = *(v9 + 8);
      ObjectType = swift_getObjectType();
      (*(v10 + 8))(0, ObjectType, v10);

      swift_unknownObjectRelease();
    }

    else
    {
    }

    return;
  }

  if (!v5)
  {
    goto LABEL_7;
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSAttributedString, 0x277CCA898);
  v7 = v3;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
}

Swift::Void __swiftcall DOCStatusFooterView.didUpdateSyncStateFooter()()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  DOCRunInMainThread(_:)();
}

void DOCStatusFooterView.updateICloudQuotaWarningBanner()()
{
  v1 = DOCStatusFooterView.wantsICloudQuotaBanner.getter();
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView;
  v3 = *&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView];
  if (v1)
  {
    if (!v3)
    {
      v6 = *(*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration] + OBJC_IVAR____TtC26DocumentManagerExecutables21DOCFileProviderSource_providerDomain);
      if (v6)
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        type metadata accessor for DOCFileProviderSyncStateFooterViewModel(0);
        swift_allocObject();
        v8 = v6;
        specialized DOCFileProviderSyncStateFooterViewModel.init(for:nodeCollection:)(v8, Strong);

        v9 = objc_allocWithZone(type metadata accessor for DOCFileProviderSyncStateFooterView());

        v11 = DOCFileProviderSyncStateFooterView.init(with:)(v10);
        v12 = *&v0[v2];
        *&v0[v2] = v11;
        v13 = v11;

        DOCStatusFooterView.resetArrangedSubviews()();
      }
    }
  }

  else
  {
    if (v3 && ([v0 removeArrangedSubview_], (v4 = *&v0[v2]) != 0))
    {
      [v4 removeFromSuperview];
      v5 = *&v0[v2];
    }

    else
    {
      v5 = 0;
    }

    *&v0[v2] = 0;

    DOCStatusFooterView.resetArrangedSubviews()();
  }
}

uint64_t DOCStatusFooterView.resetArrangedSubviews()()
{
  v1 = [v0 arrangedSubviews];
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIView, 0x277D75D18);
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v2 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x24C1FC540](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      [v0 removeArrangedSubview_];
      [v6 removeFromSuperview];

      ++v4;
      if (v7 == i)
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

  if (*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_quotaLabel])
  {
    [v0 addArrangedSubview_];
  }

  v8 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView;
  if (*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_syncStateFooterView])
  {
    [v0 addArrangedSubview_];
  }

  v9 = DOCStatusFooterView.folderInformationLabel.getter();
  [v0 addArrangedSubview_];

  if ([*&v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView____lazy_storage___folderInformationLabel] isHidden] && *&v0[v8])
  {
    [v0 setCustomSpacing:11.0 afterView:?];
  }

  v10 = &v0[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_delegate];
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = *(v10 + 1);
    ObjectType = swift_getObjectType();
    (*(v12 + 8))(1, ObjectType, v12);
    return swift_unknownObjectRelease();
  }

  return result;
}

void *DOCStatusFooterView.quotaLabelText()()
{
  v1 = v0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = (*((*MEMORY[0x277D85000] & *result) + 0x258))();
    if (v4 >> 62)
    {
      v5 = __CocoaSet.count.getter();
    }

    else
    {
      v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    result = _DocumentManagerBundle();
    if (result)
    {
      v6 = result;
      v18._object = 0x8000000249BD5CF0;
      v7._countAndFlagsBits = 0x54492E544349442ELL;
      v7._object = 0xEE0064252E534D45;
      v8.value._countAndFlagsBits = 0x617A696C61636F4CLL;
      v8.value._object = 0xEB00000000656C62;
      v9._countAndFlagsBits = 0;
      v9._object = 0xE000000000000000;
      v18._countAndFlagsBits = 0xD00000000000002ALL;
      NSLocalizedString(_:tableName:bundle:value:comment:)(v7, v8, v6, v9, v18);

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v10 = swift_allocObject();
      v11 = MEMORY[0x277D83B88];
      *(v10 + 16) = xmmword_249B9A480;
      v12 = MEMORY[0x277D83C10];
      *(v10 + 56) = v11;
      *(v10 + 64) = v12;
      *(v10 + 32) = v5;
      v13 = static String.localizedStringWithFormat(_:_:)();

      v14 = v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration;
      v15 = *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_itemCollectionConfiguration + 24);
      if (v15)
      {
        type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSObject, 0x277D82BB8);
        v16 = [objc_opt_self() recentDocumentsLocation];
        LOBYTE(v15) = static NSObject.== infix(_:_:)();
      }

      v17 = [v3 isGathering];

      if ((v17 & 1) != 0 || *(v14 + 16) != 2 || (v15 & 1) != 0 || v5 <= 0)
      {

        return 0;
      }

      else
      {
        return v13;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id DOCStatusFooterView.folderInformationText()()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_folderNode;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if (!v2 || ([v2 isWritable] & 1) != 0)
  {
    return 0;
  }

  v4 = _DocumentManagerBundle();
  if (!v4)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4;
  v26._object = 0x8000000249BD5D20;
  v6._countAndFlagsBits = 0x6C6E4F2D64616552;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v26._countAndFlagsBits = 0xD000000000000054;
  v6._object = 0xE900000000000079;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v26);

  v10 = DOCStatusFooterView.folderInformationLabel.getter();
  v11 = [v10 font];

  if (!v11)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = objc_allocWithZone(MEMORY[0x277CCAB48]);
  v13 = MEMORY[0x24C1FAD20](v9._countAndFlagsBits, v9._object);
  v14 = [v12 initWithString_];

  v15 = objc_opt_self();
  v3 = v14;
  v16 = MEMORY[0x24C1FAD20](0x732E6C69636E6570, 0xEC0000006873616CLL);
  v17 = [v15 _systemImageNamed_withConfiguration_];

  if (v17)
  {

    v18 = [objc_opt_self() textAttachmentWithImage_];
    type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for NSMutableAttributedString, 0x277CCAB48);
    v19 = [swift_getObjCClassFromMetadata() attributedStringWithAttachment_];
    v20 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v21 = MEMORY[0x24C1FAD20](32, 0xE100000000000000);
    v22 = [v20 initWithString_];

    [v3 insertAttributedString:v22 atIndex:0];
    [v3 insertAttributedString:v19 atIndex:0];
    v23 = *MEMORY[0x277D740A8];
    v24 = v11;
    [v3 addAttribute:v23 value:v24 range:{0, objc_msgSend(v3, sel_length)}];

    return v3;
  }

LABEL_11:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id DOCStatusFooterView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

double protocol witness for DOCFileProviderSyncStateFooterViewDelegate.didUpdateSyncStateFooter() in conformance DOCStatusFooterView()
{
  *(swift_allocObject() + 16) = v0;
  v1 = v0;
  DOCRunInMainThread(_:)();

  return result;
}

void __swiftcall DOCStatusFooterView.contextMenuInteraction(_:configurationForMenuAtLocation:)(UIContextMenuConfiguration_optional *__return_ptr retstr, UIContextMenuInteraction _, CGPoint configurationForMenuAtLocation)
{
  v4 = v3 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_gestureDelegate;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(ObjectType, v5);
    swift_unknownObjectRelease();
  }
}

void DOCStatusFooterView.contextMenuInteraction(_:willEndFor:animator:)()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_emptyTargetedPreview;
  v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_emptyTargetedPreview);
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

id specialized closure #2 in DOCStatusFooterView.init(validatedFolderNode:nodeCollection:itemCollectionConfiguration:)(void *a1)
{
  v2 = [a1 enclosingDocumentLandingMode];
  v3 = 1.0;
  if (v2 == 1)
  {
    v3 = 0.0;
  }

  return [a1 setAlpha_];
}

char *specialized DOCStatusFooterView.__allocating_init(folderNode:nodeCollection:itemCollectionConfiguration:)(id a1, void *a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a3[3];
  v25[2] = a3[2];
  v25[3] = v11;
  v25[4] = a3[4];
  v12 = a3[1];
  v25[0] = *a3;
  v25[1] = v12;
  if (a1 && ([a1 isFolder] & 1) == 0)
  {
    outlined destroy of DOCItemCollectionConfiguration(v25);
    v17 = [a1 description];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

    if (one-time initialization token for UI != -1)
    {
      swift_once();
    }

    v21 = static DOCLog.UI;
    v22 = static os_log_type_t.fault.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_249B9A480;
    *(v23 + 56) = MEMORY[0x277D837D0];
    *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 32) = v18;
    *(v23 + 40) = v20;
    os_log(_:dso:log:type:_:)("Attempt to create DOCStatusFooterView with illegal DOCNode = %@", 63, 2, &dword_2493AC000, v21, v22, v23);
    swift_unknownObjectRelease();

    return 0;
  }

  else
  {
    v13 = a3[3];
    v24[2] = a3[2];
    v24[3] = v13;
    v24[4] = a3[4];
    v14 = a3[1];
    v24[0] = *a3;
    v24[1] = v14;
    v15 = objc_allocWithZone(type metadata accessor for DOCStatusFooterView());
    return DOCStatusFooterView.init(validatedFolderNode:nodeCollection:itemCollectionConfiguration:)(a1, a2, v24);
  }
}

uint64_t specialized static DOCStatusFooterView.isValid(toUseAsFolderNode:previousNode:)(void *a1, void *a2)
{
  if (!a1)
  {
    return 1;
  }

  if ([a1 isFolder])
  {
    return 1;
  }

  if (a2)
  {
    v5 = [a2 description];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {
    v8 = 0xE300000000000000;
    v6 = 7104878;
  }

  v9 = [a1 description];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (one-time initialization token for UI != -1)
  {
    swift_once();
  }

  v13 = static DOCLog.UI;
  v14 = static os_log_type_t.fault.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_249B9FA70;
  v16 = MEMORY[0x277D837D0];
  *(v15 + 56) = MEMORY[0x277D837D0];
  v17 = lazy protocol witness table accessor for type String and conformance String();
  *(v15 + 32) = v10;
  *(v15 + 40) = v12;
  *(v15 + 96) = v16;
  *(v15 + 104) = v17;
  *(v15 + 64) = v17;
  *(v15 + 72) = v6;
  *(v15 + 80) = v8;
  os_log(_:dso:log:type:_:)("Attempt to update DOCStatusFooterView's folderNode to illegal DOCNode = %@.  Existing DOCNode = %@", 98, 2, &dword_2493AC000, v13, v14, v15);

  return 0;
}

void specialized DOCStatusFooterView.contextMenuInteraction(_:previewForHighlightingMenuWithConfiguration:)(void *a1)
{
  [a1 locationInView_];
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_emptyTargetedPreview;
  v5 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables19DOCStatusFooterView_emptyTargetedPreview];
  if (v5)
  {
    [v5 setFrame_];
    if (!*&v1[v4])
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
    v7 = *&v1[v4];
    *&v1[v4] = v6;

    v8 = *&v1[v4];
    if (!v8)
    {
      goto LABEL_8;
    }

    v9 = objc_opt_self();
    v10 = v8;
    v11 = [v9 clearColor];
    [v10 setBackgroundColor_];

    if (!*&v1[v4])
    {
      goto LABEL_8;
    }
  }

  [v1 addSubview_];
  v12 = [objc_allocWithZone(MEMORY[0x277D758D8]) init];
  v13 = [objc_opt_self() clearColor];
  [v12 setBackgroundColor_];

  v14 = *&v1[v4];
  if (v14)
  {
    v15 = objc_allocWithZone(MEMORY[0x277D75B90]);
    v16 = v14;
    [v15 initWithView:v16 parameters:v12];

    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t keypath_getTm@<X0>(void *a1@<X0>, void *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = *a1 + *a2;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v6 = *(v4 + 8);
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t keypath_setTm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = a1[1];
  v6 = *a2 + *a5;
  swift_beginAccess();
  *(v6 + 8) = v5;
  return swift_unknownObjectWeakAssign();
}

uint64_t outlined destroy of (UIFontDescriptorTraitKey, UIFontWeight)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMd, &_sSo24UIFontDescriptorTraitKeya_So0A6WeightatMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*DOCBrowserContainedViewController.eventReporting.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.gestureDelegate.modify;
}

uint64_t DOCBrowserContainedViewController.actionReporting.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*DOCBrowserContainedViewController.actionReporting.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionReporting;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return DOCEjectionController.delegate.modify;
}

void (*DOCBrowserContainedViewController.overlayDelegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_overlayDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return DOCStatusFooterView.delegate.modify;
}

void *DOCBrowserContainedViewController.documentManager.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager);
  v2 = v1;
  return v1;
}

uint64_t DOCBrowserContainedViewController.allowsPickingMultipleItems.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_allowsPickingMultipleItems;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCBrowserContainedViewController.allowsPickingMultipleItems.setter(char a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_allowsPickingMultipleItems;
  swift_beginAccess();
  v2[v4] = a1;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation;
  v6 = v2[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation];
  if (v6 != 2)
  {
    updated = DOCBrowserContainedViewController.overlayUpdateDisabledAssertions.getter();
    v8 = (*(*updated + 152))(updated);

    if (v8 & 1) == 0 && ([v2 doc_hasAppearedOrIsAppearing])
    {
      type metadata accessor for DOCBrowserContainedViewController();
      v9 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables19DOCOverlayUpdatable_pMd, &_s26DocumentManagerExecutables19DOCOverlayUpdatable_pMR);
      if (swift_dynamicCast())
      {
        v10 = *(&v13 + 1);
        v11 = v14;
        __swift_project_boxed_opaque_existential_1(&v12, *(&v13 + 1));
        (*(v11 + 8))(v6 & 1, v10, v11);
        __swift_destroy_boxed_opaque_existential_0(&v12);
      }

      else
      {
        v14 = 0;
        v12 = 0u;
        v13 = 0u;
        outlined destroy of DOCOverlayUpdatable?(&v12);
      }

      v2[v5] = 2;
    }
  }
}

void DOCBrowserContainedViewController.updateOverlayIfNeeded()(__n128 a1)
{
  v2 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation;
  v3 = v1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation];
  if (v3 != 2)
  {
    updated = DOCBrowserContainedViewController.overlayUpdateDisabledAssertions.getter();
    v5 = (*(*updated + 152))(updated);

    if ((v5 & 1) == 0)
    {
      if ([v1 doc_hasAppearedOrIsAppearing])
      {
        type metadata accessor for DOCBrowserContainedViewController();
        v6 = v1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables19DOCOverlayUpdatable_pMd, &_s26DocumentManagerExecutables19DOCOverlayUpdatable_pMR);
        if (swift_dynamicCast())
        {
          v7 = *(&v10 + 1);
          v8 = v11;
          __swift_project_boxed_opaque_existential_1(&v9, *(&v10 + 1));
          (*(v8 + 8))(v3 & 1, v7, v8);
          __swift_destroy_boxed_opaque_existential_0(&v9);
        }

        else
        {
          v11 = 0;
          v9 = 0u;
          v10 = 0u;
          outlined destroy of DOCOverlayUpdatable?(&v9);
        }

        v1[v2] = 2;
      }
    }
  }
}

void (*DOCBrowserContainedViewController.allowsPickingMultipleItems.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  swift_beginAccess();
  return DOCBrowserContainedViewController.allowsPickingMultipleItems.modify;
}

void DOCBrowserContainedViewController.allowsPickingMultipleItems.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(v3 + 48);
    v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation;
    v6 = *(v4 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation);
    if (v6 != 2)
    {
      updated = DOCBrowserContainedViewController.overlayUpdateDisabledAssertions.getter();
      v8 = (*(*updated + 152))(updated);

      if ((v8 & 1) == 0)
      {
        if ([*(v3 + 48) doc_hasAppearedOrIsAppearing])
        {
          v9 = *(v3 + 48);
          *(v3 + 40) = v9;
          type metadata accessor for DOCBrowserContainedViewController();
          v10 = v9;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables19DOCOverlayUpdatable_pMd, &_s26DocumentManagerExecutables19DOCOverlayUpdatable_pMR);
          if (swift_dynamicCast())
          {
            v11 = *(v3 + 24);
            v12 = *(v3 + 32);
            __swift_project_boxed_opaque_existential_1(v3, v11);
            (*(v12 + 8))(v6 & 1, v11, v12);
            __swift_destroy_boxed_opaque_existential_0(v3);
          }

          else
          {
            *(v3 + 32) = 0;
            *v3 = 0u;
            *(v3 + 16) = 0u;
            outlined destroy of DOCOverlayUpdatable?(v3);
          }

          *(v4 + v5) = 2;
        }
      }
    }
  }

  free(v3);
}

uint64_t DOCBrowserContainedViewController.forceEditingMode.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCBrowserContainedViewController.forceEditingMode.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
  swift_beginAccess();
  v1[v3] = a1;
  if (a1)
  {
    [v1 setEditing:1 animated:0];
  }
}

uint64_t (*DOCBrowserContainedViewController.forceEditingMode.modify(uint64_t *a1))()
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
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return DOCBrowserContainedViewController.forceEditingMode.modify;
}

void DOCBrowserContainedViewController.forceEditingMode.modify(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    if (*(v4 + v3[4]) == 1)
    {
      [v4 setEditing:1 animated:0];
    }
  }

  free(v3);
}

uint64_t DOCBrowserContainedViewController.isInUserTriggeredSelectionMode.getter()
{
  if ([v0 isEditing])
  {
    v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x148))() ^ 1;
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void *DOCBrowserContainedViewController.overlayUpdateDisabledAssertions.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController____lazy_storage___overlayUpdateDisabledAssertions;
  if (*(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController____lazy_storage___overlayUpdateDisabledAssertions))
  {
    v2 = *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController____lazy_storage___overlayUpdateDisabledAssertions);
  }

  else
  {
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for DOCAssertionCollection();
    v2 = swift_allocObject();
    v2[5] = 0xD000000000000016;
    v2[6] = 0x8000000249BD61E0;
    v2[2] = MEMORY[0x277D84F90];
    v2[3] = partial apply for closure #1 in DOCBrowserContainedViewController.overlayUpdateDisabledAssertions.getter;
    v2[4] = v3;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t outlined destroy of DOCOverlayUpdatable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s26DocumentManagerExecutables19DOCOverlayUpdatable_pSgMd, &_s26DocumentManagerExecutables19DOCOverlayUpdatable_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void closure #1 in DOCBrowserContainedViewController.overlayUpdateDisabledAssertions.getter(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    updated = DOCBrowserContainedViewController.overlayUpdateDisabledAssertions.getter();
    v4 = (*(*updated + 152))(updated);

    if ((v4 & 1) == 0)
    {
      if ([v2 doc_hasAppearedOrIsAppearing])
      {
        DOCBrowserContainedViewController.updateOverlayIfNeeded()(v5);
      }
    }
  }
}

uint64_t DOCBrowserContainedViewController.disableOverlayUpdatingAlongside(traceInfo:transitionCoordinator:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = [v3 _definiteTransitionCoordinator];
  }

  strcpy(v12, "transition (");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  swift_unknownObjectRetain();
  MEMORY[0x24C1FAEA0](a1, a2);
  MEMORY[0x24C1FAEA0](41, 0xE100000000000000);
  v7 = (*((*MEMORY[0x277D85000] & *v3) + 0x190))(v12[0], v12[1]);

  v15 = DOCGridLayout.specIconWidth.modify;
  v16 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v13 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v14 = &block_descriptor_31;
  v8 = _Block_copy(v12);
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in DOCBrowserContainedViewController.disableOverlayUpdatingAlongside(traceInfo:transitionCoordinator:);
  *(v9 + 24) = v7;
  v15 = partial apply for closure #3 in DOCBrowserContainedViewController.disableOverlayUpdatingAlongside(traceInfo:transitionCoordinator:);
  v16 = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v13 = thunk for @escaping @callee_guaranteed (@guaranteed UIViewControllerTransitionCoordinatorContext) -> ();
  v14 = &block_descriptor_4;
  v10 = _Block_copy(v12);
  swift_retain_n();

  [v6 animateAlongsideTransition:v8 completion:v10];
  _Block_release(v10);
  _Block_release(v8);
  swift_unknownObjectRelease();
}

uint64_t closure #3 in DOCBrowserContainedViewController.disableOverlayUpdatingAlongside(traceInfo:transitionCoordinator:)(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = aBlock - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 isCancelled])
  {
    return a2();
  }

  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
  v17 = static OS_dispatch_queue.main.getter();
  aBlock[4] = a2;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_37_0;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type DOCBrowserContainedViewController and conformance NSObject(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v16, v10, v18);
  _Block_release(v18);

  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v16, v11);
}

uint64_t DOCBrowserContainedViewController.beginDisablingOverlayUpdating(traceInfo:)(uint64_t a1, uint64_t a2)
{
  updated = DOCBrowserContainedViewController.overlayUpdateDisabledAssertions.getter();
  v6 = (*(*updated + 152))(updated);

  if ((v6 & 1) == 0)
  {
    DOCBrowserContainedViewController.updateOverlayIfNeeded()(v7);
  }

  _StringGuts.grow(_:)(29);

  MEMORY[0x24C1FAEA0](a1, a2);
  type metadata accessor for DOCAssertion();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  *(v8 + 32) = 1;
  *(v8 + 40) = v9;
  *(v8 + 16) = 0xD00000000000001BLL;
  *(v8 + 24) = 0x8000000249BD5DF0;
  v10 = *(**(v2 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController____lazy_storage___overlayUpdateDisabledAssertions) + 136);

  v10(v8, 0x4014000000000000, 0);

  return v8;
}

Swift::Void __swiftcall DOCBrowserContainedViewController.setNeedsOverlayUpdate(animated:)(Swift::Bool animated)
{
  v1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = animated;
  v2 = [v1 viewIfLoaded];
  v3 = [v2 window];

  if (v3)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()(v4);
  }

  else
  {

    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

void *DOCBrowserContainedViewController.containerNavigationItem.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_containerNavigationItem;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void DOCBrowserContainedViewController.containerNavigationItem.setter(void *a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_containerNavigationItem;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = a1;

  v1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = 0;
  v6 = [v1 viewIfLoaded];
  v7 = [v6 window];

  if (v7)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()(v8);
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

uint64_t (*DOCBrowserContainedViewController.containerNavigationItem.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCBrowserContainedViewController.containerNavigationItem.modify;
}

uint64_t (*DOCBrowserContainedViewController.additionalLeadingNavigationBarButtonItems.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCBrowserContainedViewController.additionalLeadingNavigationBarButtonItems.modify;
}

Class @objc DOCBrowserContainedViewController.additionalLeadingNavigationBarButtonItems.getter(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);

  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

void @objc DOCBrowserContainedViewController.additionalLeadingNavigationBarButtonItems.setter(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = *a4;
  swift_beginAccess();
  *&a1[v7] = v6;
  v8 = a1;

  v8[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = 0;
  v9 = [v8 viewIfLoaded];
  v10 = [v9 window];

  if (v10)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()(v11);
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

void DOCBrowserContainedViewController.additionalLeadingNavigationBarButtonItems.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *&v2[v4] = a1;

  v2[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = 0;
  v5 = [v2 viewIfLoaded];
  v6 = [v5 window];

  if (v6)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()(v7);
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

uint64_t (*DOCBrowserContainedViewController.additionalTrailingNavigationBarButtonItems.modify(uint64_t a1))()
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return DOCBrowserContainedViewController.additionalLeadingNavigationBarButtonItems.modify;
}

void DOCBrowserContainedViewController.containerNavigationItem.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v4[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = 0;
    v5 = [v4 viewIfLoaded];
    v6 = [v5 window];

    if (v6)
    {

      DOCBrowserContainedViewController.updateOverlayIfNeeded()(v7);
    }

    else
    {
      DOCBrowserContainedViewController.applyOverlaySearchSettings()();
    }
  }
}

uint64_t DOCBrowserContainedViewController.isUserInteractionEnabled.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_isUserInteractionEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCBrowserContainedViewController.isUserInteractionEnabled.setter(char a1)
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_isUserInteractionEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(void *a1, void *a2, void *a3)
{
  swift_getObjectType();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting + 8] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_overlayDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = 2;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_allowsPickingMultipleItems] = 0;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController____lazy_storage___overlayUpdateDisabledAssertions] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_containerNavigationItem] = 0;
  v7 = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_additionalLeadingNavigationBarButtonItems] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_additionalTrailingNavigationBarButtonItems] = v7;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_isUserInteractionEnabled] = 1;
  v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackgroundAllowed] = 1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackground] = 0;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration] = a1;
  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_documentManager] = a2;
  v8 = objc_allocWithZone(DOCActionManager);
  v9 = a2;
  v10 = a1;
  v11 = [v8 init];
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_249BA0290;
    *(v12 + 32) = a3;
    type metadata accessor for DOCActionManager(0);
    v13 = a3;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v11 setAssociatedActionManagers_];
  }

  *&v3[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_actionManager] = v11;
  v22.receiver = v3;
  v22.super_class = type metadata accessor for DOCBrowserContainedViewController();
  v15 = v11;
  v16 = objc_msgSendSuper2(&v22, sel_initWithNibName_bundle_, 0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_249B9A480;
  v18 = type metadata accessor for UITraitHorizontalSizeClass();
  v19 = MEMORY[0x277D74C50];
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  v20 = v16;
  UIViewController.registerForTraitChanges<A>(_:handler:)();

  swift_unknownObjectRelease();

  return v20;
}

id DOCBrowserContainedViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void DOCBrowserContainedViewController.effectiveAppearanceDidChange(_:)(void *a1)
{
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DOCBrowserContainedViewController();
  objc_msgSendSuper2(&v6, sel_effectiveAppearanceDidChange_, a1);
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 0;
  v3 = [v1 viewIfLoaded];
  v4 = [v3 window];

  if (v4)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()(v5);
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }

  if ([v1 isViewLoaded])
  {
    DOCBrowserContainedViewController.updateUIPDocLandingBackground(appearance:)(a1);
  }
}

uint64_t DOCBrowserContainedViewController.uipDocLandingBackgroundAllowed.getter()
{
  v1 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackgroundAllowed;
  swift_beginAccess();
  return *(v0 + v1);
}

void DOCBrowserContainedViewController.uipDocLandingBackgroundAllowed.setter(char a1)
{
  v3 = a1 & 1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackgroundAllowed;
  swift_beginAccess();
  v5 = *(v1 + v4);
  *(v1 + v4) = a1;
  if (v5 != v3)
  {
    DOCBrowserContainedViewController.updateUIPDocLandingBackground(appearance:)(0);
  }
}

void (*DOCBrowserContainedViewController.uipDocLandingBackgroundAllowed.modify(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackgroundAllowed;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return DOCBrowserContainedViewController.uipDocLandingBackgroundAllowed.modify;
}

void DOCBrowserContainedViewController.uipDocLandingBackgroundAllowed.modify(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  if (v4 != v5)
  {
    DOCBrowserContainedViewController.updateUIPDocLandingBackground(appearance:)(0);
  }

  free(v1);
}

void DOCBrowserContainedViewController.updateUIPDocLandingBackground(appearance:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackground;
  v5 = *&v1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackground];
  if ((*((*MEMORY[0x277D85000] & *v1) + 0x208))())
  {
    v6 = [v1 enclosedInUIPDocumentLanding];
    if ((((v5 != 0) ^ v6) & 1) == 0)
    {
      return;
    }

    if (v6)
    {
      v7 = a1;
      if (!a1)
      {
        v7 = [v2 effectiveAppearance];
      }

      v8 = a1;
      v9 = [v2 view];
      if (!v9)
      {
        __break(1u);
        return;
      }

      v10 = v9;
      v11 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration];
      if (_UISolariumEnabled())
      {
        if (one-time initialization token for doc_documentLandingBackground != -1)
        {
          swift_once();
        }

        v12 = static _UIVisualEffectViewBackdropCaptureGroup.doc_documentLandingBackground;
        objc_allocWithZone(type metadata accessor for DOCGlassRenderingBackdropView());
      }

      else
      {
        if (one-time initialization token for doc_documentLandingBackground != -1)
        {
          swift_once();
        }

        v12 = static _UIVisualEffectViewBackdropCaptureGroup.doc_documentLandingBackground;
        *(objc_allocWithZone(type metadata accessor for DOCSystemMaterialRenderingBackdropView()) + OBJC_IVAR____TtC26DocumentManagerExecutablesP33_A397DAF1FBE49C7792848C44869BBD3E38DOCSystemMaterialRenderingBackdropView_topView) = 0;
      }

      v15 = v7;
      v16 = v12;
      v17 = specialized DOCDocumentLandingBackdropView.init(configuration:captureGroup:appearance:)(v11, v16, v7);

      v14 = v17;
      [v14 setAutoresizingMask_];
      [v10 bounds];
      [v14 setFrame_];
      [v10 insertSubview:v14 atIndex:0];

      goto LABEL_19;
    }
  }

  else if (!v5)
  {
    return;
  }

  v13 = *&v1[v4];
  if (!v13)
  {
    return;
  }

  [v13 removeFromSuperview];
  v14 = 0;
LABEL_19:
  v18 = *&v2[v4];
  *&v2[v4] = v14;
}

id DOCBrowserContainedViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x24C1FAD20](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id DOCBrowserContainedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DOCBrowserContainedViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DOCBrowserContainedViewController.setEditing(_:animated:)(Swift::Bool _, Swift::Bool animated)
{
  v3 = v2;
  v19.receiver = v3;
  v19.super_class = type metadata accessor for DOCBrowserContainedViewController();
  objc_msgSendSuper2(&v19, sel_setEditing_animated_, _, animated);
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for DOCFullDocumentManagerViewController, off_278F9F3C8);
  v6 = [v3 parentViewController];
  if (v6)
  {
    v7 = v6;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    while (([v7 isKindOfClass_] & 1) == 0)
    {
      v9 = [v7 parentViewController];

      v7 = v9;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClassUnconditional();
    v16 = v11;
    goto LABEL_13;
  }

LABEL_5:
  v10 = [v3 presentingViewController];
  if (!v10)
  {
    return;
  }

  v11 = v10;
  v12 = [v10 parentViewController];
  if (v12)
  {
    v13 = v12;
    v14 = swift_getObjCClassFromMetadata();
    while (![v13 isKindOfClass_])
    {
      v15 = [v13 parentViewController];

      v13 = v15;
      if (!v15)
      {
        goto LABEL_14;
      }
    }

    objc_opt_self();
    v17 = swift_dynamicCastObjCClassUnconditional();

    v11 = v17;
    v16 = 0;
LABEL_13:
    v18 = v16;
    [v11 setEditing:_ animated:animated];
  }

LABEL_14:
}

Swift::Void __swiftcall DOCBrowserContainedViewController.applyOverlaySearchSettings()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x198))();
  if (v2)
  {
    v7 = v2;
    if ([v0 enclosedInUIPDocumentLanding])
    {
      if (one-time initialization token for doc_inlineButtonPreferred != -1)
      {
        swift_once();
      }

      v3 = static UINavigationItemSearchBarPlacement.doc_inlineButtonPreferred;
    }

    else if (DOCDeviceIsPhone())
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }

    if (((*((*v1 & *v0) + 0x148))([v7 setPreferredSearchBarPlacement_]) & 1) == 0)
    {
      v4 = [v7 searchController];
      if (v4)
      {
        v5 = v4;
        v6 = [v4 searchBar];

        [v6 _setEnabled_];
      }
    }
  }
}

BOOL DOCBrowserContainedViewController.hidesNavigationBackButton.getter()
{
  if (!(*((*MEMORY[0x277D85000] & *v0) + 0x100))())
  {
    v4 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }

LABEL_6:
    v5 = __CocoaSet.count.getter();
    goto LABEL_4;
  }

  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 56))(ObjectType, v2);
  swift_unknownObjectRelease();
  if (v4 >> 62)
  {
    goto LABEL_6;
  }

LABEL_3:
  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  return v5 > 0;
}

Swift::Void __swiftcall DOCBrowserContainedViewController.applyOverlayBarButtonItems(leadingItems:trailingItems:fixedTrailingItems:includeSystemItems:animated:)(Swift::OpaquePointer_optional leadingItems, Swift::OpaquePointer_optional trailingItems, Swift::OpaquePointer_optional fixedTrailingItems, Swift::Bool includeSystemItems, Swift::Bool animated)
{
  v6 = v5;
  is_nil = trailingItems.is_nil;
  rawValue = trailingItems.value._rawValue;
  v9 = *&leadingItems.is_nil;
  v10 = leadingItems.value._rawValue;
  v11 = MEMORY[0x277D85000];
  v12 = (*((*MEMORY[0x277D85000] & *v5) + 0x198))(leadingItems.value._rawValue, *&leadingItems.is_nil, trailingItems.value._rawValue, *&trailingItems.is_nil, fixedTrailingItems.value._rawValue, *&fixedTrailingItems.is_nil, includeSystemItems, animated);
  if (v12)
  {
    v41 = v12;
    if (is_nil)
    {
      if ((*((*v11 & *v5) + 0x100))())
      {
        v14 = v13;
        ObjectType = swift_getObjectType();
        v16 = (*(v14 + 56))(ObjectType, v14);
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = MEMORY[0x277D84F90];
      }

      v38 = v10;
      v39 = v9;
      v40 = rawValue;
      v17 = v16 & 0xFFFFFFFFFFFFFF8;
      if (v16 >> 62)
      {
LABEL_40:
        v18 = __CocoaSet.count.getter();
      }

      else
      {
        v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = 0;
      do
      {
        v20 = v19;
        if (v18 == v19)
        {
          break;
        }

        if ((v16 & 0xC000000000000001) != 0)
        {
          v21 = MEMORY[0x24C1FC540](v19, v16);
        }

        else
        {
          if (v19 >= *(v17 + 16))
          {
            goto LABEL_39;
          }

          v21 = *(v16 + 8 * v19 + 32);
        }

        v22 = v21;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_38;
        }

        v23 = (*((*v11 & *v21) + 0x98))();

        v19 = v20 + 1;
      }

      while ((v23 & 1) == 0);
      if ([v6 enclosedInUIPDocumentLanding])
      {
        v24 = [*(v6 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_configuration) defaultEffectiveTabIdentifierForLocationRestore];
        v25 = DOCTabIdentifier.tab.getter(v24);
        v27 = v26;

        if (v18 == v20 && (v27 & 1) == 0 && v25 != 2)
        {

          v16 = MEMORY[0x277D84F90];
        }
      }

      if (v16 >> 62)
      {
        v28 = __CocoaSet.count.getter();
        if (v28)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v28 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
LABEL_26:
          v29 = 0;
          v11 = (v16 & 0xC000000000000001);
          v17 = v16 & 0xFFFFFFFFFFFFFF8;
          while (1)
          {
            if (v11)
            {
              v32 = MEMORY[0x24C1FC540](v29, v16);
            }

            else
            {
              if (v29 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_37;
              }

              v32 = *(v16 + 8 * v29 + 32);
            }

            v33 = v32;
            v34 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              break;
            }

            if ([v6 isEditing])
            {
              v30 = MEMORY[0x277D85000];
              v31 = (*((*MEMORY[0x277D85000] & *v6) + 0x148))();
            }

            else
            {
              v31 = 1;
              v30 = MEMORY[0x277D85000];
            }

            (*((*v30 & *v33) + 0x88))(v31 & 1);

            ++v29;
            if (v34 == v28)
            {
              goto LABEL_43;
            }
          }

          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }
      }

      v16 = MEMORY[0x277D84F90];
LABEL_43:
      v9 = v39;
      rawValue = v40;
      v10 = v38;
      if (v16 >> 62)
      {
        v35 = __CocoaSet.count.getter();
      }

      else
      {
        v35 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      [v41 setLeftItemsSupplementBackButton_];
    }

    else
    {
      v16 = MEMORY[0x277D84F90];
    }

    [v41 setHidesBackButton_];
    if (v16 >> 62)
    {
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);

      v37 = _bridgeCocoaArray<A>(_:)();
      swift_bridgeObjectRelease_n();
      v36 = v37;
    }

    else
    {

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIBarButtonItem, 0x277D751E0);

      v36 = v16;
    }

    specialized UINavigationItem.doc_applyLeadingBarButtonItems(_:fixedItems:animated:)(v10, v36);

    specialized UINavigationItem.doc_applyTrailingBarButtonItems(_:fixedItems:animated:)(v9, rawValue);
  }
}

Swift::Bool __swiftcall DOCBrowserContainedViewController.canErrorViewManageEnabledState(of:)(UIBarButtonItem *of)
{
  v3 = MEMORY[0x277D85000];
  v4 = (*((*MEMORY[0x277D85000] & *v1) + 0x1C8))();
  v5 = (*((*v3 & *v1) + 0x1B0))();
  specialized Array.append<A>(contentsOf:)(v5);
  v18 = of;
  v17[2] = &v18;
  LOBYTE(v4) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v17, v4);

  if (v4)
  {
LABEL_16:
    LOBYTE(v7) = 0;
    return v7;
  }

  v7 = (*((*v3 & *v1) + 0x100))(v6);
  if (v7)
  {
    v9 = v8;
    ObjectType = swift_getObjectType();
    v11 = (*(v9 + 56))(ObjectType, v9);
    LOBYTE(v7) = swift_unknownObjectRelease();
    if (!(v11 >> 62))
    {
      goto LABEL_4;
    }

LABEL_18:
    v7 = __CocoaSet.count.getter();
    v12 = v7;
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_19:

    type metadata accessor for DOCProgressCollectionIndicatorButtonItem(0);
    LOBYTE(v7) = [(UIBarButtonItem *)of isKindOfClass:swift_getObjCClassFromMetadata()]^ 1;
    return v7;
  }

  v11 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_18;
  }

LABEL_4:
  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_5:
  v13 = 0;
  while ((v11 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x24C1FC540](v13, v11);
    if (__OFADD__(v13++, 1))
    {
      goto LABEL_23;
    }

    v15 = v7;
    LOBYTE(v7) = swift_unknownObjectRelease();
    if (v15 == of)
    {
LABEL_15:

      goto LABEL_16;
    }

LABEL_11:
    if (v13 == v12)
    {
      goto LABEL_19;
    }
  }

  if ((v13 & 0x8000000000000000) == 0)
  {
    if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_22;
    }

    if (*(v11 + 32 + 8 * v13) == of)
    {
      goto LABEL_15;
    }

    ++v13;
    goto LABEL_11;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return v7;
}

uint64_t DOCBrowserContainedViewController.shortDescription.getter()
{
  v1 = v0;
  swift_getObjectType();
  v2 = _typeName(_:qualified:)();
  MEMORY[0x24C1FAEA0](v2);

  MEMORY[0x24C1FAEA0](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_249B9A480;
  *(v3 + 56) = type metadata accessor for DOCBrowserContainedViewController();
  *(v3 + 64) = lazy protocol witness table accessor for type DOCBrowserContainedViewController and conformance NSObject(&lazy protocol witness table cache variable for type DOCBrowserContainedViewController and conformance NSObject, v4, type metadata accessor for DOCBrowserContainedViewController, MEMORY[0x277D85388]);
  *(v3 + 32) = v1;
  v5 = v1;
  v6 = String.init(format:_:)();
  v8 = v7;

  MEMORY[0x24C1FAEA0](v6, v8);

  v9 = [v5 title];
  if (v9)
  {
    v10 = v9;
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0xEF2A656C74695420;
    v11 = 0x6E776F6E6B6E552ALL;
  }

  MEMORY[0x24C1FAEA0](v11, v13);

  MEMORY[0x24C1FAEA0](8251, 0xE200000000000000);

  MEMORY[0x24C1FAEA0](62, 0xE100000000000000);
  return 60;
}

void specialized closure #1 in DOCBrowserContainedViewController.init(configuration:documentManager:actionManager:)(_BYTE *a1)
{
  a1[OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation] = 0;
  v1 = [a1 viewIfLoaded];
  v2 = [v1 window];

  if (v2)
  {

    DOCBrowserContainedViewController.updateOverlayIfNeeded()(v3);
  }

  else
  {
    DOCBrowserContainedViewController.applyOverlaySearchSettings()();
  }
}

void specialized DOCBrowserContainedViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_eventReporting + 8) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_overlayDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_needsOverlayUpdateWithAnimation) = 2;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_allowsPickingMultipleItems) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_forceEditingMode) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController____lazy_storage___overlayUpdateDisabledAssertions) = 0;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_containerNavigationItem) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_additionalLeadingNavigationBarButtonItems) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_additionalTrailingNavigationBarButtonItems) = v1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_isUserInteractionEnabled) = 1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackgroundAllowed) = 1;
  *(v0 + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCBrowserContainedViewController_uipDocLandingBackground) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t lazy protocol witness table accessor for type DOCBrowserContainedViewController and conformance NSObject(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DOCProviderDomainStateManager.__allocating_init(for:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DOCProviderDomainStateManager.init(for:)(a1);
  return v2;
}

uint64_t DOCProviderDomainStateManager.State.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x656E6E6F63736964;
  v2 = 0x676E69646E6570;
  if (a1 != 2)
  {
    v2 = 0x4D676E69636E7973;
  }

  if (a1)
  {
    v1 = 0x657463656E6E6F63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance DOCProviderDomainStateManager.State(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEC00000064657463;
  v3 = 0x656E6E6F63736964;
  v4 = *a1;
  v5 = 0xE700000000000000;
  v6 = 0x676E69646E6570;
  if (v4 != 2)
  {
    v6 = 0x4D676E69636E7973;
    v5 = 0xEF61746164617465;
  }

  v7 = 0x657463656E6E6F63;
  v8 = 0xE900000000000064;
  if (!*a1)
  {
    v7 = 0x656E6E6F63736964;
    v8 = 0xEC00000064657463;
  }

  if (*a1 <= 1u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if (v4 <= 1)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  v11 = 0xE700000000000000;
  v12 = 0x676E69646E6570;
  if (*a2 != 2)
  {
    v12 = 0x4D676E69636E7973;
    v11 = 0xEF61746164617465;
  }

  if (*a2)
  {
    v3 = 0x657463656E6E6F63;
    v2 = 0xE900000000000064;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v12;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v11;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DOCProviderDomainStateManager.State()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance DOCProviderDomainStateManager.State(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DOCProviderDomainStateManager.State(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DOCProviderDomainStateManager.State@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DOCProviderDomainStateManager.State.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance DOCProviderDomainStateManager.State(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000064657463;
  v3 = 0x656E6E6F63736964;
  v4 = 0xE700000000000000;
  v5 = 0x676E69646E6570;
  if (*v1 != 2)
  {
    v5 = 0x4D676E69636E7973;
    v4 = 0xEF61746164617465;
  }

  if (*v1)
  {
    v3 = 0x657463656E6E6F63;
    v2 = 0xE900000000000064;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t DOCProviderDomainStateManager.init(for:)(uint64_t a1)
{
  v2 = v1;
  v18 = a1;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v4);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v9, v10);
  *(v1 + 16) = 512;
  *(v1 + 18) = 2;
  v11 = type metadata accessor for OS_dispatch_queue();
  v16[1] = "OverlayUpdatesDisabled";
  v16[2] = v11;
  v19 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  static DispatchQoS.unspecified.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85260], v17);
  *(v1 + 32) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v12 = OBJC_IVAR____TtC26DocumentManagerExecutables29DOCProviderDomainStateManager_domainStatePollingInterval;
  *(v1 + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCProviderDomainStateManager_domainStatePollingInterval) = 2;
  v13 = *MEMORY[0x277D85188];
  v14 = type metadata accessor for DispatchTimeInterval();
  (*(*(v14 - 8) + 104))(v2 + v12, v13, v14);
  *(v2 + 24) = v18;
  return v2;
}

double DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v13);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v4 + 32);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a1;
  aBlock[4] = partial apply for closure #1 in DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:);
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_32;
  v18 = _Block_copy(aBlock);

  v19 = a1;
  static DispatchQoS.unspecified.getter();
  v24 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v15, v11, v18);
  _Block_release(v18);
  (*(v23 + 8))(v11, v8);
  (*(v12 + 8))(v15, v22);

  return result;
}

void closure #1 in DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 24);
    v9 = Strong;
    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = a4;
    aBlock[4] = partial apply for closure #1 in closure #1 in DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:);
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned FPDomainState, @guaranteed Error) -> ();
    aBlock[3] = &block_descriptor_22;
    v11 = _Block_copy(aBlock);
    v12 = v8;

    v13 = a4;

    [v12 domainStateWithCompletionHandler_];
    _Block_release(v11);
  }
}

uint64_t closure #1 in closure #1 in DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a4;
  v56 = a6;
  v54 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v54 - 8);
  MEMORY[0x28223BE20](v54, v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v57 = *(v13 - 8);
  v58 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchTime();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22, v23);
  v26 = &v44 - v25;
  v53 = [*(a3 + 24) disconnectionState];
  v27 = [*(a3 + 24) isiCloudDriveProvider];
  v28 = a1;
  v59 = v9;
  if ((v27 & 1) != 0 || a1 == 2)
  {
    v33 = *(*a3 + 144);
    v52 = a1;
    v33(1);
    v47 = *(a3 + 32);
    static DispatchTime.now()();
    v46 = v26;
    MEMORY[0x24C1FAA90](v21, a3 + OBJC_IVAR____TtC26DocumentManagerExecutables29DOCProviderDomainStateManager_domainStatePollingInterval);
    v34 = *(v18 + 8);
    v49 = v18 + 8;
    v50 = v34;
    v48 = v17;
    v34(v21, v17);
    v35 = swift_allocObject();
    v30 = v55;
    v35[2] = a3;
    v35[3] = v30;
    v35[4] = a5;
    v65 = partial apply for closure #1 in closure #1 in closure #1 in DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:);
    v66 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v32 = &unk_249B9F000;
    v62 = 1107296256;
    v63 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v64 = &block_descriptor_34_0;
    v45 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    v60 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v51 = a5;
    v29 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    a5 = v51;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v36 = v46;
    v37 = v45;
    MEMORY[0x24C1FB940](v46, v16, v12, v45);
    _Block_release(v37);
    (*(v59 + 8))(v12, v29);
    (*(v57 + 8))(v16, v58);
    v38 = v36;
    v31 = MEMORY[0x277D84F90];
    v50(v38, v48);

    v28 = v52;
  }

  else
  {
    v29 = v54;
    v30 = v55;
    v31 = MEMORY[0x277D84F90];
    v32 = &unk_249B9F000;
  }

  if (v28 == 4)
  {
    v39 = 3;
  }

  else
  {
    v39 = 1;
  }

  LODWORD(v55) = v28 == 2;
  if (v28 == 2)
  {
    v39 = 2;
  }

  LODWORD(v54) = v53 != 1;
  if (v53 == 1)
  {
    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v41 = swift_allocObject();
  *(v41 + 16) = v30;
  *(v41 + 24) = a5;
  *(v41 + 32) = v40;
  *(v41 + 40) = a3;
  v65 = partial apply for specialized closure #2 in closure #1 in closure #1 in DOCProviderDomainStateManager.checkDomainState(completionQueue:completion:);
  v66 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v62 = v32[467];
  v63 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v64 = &block_descriptor_28_0;
  v42 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v60 = v31;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x24C1FB9A0](0, v16, v12, v42);
  _Block_release(v42);
  (*(v59 + 8))(v12, v29);
  (*(v57 + 8))(v16, v58);

  (*(*a3 + 168))(v54);
  return (*(*a3 + 192))(v55);
}