id CloudSyncAssetData.ckAsset.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v23 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = CloudSyncAssetData.fileURL.getter(v3);
  if ((*(v5 + 48))(v3, 1, v4, v8) == 1)
  {
    outlined destroy of URL?(v3);
    v9 = [v0 inlineData];
    if (v9)
    {
      v10 = v9;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = objc_allocWithZone(MEMORY[0x277CBC190]);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v16 = MEMORY[0x21CE91FC0](1635017060, 0xE400000000000000);
      v17 = [v14 initWithAssetContent:isa itemTypeHint:v16];

      outlined consume of Data._Representation(v11, v13);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v18 = objc_allocWithZone(MEMORY[0x277CBC190]);
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    v17 = [v18 initWithFileURL_];

    (*(v5 + 8))(v7, v4);
  }

  return v17;
}

double CloudSyncAssetData.fileURL.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = [v1 filePath];
  if (!v3)
  {
    v12 = type metadata accessor for URL();
    v8 = *(*(v12 - 8) + 56);
    v9 = v12;
    v10 = a1;
    v11 = 1;
    goto LABEL_5;
  }

  v4 = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = [objc_opt_self() defaultManager];
  v6 = [v5 fileExistsAtPath_];

  if (v6)
  {
    URL.init(fileURLWithPath:)();

    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v7;
    v10 = a1;
    v11 = 0;
LABEL_5:

    v8(v10, v11, 1, v9);
    return result;
  }

  v14 = type metadata accessor for URL();
  (*(*(v14 - 8) + 56))(a1, 1, 1, v14);

  return result;
}

uint64_t CloudSyncAssetData.assetLoaded.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v19 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v0 inlineData];
  if (v8)
  {
    v9 = v8;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    outlined consume of Data._Representation(v10, v12);
    return 1;
  }

  v14 = CloudSyncAssetData.fileURL.getter(v3);
  if ((*(v5 + 48))(v3, 1, v4, v14) == 1)
  {
    outlined destroy of URL?(v3);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v15 = [objc_opt_self() defaultManager];
    v16 = URL.path.getter();
    v17 = MEMORY[0x21CE91FC0](v16);

    v18 = [v15 fileExistsAtPath_];

    (*(v5 + 8))(v7, v4);
    if (v18)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t CloudSyncAssetData.loadAssetData()()
{
  *(v1 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](CloudSyncAssetData.loadAssetData(), 0, 0);
}

{
  if (CloudSyncAssetData.assetLoaded.getter())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    v3 = v0[3];
    v0[5] = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v4 = swift_allocObject();
    v0[6] = v4;
    *(v4 + 16) = xmmword_21658E210;
    v5 = [v3 id];
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9 = [v3 zoneName];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0xE000000000000000;
    }

    v0[7] = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordID, 0x277CBC5D0);
    v14 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CKRecordZoneID, 0x277CBC5F8);
    v15 = *MEMORY[0x277CBBF28];
    v0[8] = v14;
    v0[9] = v15;
    v16._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16._object = v17;
    v18._countAndFlagsBits = v11;
    v18._object = v13;
    isa = CKRecordZoneID.init(zoneName:ownerName:)(v18, v16).super.isa;
    v20._countAndFlagsBits = v6;
    v20._object = v8;
    *(v4 + 32) = CKRecordID.init(recordName:zoneID:)(v20, isa);
    v21 = swift_task_alloc();
    v0[10] = v21;
    *v21 = v0;
    v21[1] = CloudSyncAssetData.loadAssetData();

    return CloudManager.records(ids:desiredKeys:loadAssets:)(v4, 0, 1);
  }
}

{
  v1 = v0[3];
  v2 = [v1 id];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = [v1 zoneName];
  if (v6)
  {
    v7 = v6;
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  v11 = v0[11];
  v12._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12._object = v13;
  v14._countAndFlagsBits = v8;
  v14._object = v10;
  isa = CKRecordZoneID.init(zoneName:ownerName:)(v14, v12).super.isa;
  v16._countAndFlagsBits = v3;
  v16._object = v5;
  v17.super.isa = CKRecordID.init(recordName:zoneID:)(v16, isa).super.isa;
  v18 = v17.super.isa;
  if (*(v11 + 16) && (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17.super.isa), (v20 & 1) != 0))
  {
    v21 = *(v0[11] + 56) + 16 * v19;
    v22 = *v21;
    v23 = *(v21 + 8);
    outlined copy of Result<CKRecord, Error>(*v21);

    v24 = v0[5];
    if (v23)
    {
      v0[2] = v22;
      v25 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      swift_willThrowTypedImpl();

      outlined consume of Result<CKRecord, Error>(v22);

      v26 = v0[1];
      goto LABEL_10;
    }

    v28 = v0[4];
    v29 = type metadata accessor for URL();
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
    v30 = lazy protocol witness table accessor for type CloudManager and conformance CloudManager();

    specialized CloudSyncAssetData.mergeFromServerRecord(_:force:primary:primaryID:blobFolderURL:cloudManager:)(v22, 0, v28, v24, v30);

    outlined consume of Result<CKRecord, Error>(v22);

    outlined destroy of URL?(v28);
  }

  else
  {
  }

  v26 = v0[1];
LABEL_10:

  return v26();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t CloudSyncAssetData.loadAssetData()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v4 = CloudSyncAssetData.loadAssetData();
  }

  else
  {

    v4 = CloudSyncAssetData.loadAssetData();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void (*CloudSyncAssetData.ckAsset.modify(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = CloudSyncAssetData.ckAsset.getter();
  return CloudSyncAssetData.ckAsset.modify;
}

void CloudSyncAssetData.ckAsset.modify(uint64_t a1, char a2)
{
  v3 = *(a1 + 8);
  if (a2)
  {
    [v3 setCkAssetData_];
    v4 = *a1;
  }

  else
  {
    v5 = *a1;
    [v3 setCkAssetData_];
    v4 = v5;
  }
}

uint64_t CloudSyncAssetData.data.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13[-v2];
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [v0 inlineData];
  if (v8)
  {
    v9 = v8;
    v10 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v11 = CloudSyncAssetData.fileURL.getter(v3);
    if ((*(v5 + 48))(v3, 1, v4, v11) == 1)
    {
      outlined destroy of URL?(v3);
      return 0;
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      v10 = Data.init(contentsOf:options:)();
      (*(v5 + 8))(v7, v4);
    }
  }

  return v10;
}

void key path setter for CloudSyncAssetData.assetClass : CloudSyncAssetData(_BYTE *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    v3 = 99;
  }

  else
  {
    v3 = 98;
  }

  v4 = MEMORY[0x21CE91FC0](v3, 0xE100000000000000);

  [v2 setProtectionClass_];
}

void (*CloudSyncAssetData.assetClass.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  CloudSyncAssetData.assetClass.getter((a1 + 8));
  return CloudSyncAssetData.assetClass.modify;
}

void CloudSyncAssetData.assetClass.modify(uint64_t a1)
{
  v1 = *a1;
  if (*(a1 + 8))
  {
    v2 = 99;
  }

  else
  {
    v2 = 98;
  }

  v3 = MEMORY[0x21CE91FC0](v2, 0xE100000000000000);

  [v1 setProtectionClass_];
}

unint64_t lazy protocol witness table accessor for type CloudManager and conformance CloudManager()
{
  result = lazy protocol witness table cache variable for type CloudManager and conformance CloudManager;
  if (!lazy protocol witness table cache variable for type CloudManager and conformance CloudManager)
  {
    type metadata accessor for CloudManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CloudManager and conformance CloudManager);
  }

  return result;
}

double MutableContactViewModel.contacts.getter()
{
  swift_beginAccess();

  return result;
}

double MutableContactViewModel.contacts.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

id MutableContactViewModel.__allocating_init(intendedViewport:supportedStyles:contactIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = specialized MutableContactViewModel.init(intendedViewport:supportedStyles:contactIdentifier:dateInterval:)(a1, a2, a3, a4, a5);

  return v12;
}

id static MutableContactViewModel.empty.getter()
{
  if (one-time initialization token for empty != -1)
  {
    swift_once();
  }

  v1 = static MutableContactViewModel.empty;

  return v1;
}

void *MutableContactViewModel.profilePicture.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void key path setter for MutableContactViewModel.profilePicture : MutableContactViewModel(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t MutableContactViewModel.name.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double key path setter for MutableContactViewModel.name : MutableContactViewModel(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

BOOL MutableContactViewModel.isSingleContact.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts;
  swift_beginAccess();
  return *(v0 + v1) == 0;
}

uint64_t MutableContactViewModel.contactIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier);

  return v1;
}

id MutableContactViewModel.init(intendedViewport:supportedStyles:contactIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = specialized MutableContactViewModel.init(intendedViewport:supportedStyles:contactIdentifier:dateInterval:)(a1, a2, a3, a4, a5);

  return v6;
}

id MutableContactViewModel.__allocating_init(intendedViewport:supportedStyles:image:name:dateInterval:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  v14 = specialized MutableContactViewModel.init(intendedViewport:supportedStyles:image:name:dateInterval:)(a1, a2, a3, a4, a5, a6);

  return v14;
}

id MutableContactViewModel.init(intendedViewport:supportedStyles:image:name:dateInterval:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = specialized MutableContactViewModel.init(intendedViewport:supportedStyles:image:name:dateInterval:)(a1, a2, a3, a4, a5, a6);

  return v8;
}

void MutableContactViewModel.init(intendedViewport:supportedStyles:viewModels:)(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v102 = a2;
  v103 = a1;
  ObjectType = swift_getObjectType();
  v101 = type metadata accessor for DateInterval();
  v7 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v95 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for Date();
  v97 = *(v98 - 8);
  v9 = MEMORY[0x28223BE20](v98);
  v93 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v92 = &v85 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v91 = &v85 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v94 = &v85 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v85 - v18;
  MEMORY[0x28223BE20](v17);
  v96 = &v85 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v85 - v26;
  MEMORY[0x28223BE20](v25);
  v104 = &v85 - v28;
  v29 = OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts;
  *&v4[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts] = 0;
  v30 = a3 >> 62;
  v100 = v7;
  if (a3 >> 62)
  {
    if (__CocoaSet.count.getter() == 1 && __CocoaSet.count.getter())
    {
      goto LABEL_3;
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
  {
LABEL_3:
    v99 = ObjectType;
    if ((a3 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x21CE93180](0, a3);
      goto LABEL_6;
    }

    if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v31 = *(a3 + 32);
LABEL_6:
      v32 = v31;

      swift_beginAccess();
      *&v4[v29] = 0;

      v33 = *&v32[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier + 8];
      v34 = &v4[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier];
      *v34 = *&v32[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier];
      v34[1] = v33;
      *&v4[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_dbContactModel] = 0;
      v35 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      swift_beginAccess();
      v36 = *&v32[v35];
      v37 = &v32[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
      swift_beginAccess();
      v38 = *v37;
      v39 = *(v37 + 1);
      v97 = v38;
      v40 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
      swift_beginAccess();
      outlined init with copy of DateInterval?(&v32[v40], v104, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      LODWORD(v98) = v32[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass];
      v41 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
      *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
      v42 = &v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
      *v42 = 0;
      v42[1] = 0;
      v43 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
      (*(v100 + 56))(&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v101);

      v44 = v36;
      UUID.init()();
      v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
      v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
      *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
      swift_unknownObjectWeakInit();
      v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
      *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
      v45 = v103;
      *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v103;
      *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v102;
      swift_beginAccess();
      v46 = *&v4[v41];
      *&v4[v41] = v36;
      v47 = v44;
      v48 = v45;

      swift_beginAccess();
      *v42 = v97;
      v42[1] = v39;

      swift_beginAccess();
      v49 = v104;
      outlined assign with copy of DateInterval?(v104, &v4[v43]);
      v50 = swift_endAccess();
      v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v98;
      (*(v99 + 328))(v106, v50);
      LOBYTE(v41) = v106[0];
      type metadata accessor for AssetViewModelRenderingActor();
      v51 = swift_allocObject();
      swift_defaultActor_initialize();
      *(v51 + 120) = 0;
      swift_unknownObjectWeakInit();
      *(v51 + 144) = 0;
      swift_unknownObjectWeakInit();
      *(v51 + 112) = v41;
      *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v51;
      v52 = type metadata accessor for AssetViewModel(0);
      v105.receiver = v4;
      v105.super_class = v52;
      objc_msgSendSuper2(&v105, sel_init);

      outlined destroy of UTType?(v49, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
      return;
    }

    __break(1u);
    goto LABEL_31;
  }

  v53 = &v4[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier];
  *v53 = 0;
  v53[1] = 0;
  v54 = specialized _arrayForceCast<A, B>(_:)(a3);
  swift_beginAccess();
  *&v4[v29] = v54;

  if (!v30)
  {
    v30 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v30)
    {
      goto LABEL_11;
    }

LABEL_17:

    goto LABEL_26;
  }

  v30 = __CocoaSet.count.getter();
  if (!v30)
  {
    goto LABEL_17;
  }

LABEL_11:
  v99 = ObjectType;
  v90 = v53;
  v89 = a3 & 0xC000000000000001;
  if ((a3 & 0xC000000000000001) != 0)
  {
LABEL_31:
    v55 = MEMORY[0x21CE93180](0, a3);
    goto LABEL_14;
  }

  if (!*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_33;
  }

  v55 = *(a3 + 32);
LABEL_14:
  v56 = v55;
  v57 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v56 + v57, v27, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v58 = *(v100 + 48);
  if (!v58(v27, 1, v101))
  {
    v87 = v58;
    v88 = v56;
    DateInterval.start.getter();
    outlined destroy of UTType?(v27, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
    v59 = v97[4];
    v59(v96, v19, v98);
    v60 = v30 - 1;
    if (!__OFSUB__(v30, 1))
    {
      v86 = v59;
      v61 = v101;
      if (v89)
      {
        v62 = MEMORY[0x21CE93180](v60, a3);
LABEL_24:

        v63 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
        swift_beginAccess();
        outlined init with copy of DateInterval?(v62 + v63, v24, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
        if (!v87(v24, 1, v61))
        {
          v90 = v62;
          v65 = v91;
          v66 = v61;
          DateInterval.end.getter();
          outlined destroy of UTType?(v24, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
          v67 = v94;
          v68 = v98;
          v86(v94, v65, v98);
          v69 = v97[2];
          v69(v92, v96, v68);
          v69(v93, v67, v68);
          v70 = v95;
          DateInterval.init(start:end:)();
          *&v4[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_dbContactModel] = 0;
          v71 = v100;
          v72 = v104;
          (*(v100 + 16))(v104, v70, v66);
          v73 = *(v71 + 56);
          v73(v72, 0, 1, v66);
          LODWORD(v93) = v88[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass];

          v74 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
          *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
          v75 = &v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
          *v75 = 0;
          v75[1] = 0;
          v76 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
          v73(&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v66);
          UUID.init()();
          v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
          v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
          *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
          swift_unknownObjectWeakInit();
          v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
          *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
          v77 = v103;
          *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v103;
          *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v102;
          swift_beginAccess();
          v78 = *&v4[v74];
          *&v4[v74] = 0;
          v79 = v77;

          swift_beginAccess();
          *v75 = 0;
          v75[1] = 0;

          swift_beginAccess();
          outlined assign with copy of DateInterval?(v72, &v4[v76]);
          v80 = swift_endAccess();
          v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v93;
          (*(v99 + 328))(v108, v80);
          LOBYTE(v76) = v108[0];
          type metadata accessor for AssetViewModelRenderingActor();
          v81 = swift_allocObject();
          swift_defaultActor_initialize();
          *(v81 + 120) = 0;
          swift_unknownObjectWeakInit();
          *(v81 + 144) = 0;
          swift_unknownObjectWeakInit();
          *(v81 + 112) = v76;
          *&v4[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v81;
          v82 = type metadata accessor for AssetViewModel(0);
          v107.receiver = v4;
          v107.super_class = v82;
          objc_msgSendSuper2(&v107, sel_init);

          outlined destroy of UTType?(v72, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
          (*(v71 + 8))(v95, v66);
          v83 = v97[1];
          v84 = v98;
          v83(v94, v98);
          v83(v96, v84);
          return;
        }

        v64 = v88;

        (v97[1])(v96, v98);
        outlined destroy of UTType?(v24, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
        goto LABEL_26;
      }

      if ((v60 & 0x8000000000000000) == 0)
      {
        if (v60 < *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v62 = *(a3 + 8 * v60 + 32);
          goto LABEL_24;
        }

LABEL_35:
        __break(1u);
        return;
      }

LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  outlined destroy of UTType?(v27, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
LABEL_26:

  swift_deallocPartialClassInstance();
}

void *specialized _arrayForceCast<A, B>(_:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = __CocoaSet.count.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v18 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v18;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x21CE93180](v5, a1);
        v8 = *(v18 + 16);
        v7 = *(v18 + 24);
        if (v8 >= v7 >> 1)
        {
          v10 = v6;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1);
          v6 = v10;
        }

        ++v5;
        *(v18 + 16) = v8 + 1;
        v9 = v18 + 16 * v8;
        *(v9 + 32) = v6;
        *(v9 + 40) = &protocol witness table for MutableContactViewModel;
      }

      while (v2 != v5);
    }

    else
    {
      v11 = (a1 + 32);
      do
      {
        v12 = *(v18 + 16);
        v13 = *(v18 + 24);
        v14 = *v11;
        if (v12 >= v13 >> 1)
        {
          v16 = v13 > 1;
          v17 = v14;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v16, v12 + 1, 1);
          v14 = v17;
        }

        *(v18 + 16) = v12 + 1;
        v15 = v18 + 16 * v12;
        *(v15 + 32) = v14;
        *(v15 + 40) = &protocol witness table for MutableContactViewModel;
        ++v11;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      CGFloat._bridgeToObjectiveC()();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

id MutableContactViewModel.__allocating_init(dbObject:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized MutableContactViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

id MutableContactViewModel.init(dbObject:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized MutableContactViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void MutableContactViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void MutableContactViewModel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MutableContactViewModel.render()()
{
  *(v1 + 136) = v0;
  return MEMORY[0x2822009F8](MutableContactViewModel.render(), 0, 0);
}

{
  v1 = v0[17];
  v2 = OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[18] = v3;
  if (v3)
  {
    v4 = *(v0[17] + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
    v0[21] = v4;
    if (v4)
    {
      v5 = swift_task_alloc();
      v0[22] = v5;
      *(v5 + 16) = v3;

      v6 = v4;
      v7 = swift_task_alloc();
      v0[23] = v7;
      *v7 = v0;
      v7[1] = MutableContactViewModel.render();
      v8 = MEMORY[0x277D84F78] + 8;
      v9 = MEMORY[0x277D84F78] + 8;
      v10 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x282200600](v7, v8, v9, 0, 0, &async function pointer to partial apply for closure #1 in MutableContactViewModel.render(), v5, v10);
    }

    else
    {
      v12 = v0[1];

      return v12();
    }
  }

  else
  {
    v11 = swift_task_alloc();
    v0[19] = v11;
    *v11 = v0;
    v11[1] = MutableContactViewModel.render();

    return MutableContactViewModel.getProfilePicture()();
  }
}

{
  v1 = v0[20];
  v2 = v0[17];
  v3 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v4 = *(v2 + v3);
  *(v2 + v3) = v1;

  v5 = MutableContactViewModel.getFullName()();
  v6 = (v0[17] + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  *v6 = v5;

  v7 = v0[1];

  return v7();
}

{

  return MEMORY[0x2822009F8](MutableContactViewModel.render(), 0, 0);
}

uint64_t MutableContactViewModel.render()(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](MutableContactViewModel.render(), 0, 0);
}

void MutableContactViewModel.render()()
{
  v54 = v0;
  v1 = *(v0 + 144);
  v2 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_14;
  }

  v4 = 0;
  v5 = v1 + 40;
  do
  {
    v50 = v2;
    v6 = (v5 + 16 * v4);
    v7 = v4;
    while (1)
    {
      if (v7 >= *(v1 + 16))
      {
LABEL_28:
        __break(1u);
        return;
      }

      v9 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v11 = *(v8 + 32);
      v12 = v9;
      v13 = v11(ObjectType, v8);
      if (v13)
      {
        break;
      }

LABEL_5:
      ++v7;
      v6 += 2;
      if (v3 == v7)
      {
        v2 = v50;
        goto LABEL_14;
      }
    }

    v14 = v13;
    v15 = Image.uiImage.getter();

    if (!v15)
    {
      goto LABEL_5;
    }

    MEMORY[0x21CE92260]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    v4 = v7 + 1;
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v2 = v52;
    v5 = v1 + 40;
  }

  while (v3 - 1 != v7);
LABEL_14:
  v16 = v49[21];
  v18 = v49[17];
  v17 = v49[18];
  type metadata accessor for Image(0);
  v19 = MEMORY[0x277D85000];
  v20 = (*((*MEMORY[0x277D85000] & *v16) + 0x60))();
  v21 = (*((*v19 & *v16) + 0x78))();
  v22 = specialized static SnowGlobeEffect.image(for:targetSize:)(v2, v20, v21);

  v53 = *(v18 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v23 = Image.__allocating_init(uiImage:isGlyph:assetClass:)(v22, 0, &v53);
  v24 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v25 = *(v18 + v24);
  *(v18 + v24) = v23;

  v26 = 0;
  v27 = v17 + 40;
  v51 = MEMORY[0x277D84F90];
  v48 = v17 + 40;
LABEL_15:
  v28 = (v27 + 16 * v26);
  while (v3 != v26)
  {
    if (v26 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_28;
    }

    v29 = v28 + 2;
    ++v26;
    v30 = *(v28 - 1);
    v31 = *v28;
    v32 = swift_getObjectType();
    v33 = *(v31 + 24);
    v34 = v30;
    v35 = v33(v32, v31);
    v37 = v36;

    v28 = v29;
    if (v37)
    {
      v38 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v51 + 2) + 1, 1, v51);
      }

      v40 = *(v38 + 2);
      v39 = *(v38 + 3);
      if (v40 >= v39 >> 1)
      {
        v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
      }

      *(v38 + 2) = v40 + 1;
      v51 = v38;
      v41 = &v38[16 * v40];
      *(v41 + 4) = v35;
      *(v41 + 5) = v37;
      v27 = v48;
      goto LABEL_15;
    }
  }

  v42 = v49[21];

  v43 = specialized static MutableContactViewModel.combinedNames(_:)(v51);
  v45 = v44;

  v46 = (v49[17] + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  *v46 = v43;
  v46[1] = v45;

  v47 = v49[1];

  v47();
}

uint64_t MutableContactViewModel.getProfilePicture()()
{
  v1[4] = v0;
  v1[5] = type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v3;
  v1[8] = v2;

  return MEMORY[0x2822009F8](MutableContactViewModel.getProfilePicture(), v3, v2);
}

{
  v1 = *(v0[4] + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (v1 && (v2 = MEMORY[0x277D85000], v3 = (*((*MEMORY[0x277D85000] & *v1) + 0x60))(), v4 = (*((*v2 & *v1) + 0x78))(), v5 = MutableContactViewModel.contact.getter(), (v0[9] = v5) != 0))
  {
    v6 = v5;
    v7 = [objc_opt_self() sharedApplication];
    v8 = [v7 userInterfaceLayoutDirection];

    v9 = v8 == 1;
    v10 = objc_opt_self();
    v11 = [objc_opt_self() mainScreen];
    [v11 scale];
    v13 = v12;

    v14 = [v10 scopeWithPointSize:v9 scale:0 rightToLeft:v3 style:{v4, v13}];
    v0[10] = v14;
    v15 = [objc_allocWithZone(MEMORY[0x277CBDBD0]) init];
    v0[11] = v15;
    v0[2] = 0;
    v16 = static MainActor.shared.getter();
    v0[12] = v16;
    v17 = swift_task_alloc();
    v0[13] = v17;
    v17[2] = v0 + 2;
    v17[3] = v15;
    v17[4] = v6;
    v17[5] = v14;
    v18 = swift_task_alloc();
    v0[14] = v18;
    v19 = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIImage, 0x277D755B8);
    *v18 = v0;
    v18[1] = MutableContactViewModel.getProfilePicture();
    v20 = MEMORY[0x277D85700];

    return MEMORY[0x2822007B8](v0 + 3, v16, v20, 0xD000000000000013, 0x800000021657D350, partial apply for closure #1 in MutableContactViewModel.getProfilePicture(), v17, v19);
  }

  else
  {

    v21 = v0[1];

    return v21(0);
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](MutableContactViewModel.getProfilePicture(), v3, v2);
}

{
  v10 = v0;
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[4];

  v4 = v0[3];
  type metadata accessor for Image(0);
  v9 = *(v3 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass);
  v5 = v4;
  v6 = Image.__allocating_init(uiImage:isGlyph:assetClass:)(v4, 0, &v9);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = v0[1];

  return v7(v6);
}

Swift::String_optional __swiftcall MutableContactViewModel.getFullName()()
{
  v0 = MutableContactViewModel.contact.getter();
  if (!v0)
  {
    goto LABEL_5;
  }

  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CBDA78]) init];
  [v2 setStyle_];
  v3 = [v2 stringFromContact_];
  if (!v3)
  {

    v0 = 0;
LABEL_5:
    v8 = 0;
    goto LABEL_6;
  }

  v4 = v3;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v7;
  v0 = v5;
LABEL_6:
  result.value._object = v8;
  result.value._countAndFlagsBits = v0;
  return result;
}

uint64_t closure #1 in MutableContactViewModel.render()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in MutableContactViewModel.render(), 0, 0);
}

uint64_t closure #1 in MutableContactViewModel.render()()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  if (v2)
  {
    v24 = **(v0 + 72);
    v3 = (v1 + 32);
    v4 = type metadata accessor for TaskPriority();
    v5 = *(v4 - 8);
    v22 = *(v5 + 56);
    v21 = (v5 + 48);
    v20 = (v5 + 8);
    v23 = v4;
    do
    {
      v9 = *(v0 + 88);
      v8 = *(v0 + 96);
      v25 = *v3;
      v22(v8, 1, 1, v4);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      v11 = (v10 + 16);
      *(v10 + 24) = 0;
      *(v10 + 32) = v25;
      outlined init with copy of DateInterval?(v8, v9, &_sScPSgMd, &_sScPSgMR);
      LODWORD(v9) = (*v21)(v9, 1, v4);
      v12 = v25;
      v13 = *(v0 + 88);
      if (v9 == 1)
      {
        outlined destroy of UTType?(*(v0 + 88), &_sScPSgMd, &_sScPSgMR);
        if (*v11)
        {
          goto LABEL_9;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*v20)(v13, v4);
        if (*v11)
        {
LABEL_9:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v14 = dispatch thunk of Actor.unownedExecutor.getter();
          v15 = v16;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v14 = 0;
      v15 = 0;
LABEL_10:
      v17 = swift_allocObject();
      *(v17 + 16) = &async function pointer to partial apply for closure #1 in closure #1 in MutableContactViewModel.render();
      *(v17 + 24) = v10;

      if (v15 | v14)
      {
        v6 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v14;
        *(v0 + 40) = v15;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 96);
      *(v0 + 48) = 1;
      *(v0 + 56) = v6;
      *(v0 + 64) = v24;
      swift_task_create();

      outlined destroy of UTType?(v7, &_sScPSgMd, &_sScPSgMR);
      ++v3;
      --v2;
      v4 = v23;
    }

    while (v2);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t closure #1 in closure #1 in MutableContactViewModel.render()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *((*MEMORY[0x277D85000] & *a4) + 0x1C0);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = static Exif.filterImage(imageSource:outputURL:);

  return v8();
}

void MutableContactViewModel.isRenderedBasedOnProperties.getter()
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

      v6 = v1 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle;
      swift_beginAccess();
      if (*(v6 + 8))
      {
        v7 = OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts;
        swift_beginAccess();
        v8 = *(v1 + v7);
        if (v8)
        {
          v9 = *(v8 + 16);

          v10 = -v9;
          v11 = -1;
          v12 = 32;
          v13 = MEMORY[0x277D85000];
          while (1)
          {
            if (v10 + v11 == -1)
            {
LABEL_9:

              return;
            }

            if (++v11 >= *(v8 + 16))
            {
              break;
            }

            v14 = *(v8 + v12);
            v15 = v12 + 16;
            v16 = *((*v13 & *v14) + 0x1D8);
            v17 = v14;
            LOBYTE(v16) = v16();

            v12 = v15;
            if ((v16 & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          __break(1u);
        }
      }
    }
  }
}

Swift::Bool __swiftcall MutableContactViewModel.clearCache()()
{
  v1 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v2 = *(v0 + v1);
  *(v0 + v1) = 0;

  return 1;
}

void *MutableContactViewModel.view(style:)(char *a1)
{
  v3 = *a1;
  objc_allocWithZone(type metadata accessor for ContactView(0));
  return ContactView.init(viewModel:style:)(v1, &v3);
}

double MutableContactViewModel.__ivar_destroyer()
{

  return result;
}

id MutableContactViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double protocol witness for ContactViewModel.contacts.getter in conformance MutableContactViewModel()
{
  swift_beginAccess();

  return result;
}

uint64_t protocol witness for ContactViewModel.name.getter in conformance MutableContactViewModel()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t protocol witness for ContactViewModel.contactIdentifier.getter in conformance MutableContactViewModel()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier);

  return v1;
}

BOOL protocol witness for ContactViewModel.isSingleContact.getter in conformance MutableContactViewModel()
{
  v1 = OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts;
  swift_beginAccess();
  return *(v0 + v1) == 0;
}

id MutableContactViewModel.contact.getter()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *v1;
  v4 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
  v5 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v6 = MEMORY[0x21CE91FC0](v3, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21658E210;
  *(v7 + 32) = v5;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15CNKeyDescriptor_pMd, &_sSo15CNKeyDescriptor_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v22[0] = 0;
  v9 = [v4 unifiedContactWithIdentifier:v6 keysToFetch:isa error:v22];

  v10 = v22[0];
  if (!v9)
  {
    v11 = v10;
    v12 = _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static CommonLogger.viewModel);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = v12;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_21607C000, v15, v16, "[MutableContactViewModel] Failed to load contact: %@", v17, 0xCu);
      outlined destroy of UTType?(v18, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      MEMORY[0x21CE94770](v18, -1, -1);
      MEMORY[0x21CE94770](v17, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    return 0;
  }

  swift_unknownObjectRelease();
  return v9;
}

uint64_t closure #1 in MutableContactViewModel.getProfilePicture()(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5)
{
  v22 = a3;
  v23 = a5;
  v24 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5NeverOGMd, &_sScCySo7UIImageCs5NeverOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_21658E210;
  *(v13 + 32) = a4;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for CNContact, 0x277CBDA58);
  v14 = a4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  (*(v8 + 16))(v10, a1, v7);
  v16 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  *(v17 + 24) = v11;
  (*(v8 + 32))(v17 + v16, v10, v7);
  aBlock[4] = partial apply for closure #1 in closure #1 in MutableContactViewModel.getProfilePicture();
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnection & BSServiceConnectionContext) -> ();
  aBlock[3] = &block_descriptor_15;
  v18 = _Block_copy(aBlock);

  v19 = [v22 renderAvatarsForContacts:isa scope:v23 imageHandler:v18];
  _Block_release(v18);

  *v24 = v19;

  return swift_unknownObjectRelease();
}

uint64_t closure #1 in closure #1 in MutableContactViewModel.getProfilePicture()(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (*(a2 + 16) == 1)
  {
    result = swift_beginAccess();
    if ((*(a3 + 16) & 1) == 0)
    {
      swift_beginAccess();
      *(a3 + 16) = 1;
      v7 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5NeverOGMd, &_sScCySo7UIImageCs5NeverOGMR);
      return CheckedContinuation.resume(returning:)();
    }
  }

  else
  {
    result = swift_beginAccess();
    *(a2 + 16) = 1;
  }

  return result;
}

id specialized MutableContactViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a3;
  v16[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *&a2[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts] = 0;
  outlined init with copy of DBObject(v16, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd, &_s9MomentsUI8DBObject_pMR);
  type metadata accessor for DBContactModel(0);
  if (swift_dynamicCast())
  {
    v8 = *(v14 + OBJC_IVAR____TtC9MomentsUI14DBContactModel_contactIdentifier + 8);
    v9 = &a2[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier];
    *v9 = *(v14 + OBJC_IVAR____TtC9MomentsUI14DBContactModel_contactIdentifier);
    v9[1] = v8;
    *&a2[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_dbContactModel] = v14;

    v12 = specialized AssetViewModel.init(dbObject:)(v10, a2, v11);
    __swift_destroy_boxed_opaque_existential_1(v16);
    return v12;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id specialized MutableContactViewModel.init(intendedViewport:supportedStyles:contactIdentifier:dateInterval:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v33 = a2;
  v34 = a5;
  v32 = a1;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v31 - v12;
  v14 = OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts;
  *&v6[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts] = 0;
  v15 = &v6[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier];
  *v15 = a3;
  v15[1] = a4;
  swift_beginAccess();
  *&v6[v14] = 0;
  *&v6[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_dbContactModel] = 0;
  v16 = type metadata accessor for DateInterval();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v13, a5, v16);
  v18 = *(v17 + 56);
  v18(v13, 0, 1, v16);
  type metadata accessor for DBAssetModel(0);
  static DBAssetModel.subscript.getter(ObjectType, &v37);
  HIDWORD(v31) = v37;
  v19 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v20 = &v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v18(&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v16);
  UUID.init()();
  v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v23 = v32;
  v22 = v33;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v32;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v22;
  swift_beginAccess();
  v24 = *&v6[v19];
  *&v6[v19] = 0;
  v25 = v23;

  swift_beginAccess();
  *v20 = 0;
  v20[1] = 0;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v13, &v6[v21]);
  v26 = swift_endAccess();
  v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = BYTE4(v31);
  (*(ObjectType + 328))(v36, v26);
  LOBYTE(v21) = v36[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v27 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v27 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v27 + 112) = v21;
  *&v6[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v27;
  v28 = type metadata accessor for AssetViewModel(0);
  v35.receiver = v6;
  v35.super_class = v28;
  v29 = objc_msgSendSuper2(&v35, sel_init);
  (*(v17 + 8))(v34, v16);
  outlined destroy of UTType?(v13, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  return v29;
}

uint64_t specialized static MutableContactViewModel.combinedNames(_:)(char *a1)
{
  v1 = *(a1 + 2);
  if (!v1)
  {
    return 0;
  }

  v2 = a1;
  v3 = *(a1 + 4);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v1 - 1) > *(v2 + 3) >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v1, 1, v2);
  }

  specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(0, 1, 0);
  v10 = v3;
  v5 = *(v2 + 2);
  if (v5)
  {
    v6 = (v2 + 40);
    do
    {
      v7 = *(v6 - 1);
      v8 = *v6;

      MEMORY[0x21CE92100](v7, v8);

      MEMORY[0x21CE92100](8236, 0xE200000000000000);

      v6 += 2;
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
  }

  return v3;
}

id specialized MutableContactViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return specialized MutableContactViewModel.init(dbObject:)(v9, v11, a3, a4);
}

id specialized MutableContactViewModel.init(intendedViewport:supportedStyles:image:name:dateInterval:)(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v38 = a5;
  v39 = a6;
  v37 = a4;
  v32 = a3;
  v35 = a1;
  v36 = a2;
  ObjectType = swift_getObjectType();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts;
  *&v7[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contacts] = 0;
  v15 = &v7[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_contactIdentifier];
  *v15 = 0;
  v15[1] = 0;
  swift_beginAccess();
  *&v7[v14] = 0;
  *&v7[OBJC_IVAR____TtC9MomentsUI23MutableContactViewModel_dbContactModel] = 0;
  v16 = type metadata accessor for DateInterval();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v13, a6, v16);
  v18 = *(v17 + 56);
  v18(v13, 0, 1, v16);
  type metadata accessor for DBAssetModel(0);
  v33 = a3;
  static DBAssetModel.subscript.getter(ObjectType, &v42);
  v34 = v42;
  v19 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage] = 0;
  v20 = &v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle];
  *v20 = 0;
  v20[1] = 0;
  v21 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  v18(&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval], 1, 1, v16);
  UUID.init()();
  v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentStyle] = 9;
  v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_currentState] = 0;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_availableForSelection] = 1;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_dbAssetModel] = 0;
  v23 = v35;
  v22 = v36;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport] = v35;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles] = v22;
  swift_beginAccess();
  v24 = *&v7[v19];
  *&v7[v19] = v32;
  v36 = v33;
  v25 = v23;

  swift_beginAccess();
  v26 = v38;
  *v20 = v37;
  v20[1] = v26;

  swift_beginAccess();
  outlined assign with copy of DateInterval?(v13, &v7[v21]);
  v27 = swift_endAccess();
  v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_assetClass] = v34;
  (*(ObjectType + 328))(v41, v27);
  LOBYTE(v19) = v41[0];
  type metadata accessor for AssetViewModelRenderingActor();
  v28 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v28 + 120) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + 144) = 0;
  swift_unknownObjectWeakInit();
  *(v28 + 112) = v19;
  *&v7[OBJC_IVAR____TtC9MomentsUI14AssetViewModel_renderingActor] = v28;
  v29 = type metadata accessor for AssetViewModel(0);
  v40.receiver = v7;
  v40.super_class = v29;
  v30 = objc_msgSendSuper2(&v40, sel_init);

  (*(v17 + 8))(v39, v16);
  outlined destroy of UTType?(v13, &_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  return v30;
}

