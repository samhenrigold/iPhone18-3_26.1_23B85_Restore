unint64_t sub_1B9ECCC3C()
{
  v2 = qword_1EBBE5388;
  if (!qword_1EBBE5388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE64A0, &qword_1B9EDFA38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5388);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECCCC4()
{
  v2 = qword_1EBBE5370;
  if (!qword_1EBBE5370)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE5370);
    return ObjCClassMetadata;
  }

  return v2;
}

void sub_1B9ECCD28(uint64_t a1, char a2, void *a3)
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30) - 8);
  v4 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v5 = (v3 + ((v4 + *(v11 + 64) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  sub_1B9EC9E80(a1, a2 & 1, a3, v3 + v4, v6, v7);
}

uint64_t block_copy_helper_295(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B9ECCE5C()
{
  v2 = qword_1EBBE64A8;
  if (!qword_1EBBE64A8)
  {
    sub_1B9ED891C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE64A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9ECCEE4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B9ECCF2C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v4 = sub_1B9ECCFA0();
  v5 = MEMORY[0x1E69E6530];

  return sub_1B9ECAD70(a1, a2, a3, v9, v10, v5, v4);
}

unint64_t sub_1B9ECCFA0()
{
  v2 = qword_1EBBE64B0;
  if (!qword_1EBBE64B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE64B0);
    return WitnessTable;
  }

  return v2;
}

void sub_1B9ECD050(void *a1, void *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30);
  v4 = v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80));

  sub_1B9EC5000(a1, a2, v4);
}

uint64_t block_copy_helper_365(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t block_copy_helper_371(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1B9ECD1A4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE64B8, &unk_1B9EDFA40);
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B9EC580C(a1, v3);
}

uint64_t block_copy_helper_377(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B9ECD28C()
{
  v2 = qword_1EBBE64C0[0];
  if (!qword_1EBBE64C0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EBBE64C0);
    return WitnessTable;
  }

  return v2;
}

id sub_1B9ECD32C()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for SFUIShareSheetRemoteSettingsHelperSwift();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

uint64_t static SFUIShareSheetRemoteSettingsHelperSwift.updateHostingController(hostingController:context:hostProcessType:hostPresentationStyle:optionGroups:collaborationOptionsData:cloudShareRequest:isSLMEnabled:presentationDirectionType:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, int a8, uint64_t a9)
{
  v47 = a8;
  v46 = a7;
  v45 = a6;
  v44 = a5;
  v43 = a4;
  v42 = a3;
  v41 = a2;
  v51 = a9;
  v36[4] = a9;
  v37 = a8;
  v38 = 0;
  v67 = 0;
  v66 = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE64D8, &qword_1B9EDFA98);
  v39 = (*(*(v10 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10 - 8, v11, v12);
  v55 = v36 - v39;
  v40 = v36 - v39;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE64E0, &unk_1B9EDFAA0);
  v48 = v56;
  v49 = *(v56 - 8);
  v54 = v49;
  v50 = v49;
  MEMORY[0x1EEE9AC00](v56 - 8, v41, v42);
  v53 = v36 - v13;
  v67 = v36 - v13;
  v66 = a1;
  v65 = v14;
  v64 = v15;
  v63 = v16;
  v62 = v17;
  v61 = v18;
  v60 = v19;
  v59 = v20;
  v58 = v51;
  v57 = v52;
  sub_1B9ED8E1C();
  if ((*(v54 + 48))(v55, 1, v56) == 1)
  {
    return sub_1B9E512F4(v40);
  }

  v21 = v53;
  (*(v50 + 32))(v53, v40, v48);
  v22 = v41;

  v23 = v45;
  v24 = v46;
  v36[3] = v36;
  MEMORY[0x1EEE9AC00](v36, v25, v26);
  v27 = v37;
  v28 = v46;
  v29 = v41;
  v36[1] = v36;
  v36[2] = &v36[-12];
  v36[-10] = v21;
  v36[-9] = v29;
  v36[-8] = v30;
  v36[-7] = v31;
  v36[-6] = v32;
  v36[-5] = v33;
  v36[-4] = v28;
  LOBYTE(v36[-3]) = v27 & 1;
  v36[-2] = v34;
  swift_getOpaqueTypeConformance2();
  sub_1B9ED863C();

  return (*(v50 + 8))(v53, v48);
}

uint64_t sub_1B9ECD774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9)
{
  MEMORY[0x1E69E5928](a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE64E0, &unk_1B9EDFAA0);
  swift_getOpaqueTypeConformance2();
  sub_1B9ED166C();
  sub_1B9ED16D0();
  sub_1B9ED867C();
  sub_1B9E941F0();
  sub_1B9ED174C();
  sub_1B9ED864C();
  sub_1B9ED17C8();
  sub_1B9ED864C();
  type metadata accessor for SHSheetOptionGroups();

  SHSheetOptionGroups.__allocating_init(groups:)(a5);
  sub_1B9ED1844();
  sub_1B9ED865C();
  type metadata accessor for SHSheetCollaborationOptions();
  MEMORY[0x1E69E5928](a6);
  SHSheetCollaborationOptions.__allocating_init(shareOptionsData:)(a6);
  sub_1B9ED18C0();
  sub_1B9ED867C();
  type metadata accessor for SHSheetCloudSharingRequest();
  MEMORY[0x1E69E5928](a7);
  SHSheetCloudSharingRequest.__allocating_init(request:)(a7);
  sub_1B9ED193C();
  sub_1B9ED867C();
  sub_1B9ED19B8();
  sub_1B9ED866C();
  sub_1B9ED1A34();
  return sub_1B9ED864C();
}

uint64_t static SFUIShareSheetRemoteSettingsHelperSwift.updateHostingController(hostingController:sessionIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v18 = a2;
  v33 = 0;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE64D8, &qword_1B9EDFA98);
  v16 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4 - 8, v5, v6);
  v27 = v15 - v16;
  v17 = v15 - v16;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE64E0, &unk_1B9EDFAA0);
  v20 = v28;
  v21 = *(v28 - 8);
  v26 = v21;
  v22 = v21;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v28 - 8, v18, v19);
  v25 = v15 - v23;
  v33 = v15 - v23;
  v32 = a1;
  v30 = v7;
  v31 = v8;
  v29 = v24;
  sub_1B9ED8E1C();
  if ((*(v26 + 48))(v27, 1, v28) == 1)
  {
    return sub_1B9E512F4(v17);
  }

  v9 = v25;
  (*(v22 + 32))(v25, v17, v20);

  v15[1] = v15;
  MEMORY[0x1EEE9AC00](v15, v10, v11);
  v12 = v18;
  v15[0] = &v15[-6];
  v15[-4] = v9;
  v15[-3] = v12;
  v15[-2] = v13;
  swift_getOpaqueTypeConformance2();
  sub_1B9ED863C();

  return (*(v22 + 8))(v25, v20);
}