uint64_t partial apply for closure #1 in MutableContactViewModel.render()(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = static Exif.filterImage(imageSource:outputURL:);

  return closure #1 in MutableContactViewModel.render()(a1, a2, v6);
}

uint64_t type metadata accessor for MutableContactViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for MutableContactViewModel;
  if (!type metadata singleton initialization cache for MutableContactViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in MutableContactViewModel.getProfilePicture()(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo7UIImageCs5NeverOGMd, &_sScCySo7UIImageCs5NeverOGMR);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return closure #1 in closure #1 in MutableContactViewModel.getProfilePicture()(a1, v3, v4);
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in closure #1 in MutableContactViewModel.render()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = static Exif.filterVideo(inputURL:outputURL:);

  return closure #1 in closure #1 in MutableContactViewModel.render()(a1, v4, v5, v6);
}

void static NewOnboardedSyncAlert.show(deviceName:)(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v56 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v52 = &v52 - v4;
  error = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2165965F0;
  v6 = *MEMORY[0x277CBF188];
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = inited;
  *(inited + 32) = v6;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = objc_opt_self();
  v10 = v6;
  v11 = [v9 bundleForClass_];
  v57._object = 0x800000021657D450;
  v12._countAndFlagsBits = 0xD00000000000001ELL;
  v12._object = 0x800000021657D430;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v57._countAndFlagsBits = 0xD000000000000014;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v57);

  v14 = static String.localizedStringWithFormat(_:_:)();
  v16 = v15;

  v17 = MEMORY[0x277D837D0];
  *(v7 + 64) = MEMORY[0x277D837D0];
  *(v7 + 40) = v14;
  *(v7 + 48) = v16;
  v18 = *MEMORY[0x277CBF198];
  if (!*MEMORY[0x277CBF198])
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v7 + 72) = v18;
  v19 = v18;
  v20 = [v9 bundleForClass_];
  v58._object = 0x800000021657D4D0;
  v21._countAndFlagsBits = 0xD00000000000005CLL;
  v21._object = 0x800000021657D470;
  v58._countAndFlagsBits = 0xD000000000000016;
  v22._countAndFlagsBits = 0;
  v22._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v21, 0, v20, v22, v58);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21658CA50;
  *(v23 + 56) = v17;
  *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
  *(v23 + 32) = v53;
  *(v23 + 40) = a2;

  v24 = static String.localizedStringWithFormat(_:_:)();
  v26 = v25;

  *(v7 + 104) = v17;
  *(v7 + 80) = v24;
  *(v7 + 88) = v26;
  v27 = *MEMORY[0x277CBF1E8];
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
  }

  *(v7 + 112) = v27;
  v28 = v27;
  v29 = [v9 bundleForClass_];
  v59._object = 0xE90000000000006ELL;
  v59._countAndFlagsBits = 0x6F69746361204B4FLL;
  v30._countAndFlagsBits = 19279;
  v30._object = 0xE200000000000000;
  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  v32 = NSLocalizedString(_:tableName:bundle:value:comment:)(v30, 0, v29, v31, v59);

  *(v7 + 144) = v17;
  *(v7 + 120) = v32;
  v33 = *MEMORY[0x277CBF1C0];
  if (!*MEMORY[0x277CBF1C0])
  {
    goto LABEL_20;
  }

  *(v7 + 152) = v33;
  v34 = v33;
  v35 = [v9 bundleForClass_];
  v60._object = 0xEE0073676E697474;
  v36._countAndFlagsBits = 0x73676E6974746553;
  v60._countAndFlagsBits = 0x6573206F74206F47;
  v36._object = 0xE800000000000000;
  v37._countAndFlagsBits = 0;
  v37._object = 0xE000000000000000;
  v38 = NSLocalizedString(_:tableName:bundle:value:comment:)(v36, 0, v35, v37, v60);

  *(v7 + 184) = v17;
  *(v7 + 160) = v38;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  type metadata accessor for CFStringRef(0);
  lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v40 = CFUserNotificationCreate(0, 0.0, 1uLL, &error, isa);

  if (!v40)
  {

    if (one-time initialization token for cloud != -1)
    {
      swift_once();
    }

    v41 = type metadata accessor for Logger();
    __swift_project_value_buffer(v41, static CommonLogger.cloud);
    v40 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_21607C000, v40, v42, "[NewOnboardedSyncAlert] cannot show alert", v43, 2u);
      MEMORY[0x21CE94770](v43, -1, -1);
    }

    goto LABEL_16;
  }

  responseFlags = 0;
  CFUserNotificationReceiveResponse(v40, 0.0, &responseFlags);
  if (responseFlags != 1)
  {

LABEL_16:

    return;
  }

  v44 = [objc_opt_self() defaultWorkspace];
  if (v44)
  {
    v45 = v44;

    v46 = v52;
    URL.init(string:)();
    v47 = type metadata accessor for URL();
    v48 = *(v47 - 8);
    v50 = 0;
    if ((*(v48 + 48))(v46, 1, v47) != 1)
    {
      URL._bridgeToObjectiveC()(v49);
      v50 = v51;
      (*(v48 + 8))(v46, v47);
    }

    [v45 openSensitiveURL:v50 withOptions:0];

    goto LABEL_16;
  }

  __break(1u);
}

unint64_t lazy protocol witness table accessor for type CFStringRef and conformance CFStringRef()
{
  result = lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef;
  if (!lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef);
  }

  return result;
}

uint64_t dispatch thunk of SharedServer.didSendUserSelection(suggestion:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = static Exif.filterImage(imageSource:outputURL:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SharedServer.refreshBundlesIfNecessary()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = static Exif.filterImage(imageSource:outputURL:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of SharedServer.performRealTimeCheck(significantLocationEnabled:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 80) + **(a3 + 80));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CloudSubDB.zoneNotFound(_:_:purged:) in conformance CloudSuggestionsDB;

  return v9(a1, a2, a3);
}

void closure #1 in variable initialization expression of IneligibleForSyncOnboardingViewController.titleLabel()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  type metadata accessor for IneligibleForSyncOnboardingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v12._object = 0x800000021657D740;
  v3._object = 0x8000000216577C20;
  v12._countAndFlagsBits = 0xD000000000000024;
  v3._countAndFlagsBits = 0xD000000000000016;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v12);

  v6 = MEMORY[0x21CE91FC0](v5._countAndFlagsBits, v5._object);

  [v0 setText_];

  v7 = objc_opt_self();
  v8 = [v7 preferredFontForTextStyle_];
  v9 = [v8 fontDescriptor];
  v10 = [v9 fontDescriptorWithSymbolicTraits_];

  if (v10)
  {
    v11 = [v7 fontWithDescriptor:v10 size:0.0];

    [v0 setFont_];
  }

  else
  {
    __break(1u);
  }
}

id closure #1 in variable initialization expression of IneligibleForSyncOnboardingViewController.messageLabel()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  type metadata accessor for IneligibleForSyncOnboardingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v11._object = 0x800000021657D740;
  v3._object = 0x800000021657D680;
  v3._countAndFlagsBits = 0x10000000000000B7;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v11._countAndFlagsBits = 0xD000000000000024;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v11);

  v6 = MEMORY[0x21CE91FC0](v5._countAndFlagsBits, v5._object);

  [v0 setText_];

  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setNumberOfLines_];
  v8 = [objc_opt_self() labelColor];
  v9 = [v8 colorWithAlphaComponent_];

  [v0 setTextColor_];
  return v0;
}

uint64_t IneligibleForSyncOnboardingViewController.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_delegate;
  swift_beginAccess();
  return outlined init with copy of IneligibleForSyncOnboardingViewControllerDelegate?(v1 + v3, a1);
}

uint64_t outlined init with copy of IneligibleForSyncOnboardingViewControllerDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI49IneligibleForSyncOnboardingViewControllerDelegate_pSgMd, &_s9MomentsUI49IneligibleForSyncOnboardingViewControllerDelegate_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t IneligibleForSyncOnboardingViewController.delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_delegate;
  swift_beginAccess();
  outlined assign with take of IneligibleForSyncOnboardingViewControllerDelegate?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of IneligibleForSyncOnboardingViewControllerDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI49IneligibleForSyncOnboardingViewControllerDelegate_pSgMd, &_s9MomentsUI49IneligibleForSyncOnboardingViewControllerDelegate_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void *IneligibleForSyncOnboardingViewController.init(delegate:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_journalingSuggestionsLogoImageView;
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v4 setContentMode_];
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_titleLabel;
  closure #1 in variable initialization expression of IneligibleForSyncOnboardingViewController.titleLabel();
  *&v1[v5] = v6;
  v7 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_messageLabel;
  *&v1[v7] = closure #1 in variable initialization expression of IneligibleForSyncOnboardingViewController.messageLabel();
  v8 = &v1[OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_delegate];
  v9 = type metadata accessor for IneligibleForSyncOnboardingViewController();
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v16.receiver = v1;
  v16.super_class = v9;
  v10 = objc_msgSendSuper2(&v16, sel_initWithNibName_bundle_, 0, 0);
  result = [v10 view];
  if (result)
  {
    v12 = result;
    v13 = [objc_opt_self() systemBackgroundColor];
    [v12 setBackgroundColor_];

    v14 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_delegate;
    swift_beginAccess();
    outlined assign with copy of IneligibleForSyncOnboardingViewControllerDelegate?(a1, v10 + v14);
    v15 = swift_endAccess();
    (*((*MEMORY[0x277D85000] & *v10) + 0x90))(v15);

    outlined destroy of IneligibleForSyncOnboardingViewControllerDelegate?(a1);
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined assign with copy of IneligibleForSyncOnboardingViewControllerDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI49IneligibleForSyncOnboardingViewControllerDelegate_pSgMd, &_s9MomentsUI49IneligibleForSyncOnboardingViewControllerDelegate_pSgMR);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of IneligibleForSyncOnboardingViewControllerDelegate?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI49IneligibleForSyncOnboardingViewControllerDelegate_pSgMd, &_s9MomentsUI49IneligibleForSyncOnboardingViewControllerDelegate_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Void __swiftcall IneligibleForSyncOnboardingViewController.viewWillDisappear(_:)(Swift::Bool a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for IneligibleForSyncOnboardingViewController();
  v3 = objc_msgSendSuper2(&v10, sel_viewWillDisappear_, a1);
  (*((*MEMORY[0x277D85000] & *v1) + 0x70))(v9, v3);
  if (v9[3])
  {
    outlined init with copy of DBObject(v9, v6);
    outlined destroy of IneligibleForSyncOnboardingViewControllerDelegate?(v9);
    v4 = v7;
    v5 = v8;
    __swift_project_boxed_opaque_existential_1(v6, v7);
    (*(v5 + 8))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    outlined destroy of IneligibleForSyncOnboardingViewControllerDelegate?(v9);
  }
}

id IneligibleForSyncOnboardingViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

Swift::Void __swiftcall IneligibleForSyncOnboardingViewController.addViewsAndLayout()()
{
  v1 = v0;
  swift_getObjectType();
  v55 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v0 action:sel_cancelSheet];
  v2 = [objc_opt_self() systemIndigoColor];
  [v55 setTintColor_];

  v3 = [v0 navigationItem];
  [v3 setLeftBarButtonItem_];

  v4 = *&v0[OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_journalingSuggestionsLogoImageView];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x800000021657D550);
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];

  [v4 setImage_];
  v9 = [v1 view];
  if (!v9)
  {
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9;
  [v9 addSubview_];

  v11 = [v1 view];
  if (!v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v11;
  v13 = *&v1[OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_titleLabel];
  [v11 addSubview_];

  v14 = [v1 view];
  if (!v14)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = *&v1[OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_messageLabel];
  [v14 addSubview_];

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  v17 = [v4 topAnchor];
  v18 = [v1 view];
  if (!v18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v19 = v18;
  v20 = [v18 safeAreaLayoutGuide];

  v21 = [v20 topAnchor];
  v22 = [v17 constraintEqualToAnchor:v21 constant:50.0];

  [v22 setActive_];
  v23 = [v4 superview];
  if (v23)
  {
    v24 = v23;
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v25 = [v4 leadingAnchor];
    v26 = [v24 leadingAnchor];
    v27 = [v25 constraintEqualToAnchor_];

    [v27 setConstant_];
    [v27 setActive_];
  }

  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v28 = [v4 widthAnchor];
  v29 = [v28 constraintEqualToConstant_];

  [v29 setActive_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v30 = [v4 heightAnchor];
  v31 = [v30 constraintEqualToConstant_];

  [v31 setActive_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v32 = [v13 leadingAnchor];
  v33 = [v4 trailingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  [v34 setConstant_];
  [v34 setActive_];

  v35 = [v13 centerYAnchor];
  v36 = [v4 centerYAnchor];
  v37 = [v35 constraintEqualToAnchor_];

  [v37 setActive_];
  v38 = [v13 superview];
  if (v38)
  {
    v39 = v38;
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];
    v40 = [v13 trailingAnchor];
    v41 = [v39 trailingAnchor];
    v42 = [v40 constraintEqualToAnchor_];

    [v42 setConstant_];
    [v42 setActive_];
  }

  v43 = [v16 leadingAnchor];
  v44 = [v4 leadingAnchor];
  v45 = [v43 constraintEqualToAnchor_];

  [v45 setActive_];
  v46 = [v16 topAnchor];
  v47 = [v4 bottomAnchor];
  v48 = [v46 constraintEqualToAnchor:v47 constant:10.0];

  [v48 setActive_];
  v49 = [v16 superview];
  if (v49)
  {
    v50 = v49;
    [v16 setTranslatesAutoresizingMaskIntoConstraints_];
    v51 = [v16 trailingAnchor];
    v52 = [v50 trailingAnchor];
    v53 = [v51 constraintEqualToAnchor_];

    [v53 setConstant_];
    [v53 setActive_];

    v54 = v50;
  }

  else
  {
    v54 = v55;
  }
}

Swift::Void __swiftcall IneligibleForSyncOnboardingViewController.cancelSheet()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x70))(v6);
  if (v6[3])
  {
    outlined init with copy of DBObject(v6, v3);
    outlined destroy of IneligibleForSyncOnboardingViewControllerDelegate?(v6);
    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    outlined destroy of IneligibleForSyncOnboardingViewControllerDelegate?(v6);
  }
}

id IneligibleForSyncOnboardingViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x21CE91FC0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id IneligibleForSyncOnboardingViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IneligibleForSyncOnboardingViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void specialized IneligibleForSyncOnboardingViewController.init(coder:)()
{
  v1 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_journalingSuggestionsLogoImageView;
  v2 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v2 setContentMode_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_titleLabel;
  closure #1 in variable initialization expression of IneligibleForSyncOnboardingViewController.titleLabel();
  *(v0 + v3) = v4;
  v5 = OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_messageLabel;
  *(v0 + v5) = closure #1 in variable initialization expression of IneligibleForSyncOnboardingViewController.messageLabel();
  v6 = v0 + OBJC_IVAR____TtC9MomentsUI41IneligibleForSyncOnboardingViewController_delegate;
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t ClientReflectionViewModel.promptIndex.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_promptIndex;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t ClientReflectionViewModel.promptIndex.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_promptIndex;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *ClientReflectionViewModel.lightBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_lightBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ClientReflectionViewModel.lightBackgroundColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_lightBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *ClientReflectionViewModel.darkBackgroundColor.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_darkBackgroundColor;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ClientReflectionViewModel.darkBackgroundColor.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_darkBackgroundColor;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ClientReflectionViewModel.__allocating_init(dbObject:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized ClientReflectionViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

id ClientReflectionViewModel.init(dbObject:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized ClientReflectionViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void ClientReflectionViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientReflectionViewModel.init(from:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_lightBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_darkBackgroundColor) = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientReflectionViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientReflectionViewModel.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_lightBackgroundColor) = 0;
  *(v0 + OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_darkBackgroundColor) = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *ClientReflectionViewModel.view(style:)(char *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(type metadata accessor for ReflectionView(0));
  *&v3[OBJC_IVAR____TtC9MomentsUI14ReflectionView_prompts] = MEMORY[0x277D84F90];
  *&v3[OBJC_IVAR____TtC9MomentsUI14ReflectionView_promptIndex] = 0;
  v4 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_shuffleButton;
  v5 = objc_allocWithZone(MEMORY[0x277D75220]);
  v6 = v1;
  *&v3[v4] = [v5 init];
  v7 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_reflectionPromptLabel;
  *&v3[v7] = closure #1 in variable initialization expression of ReflectionView.reflectionPromptLabel();
  v8 = OBJC_IVAR____TtC9MomentsUI14ReflectionView_categoryLabel;
  *&v3[v8] = closure #1 in variable initialization expression of ReflectionView.categoryLabel();
  swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v10 = *MEMORY[0x277D76560];
    v11 = one-time initialization token for accessibilityString;
    v12 = v6;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = static ReflectionView.Constants.accessibilityString;
    v14 = OBJC_IVAR____TtC9MomentsUI9AssetView_fallbackImageView;
    v15 = objc_allocWithZone(MEMORY[0x277D755E8]);
    v16 = v12;
    *&v3[v14] = [v15 init];
    swift_unknownObjectWeakInit();
    v17 = OBJC_IVAR____TtC9MomentsUI9AssetView_suggestionID;
    v18 = type metadata accessor for UUID();
    (*(*(v18 - 8) + 56))(&v3[v17], 1, 1, v18);
    swift_beginAccess();
    swift_unknownObjectWeakAssign();
    v3[OBJC_IVAR____TtC9MomentsUI9AssetView_viewStyle] = v2;
    v36.receiver = v3;
    v36.super_class = type metadata accessor for AssetView(0);
    v19 = objc_msgSendSuper2(&v36, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v20 = *((*MEMORY[0x277D85000] & *v19) + 0xE8);
    v21 = v19;
    v20();
    AssetView.setFallBackView()();
    [v21 setIsAccessibilityElement_];
    v22 = [v21 accessibilityTraits];
    if ((v10 & ~v22) != 0)
    {
      v23 = v10;
    }

    else
    {
      v23 = 0;
    }

    [v21 setAccessibilityTraits_];
    v24 = MEMORY[0x21CE91FC0](v13, *(&v13 + 1));
    [v21 setAccessibilityLabel_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMd, &_ss23_ContiguousArrayStorageCy5UIKit17UITraitDefinition_pXpGMR);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_21658CA50;
    v26 = type metadata accessor for UITraitUserInterfaceStyle();
    v27 = MEMORY[0x277D74BF0];
    *(v25 + 32) = v26;
    *(v25 + 40) = v27;
    v28 = v21;
    MEMORY[0x21CE92C30](v25, sel_handleTraitChange);
    swift_unknownObjectRelease();

    [v28 handleTraitChange];
    [v28 setTranslatesAutoresizingMaskIntoConstraints_];

    [v28 setClipsToBounds_];
    v29 = *&v28[OBJC_IVAR____TtC9MomentsUI14ReflectionView_categoryLabel];
    v30 = v28;
    v31 = v29;
    v32 = [v31 text];
    if (v32)
    {
      v33 = v32;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v34 = String.uppercased()();

      v35 = MEMORY[0x21CE91FC0](v34._countAndFlagsBits, v34._object);
    }

    else
    {
      v35 = 0;
    }

    [v31 setText_];

    ReflectionView.setupShuffleButton()();
    ReflectionView.setupText()();
    ReflectionView.addConstraints()();

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ClientReflectionViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id ClientReflectionViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientReflectionViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*protocol witness for ReflectionViewModel.promptIndex.modify in conformance ClientReflectionViewModel(uint64_t *a1))(void *a1)
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
  *(v3 + 32) = (*((*MEMORY[0x277D85000] & *v1) + 0x240))();
  return protocol witness for CloudRecord.lastKnownCKRecord.modify in conformance CloudSyncAssetData;
}

id specialized ClientReflectionViewModel.init(dbObject:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v29[3] = a3;
  v29[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_lightBackgroundColor;
  *&a2[OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_lightBackgroundColor] = 0;
  v9 = OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_darkBackgroundColor;
  *&a2[OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_darkBackgroundColor] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v29, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd, &_s9MomentsUI8DBObject_pMR);
  type metadata accessor for DBReflectionModel(0);
  if (swift_dynamicCast())
  {
    *&a2[OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_prompts] = *(v27 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_prompts);
    *&a2[OBJC_IVAR____TtC9MomentsUI25ClientReflectionViewModel_promptIndex] = 0;
    v10 = (v27 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor);
    if (*(v27 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_lightBackgroundColor + 32))
    {
      v11 = objc_opt_self();

      v12 = [v11 whiteColor];
    }

    else
    {
      v14 = v10[2];
      v13 = v10[3];
      v16 = *v10;
      v15 = v10[1];
      v17 = objc_allocWithZone(MEMORY[0x277D75348]);

      v12 = [v17 initWithRed:v16 green:v15 blue:v14 alpha:v13];
    }

    v18 = v12;
    swift_beginAccess();
    v19 = *&a2[v8];
    *&a2[v8] = v18;

    if (*(v27 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor + 32))
    {
      v21 = [objc_opt_self() whiteColor];
    }

    else
    {
      v20 = (v27 + OBJC_IVAR____TtC9MomentsUI17DBReflectionModel_darkBackgroundColor);
      v21 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*v20 green:v20[1] blue:v20[2] alpha:v20[3]];
    }

    v22 = v21;
    swift_beginAccess();
    v23 = *&a2[v9];
    *&a2[v9] = v22;

    swift_weakAssign();
    v25 = specialized AssetViewModel.init(dbObject:)(v27, a2, v24);
    __swift_destroy_boxed_opaque_existential_1(v29);
    return v25;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id specialized ClientReflectionViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for ClientReflectionViewModel(0));
  (*(v7 + 16))(v9, a1, a3);
  return specialized ClientReflectionViewModel.init(dbObject:)(v9, v10, a3, a4);
}

uint64_t type metadata accessor for ClientReflectionViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for ClientReflectionViewModel;
  if (!type metadata singleton initialization cache for ClientReflectionViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ClientContactViewModel.name.getter()
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC9MomentsUI12DBAssetModel_baseTitle);

  return v1;
}

uint64_t ClientContactViewModel.profilePicture.getter()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 336))(result);

    return v1;
  }

  return result;
}

uint64_t ClientContactViewModel.contactIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI22ClientContactViewModel_contactIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double ClientContactViewModel.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MomentsUI22ClientContactViewModel_contactIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