uint64_t sub_1B9ECE024(uint64_t a1, uint64_t a2, uint64_t a3)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE64E0, &unk_1B9EDFAA0);
  swift_getOpaqueTypeConformance2();
  sub_1B9ED1434();
  sub_1B9ED14B0();
  sub_1B9ED1544();
  sub_1B9ED15D8();
  return sub_1B9ED864C();
}

id SFUIShareSheetRemoteSettingsHelperSwift.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFUIShareSheetRemoteSettingsHelperSwift();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B9ECE238@<X0>(uint64_t *a1@<X8>)
{
  result = static SHSheetRemoteSetting.ClientContext.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9ECE278@<X0>(uint64_t *a1@<X8>)
{
  result = static SHSheetRemoteSetting.HostProcessType.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9ECE2B8@<X0>(uint64_t *a1@<X8>)
{
  result = static SHSheetRemoteSetting.HostPresentationStyle.defaultValue.getter();
  *a1 = result;
  return result;
}

id sub_1B9ECE2E4()
{
  type metadata accessor for SHSheetOptionGroups();
  result = SHSheetOptionGroups.__allocating_init(groups:)(0);
  qword_1EBBE5420 = result;
  return result;
}

uint64_t *sub_1B9ECE328()
{
  if (qword_1EBBE5418 != -1)
  {
    swift_once();
  }

  return &qword_1EBBE5420;
}

uint64_t static SHSheetRemoteSetting.OptionGroups.defaultValue.getter()
{
  v0 = sub_1B9ECE328();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

uint64_t sub_1B9ECE3C0@<X0>(uint64_t *a1@<X8>)
{
  result = static SHSheetRemoteSetting.OptionGroups.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9ECE400@<X0>(uint64_t *a1@<X8>)
{
  result = static SHSheetRemoteSetting.CollaborationOptions.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9ECE440@<X0>(uint64_t *a1@<X8>)
{
  result = static SHSheetRemoteSetting.CloudShareRequest.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B9ECE484@<X0>(_BYTE *a1@<X8>)
{
  result = static SHSheetRemoteSetting.HostSLMEnabled.defaultValue.getter();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1B9ECE4CC@<X0>(uint64_t *a1@<X8>)
{
  result = static SHSheetRemoteSetting.SessionIdentifier.defaultValue.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1B9ECE510@<X0>(uint64_t *a1@<X8>)
{
  result = static SHSheetRemoteSetting.HostPresentationDirectionType.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t SHSheetCollaborationOptions.shareOptionsData.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC9SharingUI27SHSheetCollaborationOptions_shareOptionsData);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

char *SHSheetCollaborationOptions.init(shareOptionsData:)(uint64_t a1)
{
  v8 = 0;
  v6 = 0;
  v7 = a1;
  MEMORY[0x1E69E5928](a1);
  if (a1)
  {
    v6 = a1;
    MEMORY[0x1E69E5928](a1);
    *&v8[OBJC_IVAR____TtC9SharingUI27SHSheetCollaborationOptions_shareOptionsData] = a1;
    MEMORY[0x1E69E5920](a1);
    v5.receiver = v8;
    v5.super_class = type metadata accessor for SHSheetCollaborationOptions();
    v2 = objc_msgSendSuper2(&v5, sel_init);
    MEMORY[0x1E69E5928](v2);
    v8 = v2;
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](v8);
    return v2;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    type metadata accessor for SHSheetCollaborationOptions();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

double sub_1B9ECE6E0(void *a1)
{
  swift_getObjectType();
  v6 = *(v1 + OBJC_IVAR____TtC9SharingUI27SHSheetCollaborationOptions_shareOptionsData);
  MEMORY[0x1E69E5928](v6);
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  sub_1B9ED8B1C();
  v3 = sub_1B9ED8A9C();

  [a1 encodeObject:v4 forKey:v3];
  MEMORY[0x1E69E5920](v3);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

char *SHSheetCollaborationOptions.init(bsxpcCoder:)(void *a1)
{
  v21 = 0;
  v16 = 0;
  v20 = a1;
  swift_getObjectType();
  sub_1B9ECF59C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1B9ED8B1C();
  v11 = sub_1B9ED8A9C();

  v12 = [a1 decodeObjectOfClass:ObjCClassFromMetadata forKey:v11];
  MEMORY[0x1E69E5920](v11);
  if (v12)
  {
    sub_1B9ED8EDC();
    sub_1B9ECF63C(v13, &v17);
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0uLL;
    v18 = 0uLL;
  }

  v19[0] = v17;
  v19[1] = v18;
  if (*(&v18 + 1))
  {
    if (swift_dynamicCast())
    {
      v7 = v14;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    sub_1B9ECF600(v19);
    v8 = 0;
  }

  if (v8)
  {
    v16 = v8;
    v3 = v21;
    MEMORY[0x1E69E5928](v8);
    *&v3[OBJC_IVAR____TtC9SharingUI27SHSheetCollaborationOptions_shareOptionsData] = v8;
    MEMORY[0x1E69E5920](v8);
    v4 = v21;
    v1 = type metadata accessor for SHSheetCollaborationOptions();
    v15.receiver = v4;
    v15.super_class = v1;
    v5 = objc_msgSendSuper2(&v15, sel_init);
    MEMORY[0x1E69E5928](v5);
    v21 = v5;
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v21);
    return v5;
  }

  else
  {
    swift_unknownObjectRelease();
    type metadata accessor for SHSheetCollaborationOptions();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id SHSheetCollaborationOptions.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SHSheetCollaborationOptions();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SHSheetOptionGroups.groups.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC9SharingUI19SHSheetOptionGroups_groups);

  return v2;
}

id SHSheetOptionGroups.init(groups:)(uint64_t a1)
{
  v6 = 0;
  v5 = a1;

  *OBJC_IVAR____TtC9SharingUI19SHSheetOptionGroups_groups = a1;
  v4.receiver = v6;
  v4.super_class = type metadata accessor for SHSheetOptionGroups();
  v3 = objc_msgSendSuper2(&v4, sel_init);
  MEMORY[0x1E69E5928](v3);
  v6 = v3;

  MEMORY[0x1E69E5920](v6);
  return v3;
}

uint64_t sub_1B9ECEDF4(void *a1)
{
  swift_getObjectType();
  v8 = *(v1 + OBJC_IVAR____TtC9SharingUI19SHSheetOptionGroups_groups);

  if (v8)
  {
    sub_1B9ECF4D8();
    v5 = sub_1B9ED8BFC();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  sub_1B9ED8B1C();
  v3 = sub_1B9ED8A9C();

  [a1 encodeCollection:v4 forKey:v3];
  MEMORY[0x1E69E5920](v3);
  return swift_unknownObjectRelease();
}

char *SHSheetOptionGroups.init(bsxpcCoder:)(void *a1)
{
  v18 = 0;
  v16 = 0;
  v17 = a1;
  swift_getObjectType();
  sub_1B9ED07A4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1B9ECF4D8();
  v11 = swift_getObjCClassFromMetadata();
  sub_1B9ED8B1C();
  v12 = sub_1B9ED8A9C();

  v13 = [a1 decodeCollectionOfClass:ObjCClassFromMetadata containingClass:v11 forKey:v12];
  MEMORY[0x1E69E5920](v12);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6570, &qword_1B9EDFAB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6578, &qword_1B9EDFAB8);
    v1 = swift_dynamicCast();
    if (v1)
    {
      v7 = v14;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v16 = v8;
  v4 = v18;

  *&v4[OBJC_IVAR____TtC9SharingUI19SHSheetOptionGroups_groups] = v8;

  v5 = v18;
  v2 = type metadata accessor for SHSheetOptionGroups();
  v15.receiver = v5;
  v15.super_class = v2;
  v6 = objc_msgSendSuper2(&v15, sel_init);
  MEMORY[0x1E69E5928](v6);
  v18 = v6;
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v18);
  return v6;
}

id SHSheetOptionGroups.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SHSheetOptionGroups();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SHSheetCloudSharingRequest.request.getter()
{
  v2 = *(v0 + OBJC_IVAR____TtC9SharingUI26SHSheetCloudSharingRequest_request);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

id SHSheetCloudSharingRequest.init(request:)(uint64_t a1)
{
  v6 = 0;
  v5 = a1;
  MEMORY[0x1E69E5928](a1);
  *OBJC_IVAR____TtC9SharingUI26SHSheetCloudSharingRequest_request = a1;
  v4.receiver = v6;
  v4.super_class = type metadata accessor for SHSheetCloudSharingRequest();
  v3 = objc_msgSendSuper2(&v4, sel_init);
  MEMORY[0x1E69E5928](v3);
  v6 = v3;
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v6);
  return v3;
}

unint64_t sub_1B9ECF4D8()
{
  v2 = qword_1EBBE5368;
  if (!qword_1EBBE5368)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE5368);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9ECF59C()
{
  v2 = qword_1EBBE5348;
  if (!qword_1EBBE5348)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE5348);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1B9ECF600(void *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return a1;
}

__n128 sub_1B9ECF63C(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

double sub_1B9ECF658(void *a1)
{
  swift_getObjectType();
  v6 = *(v1 + OBJC_IVAR____TtC9SharingUI26SHSheetCloudSharingRequest_request);
  MEMORY[0x1E69E5928](v6);
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  sub_1B9ED8B1C();
  v3 = sub_1B9ED8A9C();

  [a1 encodeObject:v4 forKey:v3];
  MEMORY[0x1E69E5920](v3);
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

char *SHSheetCloudSharingRequest.init(bsxpcCoder:)(void *a1)
{
  v20 = 0;
  v15 = 0;
  v19 = a1;
  swift_getObjectType();
  sub_1B9ED0830();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1B9ED8B1C();
  v10 = sub_1B9ED8A9C();

  v11 = [a1 decodeObjectOfClass:ObjCClassFromMetadata forKey:v10];
  MEMORY[0x1E69E5920](v10);
  if (v11)
  {
    sub_1B9ED8EDC();
    sub_1B9ECF63C(v12, &v16);
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0uLL;
    v17 = 0uLL;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    if (swift_dynamicCast())
    {
      v6 = v13;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    sub_1B9ECF600(v18);
    v7 = 0;
  }

  v15 = v7;
  v3 = v20;
  MEMORY[0x1E69E5928](v7);
  *&v3[OBJC_IVAR____TtC9SharingUI26SHSheetCloudSharingRequest_request] = v7;
  MEMORY[0x1E69E5920](v7);
  v4 = v20;
  v1 = type metadata accessor for SHSheetCloudSharingRequest();
  v14.receiver = v4;
  v14.super_class = v1;
  v5 = objc_msgSendSuper2(&v14, sel_init);
  MEMORY[0x1E69E5928](v5);
  v20 = v5;
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v20);
  return v5;
}

id SHSheetCloudSharingRequest.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SHSheetCloudSharingRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B9ECFC48(uint64_t (*a1)(uint64_t *, uint64_t), uint64_t a2, unsigned int a3)
{
  if (a3 < 0x80uLL)
  {
    if (a3 > 0xFF)
    {
      goto LABEL_12;
    }

    v5 = (a3 + 1);
  }

  else
  {
    v7 = (a3 & 0x3F) << 8;
    if (a3 >> 6 < 0x20uLL)
    {
      v5 = (v7 | (a3 >> 6)) + 33217;
    }

    else
    {
      v6 = (v7 | (a3 >> 6) & 0x3F) << 8;
      if (a3 >> 12 < 0x10uLL)
      {
        v5 = (v6 | (a3 >> 12)) + 8487393;
      }

      else
      {
        v5 = ((a3 >> 18) | ((v6 | (a3 >> 12) & 0x3F) << 8)) - 2122219023;
      }
    }
  }

  v4 = 4 - (__clz(v5) >> 3);
  v9 = (v5 - 0x101010101010101) & ((1 << ((8 * v4) & 0x3F)) - 1);
  sub_1B9ED8D2C();
  if ((v4 & 0x8000000000000000) == 0)
  {
    return a1(&v9, v4);
  }

  sub_1B9ED904C();
  __break(1u);
LABEL_12:
  result = sub_1B9ED8FFC();
  __break(1u);
  return result;
}

uint64_t sub_1B9ECFF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10)
{
  v27 = a8;
  v28 = a7;
  v29 = a6;
  v30 = a4;
  v31 = a3;
  v32 = a2;
  v33 = a1;
  v34 = a9;
  v35 = a10;
  v36 = 0;
  v38 = a6;
  v39 = a7;
  v40 = a1;
  v41 = a2;
  v42 = a8;
  v43 = a10;
  if (a5)
  {
    if (!HIDWORD(v31))
    {
      v26 = v31;
      if ((v31 >> 11 < 0x1B || v26 >> 13 > 6) && HIWORD(v26) <= 0x10u)
      {
        v10 = v36;
        v24 = v17;
        MEMORY[0x1EEE9AC00](v17, a2, v26);
        v15 = sub_1B9ED13EC;
        v16 = &v37;
        sub_1B9ECFC48(sub_1B9ED1408, &v13, v11);
        return v10;
      }

      LODWORD(v15) = 0;
      v14 = 148;
      LOBYTE(v13) = 2;
      sub_1B9ED8FFC();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 3053;
    LOBYTE(v13) = 2;
    sub_1B9ED8FFC();
    __break(1u);
  }

  if (v31)
  {
    v23 = v31;
    if ((v30 & 0x8000000000000000) == 0)
    {
      if (v29)
      {
        v22 = v29;
      }

      else
      {
        LODWORD(v15) = 0;
        v14 = 268;
        LOBYTE(v13) = 2;
        sub_1B9ED8FFC();
        __break(1u);
      }

      v21 = v22;
      if (v28 >= 0xFFFFFFFF80000000)
      {
        if (v28 <= 0x7FFFFFFF)
        {
          v20 = v28;
          if (v33)
          {
            v19 = v33;
          }

          else
          {
            LODWORD(v15) = 0;
            v14 = 269;
            LOBYTE(v13) = 2;
            sub_1B9ED8FFC();
            __break(1u);
          }

          v18 = v19;
          if (v32 >= 0xFFFFFFFF80000000)
          {
            if (v32 <= 0x7FFFFFFF)
            {
              v17[5] = v32;
              if (v30 >= 0xFFFFFFFF80000000)
              {
                if (v30 <= 0x7FFFFFFF)
                {
                  v17[4] = v30;
                  if (!HIDWORD(v27))
                  {
                    v17[3] = v27;
                    if (!HIDWORD(v35))
                    {
                      LODWORD(v15) = 0;
                      _swift_stdlib_reportUnimplementedInitializerInFile();
                      return v36;
                    }

                    LODWORD(v15) = 0;
                    v14 = 3053;
                    LOBYTE(v13) = 2;
                    sub_1B9ED8FFC();
                    __break(1u);
                  }

                  LODWORD(v15) = 0;
                  v14 = 3053;
                  LOBYTE(v13) = 2;
                  sub_1B9ED8FFC();
                  __break(1u);
                }

                LODWORD(v15) = 0;
                v14 = 3268;
                LOBYTE(v13) = 2;
                sub_1B9ED8FFC();
                __break(1u);
              }

              LODWORD(v15) = 0;
              v14 = 3262;
              LOBYTE(v13) = 2;
              sub_1B9ED8FFC();
              __break(1u);
            }

            LODWORD(v15) = 0;
            v14 = 3268;
            LOBYTE(v13) = 2;
            sub_1B9ED8FFC();
            __break(1u);
          }

          LODWORD(v15) = 0;
          v14 = 3262;
          LOBYTE(v13) = 2;
          sub_1B9ED8FFC();
          __break(1u);
        }

        LODWORD(v15) = 0;
        v14 = 3268;
        LOBYTE(v13) = 2;
        sub_1B9ED8FFC();
        __break(1u);
      }

      LODWORD(v15) = 0;
      v14 = 3262;
      LOBYTE(v13) = 2;
      sub_1B9ED8FFC();
      __break(1u);
    }

    LODWORD(v15) = 0;
    v14 = 1410;
    LOBYTE(v13) = 2;
    sub_1B9ED904C();
    __break(1u);
  }

  result = sub_1B9ED8FFC();
  __break(1u);
  return result;
}

unint64_t sub_1B9ED07A4()
{
  v2 = qword_1EBBE5338;
  if (!qword_1EBBE5338)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE5338);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9ED0830()
{
  v2 = qword_1EBBE5358;
  if (!qword_1EBBE5358)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE5358);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for SHSheetRemoteSetting(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *storeEnumTagSinglePayload for SHSheetRemoteSetting(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B9ED0ED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  if (!a3)
  {
    sub_1B9ED8FFC();
    __break(1u);
  }

  if (a4 >= 0xFFFFFFFF80000000)
  {
    if (a4 <= 0x7FFFFFFF)
    {
      if (!a5)
      {
        sub_1B9ED8FFC();
        __break(1u);
      }

      if (a6 >= 0xFFFFFFFF80000000)
      {
        if (a6 <= 0x7FFFFFFF)
        {
          if (!a1)
          {
            sub_1B9ED8FFC();
            __break(1u);
          }

          if (a2 >= 0xFFFFFFFF80000000)
          {
            if (a2 <= 0x7FFFFFFF)
            {
              if (a7 <= 0xFFFFFFFF)
              {
                if (a8 <= 0xFFFFFFFF)
                {
                  return _swift_stdlib_reportUnimplementedInitializerInFile();
                }

                sub_1B9ED8FFC();
                __break(1u);
              }

              sub_1B9ED8FFC();
              __break(1u);
            }

            sub_1B9ED8FFC();
            __break(1u);
          }

          sub_1B9ED8FFC();
          __break(1u);
        }

        sub_1B9ED8FFC();
        __break(1u);
      }

      sub_1B9ED8FFC();
      __break(1u);
    }

    sub_1B9ED8FFC();
    __break(1u);
  }

  result = sub_1B9ED8FFC();
  __break(1u);
  return result;
}

unint64_t sub_1B9ED1434()
{
  v2 = qword_1EBBE65F0;
  if (!qword_1EBBE65F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE65F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ED14B0()
{
  v2 = qword_1EBBE65F8;
  if (!qword_1EBBE65F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6600, qword_1B9EDFE60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE65F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ED1544()
{
  v2 = qword_1EBBE6608;
  if (!qword_1EBBE6608)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6600, qword_1B9EDFE60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6608);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ED15D8()
{
  v2 = qword_1EBBE6610;
  if (!qword_1EBBE6610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6600, qword_1B9EDFE60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6610);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ED166C()
{
  v2 = qword_1EBBE53A8;
  if (!qword_1EBBE53A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE53A8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9ED16D0()
{
  v2 = qword_1EBBE5400;
  if (!qword_1EBBE5400)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5400);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ED174C()
{
  v2 = qword_1EBBE53C8;
  if (!qword_1EBBE53C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE53C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ED17C8()
{
  v2 = qword_1EBBE53E0;
  if (!qword_1EBBE53E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE53E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ED1844()
{
  v2 = qword_1EBBE5408;
  if (!qword_1EBBE5408)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5408);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ED18C0()
{
  v2 = qword_1EBBE53D0;
  if (!qword_1EBBE53D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE53D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ED193C()
{
  v2 = qword_1EBBE53D8;
  if (!qword_1EBBE53D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE53D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ED19B8()
{
  v2 = qword_1EBBE53F0;
  if (!qword_1EBBE53F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE53F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ED1A34()
{
  v2 = qword_1EBBE53B8;
  if (!qword_1EBBE53B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE53B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9ED1AB0()
{
  v2 = *(v0 + OBJC_IVAR____TtC9SharingUI23SFUIContactIconProvider_avatarImageRenderer);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B9ED1B40()
{
  v2 = *(v0 + OBJC_IVAR____TtC9SharingUI23SFUIContactIconProvider_contactStore);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B9ED1B88()
{
  sub_1B9ED1BE0();
  result = sub_1B9ED8E5C();
  qword_1EBBE6620 = result;
  return result;
}

unint64_t sub_1B9ED1BE0()
{
  v2 = qword_1EBBE6650;
  if (!qword_1EBBE6650)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6650);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_1B9ED1C44()
{
  if (qword_1EBBE5D30 != -1)
  {
    swift_once();
  }

  return &qword_1EBBE6620;
}

uint64_t sub_1B9ED1CA4()
{
  v0 = sub_1B9ED1C44();
  v2 = *v0;
  MEMORY[0x1E69E5928](*v0);
  return v2;
}

uint64_t sub_1B9ED1CE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6658, &unk_1B9EDFE78);
  sub_1B9ED914C();
  v3 = v0;
  v6 = *MEMORY[0x1E695C278];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695C278]);
  sub_1B9ED8AAC();
  *v3 = sub_1B9ED8A9C();
  v5 = *MEMORY[0x1E695C270];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695C270]);
  sub_1B9ED8AAC();
  v3[1] = sub_1B9ED8A9C();
  v4 = *MEMORY[0x1E695C400];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695C400]);
  sub_1B9ED8AAC();
  v3[2] = sub_1B9ED8A9C();
  sub_1B9E8B398();
  v7 = v1;

  MEMORY[0x1E69E5920](v4);

  MEMORY[0x1E69E5920](v5);

  MEMORY[0x1E69E5920](v6);
  result = v7;
  qword_1EBBE6628 = v7;
  return result;
}

uint64_t *sub_1B9ED1E38()
{
  if (qword_1EBBE5D38 != -1)
  {
    swift_once();
  }

  return &qword_1EBBE6628;
}

uint64_t sub_1B9ED1E98()
{
  v1 = *sub_1B9ED1E38();

  return v1;
}

char *SFUIContactIconProvider.init(diameter:layoutDirection:)(uint64_t a1, double a2)
{
  v11 = 0;
  v10 = a2;
  v9 = a1;
  v4 = OBJC_IVAR____TtC9SharingUI23SFUIContactIconProvider_contactStore;
  sub_1B9ED204C();
  *v4 = sub_1B9E9CA54();
  v2 = [objc_opt_self() avatarImageRender];
  *&v11[OBJC_IVAR____TtC9SharingUI23SFUIContactIconProvider_avatarImageRenderer] = v2;
  *&v11[OBJC_IVAR____TtC9SharingUI23SFUIContactIconProvider_diameter] = a2;
  *&v11[OBJC_IVAR____TtC9SharingUI23SFUIContactIconProvider_layoutDirection] = a1;
  v8.receiver = v11;
  v8.super_class = type metadata accessor for SFUIContactIconProvider();
  v7 = objc_msgSendSuper2(&v8, sel_init);
  MEMORY[0x1E69E5928](v7);
  v11 = v7;
  MEMORY[0x1E69E5920](v7);
  return v7;
}

unint64_t sub_1B9ED204C()
{
  v2 = qword_1EBBE6660;
  if (!qword_1EBBE6660)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6660);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B9ED20D8()
{
  v1[6] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[4] = 0;
  v1[5] = 0;
  v1[3] = v0;
  return MEMORY[0x1EEE6DFA0](sub_1B9ED211C);
}

uint64_t sub_1B9ED211C()
{
  v1 = *(v0 + 48);
  v9 = v1;
  *(v0 + 16) = v0;
  MEMORY[0x1E69E5928](v1);
  v11 = [v9 imageCache];
  MEMORY[0x1E69E5920](v9);
  v2 = sub_1B9ED1C44();
  v10 = *v2;
  MEMORY[0x1E69E5928](*v2);
  v12 = [v11 objectForKey_];
  MEMORY[0x1E69E5920](v10);
  v3 = MEMORY[0x1E69E5920](v11);
  if (v12)
  {
    v8[5] = v12;
    v4 = *(v8[2] + 8);

    return v4(v3);
  }

  else
  {
    sub_1B9ED2678();
    v7 = sub_1B9E9CA54();
    v8[7] = v7;
    v6 = swift_task_alloc();
    v8[8] = v6;
    *v6 = v8[2];
    v6[1] = sub_1B9ED2310;

    return sub_1B9ED37B0(v7);
  }
}

uint64_t sub_1B9ED2310(uint64_t a1)
{
  v5 = *v2;
  *(v5 + 16) = *v2;
  *(v5 + 72) = a1;
  *(v5 + 80) = v1;

  if (v1)
  {
    v3 = sub_1B9ED25D0;
  }

  else
  {

    v3 = sub_1B9ED2494;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B9ED2494()
{
  v8 = v0[9];
  v1 = v0[6];
  v7 = v1;
  v0[2] = v0;
  v0[4] = v8;
  MEMORY[0x1E69E5928](v1);
  v10 = [v7 imageCache];
  MEMORY[0x1E69E5920](v7);
  v2 = sub_1B9ED1C44();
  v9 = *v2;
  MEMORY[0x1E69E5928](*v2);
  [v10 setObject:v8 forKey:v9];
  MEMORY[0x1E69E5920](v9);
  v3 = MEMORY[0x1E69E5920](v10);
  v4 = v0[9];
  v5 = *(v0[2] + 8);

  return v5(v4, v3);
}

uint64_t sub_1B9ED25D0()
{
  v1 = *(v0 + 56);
  *(v0 + 16) = v0;
  v2 = MEMORY[0x1E69E5920](v1);
  v3 = *(*(v0 + 16) + 8);

  return v3(v5, v2);
}

unint64_t sub_1B9ED2678()
{
  v2 = qword_1EBBE6668;
  if (!qword_1EBBE6668)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6668);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B9ED26DC(uint64_t a1, uint64_t a2)
{
  v3[24] = v2;
  v3[23] = a2;
  v3[22] = a1;
  v3[14] = v3;
  v3[8] = 0;
  v3[9] = 0;
  v3[15] = 0;
  v3[16] = 0;
  v3[19] = 0;
  v3[20] = 0;
  v3[21] = 0;
  v3[8] = a1;
  v3[9] = a2;
  v3[15] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B9ED27CC);
}

uint64_t sub_1B9ED27CC()
{
  v1 = *(v0 + 192);
  v39 = v1;
  *(v0 + 112) = v0;
  MEMORY[0x1E69E5928](v1);
  v41 = [v39 imageCache];
  MEMORY[0x1E69E5920](v39);

  v40 = sub_1B9ED8A9C();
  v42 = [v41 objectForKey_];
  MEMORY[0x1E69E5920](v40);

  MEMORY[0x1E69E5920](v41);
  if (v42)
  {
    v38[21] = v42;
    sub_1B9E99CC0(0, 0);
    sub_1B9E99CC0(0, 0);
    v2 = *(v38[14] + 8);
    v3 = v42;

    return v2(v3);
  }

  v29 = v38[24];
  v25 = v38[23];
  v23 = v38[22];
  sub_1B9ED4160();
  v22 = *sub_1B9ED1E38();

  v33 = sub_1B9ED3664(v22);
  v38[25] = v33;
  v38[16] = v33;
  v26 = objc_opt_self();
  sub_1B9ED914C();
  v24 = v5;

  *v24 = v23;
  v24[1] = v25;
  sub_1B9E8B398();
  v27 = sub_1B9ED8BFC();

  v28 = [v26 predicateForContactsWithIdentifiers_];
  [v33 setPredicate_];
  MEMORY[0x1E69E5920](v28);
  v38[17] = 0;
  v32 = *(v29 + OBJC_IVAR____TtC9SharingUI23SFUIContactIconProvider_contactStore);
  MEMORY[0x1E69E5928](v32);
  v31 = swift_allocObject();
  v38[26] = v31;
  *(v31 + 16) = v38 + 17;

  v30 = swift_allocObject();
  *(v30 + 16) = sub_1B9ED41C4;
  *(v30 + 24) = v31;

  v38[6] = sub_1B9ED41CC;
  v38[7] = v30;
  v38[2] = MEMORY[0x1E69E9820];
  *(v38 + 6) = 1107296256;
  *(v38 + 7) = 0;
  v38[4] = sub_1B9ED3740;
  v38[5] = &block_descriptor_1;
  v36 = _Block_copy(v38 + 2);

  v38[18] = 0;
  v34 = [v32 enumerateContactsWithFetchRequest:v33 error:v38 + 18 usingBlock:v36];
  v35 = v38[18];
  MEMORY[0x1E69E5928](v35);
  MEMORY[0x1E69E5920](0);
  _Block_release(v36);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return result;
  }

  MEMORY[0x1E69E5920](v32);
  if ((v34 & 1) == 0)
  {
    sub_1B9ED832C();
    MEMORY[0x1E69E5920](v35);
    swift_willThrow();
    sub_1B9E9F1DC(v38 + 17);
    MEMORY[0x1E69E5920](v33);
LABEL_13:
    sub_1B9E99CC0(sub_1B9ED41C4, v38[26]);
    v2 = *(v38[14] + 8);
    v3 = v15;

    return v2(v3);
  }

  v21 = v38[17];
  v38[27] = v21;
  MEMORY[0x1E69E5928](v21);
  if (!v21)
  {
    v14 = v38[23];
    v13 = v38[22];
    v18 = sub_1B9ED891C();
    sub_1B9ECCE5C();
    swift_allocError();
    v19 = v6;
    v38[10] = sub_1B9ED913C();
    v38[11] = v7;
    v8 = sub_1B9ED8B1C();
    MEMORY[0x1BFAEA2C0](v8);

    v38[12] = v13;
    v38[13] = v14;
    sub_1B9ED911C();
    v9 = sub_1B9ED8B1C();
    MEMORY[0x1BFAEA2C0](v9);

    sub_1B9E96F0C((v38 + 10));
    v16 = sub_1B9ED8B0C();
    v17 = v10;
    v11 = sub_1B9ED8B1C();
    *v19 = v16;
    v19[1] = v17;
    v19[2] = v11;
    v19[3] = v12;
    v19[4] = 62;
    (*(*(v18 - 8) + 104))();
    swift_willThrow();
    sub_1B9E9F1DC(v38 + 17);
    MEMORY[0x1E69E5920](v33);
    goto LABEL_13;
  }

  v38[19] = v21;
  v20 = swift_task_alloc();
  v38[28] = v20;
  *v20 = v38[14];
  v20[1] = sub_1B9ED3130;

  return sub_1B9ED37B0(v21);
}

uint64_t sub_1B9ED3130(uint64_t a1)
{
  v5 = *v2;
  v5[14] = *v2;
  v5[29] = a1;
  v5[30] = v1;

  if (v1)
  {
    v3 = sub_1B9ED351C;
  }

  else
  {
    v3 = sub_1B9ED3304;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B9ED3304()
{
  v5 = v0[29];
  v8 = v0[27];
  v9 = v0[25];
  v1 = v0[24];
  v4 = v1;
  v0[14] = v0;
  v0[20] = v5;
  MEMORY[0x1E69E5928](v1);
  v7 = [v4 imageCache];
  MEMORY[0x1E69E5920](v4);

  v6 = sub_1B9ED8A9C();
  [v7 setObject:v5 forKey:?];
  MEMORY[0x1E69E5920](v6);

  MEMORY[0x1E69E5920](v7);
  MEMORY[0x1E69E5920](v8);
  sub_1B9E9F1DC(v0 + 17);
  MEMORY[0x1E69E5920](v9);
  v10 = v0[29];
  sub_1B9E99CC0(sub_1B9ED41C4, v0[26]);
  sub_1B9E99CC0(0, 0);
  v2 = *(v0[14] + 8);

  return v2(v10);
}

uint64_t sub_1B9ED351C()
{
  v1 = v0[27];
  v4 = v0[25];
  v0[14] = v0;
  MEMORY[0x1E69E5920](v1);
  sub_1B9E9F1DC(v0 + 17);
  MEMORY[0x1E69E5920](v4);
  sub_1B9E99CC0(sub_1B9ED41C4, v0[26]);
  v2 = *(v0[14] + 8);

  return v2();
}

void sub_1B9ED36A4(uint64_t a1, _BYTE *a2, uint64_t *a3)
{
  MEMORY[0x1E69E5928](a1);
  v3 = *a3;
  *a3 = a1;
  MEMORY[0x1E69E5920](v3);
  *a2 = 1;
}

double sub_1B9ED3740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  MEMORY[0x1E69E5928](a2);
  v5(a2, a3);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t sub_1B9ED37B0(uint64_t a1)
{
  *(v2 + 144) = v1;
  *(v2 + 136) = a1;
  *(v2 + 48) = v2;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  *(v2 + 200) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B9ED3814);
}

uint64_t sub_1B9ED3814()
{
  v0[6] = v0;
  v0[19] = objc_opt_self();
  v0[20] = sub_1B9ED8CBC();
  v0[21] = sub_1B9ED8CAC();
  sub_1B9ED8C6C();

  return MEMORY[0x1EEE6DFA0](sub_1B9ED38CC);
}

uint64_t sub_1B9ED38CC()
{
  v1 = v0[19];
  v0[6] = v0;
  v0[22] = [v1 mainScreen];

  return MEMORY[0x1EEE6DFA0](sub_1B9ED3968);
}

uint64_t sub_1B9ED3968()
{
  *(v0 + 48) = v0;
  *(v0 + 184) = sub_1B9ED8CAC();
  sub_1B9ED8C6C();

  return MEMORY[0x1EEE6DFA0](sub_1B9ED3A00);
}

uint64_t sub_1B9ED3A00()
{
  v1 = v0[22];
  v0[6] = v0;
  [v1 scale];
  v0[24] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B9ED3A90);
}

uint64_t sub_1B9ED3A90()
{
  v31 = *(v0 + 192);
  v1 = *(v0 + 176);
  v30 = *(v0 + 144);
  *(v0 + 48) = v0;
  *(v0 + 72) = v31;
  MEMORY[0x1E69E5920](v1);
  *(v0 + 80) = *(v30 + OBJC_IVAR____TtC9SharingUI23SFUIContactIconProvider_layoutDirection);
  *(v0 + 88) = 1;
  type metadata accessor for SFUIUserInterfaceLayoutDirection(0);
  sub_1B9ED423C();
  v32 = sub_1B9ED915C();
  *(v0 + 200) = v32 & 1;
  sub_1B9ED42BC();
  *(v0 + 104) = sub_1B9ED4320(v32 & 1, 1, 0, *(v30 + OBJC_IVAR____TtC9SharingUI23SFUIContactIconProvider_diameter), *(v30 + OBJC_IVAR____TtC9SharingUI23SFUIContactIconProvider_diameter), v31);
  sub_1B9ED8B1C();
  sub_1B9ED8B1C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6690, qword_1B9EDFE98);
  sub_1B9ED8E9C();
  v22 = v29[18];
  v24 = v29[17];

  sub_1B9E9F1DC(v29 + 13);
  v25 = v29[12];
  v29[14] = v25;
  v27 = *(v22 + OBJC_IVAR____TtC9SharingUI23SFUIContactIconProvider_avatarImageRenderer);
  MEMORY[0x1E69E5928](v27);
  sub_1B9ED2678();
  sub_1B9ED914C();
  v23 = v2;
  MEMORY[0x1E69E5928](v24);
  *v23 = v24;
  sub_1B9E8B398();
  v26 = sub_1B9ED8BFC();

  v28 = [v27 avatarImageForContacts:v26 scope:v25];
  MEMORY[0x1E69E5920](v26);
  MEMORY[0x1E69E5920](v27);
  v29[15] = v28;
  MEMORY[0x1E69E5928](v28);
  if (v28)
  {
    v29[16] = v28;
    MEMORY[0x1E69E5920](v28);
    v3 = MEMORY[0x1E69E5920](v25);
    v4 = v28;
    v5 = *(v29[6] + 8);
  }

  else
  {
    v15 = v29[17];
    v20 = sub_1B9ED891C();
    sub_1B9ECCE5C();
    swift_allocError();
    v21 = v6;
    v29[2] = sub_1B9ED913C();
    v29[3] = v7;
    v8 = sub_1B9ED8B1C();
    MEMORY[0x1BFAEA2C0](v8);

    v16 = [v15 identifier];
    v29[4] = sub_1B9ED8AAC();
    v29[5] = v9;
    sub_1B9ED911C();
    sub_1B9E96F0C((v29 + 4));
    MEMORY[0x1E69E5920](v16);
    v10 = sub_1B9ED8B1C();
    MEMORY[0x1BFAEA2C0](v10);

    sub_1B9E96F0C((v29 + 2));
    v18 = sub_1B9ED8B0C();
    v19 = v11;
    v12 = sub_1B9ED8B1C();
    *v21 = v18;
    v21[1] = v19;
    v21[2] = v12;
    v21[3] = v13;
    v21[4] = 81;
    (*(*(v20 - 8) + 104))();
    swift_willThrow();
    MEMORY[0x1E69E5920](0);
    v3 = MEMORY[0x1E69E5920](v25);
    v4 = v17;
    v5 = *(v29[6] + 8);
  }

  return v5(v4, v3);
}

unint64_t sub_1B9ED4160()
{
  v2 = qword_1EBBE6670;
  if (!qword_1EBBE6670)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6670);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B9ED423C()
{
  v2 = qword_1EBBE6680;
  if (!qword_1EBBE6680)
  {
    type metadata accessor for SFUIUserInterfaceLayoutDirection(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6680);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ED42BC()
{
  v2 = qword_1EBBE6688;
  if (!qword_1EBBE6688)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6688);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1B9ED4320(char a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6)
{
  v6 = [swift_getObjCClassFromMetadata() scopeWithPointSize:a1 & 1 scale:a2 rightToLeft:a3 style:a4 backgroundStyle:{a5, a6}];

  return v6;
}

id SFUIContactIconProvider.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFUIContactIconProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1B9ED4508(uint64_t a1, uint64_t a2)
{

  v13 = sub_1B9ED8A9C();

  v14 = SFAirDropModelImageNameFromModelString();
  MEMORY[0x1E69E5920](v13);
  if (v14)
  {
    v9 = sub_1B9ED8AAC();
    v10 = v2;
    MEMORY[0x1E69E5920](v14);
    v11 = v9;
    v12 = v10;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (!v12)
  {
    return 0;
  }

  sub_1B9ECBE34();

  sub_1B9ED530C();
  sub_1B9ED5370();
  v3 = sub_1B9ED473C();
  v4 = sub_1B9ED4794(v11, v12, v3);
  v8 = v4;
  if (!v4)
  {

    return 0;
  }

  MEMORY[0x1E69E5928](v4);
  v6 = sub_1B9ED490C(v8);
  MEMORY[0x1E69E5920](v8);
  MEMORY[0x1E69E5920](v8);

  return v6;
}

id sub_1B9ED473C()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v0;
}

id sub_1B9ED4794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1B9ED8A9C();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v4 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v6);
  return v4;
}

unint64_t sub_1B9ED490C(void *a1)
{
  v41 = 0;
  v40 = 0;
  v36 = 0.0;
  v37 = 0.0;
  v34 = 0;
  v35 = 0;
  v33 = 0.0;
  v32 = 0.0;
  v28 = 0.0;
  v26 = 0.0;
  v27 = 0.0;
  v25 = 0;
  v42 = a1;
  MEMORY[0x1E69E5928](a1);
  if (!a1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_5;
  }

  v40 = a1;
  [a1 size];
  v38 = v1;
  v39 = v2;
  v7 = v1;
  v8 = v2;
  v36 = v1;
  v37 = v2;
  v34 = 0x404E000000000000;
  v35 = 0x404E000000000000;
  v33 = 60.0 / v1;
  v32 = 60.0 / v2;
  v30 = 60.0 / v1;
  v29 = 60.0 / v2;
  sub_1B9ED53D4();
  sub_1B9ED918C();
  v28 = v31 * 0.8;
  v9 = v7 * (v31 * 0.8);
  v10 = v8 * (v31 * 0.8);
  v26 = v9;
  v27 = v10;
  sub_1B9ED544C();
  v13 = sub_1B9ED4CD8(60.0, 60.0);
  v25 = v13;
  MEMORY[0x1E69E5928](a1);
  v12 = swift_allocObject();
  *(v12 + 16) = 0x404E000000000000;
  *(v12 + 24) = 0x404E000000000000;
  *(v12 + 32) = v9;
  *(v12 + 40) = v10;
  *(v12 + 48) = a1;

  v11 = swift_allocObject();
  *(v11 + 16) = sub_1B9ED54B0;
  *(v11 + 24) = v12;

  v23 = sub_1B9ED54C8;
  v24 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = 0;
  v21 = sub_1B9ED50D0;
  v22 = &block_descriptor_17;
  v14 = _Block_copy(&aBlock);

  v15 = [v13 imageWithActions_];
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    MEMORY[0x1E69E5920](v13);
    MEMORY[0x1E69E5920](a1);
    v4 = v15;
    v5 = sub_1B9ED54B0;
    v6 = v12;
LABEL_5:
    sub_1B9E99CC0(v5, v6);
    sub_1B9E99CC0(0, 0);
    return v4;
  }

  __break(1u);
  return result;
}

double sub_1B9ED4D20(void *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v7 = [objc_opt_self() 0x1FBBAECF2];
  [v7 0x1FAADB595];
  MEMORY[0x1E69E5920](v7);
  [a1 fillRect_];
  sub_1B9ED59D0();
  v17 = sub_1B9ED5024(a3 / 2.0 - 30.0, a4 / 2.0 - 30.0, 60.0, 60.0);
  v9 = [objc_opt_self() 0x1FBBAECF2];
  [v9 0x1FAADB595];
  [v17 fill];
  v10 = [objc_opt_self() systemGrayColor];
  v11 = [v10 colorWithAlphaComponent_];
  [v11 setStroke];
  MEMORY[0x1E69E5920](v11);
  [v17 setLineWidth_];
  [v17 stroke];
  [a2 drawInRect_];
  *&result = MEMORY[0x1E69E5920](v17).n128_u64[0];
  return result;
}

id sub_1B9ED5024(double a1, double a2, double a3, double a4)
{
  v4 = [swift_getObjCClassFromMetadata() bezierPathWithOvalInRect_];

  return v4;
}

double sub_1B9ED50D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  MEMORY[0x1E69E5928](a2);
  v3(a2);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

id SFUIDeviceIconProvider.init()()
{
  v3 = 0;
  v2.receiver = 0;
  v2.super_class = type metadata accessor for SFUIDeviceIconProvider();
  v1 = objc_msgSendSuper2(&v2, sel_init);
  MEMORY[0x1E69E5928](v1);
  v3 = v1;
  MEMORY[0x1E69E5920](v1);
  return v1;
}

id SFUIDeviceIconProvider.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFUIDeviceIconProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B9ED5250(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6658, &unk_1B9EDFE78);
  v3 = sub_1B9ED8BFC();
  v4 = [v2 initWithKeysToFetch_];
  MEMORY[0x1E69E5920](v3);

  return v4;
}

unint64_t sub_1B9ED530C()
{
  v2 = qword_1EBBE66A0;
  if (!qword_1EBBE66A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE66A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9ED5370()
{
  v2 = qword_1EBBE66A8;
  if (!qword_1EBBE66A8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE66A8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9ED53D4()
{
  v2 = qword_1EBBE66B0;
  if (!qword_1EBBE66B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE66B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ED544C()
{
  v2 = qword_1EBBE66B8;
  if (!qword_1EBBE66B8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE66B8);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t dispatch thunk of SFUIContactIconProvider.contactIconFallBack()()
{
  v5 = v1;
  *(v1 + 16) = v1;
  v2 = *((*v0 & *MEMORY[0x1E69E7D40]) + 0x78);
  v6 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B9ED56F8;

  return v6();
}

uint64_t sub_1B9ED56F8(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t dispatch thunk of SFUIContactIconProvider.icon(for:)(uint64_t a1, uint64_t a2)
{
  v7 = v3;
  *(v3 + 16) = v3;
  v4 = *((*v2 & *MEMORY[0x1E69E7D40]) + 0x80);
  v9 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B9ED56F8;

  return v9(a1, a2);
}

unint64_t sub_1B9ED59D0()
{
  v2 = qword_1EBBE66C0;
  if (!qword_1EBBE66C0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE66C0);
    return ObjCClassMetadata;
  }

  return v2;
}

id sub_1B9ED5A74()
{
  sub_1B9ED530C();
  type metadata accessor for ResourceBundleClass();
  result = sub_1B9ED473C();
  qword_1EBBE6730 = result;
  return result;
}

uint64_t *sub_1B9ED5ABC()
{
  if (qword_1EBBE5D40 != -1)
  {
    swift_once();
  }

  return &qword_1EBBE6730;
}

void CMOQuaternion::northAndGravity()
{
  if (__cxa_guard_acquire(byte_1EBBE6B78))
  {
    _MergedGlobals = 1043452116;

    __cxa_guard_release(byte_1EBBE6B78);
  }
}

void CMOQuaternion::headingReference()
{
  if (__cxa_guard_acquire(byte_1EBBE6B80))
  {
    dword_1EBBE6B74 = 1043452116;

    __cxa_guard_release(byte_1EBBE6B80);
  }
}

void __getPLPhotoLibraryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getPLPhotoLibraryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFAirDropActivityViewController.m" lineNumber:30 description:{@"Unable to find class %s", "PLPhotoLibrary"}];

  __break(1u);
}

void __getPLPhotoLibraryClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *PhotoLibraryServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFAirDropActivityViewController.m" lineNumber:29 description:{@"%s", *a1}];

  __break(1u);
}

void IntentsLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *IntentsLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFUIPeopleSoftLinking.m" lineNumber:11 description:{@"%s", *a1}];

  __break(1u);
}

void __getINImageClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINImageClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFUIPeopleSoftLinking.m" lineNumber:12 description:{@"Unable to find class %s", "INImage"}];

  __break(1u);
}

void __getINImageServiceConnectionClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getINImageServiceConnectionClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFUIPeopleSoftLinking.m" lineNumber:13 description:{@"Unable to find class %s", "INImageServiceConnection"}];

  __break(1u);
}

void getINImageDefaultScaledSize_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (INImageDefaultScaledSize) (*)(void))0)()) getINImageDefaultScaledSize(void)"];
  [v0 handleFailureInFunction:v1 file:@"SFUIPeopleSoftLinking.m" lineNumber:14 description:{@"%s", dlerror()}];

  __break(1u);
}

void ContactsUILibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *ContactsUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"SFUIPeopleSoftLinking.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void __getCNAvatarImageRendererClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNAvatarImageRendererClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFUIPeopleSoftLinking.m" lineNumber:26 description:{@"Unable to find class %s", "CNAvatarImageRenderer"}];

  __break(1u);
}

void __getCNAvatarImageRenderingScopeClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNAvatarImageRenderingScopeClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFUIPeopleSoftLinking.m" lineNumber:27 description:{@"Unable to find class %s", "CNAvatarImageRenderingScope"}];

  __break(1u);
}

void __getCNAvatarImageRendererSettingsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getCNAvatarImageRendererSettingsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"SFUIPeopleSoftLinking.m" lineNumber:30 description:{@"Unable to find class %s", "CNAvatarImageRendererSettings"}];

  __break(1u);
  sub_1B9ED82EC();
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntegral(CGRect rect)
{
  MEMORY[0x1EEDBAE38](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}