id ClientContactViewModel.__allocating_init(dbObject:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = specialized ClientContactViewModel.__allocating_init(dbObject:)(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

id ClientContactViewModel.init(dbObject:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = specialized ClientContactViewModel.init(dbObject:)(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void ClientContactViewModel.__allocating_init(from:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientContactViewModel.init(from:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI22ClientContactViewModel_contactIdentifier);
  *v1 = 0;
  v1[1] = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientContactViewModel.__allocating_init(coder:)()
{
  v1 = objc_allocWithZone(v0);
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void ClientContactViewModel.init(coder:)()
{
  v1 = (v0 + OBJC_IVAR____TtC9MomentsUI22ClientContactViewModel_contactIdentifier);
  *v1 = 0;
  v1[1] = 0;
  swift_weakInit();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *ClientContactViewModel.view(style:)(char *a1)
{
  v3 = *a1;
  objc_allocWithZone(type metadata accessor for ContactView(0));
  return ContactView.init(viewModel:style:)(v1, &v3);
}

uint64_t ClientContactViewModel.__ivar_destroyer()
{

  return swift_weakDestroy();
}

id ClientContactViewModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientContactViewModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id specialized ClientContactViewModel.init(dbObject:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v30[3] = a3;
  v30[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v8 = (a2 + OBJC_IVAR____TtC9MomentsUI22ClientContactViewModel_contactIdentifier);
  *v8 = 0;
  v8[1] = 0;
  swift_weakInit();
  outlined init with copy of DBObject(v30, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI8DBObject_pMd, &_s9MomentsUI8DBObject_pMR);
  type metadata accessor for DBContactModel(0);
  if (swift_dynamicCast())
  {
    v9 = v28;
    v10 = *(v28 + OBJC_IVAR____TtC9MomentsUI14DBContactModel_contactIdentifier);
    v11 = *(v28 + OBJC_IVAR____TtC9MomentsUI14DBContactModel_contactIdentifier + 8);
    swift_beginAccess();
    *v8 = v10;
    v8[1] = v11;

    v13 = (*(*v28 + 408))(v12);
    if (v13)
    {
      v14 = v13;
      v15 = v13 & 0xFFFFFFFFFFFFFF8;
      if (v13 >> 62)
      {
        goto LABEL_25;
      }

      v16 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
      v26 = v9;
      v27 = a2;
      if (v16)
      {
        a2 = 0;
        v17 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x21CE93180](a2, v14);
            v9 = a2 + 1;
            if (__OFADD__(a2, 1))
            {
              goto LABEL_23;
            }
          }

          else
          {
            if (a2 >= *(v15 + 16))
            {
              goto LABEL_24;
            }

            v18 = *(v14 + 8 * a2 + 32);

            v9 = a2 + 1;
            if (__OFADD__(a2, 1))
            {
LABEL_23:
              __break(1u);
LABEL_24:
              __break(1u);
LABEL_25:
              v16 = __CocoaSet.count.getter();
              goto LABEL_5;
            }
          }

          v19 = objc_allocWithZone(type metadata accessor for ClientContactViewModel(0));
          v20 = specialized ClientContactViewModel.init(dbObject:)(v18, v19);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17[2] + 1, 1, v17);
          }

          v22 = v17[2];
          v21 = v17[3];
          if (v22 >= v21 >> 1)
          {
            v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v21 > 1), v22 + 1, 1, v17);
          }

          v17[2] = v22 + 1;
          v23 = &v17[2 * v22];
          v23[4] = v20;
          v23[5] = &protocol witness table for ClientContactViewModel;
          ++a2;
          if (v9 == v16)
          {
            goto LABEL_21;
          }
        }
      }

      v17 = MEMORY[0x277D84F90];
LABEL_21:

      a2 = v27;
      v9 = v26;
    }

    else
    {
      v17 = 0;
    }

    *(a2 + OBJC_IVAR____TtC9MomentsUI22ClientContactViewModel_contacts) = v17;
    swift_weakAssign();
    v24 = specialized AssetViewModel.init(clientDBObject:)(v9, a2);
    __swift_destroy_boxed_opaque_existential_1(v30);
    return v24;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id specialized ClientContactViewModel.__allocating_init(dbObject:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(type metadata accessor for ClientContactViewModel(0));
  (*(v7 + 16))(v9, a1, a3);
  return specialized ClientContactViewModel.init(dbObject:)(v9, v10, a3, a4);
}

uint64_t type metadata accessor for ClientContactViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for ClientContactViewModel;
  if (!type metadata singleton initialization cache for ClientContactViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t TipSuggestionViewModel.tip.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI22TipSuggestionViewModel_tip;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v1 + v3, a1, &_s6TipKit0A0_pSgMd, &_s6TipKit0A0_pSgMR);
}

uint64_t TipSuggestionViewModel.tip.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI22TipSuggestionViewModel_tip;
  swift_beginAccess();
  outlined assign with take of Tip?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of Tip?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6TipKit0A0_pSgMd, &_s6TipKit0A0_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TipSuggestionViewModel.__allocating_init(title:subtitle:startDate:endDate:suggestionID:assets:suggestionType:suggestionSubType:suggestionRanking:prompt:client:tip:)(uint64_t a1, char *a2, char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, unsigned __int8 *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v57 = a8;
  v66 = a7;
  v67 = a6;
  v68 = a5;
  v55 = a4;
  v54 = a3;
  v53 = a2;
  v51 = a1;
  v64 = a10;
  v65 = a13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Client(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v50 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v50 - v28;
  v30 = swift_allocObject();
  v60 = *a9;
  v61 = *v64;
  v31 = v30 + OBJC_IVAR____TtC9MomentsUI22TipSuggestionViewModel_tip;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0;
  v58 = a14;
  outlined init with copy of DBObject(a14, v70);
  swift_beginAccess();
  outlined assign with take of Tip?(v70, v31);
  swift_endAccess();
  outlined init with copy of DateInterval?(v68, v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of DateInterval?(v67, v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of DateInterval?(v66, v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v64 = v20;
  outlined init with copy of Client(v65, v20);
  UUID.init()();
  UUID.init()();
  v32 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID;
  (*(v15 + 56))(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID, 1, 1, v14);
  v33 = (v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_title);
  *v33 = 0;
  v33[1] = 0;
  v34 = (v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_subtitle);
  *v34 = 0;
  v34[1] = 0;
  v56 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking;
  *(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking) = 0;
  v52 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets;
  *(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets) = 0;
  v59 = v15;
  v35 = *(v15 + 16);
  v62 = v17;
  v63 = v14;
  v35(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_databaseID, v17, v14);
  swift_beginAccess();
  v36 = v53;
  *v33 = v51;
  v33[1] = v36;
  swift_beginAccess();
  v37 = v55;
  *v34 = v54;
  v34[1] = v37;
  outlined init with copy of DateInterval?(v29, v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v38 = v57;
  outlined init with copy of DateInterval?(v27, v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_beginAccess();
  outlined assign with copy of UUID?(v23, v30 + v32);
  swift_endAccess();
  if (v38)
  {
    v53 = v27;
    v39 = v59;
    v54 = v29;
    v40 = v58;
    v55 = v23;
    v41 = v65;
    v42 = v66;
    v43 = v67;
    v44 = v68;

    v69[0] = specialized Array._copyToContiguousArray()(v45);
    specialized MutableCollection<>.sort(by:)(v69);

    __swift_destroy_boxed_opaque_existential_1(v40);
    outlined destroy of Client(v41);
    outlined destroy of UTType?(v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of UTType?(v43, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v44, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v39 + 8))(v62, v63);
    outlined destroy of UTType?(v55, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of UTType?(v53, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v54, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v46 = v69[0];
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
    outlined destroy of Client(v65);
    outlined destroy of UTType?(v66, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of UTType?(v67, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v68, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v59 + 8))(v62, v63);
    outlined destroy of UTType?(v23, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of UTType?(v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v29, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v46 = 0;
  }

  v47 = v52;
  swift_beginAccess();
  *(v30 + v47) = v46;
  *(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) = v60;
  *(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType) = v61;
  v48 = v56;
  swift_beginAccess();
  *(v30 + v48) = a11;
  outlined init with take of Client(v64, v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_client);
  *(v30 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_prompt) = a12;
  return v30;
}

uint64_t TipSuggestionViewModel.init(title:subtitle:startDate:endDate:suggestionID:assets:suggestionType:suggestionSubType:suggestionRanking:prompt:client:tip:)(char *a1, char *a2, char *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, unsigned __int8 *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v56 = a8;
  v65 = a7;
  v66 = a6;
  v55 = a4;
  v54 = a3;
  v53 = a2;
  v52 = a1;
  v63 = a10;
  v64 = a13;
  v16 = type metadata accessor for UUID();
  v67 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Client(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v51 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v51 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v51 - v29;
  v60 = *a9;
  v61 = *v63;
  v31 = v14 + OBJC_IVAR____TtC9MomentsUI22TipSuggestionViewModel_tip;
  *v31 = 0u;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0;
  v58 = a14;
  outlined init with copy of DBObject(a14, v69);
  swift_beginAccess();
  outlined assign with take of Tip?(v69, v31);
  swift_endAccess();
  v59 = a5;
  outlined init with copy of DateInterval?(a5, v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of DateInterval?(v66, v28, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of DateInterval?(v65, v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v63 = v21;
  outlined init with copy of Client(v64, v21);
  UUID.init()();
  UUID.init()();
  v32 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID;
  v33 = v67;
  (*(v67 + 56))(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionID, 1, 1, v16);
  v34 = (v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_title);
  *v34 = 0;
  v34[1] = 0;
  v35 = (v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_subtitle);
  *v35 = 0;
  v35[1] = 0;
  v57 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking;
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionRanking) = 0;
  v51 = OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets;
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_assets) = 0;
  v36 = *(v33 + 16);
  v62 = v16;
  v36(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_databaseID, v18, v16);
  swift_beginAccess();
  v37 = v53;
  *v34 = v52;
  v34[1] = v37;
  swift_beginAccess();
  v38 = v55;
  *v35 = v54;
  v35[1] = v38;
  v39 = v56;
  outlined init with copy of DateInterval?(v30, v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined init with copy of DateInterval?(v28, v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_endDate, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_beginAccess();
  outlined assign with copy of UUID?(v24, v14 + v32);
  swift_endAccess();
  if (v39)
  {
    v52 = v28;
    v53 = v30;
    v40 = v58;
    v54 = v24;
    v41 = v64;
    v42 = v65;
    v55 = v18;
    v43 = v66;
    v44 = v59;

    v68[0] = specialized Array._copyToContiguousArray()(v45);
    specialized MutableCollection<>.sort(by:)(v68);

    __swift_destroy_boxed_opaque_existential_1(v40);
    outlined destroy of Client(v41);
    outlined destroy of UTType?(v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of UTType?(v43, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v44, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v67 + 8))(v55, v62);
    outlined destroy of UTType?(v54, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of UTType?(v52, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v53, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v46 = v68[0];
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v58);
    outlined destroy of Client(v64);
    outlined destroy of UTType?(v65, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of UTType?(v66, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v59, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    (*(v67 + 8))(v18, v62);
    outlined destroy of UTType?(v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of UTType?(v28, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    outlined destroy of UTType?(v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v46 = 0;
  }

  v47 = v51;
  swift_beginAccess();
  *(v14 + v47) = v46;

  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionType) = v60;
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType) = v61;
  v48 = v57;
  swift_beginAccess();
  v49 = *(v14 + v48);
  *(v14 + v48) = a11;

  outlined init with take of Client(v63, v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_client);
  *(v14 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_prompt) = a12;
  return v14;
}

uint64_t TipSuggestionViewModel.deinit()
{
  v0 = SuggestionViewModel.deinit();
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI22TipSuggestionViewModel_tip, &_s6TipKit0A0_pSgMd, &_s6TipKit0A0_pSgMR);
  return v0;
}

uint64_t TipSuggestionViewModel.__deallocating_deinit()
{
  v0 = SuggestionViewModel.deinit();
  outlined destroy of UTType?(v0 + OBJC_IVAR____TtC9MomentsUI22TipSuggestionViewModel_tip, &_s6TipKit0A0_pSgMd, &_s6TipKit0A0_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TipSuggestionViewModel(uint64_t a1)
{
  result = type metadata singleton initialization cache for TipSuggestionViewModel;
  if (!type metadata singleton initialization cache for TipSuggestionViewModel)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *MutablePhotoViewModel.build()()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v52 = &v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation12DateIntervalVSgMd, &_s10Foundation12DateIntervalVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v13 = type metadata accessor for DateInterval();
  v53 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_maximumSupportedViewport);
  if (!v16)
  {
    return 0;
  }

  v17 = *(v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_supportedStyles);
  if (!v17)
  {
    return 0;
  }

  v50 = v5;
  v51 = v17;
  v18 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseDateInterval;
  swift_beginAccess();
  outlined init with copy of DateInterval?(v0 + v18, v12);
  v19 = v53;
  if ((*(v53 + 48))(v12, 1, v13) == 1)
  {
    outlined destroy of DateInterval?(v12);
    return 0;
  }

  (*(v19 + 32))(v15, v12, v13);
  (*(v2 + 16))(v52, v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_uuid, v1);
  v21 = v0 + OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseTitle;
  swift_beginAccess();
  v22 = *(v21 + 8);
  v49 = *v21;
  (*(v19 + 16))(v10, v15, v13);
  (*(v19 + 56))(v10, 0, 1, v13);
  v23 = OBJC_IVAR____TtC9MomentsUI14AssetViewModel_baseImage;
  swift_beginAccess();
  v24 = *(v0 + v23);
  v25 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_squareCropRect;
  swift_beginAccess();
  v26 = *(v25 + 16);
  v55[0] = *v25;
  v55[1] = v26;
  v56 = *(v25 + 32);
  v27 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_landscapeCropRect;
  swift_beginAccess();
  v28 = *(v27 + 16);
  v57[0] = *v27;
  v57[1] = v28;
  v58 = *(v27 + 32);
  v29 = v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_portraitCropRect;
  swift_beginAccess();
  v30 = *(v29 + 16);
  v59[0] = *v29;
  v59[1] = v30;
  v60 = *(v29 + 32);
  v31 = (v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_cloudIdentifier);
  swift_beginAccess();
  v32 = v31[1];
  v47 = *v31;
  v33 = (v0 + OBJC_IVAR____TtC9MomentsUI28MutablePhotosFamilyViewModel_localIdentifier);
  swift_beginAccess();
  v34 = v33[1];
  v46 = *v33;
  v48 = v24;
  if (v24)
  {
    v43 = v34;

    v35 = v24;
    v36 = v16;

    v44 = v32;

    v37 = Image.uiImage.getter();
    v38 = v50;
    v45 = v35;
    if (v37)
    {

      v39 = 1;
    }

    else
    {
      v39 = 0;
    }

    v40 = v43;
    v32 = v44;
  }

  else
  {
    v40 = v34;

    v41 = v16;

    v45 = 0;
    v39 = 0;
    v38 = v50;
  }

  v54[0] = v39;
  UUID.init()();
  type metadata accessor for DBPhotoModel(0);
  swift_allocObject();
  v42 = specialized DBPhotoModel.init(id:assetID:maximumSupportedViewport:supportedStyles:baseTitle:baseDateInterval:baseImage:squareCropRect:landscapeCropRect:portraitCropRect:cloudIdentifier:localIdentifier:renderState:)(v38, v52, v16, v51, v49, v22, v10, v48, v55, v57, v59, v47, v32, v46, v40, v54);

  (*(v53 + 8))(v15, v13);
  return v42;
}

void one-time initialization function for localizedAppName()
{
  type metadata accessor for SuggestionCollectionViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v5._object = 0x800000021657D970;
  v2._object = 0x8000000216577C20;
  v5._countAndFlagsBits = 0xD000000000000025;
  v2._countAndFlagsBits = 0xD000000000000016;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, 0, v1, v3, v5);

  static SuggestionCollectionViewController.ProtectedContentConstants.localizedAppName = v4;
}

__int128 *SuggestionCollectionViewController.ProtectedContentConstants.localizedAppName.unsafeMutableAddressor()
{
  if (one-time initialization token for localizedAppName != -1)
  {
    swift_once();
  }

  return &static SuggestionCollectionViewController.ProtectedContentConstants.localizedAppName;
}

uint64_t static SuggestionCollectionViewController.ProtectedContentConstants.localizedAppName.getter()
{
  if (one-time initialization token for localizedAppName != -1)
  {
    swift_once();
  }

  v0 = static SuggestionCollectionViewController.ProtectedContentConstants.localizedAppName;

  return v0;
}

uint64_t SuggestionCollectionViewController.showProtectedContentBannerIfNeeded()()
{
  v1[10] = v0;
  v1[11] = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMR);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMR);
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR);
  v1[19] = v4;
  v1[20] = *(v4 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = type metadata accessor for MainActor();
  v1[23] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[24] = v6;
  v1[25] = v5;

  return MEMORY[0x2822009F8](SuggestionCollectionViewController.showProtectedContentBannerIfNeeded(), v6, v5);
}

{
  v1 = *v0;

  v2 = *(v1 + 200);
  v3 = *(v1 + 192);

  return MEMORY[0x2822009F8](SuggestionCollectionViewController.showProtectedContentBannerIfNeeded(), v3, v2);
}

{
  if (*(v0 + 272))
  {

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static CommonLogger.viewModel);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21607C000, v2, v3, "[showProtectedContentBannerIfNeeded] shield not needed", v4, 2u);
      MEMORY[0x21CE94770](v4, -1, -1);
    }

    goto LABEL_14;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = [objc_opt_self() bundleForClass_];
  v7 = MEMORY[0x21CE91FC0](0xD000000000000023, 0x800000021657D550);
  v8 = [objc_opt_self() imageNamed:v7 inBundle:v6];
  *(v0 + 224) = v8;

  if (!v8)
  {

LABEL_14:

    v22 = *(v0 + 8);

    return v22();
  }

  if (one-time initialization token for localizedAppName != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 80);
  v10 = static SuggestionCollectionViewController.ProtectedContentConstants.localizedAppName;
  v11 = objc_allocWithZone(MEMORY[0x277CEBEC8]);
  v12 = v8;
  v13 = MEMORY[0x21CE91FC0](v10, *(&v10 + 1));
  v14 = [v11 initWithLocalizedApplicationName:v13 iconImage:v12];
  *(v0 + 232) = v14;

  [v14 setDelegate_];
  v15 = v14;
  [v15 setHidden_];
  v16 = [v9 view];
  if (v16)
  {
    v19 = v16;
    [v16 addSubview_];

    UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

    v20 = MEMORY[0x21CE91FC0](0x6569566E6F63695FLL, 0xE900000000000077);
    v21 = [v15 valueForKey_];

    if (v21)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = 0u;
      v43 = 0u;
    }

    *(v0 + 16) = v42;
    *(v0 + 32) = v43;
    if (*(v0 + 40))
    {
      type metadata accessor for UIImageView();
      if (swift_dynamicCast())
      {
        v24 = *(v0 + 72);
        [v24 setTranslatesAutoresizingMaskIntoConstraints_];
        v25 = [v24 widthAnchor];
        v26 = [v25 constraintEqualToConstant_];

        [v26 setActive_];
        [v24 setTranslatesAutoresizingMaskIntoConstraints_];
        v27 = [v24 heightAnchor];
        v28 = [v27 constraintEqualToConstant_];

        [v28 setActive_];
      }
    }

    else
    {
      outlined destroy of Any?(v0 + 16);
    }

    v30 = *(v0 + 160);
    v29 = *(v0 + 168);
    v31 = *(v0 + 152);
    v32 = *(v0 + 80);
    v33 = [objc_opt_self() systemBackgroundColor];
    [v15 setBackgroundColor_];

    v34 = [v15 layer];
    [v34 setZPosition_];

    v35 = (*MEMORY[0x277D85000] & *v32) + 464;
    v36 = *((*MEMORY[0x277D85000] & *v32) + 0x1D0);
    *(v0 + 240) = v36;
    *(v0 + 248) = v35 & 0xFFFFFFFFFFFFLL | 0x27F8000000000000;
    v37 = v36();
    v38 = swift_allocObject();
    swift_unknownObjectWeakInit();
    swift_beginAccess();

    specialized static ProtectedAppsManager.requestAccess(appSources:completion:)(v39, partial apply for closure #1 in ProtectedAppsManager.authenticate(), v38);

    v40 = v36();
    (*((*MEMORY[0x277D85000] & *v40) + 0xD0))();

    v41 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type Published<Bool>.Publisher and conformance Published<A>.Publisher, &_s7Combine9PublishedV9PublisherVySb_GMd, &_s7Combine9PublishedV9PublisherVySb_GMR, MEMORY[0x277CBCEC8]);
    MEMORY[0x21CE912F0](v31, v41);
    (*(v30 + 8))(v29, v31);
    v16 = SuggestionCollectionViewController.showProtectedContentBannerIfNeeded();
    v17 = 0;
    v18 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v16, v17, v18);
}

{
  (*(v0[16] + 16))(v0[17], v0[18], v0[15]);
  lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher> and conformance AsyncPublisher<A>, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMd, &_s7Combine14AsyncPublisherVyAA9PublishedV0C0VySb_GGMR, MEMORY[0x277CBCDE0]);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();
  v1 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMR, MEMORY[0x277CBCDD0]);
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = SuggestionCollectionViewController.showProtectedContentBannerIfNeeded();
  v3 = v0[12];

  return MEMORY[0x282200308](v0 + 273, v3, v1);
}

{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[13];
    v3 = v2[14];
    v5 = v2[12];

    (*(v4 + 8))(v3, v5);
    v6 = destructiveProjectEnumData for SuggestionRanking.VisibilityCategory;
  }

  else
  {
    v6 = SuggestionCollectionViewController.showProtectedContentBannerIfNeeded();
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

{

  return MEMORY[0x2822009F8](SuggestionCollectionViewController.showProtectedContentBannerIfNeeded(), 0, 0);
}

{
  if (*(v0 + 274))
  {
    v1 = *(v0 + 144);
    v2 = *(v0 + 120);
    v3 = *(v0 + 128);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    (*(v3 + 8))(v1, v2);
    v4 = *(v0 + 192);
    v5 = *(v0 + 200);

    return MEMORY[0x2822009F8](SuggestionCollectionViewController.showProtectedContentBannerIfNeeded(), v4, v5);
  }

  else
  {
    v6 = lazy protocol witness table accessor for type Published<DBManager?>.Publisher and conformance Published<A>.Publisher(&lazy protocol witness table cache variable for type AsyncPublisher<Published<Bool>.Publisher>.Iterator and conformance AsyncPublisher<A>.Iterator, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMd, &_s7Combine14AsyncPublisherV8IteratorVyAA9PublishedV0C0VySb_G_GMR, MEMORY[0x277CBCDD0]);
    v7 = swift_task_alloc();
    *(v0 + 256) = v7;
    *v7 = v0;
    v7[1] = SuggestionCollectionViewController.showProtectedContentBannerIfNeeded();
    v8 = *(v0 + 96);

    return MEMORY[0x282200308](v0 + 273, v8, v6);
  }
}

{
  v13 = v0;
  v1 = v0[30];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[10];

  v5 = v1([v2 removeFromSuperview]);
  v12[3] = type metadata accessor for SuggestionCollectionViewController(0);
  v12[4] = &protocol witness table for SuggestionCollectionViewController;
  v12[0] = v4;
  v6 = *((*MEMORY[0x277D85000] & *v5) + 0x78);
  v4;
  v6(v12);

  v8 = v1(v7);

  ProtectedAppsManager.subscribeToChanges(apps:)(v9);

  v10 = v0[1];

  return v10();
}

uint64_t SuggestionCollectionViewController.showProtectedContentBannerIfNeeded()(uint64_t a1)
{
  v2 = static MainActor.shared.getter();
  *(v1 + 208) = v2;
  v3 = swift_task_alloc();
  *(v1 + 216) = v3;
  *v3 = v1;
  v3[1] = SuggestionCollectionViewController.showProtectedContentBannerIfNeeded();
  v4 = MEMORY[0x277D85700];

  return MEMORY[0x2822007B8](v1 + 272, v2, v4, 0xD000000000000024, 0x800000021657D940, closure #1 in SuggestionCollectionViewController.showProtectedContentBannerIfNeeded(), 0, &type metadata for ProtectedAppChallengeResult);
}

{
  v2 = *(v1 + 273);
  *(v1 + 274) = v2;
  if (v2 == 2)
  {
    v3 = *(v1 + 144);
    v4 = *(v1 + 120);
    v5 = *(v1 + 128);
    (*(*(v1 + 104) + 8))(*(v1 + 112), *(v1 + 96));
    (*(v5 + 8))(v3, v4);
    v6 = *(v1 + 192);
    v7 = *(v1 + 200);
    v8 = SuggestionCollectionViewController.showProtectedContentBannerIfNeeded();
  }

  else
  {
    *(v1 + 264) = static MainActor.shared.getter();
    v9 = dispatch thunk of Actor.unownedExecutor.getter();
    v11 = v10;
    v8 = SuggestionCollectionViewController.showProtectedContentBannerIfNeeded();
    v6 = v9;
    v7 = v11;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

double closure #1 in SuggestionCollectionViewController.showProtectedContentBannerIfNeeded()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI27ProtectedAppChallengeResultOs5NeverOGMd, &_sScCy9MomentsUI27ProtectedAppChallengeResultOs5NeverOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - v4;
  (*(v3 + 16))(&v10 - v4, a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v5, v2);
  swift_beginAccess();

  specialized static ProtectedAppsManager.requiresChallenge(appSources:completion:)(v8, partial apply for closure #1 in closure #1 in SuggestionCollectionViewController.showProtectedContentBannerIfNeeded(), v7);

  return result;
}

double SuggestionCollectionViewController.shieldViewUnlockButtonPressed(_:)()
{
  v1 = (*((*MEMORY[0x277D85000] & *v0) + 0x1D0))();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_beginAccess();

  specialized static ProtectedAppsManager.requestAccess(appSources:completion:)(v3, closure #1 in ProtectedAppsManager.authenticate()partial apply, v2);

  return result;
}

unint64_t type metadata accessor for UIImageView()
{
  result = lazy cache variable for type metadata for UIImageView;
  if (!lazy cache variable for type metadata for UIImageView)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UIImageView);
  }

  return result;
}

uint64_t partial apply for closure #1 in closure #1 in SuggestionCollectionViewController.showProtectedContentBannerIfNeeded()(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI27ProtectedAppChallengeResultOs5NeverOGMd, &_sScCy9MomentsUI27ProtectedAppChallengeResultOs5NeverOGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy9MomentsUI27ProtectedAppChallengeResultOs5NeverOGMd, &_sScCy9MomentsUI27ProtectedAppChallengeResultOs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t Suggestion.urlsForTransfer()()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v2 = type metadata accessor for URL();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](Suggestion.urlsForTransfer(), 0, 0);
}

{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC9MomentsUI10Suggestion_assets);
  *(v0 + 136) = v1;
  if (!v1)
  {
    v3 = 0;
LABEL_35:

    v24 = *(v0 + 8);

    return v24(v3);
  }

  if (v1 >> 62)
  {
    goto LABEL_48;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
  *(v0 + 144) = result;
  v3 = MEMORY[0x277D84F90];
  if (!result)
  {
    goto LABEL_35;
  }

  if (result >= 1)
  {
    v4 = 0;
    v5 = MEMORY[0x277D85000];
    while (1)
    {
      *(v0 + 152) = v4;
      *(v0 + 160) = v3;
      v8 = *(v0 + 136);
      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x21CE93180]();
      }

      else
      {
        v9 = *(v8 + 8 * v4 + 32);
      }

      v7 = v9;
      *(v0 + 168) = v9;
      v10 = *&v9[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
      if (!v10)
      {
        goto LABEL_9;
      }

      if (v10 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_9;
        }
      }

      else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_9;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x21CE93180](0, v10);
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_48:
          result = __CocoaSet.count.getter();
          goto LABEL_4;
        }

        v11 = *(v10 + 32);
      }

      v12 = v11;
      *(v0 + 176) = v11;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        type metadata accessor for TransferPhotoViewModel(0);
        v14 = swift_dynamicCastClass();
        if (v14)
        {
          v6 = (*((*v5 & *v14) + 0x298))();
          *(v0 + 184) = v6;
          if (v6)
          {
            v25 = *((*v5 & *v6) + 0x90);
            v35 = (v25 + *v25);
            v26 = swift_task_alloc();
            *(v0 + 192) = v26;
            *v26 = v0;
            v26[1] = Suggestion.urlsForTransfer();
            v30 = *(v0 + 48);
LABEL_39:
            v27 = v35;

            return v27(v30);
          }
        }

        else
        {
          type metadata accessor for TransferVideoViewModel(0);
          v15 = swift_dynamicCastClass();
          if (v15)
          {
            v16 = (*((*v5 & *v15) + 0x298))();
            *(v0 + 200) = v16;
            if (v16)
            {
              v28 = *((*v5 & *v16) + 0xA8);
              v36 = (v28 + *v28);
              v29 = swift_task_alloc();
              *(v0 + 208) = v29;
              *v29 = v0;
              v29[1] = Suggestion.urlsForTransfer();
              v30 = *(v0 + 40);
LABEL_43:
              v27 = v36;

              return v27(v30);
            }
          }

          else
          {
            type metadata accessor for TransferLivePhotoViewModel(0);
            v17 = swift_dynamicCastClass();
            *(v0 + 216) = v17;
            if (v17)
            {
              v18 = *((*v5 & *v17) + 0x2A0);
              v19 = v12;
              v20 = v18();
              *(v0 + 224) = v20;

              if (v20)
              {
                v31 = *((*v5 & *v20) + 0xA8);
                v36 = (v31 + *v31);
                v32 = swift_task_alloc();
                *(v0 + 232) = v32;
                *v32 = v0;
                v32[1] = Suggestion.urlsForTransfer();
                v30 = *(v0 + 32);
                goto LABEL_43;
              }

              *(v0 + 240) = v3;
              v21 = *((*v5 & **(v0 + 216)) + 0x2B8);
              v22 = *(v0 + 176);
              v23 = v21();
              *(v0 + 248) = v23;

              if (v23)
              {
                v33 = *((*v5 & *v23) + 0x90);
                v35 = (v33 + *v33);
                v34 = swift_task_alloc();
                *(v0 + 256) = v34;
                *v34 = v0;
                v34[1] = Suggestion.urlsForTransfer();
                v30 = *(v0 + 24);
                goto LABEL_39;
              }

              v7 = *(v0 + 168);
              v12 = *(v0 + 176);
            }
          }
        }
      }

      v7 = v12;
LABEL_9:

      v4 = *(v0 + 152) + 1;
      if (v4 == *(v0 + 144))
      {
        goto LABEL_35;
      }
    }
  }

  __break(1u);
  return result;
}

{

  return MEMORY[0x2822009F8](Suggestion.urlsForTransfer(), 0, 0);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v50 = *(v2 + 32);
    v50(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_4;
  }

  v5 = *(v0 + 176);
  v4 = *(v0 + 184);

  outlined destroy of URL?(v3);
  v6 = *(v0 + 160);
LABEL_7:
  v18 = *(v0 + 152) + 1;
  if (v18 != *(v0 + 144))
  {
    v21 = MEMORY[0x277D85000];
    do
    {
      *(v0 + 152) = v18;
      *(v0 + 160) = v6;
      v24 = *(v0 + 136);
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x21CE93180]();
      }

      else
      {
        v25 = *(v24 + 8 * v18 + 32);
      }

      v23 = v25;
      *(v0 + 168) = v25;
      v26 = *&v25[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
      if (!v26)
      {
        goto LABEL_14;
      }

      if (v26 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_14;
        }
      }

      else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x21CE93180](0, v26);
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
LABEL_4:
          v11 = v6[2];
          v10 = v6[3];
          if (v11 >= v10 >> 1)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v6);
          }

          v12 = *(v0 + 184);
          v13 = *(v0 + 168);
          v15 = *(v0 + 120);
          v14 = *(v0 + 128);
          v17 = *(v0 + 56);
          v16 = *(v0 + 64);

          (*(v16 + 8))(v14, v17);
          v6[2] = v11 + 1;
          v50(v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v11, v15, v17);
          goto LABEL_7;
        }

        v27 = *(v26 + 32);
      }

      v28 = v27;
      *(v0 + 176) = v27;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v29 = v28 == 0;
      }

      else
      {
        v29 = 1;
      }

      if (!v29)
      {
        type metadata accessor for TransferPhotoViewModel(0);
        v30 = swift_dynamicCastClass();
        if (v30)
        {
          v22 = (*((*v21 & *v30) + 0x298))();
          *(v0 + 184) = v22;
          if (v22)
          {
            v40 = *((*v21 & *v22) + 0x90);
            v51 = (v40 + *v40);
            v41 = swift_task_alloc();
            *(v0 + 192) = v41;
            *v41 = v0;
            v41[1] = Suggestion.urlsForTransfer();
            v45 = *(v0 + 48);
LABEL_40:
            v42 = v51;

            return v42(v45);
          }
        }

        else
        {
          type metadata accessor for TransferVideoViewModel(0);
          v31 = swift_dynamicCastClass();
          if (v31)
          {
            v32 = (*((*v21 & *v31) + 0x298))();
            *(v0 + 200) = v32;
            if (v32)
            {
              v43 = *((*v21 & *v32) + 0xA8);
              v52 = (v43 + *v43);
              v44 = swift_task_alloc();
              *(v0 + 208) = v44;
              *v44 = v0;
              v44[1] = Suggestion.urlsForTransfer();
              v45 = *(v0 + 40);
LABEL_44:
              v42 = v52;

              return v42(v45);
            }
          }

          else
          {
            type metadata accessor for TransferLivePhotoViewModel(0);
            v33 = swift_dynamicCastClass();
            *(v0 + 216) = v33;
            if (v33)
            {
              v34 = *((*v21 & *v33) + 0x2A0);
              v35 = v28;
              v36 = v34();
              *(v0 + 224) = v36;

              if (v36)
              {
                v46 = *((*v21 & *v36) + 0xA8);
                v52 = (v46 + *v46);
                v47 = swift_task_alloc();
                *(v0 + 232) = v47;
                *v47 = v0;
                v47[1] = Suggestion.urlsForTransfer();
                v45 = *(v0 + 32);
                goto LABEL_44;
              }

              *(v0 + 240) = v6;
              v37 = *((*v21 & **(v0 + 216)) + 0x2B8);
              v38 = *(v0 + 176);
              v39 = v37();
              *(v0 + 248) = v39;

              if (v39)
              {
                v48 = *((*v21 & *v39) + 0x90);
                v51 = (v48 + *v48);
                v49 = swift_task_alloc();
                *(v0 + 256) = v49;
                *v49 = v0;
                v49[1] = Suggestion.urlsForTransfer();
                v45 = *(v0 + 24);
                goto LABEL_40;
              }

              v23 = *(v0 + 168);
              v28 = *(v0 + 176);
            }
          }
        }
      }

      v23 = v28;
LABEL_14:

      v18 = *(v0 + 152) + 1;
    }

    while (v18 != *(v0 + 144));
  }

  v19 = *(v0 + 8);

  return v19(v6);
}

{

  return MEMORY[0x2822009F8](Suggestion.urlsForTransfer(), 0, 0);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 40);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v8 = *(v0 + 104);
    v7 = *(v0 + 112);
    v50 = *(v2 + 32);
    v50(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_4;
  }

  v4 = *(v0 + 200);
  v5 = *(v0 + 176);

  outlined destroy of URL?(v3);
  v6 = *(v0 + 160);
LABEL_7:
  v18 = *(v0 + 152) + 1;
  if (v18 != *(v0 + 144))
  {
    v21 = MEMORY[0x277D85000];
    do
    {
      *(v0 + 152) = v18;
      *(v0 + 160) = v6;
      v24 = *(v0 + 136);
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x21CE93180]();
      }

      else
      {
        v25 = *(v24 + 8 * v18 + 32);
      }

      v23 = v25;
      *(v0 + 168) = v25;
      v26 = *&v25[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
      if (!v26)
      {
        goto LABEL_14;
      }

      if (v26 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_14;
        }
      }

      else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x21CE93180](0, v26);
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
LABEL_4:
          v11 = v6[2];
          v10 = v6[3];
          if (v11 >= v10 >> 1)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v6);
          }

          v12 = *(v0 + 200);
          v13 = *(v0 + 168);
          v15 = *(v0 + 104);
          v14 = *(v0 + 112);
          v17 = *(v0 + 56);
          v16 = *(v0 + 64);

          (*(v16 + 8))(v14, v17);
          v6[2] = v11 + 1;
          v50(v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v11, v15, v17);
          goto LABEL_7;
        }

        v27 = *(v26 + 32);
      }

      v28 = v27;
      *(v0 + 176) = v27;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v29 = v28 == 0;
      }

      else
      {
        v29 = 1;
      }

      if (!v29)
      {
        type metadata accessor for TransferPhotoViewModel(0);
        v30 = swift_dynamicCastClass();
        if (v30)
        {
          v22 = (*((*v21 & *v30) + 0x298))();
          *(v0 + 184) = v22;
          if (v22)
          {
            v40 = *((*v21 & *v22) + 0x90);
            v51 = (v40 + *v40);
            v41 = swift_task_alloc();
            *(v0 + 192) = v41;
            *v41 = v0;
            v41[1] = Suggestion.urlsForTransfer();
            v45 = *(v0 + 48);
LABEL_40:
            v42 = v51;

            return v42(v45);
          }
        }

        else
        {
          type metadata accessor for TransferVideoViewModel(0);
          v31 = swift_dynamicCastClass();
          if (v31)
          {
            v32 = (*((*v21 & *v31) + 0x298))();
            *(v0 + 200) = v32;
            if (v32)
            {
              v43 = *((*v21 & *v32) + 0xA8);
              v52 = (v43 + *v43);
              v44 = swift_task_alloc();
              *(v0 + 208) = v44;
              *v44 = v0;
              v44[1] = Suggestion.urlsForTransfer();
              v45 = *(v0 + 40);
LABEL_44:
              v42 = v52;

              return v42(v45);
            }
          }

          else
          {
            type metadata accessor for TransferLivePhotoViewModel(0);
            v33 = swift_dynamicCastClass();
            *(v0 + 216) = v33;
            if (v33)
            {
              v34 = *((*v21 & *v33) + 0x2A0);
              v35 = v28;
              v36 = v34();
              *(v0 + 224) = v36;

              if (v36)
              {
                v46 = *((*v21 & *v36) + 0xA8);
                v52 = (v46 + *v46);
                v47 = swift_task_alloc();
                *(v0 + 232) = v47;
                *v47 = v0;
                v47[1] = Suggestion.urlsForTransfer();
                v45 = *(v0 + 32);
                goto LABEL_44;
              }

              *(v0 + 240) = v6;
              v37 = *((*v21 & **(v0 + 216)) + 0x2B8);
              v38 = *(v0 + 176);
              v39 = v37();
              *(v0 + 248) = v39;

              if (v39)
              {
                v48 = *((*v21 & *v39) + 0x90);
                v51 = (v48 + *v48);
                v49 = swift_task_alloc();
                *(v0 + 256) = v49;
                *v49 = v0;
                v49[1] = Suggestion.urlsForTransfer();
                v45 = *(v0 + 24);
                goto LABEL_40;
              }

              v23 = *(v0 + 168);
              v28 = *(v0 + 176);
            }
          }
        }
      }

      v23 = v28;
LABEL_14:

      v18 = *(v0 + 152) + 1;
    }

    while (v18 != *(v0 + 144));
  }

  v19 = *(v0 + 8);

  return v19(v6);
}

{

  return MEMORY[0x2822009F8](Suggestion.urlsForTransfer(), 0, 0);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 32);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    outlined destroy of URL?(v3);
    v4 = *(v0 + 160);
  }

  else
  {
    v6 = *(v0 + 88);
    v5 = *(v0 + 96);
    v7 = *(v2 + 32);
    v7(v5, v3, v1);
    (*(v2 + 16))(v6, v5, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_50:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
    }

    v10 = v4[2];
    v9 = v4[3];
    if (v10 >= v9 >> 1)
    {
      v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v9 > 1), v10 + 1, 1, v4);
    }

    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    v13 = *(v0 + 56);
    v14 = *(v0 + 64);

    (*(v14 + 8))(v11, v13);
    v4[2] = v10 + 1;
    v7(v4 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v10, v12, v13);
  }

  v15 = MEMORY[0x277D85000];
LABEL_8:
  *(v0 + 240) = v4;
  v16 = *(v0 + 216);
  v17 = *((*v15 & *v16) + 0x2B8);
  v7 = ((*v15 & *v16) + 696);
  v18 = *(v0 + 176);
  v19 = v17();
  *(v0 + 248) = v19;

  if (!v19)
  {
    v20 = *(v0 + 176);

    while (1)
    {
      v22 = *(v0 + 152) + 1;
      if (v22 == *(v0 + 144))
      {

        v39 = *(v0 + 8);

        return v39(v4);
      }

      *(v0 + 152) = v22;
      *(v0 + 160) = v4;
      v23 = *(v0 + 136);
      v24 = (v23 & 0xC000000000000001) != 0 ? MEMORY[0x21CE93180]() : *(v23 + 8 * v22 + 32);
      v25 = v24;
      *(v0 + 168) = v24;
      v26 = *&v24[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
      if (!v26)
      {
        break;
      }

      if (v26 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          break;
        }
      }

      else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x21CE93180](0, v26);
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_50;
        }

        v27 = *(v26 + 32);
      }

      v21 = v27;
      *(v0 + 176) = v27;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v28 = v21 == 0;
      }

      else
      {
        v28 = 1;
      }

      if (!v28)
      {
        type metadata accessor for TransferPhotoViewModel(0);
        v29 = swift_dynamicCastClass();
        if (v29)
        {
          v30 = (*((*v15 & *v29) + 0x298))();
          *(v0 + 184) = v30;
          if (v30)
          {
            v41 = *((*v15 & *v30) + 0x90);
            v49 = (v41 + *v41);
            v42 = swift_task_alloc();
            *(v0 + 192) = v42;
            *v42 = v0;
            v42[1] = Suggestion.urlsForTransfer();
            v43 = *(v0 + 48);
            goto LABEL_46;
          }
        }

        else
        {
          type metadata accessor for TransferVideoViewModel(0);
          v31 = swift_dynamicCastClass();
          if (v31)
          {
            v32 = (*((*v15 & *v31) + 0x298))();
            *(v0 + 200) = v32;
            if (v32)
            {
              v44 = *((*v15 & *v32) + 0xA8);
              v50 = (v44 + *v44);
              v45 = swift_task_alloc();
              *(v0 + 208) = v45;
              *v45 = v0;
              v45[1] = Suggestion.urlsForTransfer();
              v43 = *(v0 + 40);
LABEL_42:
              v46 = v50;

              return v46(v43);
            }
          }

          else
          {
            type metadata accessor for TransferLivePhotoViewModel(0);
            v33 = swift_dynamicCastClass();
            *(v0 + 216) = v33;
            if (v33)
            {
              v34 = *((*v15 & *v33) + 0x2A0);
              v35 = v21;
              v36 = v34();
              *(v0 + 224) = v36;

              if (!v36)
              {
                goto LABEL_8;
              }

              v37 = *((*v15 & *v36) + 0xA8);
              v50 = (v37 + *v37);
              v38 = swift_task_alloc();
              *(v0 + 232) = v38;
              *v38 = v0;
              v38[1] = Suggestion.urlsForTransfer();
              v43 = *(v0 + 32);
              goto LABEL_42;
            }
          }
        }
      }

LABEL_11:
    }

    v21 = v25;
    goto LABEL_11;
  }

  v47 = *((*v15 & *v19) + 0x90);
  v49 = (v47 + *v47);
  v48 = swift_task_alloc();
  *(v0 + 256) = v48;
  *v48 = v0;
  v48[1] = Suggestion.urlsForTransfer();
  v43 = *(v0 + 24);
LABEL_46:
  v46 = v49;

  return v46(v43);
}

{

  return MEMORY[0x2822009F8](Suggestion.urlsForTransfer(), 0, 0);
}

{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 24);
  if ((*(v2 + 48))(v3, 1, v1) != 1)
  {
    v8 = *(v0 + 72);
    v7 = *(v0 + 80);
    v50 = *(v2 + 32);
    v50(v7, v3, v1);
    (*(v2 + 16))(v8, v7, v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 240);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_4;
  }

  v4 = *(v0 + 248);
  v5 = *(v0 + 176);

  outlined destroy of URL?(v3);
  v6 = *(v0 + 240);
LABEL_7:
  v18 = *(v0 + 152) + 1;
  if (v18 != *(v0 + 144))
  {
    v21 = MEMORY[0x277D85000];
    do
    {
      *(v0 + 152) = v18;
      *(v0 + 160) = v6;
      v24 = *(v0 + 136);
      if ((v24 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x21CE93180]();
      }

      else
      {
        v25 = *(v24 + 8 * v18 + 32);
      }

      v23 = v25;
      *(v0 + 168) = v25;
      v26 = *&v25[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
      if (!v26)
      {
        goto LABEL_14;
      }

      if (v26 >> 62)
      {
        if (!__CocoaSet.count.getter())
        {
          goto LABEL_14;
        }
      }

      else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      if ((v26 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x21CE93180](0, v26);
      }

      else
      {
        if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_49:
          v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v6[2] + 1, 1, v6);
LABEL_4:
          v11 = v6[2];
          v10 = v6[3];
          if (v11 >= v10 >> 1)
          {
            v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v6);
          }

          v12 = *(v0 + 248);
          v13 = *(v0 + 168);
          v15 = *(v0 + 72);
          v14 = *(v0 + 80);
          v17 = *(v0 + 56);
          v16 = *(v0 + 64);

          (*(v16 + 8))(v14, v17);
          v6[2] = v11 + 1;
          v50(v6 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v11, v15, v17);
          goto LABEL_7;
        }

        v27 = *(v26 + 32);
      }

      v28 = v27;
      *(v0 + 176) = v27;
      swift_getObjectType();
      if (swift_conformsToProtocol2())
      {
        v29 = v28 == 0;
      }

      else
      {
        v29 = 1;
      }

      if (!v29)
      {
        type metadata accessor for TransferPhotoViewModel(0);
        v30 = swift_dynamicCastClass();
        if (v30)
        {
          v22 = (*((*v21 & *v30) + 0x298))();
          *(v0 + 184) = v22;
          if (v22)
          {
            v40 = *((*v21 & *v22) + 0x90);
            v51 = (v40 + *v40);
            v41 = swift_task_alloc();
            *(v0 + 192) = v41;
            *v41 = v0;
            v41[1] = Suggestion.urlsForTransfer();
            v45 = *(v0 + 48);
LABEL_40:
            v42 = v51;

            return v42(v45);
          }
        }

        else
        {
          type metadata accessor for TransferVideoViewModel(0);
          v31 = swift_dynamicCastClass();
          if (v31)
          {
            v32 = (*((*v21 & *v31) + 0x298))();
            *(v0 + 200) = v32;
            if (v32)
            {
              v43 = *((*v21 & *v32) + 0xA8);
              v52 = (v43 + *v43);
              v44 = swift_task_alloc();
              *(v0 + 208) = v44;
              *v44 = v0;
              v44[1] = Suggestion.urlsForTransfer();
              v45 = *(v0 + 40);
LABEL_44:
              v42 = v52;

              return v42(v45);
            }
          }

          else
          {
            type metadata accessor for TransferLivePhotoViewModel(0);
            v33 = swift_dynamicCastClass();
            *(v0 + 216) = v33;
            if (v33)
            {
              v34 = *((*v21 & *v33) + 0x2A0);
              v35 = v28;
              v36 = v34();
              *(v0 + 224) = v36;

              if (v36)
              {
                v46 = *((*v21 & *v36) + 0xA8);
                v52 = (v46 + *v46);
                v47 = swift_task_alloc();
                *(v0 + 232) = v47;
                *v47 = v0;
                v47[1] = Suggestion.urlsForTransfer();
                v45 = *(v0 + 32);
                goto LABEL_44;
              }

              *(v0 + 240) = v6;
              v37 = *((*v21 & **(v0 + 216)) + 0x2B8);
              v38 = *(v0 + 176);
              v39 = v37();
              *(v0 + 248) = v39;

              if (v39)
              {
                v48 = *((*v21 & *v39) + 0x90);
                v51 = (v48 + *v48);
                v49 = swift_task_alloc();
                *(v0 + 256) = v49;
                *v49 = v0;
                v49[1] = Suggestion.urlsForTransfer();
                v45 = *(v0 + 24);
                goto LABEL_40;
              }

              v23 = *(v0 + 168);
              v28 = *(v0 + 176);
            }
          }
        }
      }

      v23 = v28;
LABEL_14:

      v18 = *(v0 + 152) + 1;
    }

    while (v18 != *(v0 + 144));
  }

  v19 = *(v0 + 8);

  return v19(v6);
}

Swift::OpaquePointer_optional __swiftcall Suggestion.urlBasedAssetsForTransfer()()
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI10Suggestion_assets);
  if (v2)
  {
    if (v2 >> 62)
    {
      goto LABEL_52;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      do
      {
        if (v3 < 1)
        {
          __break(1u);
          goto LABEL_56;
        }

        v4 = 0;
        v5 = MEMORY[0x277D84F90];
        while (1)
        {
          if ((v2 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x21CE93180](v4, v2);
          }

          else
          {
            v7 = *(v2 + 8 * v4 + 32);
          }

          v8 = v7;
          v9 = *&v7[OBJC_IVAR____TtC9MomentsUI5Asset_representations];
          if (!v9)
          {
            goto LABEL_7;
          }

          if (v9 >> 62)
          {
            if (!__CocoaSet.count.getter())
            {
              goto LABEL_7;
            }
          }

          else if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_7;
          }

          if ((v9 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x21CE93180](0, v9);
            goto LABEL_18;
          }

          if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            break;
          }

          v10 = *(v9 + 32);
LABEL_18:
          v11 = v10;
          swift_getObjectType();
          if (swift_conformsToProtocol2())
          {
            v12 = v11 == 0;
          }

          else
          {
            v12 = 1;
          }

          if (!v12)
          {
            type metadata accessor for TransferPhotoViewModel(0);
            v13 = swift_dynamicCastClass();
            if (v13)
            {
              v14 = (*((*MEMORY[0x277D85000] & *v13) + 0x298))();
              if (v14)
              {
                v15 = v14;
                goto LABEL_25;
              }
            }

            else
            {
              type metadata accessor for TransferVideoViewModel(0);
              v21 = swift_dynamicCastClass();
              if (v21)
              {
                v22 = (*((*MEMORY[0x277D85000] & *v21) + 0x298))();
                if (v22)
                {
                  v15 = v22;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
                  }

                  v17 = v5[2];
                  v23 = v5[3];
                  v18 = v17 + 1;
                  if (v17 >= v23 >> 1)
                  {
                    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v17 + 1, 1, v5);
                  }

                  v19 = type metadata accessor for URLBasedVideo(0);
                  v20 = &protocol witness table for URLBasedVideo;
                  goto LABEL_37;
                }
              }

              else
              {
                type metadata accessor for TransferLivePhotoViewModel(0);
                v24 = swift_dynamicCastClass();
                if (v24)
                {
                  v25 = v24;
                  v26 = *((*MEMORY[0x277D85000] & *v24) + 0x2A0);
                  v27 = v11;
                  v28 = v26();

                  if (v28)
                  {
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
                    }

                    v30 = v5[2];
                    v29 = v5[3];
                    if (v30 >= v29 >> 1)
                    {
                      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v5);
                    }

                    v33 = type metadata accessor for URLBasedVideo(0);
                    v34 = &protocol witness table for URLBasedVideo;
                    *&v32 = v28;
                    v5[2] = v30 + 1;
                    outlined init with take of MusicPlaybackCoordinatorDelegate(&v32, &v5[5 * v30 + 4]);
                  }

                  v31 = *((*MEMORY[0x277D85000] & *v25) + 0x2B8);
                  v11 = v27;
                  v15 = v31();

                  if (!v15)
                  {

                    goto LABEL_8;
                  }

LABEL_25:
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
                  }

                  v17 = v5[2];
                  v16 = v5[3];
                  v18 = v17 + 1;
                  if (v17 >= v16 >> 1)
                  {
                    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v5);
                  }

                  v19 = type metadata accessor for URLBasedImage(0);
                  v20 = &protocol witness table for URLBasedImage;
LABEL_37:
                  v33 = v19;
                  v34 = v20;
                  *&v32 = v15;
                  v5[2] = v18;
                  outlined init with take of MusicPlaybackCoordinatorDelegate(&v32, &v5[5 * v17 + 4]);
                  goto LABEL_8;
                }
              }
            }
          }

LABEL_7:
LABEL_8:
          if (v3 == ++v4)
          {
            goto LABEL_54;
          }
        }

        __break(1u);
LABEL_52:
        v0 = __CocoaSet.count.getter();
        v3 = v0;
      }

      while (v0);
    }

    v5 = MEMORY[0x277D84F90];
  }

  else
  {
    v5 = 0;
  }

LABEL_54:
  v0 = v5;
LABEL_56:
  result.value._rawValue = v0;
  result.is_nil = v6;
  return result;
}

uint64_t MediaPlaybackListener.__allocating_init(viewModel:trackIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return specialized MediaPlaybackListener.__allocating_init(viewModel:trackIdentifier:)(a1, a3, a4, v4, ObjectType, a2);
}

uint64_t MediaPlaybackListener.trackIdentifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double MediaPlaybackListener.trackIdentifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

void *MediaPlaybackListener.viewModel.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void MediaPlaybackListener.viewModel.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

float MediaPlaybackListener.playbackState.getter@<S0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 48);
  v4 = *(v1 + 52);
  *a1 = result;
  *(a1 + 4) = v4;
  return result;
}

uint64_t MediaPlaybackListener.playbackState.setter(int *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  result = swift_beginAccess();
  *(v1 + 48) = v2;
  *(v1 + 52) = v3;
  return result;
}

double MediaPlaybackListener.observers.getter()
{
  swift_beginAccess();

  return result;
}

double MediaPlaybackListener.observers.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;

  return result;
}

uint64_t MediaPlaybackListener.init(viewModel:trackIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();

  return specialized MediaPlaybackListener.init(viewModel:trackIdentifier:)(a1, a3, a4, v4, ObjectType, a2);
}

uint64_t MediaPlaybackListener.deinit()
{

  return v0;
}

uint64_t MediaPlaybackListener.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

double MediaPlaybackListener.didReceiveShouldPlayNotification()(char *a1, char a2)
{
  LOBYTE(v3) = a2;
  v5 = v2;
  if (one-time initialization token for viewModel != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, static CommonLogger.viewModel);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21607C000, v7, v8, a1, v9, 2u);
      MEMORY[0x21CE94770](v9, -1, -1);
    }

    a1 = v26;
    v10 = (*(*v5 + 176))(v26);
    *(v11 + 4) = v3;
    v12 = v10(v26, 0);
    v13 = (*(*v5 + 184))(v12);
    if (!v13)
    {
      return result;
    }

    v3 = v13;
    v23 = *(v13 + 16);
    if (!v23)
    {
LABEL_9:

      return result;
    }

    v15 = 0;
    v16 = (v13 + 40);
    while (v15 < *(v3 + 16))
    {
      ++v15;
      a1 = *v16;
      ObjectType = swift_getObjectType();
      v18 = *(*v5 + 136);
      v19 = swift_unknownObjectRetain();
      v20 = v18(v19);
      v22 = v21;
      (*(*v5 + 160))(v26);
      v24 = v26[0];
      v25 = BYTE4(v26[0]);
      (*(a1 + 1))(v20, v22, &v24, ObjectType, a1);

      swift_unknownObjectRelease();
      v16 += 2;
      if (v23 == v15)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }
}

Swift::Void __swiftcall MediaPlaybackListener.didReceiveProgressNotification(_:)(Swift::Float a1)
{
  v3 = (*(*v1 + 176))(v20);
  *v4 = a1;
  v5 = v3(v20, 0);
  v6 = (*(*v1 + 184))(v5);
  if (v6)
  {
    v7 = v6;
    v17 = *(v6 + 16);
    if (v17)
    {
      v8 = 0;
      v9 = (v6 + 40);
      while (v8 < *(v7 + 16))
      {
        ++v8;
        v10 = *v9;
        ObjectType = swift_getObjectType();
        v12 = *(*v1 + 136);
        v13 = swift_unknownObjectRetain();
        v14 = v12(v13);
        v16 = v15;
        (*(*v1 + 160))(v20);
        v18 = v20[0];
        v19 = BYTE4(v20[0]);
        (*(v10 + 8))(v14, v16, &v18, ObjectType, v10);

        swift_unknownObjectRelease();
        v9 += 2;
        if (v17 == v8)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }
}

uint64_t specialized MediaPlaybackListener.__allocating_init(viewModel:trackIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for MediaPlaybackListener();
  v10 = swift_allocObject();
  *(v10 + 48) = 0;
  *(v10 + 52) = 0;
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  *(v10 + 56) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a1;
  *(v10 + 40) = a6;
  return v10;
}

uint64_t specialized MediaPlaybackListener.init(viewModel:trackIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a4 + 48) = 0;
  *(a4 + 52) = 0;
  *(a4 + 24) = 0;
  *(a4 + 16) = 0;
  v11 = (a4 + 16);
  *(a4 + 56) = MEMORY[0x277D84F90];
  swift_beginAccess();
  *v11 = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = a1;
  *(a4 + 40) = a6;
  return a4;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PlaybackState(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaybackState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

uint64_t specialized Collection.first.getter(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v2)
  {
    return String.subscript.getter();
  }

  else
  {
    return 0;
  }
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x21CE93020](v3, v5, v6, v7);
    outlined consume of Set<UIScene>.Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of Set<UIScene>.Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v12 = v11;
  outlined consume of Set<UIScene>.Index._Variant(v3, v5, v2 != 0);
  return v12;
}

uint64_t SuggestionCollectionViewSection.uuid.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

double SuggestionCollectionViewSection.items.getter()
{
  type metadata accessor for SuggestionCollectionViewSection(0);

  return result;
}

void SuggestionCollectionViewSection.hash(into:)(uint64_t a1)
{
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  v3 = *(v1 + *(type metadata accessor for SuggestionCollectionViewSection(0) + 20));
  if (v3 >> 62)
  {
    v7 = __CocoaSet.count.getter();
    MEMORY[0x21CE937C0](v7);
    v4 = __CocoaSet.count.getter();
    if (!v4)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x21CE937C0](*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v4; ++i)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x21CE93180](i, v3);
      }

      else
      {
        v6 = *(v3 + 8 * i + 32);
      }

      (*(*v6 + 336))(a1);
    }
  }
}

uint64_t SuggestionCollectionViewSection.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  v1 = *(v0 + *(type metadata accessor for SuggestionCollectionViewSection(0) + 20));
  if (!(v1 >> 62))
  {
    result = MEMORY[0x21CE937C0](*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

    return Hasher._finalize()();
  }

  v6 = __CocoaSet.count.getter();
  MEMORY[0x21CE937C0](v6);
  result = __CocoaSet.count.getter();
  v3 = result;
  if (!result)
  {
    return Hasher._finalize()();
  }

LABEL_3:
  if (v3 >= 1)
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x21CE93180](i, v1);
      }

      else
      {
        v5 = *(v1 + 8 * i + 32);
      }

      (*(*v5 + 336))(v7);
    }

    return Hasher._finalize()();
  }

  __break(1u);
  return result;
}

uint64_t SuggestionCollectionViewSection.init(items:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UUID.init()();
  result = type metadata accessor for SuggestionCollectionViewSection(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance SuggestionCollectionViewSection(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  dispatch thunk of Hashable.hash(into:)();
  v4 = *(v2 + *(a2 + 20));
  if (!(v4 >> 62))
  {
    result = MEMORY[0x21CE937C0](*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

    return Hasher._finalize()();
  }

  v9 = __CocoaSet.count.getter();
  MEMORY[0x21CE937C0](v9);
  result = __CocoaSet.count.getter();
  v6 = result;
  if (!result)
  {
    return Hasher._finalize()();
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x21CE93180](i, v4);
      }

      else
      {
        v8 = *(v4 + 8 * i + 32);
      }

      (*(*v8 + 336))(v10);
    }

    return Hasher._finalize()();
  }

  __break(1u);
  return result;
}

uint64_t SuggestionCollectionViewController.sessionUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_sessionUUID;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *SuggestionCollectionViewController.dataSource.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_dataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SuggestionCollectionViewController.dataSource.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_dataSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *SuggestionCollectionViewController.collectionView.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_collectionView;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SuggestionCollectionViewController.collectionView.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_collectionView;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

double SuggestionCollectionViewController.sections.getter()
{
  swift_beginAccess();

  return result;
}

double SuggestionCollectionViewController.sections.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_sections;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

double SuggestionCollectionViewController.cloudManager.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();

  return result;
}

void (*SuggestionCollectionViewController.cloudManager.modify(uint64_t *a1))(void **a1, char a2)
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
  v5 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_cloudManager;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return SuggestionCollectionViewController.cloudManager.modify;
}

void SuggestionCollectionViewController.cloudManager.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
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

uint64_t SuggestionCollectionViewController.delegate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_delegate;
  swift_beginAccess();
  return outlined init with copy of DateInterval?(v1 + v3, a1, &_s9MomentsUI42SuggestionCollectionViewControllerDelegate_pSgMd, &_s9MomentsUI42SuggestionCollectionViewControllerDelegate_pSgMR);
}

uint64_t SuggestionCollectionViewController.delegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_delegate;
  swift_beginAccess();
  outlined assign with take of SuggestionCollectionViewControllerDelegate?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of SuggestionCollectionViewControllerDelegate?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI42SuggestionCollectionViewControllerDelegate_pSgMd, &_s9MomentsUI42SuggestionCollectionViewControllerDelegate_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id SuggestionCollectionViewController.protectedContentManager.getter()
{
  v1 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_protectedContentManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void SuggestionCollectionViewController.protectedContentManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_protectedContentManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id closure #1 in variable initialization expression of SuggestionCollectionViewController.suggestionSegmentedControl()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_21658CA60;
  type metadata accessor for SuggestionCollectionViewModel(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  v4._object = 0xEB00000000646564;
  v16._object = 0xEB00000000646564;
  v4._countAndFlagsBits = 0x6E656D6D6F636552;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v16._countAndFlagsBits = 0x6E656D6D6F636552;
  v6 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, 0, v3, v5, v16);

  v7 = MEMORY[0x277D837D0];
  *(v0 + 56) = MEMORY[0x277D837D0];
  *(v0 + 32) = v6;
  v8 = [v2 bundleForClass_];
  v17._object = 0xE600000000000000;
  v9._countAndFlagsBits = 0x746E65636552;
  v9._object = 0xE600000000000000;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v17._countAndFlagsBits = 0x746E65636552;
  v11 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, 0, v8, v10, v17);

  *(v0 + 88) = v7;
  *(v0 + 64) = v11;
  v12 = objc_allocWithZone(MEMORY[0x277D75A08]);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v12 initWithItems_];

  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setSelectedSegmentIndex_];
  [v14 setEnabled_];
  [v14 _setUseGlass_];
  return v14;
}

double SuggestionCollectionViewController.contentStateSubscription.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_contentStateSubscription;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t closure #1 in variable initialization expression of SuggestionCollectionViewController.downloadingContentConfiguration()
{
  static UIContentUnavailableConfiguration.loading()();
  type metadata accessor for SuggestionCollectionViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v3._countAndFlagsBits = 0xD00000000000004ALL;
  v12._object = 0x800000021657D9F0;
  v3._object = 0x800000021657E250;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v12._countAndFlagsBits = 0xD00000000000004CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v12);

  UIContentUnavailableConfiguration.secondaryText.setter();
  v5 = [v1 bundleForClass_];
  v6._countAndFlagsBits = 0xD000000000000022;
  v13._object = 0x800000021657D9F0;
  v6._object = 0x800000021657E2A0;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0xD00000000000004CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v13);

  UIContentUnavailableConfiguration.text.setter();
  v8 = [objc_opt_self() boldSystemFontOfSize_];
  v9 = UIContentUnavailableConfiguration.textProperties.modify();
  UIContentUnavailableConfiguration.TextProperties.font.setter();
  return v9(v11, 0);
}

uint64_t closure #1 in variable initialization expression of SuggestionCollectionViewController.upgradingContentConfiguration()
{
  static UIContentUnavailableConfiguration.loading()();
  type metadata accessor for SuggestionCollectionViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v12._object = 0x800000021657E210;
  v3._object = 0x800000021657E1E0;
  v12._countAndFlagsBits = 0xD000000000000037;
  v3._countAndFlagsBits = 0xD000000000000020;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v12);

  UIContentUnavailableConfiguration.text.setter();
  v5 = [v1 bundleForClass_];
  v13._object = 0x800000021657E1B0;
  v6._countAndFlagsBits = 0xD00000000000004ELL;
  v6._object = 0x800000021657E160;
  v13._countAndFlagsBits = 0xD000000000000027;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v13);

  UIContentUnavailableConfiguration.secondaryText.setter();
  v8 = [objc_opt_self() boldSystemFontOfSize_];
  v9 = UIContentUnavailableConfiguration.textProperties.modify();
  UIContentUnavailableConfiguration.TextProperties.font.setter();
  return v9(v11, 0);
}

uint64_t closure #1 in variable initialization expression of SuggestionCollectionViewController.firstTimeContentConfiguration()
{
  static UIContentUnavailableConfiguration.loading()();
  type metadata accessor for SuggestionCollectionViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = objc_opt_self();
  v2 = [v1 bundleForClass_];
  v12._object = 0x800000021657E130;
  v3._object = 0x800000021657E100;
  v12._countAndFlagsBits = 0xD000000000000029;
  v3._countAndFlagsBits = 0xD000000000000021;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v12);

  UIContentUnavailableConfiguration.text.setter();
  v5 = [v1 bundleForClass_];
  v13._object = 0x800000021657E1B0;
  v6._countAndFlagsBits = 0xD00000000000004ELL;
  v6._object = 0x800000021657E160;
  v13._countAndFlagsBits = 0xD000000000000027;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, 0, v5, v7, v13);

  UIContentUnavailableConfiguration.secondaryText.setter();
  v8 = [objc_opt_self() boldSystemFontOfSize_];
  v9 = UIContentUnavailableConfiguration.textProperties.modify();
  UIContentUnavailableConfiguration.TextProperties.font.setter();
  return v9(v11, 0);
}

Swift::Void __swiftcall SuggestionCollectionViewController.viewDidLoad()()
{
  v40.receiver = v0;
  v40.super_class = type metadata accessor for SuggestionCollectionViewController(0);
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v1 = [v0 traitCollection];
  v2 = [v1 horizontalSizeClass];

  if (v2 == 2)
  {
    v3 = objc_opt_self();
    v4 = [v3 sharedApplication];
    v5 = [v4 connectedScenes];
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIScene, 0x277D75940);
    lazy protocol witness table accessor for type UIScene and conformance NSObject();
    v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = specialized Collection.first.getter(v6);

    if (v7)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8)
      {
        v9 = [v8 interfaceOrientation];
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 1;
    }

    if (UIInterfaceOrientationIsLandscape(v9))
    {
      v10 = 0.6;
    }

    else
    {
      v10 = 0.85;
    }

    v11 = [v3 sharedApplication];
    v12 = [v11 connectedScenes];
    v13 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = specialized Collection.first.getter(v13);

    if (v14)
    {
      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = [v15 interfaceOrientation];
      }

      else
      {
        v16 = 1;
      }
    }

    else
    {
      v16 = 1;
    }

    if (UIInterfaceOrientationIsLandscape(v16))
    {
      v17 = 0.85;
    }

    else
    {
      v17 = 0.6;
    }

    v18 = [v0 view];
    if (v18)
    {
      v19 = v18;
      [v18 bounds];
      v21 = v20;
      v23 = v22;
      v25 = v24;
      v27 = v26;

      v41.origin.x = v21;
      v41.origin.y = v23;
      v41.size.width = v25;
      v41.size.height = v27;
      Width = CGRectGetWidth(v41);
      v29 = [v0 view];
      if (v29)
      {
        v30 = v29;
        v31 = v10 * Width;
        [v29 bounds];
        v33 = v32;
        v35 = v34;
        v37 = v36;
        v39 = v38;

        v42.origin.x = v33;
        v42.origin.y = v35;
        v42.size.width = v37;
        v42.size.height = v39;
        [v0 setPreferredContentSize_];
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

void *SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v62 = a2;
  v63 = a3;
  v65 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v64 = &v59 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy9MomentsUI29SuggestionCollectionViewModelC12ContentStateO_GMd, &_s7Combine9PublishedV9PublisherVy9MomentsUI29SuggestionCollectionViewModelC12ContentStateO_GMR);
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x28223BE20](v9);
  v59 = &v59 - v10;
  v11 = type metadata accessor for Client(0);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init()();
  *&v4[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_dataSource] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_collectionView] = 0;
  *&v4[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_sections] = MEMORY[0x277D84F90];
  swift_weakInit();
  v15 = &v4[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_delegate];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  *(v15 + 4) = 0;
  swift_unknownObjectWeakInit();
  v16 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_privacyBadge;
  *&v5[v16] = [objc_allocWithZone(type metadata accessor for PrivacyBadgeView()) initWithFrame_];
  *&v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_onboardingOverlayView] = 0;
  v17 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_protectedContentManager;
  *&v5[v17] = [objc_allocWithZone(type metadata accessor for ProtectedAppsManager(0)) init];
  v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_hasStartedFetchingContent] = 0;
  v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_shouldFetchUpdatedContent] = 0;
  v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_userHasScrolled] = 0;
  v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_isNearBottom] = 0;
  v18 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl;
  *&v5[v18] = closure #1 in variable initialization expression of SuggestionCollectionViewController.suggestionSegmentedControl();
  *&v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel] = 0;
  *&v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_contentStateSubscription] = 0;
  static UIContentUnavailableConfiguration.loading()();
  static UIContentUnavailableConfiguration.empty()();
  v19 = type metadata accessor for SuggestionCollectionViewController(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = [objc_opt_self() bundleForClass_];
  v68._object = 0x800000021657D9F0;
  v22._countAndFlagsBits = 0x6567677553206F4ELL;
  v22._object = 0xEE00736E6F697473;
  v23._countAndFlagsBits = 0;
  v23._object = 0xE000000000000000;
  v68._countAndFlagsBits = 0xD00000000000004CLL;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v22, 0, v21, v23, v68);

  v24 = v62;
  UIContentUnavailableConfiguration.text.setter();
  closure #1 in variable initialization expression of SuggestionCollectionViewController.downloadingContentConfiguration();
  closure #1 in variable initialization expression of SuggestionCollectionViewController.upgradingContentConfiguration();
  closure #1 in variable initialization expression of SuggestionCollectionViewController.firstTimeContentConfiguration();
  v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_hasPresentedOnboarding] = 0;
  outlined init with copy of Client(v24, &v5[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_client], type metadata accessor for Client);
  swift_unknownObjectWeakAssign();
  v67.receiver = v5;
  v67.super_class = v19;
  v25 = objc_msgSendSuper2(&v67, sel_initWithNibName_bundle_, 0, 0);
  v26 = objc_allocWithZone(MEMORY[0x277D751E0]);
  v27 = v25;
  v28 = [v26 initWithBarButtonSystemItem:24 target:v27 action:sel_cancelSheet];
  (*((*MEMORY[0x277D85000] & *v27) + 0x378))();
  v29 = v27;
  v30 = [v29 navigationItem];
  [v30 setLeftBarButtonItem_];

  v31 = [v29 navigationItem];
  v32 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl;
  [v31 setTitleView_];

  v33 = *(v29 + v32);
  [v33 addTarget:v29 action:sel_pressedSegmentControl forControlEvents:4096];

  v34 = (v24 + *(v12 + 36));
  v35 = *v34;
  v36 = v34[1];
  v37 = objc_allocWithZone(type metadata accessor for PrivacyOnboardingView());

  PrivacyOnboardingView.init(clientDisplayName:)(v35, v36);
  v38 = *(v29 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_onboardingOverlayView);
  *(v29 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_onboardingOverlayView) = v39;

  outlined init with copy of Client(v24, v14, type metadata accessor for Client);
  type metadata accessor for SuggestionCollectionViewModel(0);
  swift_allocObject();
  v40 = v63;

  v41 = a4;
  v42 = SuggestionCollectionViewModel.init(suggestionViewModels:client:cloudManager:options:)(0, v14, v40, a4);
  v43 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel;
  *(v29 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel) = v42;

  v44 = *(v29 + v43);
  if (v44)
  {

    (*(*v44 + 800))([v29 traitCollection]);

    v44 = *(v29 + v43);
    if (v44)
    {
      v45 = v24;
      v66[3] = v19;
      v66[4] = &protocol witness table for SuggestionCollectionViewController;
      v66[0] = v29;
      v46 = *(*v44 + 376);
      v47 = v29;

      v46(v66);

      v44 = *(v29 + v43);
      if (v44)
      {
        v48 = *(*v44 + 896);

        v50 = v59;
        v48(v49);

        *(swift_allocObject() + 16) = v47;
        lazy protocol witness table accessor for type Published<SuggestionCollectionViewModel.ContentState>.Publisher and conformance Published<A>.Publisher();
        v51 = v47;
        v52 = v61;
        v44 = Publisher<>.sink(receiveValue:)();

        (*(v60 + 8))(v50, v52);
      }

      v24 = v45;
    }
  }

  v53 = OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_contentStateSubscription;
  swift_beginAccess();
  *(v29 + v53) = v44;

  SuggestionCollectionViewController.configureViewsAndLayouts()();
  SuggestionCollectionViewController.configureDataSource()();
  v54 = type metadata accessor for TaskPriority();
  v55 = v64;
  (*(*(v54 - 8) + 56))(v64, 1, 1, v54);
  v56 = swift_allocObject();
  v56[2] = 0;
  v56[3] = 0;
  v56[4] = v29;
  v57 = v29;
  _sScTss5NeverORs_rlE8detached4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntFZyt_Tt2g5(0, 0, v55, &async function pointer to partial apply for closure #2 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:), v56);

  _s9MomentsUI6ClientVWOhTm_0(v24, type metadata accessor for Client);
  outlined destroy of UTType?(v55, &_sScPSgMd, &_sScPSgMR);
  return v57;
}

double closure #1 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v2, &async function pointer to partial apply for closure #1 in closure #1 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:), v6);

  return result;
}

uint64_t closure #1 in closure #1 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a4;
  type metadata accessor for MainActor();
  *(v4 + 48) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #1 in closure #1 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:), v6, v5);
}

uint64_t closure #1 in closure #1 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)()
{

  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static CommonLogger.views);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_21607C000, v2, v3, "[SuggestionCollectionViewController] received contentState update", v4, 2u);
    MEMORY[0x21CE94770](v4, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    [Strong setNeedsUpdateContentUnavailableConfiguration];
  }

  v7 = *(v0 + 8);

  return v7();
}

Swift::Void __swiftcall SuggestionCollectionViewController.configureViewsAndLayouts()()
{
  SuggestionCollectionViewController.createLayout()(v0);
  v3 = v2;
  v4 = [v1 view];
  if (!v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v4;
  [v4 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v3 collectionViewLayout:{v7, v9, v11, v13}];
  v15 = *((*MEMORY[0x277D85000] & *v1) + 0x130);
  v16 = v14;
  v15(v14);
  [v16 setDelegate_];
  v17 = objc_opt_self();
  v18 = v16;
  v19 = [v17 clearColor];
  [v18 setBackgroundColor_];

  v20 = [v1 view];
  if (!v20)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v20;
  [v20 insertSubview:v18 atIndex:0];

  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = [v1 view];
  if (!v22)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23 = v22;
  if (_UISolariumEnabled())
  {
    v24 = [v17 whiteColor];
    v25 = [v24 colorWithAlphaComponent_];
  }

  else
  {
    v25 = [v17 systemBackgroundColor];
  }

  [v23 setBackgroundColor_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_216590220;
  v27 = [v18 topAnchor];
  v28 = [v1 view];
  if (!v28)
  {
    goto LABEL_17;
  }

  v29 = v28;
  v30 = [v28 topAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  *(v26 + 32) = v31;
  v32 = [v18 bottomAnchor];
  v33 = [v1 view];
  if (!v33)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v34 = v33;
  v35 = [v33 bottomAnchor];

  v36 = [v32 constraintEqualToAnchor_];
  *(v26 + 40) = v36;
  v37 = [v18 leadingAnchor];
  v38 = [v1 view];
  if (!v38)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v39 = v38;
  v40 = [v38 leadingAnchor];

  v41 = [v37 constraintEqualToAnchor_];
  *(v26 + 48) = v41;
  v42 = [v18 trailingAnchor];

  v43 = [v1 view];
  if (!v43)
  {
LABEL_20:
    __break(1u);
    return;
  }

  v44 = v43;
  v45 = objc_opt_self();
  v46 = [v44 trailingAnchor];

  v47 = [v42 constraintEqualToAnchor_];
  *(v26 + 56) = v47;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v45 activateConstraints_];
}

Swift::Void __swiftcall SuggestionCollectionViewController.configureDataSource()()
{
  v1 = v0;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013TipCollectionbD0CAF0h10SuggestionB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI013TipCollectionbD0CAF0h10SuggestionB5ModelCGMR);
  v93 = *(v103 - 8);
  v89 = *(v93 + 64);
  MEMORY[0x28223BE20](v103);
  v104 = &v67 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017MessageCollectionbD0CAF0h10SuggestionB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI017MessageCollectionbD0CAF0h10SuggestionB5ModelCGMR);
  v90 = *(v3 - 8);
  v87 = *(v90 + 64);
  MEMORY[0x28223BE20](v3);
  v102 = &v67 - v4;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019EvergreenCollectionbD0CAF0h10SuggestionB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI019EvergreenCollectionbD0CAF0h10SuggestionB5ModelCGMR);
  v88 = *(v108 - 8);
  v85 = *(v88 + 64);
  MEMORY[0x28223BE20](v108);
  v101 = &v67 - v5;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016MosaicCollectionbD0CAF0h10SuggestionB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI016MosaicCollectionbD0CAF0h10SuggestionB5ModelCGMR);
  v86 = *(v107 - 8);
  v83 = *(v86 + 64);
  MEMORY[0x28223BE20](v107);
  v100 = &v67 - v6;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024SuggestionListCollectionbD0CAF06MosaichB5ModelCGMd, &_sSo16UICollectionViewC5UIKitE16CellRegistrationVy_9MomentsUI024SuggestionListCollectionbD0CAF06MosaichB5ModelCGMR);
  v84 = *(v106 - 8);
  v82 = *(v84 + 64);
  MEMORY[0x28223BE20](v106);
  v99 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_9MomentsUI014ShowMoreFooterB0CGMd, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_9MomentsUI014ShowMoreFooterB0CGMR);
  v94 = *(v8 - 8);
  v95 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v81 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v10;
  MEMORY[0x28223BE20](v9);
  v105 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_9MomentsUI017SectionDateHeaderB0CGMd, &_sSo16UICollectionViewC5UIKitE25SupplementaryRegistrationVy_9MomentsUI017SectionDateHeaderB0CGMR);
  v91 = *(v12 - 8);
  v92 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v79 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v67 - v15;
  v17 = type metadata accessor for OSSignpostID();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v67 - v22;
  if (one-time initialization token for uiRendering != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v24, static CommonSignposter.uiRendering);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v25 = OSSignposter.logHandle.getter();
  v26 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v27 = v23;
    v28 = v1;
    v29 = v16;
    v30 = v3;
    v31 = v18;
    v32 = v17;
    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v25, v26, v34, "UIService_FetchCollectionViewDataSource", "", v33, 2u);
    v35 = v33;
    v17 = v32;
    v18 = v31;
    v3 = v30;
    v16 = v29;
    v1 = v28;
    v23 = v27;
    MEMORY[0x21CE94770](v35, -1, -1);
  }

  (*(v18 + 16))(v21, v23, v17);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v36 = OSSignpostIntervalState.init(id:isOpen:)();
  v37 = (*((*MEMORY[0x277D85000] & *v1) + 0x128))();
  if (v37)
  {
    v38 = v37;
    if (one-time initialization token for registration != -1)
    {
      swift_once();
    }

    v73 = __swift_project_value_buffer(v107, static MosaicCollectionViewCell.registration);
    if (one-time initialization token for registration != -1)
    {
      swift_once();
    }

    v75 = v23;
    v72 = __swift_project_value_buffer(v106, static SuggestionListCollectionViewCell.registration);
    if (one-time initialization token for registration != -1)
    {
      swift_once();
    }

    v74 = v36;
    v76 = v18;
    v71 = __swift_project_value_buffer(v108, static EvergreenCollectionViewCell.registration);
    if (one-time initialization token for registration != -1)
    {
      swift_once();
    }

    v77 = v17;
    v70 = __swift_project_value_buffer(v3, static MessageCollectionViewCell.registration);
    v97 = v3;
    if (one-time initialization token for registration != -1)
    {
      swift_once();
    }

    v39 = v103;
    v68 = __swift_project_value_buffer(v103, static TipCollectionViewCell.registration);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for SectionDateHeaderView(0);
    v96 = v16;
    UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    swift_allocObject();
    v69 = v1;
    swift_unknownObjectWeakInit();
    type metadata accessor for ShowMoreFooterView();
    UICollectionView.SupplementaryRegistration.init(elementKind:handler:)();
    swift_unknownObjectWeakInit();
    v98 = v38;
    MEMORY[0x21CE948B0](v109);
    v40 = v84;
    (*(v84 + 16))(v99, v72, v106);
    v41 = v86;
    (*(v86 + 16))(v100, v73, v107);
    v42 = v88;
    (*(v88 + 16))(v101, v71, v108);
    v43 = v90;
    (*(v90 + 16))(v102, v70, v97);
    v44 = v93;
    (*(v93 + 16))(v104, v68, v39);
    v45 = (*(v40 + 80) + 16) & ~*(v40 + 80);
    v46 = (v82 + *(v41 + 80) + v45) & ~*(v41 + 80);
    v47 = (v83 + *(v42 + 80) + v46) & ~*(v42 + 80);
    v48 = (v85 + *(v43 + 80) + v47) & ~*(v43 + 80);
    v87 = (v87 + *(v44 + 80) + v48) & ~*(v44 + 80);
    v49 = swift_allocObject();
    (*(v40 + 32))(v49 + v45, v99, v106);
    (*(v41 + 32))(v49 + v46, v100, v107);
    (*(v42 + 32))(v49 + v47, v101, v108);
    (*(v43 + 32))(v49 + v48, v102, v97);
    (*(v44 + 32))(v49 + v87, v104, v103);
    v50 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit34UICollectionViewDiffableDataSourceCy9MomentsUI020SuggestionCollectionC7SectionVAD0iC5ModelCGMd, &_s5UIKit34UICollectionViewDiffableDataSourceCy9MomentsUI020SuggestionCollectionC7SectionVAD0iC5ModelCGMR));
    v51 = UICollectionViewDiffableDataSource.init(collectionView:cellProvider:)();
    v52 = v69;
    v53 = MEMORY[0x277D85000];
    v54 = (*((*MEMORY[0x277D85000] & *v69) + 0x118))(v51);
    v55 = (*((*v53 & *v52) + 0x110))(v54);
    if (v55)
    {
      v56 = v55;
      v58 = v91;
      v57 = v92;
      v59 = v79;
      (*(v91 + 16))(v79, v96, v92);
      v61 = v94;
      v60 = v95;
      v62 = v81;
      (*(v94 + 16))(v81, v105, v95);
      v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
      v64 = (v78 + *(v61 + 80) + v63) & ~*(v61 + 80);
      v65 = swift_allocObject();
      (*(v58 + 32))(v65 + v63, v59, v57);
      (*(v61 + 32))(v65 + v64, v62, v60);
      dispatch thunk of UICollectionViewDiffableDataSource.supplementaryViewProvider.setter();

      v66 = v105;
      v36 = v74;
    }

    else
    {
      v61 = v94;
      v60 = v95;
      v66 = v105;
      v58 = v91;
      v57 = v92;
      v36 = v74;
      v56 = v98;
    }

    (*(v61 + 8))(v66, v60);
    (*(v58 + 8))(v96, v57);
    v17 = v77;
    v18 = v76;
    v23 = v75;
  }

  $defer #1 () in SuggestionCollectionViewController.configureDataSource()(v36, "UIService_FetchCollectionViewDataSource");

  (*(v18 + 8))(v23, v17);
}

uint64_t closure #2 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:)()
{
  type metadata accessor for MainActor();
  *(v0 + 24) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:), v2, v1);
}

{
  v1 = v0[2];

  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  v0[4] = v2;
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x338);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = closure #2 in SuggestionCollectionViewController.init(viewModel:client:cloudManager:options:);

  return v6(v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t closure #1 in SuggestionCollectionViewController.viewDidAppear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](closure #1 in SuggestionCollectionViewController.viewDidAppear(_:), v6, v5);
}

uint64_t closure #1 in SuggestionCollectionViewController.viewDidAppear(_:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v0[6] = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = xmmword_21658CA50;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = closure #1 in SuggestionsOnboardingViewController.viewDidAppear(_:);

  return CloudManager.retainUIActive(_:_:_:)(v5, "viewDidAppear(_:)", 17, 2, 173);
}

uint64_t closure #1 in SuggestionCollectionViewController.viewDidDisappear(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  type metadata accessor for MainActor();
  v4[3] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](closure #1 in SuggestionCollectionViewController.viewDidDisappear(_:), v6, v5);
}

uint64_t closure #1 in SuggestionCollectionViewController.viewDidDisappear(_:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v0[6] = (*((*MEMORY[0x277D85000] & *static MomentsUIManager.shared) + 0x78))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR);
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = swift_allocObject();
  v0[7] = v5;
  *(v5 + 16) = xmmword_21658CA50;
  (*(v3 + 16))(v5 + v4, v1, v2);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = closure #1 in SuggestionsOnboardingViewController.viewDidDisappear(_:);

  return CloudManager.releaseUIActive(_:_:_:)(v5, "viewDidDisappear(_:)", 20, 2, 183);
}

id SuggestionCollectionViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SuggestionCollectionViewController.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.viewModel);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_21607C000, v3, v4, "[SuggestionCollectionViewController] de-init", v5, 2u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for SuggestionCollectionViewController(0);
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

Swift::Void __swiftcall SuggestionCollectionViewController.cancelSheet()()
{
  (*((*MEMORY[0x277D85000] & *v0) + 0x170))(v6);
  if (v6[3])
  {
    outlined init with copy of DBObject(v6, v3);
    outlined destroy of UTType?(v6, &_s9MomentsUI42SuggestionCollectionViewControllerDelegate_pSgMd, &_s9MomentsUI42SuggestionCollectionViewControllerDelegate_pSgMR);
    v1 = v4;
    v2 = v5;
    __swift_project_boxed_opaque_existential_1(v3, v4);
    (*(v2 + 8))(v1, v2);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    outlined destroy of UTType?(v6, &_s9MomentsUI42SuggestionCollectionViewControllerDelegate_pSgMd, &_s9MomentsUI42SuggestionCollectionViewControllerDelegate_pSgMR);
  }
}

uint64_t SuggestionCollectionViewController.updateWithViewModel(_:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for UUID();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for MainActor();
  v2[9] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v2[10] = v4;
  *v4 = v2;
  v4[1] = SuggestionCollectionViewController.updateWithViewModel(_:);

  return SuggestionCollectionViewController.showProtectedContentBannerIfNeeded()();
}

uint64_t SuggestionCollectionViewController.updateWithViewModel(_:)()
{
  v1 = *v0;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 88) = v3;
  *(v1 + 96) = v2;

  return MEMORY[0x2822009F8](SuggestionCollectionViewController.updateWithViewModel(_:), v3, v2);
}

{
  v28 = v0;
  v2 = v0[2];
  v1 = v0[3];
  v1[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_hasStartedFetchingContent] = 1;
  [v1 setNeedsUpdateContentUnavailableConfiguration];
  if (v2)
  {
    v25 = (*(*v0[2] + 1088) + **(*v0[2] + 1088));
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = SuggestionCollectionViewController.updateWithViewModel(_:);

    return v25(1);
  }

  else
  {
    v5 = v0[3];
    v27 = [*(v5 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) selectedSegmentIndex] == 1;
    SuggestionCollectionViewController.displaySuggestionsForSegment(segmentType:scrollToTop:)(&v27, 1);
    v6 = MEMORY[0x277D85000];
    (*((*MEMORY[0x277D85000] & *v5) + 0x398))();
    v7 = *(v5 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_onboardingOverlayView);
    if (v7)
    {
      v8 = v0[3];
      v9 = *((*v6 & *v7) + 0x138);
      v10 = v7;
      v11 = v8;
      v9(v5, &protocol witness table for SuggestionCollectionViewController);
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v13 = Strong;
      (*((*v6 & *Strong) + 0xB0))();
      v15 = v14;

      if (v15)
      {
        v16 = v0[5];
        v17 = v0[6];
        v18 = v0[4];
        UUID.init(uuidString:)();

        if ((*(v17 + 48))(v18, 1, v16) == 1)
        {
          outlined destroy of UTType?(v0[4], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        }

        else
        {
          v20 = v0[6];
          v19 = v0[7];
          v21 = v0[5];
          (*(v20 + 32))(v19, v0[4], v21);
          v22 = SuggestionCollectionViewController.presentInterstitial(for:)(v19);
          (*(v20 + 8))(v19, v21, v22);
        }
      }
    }

    v23 = *((*v6 & *v0[3]) + 0x388);
    v26 = (v23 + *v23);
    v24 = swift_task_alloc();
    v0[15] = v24;
    *v24 = v0;
    v24[1] = SuggestionCollectionViewController.updateWithViewModel(_:);

    return v26();
  }
}

{
  v2 = *v1;
  *(*v1 + 112) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = SuggestionCollectionViewController.updateWithViewModel(_:);
  }

  else
  {
    v5 = SuggestionCollectionViewController.updateWithViewModel(_:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v24 = v0;
  v1 = v0[3];
  v23 = [*(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) selectedSegmentIndex] == 1;
  SuggestionCollectionViewController.displaySuggestionsForSegment(segmentType:scrollToTop:)(&v23, 1);
  v2 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x398))();
  v3 = *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_onboardingOverlayView);
  if (v3)
  {
    v4 = v0[3];
    v5 = *((*v2 & *v3) + 0x138);
    v6 = v3;
    v7 = v4;
    v5(v1, &protocol witness table for SuggestionCollectionViewController);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    (*((*v2 & *Strong) + 0xB0))();
    v11 = v10;

    if (v11)
    {
      v12 = v0[5];
      v13 = v0[6];
      v14 = v0[4];
      UUID.init(uuidString:)();

      if ((*(v13 + 48))(v14, 1, v12) == 1)
      {
        outlined destroy of UTType?(v0[4], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      }

      else
      {
        v16 = v0[6];
        v15 = v0[7];
        v17 = v0[5];
        (*(v16 + 32))(v15, v0[4], v17);
        v18 = SuggestionCollectionViewController.presentInterstitial(for:)(v15);
        (*(v16 + 8))(v15, v17, v18);
      }
    }
  }

  v19 = *((*v2 & *v0[3]) + 0x388);
  v22 = (v19 + *v19);
  v20 = swift_task_alloc();
  v0[15] = v20;
  *v20 = v0;
  v20[1] = SuggestionCollectionViewController.updateWithViewModel(_:);

  return v22();
}

{
  v1 = *v0;

  v2 = *(v1 + 96);
  v3 = *(v1 + 88);

  return MEMORY[0x2822009F8](SuggestionCollectionViewController.updateWithViewModel(_:), v3, v2);
}

{
  v1 = *(v0 + 24);

  (*((*MEMORY[0x277D85000] & *v1) + 0x390))(v2);

  v3 = *(v0 + 8);

  return v3();
}

{

  if (one-time initialization token for viewModel != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.viewModel);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21607C000, v4, v5, "[SuggestionCollectionViewController] error fetching suggestion view models: %@", v8, 0xCu);
    outlined destroy of UTType?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x21CE94770](v9, -1, -1);
    MEMORY[0x21CE94770](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

Swift::Void __swiftcall SuggestionCollectionViewController.displaySuggestionsForSegment(segmentType:scrollToTop:)(MomentsUI::SegmentType segmentType, Swift::Bool scrollToTop)
{
  v3 = v2;
  v4 = scrollToTop;
  v5 = segmentType;
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v30 - v12;
  v14 = *(v3 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  if (v14)
  {
    v32 = v4;
    v33 = v11;
    v34 = *v5;
    v15 = v34;
    v16 = *(*v14 + 776);

    v16(&v34);
    if (v15)
    {
      v17 = "UIService_FetchRecentTab";
    }

    else
    {
      v17 = "UIService_FetchRecommendedTab";
    }

    v18 = 29;
    if (v15)
    {
      v18 = 24;
    }

    v31 = v18;
    if (one-time initialization token for uiRendering != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for OSSignposter();
    __swift_project_value_buffer(v19, static CommonSignposter.uiRendering);
    OSSignposter.logHandle.getter();
    OSSignpostID.init(log:)();
    v20 = OSSignposter.logHandle.getter();
    v21 = static os_signpost_type_t.begin.getter();
    if (OS_os_log.signpostsEnabled.getter())
    {
      v22 = swift_slowAlloc();
      v30[1] = v3;
      v23 = v17;
      v24 = v22;
      *v22 = 0;
      v25 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_21607C000, v20, v21, v25, v23, "", v24, 2u);
      v26 = v24;
      v17 = v23;
      MEMORY[0x21CE94770](v26, -1, -1);
    }

    v27 = v33;
    (*(v7 + 16))(v10, v13, v33);
    type metadata accessor for OSSignpostIntervalState();
    swift_allocObject();
    v28 = OSSignpostIntervalState.init(id:isOpen:)();
    v29 = *v14;
    if (v15)
    {
      (*(v29 + 1016))();
    }

    else
    {
      (*(v29 + 928))();
    }

    SuggestionCollectionViewController.reloadDataSnapshot()();
    SuggestionCollectionViewController.updateCollectionViewLayout(scrollToTop:)(v32);
    $defer #1 () in SuggestionCollectionViewController.displaySuggestionsForSegment(segmentType:scrollToTop:)(v17, v31, 2, v28);

    (*(v7 + 8))(v13, v27);
  }
}

double SuggestionCollectionViewController.presentInterstitial(for:)(char *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v51 = &v51 - v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v51 - v8;
  if (one-time initialization token for views != -1)
  {
LABEL_17:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static CommonLogger.views);
  v53 = *(v3 + 16);
  v53(v9, a1, v2);
  v54 = v11;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  v14 = os_log_type_enabled(v12, v13);
  v56 = v3;
  v57 = v2;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v59[0] = v16;
    *v15 = 136315138;
    _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v18 = v3;
    v20 = v19;
    v55 = *(v18 + 8);
    v55(v9, v2);
    v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v20, v59);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_21607C000, v12, v13, "[SuggestionCollectionViewController] Trying to find matching view model for suggestionId: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x21CE94770](v16, -1, -1);
    MEMORY[0x21CE94770](v15, -1, -1);
  }

  else
  {

    v55 = *(v3 + 8);
    v22 = (v55)(v9, v2);
  }

  v23 = (*((*MEMORY[0x277D85000] & *v58) + 0x140))(v22);
  v3 = 0;
  v9 = 0;
  v24 = *(v23 + 16);
  do
  {
    if (v24 == v3)
    {

      v40 = v52;
      v41 = v57;
      v53(v52, a1, v57);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v59[0] = v45;
        *v44 = 136315138;
        _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        v55(v40, v41);
        v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, v59);

        *(v44 + 4) = v49;
        _os_log_impl(&dword_21607C000, v42, v43, "[SuggestionCollectionViewController] No view model found for suggestionId: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x21CE94770](v45, -1, -1);
        MEMORY[0x21CE94770](v44, -1, -1);
      }

      else
      {

        v55(v40, v41);
      }

      return result;
    }

    if (v3 >= *(v23 + 16))
    {
      __break(1u);
      goto LABEL_17;
    }

    v25 = type metadata accessor for SuggestionCollectionViewSection(0);
    v26 = *(v25 - 8);
    v25 -= 8;
    v2 = v3 + 1;
    v27 = *(v23 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v3 + *(v25 + 28));
    MEMORY[0x28223BE20](v25);
    *(&v51 - 2) = a1;

    v28 = specialized Sequence.first(where:)(partial apply for closure #1 in SuggestionCollectionViewController.presentInterstitial(for:), (&v51 - 4), v27);

    v3 = v2;
  }

  while (!v28);

  v29 = v51;
  v30 = v57;
  v53(v51, a1, v57);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v59[0] = v34;
    *v33 = 136315138;
    _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v35 = dispatch thunk of CustomStringConvertible.description.getter();
    v36 = v29;
    v38 = v37;
    v55(v36, v30);
    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v35, v38, v59);

    *(v33 + 4) = v39;
    _os_log_impl(&dword_21607C000, v31, v32, "[SuggestionCollectionViewController] Found view model for suggestion ID: %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x21CE94770](v34, -1, -1);
    MEMORY[0x21CE94770](v33, -1, -1);
  }

  else
  {

    v55(v29, v30);
  }

  LOBYTE(v59[0]) = 1;
  SuggestionCollectionViewController.presentInterstitial(with:entryPoint:)(v28, v59);

  return result;
}

Swift::Void __swiftcall SuggestionCollectionViewController.queueFetchAndRefreshCollectionView(executeImmediately:)(Swift::Bool executeImmediately)
{
  *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_shouldFetchUpdatedContent) = 1;
  v2 = MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000] & *v1;
  if (!executeImmediately)
  {
    v4 = *((*MEMORY[0x277D85000] & *v1) + 0x140);
    v5 = *(v4() + 16);

    if (v5)
    {
      if (*(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_isNearBottom) != 1)
      {
        return;
      }

      v7 = *((v4)(v6) + 16);

      if (v7 >= specialized static DefaultsManager.Processing.draftBatchSaveCount.getter())
      {
        return;
      }
    }

    v3 = *v2 & *v1;
  }

  v8 = *(v3 + 840);

  v8();
}

Swift::Void __swiftcall SuggestionCollectionViewController.fetchAndRefreshCollectionView()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  if (*(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_shouldFetchUpdatedContent) == 1)
  {
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v8 = MEMORY[0x277D85700];
    v7[2] = v6;
    v7[3] = v8;
    v7[4] = v5;

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v3, &async function pointer to partial apply for closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView(), v7);
  }
}

uint64_t closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for MainActor();
  v4[6] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView(), v6, v5);
}

uint64_t closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView()()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v0[10] = __swift_project_value_buffer(v3, static CommonLogger.viewModel);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_21607C000, v4, v5, "[SuggestionCollectionViewController] fetchAndRefreshCollectionView", v6, 2u);
      MEMORY[0x21CE94770](v6, -1, -1);
    }

    v7 = *(v2 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
    v0[11] = v7;
    if (v7)
    {
      v8 = *(*v7 + 1088);

      v16 = (v8 + *v8);
      v9 = swift_task_alloc();
      v0[12] = v9;
      *v9 = v0;
      v9[1] = closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView();

      return v16(0);
    }

    else
    {
      v12 = v0[9];
      v13 = MEMORY[0x277D85000];
      (*((*MEMORY[0x277D85000] & *v12) + 0x358))();
      v14 = *((*v13 & *v12) + 0x388);
      v17 = (v14 + *v14);
      v15 = swift_task_alloc();
      v0[14] = v15;
      *v15 = v0;
      v15[1] = closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView();

      return v17();
    }
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView();
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView();
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

{
  v1 = *(v0 + 72);
  v2 = MEMORY[0x277D85000];
  (*((*MEMORY[0x277D85000] & *v1) + 0x358))();
  v3 = *((*v2 & *v1) + 0x388);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView();

  return v6();
}

{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x2822009F8](closure #1 in SuggestionCollectionViewController.fetchAndRefreshCollectionView(), v3, v2);
}

{
  v1 = *(v0 + 72);

  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_userHasScrolled);
  if ((v2 & 1) == 0)
  {
    v3 = *(v0 + 72);
    SuggestionCollectionViewController.createLayout()(v2);
    v5 = v4;
    v6 = *((*MEMORY[0x277D85000] & *v3) + 0x128);
    v7 = v6();
    [v7 setCollectionViewLayout_];

    v8 = v6();
    if (v8)
    {
      v9 = v8;
      [v8 adjustedContentInset];
    }

    v10 = v6();
    if (v10)
    {
      v11 = v10;
      destructiveProjectEnumData for SuggestionRanking.VisibilityCategory();
      [v11 setContentOffset:0 animated:{0.0, v12}];
    }
  }

  v13 = *(v0 + 72);
  v13[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_shouldFetchUpdatedContent] = 0;

  v14 = *(v0 + 8);

  return v14();
}

{
  v1 = v0[13];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[13];
  v7 = v0[9];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_21607C000, v3, v4, "[SuggestionCollectionViewController] (fetchAndRefreshCollectionView) error fetching suggestion view models: %@", v8, 0xCu);
    outlined destroy of UTType?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x21CE94770](v9, -1, -1);
    MEMORY[0x21CE94770](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

Swift::Void __swiftcall SuggestionCollectionViewController.updateCollectionViewLayout(scrollToTop:)(Swift::Bool scrollToTop)
{
  SuggestionCollectionViewController.createLayout()(v1);
  v12 = v4;
  v5 = *((*MEMORY[0x277D85000] & *v2) + 0x128);
  v6 = v5();
  [v6 setCollectionViewLayout_];

  if (scrollToTop)
  {
    v7 = v5();
    if (v7)
    {
      v8 = v7;
      [v7 adjustedContentInset];

      v9 = v5();
      if (!v9)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v9 = v5();
    if (v9)
    {
LABEL_4:
      v10 = v9;
      destructiveProjectEnumData for SuggestionRanking.VisibilityCategory();
      [v10 setContentOffset:0 animated:{0.0, v11}];
    }
  }

LABEL_5:
}

void SuggestionCollectionViewController.checkIfNearBottom()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x128))();
  if (v2)
  {
    v12 = v2;
    [v2 contentSize];
    v4 = v3;
    [v12 frame];
    Height = CGRectGetHeight(v14);
    [v12 contentOffset];
    v7 = v6;
    v8 = [v12 adjustedContentInset];
    v10 = v4 - (Height + v7 - v9);
    v11 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_isNearBottom);
    *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_isNearBottom) = v10 <= 100.0;
    if ((v11 & 1) == 0 && v10 <= 100.0 && *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_shouldFetchUpdatedContent) == 1)
    {
      (*((*v1 & *v0) + 0x348))(v8);
    }
  }
}

Swift::Void __swiftcall SuggestionCollectionViewController.pressedSegmentControl()()
{
  v1 = [*(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) selectedSegmentIndex];
  if (v1)
  {
    if (v1 != 1)
    {
      return;
    }

    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  SuggestionCollectionViewController.displaySuggestionsForSegment(segmentType:scrollToTop:)(&v4, 1);
  v3 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_privacyBadge);

  [v3 removeFromSuperview];
}

Swift::Void __swiftcall SuggestionCollectionViewController.didTapOKButton()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_onboardingOverlayView);
  if (v1)
  {
    [v1 removeFromSuperview];
  }

  [*(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) setEnabled_];
  v2 = v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_client;
  v3 = (v2 + *(type metadata accessor for Client(0) + 32));
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  v6 = one-time initialization token for momentsUI;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static DefaultsManager.momentsUI;
  if (static DefaultsManager.momentsUI)
  {
    MEMORY[0x21CE92100](v4, v5);

    v8 = MEMORY[0x21CE91FC0](0xD00000000000001FLL, 0x800000021657DAB0);

    [v7 setBool:1 forKey:v8];
  }

  else
  {
  }
}

Swift::Void __swiftcall SuggestionCollectionViewController.didTapLearnMore()()
{
  v1 = objc_allocWithZone(type metadata accessor for PrivacyViewController());
  v2 = PrivacyViewController.init()();
  [v2 setModalInPresentation_];
  [v0 presentViewController:v2 animated:1 completion:0];
}

Swift::Void __swiftcall SuggestionCollectionViewController.configureSegmentedControl()()
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl);
    v2 = objc_opt_self();
    v3 = v1;
    v4 = [v2 secondarySystemBackgroundColor];
    [v3 setBackgroundColor_];
  }
}

uint64_t SuggestionCollectionViewController.updateMessage()()
{
  v1[2] = v0;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](SuggestionCollectionViewController.updateMessage(), v3, v2);
}

{
  v1 = *(v0[2] + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  v0[6] = v1;
  if (v1)
  {
    v2 = *(*v1 + 656);

    v6 = (v2 + *v2);
    v3 = swift_task_alloc();
    v0[7] = v3;
    *v3 = v0;
    v3[1] = SuggestionCollectionViewController.updateMessage();

    return v6();
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

{
  if (*(v0 + 72) == 1)
  {
    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    __swift_project_value_buffer(v1, static CommonLogger.viewModel);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21607C000, v2, v3, "[SuggestionViewController] should show message", v4, 2u);
      MEMORY[0x21CE94770](v4, -1, -1);
    }

    v5 = *(v0 + 48);

    v14 = (*(*v5 + 1176) + **(*v5 + 1176));
    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = SuggestionCollectionViewController.updateMessage();

    return v14();
  }

  else
  {

    if (one-time initialization token for viewModel != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static CommonLogger.viewModel);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_21607C000, v9, v10, "[SuggestionViewController] should not show message", v11, 2u);
      MEMORY[0x21CE94770](v11, -1, -1);
    }

    v12 = *(v0 + 48);

    (*(*v12 + 1184))();
    SuggestionCollectionViewController.reloadDataSnapshot()();

    v13 = *(v0 + 8);

    return v13();
  }
}

{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x2822009F8](SuggestionCollectionViewController.updateMessage(), v3, v2);
}

{

  SuggestionCollectionViewController.reloadDataSnapshot()();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SuggestionCollectionViewController.updateMessage()(char a1)
{
  v2 = *v1;
  *(*v1 + 72) = a1;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);

  return MEMORY[0x2822009F8](SuggestionCollectionViewController.updateMessage(), v4, v3);
}

Swift::Void __swiftcall SuggestionCollectionViewController.reloadDataSnapshot()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy9MomentsUI31SuggestionCollectionViewSectionVAD0hJ5ModelCGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy9MomentsUI31SuggestionCollectionViewSectionVAD0hJ5ModelCGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v27 = &v26 - v4;
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  if (one-time initialization token for uiRendering != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v12, static CommonSignposter.uiRendering);
  OSSignposter.logHandle.getter();
  OSSignpostID.init(log:)();
  v13 = OSSignposter.logHandle.getter();
  v14 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v15 = swift_slowAlloc();
    v26 = v0;
    v16 = v5;
    v17 = v3;
    v18 = v2;
    v19 = v15;
    *v15 = 0;
    v20 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v13, v14, v20, "UIService_FetchCollectionViewReload", "", v19, 2u);
    v21 = v19;
    v2 = v18;
    v3 = v17;
    v5 = v16;
    v1 = v26;
    MEMORY[0x21CE94770](v21, -1, -1);
  }

  (*(v6 + 16))(v9, v11, v5);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v22 = OSSignpostIntervalState.init(id:isOpen:)();
  v23 = (*((*MEMORY[0x277D85000] & *v1) + 0x110))();
  if (v23)
  {
    v24 = v23;
    v25 = v27;
    SuggestionCollectionViewController.createSnaphot()();
    dispatch thunk of UICollectionViewDiffableDataSource.apply(_:animatingDifferences:completion:)();

    (*(v3 + 8))(v25, v2);
  }

  $defer #1 () in SuggestionCollectionViewController.configureDataSource()(v22, "UIService_FetchCollectionViewReload");

  (*(v6 + 8))(v11, v5);
}

Swift::Void __swiftcall SuggestionCollectionViewController.updateTip()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  if (v1)
  {
    v2 = *(*v1 + 1192);

    v2(v3);
  }
}

Swift::Void __swiftcall SuggestionCollectionViewController.updateOnboardingOverlayView()()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  if (!v1)
  {
    return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_onboardingOverlayView);
  if (!v2)
  {
    return;
  }

  v3 = v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_client;
  v4 = &v3[*(type metadata accessor for Client(0) + 32)];
  v5 = *(v4 + 1);
  if (!v5)
  {
    return;
  }

  v6 = v0;
  v7 = *v4;
  v8 = *(*v1 + 920);

  v9 = v2;

  if (v8(v7, v5))
  {
    [v9 removeFromSuperview];
    v10 = v6;
    [*(v6 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl) setEnabled_];
    v11 = [v6 view];
    if (v11)
    {
      v12 = v11;
      [v11 addSubview_];

      v13 = [v10 view];
      if (v13)
      {
        v14 = v13;

        [v14 bringSubviewToFront_];

        UIView.fillSuper(horizontalMargin:verticalMargin:)(0.0, 0.0);

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v15 = [v9 removeFromSuperview];
  v16 = MEMORY[0x277D85000];
  v17 = (*((*MEMORY[0x277D85000] & *v6) + 0x3A0))(v15);
  (*((*v16 & *v6) + 0x3A8))(v17);
}

Swift::Void __swiftcall SuggestionCollectionViewController.postNotificationAuthorizationRequest()()
{
  specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
  if (v0)
  {
    v1 = specialized static DefaultsManager.MomentsUIDomain.intValueFor(_:)();
    if ((v2 & 1) != 0 || v1 < 1)
    {
      if (one-time initialization token for views != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static CommonLogger.views);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_21607C000, v11, v12, "[SuggestionCollectionViewController] Wait another sheet launch to post the notification TCC", v13, 2u);
        MEMORY[0x21CE94770](v13, -1, -1);
      }

      specialized static DefaultsManager.Notifications.incrementNotificationTCCDelayCount()();
    }

    else
    {
      v3 = objc_allocWithZone(MEMORY[0x277CE2028]);
      v4 = MEMORY[0x21CE91FC0](0xD000000000000026, 0x800000021657DB20);
      v5 = [v3 initWithBundleIdentifier_];

      aBlock[4] = closure #1 in SuggestionCollectionViewController.postNotificationAuthorizationRequest();
      aBlock[5] = 0;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
      aBlock[3] = &block_descriptor_16;
      v6 = _Block_copy(aBlock);
      [v5 requestAuthorizationWithOptions:6 completionHandler:v6];
      _Block_release(v6);
      specialized static DefaultsManager.Notifications.incrementNotificationTCCDelayCount()();
    }
  }

  else
  {
    if (one-time initialization token for views != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, static CommonLogger.views);
    oslog = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_21607C000, oslog, v8, "[SuggestionCollectionViewController] Notification schedule type already set", v9, 2u);
      MEMORY[0x21CE94770](v9, -1, -1);
    }
  }
}

void closure #1 in SuggestionCollectionViewController.postNotificationAuthorizationRequest()(char a1)
{
  if (one-time initialization token for views != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static CommonLogger.views);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&dword_21607C000, v3, v4, "[SuggestionCollectionViewController] Notification authorization, granted status: %{BOOL}d", v5, 8u);
    MEMORY[0x21CE94770](v5, -1, -1);
  }

  v6 = [objc_opt_self() currentDevice];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 1)
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
    if (a1)
    {
      v8.super.super.isa = NSNumber.init(integerLiteral:)(2).super.super.isa;
      v9.super.super.isa = NSNumber.init(integerLiteral:)(20).super.super.isa;
      v10.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_216597AD0;
      *(v11 + 32) = NSNumber.init(integerLiteral:)(3);
      *(v11 + 40) = NSNumber.init(integerLiteral:)(5);
      *(v11 + 48) = NSNumber.init(integerLiteral:)(7);
      v12 = objc_allocWithZone(NotificationScheduleItem);
      v13.super.isa = Array._bridgeToObjectiveC()().super.isa;

      v14 = [v12 initScheduleWithType:v8.super.super.isa hour:v9.super.super.isa minute:v10.super.super.isa weekdays:v13.super.isa];
    }

    else
    {
      v8.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
      v9.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
      v10.super.super.isa = NSNumber.init(integerLiteral:)(0).super.super.isa;
      v15 = objc_allocWithZone(NotificationScheduleItem);
      v13.super.isa = Array._bridgeToObjectiveC()().super.isa;
      v14 = [v15 initScheduleWithType:v8.super.super.isa hour:v9.super.super.isa minute:v10.super.super.isa weekdays:v13.super.isa];
    }

    v17 = v14;

    v16 = v17;
    if (v17)
    {
      if (one-time initialization token for shared != -1)
      {
        swift_once();
        v16 = v17;
      }

      v18 = v16;
      specialized NotificationHandlingManager.updateNotificationScheduleDefaults(with:)(v16);
    }
  }

  else
  {
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    specialized NotificationHandlingManager.setNotificationSchedulePostPhoneOnboarding(authorized:)(a1 & 1);
  }
}

void thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

Swift::Void __swiftcall SuggestionCollectionViewController.showPrivacyBadge()()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & *v0) + 0x128))();
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_privacyBadge);
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 removeFromSuperview];
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 addSubview_];

      [v3 adjustedContentInset];
      v8 = v7;
      v9 = [v0 traitCollection];
      v10 = [v9 horizontalSizeClass];

      if (v10 == 2)
      {
        v11 = 27.0;
      }

      else
      {
        v11 = 23.0;
      }

      v12 = [v0 traitCollection];
      v13 = [v12 horizontalSizeClass];

      v14 = 11.0;
      if (v13 == 2)
      {
        v14 = 15.0;
      }

      v15 = v8 + v14;
      v16 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_21658E180;
      v18 = [v4 leadingAnchor];
      v25 = v3;
      v19 = [v25 leadingAnchor];
      v20 = [v18 constraintEqualToAnchor:v19 constant:v11];

      *(v17 + 32) = v20;
      v21 = [v4 topAnchor];
      v22 = [v25 topAnchor];

      v23 = [v21 constraintEqualToAnchor:v22 constant:v15];
      *(v17 + 40) = v23;
      type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSLayoutConstraint, 0x277CCAAD0);
      isa = Array._bridgeToObjectiveC()().super.isa;

      [v16 activateConstraints_];

      (*((*v1 & *v4) + 0x90))();
    }

    else
    {
      __break(1u);
    }
  }
}

id SuggestionCollectionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = MEMORY[0x21CE91FC0](a1);
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void __swiftcall SuggestionCollectionViewController.createLayout()(UICollectionViewLayout *__return_ptr retstr)
{
  v2 = *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = MEMORY[0x277D84F90];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    v5[2] = v4;
    v5[3] = v3;
    v5[4] = v2;
    v6 = objc_allocWithZone(MEMORY[0x277D752B8]);
    v13[4] = partial apply for closure #1 in SuggestionCollectionViewController.createLayout();
    v13[5] = v5;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @guaranteed NSCollectionLayoutEnvironment) -> (@owned NSCollectionLayoutSection?);
    v13[3] = &block_descriptor_42;
    v7 = _Block_copy(v13);
    swift_retain_n();

    v8 = [v6 initWithSectionProvider_];
    _Block_release(v7);

    type metadata accessor for SectionDayBackgroundView();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v10 = v8;
    v11 = MEMORY[0x21CE91FC0](0xD000000000000017, 0x800000021657DBF0);
    [v10 registerClass:ObjCClassFromMetadata forDecorationViewOfKind:v11];
  }

  else
  {
    v12 = objc_allocWithZone(MEMORY[0x277D75300]);

    [v12 init];
  }
}

id closure #1 in SuggestionCollectionViewController.createLayout()(Class a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  swift_beginAccess();
  *(a4 + 16) = MEMORY[0x277D84F90];

  v81 = a5;
  v9 = (*(*a5 + 416))(v8);
  if ((a1 & 0x8000000000000000) != 0 || *(v9 + 16) <= a1 || (v10 = *(v9 + 16 * a1 + 32), , , (v11 = *(v10 + 16)) == 0))
  {
  }

  else
  {
    v78 = v10;
    v79 = a1;
    v12 = 0;
    v13 = (v10 + 49);
    do
    {
      if (*(v13 - 1) > 1u)
      {
        if (*(v13 - 1) == 2)
        {
          SuggestionCollectionViewController.mixedWidthSuggestionGroupLayout(groupIndex:layoutEnvironment:)(v12, a2);
          v40 = swift_beginAccess();
          MEMORY[0x21CE92260](v40);
          if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
          if (__OFADD__(v12++, 1))
          {
            __break(1u);
            goto LABEL_48;
          }
        }

        else
        {
          specialized SuggestionCollectionViewController.threeQuarterWidthSuggestionGroupLayout(layoutEnvironment:)(a2);
          v42 = swift_beginAccess();
          MEMORY[0x21CE92260](v42);
          if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          swift_endAccess();
        }
      }

      else
      {
        v87 = v12;
        v27 = *v13;
        if (*(v13 - 1))
        {
          if (v27 == 2)
          {
            v28 = 50.0;
          }

          else
          {
            v28 = 250.0;
          }

          v29 = objc_opt_self();
          v30 = [v29 estimatedDimension_];
          v31 = [v29 fractionalWidthDimension_];
          v32 = objc_opt_self();
          v83 = [v32 sizeWithWidthDimension:v31 heightDimension:v30];

          v33 = [objc_opt_self() itemWithLayoutSize_];
          v34 = [v29 fractionalWidthDimension_];
          v35 = [v32 sizeWithWidthDimension:v34 heightDimension:v30];

          v36 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_21658E180;
          *(v37 + 32) = v33;
          *(v37 + 40) = v33;
          type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem, 0x277CFB860);
          a1 = v33;
          isa = Array._bridgeToObjectiveC()().super.isa;

          v39 = [v36 horizontalGroupWithLayoutSize:v35 subitems:isa];
        }

        else
        {
          if (v27 == 2)
          {
            v14 = 50.0;
          }

          else
          {
            v14 = 275.0;
          }

          v15 = objc_opt_self();
          v16 = [v15 estimatedDimension_];
          v17 = [v15 fractionalWidthDimension_];
          v18 = objc_opt_self();
          v82 = [v18 sizeWithWidthDimension:v17 heightDimension:v16];

          v19 = [objc_opt_self() itemWithLayoutSize_];
          v20 = [v15 fractionalWidthDimension_];
          v21 = [v18 sizeWithWidthDimension:v20 heightDimension:v16];

          v22 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v23 = swift_allocObject();
          *(v23 + 16) = xmmword_21658E210;
          *(v23 + 32) = v19;
          type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem, 0x277CFB860);
          v24 = v19;
          a1 = Array._bridgeToObjectiveC()().super.isa;

          v25 = [v22 horizontalGroupWithLayoutSize:v21 subitems:a1];
        }

        v26 = swift_beginAccess();
        MEMORY[0x21CE92260](v26);
        if (*((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a4 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        swift_endAccess();
        v12 = v87;
      }

      v13 += 24;
      --v11;
    }

    while (v11);

    a1 = v79;
  }

  swift_beginAccess();
  v43 = *(a4 + 16);
  if (v43 >> 62)
  {
LABEL_48:
    if (__CocoaSet.count.getter() >= 1)
    {
      goto LABEL_33;
    }

    goto LABEL_49;
  }

  if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
LABEL_49:

    return 0;
  }

LABEL_33:
  v44 = objc_opt_self();
  v45 = [v44 fractionalWidthDimension_];
  v46 = [v44 estimatedDimension_];
  v47 = objc_opt_self();
  v48 = [v47 sizeWithWidthDimension:v45 heightDimension:v46];

  swift_beginAccess();
  v80 = a1;
  if (*(a4 + 16) >> 62)
  {
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem, 0x277CFB860);

    _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    swift_bridgeObjectRetain_n();
    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem, 0x277CFB860);
  }

  v49 = objc_opt_self();
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem, 0x277CFB860);
  v50 = Array._bridgeToObjectiveC()().super.isa;

  v51 = [v49 verticalGroupWithLayoutSize:v48 subitems:v50];

  v52 = 16.0;
  v53 = [objc_opt_self() fixedSpacing_];
  [v51 setInterItemSpacing_];

  v54 = [objc_opt_self() sectionWithGroup_];
  v55 = (*v81 + 840);
  v56 = *v55;
  if ((*v55)())
  {
    v88 = v48;
    v89 = MEMORY[0x277D84F90];
    v57 = [v44 fractionalWidthDimension_];
    v58 = [v44 estimatedDimension_];
    v59 = [v47 sizeWithWidthDimension:v57 heightDimension:v58];

    v60 = *MEMORY[0x277D767D8];
    v61 = objc_opt_self();
    v84 = v59;
    v62 = [v61 boundarySupplementaryItemWithLayoutSize:v59 elementKind:v60 alignment:1];
    MEMORY[0x21CE92260]();
    if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    if ((*(*v81 + 1024))(v80))
    {
      v63 = [v44 fractionalWidthDimension_];
      v64 = [v44 estimatedDimension_];
      v65 = [v47 sizeWithWidthDimension:v63 heightDimension:v64];

      v66 = [v61 boundarySupplementaryItemWithLayoutSize:v65 elementKind:*MEMORY[0x277D767D0] alignment:5];
      MEMORY[0x21CE92260]();
      if (*((v89 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v89 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v67 = objc_opt_self();
    v68 = MEMORY[0x21CE91FC0](0xD000000000000017, 0x800000021657DBF0);
    v69 = [v67 backgroundDecorationItemWithElementKind_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v70 = swift_allocObject();
    *(v70 + 16) = xmmword_21658E210;
    *(v70 + 32) = v69;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutDecorationItem, 0x277CFB838);
    v71 = v69;
    v72 = Array._bridgeToObjectiveC()().super.isa;

    [v54 setDecorationItems_];

    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutBoundarySupplementaryItem, 0x277CFB830);
    v73 = Array._bridgeToObjectiveC()().super.isa;

    [v54 setBoundarySupplementaryItems_];

    v48 = v88;
  }

  if (v56())
  {
    v52 = 32.0;
  }

  v74 = [Strong traitCollection];
  v75 = [v74 horizontalSizeClass];

  v76 = 12.0;
  if (v75 != 2)
  {
    v76 = 8.0;
  }

  [v54 setContentInsets_];

  return v54;
}

NSCollectionLayoutGroup __swiftcall SuggestionCollectionViewController.halfWidthSuggestionGroupLayout(isList:)(Swift::Bool isList)
{
  if (isList)
  {
    v1 = 50.0;
  }

  else
  {
    v1 = 250.0;
  }

  v2 = objc_opt_self();
  v3 = [v2 estimatedDimension_];
  v4 = [v2 fractionalWidthDimension_];
  v5 = objc_opt_self();
  v6 = [v5 sizeWithWidthDimension:v4 heightDimension:v3];

  v7 = [objc_opt_self() itemWithLayoutSize_];
  v8 = [v2 fractionalWidthDimension_];
  v9 = [v5 sizeWithWidthDimension:v8 heightDimension:v3];

  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21658E180;
  *(v11 + 32) = v7;
  *(v11 + 40) = v7;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem, 0x277CFB860);
  v12 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v10 horizontalGroupWithLayoutSize:v9 subitems:isa];

  return v14;
}

NSCollectionLayoutGroup __swiftcall SuggestionCollectionViewController.fullWidthSuggestionGroupLayout(isList:)(Swift::Bool isList)
{
  if (isList)
  {
    v1 = 50.0;
  }

  else
  {
    v1 = 275.0;
  }

  v2 = objc_opt_self();
  v3 = [v2 estimatedDimension_];
  v4 = [v2 fractionalWidthDimension_];
  v5 = objc_opt_self();
  v6 = [v5 sizeWithWidthDimension:v4 heightDimension:v3];

  v7 = [objc_opt_self() itemWithLayoutSize_];
  v8 = [v2 fractionalWidthDimension_];
  v9 = [v5 sizeWithWidthDimension:v8 heightDimension:v3];

  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_21658E210;
  *(v11 + 32) = v7;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem, 0x277CFB860);
  v12 = v7;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v10 horizontalGroupWithLayoutSize:v9 subitems:isa];

  return v14;
}

id SuggestionCollectionViewController.mixedWidthSuggestionGroupLayout(groupIndex:layoutEnvironment:)(char a1, void *a2)
{
  v4 = objc_opt_self();
  v5 = [v4 estimatedDimension_];
  v6 = [v2 traitCollection];
  v7 = [v6 horizontalSizeClass];

  [objc_msgSend(a2 container)];
  v9 = v8;
  swift_unknownObjectRelease();
  v10 = 24.0;
  if (v7 != 2)
  {
    v10 = 16.0;
  }

  v11 = v9 - v10 - ((v9 - v10 + -32.0) / 3.0 + (v9 - v10 + -32.0) / 3.0 + 16.0);
  v12 = [v4 absoluteDimension_];
  v13 = objc_opt_self();
  v14 = [v13 sizeWithWidthDimension:v12 heightDimension:v5];

  v15 = objc_opt_self();
  v16 = [v15 itemWithLayoutSize_];
  v17 = [v4 absoluteDimension_];
  v18 = [v13 sizeWithWidthDimension:v17 heightDimension:v5];

  v19 = [v15 itemWithLayoutSize_];
  v20 = [v4 fractionalWidthDimension_];
  v21 = [v13 sizeWithWidthDimension:v20 heightDimension:v5];

  v22 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21658E180;
  if (a1)
  {
    v24 = v19;
  }

  else
  {
    v24 = v16;
  }

  if (a1)
  {
    v25 = v16;
  }

  else
  {
    v25 = v19;
  }

  *(v23 + 32) = v24;
  *(v23 + 40) = v25;
  type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for NSCollectionLayoutItem, 0x277CFB860);
  v26 = v16;
  v27 = v19;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v29 = [v22 horizontalGroupWithLayoutSize:v21 subitems:isa];

  return v29;
}

uint64_t closure #1 in SuggestionCollectionViewController.configureDataSource()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v25 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v17 = *(Strong + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  v18 = Strong;

  if (!v17)
  {
    goto LABEL_16;
  }

  v19 = IndexPath.section.getter();
  v20 = v17;
  v21 = (*(*v17 + 416))();

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v19 >= *(v21 + 16))
  {
LABEL_13:
    __break(1u);
LABEL_14:
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v20 = *(v21 + 16 * v19 + 40);

  if (v20 >> 62)
  {
    goto LABEL_14;
  }

  result = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_15:

LABEL_16:
    (*(v13 + 56))(v11, 1, 1, v12);
    return outlined destroy of UTType?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

LABEL_7:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x21CE93180](0, v20);

    outlined init with copy of DateInterval?(v24 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    swift_unknownObjectRelease();
  }

  else
  {
    if (!*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v23 = *(v20 + 32);

    outlined init with copy of DateInterval?(v23 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_startDate, v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  }

  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    (*(v13 + 32))(v15, v11, v12);
    (*(v13 + 16))(v9, v15, v12);
    (*(v13 + 56))(v9, 0, 1, v12);
    (*((*MEMORY[0x277D85000] & *a1) + 0x68))(v9);
    return (*(v13 + 8))(v15, v12);
  }

  return outlined destroy of UTType?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t closure #2 in SuggestionCollectionViewController.configureDataSource()(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  (*(v9 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v8);
  v11 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  (*(v9 + 32))(v12 + v11, &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
  v13 = *((*MEMORY[0x277D85000] & *a1) + 0x68);

  return v13(partial apply for closure #1 in closure #2 in SuggestionCollectionViewController.configureDataSource(), v12);
}

void closure #1 in closure #2 in SuggestionCollectionViewController.configureDataSource()(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
    v3 = Strong;

    if (v2)
    {
      v4 = IndexPath.section.getter();
      (*(*v2 + 1032))(v4);
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    SuggestionCollectionViewController.reloadDataSnapshot()();
  }
}

uint64_t closure #3 in SuggestionCollectionViewController.configureDataSource()(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  type metadata accessor for MosaicSuggestionViewModel(0);
  v8 = swift_dynamicCastClass();
  if (v8)
  {
    if (*(v8 + OBJC_IVAR____TtC9MomentsUI25MosaicSuggestionViewModel_isListItem) == 1)
    {
      type metadata accessor for SuggestionListCollectionViewCell();
    }

    else
    {
      type metadata accessor for MosaicCollectionViewCell();
    }
  }

  else
  {
    type metadata accessor for EvergreenSuggestionViewModel(0);
    if (swift_dynamicCastClass())
    {
      type metadata accessor for EvergreenCollectionViewCell();
    }

    else
    {
      type metadata accessor for MessageSuggestionViewModel(0);
      if (swift_dynamicCastClass())
      {
        type metadata accessor for MessageCollectionViewCell();
      }

      else
      {
        type metadata accessor for TipSuggestionViewModel(0);
        if (!swift_dynamicCastClass())
        {
          return 0;
        }

        type metadata accessor for TipCollectionViewCell();
      }
    }
  }

  v9 = UICollectionView.dequeueConfiguredReusableCell<A, B>(using:for:item:)();

  return v9;
}

uint64_t closure #4 in SuggestionCollectionViewController.configureDataSource()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v8 == a3)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      if (static String._unconditionallyBridgeFromObjectiveC(_:)() == a2 && v11 == a3)
      {

LABEL_16:
        type metadata accessor for ShowMoreFooterView();
        return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v13)
      {
        goto LABEL_16;
      }
    }
  }

  type metadata accessor for SectionDateHeaderView(0);
  return UICollectionView.dequeueConfiguredReusableSupplementary<A>(using:for:)();
}

double SuggestionCollectionViewController.createSnaphot()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9MomentsUI31SuggestionCollectionViewSectionVSgMd, &_s9MomentsUI31SuggestionCollectionViewSectionVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v18 - v2;
  v4 = type metadata accessor for SuggestionCollectionViewSection(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SuggestionViewModel(0);
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type SuggestionCollectionViewSection and conformance SuggestionCollectionViewSection, type metadata accessor for SuggestionCollectionViewSection, &protocol conformance descriptor for SuggestionCollectionViewSection);
  _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type SuggestionViewModel and conformance SuggestionViewModel, type metadata accessor for SuggestionViewModel, &protocol conformance descriptor for SuggestionViewModel);
  v19 = v4;
  NSDiffableDataSourceSnapshot.init()();
  SuggestionCollectionViewController.createSections()();
  v8 = *((*MEMORY[0x277D85000] & *v0) + 0x140);
  v9._rawValue = v8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s5UIKit28NSDiffableDataSourceSnapshotVy9MomentsUI31SuggestionCollectionViewSectionVAD0hJ5ModelCGMd, &_s5UIKit28NSDiffableDataSourceSnapshotVy9MomentsUI31SuggestionCollectionViewSectionVAD0hJ5ModelCGMR);
  NSDiffableDataSourceSnapshot.appendSections(_:)(v9);

  v11 = (v8)(v10);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = *(v5 + 80);
    v18 = v11;
    v14 = v11 + ((v13 + 32) & ~v13);
    v15 = *(v5 + 72);
    v16 = (v5 + 56);
    do
    {
      outlined init with copy of Client(v14, v7, type metadata accessor for SuggestionCollectionViewSection);
      outlined init with take of SuggestionCollectionViewSection(v7, v3, type metadata accessor for SuggestionCollectionViewSection);
      (*v16)(v3, 0, 1, v19);

      NSDiffableDataSourceSnapshot.appendItems(_:toSection:)();

      outlined destroy of UTType?(v3, &_s9MomentsUI31SuggestionCollectionViewSectionVSgMd, &_s9MomentsUI31SuggestionCollectionViewSectionVSgMR);
      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return result;
}

Swift::Void __swiftcall SuggestionCollectionViewController.createSections()()
{
  v1 = v0;
  v24 = type metadata accessor for SuggestionCollectionViewSection(0);
  v2 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277D85000] & *v0;
  v22 = *(v5 + 0x150);
  v23 = v5 + 336;
  v6 = v22(v25);
  *v7 = MEMORY[0x277D84F90];

  v6(v25, 0);
  v8 = *(v1 + OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_viewModel);
  if (v8)
  {
    v9 = *(*v8 + 416);

    v21 = v9();
    v10 = *(v21 + 16);
    if (v10)
    {
      v11 = (v21 + 40);
      do
      {
        v12 = *v11;

        UUID.init()();
        *&v4[*(v24 + 20)] = v12;
        v13 = v22(v25);
        v15 = v14;
        v16 = *v14;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v15 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16);
          *v15 = v16;
        }

        v19 = v16[2];
        v18 = v16[3];
        if (v19 >= v18 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16);
          *v15 = v16;
        }

        v16[2] = v19 + 1;
        outlined init with take of SuggestionCollectionViewSection(v4, v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v19, type metadata accessor for SuggestionCollectionViewSection);
        v13(v25, 0);
        v11 += 2;
        --v10;
      }

      while (v10);
    }
  }
}

uint64_t $defer #1 () in SuggestionCollectionViewController.configureDataSource()(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = type metadata accessor for OSSignpostError();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OSSignpostID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for uiRendering != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v10, static CommonSignposter.uiRendering);
  v11 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v12 = static os_signpost_type_t.end.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {

    checkForErrorAndConsumeState(state:)();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_21607C000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x21CE94770](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t $defer #1 () in SuggestionCollectionViewController.displaySuggestionsForSegment(segmentType:scrollToTop:)(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = type metadata accessor for OSSignpostError();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for uiRendering != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v13, static CommonSignposter.uiRendering);
  v14 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v19 = static os_signpost_type_t.end.getter();
  result = OS_os_log.signpostsEnabled.getter();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      checkForErrorAndConsumeState(state:)();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x277D85B00])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_21607C000, v14, v19, v18, a1, v16, v17, 2u);
      MEMORY[0x21CE94770](v17, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t closure #1 in SuggestionCollectionViewController.presentInterstitial(for:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v27 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v28 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v27 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v27 - v18;
  (*(**a1 + 184))(v17);
  (*(v5 + 16))(v16, a2, v4);
  (*(v5 + 56))(v16, 0, 1, v4);
  v20 = *(v8 + 56);
  outlined init with copy of DateInterval?(v19, v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined init with copy of DateInterval?(v16, &v10[v20], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v21 = *(v5 + 48);
  if (v21(v10, 1, v4) != 1)
  {
    outlined init with copy of DateInterval?(v10, v28, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (v21(&v10[v20], 1, v4) != 1)
    {
      v23 = &v10[v20];
      v24 = v27;
      (*(v5 + 32))(v27, v23, v4);
      _s10Foundation4UUIDVACSHAAWlTm_3(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v5 + 8);
      v25(v24, v4);
      outlined destroy of UTType?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of UTType?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v25(v28, v4);
      outlined destroy of UTType?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return v22 & 1;
    }

    outlined destroy of UTType?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of UTType?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v5 + 8))(v28, v4);
    goto LABEL_6;
  }

  outlined destroy of UTType?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of UTType?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v21(&v10[v20], 1, v4) != 1)
  {
LABEL_6:
    outlined destroy of UTType?(v10, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v22 = 0;
    return v22 & 1;
  }

  outlined destroy of UTType?(v10, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v22 = 1;
  return v22 & 1;
}

uint64_t specialized Sequence.first(where:)(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = __CocoaSet.count.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x21CE93180](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

void SuggestionCollectionViewController.presentInterstitial(with:entryPoint:)(uint64_t a1, unsigned __int8 *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v95 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v106 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Client(0);
  v12 = MEMORY[0x28223BE20](v109);
  v103 = v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v108 = v95 - v14;
  v102 = type metadata accessor for EngagementEvent(0);
  v15 = MEMORY[0x28223BE20](v102);
  v101 = (v95 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v104 = v95 - v17;
  v107 = *a2;
  v18 = [v2 navigationItem];
  [v18 setBackButtonDisplayMode_];

  v19 = [v2 navigationController];
  if (v19)
  {
    v20 = v19;
    v21 = [v19 navigationBar];

    v22 = [objc_opt_self() systemIndigoColor];
    [v21 setTintColor_];
  }

  v23 = [v3 traitCollection];
  v24 = [v23 horizontalSizeClass];

  v105 = v10;
  if (v24 != 1 || (v25 = [v3 sheetPresentationController]) == 0)
  {
    v40 = 0;
    v41 = 0;
    v42 = MEMORY[0x277D84F90];
    goto LABEL_34;
  }

  v99 = v3;
  v97 = v8;
  v100 = v25;
  v26 = [v25 detents];
  v95[1] = type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UISheetPresentationControllerDetent, 0x277D75A28);
  v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v98 = a1;
  v96 = v9;
  if (!(v27 >> 62))
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v28)
    {
      goto LABEL_7;
    }

    goto LABEL_33;
  }

LABEL_32:
  v28 = __CocoaSet.count.getter();
  if (!v28)
  {
LABEL_33:

    v40 = 0;
    v41 = 0;
    v42 = MEMORY[0x277D84F90];
    a1 = v98;
    v8 = v97;
    v9 = v96;
    v3 = v99;
LABEL_34:

    v59 = specialized InterstitialViewController.__allocating_init(suggestionViewModel:)(v58);
    if (!v59)
    {

      if (one-time initialization token for views != -1)
      {
        swift_once();
      }

      v64 = type metadata accessor for Logger();
      __swift_project_value_buffer(v64, static CommonLogger.views);
      v65 = Logger.logObject.getter();
      v66 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = v40;
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&dword_21607C000, v65, v66, "[SuggestionCollectionViewController] Cannot construct interstitial view controller", v68, 2u);
        v69 = v68;
        v40 = v67;
        MEMORY[0x21CE94770](v69, -1, -1);
      }

      goto LABEL_52;
    }

    v60 = v59;
    v110 = v41;
    v111 = v40;
    v61 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_originalDetents;
    swift_beginAccess();
    *&v60[v61] = v42;

    v62 = a1;
    if (v107)
    {
      v63 = 2;
    }

    else
    {
      v63 = [*&v3[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl] selectedSegmentIndex] == 1;
    }

    v70 = v9;
    v71 = OBJC_IVAR____TtC9MomentsUI26InterstitialViewController_currentUiContainer;
    swift_beginAccess();
    v60[v71] = v63;
    v72 = [v3 navigationController];
    if (v72)
    {
      v73 = v72;
      [v72 pushViewController:v60 animated:1];
    }

    v74 = [*&v3[OBJC_IVAR____TtC9MomentsUI34SuggestionCollectionViewController_suggestionSegmentedControl] selectedSegmentIndex] == 1;
    v75 = *(*v62 + 280);
    v76 = v108;
    v75();
    v77 = (v76 + *(v109 + 32));
    v79 = *v77;
    v78 = v77[1];

    v80 = _s9MomentsUI6ClientVWOhTm_0(v76, type metadata accessor for Client);
    if (v78)
    {
      v81 = (*(*v62 + 256))(v80);
      if (v81)
      {
        v82 = v81;
        v108 = v79;
        v83 = *(v62 + OBJC_IVAR____TtC9MomentsUI19SuggestionViewModel_suggestionSubType);
        if (v83 == 65)
        {
        }

        else
        {
          v107 = v74;
          (*(*v62 + 184))();
          v84 = v105;
          if ((*(v105 + 48))(v8, 1, v70) == 1)
          {

            outlined destroy of UTType?(v8, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
            goto LABEL_51;
          }

          v85 = *(v84 + 32);
          v85(v106, v8, v70);
          v86 = v101;
          *v101 = v108;
          *(v86 + 8) = v78;
          *(v86 + 16) = v82;
          v87 = v102;
          v85((v86 + *(v102 + 24)), v106, v70);
          *(v86 + v87[7]) = v83;
          *(v86 + v87[8]) = 1;
          *(v86 + v87[9]) = v107;
          v88 = v104;
          v89 = outlined init with take of SuggestionCollectionViewSection(v86, v104, type metadata accessor for EngagementEvent);
          v90 = v103;
          (v75)(v89);
          v91 = (v90 + *(v109 + 24));
          v93 = *v91;
          v92 = v91[1];
          swift_unknownObjectRetain();
          _s9MomentsUI6ClientVWOhTm_0(v90, type metadata accessor for Client);
          if (v93)
          {
            ObjectType = swift_getObjectType();
            (*(v92 + 48))(v88, ObjectType, v92);

            swift_unknownObjectRelease();
            _s9MomentsUI6ClientVWOhTm_0(v88, type metadata accessor for EngagementEvent);
            goto LABEL_51;
          }

          _s9MomentsUI6ClientVWOhTm_0(v88, type metadata accessor for EngagementEvent);
        }
      }

      else
      {
      }
    }

LABEL_51:
    v41 = v110;
    v40 = v111;
LABEL_52:
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v40, v41);
    return;
  }

LABEL_7:
  v29 = 0;
  v110 = v27 & 0xC000000000000001;
  v111 = *MEMORY[0x277D76EC8];
  while (1)
  {
    if (v110)
    {
      v30 = MEMORY[0x21CE93180](v29, v27);
    }

    else
    {
      if (v29 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v30 = *(v27 + 8 * v29 + 32);
    }

    v31 = v30;
    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v33 = [v30 identifier];
    v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v36 = v35;
    if (v34 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v36 == v37)
    {
      break;
    }

    v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v39)
    {
      goto LABEL_22;
    }

    ++v29;
    if (v32 == v28)
    {
      goto LABEL_33;
    }
  }

LABEL_22:

  v43 = v100;
  [v100 setPrefersGrabberVisible_];
  v44 = [v43 detents];
  v42 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_21658E210;
  *(v45 + 32) = [objc_opt_self() largeDetent];
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v43 setDetents_];

  v47 = [v43 selectedDetentIdentifier];
  a1 = v98;
  v8 = v97;
  v9 = v96;
  v3 = v99;
  if (v47)
  {
    v48 = v47;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;
    if (v49 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v51 == v52)
    {

LABEL_27:

      v40 = 0;
      v41 = 0;
      goto LABEL_34;
    }

    v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v53)
    {
      goto LABEL_27;
    }
  }

  v41 = swift_allocObject();
  v54 = v100;
  *(v41 + 16) = v100;
  v55 = swift_allocObject();
  v111 = partial apply for closure #2 in SuggestionCollectionViewController.presentInterstitial(with:entryPoint:);
  *(v55 + 16) = partial apply for closure #2 in SuggestionCollectionViewController.presentInterstitial(with:entryPoint:);
  *(v55 + 24) = v41;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v55;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_51_0;
  v56 = _Block_copy(aBlock);
  v57 = v54;

  [v57 _animateChanges_completion_];

  _Block_release(v56);
  LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

  if ((v56 & 1) == 0)
  {
    v3 = v99;
    v40 = v111;
    goto LABEL_34;
  }

  __break(1u);
}