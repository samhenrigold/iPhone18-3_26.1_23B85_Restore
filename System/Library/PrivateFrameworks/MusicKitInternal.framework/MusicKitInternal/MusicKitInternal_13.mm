uint64_t sub_1D4F8C25C(void *a1)
{
  v2 = *(*a1 + qword_1EDD76EF0 + 40);
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if ((v4 & 2) == 0)
  {
    *(a1 + v2) = v4 | 2;
  }

  return result;
}

void *sub_1D4F8C2E0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 24))(&v6, v3, v4);
  *a2 = v6;
  return result;
}

uint64_t sub_1D4F8C348@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 32))(v3, v4);
  *a2 = result & 1;
  return result;
}

uint64_t sub_1D4F8C3A4(void *a1)
{
  v2 = *(*a1 + qword_1EDD76EF0 + 40);
  result = swift_beginAccess();
  v4 = *(a1 + v2);
  if ((v4 & 4) == 0)
  {
    *(a1 + v2) = v4 | 4;
  }

  return result;
}

uint64_t sub_1D4F8C428()
{
  sub_1D5614438();
  OUTLINED_FUNCTION_1_16();
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D561EAC0;
  KeyPath = swift_getKeyPath();
  v11 = OUTLINED_FUNCTION_3_24();
  v12(v11);
  (*(v2 + 16))(v6, v8, v0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECDB8, &qword_1D5623070);
  OUTLINED_FUNCTION_2_19(v13);
  v14 = sub_1D5375874(KeyPath, v6);
  v15 = OUTLINED_FUNCTION_98();
  result = v16(v15);
  *(v9 + 32) = v14;
  qword_1EDD767A8 = v9;
  return result;
}

uint64_t sub_1D4F8C5B4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

id sub_1D4F8C60C(uint64_t a1, uint64_t a2)
{
  if (sub_1D560E4D8())
  {
    a2 |= 4uLL;
  }

  v4 = objc_allocWithZone(MEMORY[0x1E6977668]);

  return [v4 initWithVariants:a1 options:a2];
}

uint64_t sub_1D4F8C6C0(uint64_t a1)
{
  result = sub_1D4F8C718(&qword_1EDD52C70, type metadata accessor for Playlist.Folder.Item, &protocol conformance descriptor for Playlist.Folder.Item);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D4F8C718(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

char *PlayableMusicContainer.libraryAllowedIdentifier(isLocalPlayback:)(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = &v42 - v7;
  v49 = sub_1D560F148();
  OUTLINED_FUNCTION_4();
  v47 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v46 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13();
  v45 = v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v42 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v42 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v42 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  MEMORY[0x1EEE9AC00](v25 - 8);
  OUTLINED_FUNCTION_13();
  v44 = v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - v28;
  if (a1)
  {
    v42 = a2;
    v43 = v3;
    OUTLINED_FUNCTION_0_33();
    sub_1D560EC98();
    sub_1D560D5C8();
    (*(v13 + 8))(v24, v11);
    v30 = sub_1D560D4C8();
    if (__swift_getEnumTagSinglePayload(v29, 1, v30) != 1)
    {
      v31 = v29;
      sub_1D560D4B8();
      OUTLINED_FUNCTION_1_14();
      (*(*(v30 - 8) + 8))(v29, v30);
      return v31;
    }

    sub_1D4E6C9CC(v29, &unk_1EC7EBF20, &unk_1D561F530);
    v3 = v43;
  }

  OUTLINED_FUNCTION_0_33();
  sub_1D560EC98();
  v31 = v22;
  sub_1D560D808();
  OUTLINED_FUNCTION_1_14();
  v32 = v3;
  v33 = *(v13 + 8);
  v33(v22, v11);
  if (!v24)
  {
    OUTLINED_FUNCTION_0_33();
    sub_1D560EC98();
    v34 = v48;
    sub_1D560D7A8();
    v33(v19, v11);
    v35 = v49;
    if (__swift_getEnumTagSinglePayload(v34, 1, v49) == 1)
    {
      sub_1D4E6C9CC(v34, &unk_1EC7F1970, &qword_1D561F4A0);
      v36 = v45;
      OUTLINED_FUNCTION_0_33();
      sub_1D560EC98();
      v37 = v44;
      sub_1D560D5C8();
      v33(v36, v11);
      v38 = sub_1D560D4C8();
      if (__swift_getEnumTagSinglePayload(v37, 1, v38) == 1)
      {
        sub_1D4E6C9CC(v37, &unk_1EC7EBF20, &unk_1D561F530);
        v31 = v32;
        OUTLINED_FUNCTION_0_33();
        sub_1D560EC18();
        OUTLINED_FUNCTION_1_14();
      }

      else
      {
        v31 = v37;
        sub_1D560D4B8();
        OUTLINED_FUNCTION_1_14();
        (*(*(v38 - 8) + 8))(v37, v38);
      }
    }

    else
    {
      v40 = v46;
      v39 = v47;
      (*(v47 + 32))(v46, v34, v35);
      v31 = v40;
      sub_1D560F138();
      OUTLINED_FUNCTION_1_14();
      (*(v39 + 8))(v40, v35);
    }
  }

  return v31;
}

uint64_t sub_1D4F8CD14(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = result;
  v9 = 0;
  v10 = *(result + 16);
  do
  {
    if (v10 == v9)
    {
      break;
    }

    v11 = *(type metadata accessor for MusicItemTypedIdentifier(0) - 8);
    result = sub_1D4F90D40((v8 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v9++), a2, a3, a4);
  }

  while (!v4);
  return result;
}

uint64_t sub_1D4F8CDEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericMusicItem(0);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1D560D838();
  v6 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v54 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1D5611AB8();
  v8 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v52 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v47 = *(v51 - 8);
  v10 = MEMORY[0x1EEE9AC00](v51);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v22 = (v46 - v21);
  v23 = 0;
  v24 = *(a1 + 16);
  v58 = a1;
  v59 = v24;
  v48 = (v6 + 8);
  v49 = (v8 + 8);
  v50 = v12;
  while (v59 != v23)
  {
    v25 = *(v56 + 72);
    v60 = v23;
    v26 = v52;
    v27 = *(v51 + 24);
    GenericMusicItem.propertyProvider.getter(result, v14, v15, v16, v17, v18, v19, v20, v46[0], v46[1], v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
    sub_1D5611A98();
    (*v49)(v26, v53);
    v28 = sub_1D5610088();
    __swift_storeEnumTagSinglePayload(v22 + v27, 0, 1, v28);
    GenericMusicItem.innerItem.getter(v61);
    __swift_project_boxed_opaque_existential_1(v61, v61[3]);
    v29 = sub_1D560EC18();
    v31 = v30;
    __swift_destroy_boxed_opaque_existential_1(v61);
    sub_1D4FB8108(&qword_1EDD5C600, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    v32 = v54;
    sub_1D560EC98();
    v33 = v50;
    sub_1D560D828();
    (*v48)(v32, v55);
    *v22 = v29;
    v22[1] = v31;
    sub_1D4FB80B0();
    sub_1D4FB80B0();
    swift_isUniquelyReferenced_nonNull_native();
    v34 = a2;
    v61[0] = *(a2 + 8);
    v35 = v61[0];
    v36 = sub_1D4F0DDB4(v33);
    if (__OFADD__(*(v35 + 16), (v37 & 1) == 0))
    {
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      result = sub_1D5616238();
      __break(1u);
      return result;
    }

    v38 = v36;
    v39 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
    if (sub_1D5615D78())
    {
      v40 = sub_1D4F0DDB4(v33);
      if ((v39 & 1) != (v41 & 1))
      {
        goto LABEL_15;
      }

      v38 = v40;
    }

    v42 = v61[0];
    if (v39)
    {
      sub_1D4F159C4(v62, *(v61[0] + 56) + v38 * v25);
    }

    else
    {
      *(v61[0] + 8 * (v38 >> 6) + 64) |= 1 << v38;
      sub_1D4FB80B0();
      sub_1D4FB81A8();
      v43 = *(v42 + 16);
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_14;
      }

      *(v42 + 16) = v45;
    }

    a2 = v34;
    *(v34 + 8) = v42;
    sub_1D4E58460(v33, type metadata accessor for LooselyComparableTypedIdentifier);
    result = sub_1D4E58460(v22, type metadata accessor for LooselyComparableTypedIdentifier);
    v23 = v60 + 1;
  }

  return result;
}

uint64_t MusicLibraryAdvancedMappingRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for MusicLibraryAdvancedMappingRequest(0);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  type metadata accessor for LooselyComparableTypedIdentifier(0);
  type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_1_36();
  sub_1D4FB8108(v2, v3, &unk_1D56579DC);
  result = sub_1D5614BD8();
  v5 = MEMORY[0x1E69E7CD0];
  a1[1] = result;
  a1[2] = v5;
  return result;
}

uint64_t type metadata accessor for MusicLibraryAdvancedMappingRequest(uint64_t a1)
{
  result = qword_1EDD59D90;
  if (!qword_1EDD59D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicLibraryAdvancedMappingRequest.itemIdentifiers.setter(uint64_t a1)
{
  if (a1)
  {
    type metadata accessor for LooselyComparableTypedIdentifier(0);
    type metadata accessor for GenericMusicItem(0);
    OUTLINED_FUNCTION_1_36();
    sub_1D4FB8108(v3, v4, &unk_1D56579DC);
    v11 = sub_1D5614BD8();
    v10 = MEMORY[0x1E69E7CD0];
    v5 = OUTLINED_FUNCTION_71();
    sub_1D4F8CD14(v5, v6, v7, v8);

    v1[1] = v11;

    v1[2] = v10;
  }

  *v1 = a1;
  return result;
}

uint64_t MusicLibraryAdvancedMappingRequest.itemIdentifiers.modify(void *a1)
{
  v3 = *v1;
  a1[1] = v1;
  a1[2] = v3;
  *a1 = v3;

  return OUTLINED_FUNCTION_159();
}

uint64_t sub_1D4F8D5C0(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {

    MusicLibraryAdvancedMappingRequest.itemIdentifiers.setter(v4);
  }

  else
  {
    if (v3)
    {
      v6 = a1[1];
      type metadata accessor for LooselyComparableTypedIdentifier(0);
      type metadata accessor for GenericMusicItem(0);
      OUTLINED_FUNCTION_1_36();
      sub_1D4FB8108(v7, v8, &unk_1D56579DC);
      v11 = sub_1D5614BD8();
      v12 = MEMORY[0x1E69E7CD0];
      sub_1D4F8CD14(v3, v6, &v11, &v12);
      v9 = v11;

      *(v6 + 8) = v9;
      v10 = v12;

      *(v6 + 16) = v10;
    }

    else
    {
    }

    *a1[1] = v3;
  }

  return result;
}

uint64_t MusicLibraryAdvancedMappingRequest.configuration.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v3 = OUTLINED_FUNCTION_22(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_59_0();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  type metadata accessor for MusicLibraryAdvancedMappingRequest(0);
  sub_1D560CCE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v10 = type metadata accessor for MusicRequestConfiguration(0);
  v11 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v9, v11 ^ 1u, 1, v10);
  sub_1D4FB8150();
  OUTLINED_FUNCTION_57(v6, 1, v10);
  if (v12)
  {
    static MusicRequestConfiguration.globalDefault.getter(a1);
    OUTLINED_FUNCTION_57(v6, 1, v10);
    if (!v12)
    {
      sub_1D4E50004(v6, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D4FB81A8();
  }

  return sub_1D4E50004(v9, &qword_1EC7EA838, &unk_1D561CB10);
}

uint64_t sub_1D4F8D8C0(uint64_t a1)
{
  v1 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4FB80B0();
  return MusicLibraryAdvancedMappingRequest.configuration.setter(v3);
}

uint64_t MusicLibraryAdvancedMappingRequest.configuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for MusicRequestConfiguration(0);
  OUTLINED_FUNCTION_12_27();
  sub_1D4FB8108(v10, v11, &protocol conformance descriptor for MusicRequestConfiguration);
  sub_1D560E6C8();
  OUTLINED_FUNCTION_25_25();
  sub_1D4E58460(a1, v12);
  v13 = type metadata accessor for MusicLibraryAdvancedMappingRequest(0);
  return (*(v6 + 40))(v2 + *(v13 + 28), v9, v4);
}

void (*MusicLibraryAdvancedMappingRequest.configuration.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = sub_1D560CD48();
  v3[1] = v4;
  OUTLINED_FUNCTION_69(v4);
  v3[2] = v5;
  v3[3] = __swift_coroFrameAllocStub(*(v6 + 64));
  v7 = type metadata accessor for MusicRequestConfiguration(0);
  v3[4] = v7;
  OUTLINED_FUNCTION_22(v7);
  v9 = *(v8 + 64);
  v3[5] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[6] = v10;
  MusicLibraryAdvancedMappingRequest.configuration.getter(v10);
  return sub_1D4F8DB68;
}

void sub_1D4F8DB68(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 48);
  v5 = *(*a1 + 24);
  if (a2)
  {
    sub_1D4FB80B0();
    OUTLINED_FUNCTION_12_27();
    sub_1D4FB8108(v6, v7, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    sub_1D4E58460(v3, type metadata accessor for MusicRequestConfiguration);
    v8 = type metadata accessor for MusicLibraryAdvancedMappingRequest(0);
    v9 = OUTLINED_FUNCTION_52_1(v8);
    v10(v9);
    sub_1D4E58460(v4, type metadata accessor for MusicRequestConfiguration);
  }

  else
  {
    OUTLINED_FUNCTION_12_27();
    sub_1D4FB8108(v11, v12, &protocol conformance descriptor for MusicRequestConfiguration);
    sub_1D560E6C8();
    OUTLINED_FUNCTION_25_25();
    sub_1D4E58460(v4, v13);
    v14 = type metadata accessor for MusicLibraryAdvancedMappingRequest(0);
    v15 = OUTLINED_FUNCTION_52_1(v14);
    v16(v15);
  }

  free(v4);
  free(v3);
  free(v5);

  free(v2);
}

uint64_t MusicLibraryAdvancedMappingRequest.addInitialItems(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D4F8DCF0()
{
  OUTLINED_FUNCTION_80();
  sub_1D4F8CDEC(*(v0 + 16), *(v0 + 24));
  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t MusicLibraryAdvancedMappingRequest.addDataPayload(_:)()
{
  OUTLINED_FUNCTION_60();
  v1[100] = v0;
  v1[99] = v2;
  v1[98] = v3;
  v4 = sub_1D560CD48();
  v1[101] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[102] = v5;
  v1[103] = OUTLINED_FUNCTION_167();
  v1[104] = swift_task_alloc();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D4F8DE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  v13 = *(v12 + 832);
  v14 = *(v12 + 816);
  v15 = *(v12 + 808);
  v16 = *(v12 + 800);
  v17 = *(v12 + 792);
  v18 = *(v12 + 784);
  sub_1D5612208();
  swift_allocObject();
  *(v12 + 840) = sub_1D56121F8();
  *(v12 + 848) = type metadata accessor for LooselyComparableTypedIdentifier(0);
  *(v12 + 856) = type metadata accessor for GenericMusicItem(0);
  OUTLINED_FUNCTION_1_36();
  *(v12 + 864) = sub_1D4FB8108(v19, v20, &unk_1D56579DC);
  sub_1D5614BD8();

  v21 = *(type metadata accessor for MusicLibraryAdvancedMappingRequest(0) + 28);
  *(v12 + 912) = v21;
  v22 = *(v14 + 16);
  *(v12 + 872) = v22;
  *(v12 + 880) = (v14 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22(v13, v16 + v21, v15);
  swift_retain_n();
  sub_1D4F48DE4(v18, v17);
  v23 = swift_task_alloc();
  *(v12 + 888) = v23;
  *v23 = v12;
  v23[1] = sub_1D4F8DFAC;
  OUTLINED_FUNCTION_73_0();

  return sub_1D514FB28(v24, v25, v26, v27);
}

uint64_t sub_1D4F8DFAC()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 896) = v4;
  *(v2 + 904) = v0;

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D4F8E0B4()
{
  v1 = *(v0 + 896);
  if (!*(v1 + 16))
  {
    if (qword_1EDD5D8A8 != -1)
    {
      OUTLINED_FUNCTION_36_10(&qword_1EDD5D8A8);
    }

    v2 = sub_1D560C758();
    __swift_project_value_buffer(v2, qword_1EDD76DC8);
    v3 = sub_1D560C738();
    v4 = sub_1D56156C8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1D4E3F000, v3, v4, "MusicLibraryAdvancedMappingRequest: Defaulting to fallback decoding after custom decoding logic found no items.", v5, 2u);
      MEMORY[0x1DA6ED200](v5, -1, -1);
    }

    v1 = *(v0 + 896);
  }

  v6 = *(v0 + 904);
  if (*(v1 + 16))
  {

LABEL_9:
    v7 = OUTLINED_FUNCTION_20_25();
    sub_1D4FB69B4(v7, v8, v9, v10);

    OUTLINED_FUNCTION_22_1();
    goto LABEL_12;
  }

  v12 = *(v0 + 872);
  v13 = *(v0 + 912);
  v14 = *(v0 + 824);
  v15 = *(v0 + 808);
  v16 = *(v0 + 800);

  sub_1D560B9C8();
  swift_allocObject();
  v17 = sub_1D560B9B8();
  v12(v14, v16 + v13, v15);
  sub_1D560B988();

  sub_1D560B968();
  sub_1D4FB6A28();
  sub_1D560B948();
  if (!v6)
  {
    OUTLINED_FUNCTION_65_10((v0 + 592));
    OUTLINED_FUNCTION_65_10((v0 + 400));
    if (sub_1D4FB6A7C((v0 + 400)) == 1)
    {
      sub_1D5614BD8();
    }

    else
    {
      OUTLINED_FUNCTION_48_7();
      sub_1D4FA8900(v12 + v17, 0);
    }

    sub_1D4FB6AA0(v0 + 592);

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_62_11();

  OUTLINED_FUNCTION_55();
LABEL_12:

  return v11();
}

uint64_t sub_1D4F8E354()
{
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_36_10(&qword_1EDD5D8A8);
  }

  v1 = *(v0 + 904);
  v2 = sub_1D560C758();
  __swift_project_value_buffer(v2, qword_1EDD76DC8);
  v3 = v1;
  v4 = sub_1D560C738();
  v5 = sub_1D56156C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 904);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1D4E3F000, v4, v5, "MusicLibraryAdvancedMappingRequest: Defaulting to fallback decoding after custom decoding logic failed due to %{public}@.", v7, 0xCu);
    sub_1D4E50004(v8, &unk_1EC7F2C00, &qword_1D5623260);
    MEMORY[0x1DA6ED200](v8, -1, -1);
    MEMORY[0x1DA6ED200](v7, -1, -1);
  }

  v11 = *(v0 + 904);

  v12 = sub_1D5614BD8();
  if (!*(v12 + 16))
  {
    v18 = *(v0 + 872);
    v19 = *(v0 + 912);
    v20 = *(v0 + 840);
    v21 = *(v0 + 824);
    v22 = *(v0 + 808);
    v23 = *(v0 + 800);

    sub_1D560B9C8();
    swift_allocObject();
    v24 = sub_1D560B9B8();
    v18(v21, v23 + v19, v22);
    sub_1D560B988();

    sub_1D560B968();
    sub_1D4FB6A28();
    sub_1D560B948();
    OUTLINED_FUNCTION_65_10((v0 + 592));
    OUTLINED_FUNCTION_65_10((v0 + 400));
    v26 = sub_1D4FB6A7C((v0 + 400));
    if (v26 == 1)
    {
      sub_1D5614BD8();
    }

    else
    {
      OUTLINED_FUNCTION_48_7();
      sub_1D4FA8900(v20 + v24, 0);
    }

    sub_1D4FB6AA0(v0 + 592);
  }

  v13 = OUTLINED_FUNCTION_20_25();
  sub_1D4FB69B4(v13, v14, v15, v16);

  OUTLINED_FUNCTION_22_1();

  return v17();
}

uint64_t MusicLibraryAdvancedMappingRequest.response()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1D4F8E690()
{
  OUTLINED_FUNCTION_80();
  type metadata accessor for MusicLibraryAdvancedMappingRequest(0);
  if (sub_1D560CD38())
  {
    *(v0 + 16) = 0;
    swift_task_alloc();
    OUTLINED_FUNCTION_58();
    *(v0 + 40) = v1;
    *v1 = v2;
    v1[1] = sub_1D4F8E79C;

    return sub_1D4F8E8D8();
  }

  else
  {
    **(v0 + 24) = *(*(v0 + 32) + 8);
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1D4F8E79C()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D4F8E8D8()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v1[3] = v4;
  v1[4] = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  OUTLINED_FUNCTION_22(v5);
  v1[5] = swift_task_alloc();
  v6 = type metadata accessor for MusicItemTypedIdentifier(0);
  v1[6] = v6;
  OUTLINED_FUNCTION_69(v6);
  v1[7] = v7;
  v1[8] = OUTLINED_FUNCTION_167();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v8 = type metadata accessor for GenericMusicItem(0);
  v1[11] = v8;
  OUTLINED_FUNCTION_69(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_167();
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v10 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v1[19] = v10;
  OUTLINED_FUNCTION_69(v10);
  v1[20] = v11;
  v1[21] = OUTLINED_FUNCTION_167();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB218, &unk_1D561F360);
  OUTLINED_FUNCTION_22(v12);
  v1[26] = OUTLINED_FUNCTION_167();
  v13 = swift_task_alloc();
  v14 = *v3;
  v1[27] = v13;
  v1[28] = v14;
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

void sub_1D4F8EB10()
{
  v0[2] = MEMORY[0x1E69E7CC0];
  v114 = v0 + 2;
  if (v0[28])
  {
    v2 = v0[28];
  }

  else
  {
    OUTLINED_FUNCTION_1_36();
    sub_1D4FB8108(v3, v4, &unk_1D56579DC);
    v2 = sub_1D5614BD8();
  }

  v117 = v2;
  v111 = v0[25];
  v5 = v0[19];
  v109 = v0[12];
  v125 = v0[10];
  v115 = v0[6];
  v118 = v0;
  v6 = v0[4];
  OUTLINED_FUNCTION_1_36();
  sub_1D4FB8108(v7, v8, &unk_1D56579DC);

  v116 = v5;
  v107 = sub_1D5614BD8();
  v127 = *(v6 + 8) + 64;
  OUTLINED_FUNCTION_34_16();
  v10 = v9 >> 6;

  v11 = 0;
  v112 = v10;
  while (v1)
  {
    v12 = v118;
LABEL_12:
    v15 = v12[26];
    OUTLINED_FUNCTION_55_9();
    OUTLINED_FUNCTION_0_34();
    sub_1D4FB80B0();
    OUTLINED_FUNCTION_9_26();
    sub_1D4FB80B0();
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB210, &unk_1D561DF60);
    OUTLINED_FUNCTION_24_21();
    sub_1D4FB81A8();
    OUTLINED_FUNCTION_2_20();
    sub_1D4FB81A8();
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
    v13 = v117;
LABEL_13:
    v17 = v12[27];
    sub_1D4FB8058();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB210, &unk_1D561DF60);
    OUTLINED_FUNCTION_57(v17, 1, v18);
    if (v19)
    {
      v124 = v12[8];
      v126 = v12[22];
      v54 = v12[4];

      v55 = *(v54 + 16) + 56;
      OUTLINED_FUNCTION_34_16();
      v57 = v56 >> 6;

      v58 = 0;
      v59 = v107;
      v120 = v55;
      v122 = v57;
      while (2)
      {
        while (2)
        {
          v108 = v59;
          while (1)
          {
            v12[29] = v59;
            if (!v1)
            {
              while (1)
              {
                v60 = v58 + 1;
                if (__OFADD__(v58, 1))
                {
                  goto LABEL_50;
                }

                if (v60 >= v57)
                {

                  v12[30] = v12[2];
                  v102 = swift_task_alloc();
                  v12[31] = v102;
                  *v102 = v12;
                  v102[1] = sub_1D4F8F5F4;
                  OUTLINED_FUNCTION_49_0();

                  sub_1D4F90240(v103, v104);
                  return;
                }

                v1 = *(v55 + 8 * v60);
                ++v58;
                if (v1)
                {
                  v58 = v60;
                  break;
                }
              }
            }

            v61 = v12[22];
            v62 = v12[8];
            v1 &= v1 - 1;
            sub_1D4FB80B0();
            OUTLINED_FUNCTION_159();
            sub_1D4FB81A8();
            v63 = *v62;
            v64 = *(v124 + 8);
            v65 = *(v115 + 24);
            v66 = *(v116 + 20);
            sub_1D560D9A8();
            OUTLINED_FUNCTION_14();
            (*(v67 + 16))(&v61[v66], &v62[v65]);
            sub_1D4FB8150();
            *v61 = v63;
            *(v126 + 8) = v64;
            v68 = *(v117 + 16);

            if (v68)
            {
              sub_1D4F0DDB4(v118[22]);
              if (v69)
              {
                break;
              }
            }

            v70 = v118[22];
            v71 = v118[8];
            v72 = v118[5];
            __swift_storeEnumTagSinglePayload(v72, 1, 1, v118[11]);
            sub_1D4F8FB80(v71, v72, v114);
            v73 = v72;
            v12 = v118;
            sub_1D4E50004(v73, &qword_1EC7EA608, &qword_1D561C510);
            OUTLINED_FUNCTION_29_14();
            sub_1D4E58460(v70, v74);
            OUTLINED_FUNCTION_3_25();
            sub_1D4E58460(v71, v75);
            v59 = v108;
            v55 = v120;
            v57 = v122;
          }

          v76 = v118[21];
          v77 = *(v109 + 72);
          sub_1D4FB80B0();
          OUTLINED_FUNCTION_0_34();
          OUTLINED_FUNCTION_159();
          sub_1D4FB80B0();
          sub_1D4FB80B0();
          swift_isUniquelyReferenced_nonNull_native();
          sub_1D4F0DDB4(v76);
          OUTLINED_FUNCTION_47_13();
          if (__OFADD__(v80, v81))
          {
            goto LABEL_57;
          }

          v82 = v78;
          v83 = v79;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
          v59 = v108;
          if (sub_1D5615D78())
          {
            v12 = v118;
            v84 = sub_1D4F0DDB4(v118[21]);
            v57 = v122;
            if ((v83 & 1) != (v85 & 1))
            {
              goto LABEL_51;
            }

            v86 = v83;
          }

          else
          {
            v86 = v83;
            v84 = v82;
            v12 = v118;
            v57 = v122;
          }

          v87 = v12[22];
          v88 = v12[13];
          v113 = v12[14];
          v89 = v12[8];
          if (v86)
          {
            v90 = *(v108 + 56) + v84 * v77;
            v91 = v12[21];
            sub_1D4F159C4(v88, v90);
            OUTLINED_FUNCTION_6_27();
            sub_1D4E58460(v91, v92);
            OUTLINED_FUNCTION_5_22();
            sub_1D4E58460(v113, v93);
            sub_1D4E58460(v87, v88);
            OUTLINED_FUNCTION_3_25();
            sub_1D4E58460(v89, v94);
            v55 = v120;
            continue;
          }

          break;
        }

        v110 = v12[22];
        OUTLINED_FUNCTION_46_9(v108 + 8 * (v84 >> 6));
        OUTLINED_FUNCTION_0_34();
        v96 = v95;
        sub_1D4FB80B0();
        OUTLINED_FUNCTION_2_20();
        sub_1D4FB81A8();
        OUTLINED_FUNCTION_6_27();
        sub_1D4E58460(v96, v97);
        OUTLINED_FUNCTION_5_22();
        sub_1D4E58460(v113, v98);
        sub_1D4E58460(v110, v88);
        OUTLINED_FUNCTION_3_25();
        sub_1D4E58460(v89, v99);
        v100 = *(v108 + 16);
        v52 = __OFADD__(v100, 1);
        v101 = v100 + 1;
        if (!v52)
        {
          *(v108 + 16) = v101;
          v55 = v120;
          continue;
        }

        goto LABEL_58;
      }
    }

    OUTLINED_FUNCTION_24_21();
    sub_1D4FB81A8();
    OUTLINED_FUNCTION_2_20();
    sub_1D4FB81A8();
    if (*(v13 + 16) && (sub_1D4F0DDB4(v12[24]), (v20 & 1) != 0))
    {
      v32 = v12[23];
      v33 = *(v109 + 72);
      sub_1D4FB80B0();
      OUTLINED_FUNCTION_0_34();
      OUTLINED_FUNCTION_159();
      sub_1D4FB80B0();
      sub_1D4FB80B0();
      swift_isUniquelyReferenced_nonNull_native();
      sub_1D4F0DDB4(v32);
      OUTLINED_FUNCTION_47_13();
      if (__OFADD__(v36, v37))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        return;
      }

      v38 = v34;
      v39 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
      if (sub_1D5615D78())
      {
        v40 = sub_1D4F0DDB4(v118[23]);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_51;
        }

        v38 = v40;
      }

      v42 = v118[23];
      v43 = v118[24];
      v45 = v118[16];
      v44 = v118[17];
      v46 = v118[15];
      if (v39)
      {
        sub_1D4F159C4(v118[15], *(v107 + 56) + v38 * v33);
        OUTLINED_FUNCTION_6_27();
        sub_1D4E58460(v42, v47);
        OUTLINED_FUNCTION_28_18();
        sub_1D4E58460(v45, v48);
        sub_1D4E58460(v44, v38);
        sub_1D4E58460(v43, v46);
      }

      else
      {
        OUTLINED_FUNCTION_46_9(v107 + 8 * (v38 >> 6));
        OUTLINED_FUNCTION_0_34();
        sub_1D4FB80B0();
        OUTLINED_FUNCTION_2_20();
        sub_1D4FB81A8();
        OUTLINED_FUNCTION_6_27();
        sub_1D4E58460(v42, v49);
        OUTLINED_FUNCTION_28_18();
        sub_1D4E58460(v45, v50);
        sub_1D4E58460(v44, v38);
        sub_1D4E58460(v43, v46);
        v51 = *(v107 + 16);
        v52 = __OFADD__(v51, 1);
        v53 = v51 + 1;
        if (v52)
        {
          goto LABEL_56;
        }

        *(v107 + 16) = v53;
      }

      v10 = v112;
    }

    else
    {
      v21 = v12[25];
      v123 = v12[24];
      v22 = v12[10];
      v119 = v12[17];
      v121 = v12[11];
      v23 = v12[5];
      OUTLINED_FUNCTION_0_34();
      sub_1D4FB80B0();
      v24 = *(v111 + 8);
      *v22 = *v21;
      *(v125 + 8) = v24;
      v25 = *(v116 + 20);
      v26 = *(v115 + 24);
      sub_1D560D9A8();
      OUTLINED_FUNCTION_14();
      (*(v27 + 16))(&v22[v26], &v21[v25]);
      sub_1D4FB8150();

      sub_1D4E58460(v21, type metadata accessor for LooselyComparableTypedIdentifier);
      *(v125 + 16) = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_9_26();
      sub_1D4FB80B0();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v121);
      sub_1D4F8FB80(v22, v23, v114);
      sub_1D4E50004(v23, &qword_1EC7EA608, &qword_1D561C510);
      OUTLINED_FUNCTION_3_25();
      sub_1D4E58460(v22, v28);
      OUTLINED_FUNCTION_5_22();
      sub_1D4E58460(v119, v29);
      sub_1D4E58460(v123, type metadata accessor for LooselyComparableTypedIdentifier);
      v10 = v112;
    }
  }

  v13 = v117;
  v12 = v118;
  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      v30 = v118[26];
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB210, &unk_1D561DF60);
      __swift_storeEnumTagSinglePayload(v30, 1, 1, v31);
      v1 = 0;
      goto LABEL_13;
    }

    v1 = *(v127 + 8 * v14);
    ++v11;
    if (v1)
    {
      v11 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  OUTLINED_FUNCTION_49_0();

  sub_1D5616238();
}

uint64_t sub_1D4F8F5F4()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v8 = v7;
  *(v5 + 256) = v0;

  if (!v0)
  {

    *(v5 + 264) = v3;
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1D4F8F714()
{
  **(v0 + 24) = *(v0 + 264);

  OUTLINED_FUNCTION_22_1();

  return v1();
}

uint64_t sub_1D4F8F850()
{

  OUTLINED_FUNCTION_55();

  return v0();
}

uint64_t MusicLibraryAdvancedMappingRequest.response(revisionID:requester:previousResponse:)()
{
  OUTLINED_FUNCTION_80();
  *(v0 + 16) = *v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 24) = v2;
  *v2 = v3;
  v2[1] = sub_1D4F8FA44;

  return sub_1D4F8E8D8();
}

uint64_t sub_1D4F8FA44()
{
  OUTLINED_FUNCTION_60();
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v5 = v4;
  *(v6 + 32) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_57_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_55();

    return v10();
  }
}

uint64_t sub_1D4F8FB80(char *a1, uint64_t a2, uint64_t *a3)
{
  v47 = a3;
  v46 = type metadata accessor for MusicItemTypedIdentifier(0);
  v5 = MEMORY[0x1EEE9AC00](v46);
  v43 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v48 = &v42 - v7;
  v8 = sub_1D560D9A8();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v42 - v13;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE10, &qword_1D5634400);
  v15 = MEMORY[0x1EEE9AC00](v42);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v42 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v42 - v21;
  v49 = a2;
  sub_1D4FB8150();
  v23 = type metadata accessor for GenericMusicItem(0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v23) == 1)
  {
    sub_1D4E50004(v14, &qword_1EC7EA608, &qword_1D561C510);
    v24 = sub_1D560CB48();
    __swift_storeEnumTagSinglePayload(v22, 1, 1, v24);
  }

  else
  {
    sub_1D4FB8108(&qword_1EDD5C600, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
    sub_1D560EC88();
    sub_1D4E58460(v14, type metadata accessor for GenericMusicItem);
  }

  sub_1D4FB8150();
  v25 = sub_1D560CB48();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v25);
  sub_1D4E50004(v20, &qword_1EC7ECE10, &qword_1D5634400);
  if (EnumTagSinglePayload == 1)
  {
    (*(v44 + 16))(v10, &a1[*(v46 + 24)], v45);
    sub_1D560CB58();
    sub_1D4FB7FE8(v17, v22);
  }

  sub_1D4FB8150();
  sub_1D4FB8150();
  sub_1D4FB80B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE18, &qword_1D5623360);
  swift_allocObject();

  if (sub_1D560CA88())
  {
    v27 = v47;
    MEMORY[0x1DA6EAF30]();
    sub_1D4E6C078(*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1D56151F8();
    v28 = *v27;
    result = sub_1D4E50004(v22, &qword_1EC7ECE10, &qword_1D5634400);
    *v27 = v28;
  }

  else
  {
    if (qword_1EDD5D8A8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D560C758();
    __swift_project_value_buffer(v30, qword_1EDD76DC8);
    v31 = v43;
    sub_1D4FB80B0();
    v32 = sub_1D560C738();
    v33 = sub_1D56156E8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v50 = v35;
      *v34 = 136446466;
      v36 = *v31;
      v37 = v31[1];

      sub_1D4E58460(v31, type metadata accessor for MusicItemTypedIdentifier);
      v38 = sub_1D4E6835C(v36, v37, &v50);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2082;
      swift_beginAccess();
      sub_1D4FB8150();
      v39 = sub_1D5614DB8();
      v41 = sub_1D4E6835C(v39, v40, &v50);

      *(v34 + 14) = v41;
      _os_log_impl(&dword_1D4E3F000, v32, v33, "MusicLibraryAdvancedMappingRequest: Failed to create a valid library mapping item for item with id %{public}s and item kind %{public}s.", v34, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6ED200](v35, -1, -1);
      MEMORY[0x1DA6ED200](v34, -1, -1);
    }

    else
    {

      sub_1D4E58460(v31, type metadata accessor for MusicItemTypedIdentifier);
    }

    return sub_1D4E50004(v22, &qword_1EC7ECE10, &qword_1D5634400);
  }

  return result;
}

uint64_t sub_1D4F90240(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_1D560D838();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = type metadata accessor for MusicItemTypedIdentifier(0);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v2[17] = swift_task_alloc();
  v5 = type metadata accessor for GenericMusicItem(0);
  v2[18] = v5;
  v2[19] = *(v5 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE00, &qword_1D5623348);
  v2[22] = v6;
  v2[23] = *(v6 - 8);
  v2[24] = swift_task_alloc();
  v7 = sub_1D560DF28();
  v2[25] = v7;
  v2[26] = *(v7 - 8);
  v2[27] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE08, &unk_1D5623350);
  v2[28] = v8;
  v2[29] = *(v8 - 8);
  v2[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F90558, 0, 0);
}

uint64_t sub_1D4F90558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  v14 = v12[26];
  v13 = v12[27];
  v15 = v12[25];
  v12[31] = sub_1D4FB8108(&qword_1EDD5C600, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);

  sub_1D560CB08();
  (*(v14 + 104))(v13, *MEMORY[0x1E6975110], v15);
  v16 = swift_task_alloc();
  v12[32] = v16;
  *v16 = v12;
  v16[1] = sub_1D4F90698;
  OUTLINED_FUNCTION_73_0();

  return MEMORY[0x1EEDCE158](v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_1D4F90698()
{
  OUTLINED_FUNCTION_59_1();
  v3 = v2;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  v6 = v5[27];
  v7 = v5[26];
  v8 = v5[25];
  v9 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v10 = v9;
  *(v3 + 264) = v11;
  *(v3 + 272) = v0;

  (*(v7 + 8))(v6, v8);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1D4F9080C()
{
  v1 = v0[33];
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_12:

    (*(v0[29] + 8))(v0[30], v0[28]);

    OUTLINED_FUNCTION_49_0();

    __asm { BRAA            X2, X16 }
  }

  v3 = v0[23];
  v42 = v0[14];
  v4 = *(v3 + 16);
  v3 += 16;
  v41 = v4;
  v5 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
  v38 = *(v3 + 56);
  v39 = (v0[10] + 8);
  v40 = (v3 - 8);
  v6 = &unk_1D561DF50;
  v46 = v0[8];
  while (1)
  {
    v44 = v2;
    v7 = v0[24];
    v8 = v0[22];
    v9 = v0[16];
    v10 = v0[14];
    v11 = v0[11];
    v45 = v0[9];
    v43 = v5;
    v41(v7);
    sub_1D560CA48();
    sub_1D560CA38();
    (*v40)(v7, v8);
    sub_1D560CAD8();

    sub_1D4FB8150();
    OUTLINED_FUNCTION_3_25();
    sub_1D4E58460(v9, v12);
    GenericMusicItem.innerItem.getter(v0 + 2);
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v13 = sub_1D560EC18();
    v15 = v14;
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    sub_1D560EC98();
    sub_1D560D828();
    (*v39)(v11, v45);
    v16 = v6;
    sub_1D4FB8150();
    *v10 = v13;
    *(v42 + 8) = v15;
    OUTLINED_FUNCTION_9_26();
    sub_1D4FB80B0();
    swift_isUniquelyReferenced_nonNull_native();
    sub_1D4F0DDB4(v10);
    OUTLINED_FUNCTION_47_13();
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v21 = v17;
    v22 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
    if (sub_1D5615D78())
    {
      v23 = sub_1D4F0DDB4(v0[14]);
      if ((v22 & 1) != (v24 & 1))
      {
        OUTLINED_FUNCTION_49_0();

        sub_1D5616238();
        return;
      }

      v21 = v23;
    }

    v25 = v0[20];
    if (v22)
    {
      OUTLINED_FUNCTION_56_9();
      sub_1D4F159C4(v25, v26);
    }

    else
    {
      OUTLINED_FUNCTION_46_9(v46 + 8 * (v21 >> 6));
      OUTLINED_FUNCTION_0_34();
      sub_1D4FB80B0();
      OUTLINED_FUNCTION_56_9();
      OUTLINED_FUNCTION_2_20();
      sub_1D4FB81A8();
      v27 = *(v46 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        goto LABEL_19;
      }

      *(v46 + 16) = v29;
    }

    v30 = v0[21];
    v31 = v0[17];
    OUTLINED_FUNCTION_29_14();
    sub_1D4E58460(v32, v33);
    v6 = v16;
    sub_1D4E50004(v31, &qword_1EC7EA358, v16);
    OUTLINED_FUNCTION_5_22();
    sub_1D4E58460(v30, v34);
    v5 = v43 + v38;
    v2 = v44 - 1;
    if (v44 == 1)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_1D4F90C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_72_0();
  (*(v12[29] + 8))(v12[30], v12[28]);

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_73_0();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10, a11, a12);
}

uint64_t sub_1D4F90D40(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v65 = a2;
  v53[2] = a4;
  v62 = a3;
  v5 = type metadata accessor for MusicItemTypedIdentifier(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v63 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v53[1] = v53 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v56 = v53 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = v53 - v12;
  v61 = sub_1D5610088();
  v55 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v54 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v59 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v53 - v17;
  v64 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v64);
  v58 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v21 = v20 - 8;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v57 = v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v53 - v24;
  v27 = *a1;
  v26 = *(a1 + 1);
  v28 = *(v5 + 24);
  v29 = *(v21 + 28);
  v30 = sub_1D560D9A8();
  (*(*(v30 - 8) + 16))(&v25[v29], &a1[v28], v30);
  sub_1D4FB8150();
  *v25 = v27;
  *(v25 + 1) = v26;
  v31 = v64;

  sub_1D4ED0614();
  if (__swift_getEnumTagSinglePayload(v18, 1, v31) != 1)
  {
    v35 = v58;
    sub_1D4FB81A8();
    sub_1D4FB80B0();
    v36 = v59;
    sub_1D4FB80B0();
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v31);
    sub_1D4EC8380();
    v37 = type metadata accessor for GenericMusicItem;
    v38 = v35;
    goto LABEL_13;
  }

  sub_1D4E50004(v18, &qword_1EC7EA608, &qword_1D561C510);
  v32 = v60;
  sub_1D4FB8150();
  v33 = v61;
  if (__swift_getEnumTagSinglePayload(v32, 1, v61) == 1)
  {
    sub_1D4E50004(v32, &qword_1EC7EA358, &unk_1D561DF50);
    v34 = v63;
LABEL_8:
    if (qword_1EDD5D8A8 != -1)
    {
      swift_once();
    }

    v43 = sub_1D560C758();
    __swift_project_value_buffer(v43, qword_1EDD76DC8);
    sub_1D4FB80B0();
    v44 = sub_1D560C738();
    v45 = sub_1D56156C8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v66 = v47;
      *v46 = 136446210;
      sub_1D4FB80B0();
      v48 = sub_1D5614DB8();
      v50 = v49;
      sub_1D4E58460(v34, type metadata accessor for MusicItemTypedIdentifier);
      v51 = sub_1D4E6835C(v48, v50, &v66);

      *(v46 + 4) = v51;
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1DA6ED200](v47, -1, -1);
      MEMORY[0x1DA6ED200](v46, -1, -1);

      return sub_1D4E58460(v25, type metadata accessor for LooselyComparableTypedIdentifier);
    }

    v37 = type metadata accessor for MusicItemTypedIdentifier;
    v38 = v34;
LABEL_13:
    sub_1D4E58460(v38, v37);
    return sub_1D4E58460(v25, type metadata accessor for LooselyComparableTypedIdentifier);
  }

  v40 = v54;
  v39 = v55;
  (*(v55 + 32))(v54, v32, v33);
  v41 = sub_1D560FE08();
  v34 = v63;
  if ((v41 & 1) == 0)
  {
    (*(v39 + 8))(v40, v33);
    goto LABEL_8;
  }

  sub_1D4FB80B0();
  v42 = v56;
  sub_1D52C7FC8();
  sub_1D4E58460(v42, type metadata accessor for MusicItemTypedIdentifier);
  (*(v39 + 8))(v40, v33);
  return sub_1D4E58460(v25, type metadata accessor for LooselyComparableTypedIdentifier);
}

uint64_t static MusicLibraryAdvancedMappingRequest.== infix(_:_:)()
{
  OUTLINED_FUNCTION_69_0();
  v4 = *v3;
  if (*v2)
  {
    if (!v4)
    {
      return 0;
    }

    sub_1D4EFADF4();
    v6 = v5;

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v4)
  {
    return 0;
  }

  sub_1D4F2E050();
  if ((v7 & 1) == 0 || (sub_1D4F91E14(*(v1 + 16), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicLibraryAdvancedMappingRequest(0);

  return _s16MusicKitInternal0A18UserProfileRequestV2eeoiySbAC_ACtFZ_0();
}

void sub_1D4F91528(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_45_12();
    if (v23)
    {
      v4 = 0;
      v5 = v3 + 56;
      OUTLINED_FUNCTION_46_2();
      v9 = v8 & v7;
      v11 = (v10 + 63) >> 6;
      v25 = v6;
      if ((v8 & v7) != 0)
      {
        while (2)
        {
          v12 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
LABEL_11:
          v16 = (*(v6 + 48) + 16 * (v12 | (v4 << 6)));
          v18 = *v16;
          v17 = v16[1];
          sub_1D56162D8();

          sub_1D5614E28();
          v19 = sub_1D5616328();
          v20 = ~(-1 << *(a2 + 32));
          do
          {
            v21 = v19 & v20;
            if (((*(a2 + 56 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
            {

              return;
            }

            v22 = (*(a2 + 48) + 16 * v21);
            v23 = *v22 == v18 && v22[1] == v17;
            if (v23)
            {
              break;
            }

            v24 = sub_1D5616168();
            v19 = v21 + 1;
          }

          while ((v24 & 1) == 0);

          v6 = v25;
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v13 = v4;
      while (1)
      {
        v4 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v4 >= v11)
        {
          return;
        }

        ++v13;
        if (*(v5 + 8 * v4))
        {
          OUTLINED_FUNCTION_113_2();
          v9 = v15 & v14;
          goto LABEL_11;
        }
      }

      __break(1u);
    }
  }
}

void sub_1D4F916AC()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB478, &unk_1D5623530);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v70 - v5;
  v7 = _s13PersistedDateVMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v70 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v86 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v87 = &v70 - v17;
  v18 = _s10DescriptorVMa(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_59_0();
  v22 = (v20 - v21);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = (&v70 - v25);
  MEMORY[0x1EEE9AC00](v24);
  if (v3 == v1 || *(v3 + 16) != *(v1 + 16))
  {
    goto LABEL_44;
  }

  v79 = v11;
  v27 = 0;
  v28 = v3 + 56;
  v29 = 1 << *(v3 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(v3 + 56);
  v32 = (v29 + 63) >> 6;
  v91 = v1 + 56;
  v83 = v7;
  v84 = v6;
  if (!v31)
  {
    goto LABEL_8;
  }

  do
  {
    OUTLINED_FUNCTION_37_13();
    v71 = (v34 - 1) & v34;
    v70 = v35;
LABEL_13:
    v76 = v3;
    v75 = v33;
    OUTLINED_FUNCTION_8_29();
    v42 = v41;
    sub_1D4FB80B0();
    OUTLINED_FUNCTION_31_15();
    v74 = v42;
    sub_1D4FB81A8();
    v43 = v1;
    sub_1D56162D8();
    v44 = *v26;
    v45 = v26[1];
    sub_1D5614E28();
    v46 = v18[5];
    sub_1D560C328();
    OUTLINED_FUNCTION_30_10();
    v48 = sub_1D4FB8108(&qword_1EDD5CF60, v47, MEMORY[0x1E6969540]);
    v90 = v46;
    sub_1D5614CB8();
    v89 = *(v26 + v18[6]);
    sub_1D56162F8();
    v88 = *(v26 + v18[7]);
    MEMORY[0x1DA6EC0D0]();
    v85 = *(v26 + v18[8]);
    MEMORY[0x1DA6EC0D0]();
    v82 = v18[9];
    sub_1D5614CB8();
    v78 = v18[10];
    v49 = v87;
    sub_1D4FB8150();
    OUTLINED_FUNCTION_57(v49, 1, v83);
    if (v56)
    {
      sub_1D56162F8();
    }

    else
    {
      OUTLINED_FUNCTION_14_18();
      v81 = v48;
      v50 = v79;
      sub_1D4FB81A8();
      sub_1D56162F8();
      sub_1D5614CB8();
      OUTLINED_FUNCTION_4_22();
      sub_1D4E58460(v50, v51);
    }

    v52 = v92;
    sub_1D5616328();
    OUTLINED_FUNCTION_19_17();
    if (((*(v91 + v54) >> v92) & 1) == 0)
    {
LABEL_43:
      OUTLINED_FUNCTION_10_26();
      sub_1D4E58460(v26, v69);
LABEL_44:
      OUTLINED_FUNCTION_46();
      return;
    }

    v55 = ~v53;
    while (1)
    {
      OUTLINED_FUNCTION_8_29();
      sub_1D4FB80B0();
      v56 = *v22 == v44 && v22[1] == v45;
      if (!v56 && (sub_1D5616168() & 1) == 0 || (sub_1D560C2E8() & 1) == 0 || v89 != *(v22 + v18[6]) || *(v22 + v18[7]) != v88 || *(v22 + v18[8]) != v85 || (sub_1D560C2E8() & 1) == 0)
      {
        goto LABEL_38;
      }

      v81 = *(v80 + 48);
      v57 = v84;
      sub_1D4FB8150();
      sub_1D4FB8150();
      v58 = v57;
      v59 = v83;
      OUTLINED_FUNCTION_57(v58, 1, v83);
      if (v56)
      {
        break;
      }

      v60 = v84;
      sub_1D4FB8150();
      OUTLINED_FUNCTION_57(v60 + v81, 1, v83);
      if (v61)
      {
        OUTLINED_FUNCTION_4_22();
        sub_1D4E58460(v86, v62);
LABEL_36:
        sub_1D4E50004(v84, &qword_1EC7EB478, &unk_1D5623530);
        goto LABEL_38;
      }

      OUTLINED_FUNCTION_14_18();
      v63 = v77;
      sub_1D4FB81A8();
      LODWORD(v81) = sub_1D560C2E8();
      OUTLINED_FUNCTION_4_22();
      v64 = v63;
      v66 = v65;
      sub_1D4E58460(v64, v67);
      sub_1D4E58460(v86, v66);
      sub_1D4E50004(v84, &qword_1EC7EB470, &qword_1D561F3D0);
      if (v81)
      {
        goto LABEL_40;
      }

LABEL_38:
      OUTLINED_FUNCTION_10_26();
      sub_1D4E58460(v22, v68);
      v52 = (v52 + 1) & v55;
      if (((*(v91 + ((v52 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v52) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    OUTLINED_FUNCTION_57(&v84[v81], 1, v59);
    if (!v56)
    {
      goto LABEL_36;
    }

    sub_1D4E50004(v84, &qword_1EC7EB470, &qword_1D561F3D0);
LABEL_40:
    sub_1D4E58460(v22, _s10DescriptorVMa);
    sub_1D4E58460(v26, _s10DescriptorVMa);
    v3 = v76;
    v28 = v73;
    v32 = v72;
    v1 = v43;
    v27 = v70;
  }

  while (v71);
LABEL_8:
  v36 = v27;
  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v37 >= v32)
    {
      goto LABEL_44;
    }

    ++v36;
    if (*(v28 + 8 * v37))
    {
      OUTLINED_FUNCTION_37_13();
      OUTLINED_FUNCTION_113_2();
      v71 = v39 & v38;
      v70 = v40;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1D4F91E14(uint64_t a1, uint64_t a2)
{
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB208, &qword_1D562F5E0);
  MEMORY[0x1EEE9AC00](v76);
  v5 = &v57 - v4;
  v77 = sub_1D5610088();
  v6 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v57 - v13;
  v75 = type metadata accessor for MusicItemTypedIdentifier(0);
  v15 = MEMORY[0x1EEE9AC00](v75);
  v17 = (&v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = MEMORY[0x1EEE9AC00](v15);
  v79 = (&v57 - v19);
  result = MEMORY[0x1EEE9AC00](v18);
  v23 = &v57 - v22;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v74 = v5;
  v24 = 0;
  v25 = a1 + 56;
  v26 = 1 << *(a1 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(a1 + 56);
  v29 = (v26 + 63) >> 6;
  v67 = (v6 + 32);
  v70 = (v6 + 8);
  v81 = a2 + 56;
  v69 = v8;
  v68 = v12;
  if (!v28)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v59 = v29;
    v60 = v25;
    v58 = (v28 - 1) & v28;
LABEL_13:
    v61 = v24;
    v80 = *(v21 + 72);
    v63 = v21;
    sub_1D4FB80B0();
    v62 = v23;
    v32 = v79;
    sub_1D4FB81A8();
    sub_1D56162D8();
    v33 = *v32;
    v34 = v32[1];
    sub_1D5614E28();
    v82 = v32[2];
    sub_1D4F0B2F0();
    v35 = v75;
    v36 = *(v75 + 24);
    v73 = sub_1D560D9A8();
    sub_1D4FB8108(&qword_1EDD53C28, MEMORY[0x1E6974F80], MEMORY[0x1E6974F88]);
    v78 = v36;
    sub_1D5614CB8();
    v73 = *(v35 + 28);
    sub_1D4FB8150();
    v37 = v77;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v77);
    v65 = a1;
    v64 = v14;
    if (EnumTagSinglePayload == 1)
    {
      sub_1D56162F8();
    }

    else
    {
      (*v67)(v8, v14, v37);
      sub_1D56162F8();
      sub_1D4FB8108(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
      sub_1D5614CB8();
      (*v70)(v8, v37);
    }

    v39 = sub_1D5616328();
    v40 = -1 << *(a2 + 32);
    v41 = v39 & ~v40;
    if (((*(v81 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
    {
LABEL_49:
      sub_1D4E58460(v79, type metadata accessor for MusicItemTypedIdentifier);
      return 0;
    }

    v42 = ~v40;
    v71 = (v82 + 40);
    v72 = ~v40;
    while (1)
    {
      v43 = a2;
      sub_1D4FB80B0();
      result = *v17;
      if (*v17 != v33 || v17[1] != v34)
      {
        result = sub_1D5616168();
        if ((result & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v45 = v17[2];
      v46 = *(v45 + 16);
      if (v46 != *(v82 + 16))
      {
        goto LABEL_44;
      }

      if (v46)
      {
        v47 = v45 == v82;
      }

      else
      {
        v47 = 1;
      }

      if (!v47)
      {
        v48 = (v45 + 40);
        v49 = v71;
        while (v46)
        {
          result = *(v48 - 1);
          if (result != *(v49 - 1) || *v48 != *v49)
          {
            result = sub_1D5616168();
            if ((result & 1) == 0)
            {
              goto LABEL_44;
            }
          }

          v48 += 2;
          v49 += 2;
          if (!--v46)
          {
            goto LABEL_36;
          }
        }

        __break(1u);
        goto LABEL_52;
      }

LABEL_36:
      if ((sub_1D560D8C8() & 1) == 0)
      {
        goto LABEL_44;
      }

      v51 = *(v76 + 48);
      v52 = v74;
      sub_1D4FB8150();
      sub_1D4FB8150();
      v53 = v77;
      if (__swift_getEnumTagSinglePayload(v52, 1, v77) == 1)
      {
        break;
      }

      v55 = v68;
      sub_1D4FB8150();
      if (__swift_getEnumTagSinglePayload(v52 + v51, 1, v53) == 1)
      {
        (*v70)(v55, v53);
        v42 = v72;
        goto LABEL_42;
      }

      (*v67)(v69, (v52 + v51), v53);
      sub_1D4FB8108(&qword_1EDD53350, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BE0]);
      v66 = sub_1D5614D18();
      v56 = *v70;
      (*v70)(v69, v53);
      v56(v55, v53);
      sub_1D4E50004(v52, &qword_1EC7EA358, &unk_1D561DF50);
      v42 = v72;
      if (v66)
      {
        goto LABEL_46;
      }

LABEL_44:
      sub_1D4E58460(v17, type metadata accessor for MusicItemTypedIdentifier);
      v41 = (v41 + 1) & v42;
      a2 = v43;
      if (((*(v81 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
      {
        goto LABEL_49;
      }
    }

    v54 = __swift_getEnumTagSinglePayload(v52 + v51, 1, v53);
    v42 = v72;
    if (v54 != 1)
    {
LABEL_42:
      sub_1D4E50004(v52, &qword_1EC7EB208, &qword_1D562F5E0);
      goto LABEL_44;
    }

    sub_1D4E50004(v52, &qword_1EC7EA358, &unk_1D561DF50);
LABEL_46:
    sub_1D4E58460(v17, type metadata accessor for MusicItemTypedIdentifier);
    result = sub_1D4E58460(v79, type metadata accessor for MusicItemTypedIdentifier);
    a2 = v43;
    a1 = v65;
    v8 = v69;
    v14 = v64;
    v21 = v63;
    v23 = v62;
    v24 = v61;
    v25 = v60;
    v29 = v59;
    v28 = v58;
    if (v58)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v30 = v24;
  while (1)
  {
    v24 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v24 >= v29)
    {
      return 1;
    }

    v31 = *(v25 + 8 * v24);
    ++v30;
    if (v31)
    {
      v59 = v29;
      v60 = v25;
      v58 = (v31 - 1) & v31;
      goto LABEL_13;
    }
  }

LABEL_52:
  __break(1u);
  return result;
}

void sub_1D4F92758(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_45_12();
    if (v4)
    {
      v5 = 0;
      v6 = 1 << *(a1 + 32);
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      else
      {
        v7 = -1;
      }

      v8 = v7 & *(a1 + 56);
      v9 = (v6 + 63) >> 6;
LABEL_8:
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
LABEL_15:
        v14 = *(*(a1 + 48) + (v10 | (v5 << 6)));
        sub_1D56162D8();
        MEMORY[0x1DA6EC0D0](v14);
        v15 = sub_1D5616328();
        v16 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v17 = v15 & v16;
          if (((*(a2 + 56 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
          {
            break;
          }

          v15 = v17 + 1;
          if (*(*(a2 + 48) + v17) == v14)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        v11 = v5;
        while (1)
        {
          v5 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v5 >= v9)
          {
            return;
          }

          ++v11;
          if (*(a1 + 56 + 8 * v5))
          {
            OUTLINED_FUNCTION_113_2();
            v8 = v13 & v12;
            goto LABEL_15;
          }
        }

        __break(1u);
      }
    }
  }
}

void sub_1D4F928A4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_69_0();
  v41 = type metadata accessor for MusicSuggestedSongsEntry(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_59_0();
  v5 = v3 - v4;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v35 - v10;
  if (v1 == v0 || *(v1 + 16) != *(v0 + 16))
  {
LABEL_24:
    OUTLINED_FUNCTION_46();
    return;
  }

  v12 = 0;
  v35 = v1 + 56;
  OUTLINED_FUNCTION_46_2();
  v15 = v14 & v13;
  v17 = (v16 + 63) >> 6;
  v18 = v0 + 56;
  v36 = v17;
  v37 = v11;
  v38 = v19;
  v39 = v1;
  if (v15)
  {
    while (1)
    {
      v40 = (v15 - 1) & v15;
LABEL_10:
      OUTLINED_FUNCTION_13_26();
      sub_1D4FB80B0();
      OUTLINED_FUNCTION_27_12();
      sub_1D4FB81A8();
      sub_1D56162D8();
      sub_1D5613838();
      OUTLINED_FUNCTION_26_15();
      sub_1D4FB8108(&qword_1EC7EB458, v23, MEMORY[0x1E6976BF8]);
      sub_1D5614CB8();
      v24 = &v9[*(v41 + 20)];
      v26 = *v24;
      v25 = *(v24 + 1);
      sub_1D5614E28();
      v27 = v42;
      sub_1D5616328();
      OUTLINED_FUNCTION_19_17();
      if (((*(v18 + v29) >> v42) & 1) == 0)
      {
        break;
      }

      v30 = ~v28;
      while (1)
      {
        OUTLINED_FUNCTION_13_26();
        sub_1D4FB80B0();
        if (sub_1D56137A8())
        {
          v31 = (v5 + *(v41 + 20));
          v32 = *v31 == v26 && v31[1] == v25;
          if (v32 || (sub_1D5616168() & 1) != 0)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_11_26();
        sub_1D4E58460(v5, v33);
        v27 = (v27 + 1) & v30;
        if (((*(v18 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      sub_1D4E58460(v5, type metadata accessor for MusicSuggestedSongsEntry);
      sub_1D4E58460(v9, type metadata accessor for MusicSuggestedSongsEntry);
      v17 = v36;
      v15 = v40;
      if (!v40)
      {
        goto LABEL_5;
      }
    }

LABEL_23:
    OUTLINED_FUNCTION_11_26();
    sub_1D4E58460(v9, v34);
    goto LABEL_24;
  }

LABEL_5:
  v20 = v12;
  while (1)
  {
    v12 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      goto LABEL_24;
    }

    ++v20;
    if (*(v35 + 8 * v12))
    {
      OUTLINED_FUNCTION_113_2();
      v40 = v22 & v21;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1D4F92BB4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = a1;
    OUTLINED_FUNCTION_45_12();
    if (v5)
    {
      v6 = 0;
      v7 = v4 + 56;
      OUTLINED_FUNCTION_46_2();
      v10 = v9 & v8;
      v12 = (v11 + 63) >> 6;
      v13 = a2 + 56;
      v25 = v4;
      if ((v9 & v8) != 0)
      {
        while (1)
        {
          v14 = __clz(__rbit64(v10));
          v10 &= v10 - 1;
LABEL_11:
          v18 = *(*(v4 + 48) + (v14 | (v6 << 6)));
          sub_1D5474688(*(a2 + 40));
          OUTLINED_FUNCTION_19_17();
          if (((*(v13 + v20) >> v2) & 1) == 0)
          {
            break;
          }

          v21 = ~v19;
          if (v18)
          {
            v22 = 0x6577656976657270;
          }

          else
          {
            v22 = 0x6573736572706D69;
          }

          while (1)
          {
            v23 = *(*(a2 + 48) + v2) ? 0x6577656976657270 : 0x6573736572706D69;
            if (v23 == v22)
            {
              break;
            }

            v24 = sub_1D5616168();
            swift_bridgeObjectRelease_n();
            if (v24)
            {
              goto LABEL_23;
            }

            v2 = (v2 + 1) & v21;
            if (((*(v13 + ((v2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v2) & 1) == 0)
            {
              return;
            }
          }

          swift_bridgeObjectRelease_n();
LABEL_23:
          v4 = v25;
          if (!v10)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
LABEL_6:
        v15 = v6;
        while (1)
        {
          v6 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v6 >= v12)
          {
            return;
          }

          ++v15;
          if (*(v7 + 8 * v6))
          {
            OUTLINED_FUNCTION_113_2();
            v10 = v17 & v16;
            goto LABEL_11;
          }
        }

        __break(1u);
      }
    }
  }
}

uint64_t MusicLibraryAdvancedMappingRequest.hashValue.getter()
{
  sub_1D56162D8();
  MusicLibraryAdvancedMappingRequest.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t sub_1D4F92EA4(uint64_t a1)
{
  sub_1D56162D8();
  MusicLibraryAdvancedMappingRequest.hash(into:)(v2);
  return sub_1D5616328();
}

uint64_t sub_1D4F92EE0()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v3;
  *v3 = v4;
  v3[1] = sub_1D4E73560;

  return MusicLibraryAdvancedMappingRequest.response()(v2);
}

uint64_t sub_1D4F92F70()
{
  OUTLINED_FUNCTION_80();
  swift_task_alloc();
  OUTLINED_FUNCTION_58();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_1D4E6ED20;

  return MusicLibraryAdvancedMappingRequest.response(revisionID:requester:previousResponse:)();
}

uint64_t sub_1D4F93010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v48 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v48);
  v49 = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v50);
  v51 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v55);
  v56 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D5614408();
  v54 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D5613838();
  v57 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v62);
  v64 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D560F8B8();
  v63 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v67 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1D5614B68();
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1D5614898();
  v70 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v74 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1D560EEA8();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v92 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v78);
  v77 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1D5613C48();
  v76 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v91 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v82);
  v81 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1D56141F8();
  v80 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v86);
  v85 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v89);
  v88 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1D5613EF8();
  v87 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v22 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D5613AF8();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for UploadedVideo(0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v47[2] = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4FB80B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  v33 = swift_dynamicCast();
  v47[1] = v27;
  if (v33)
  {
    sub_1D4E48324(v95, v97);
    __swift_project_boxed_opaque_existential_1(v97, v97[3]);
    sub_1D560D078();
    sub_1D4E58460(a1, type metadata accessor for UploadedVideo);
    __swift_destroy_boxed_opaque_existential_1(v97);
  }

  else
  {
    v96 = 0;
    memset(v95, 0, sizeof(v95));
    sub_1D4E50004(v95, &qword_1EC7EC520, &unk_1D5621050);
    v99 = v27;
    v100 = sub_1D4FB8108(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
    __swift_allocate_boxed_opaque_existential_0(&v98);
    sub_1D4FB81A8();
  }

  sub_1D4E48324(&v98, v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v34 = swift_dynamicCast();
  v36 = v92;
  v35 = v93;
  v37 = v91;
  if (v34)
  {
    (*(v24 + 32))(v32, v26, v23);
  }

  else
  {
    v38 = v90;
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (!swift_dynamicCast() && !swift_dynamicCast())
      {
        v39 = v83;
        v40 = v84;
        if (swift_dynamicCast())
        {
          (*(v80 + 32))(v32, v39, v40);
          goto LABEL_41;
        }

        if (!swift_dynamicCast())
        {
          v41 = v79;
          if (swift_dynamicCast())
          {
            (*(v76 + 32))(v32, v37, v41);
            goto LABEL_41;
          }

          if (!swift_dynamicCast())
          {
            v42 = v75;
            if (swift_dynamicCast())
            {
              (*(v73 + 32))(v32, v36, v42);
              goto LABEL_41;
            }

            v43 = v74;
            if (swift_dynamicCast())
            {
              (*(v70 + 32))(v32, v43, v35);
              goto LABEL_41;
            }

            if (!swift_dynamicCast())
            {
              v44 = v68;
              if (swift_dynamicCast())
              {
                (*(v65 + 32))(v32, v44, v69);
                goto LABEL_41;
              }

              if (swift_dynamicCast())
              {
                (*(v63 + 32))(v32, v67, v66);
                goto LABEL_41;
              }

              if (!swift_dynamicCast())
              {
                if (swift_dynamicCast())
                {
                  (*(v57 + 32))(v32, v60, v61);
                  goto LABEL_41;
                }

                if (swift_dynamicCast())
                {
                  (*(v54 + 32))(v32, v58, v59);
                  goto LABEL_41;
                }

                if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
                {
                  __swift_destroy_boxed_opaque_existential_1(v97);
                  v45 = 1;
                  return __swift_storeEnumTagSinglePayload(v94, v45, 1, v30);
                }
              }
            }
          }
        }
      }

      sub_1D4FB81A8();
      goto LABEL_41;
    }

    (*(v87 + 32))(v32, v22, v38);
  }

LABEL_41:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v97);
  sub_1D4FB81A8();
  v45 = 0;
  return __swift_storeEnumTagSinglePayload(v94, v45, 1, v30);
}

uint64_t sub_1D4F94228@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v47[0] = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v47[0]);
  v47[1] = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v48);
  v49 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v50);
  v51 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v53);
  v54 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_1D5614408();
  v52 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v56 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D5613838();
  v55 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v60);
  v62 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1D560F8B8();
  v61 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v65 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D5614B68();
  v63 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v70);
  v69 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1D5614898();
  v68 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v72 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1D560EEA8();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v91 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v76);
  v75 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D5613C48();
  v74 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1D56141F8();
  v79 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v85);
  v84 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v88);
  v87 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1D5613EF8();
  v86 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D5613AF8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for UploadedAudio(0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v47[3] = v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4FB80B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  v32 = swift_dynamicCast();
  v47[2] = v26;
  if (v32)
  {
    sub_1D4E48324(v94, v96);
    __swift_project_boxed_opaque_existential_1(v96, v96[3]);
    sub_1D560D078();
    sub_1D4E58460(a1, type metadata accessor for UploadedAudio);
    __swift_destroy_boxed_opaque_existential_1(v96);
  }

  else
  {
    v95 = 0;
    memset(v94, 0, sizeof(v94));
    sub_1D4E50004(v94, &qword_1EC7EC520, &unk_1D5621050);
    v98 = v26;
    v99 = sub_1D4FB8108(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
    __swift_allocate_boxed_opaque_existential_0(&v97);
    sub_1D4FB81A8();
  }

  sub_1D4E48324(&v97, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v33 = swift_dynamicCast();
  v35 = v91;
  v34 = v92;
  if (v33)
  {
    (*(v23 + 32))(v31, v25, v22);
  }

  else
  {
    v37 = v89;
    v36 = v90;
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (!swift_dynamicCast() && !swift_dynamicCast())
      {
        v38 = v82;
        v39 = v83;
        if (swift_dynamicCast())
        {
          (*(v79 + 32))(v31, v38, v39);
          goto LABEL_41;
        }

        if (!swift_dynamicCast())
        {
          v40 = v77;
          v41 = v78;
          if (swift_dynamicCast())
          {
            (*(v74 + 32))(v31, v40, v41);
            goto LABEL_41;
          }

          if (!swift_dynamicCast())
          {
            v42 = v73;
            if (swift_dynamicCast())
            {
              (*(v71 + 32))(v31, v35, v42);
              goto LABEL_41;
            }

            v43 = v72;
            if (swift_dynamicCast())
            {
              (*(v68 + 32))(v31, v43, v34);
              goto LABEL_41;
            }

            if (!swift_dynamicCast())
            {
              v44 = v66;
              if (swift_dynamicCast())
              {
                (*(v63 + 32))(v31, v44, v67);
                goto LABEL_41;
              }

              if (swift_dynamicCast())
              {
                (*(v61 + 32))(v31, v65, v64);
                goto LABEL_41;
              }

              if (!swift_dynamicCast())
              {
                if (swift_dynamicCast())
                {
                  (*(v55 + 32))(v31, v58, v59);
                  goto LABEL_41;
                }

                if (swift_dynamicCast())
                {
                  (*(v52 + 32))(v31, v56, v57);
                  goto LABEL_41;
                }

                if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
                {
                  __swift_destroy_boxed_opaque_existential_1(v96);
                  v45 = 1;
                  return __swift_storeEnumTagSinglePayload(v93, v45, 1, v29);
                }
              }
            }
          }
        }
      }

      sub_1D4FB81A8();
      goto LABEL_41;
    }

    (*(v86 + 32))(v31, v37, v36);
  }

LABEL_41:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v96);
  sub_1D4FB81A8();
  v45 = 0;
  return __swift_storeEnumTagSinglePayload(v93, v45, 1, v29);
}

uint64_t sub_1D4F95440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v47[0] = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v47[0]);
  v47[1] = v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v48);
  v49 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v55);
  v56 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D5614408();
  v54 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D5613838();
  v57 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v62);
  v64 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D560F8B8();
  v63 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v67 = v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1D5614B68();
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1D5614898();
  v70 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v74 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1D560EEA8();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v93 = v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v78);
  v77 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1D5613C48();
  v76 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D56141F8();
  v81 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v87);
  v86 = v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1D5613EF8();
  v88 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D5613AF8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TVShow(0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v51 = v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4FB80B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  v32 = swift_dynamicCast();
  v50 = v26;
  if (v32)
  {
    sub_1D4E48324(v96, v98);
    __swift_project_boxed_opaque_existential_1(v98, v98[3]);
    sub_1D560D078();
    sub_1D4E58460(a1, type metadata accessor for TVShow);
    __swift_destroy_boxed_opaque_existential_1(v98);
  }

  else
  {
    v97 = 0;
    memset(v96, 0, sizeof(v96));
    sub_1D4E50004(v96, &qword_1EC7EC520, &unk_1D5621050);
    v100 = v26;
    v101 = sub_1D4FB8108(&qword_1EC7EA688, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
    __swift_allocate_boxed_opaque_existential_0(&v99);
    sub_1D4FB81A8();
  }

  sub_1D4E48324(&v99, v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v33 = swift_dynamicCast();
  v35 = v93;
  v34 = v94;
  if (v33)
  {
    (*(v23 + 32))(v31, v25, v22);
  }

  else
  {
    v37 = v91;
    v36 = v92;
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (!swift_dynamicCast() && !swift_dynamicCast())
      {
        v38 = v84;
        v39 = v85;
        if (swift_dynamicCast())
        {
          (*(v81 + 32))(v31, v38, v39);
          goto LABEL_41;
        }

        if (!swift_dynamicCast())
        {
          v40 = v79;
          v41 = v80;
          if (swift_dynamicCast())
          {
            (*(v76 + 32))(v31, v40, v41);
            goto LABEL_41;
          }

          if (!swift_dynamicCast())
          {
            v42 = v75;
            if (swift_dynamicCast())
            {
              (*(v73 + 32))(v31, v35, v42);
              goto LABEL_41;
            }

            v43 = v74;
            if (swift_dynamicCast())
            {
              (*(v70 + 32))(v31, v43, v34);
              goto LABEL_41;
            }

            if (!swift_dynamicCast())
            {
              v44 = v68;
              if (swift_dynamicCast())
              {
                (*(v65 + 32))(v31, v44, v69);
                goto LABEL_41;
              }

              if (swift_dynamicCast())
              {
                (*(v63 + 32))(v31, v67, v66);
                goto LABEL_41;
              }

              if (!swift_dynamicCast())
              {
                if (swift_dynamicCast())
                {
                  (*(v57 + 32))(v31, v60, v61);
                  goto LABEL_41;
                }

                if (swift_dynamicCast())
                {
                  (*(v54 + 32))(v31, v58, v59);
                  goto LABEL_41;
                }

                if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
                {
                  __swift_destroy_boxed_opaque_existential_1(v98);
                  v45 = 1;
                  return __swift_storeEnumTagSinglePayload(v95, v45, 1, v29);
                }
              }
            }
          }
        }
      }

      sub_1D4FB81A8();
      goto LABEL_41;
    }

    (*(v88 + 32))(v31, v37, v36);
  }

LABEL_41:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v98);
  sub_1D4FB81A8();
  v45 = 0;
  return __swift_storeEnumTagSinglePayload(v95, v45, 1, v29);
}

uint64_t sub_1D4F96658@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v49[0] = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v49[0]);
  v49[1] = v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v50);
  v51 = v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v57);
  v58 = v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D5614408();
  v56 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D5613838();
  v59 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v64);
  v66 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D560F8B8();
  v65 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v69 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D5614B68();
  v67 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1D5614898();
  v72 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v76 = v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D560EEA8();
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v95 = v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v80);
  v79 = v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1D5613C48();
  v78 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v85);
  v84 = v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1D56141F8();
  v83 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v89);
  v88 = v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v92);
  v91 = v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1D5613EF8();
  v90 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D5613AF8();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TVSeason(0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v55 = v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4FB80B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  v32 = swift_dynamicCast();
  v54 = v26;
  if (v32)
  {
    sub_1D4E48324(v98, v100);
    __swift_project_boxed_opaque_existential_1(v100, v100[3]);
    v33 = v97;
    sub_1D560D078();
    sub_1D4E58460(a1, type metadata accessor for TVSeason);
    __swift_destroy_boxed_opaque_existential_1(v100);
  }

  else
  {
    v99 = 0;
    memset(v98, 0, sizeof(v98));
    sub_1D4E50004(v98, &qword_1EC7EC520, &unk_1D5621050);
    v102 = v26;
    v103 = sub_1D4FB8108(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
    __swift_allocate_boxed_opaque_existential_0(&v101);
    sub_1D4FB81A8();
    v33 = v97;
  }

  sub_1D4E48324(&v101, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v34 = swift_dynamicCast();
  v35 = v25;
  v37 = v95;
  v36 = v96;
  if (v34)
  {
    (*(v23 + 32))(v31, v35, v22);
  }

  else
  {
    v39 = v93;
    v38 = v94;
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (!swift_dynamicCast() && !swift_dynamicCast())
      {
        v40 = v86;
        v41 = v87;
        if (swift_dynamicCast())
        {
          (*(v83 + 32))(v31, v40, v41);
          goto LABEL_41;
        }

        if (!swift_dynamicCast())
        {
          v42 = v81;
          v43 = v82;
          if (swift_dynamicCast())
          {
            (*(v78 + 32))(v31, v42, v43);
            goto LABEL_41;
          }

          if (!swift_dynamicCast())
          {
            v44 = v77;
            if (swift_dynamicCast())
            {
              (*(v75 + 32))(v31, v37, v44);
              goto LABEL_41;
            }

            v45 = v76;
            if (swift_dynamicCast())
            {
              (*(v72 + 32))(v31, v45, v36);
              goto LABEL_41;
            }

            if (!swift_dynamicCast())
            {
              v46 = v70;
              if (swift_dynamicCast())
              {
                (*(v67 + 32))(v31, v46, v71);
                goto LABEL_41;
              }

              if (swift_dynamicCast())
              {
                (*(v65 + 32))(v31, v69, v68);
                goto LABEL_41;
              }

              if (!swift_dynamicCast())
              {
                if (swift_dynamicCast())
                {
                  (*(v59 + 32))(v31, v62, v63);
                  goto LABEL_41;
                }

                if (swift_dynamicCast())
                {
                  (*(v56 + 32))(v31, v60, v61);
                  goto LABEL_41;
                }

                if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
                {
                  __swift_destroy_boxed_opaque_existential_1(v100);
                  v47 = 1;
                  return __swift_storeEnumTagSinglePayload(v33, v47, 1, v29);
                }
              }
            }
          }
        }
      }

      sub_1D4FB81A8();
      goto LABEL_41;
    }

    (*(v90 + 32))(v31, v39, v38);
  }

LABEL_41:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v100);
  sub_1D4FB81A8();
  v47 = 0;
  return __swift_storeEnumTagSinglePayload(v33, v47, 1, v29);
}

uint64_t sub_1D4F9788C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v48 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D5614408();
  v57 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D5613838();
  v59 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D560F8B8();
  v65 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D5614B68();
  v67 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v72);
  v74 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1D5614898();
  v73 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v76 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D560EEA8();
  v75 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1D5613C48();
  v79 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1D56141F8();
  v84 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1D5613EF8();
  v91 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D5613AF8();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v47 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for TVEpisode(0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v58 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4FB80B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  v33 = swift_dynamicCast();
  v56 = v27;
  if (v33)
  {
    sub_1D4E48324(v97, v99);
    v47 = v32;
    __swift_project_boxed_opaque_existential_1(v99, v99[3]);
    v32 = v47;
    v34 = v95;
    sub_1D560D078();
    sub_1D4E58460(a1, type metadata accessor for TVEpisode);
    __swift_destroy_boxed_opaque_existential_1(v99);
  }

  else
  {
    v98 = 0;
    memset(v97, 0, sizeof(v97));
    sub_1D4E50004(v97, &qword_1EC7EC520, &unk_1D5621050);
    v101 = v27;
    v102 = sub_1D4FB8108(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
    __swift_allocate_boxed_opaque_existential_0(&v100);
    sub_1D4FB81A8();
    v34 = v95;
  }

  sub_1D4E48324(&v100, v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v35 = swift_dynamicCast();
  v36 = v96;
  if (v35)
  {
    (*(v24 + 32))(v32, v26, v23);
  }

  else
  {
    v37 = v94;
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (!swift_dynamicCast() && !swift_dynamicCast())
      {
        v38 = v87;
        v39 = v88;
        if (swift_dynamicCast())
        {
          (*(v84 + 32))(v32, v38, v39);
          goto LABEL_41;
        }

        if (!swift_dynamicCast())
        {
          v40 = v82;
          v41 = v83;
          if (swift_dynamicCast())
          {
            (*(v79 + 32))(v32, v40, v41);
            goto LABEL_41;
          }

          if (!swift_dynamicCast())
          {
            v42 = v77;
            v43 = v78;
            if (swift_dynamicCast())
            {
              (*(v75 + 32))(v32, v42, v43);
              goto LABEL_41;
            }

            v44 = v76;
            if (swift_dynamicCast())
            {
              (*(v73 + 32))(v32, v44, v36);
              goto LABEL_41;
            }

            if (!swift_dynamicCast())
            {
              if (swift_dynamicCast())
              {
                (*(v67 + 32))(v32, v70, v71);
                goto LABEL_41;
              }

              if (swift_dynamicCast())
              {
                (*(v65 + 32))(v32, v69, v68);
                goto LABEL_41;
              }

              if (!swift_dynamicCast())
              {
                if (swift_dynamicCast())
                {
                  (*(v59 + 32))(v32, v62, v63);
                  goto LABEL_41;
                }

                if (swift_dynamicCast())
                {
                  (*(v57 + 32))(v32, v60, v61);
                  goto LABEL_41;
                }

                if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
                {
                  __swift_destroy_boxed_opaque_existential_1(v99);
                  v45 = 1;
                  return __swift_storeEnumTagSinglePayload(v34, v45, 1, v30);
                }
              }
            }
          }
        }
      }

      sub_1D4FB81A8();
      goto LABEL_41;
    }

    (*(v91 + 32))(v32, v22, v37);
  }

LABEL_41:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v99);
  sub_1D4FB81A8();
  v45 = 0;
  return __swift_storeEnumTagSinglePayload(v34, v45, 1, v30);
}

uint64_t sub_1D4F98AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v57 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1D5613838();
  v68 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D560F8B8();
  v74 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1D5614B68();
  v76 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1D5614898();
  v81 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v85 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1D560EEA8();
  v84 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1D5613C48();
  v88 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v104 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1D56141F8();
  v92 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v100);
  v102 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1D5613EF8();
  v99 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v22 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D5613AF8();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v56 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D5614408();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v69 = &v56 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v56 - v31;
  v33 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v56 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v28 + 16);
  v107 = a1;
  v36(v32, a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  v37 = v27;
  v38 = swift_dynamicCast();
  v70 = v27;
  v65 = v28;
  v103 = v33;
  if (v38)
  {
    sub_1D4E48324(v108, v110);
    v56 = v26;
    __swift_project_boxed_opaque_existential_1(v110, v110[3]);
    v26 = v56;
    v39 = v105;
    sub_1D560D078();
    (*(v28 + 8))(v107, v37);
    __swift_destroy_boxed_opaque_existential_1(v110);
  }

  else
  {
    v109 = 0;
    memset(v108, 0, sizeof(v108));
    sub_1D4E50004(v108, &qword_1EC7EC520, &unk_1D5621050);
    v112 = v27;
    v113 = MEMORY[0x1E6977150];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v111);
    (*(v28 + 32))(boxed_opaque_existential_0, v107, v27);
    v39 = v105;
  }

  sub_1D4E48324(&v111, v110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v41 = swift_dynamicCast();
  v42 = v106;
  v43 = v104;
  if (v41)
  {
    (*(v24 + 32))(v35, v26, v23);
LABEL_29:
    v53 = v103;
    goto LABEL_30;
  }

  v44 = v22;
  v45 = v101;
  if (swift_dynamicCast())
  {
    (*(v99 + 32))(v35, v44, v45);
    goto LABEL_29;
  }

  if (swift_dynamicCast() || swift_dynamicCast())
  {
    goto LABEL_28;
  }

  v46 = v95;
  v47 = v96;
  if (swift_dynamicCast())
  {
    (*(v92 + 32))(v35, v46, v47);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_28;
  }

  v48 = v91;
  if (swift_dynamicCast())
  {
    (*(v88 + 32))(v35, v43, v48);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_28;
  }

  v49 = v86;
  v50 = v87;
  if (swift_dynamicCast())
  {
    (*(v84 + 32))(v35, v49, v50);
    goto LABEL_29;
  }

  v51 = v85;
  if (swift_dynamicCast())
  {
    (*(v81 + 32))(v35, v51, v42);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_28;
  }

  v52 = v79;
  if (swift_dynamicCast())
  {
    (*(v76 + 32))(v35, v52, v80);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    (*(v74 + 32))(v35, v78, v77);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
LABEL_28:
    sub_1D4FB81A8();
    goto LABEL_29;
  }

  v53 = v103;
  if (swift_dynamicCast())
  {
    (*(v68 + 32))(v35, v71, v72);
  }

  else if (swift_dynamicCast())
  {
    (*(v65 + 32))(v35, v69, v70);
  }

  else
  {
    if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v110);
      v54 = 1;
      return __swift_storeEnumTagSinglePayload(v39, v54, 1, v53);
    }

    sub_1D4FB81A8();
  }

LABEL_30:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v110);
  sub_1D4FB81A8();
  v54 = 0;
  return __swift_storeEnumTagSinglePayload(v39, v54, 1, v53);
}

uint64_t sub_1D4F99CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v55 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v64);
  v65 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D5614408();
  v63 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1D560F8B8();
  v72 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v76 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D5614B68();
  v74 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v81);
  v80 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1D5614898();
  v79 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v104 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D560EEA8();
  v82 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1D5613C48();
  v86 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v17);
  v18 = sub_1D56141F8();
  v91 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v102 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v96);
  v101 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1D5613EF8();
  v95 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1D5613AF8();
  v97 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v54 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D5613838();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v69 = &v54 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v54 - v29;
  v31 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v54 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v26 + 16);
  v103 = a1;
  v34(v30, a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  v35 = swift_dynamicCast();
  v70 = v25;
  v92 = v18;
  v66 = v26;
  if (v35)
  {
    sub_1D4E48324(v106, v108);
    __swift_project_boxed_opaque_existential_1(v108, v108[3]);
    sub_1D560D078();
    (*(v26 + 8))(v103, v25);
    __swift_destroy_boxed_opaque_existential_1(v108);
  }

  else
  {
    v107 = 0;
    memset(v106, 0, sizeof(v106));
    sub_1D4E50004(v106, &qword_1EC7EC520, &unk_1D5621050);
    v110 = v25;
    v111 = MEMORY[0x1E6976BB0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v109);
    (*(v26 + 32))(boxed_opaque_existential_0, v103, v25);
  }

  sub_1D4E48324(&v109, v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v37 = v99;
  v38 = v100;
  v39 = swift_dynamicCast();
  v40 = v102;
  if (v39)
  {
    (*(v97 + 32))(v33, v37, v38);
  }

  else
  {
    v41 = v104;
    v42 = v23;
    v43 = v98;
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (!swift_dynamicCast() && !swift_dynamicCast())
      {
        v44 = v40;
        v45 = v92;
        if (swift_dynamicCast())
        {
          (*(v91 + 32))(v33, v44, v45);
          goto LABEL_41;
        }

        if (!swift_dynamicCast())
        {
          v46 = v89;
          v47 = v90;
          if (swift_dynamicCast())
          {
            (*(v86 + 32))(v33, v46, v47);
            goto LABEL_41;
          }

          if (!swift_dynamicCast())
          {
            v48 = v84;
            v49 = v85;
            if (swift_dynamicCast())
            {
              (*(v82 + 32))(v33, v48, v49);
              goto LABEL_41;
            }

            v50 = v83;
            if (swift_dynamicCast())
            {
              (*(v79 + 32))(v33, v41, v50);
              goto LABEL_41;
            }

            if (!swift_dynamicCast())
            {
              v51 = v77;
              if (swift_dynamicCast())
              {
                (*(v74 + 32))(v33, v51, v78);
                goto LABEL_41;
              }

              if (swift_dynamicCast())
              {
                (*(v72 + 32))(v33, v76, v75);
                goto LABEL_41;
              }

              if (!swift_dynamicCast())
              {
                if (swift_dynamicCast())
                {
                  (*(v66 + 32))(v33, v69, v70);
                  goto LABEL_41;
                }

                if (swift_dynamicCast())
                {
                  (*(v63 + 32))(v33, v67, v68);
                  goto LABEL_41;
                }

                if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
                {
                  __swift_destroy_boxed_opaque_existential_1(v108);
                  v52 = 1;
                  return __swift_storeEnumTagSinglePayload(v105, v52, 1, v31);
                }
              }
            }
          }
        }
      }

      sub_1D4FB81A8();
      goto LABEL_41;
    }

    (*(v95 + 32))(v33, v42, v43);
  }

LABEL_41:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v108);
  sub_1D4FB81A8();
  v52 = 0;
  return __swift_storeEnumTagSinglePayload(v105, v52, 1, v31);
}

uint64_t sub_1D4F9AF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v46 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1D5614408();
  v54 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v58 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D5613838();
  v57 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D560F8B8();
  v64 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v67 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1D5614B68();
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1D5614898();
  v71 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1D560EEA8();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1D5613C48();
  v76 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v82);
  v84 = sub_1D56141F8();
  v81 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1D5613EF8();
  v87 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D5613AF8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for SocialProfile(0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v62 = &v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v45 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4FB80B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  v31 = swift_dynamicCast();
  v63 = v25;
  if (v31)
  {
    sub_1D4E48324(v95, v97);
    __swift_project_boxed_opaque_existential_1(v97, v97[3]);
    sub_1D560D078();
    sub_1D4E58460(a1, type metadata accessor for SocialProfile);
    __swift_destroy_boxed_opaque_existential_1(v97);
  }

  else
  {
    v96 = 0;
    memset(v95, 0, sizeof(v95));
    sub_1D4E50004(v95, &qword_1EC7EC520, &unk_1D5621050);
    v99 = v25;
    v100 = sub_1D4FB8108(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    __swift_allocate_boxed_opaque_existential_0(&v98);
    sub_1D4FB81A8();
  }

  sub_1D4E48324(&v98, v97);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v32 = swift_dynamicCast();
  v34 = v92;
  v33 = v93;
  if (v32)
  {
    (*(v22 + 32))(v30, v24, v21);
  }

  else
  {
    v36 = v90;
    v35 = v91;
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (!swift_dynamicCast() && !swift_dynamicCast())
      {
        v37 = v83;
        v38 = v84;
        if (swift_dynamicCast())
        {
          (*(v81 + 32))(v30, v37, v38);
          goto LABEL_41;
        }

        if (!swift_dynamicCast())
        {
          v39 = v79;
          v40 = v80;
          if (swift_dynamicCast())
          {
            (*(v76 + 32))(v30, v39, v40);
            goto LABEL_41;
          }

          if (!swift_dynamicCast())
          {
            v41 = v74;
            v42 = v75;
            if (swift_dynamicCast())
            {
              (*(v73 + 32))(v30, v41, v42);
              goto LABEL_41;
            }

            if (swift_dynamicCast())
            {
              (*(v71 + 32))(v30, v34, v33);
              goto LABEL_41;
            }

            if (!swift_dynamicCast())
            {
              if (swift_dynamicCast())
              {
                (*(v65 + 32))(v30, v68, v69);
                goto LABEL_41;
              }

              if (swift_dynamicCast())
              {
                (*(v64 + 32))(v30, v67, v66);
                goto LABEL_41;
              }

              if (!swift_dynamicCast())
              {
                if (swift_dynamicCast())
                {
                  (*(v57 + 32))(v30, v60, v61);
                  goto LABEL_41;
                }

                if (swift_dynamicCast())
                {
                  (*(v54 + 32))(v30, v58, v59);
                  goto LABEL_41;
                }

                if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
                {
                  __swift_destroy_boxed_opaque_existential_1(v97);
                  v43 = 1;
                  return __swift_storeEnumTagSinglePayload(v94, v43, 1, v28);
                }
              }
            }
          }
        }
      }

      sub_1D4FB81A8();
      goto LABEL_41;
    }

    (*(v87 + 32))(v30, v36, v35);
  }

LABEL_41:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v97);
  sub_1D4FB81A8();
  v43 = 0;
  return __swift_storeEnumTagSinglePayload(v94, v43, 1, v28);
}

uint64_t sub_1D4F9C12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v56 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v62);
  v63 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1D5614408();
  v64 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D5613838();
  v67 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v73);
  v74 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D5614B68();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_1D5614898();
  v81 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v84 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D560EEA8();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v104 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1D5613C48();
  v86 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_1D56141F8();
  v91 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D5613EF8();
  v97 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v99 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1D5613AF8();
  v98 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v26 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D560F8B8();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v75 = &v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v55 - v31;
  v33 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v55 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v28 + 16);
  v101 = a1;
  v36(v32, a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  v37 = swift_dynamicCast();
  v76 = v27;
  v72 = v28;
  v96 = v22;
  if (v37)
  {
    sub_1D4E48324(v107, v109);
    __swift_project_boxed_opaque_existential_1(v109, v109[3]);
    sub_1D560D078();
    (*(v28 + 8))(v101, v27);
    __swift_destroy_boxed_opaque_existential_1(v109);
  }

  else
  {
    v108 = 0;
    memset(v107, 0, sizeof(v107));
    sub_1D4E50004(v107, &qword_1EC7EC520, &unk_1D5621050);
    v111 = v27;
    v112 = MEMORY[0x1E6975870];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v110);
    (*(v28 + 32))(boxed_opaque_existential_0, v101, v27);
  }

  sub_1D4E48324(&v110, v109);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v39 = v26;
  v40 = v100;
  v41 = swift_dynamicCast();
  v42 = v104;
  v44 = v102;
  v43 = v103;
  if (v41)
  {
    (*(v98 + 32))(v35, v39, v40);
  }

  else
  {
    v45 = v105;
    v46 = v99;
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (!swift_dynamicCast() && !swift_dynamicCast())
      {
        if (swift_dynamicCast())
        {
          (*(v91 + 32))(v35, v44, v43);
          goto LABEL_41;
        }

        if (!swift_dynamicCast())
        {
          v47 = v89;
          v48 = v90;
          if (swift_dynamicCast())
          {
            (*(v86 + 32))(v35, v47, v48);
            goto LABEL_41;
          }

          if (!swift_dynamicCast())
          {
            v49 = v85;
            if (swift_dynamicCast())
            {
              (*(v83 + 32))(v35, v42, v49);
              goto LABEL_41;
            }

            v50 = v84;
            if (swift_dynamicCast())
            {
              (*(v81 + 32))(v35, v50, v45);
              goto LABEL_41;
            }

            if (!swift_dynamicCast())
            {
              if (swift_dynamicCast())
              {
                (*(v77 + 32))(v35, v79, v78);
                goto LABEL_41;
              }

              v51 = v75;
              v52 = v76;
              if (swift_dynamicCast())
              {
                (*(v72 + 32))(v35, v51, v52);
                goto LABEL_41;
              }

              if (!swift_dynamicCast())
              {
                if (swift_dynamicCast())
                {
                  (*(v67 + 32))(v35, v70, v71);
                  goto LABEL_41;
                }

                if (swift_dynamicCast())
                {
                  (*(v64 + 32))(v35, v68, v69);
                  goto LABEL_41;
                }

                if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
                {
                  __swift_destroy_boxed_opaque_existential_1(v109);
                  v53 = 1;
                  return __swift_storeEnumTagSinglePayload(v106, v53, 1, v33);
                }
              }
            }
          }
        }
      }

      sub_1D4FB81A8();
      goto LABEL_41;
    }

    (*(v97 + 32))(v35, v46, v23);
  }

LABEL_41:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v109);
  sub_1D4FB81A8();
  v53 = 0;
  return __swift_storeEnumTagSinglePayload(v106, v53, 1, v33);
}

uint64_t sub_1D4F9D35C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1D5614408();
  v67 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D5613838();
  v70 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1D560F8B8();
  v76 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v80 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1D5614B68();
  v78 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v84);
  v108 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1D560EEA8();
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1D5613C48();
  v89 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1D56141F8();
  v94 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v103);
  v102 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_1D5613EF8();
  v101 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1D5613AF8();
  v104 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D5614898();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v58 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v58 - v30;
  v32 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v58 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *(v26 + 16);
  v109 = a1;
  v35(v31, a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  v36 = v25;
  v37 = swift_dynamicCast();
  v83 = v26;
  v85 = v25;
  if (v37)
  {
    sub_1D4E48324(v110, v112);
    v38 = a2;
    v39 = v34;
    v40 = v38;
    __swift_project_boxed_opaque_existential_1(v112, v112[3]);
    v41 = v40;
    v34 = v39;
    sub_1D560D078();
    (*(v26 + 8))(v109, v36);
    __swift_destroy_boxed_opaque_existential_1(v112);
  }

  else
  {
    v41 = a2;
    v111 = 0;
    memset(v110, 0, sizeof(v110));
    sub_1D4E50004(v110, &qword_1EC7EC520, &unk_1D5621050);
    v114 = v36;
    v115 = MEMORY[0x1E69773A0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v113);
    (*(v26 + 32))(boxed_opaque_existential_0, v109, v36);
  }

  sub_1D4E48324(&v113, v112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v43 = v107;
  if (!swift_dynamicCast())
  {
    v44 = v29;
    v45 = v105;
    v46 = v106;
    if (swift_dynamicCast())
    {
      (*(v101 + 32))(v34, v45, v46);
      goto LABEL_16;
    }

    if (!swift_dynamicCast() && !swift_dynamicCast())
    {
      v109 = v41;
      v47 = v97;
      v48 = v98;
      if (swift_dynamicCast())
      {
        (*(v94 + 32))(v34, v47, v48);
LABEL_15:
        v41 = v109;
        goto LABEL_16;
      }

      if (swift_dynamicCast())
      {
        sub_1D4FB81A8();
        goto LABEL_15;
      }

      v51 = v92;
      v52 = v93;
      v53 = swift_dynamicCast();
      v41 = v109;
      if (v53)
      {
        (*(v89 + 32))(v34, v51, v52);
        goto LABEL_16;
      }

      if (!swift_dynamicCast())
      {
        v54 = v87;
        v55 = v88;
        if (swift_dynamicCast())
        {
          (*(v86 + 32))(v34, v54, v55);
          goto LABEL_16;
        }

        v56 = v85;
        if (swift_dynamicCast())
        {
          (*(v83 + 32))(v34, v44, v56);
          goto LABEL_16;
        }

        if (!swift_dynamicCast())
        {
          v57 = v81;
          if (swift_dynamicCast())
          {
            (*(v78 + 32))(v34, v57, v82);
            goto LABEL_16;
          }

          if (swift_dynamicCast())
          {
            (*(v76 + 32))(v34, v80, v79);
            goto LABEL_16;
          }

          if (!swift_dynamicCast())
          {
            if (swift_dynamicCast())
            {
              (*(v70 + 32))(v34, v73, v74);
              goto LABEL_16;
            }

            if (swift_dynamicCast())
            {
              (*(v67 + 32))(v34, v71, v72);
              goto LABEL_16;
            }

            if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
            {
              __swift_destroy_boxed_opaque_existential_1(v112);
              v49 = 1;
              return __swift_storeEnumTagSinglePayload(v41, v49, 1, v32);
            }
          }
        }
      }
    }

    sub_1D4FB81A8();
    goto LABEL_16;
  }

  (*(v104 + 32))(v34, v24, v43);
LABEL_16:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v112);
  sub_1D4FB81A8();
  v49 = 0;
  return __swift_storeEnumTagSinglePayload(v41, v49, 1, v32);
}

uint64_t sub_1D4F9E578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v101 = a2;
  v53[0] = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v53[0]);
  v53[1] = v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v54);
  v55 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v56);
  v57 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v58);
  v59 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v61);
  v62 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1D5614408();
  v60 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D5613838();
  v63 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v68);
  v70 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1D560F8B8();
  v69 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v73 = v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1D5614B68();
  v71 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v77);
  v100 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1D5614898();
  v76 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v78 = v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D5613C48();
  v81 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v88);
  v87 = v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1D56141F8();
  v86 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v19);
  v93 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v93);
  v92 = v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D5613EF8();
  v91 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1D5613AF8();
  v94 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D560EEA8();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v80 = v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = v53 - v29;
  v31 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = v53 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v26 + 16);
  v98 = a1;
  v34(v30, a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  v35 = swift_dynamicCast();
  v95 = v23;
  v79 = v25;
  if (v35)
  {
    sub_1D4E48324(v102, v104);
    __swift_project_boxed_opaque_existential_1(v104, v104[3]);
    sub_1D560D078();
    (*(v26 + 8))(v98, v25);
    __swift_destroy_boxed_opaque_existential_1(v104);
  }

  else
  {
    v103 = 0;
    memset(v102, 0, sizeof(v102));
    sub_1D4E50004(v102, &qword_1EC7EC520, &unk_1D5621050);
    v106 = v25;
    v107 = MEMORY[0x1E69754B0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v105);
    (*(v26 + 32))(boxed_opaque_existential_0, v98, v25);
  }

  sub_1D4E48324(&v105, v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v38 = v96;
  v37 = v97;
  v39 = swift_dynamicCast();
  v40 = v99;
  if (v39)
  {
    (*(v94 + 32))(v33, v38, v37);
LABEL_29:
    v50 = v101;
    goto LABEL_30;
  }

  v41 = v95;
  if (swift_dynamicCast())
  {
    (*(v91 + 32))(v33, v41, v21);
    goto LABEL_29;
  }

  if (swift_dynamicCast() || swift_dynamicCast())
  {
    goto LABEL_28;
  }

  v42 = v89;
  v43 = v90;
  if (swift_dynamicCast())
  {
    (*(v86 + 32))(v33, v42, v43);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_28;
  }

  v44 = v84;
  v45 = v85;
  if (swift_dynamicCast())
  {
    (*(v81 + 32))(v33, v44, v45);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_28;
  }

  v46 = v80;
  v47 = v79;
  if (swift_dynamicCast())
  {
    (*(v26 + 32))(v33, v46, v47);
    goto LABEL_29;
  }

  v48 = v78;
  if (swift_dynamicCast())
  {
    (*(v76 + 32))(v33, v48, v40);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_28;
  }

  v49 = v74;
  if (swift_dynamicCast())
  {
    (*(v71 + 32))(v33, v49, v75);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    (*(v69 + 32))(v33, v73, v72);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
LABEL_28:
    sub_1D4FB81A8();
    goto LABEL_29;
  }

  v50 = v101;
  if (swift_dynamicCast())
  {
    (*(v63 + 32))(v33, v66, v67);
  }

  else if (swift_dynamicCast())
  {
    (*(v60 + 32))(v33, v64, v65);
  }

  else
  {
    if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v104);
      v51 = 1;
      return __swift_storeEnumTagSinglePayload(v50, v51, 1, v31);
    }

    sub_1D4FB81A8();
  }

LABEL_30:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v104);
  sub_1D4FB81A8();
  v51 = 0;
  return __swift_storeEnumTagSinglePayload(v50, v51, 1, v31);
}

uint64_t sub_1D4F9F7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v48 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D5614408();
  v56 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D5613838();
  v59 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v64);
  v66 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1D560F8B8();
  v65 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D5614B68();
  v67 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v73);
  v95 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1D5614898();
  v72 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D560EEA8();
  v74 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1D5613C48();
  v81 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v86);
  v85 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1D56141F8();
  v84 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v94 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v89);
  v88 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v91);
  v90 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D5613EF8();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D5613AF8();
  v92 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v93 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for MusicMovie(0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v79 = &v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4FB80B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  v33 = swift_dynamicCast();
  v80 = v27;
  if (v33)
  {
    sub_1D4E48324(v97, v99);
    v47 = a1;
    __swift_project_boxed_opaque_existential_1(v99, v99[3]);
    v34 = v96;
    v35 = v94;
    sub_1D560D078();
    sub_1D4E58460(v47, type metadata accessor for MusicMovie);
    __swift_destroy_boxed_opaque_existential_1(v99);
  }

  else
  {
    v98 = 0;
    memset(v97, 0, sizeof(v97));
    sub_1D4E50004(v97, &qword_1EC7EC520, &unk_1D5621050);
    v101 = v27;
    v102 = sub_1D4FB8108(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
    __swift_allocate_boxed_opaque_existential_0(&v100);
    sub_1D4FB81A8();
    v34 = v96;
    v35 = v94;
  }

  sub_1D4E48324(&v100, v99);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v36 = v93;
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      (*(v22 + 32))(v32, v24, v21);
      goto LABEL_15;
    }

    if (swift_dynamicCast())
    {
LABEL_43:
      sub_1D4FB81A8();
      goto LABEL_15;
    }

    if (swift_dynamicCast())
    {
      sub_1D4FB81A8();
    }

    else
    {
      v37 = v87;
      if (!swift_dynamicCast())
      {
        v40 = swift_dynamicCast();
        v34 = v96;
        if (!v40)
        {
          v41 = v82;
          v42 = v83;
          if (swift_dynamicCast())
          {
            (*(v81 + 32))(v32, v41, v42);
            goto LABEL_15;
          }

          if (!swift_dynamicCast())
          {
            v43 = v77;
            v44 = v78;
            if (swift_dynamicCast())
            {
              (*(v74 + 32))(v32, v43, v44);
              goto LABEL_15;
            }

            v45 = v75;
            v46 = v76;
            if (swift_dynamicCast())
            {
              (*(v72 + 32))(v32, v45, v46);
              goto LABEL_15;
            }

            if (!swift_dynamicCast())
            {
              if (swift_dynamicCast())
              {
                (*(v67 + 32))(v32, v70, v71);
                goto LABEL_15;
              }

              if (swift_dynamicCast())
              {
                (*(v65 + 32))(v32, v68, v69);
                goto LABEL_15;
              }

              if (!swift_dynamicCast())
              {
                if (swift_dynamicCast())
                {
                  (*(v59 + 32))(v32, v62, v63);
                  goto LABEL_15;
                }

                if (swift_dynamicCast())
                {
                  (*(v56 + 32))(v32, v60, v61);
                  goto LABEL_15;
                }

                if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
                {
                  __swift_destroy_boxed_opaque_existential_1(v99);
                  v38 = 1;
                  return __swift_storeEnumTagSinglePayload(v34, v38, 1, v30);
                }
              }
            }
          }
        }

        goto LABEL_43;
      }

      (*(v84 + 32))(v32, v35, v37);
    }

    v34 = v96;
    goto LABEL_15;
  }

  (*(v92 + 32))(v32, v36, v25);
LABEL_15:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v99);
  sub_1D4FB81A8();
  v38 = 0;
  return __swift_storeEnumTagSinglePayload(v34, v38, 1, v30);
}

uint64_t sub_1D4FA0A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v50 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D5614408();
  v58 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1D5613838();
  v61 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D560F8B8();
  v67 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1D5614B68();
  v69 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v75);
  v96 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1D5614898();
  v74 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v77 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1D560EEA8();
  v76 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v78 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1D5613C48();
  v80 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1D56141F8();
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v20);
  v92 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1D5613EF8();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D5613AF8();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for EditorialItem(0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v85 = &v48 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v48 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = a1;
  sub_1D4FB80B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v98, v100);
    v49 = v27;
    __swift_project_boxed_opaque_existential_1(v100, v100[3]);
    v27 = v49;
    sub_1D560D078();
    sub_1D4E58460(v94, type metadata accessor for EditorialItem);
    __swift_destroy_boxed_opaque_existential_1(v100);
  }

  else
  {
    v99 = 0;
    memset(v98, 0, sizeof(v98));
    sub_1D4E50004(v98, &qword_1EC7EC520, &unk_1D5621050);
    v102 = v28;
    v103 = sub_1D4FB8108(&qword_1EDD57650, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
    __swift_allocate_boxed_opaque_existential_0(&v101);
    sub_1D4FB81A8();
  }

  sub_1D4E48324(&v101, v100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v34 = swift_dynamicCast();
  v35 = v95;
  if (v34)
  {
    (*(v25 + 32))(v33, v27, v24);
  }

  else
  {
    v36 = v23;
    v37 = v93;
    if ((swift_dynamicCast() & 1) == 0)
    {
      v94 = v28;
      if (!swift_dynamicCast() && !swift_dynamicCast())
      {
        v38 = v87;
        v39 = v88;
        if (swift_dynamicCast())
        {
          (*(v86 + 32))(v33, v38, v39);
          goto LABEL_41;
        }

        if (!swift_dynamicCast())
        {
          v40 = v83;
          v41 = v84;
          if (swift_dynamicCast())
          {
            (*(v80 + 32))(v33, v40, v41);
            goto LABEL_41;
          }

          if (!swift_dynamicCast())
          {
            v42 = v78;
            v43 = v79;
            if (swift_dynamicCast())
            {
              (*(v76 + 32))(v33, v42, v43);
              goto LABEL_41;
            }

            v44 = v77;
            if (swift_dynamicCast())
            {
              (*(v74 + 32))(v33, v44, v35);
              goto LABEL_41;
            }

            if (!swift_dynamicCast())
            {
              v45 = v72;
              if (swift_dynamicCast())
              {
                (*(v69 + 32))(v33, v45, v73);
                goto LABEL_41;
              }

              if (swift_dynamicCast())
              {
                (*(v67 + 32))(v33, v70, v71);
                goto LABEL_41;
              }

              if (!swift_dynamicCast())
              {
                if (swift_dynamicCast())
                {
                  (*(v61 + 32))(v33, v64, v65);
                  goto LABEL_41;
                }

                if (swift_dynamicCast())
                {
                  (*(v58 + 32))(v33, v62, v63);
                  goto LABEL_41;
                }

                if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
                {
                  __swift_destroy_boxed_opaque_existential_1(v100);
                  v46 = 1;
                  return __swift_storeEnumTagSinglePayload(v97, v46, 1, v31);
                }
              }
            }
          }
        }
      }

      sub_1D4FB81A8();
      goto LABEL_41;
    }

    (*(v91 + 32))(v33, v36, v37);
  }

LABEL_41:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v100);
  sub_1D4FB81A8();
  v46 = 0;
  return __swift_storeEnumTagSinglePayload(v97, v46, 1, v31);
}

uint64_t sub_1D4FA1C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v54[0] = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v54[0]);
  v54[1] = v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v55);
  v56 = v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v57);
  v58 = v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v59);
  v60 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v62);
  v63 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D5614408();
  v61 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D5613838();
  v64 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v69);
  v71 = v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1D560F8B8();
  v70 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_1D5614B68();
  v72 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v75 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v78);
  v101 = v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1D5614898();
  v77 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1D560EEA8();
  v79 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v85);
  v84 = v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v89);
  v88 = v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1D56141F8();
  v87 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v90 = v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v93);
  v92 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v20);
  v99 = sub_1D5613EF8();
  v94 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v22 = v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1D5613AF8();
  v95 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D5613C48();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v86 = v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = v54 - v28;
  v30 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v54 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *(v25 + 16);
  v100 = a1;
  v33(v29, a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  v34 = swift_dynamicCast();
  v96 = v32;
  if (v34)
  {
    sub_1D4E48324(v103, v105);
    v35 = v30;
    __swift_project_boxed_opaque_existential_1(v105, v105[3]);
    sub_1D560D078();
    (*(v25 + 8))(v100, v24);
    __swift_destroy_boxed_opaque_existential_1(v105);
  }

  else
  {
    v35 = v30;
    v104 = 0;
    memset(v103, 0, sizeof(v103));
    sub_1D4E50004(v103, &qword_1EC7EC520, &unk_1D5621050);
    v107 = v24;
    v108 = MEMORY[0x1E6976DA0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v106);
    (*(v25 + 32))(boxed_opaque_existential_0, v100, v24);
  }

  sub_1D4E48324(&v106, v105);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v38 = v97;
  v37 = v98;
  v39 = swift_dynamicCast();
  v40 = v99;
  if (v39)
  {
    (*(v95 + 32))(v96, v38, v37);
  }

  else
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      v41 = v35;
      if (!swift_dynamicCast())
      {
        v44 = v24;
        if (!swift_dynamicCast())
        {
          v45 = v90;
          v46 = v91;
          if (swift_dynamicCast())
          {
            (*(v87 + 32))(v96, v45, v46);
            goto LABEL_9;
          }

          if (!swift_dynamicCast())
          {
            v47 = v86;
            if (swift_dynamicCast())
            {
              (*(v25 + 32))(v96, v47, v44);
              goto LABEL_9;
            }

            if (!swift_dynamicCast())
            {
              v48 = v82;
              v49 = v83;
              if (swift_dynamicCast())
              {
                (*(v79 + 32))(v96, v48, v49);
                goto LABEL_9;
              }

              v50 = v80;
              v51 = v81;
              if (swift_dynamicCast())
              {
                (*(v77 + 32))(v96, v50, v51);
                goto LABEL_9;
              }

              if (!swift_dynamicCast())
              {
                v52 = v75;
                if (swift_dynamicCast())
                {
                  (*(v72 + 32))(v96, v52, v76);
                  goto LABEL_9;
                }

                if (swift_dynamicCast())
                {
                  (*(v70 + 32))(v96, v73, v74);
                  goto LABEL_9;
                }

                if (!swift_dynamicCast())
                {
                  v53 = v96;
                  if (swift_dynamicCast())
                  {
                    (*(v64 + 32))(v53, v67, v68);
                    goto LABEL_9;
                  }

                  if (swift_dynamicCast())
                  {
                    (*(v61 + 32))(v53, v65, v66);
                    goto LABEL_9;
                  }

                  if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
                  {
                    __swift_destroy_boxed_opaque_existential_1(v105);
                    v42 = 1;
                    return __swift_storeEnumTagSinglePayload(v102, v42, 1, v41);
                  }
                }
              }
            }
          }
        }
      }

      sub_1D4FB81A8();
      goto LABEL_9;
    }

    (*(v94 + 32))(v96, v22, v40);
  }

  v41 = v35;
LABEL_9:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v105);
  sub_1D4FB81A8();
  v42 = 0;
  return __swift_storeEnumTagSinglePayload(v102, v42, 1, v41);
}

uint64_t sub_1D4FA2EF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v52[0] = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v52[0]);
  v52[1] = v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v53);
  v54 = v52 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v55);
  v56 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v57);
  v58 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v60);
  v61 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1D5614408();
  v59 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_1D5613838();
  v62 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v67);
  v69 = v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1D560F8B8();
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v71 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v74);
  v76 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_1D5614898();
  v75 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v78 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1D560EEA8();
  v77 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v98 = v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v82);
  v81 = v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_1D5613C48();
  v80 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v83 = v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v87);
  v86 = v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D56141F8();
  v85 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v92);
  v96 = v52 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1D5613EF8();
  v91 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D5613AF8();
  v93 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = v52 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D5614B68();
  v28 = *(v27 - 8);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v73 = v52 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v32 = v52 - v31;
  v33 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = v52 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *(v28 + 16);
  v97 = a1;
  v36(v32, a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  v37 = swift_dynamicCast();
  v88 = v20;
  v72 = v27;
  if (v37)
  {
    sub_1D4E48324(v101, v103);
    __swift_project_boxed_opaque_existential_1(v103, v103[3]);
    sub_1D560D078();
    (*(v28 + 8))(v97, v27);
    __swift_destroy_boxed_opaque_existential_1(v103);
  }

  else
  {
    v102 = 0;
    memset(v101, 0, sizeof(v101));
    sub_1D4E50004(v101, &qword_1EC7EC520, &unk_1D5621050);
    v105 = v27;
    v106 = MEMORY[0x1E6977520];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v104);
    (*(v28 + 32))(boxed_opaque_existential_0, v97, v27);
  }

  sub_1D4E48324(&v104, v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (swift_dynamicCast())
  {
    (*(v93 + 32))(v35, v26, v24);
  }

  else
  {
    v39 = v98;
    v40 = v99;
    v41 = v94;
    v42 = v95;
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (!swift_dynamicCast() && !swift_dynamicCast())
      {
        v43 = v88;
        if (swift_dynamicCast())
        {
          (*(v85 + 32))(v35, v43, v18);
          goto LABEL_41;
        }

        if (!swift_dynamicCast())
        {
          v97 = v28;
          v44 = v83;
          v45 = v84;
          if (swift_dynamicCast())
          {
            (*(v80 + 32))(v35, v44, v45);
            goto LABEL_41;
          }

          if (!swift_dynamicCast())
          {
            v46 = v79;
            if (swift_dynamicCast())
            {
              (*(v77 + 32))(v35, v39, v46);
              goto LABEL_41;
            }

            v47 = v78;
            if (swift_dynamicCast())
            {
              (*(v75 + 32))(v35, v47, v40);
              goto LABEL_41;
            }

            if (!swift_dynamicCast())
            {
              v48 = v73;
              v49 = v72;
              if (swift_dynamicCast())
              {
                (*(v97 + 32))(v35, v48, v49);
                goto LABEL_41;
              }

              if (swift_dynamicCast())
              {
                (*(v68 + 32))(v35, v71, v70);
                goto LABEL_41;
              }

              if (!swift_dynamicCast())
              {
                if (swift_dynamicCast())
                {
                  (*(v62 + 32))(v35, v65, v66);
                  goto LABEL_41;
                }

                if (swift_dynamicCast())
                {
                  (*(v59 + 32))(v35, v63, v64);
                  goto LABEL_41;
                }

                if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
                {
                  __swift_destroy_boxed_opaque_existential_1(v103);
                  v50 = 1;
                  return __swift_storeEnumTagSinglePayload(v100, v50, 1, v33);
                }
              }
            }
          }
        }
      }

      sub_1D4FB81A8();
      goto LABEL_41;
    }

    (*(v91 + 32))(v35, v41, v42);
  }

LABEL_41:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v103);
  sub_1D4FB81A8();
  v50 = 0;
  return __swift_storeEnumTagSinglePayload(v100, v50, 1, v33);
}

uint64_t sub_1D4FA4118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v98 = a2;
  v50 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v50);
  v51 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D5614408();
  v58 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v62 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1D5613838();
  v61 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1D560F8B8();
  v67 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1D5614B68();
  v69 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v75);
  v97 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D5614898();
  v74 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1D560EEA8();
  v76 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D5613C48();
  v81 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1D5613EF8();
  v91 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v96 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D5613AF8();
  v94 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D56141F8();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v88 = &v49 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v49 - v29;
  v31 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v49 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v30, a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v99, v101);
    __swift_project_boxed_opaque_existential_1(v101, v101[3]);
    sub_1D560D078();
    v34 = v26;
    (*(v26 + 8))(a1, v25);
    __swift_destroy_boxed_opaque_existential_1(v101);
  }

  else
  {
    v100 = 0;
    memset(v99, 0, sizeof(v99));
    sub_1D4E50004(v99, &qword_1EC7EC520, &unk_1D5621050);
    v103 = v25;
    v104 = MEMORY[0x1E6977018];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v102);
    v34 = v26;
    (*(v26 + 32))(boxed_opaque_existential_0, a1, v25);
  }

  sub_1D4E48324(&v102, v101);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v36 = swift_dynamicCast();
  v37 = v96;
  if (v36)
  {
    (*(v94 + 32))(v33, v24, v22);
  }

  else
  {
    v38 = v95;
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (!swift_dynamicCast() && !swift_dynamicCast())
      {
        v39 = v88;
        if (swift_dynamicCast())
        {
          (*(v34 + 32))(v33, v39, v25);
          goto LABEL_41;
        }

        if (!swift_dynamicCast())
        {
          v40 = v84;
          v41 = v85;
          if (swift_dynamicCast())
          {
            (*(v81 + 32))(v33, v40, v41);
            goto LABEL_41;
          }

          if (!swift_dynamicCast())
          {
            v42 = v79;
            v43 = v80;
            if (swift_dynamicCast())
            {
              (*(v76 + 32))(v33, v42, v43);
              goto LABEL_41;
            }

            v44 = v77;
            v45 = v78;
            if (swift_dynamicCast())
            {
              (*(v74 + 32))(v33, v44, v45);
              goto LABEL_41;
            }

            if (!swift_dynamicCast())
            {
              v46 = v72;
              if (swift_dynamicCast())
              {
                (*(v69 + 32))(v33, v46, v73);
                goto LABEL_41;
              }

              if (swift_dynamicCast())
              {
                (*(v67 + 32))(v33, v70, v71);
                goto LABEL_41;
              }

              if (!swift_dynamicCast())
              {
                if (swift_dynamicCast())
                {
                  (*(v61 + 32))(v33, v64, v65);
                  goto LABEL_41;
                }

                if (swift_dynamicCast())
                {
                  (*(v58 + 32))(v33, v62, v63);
                  goto LABEL_41;
                }

                if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
                {
                  __swift_destroy_boxed_opaque_existential_1(v101);
                  v47 = 1;
                  return __swift_storeEnumTagSinglePayload(v98, v47, 1, v31);
                }
              }
            }
          }
        }
      }

      sub_1D4FB81A8();
      goto LABEL_41;
    }

    (*(v91 + 32))(v33, v37, v38);
  }

LABEL_41:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v101);
  sub_1D4FB81A8();
  v47 = 0;
  return __swift_storeEnumTagSinglePayload(v98, v47, 1, v31);
}

uint64_t sub_1D4FA5310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v47);
  v48 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1D5614408();
  v55 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1D5613838();
  v58 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1D560F8B8();
  v64 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1D5614B68();
  v66 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v69 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v72);
  v95 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1D5614898();
  v71 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_1D560EEA8();
  v73 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1D5613C48();
  v78 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1D56141F8();
  v83 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v46 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1D5613EF8();
  v90 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D5613AF8();
  v93 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for CreditArtist(0);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v89 = &v46 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v46 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4FB80B0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  v33 = swift_dynamicCast();
  v88 = v27;
  if (v33)
  {
    sub_1D4E48324(v96, v98);
    __swift_project_boxed_opaque_existential_1(v98, v98[3]);
    sub_1D560D078();
    sub_1D4E58460(a1, type metadata accessor for CreditArtist);
    __swift_destroy_boxed_opaque_existential_1(v98);
  }

  else
  {
    v97 = 0;
    memset(v96, 0, sizeof(v96));
    sub_1D4E50004(v96, &qword_1EC7EC520, &unk_1D5621050);
    v100 = v27;
    v101 = sub_1D4FB8108(&qword_1EC7EB600, type metadata accessor for CreditArtist, &protocol conformance descriptor for CreditArtist);
    __swift_allocate_boxed_opaque_existential_0(&v99);
    sub_1D4FB81A8();
  }

  sub_1D4E48324(&v99, v98);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  if (swift_dynamicCast())
  {
    (*(v93 + 32))(v32, v26, v24);
  }

  else
  {
    v34 = v94;
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (!swift_dynamicCast() && !swift_dynamicCast())
      {
        v35 = v86;
        v36 = v87;
        if (swift_dynamicCast())
        {
          (*(v83 + 32))(v32, v35, v36);
          goto LABEL_41;
        }

        if (!swift_dynamicCast())
        {
          v37 = v81;
          v38 = v82;
          if (swift_dynamicCast())
          {
            (*(v78 + 32))(v32, v37, v38);
            goto LABEL_41;
          }

          if (!swift_dynamicCast())
          {
            v39 = v76;
            v40 = v77;
            if (swift_dynamicCast())
            {
              (*(v73 + 32))(v32, v39, v40);
              goto LABEL_41;
            }

            v41 = v74;
            v42 = v75;
            if (swift_dynamicCast())
            {
              (*(v71 + 32))(v32, v41, v42);
              goto LABEL_41;
            }

            if (!swift_dynamicCast())
            {
              v43 = v69;
              if (swift_dynamicCast())
              {
                (*(v66 + 32))(v32, v43, v70);
                goto LABEL_41;
              }

              if (swift_dynamicCast())
              {
                (*(v64 + 32))(v32, v67, v68);
                goto LABEL_41;
              }

              if (!swift_dynamicCast())
              {
                if (swift_dynamicCast())
                {
                  (*(v58 + 32))(v32, v61, v62);
                  goto LABEL_41;
                }

                if (swift_dynamicCast())
                {
                  (*(v55 + 32))(v32, v59, v60);
                  goto LABEL_41;
                }

                if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
                {
                  __swift_destroy_boxed_opaque_existential_1(v98);
                  v44 = 1;
                  return __swift_storeEnumTagSinglePayload(a2, v44, 1, v30);
                }
              }
            }
          }
        }
      }

      sub_1D4FB81A8();
      goto LABEL_41;
    }

    (*(v90 + 32))(v32, v23, v34);
  }

LABEL_41:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v98);
  sub_1D4FB81A8();
  v44 = 0;
  return __swift_storeEnumTagSinglePayload(a2, v44, 1, v30);
}

uint64_t sub_1D4FA6530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v52 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1D5614408();
  v60 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D5613838();
  v63 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1D560F8B8();
  v69 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v73 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_1D5614B68();
  v71 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1D5614898();
  v76 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v99 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_1D560EEA8();
  v79 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1D5613C48();
  v83 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1D56141F8();
  v88 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v94);
  v93 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D5613AF8();
  v98 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D5613EF8();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v97 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v51 - v29;
  v31 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v51 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v30, a1, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v101, v103);
    __swift_project_boxed_opaque_existential_1(v103, v103[3]);
    sub_1D560D078();
    v34 = v26;
    (*(v26 + 8))(a1, v25);
    __swift_destroy_boxed_opaque_existential_1(v103);
  }

  else
  {
    v102 = 0;
    memset(v101, 0, sizeof(v101));
    sub_1D4E50004(v101, &qword_1EC7EC520, &unk_1D5621050);
    v105 = v25;
    v106 = MEMORY[0x1E6976EF8];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v104);
    v34 = v26;
    (*(v26 + 32))(boxed_opaque_existential_0, a1, v25);
  }

  sub_1D4E48324(&v104, v103);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v36 = swift_dynamicCast();
  v37 = v99;
  if (v36)
  {
    (*(v98 + 32))(v33, v24, v22);
LABEL_29:
    v48 = v100;
    goto LABEL_30;
  }

  v38 = v97;
  if (swift_dynamicCast())
  {
    (*(v34 + 32))(v33, v38, v25);
    goto LABEL_29;
  }

  if (swift_dynamicCast() || swift_dynamicCast())
  {
    goto LABEL_28;
  }

  v39 = v91;
  v40 = v92;
  if (swift_dynamicCast())
  {
    (*(v88 + 32))(v33, v39, v40);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_28;
  }

  v41 = v86;
  v42 = v87;
  if (swift_dynamicCast())
  {
    (*(v83 + 32))(v33, v41, v42);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_28;
  }

  v43 = v81;
  v44 = v82;
  if (swift_dynamicCast())
  {
    (*(v79 + 32))(v33, v43, v44);
    goto LABEL_29;
  }

  v45 = v80;
  if (swift_dynamicCast())
  {
    (*(v76 + 32))(v33, v37, v45);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    goto LABEL_28;
  }

  v46 = v74;
  v47 = v75;
  if (swift_dynamicCast())
  {
    (*(v71 + 32))(v33, v46, v47);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
    (*(v69 + 32))(v33, v73, v72);
    goto LABEL_29;
  }

  if (swift_dynamicCast())
  {
LABEL_28:
    sub_1D4FB81A8();
    goto LABEL_29;
  }

  v48 = v100;
  if (swift_dynamicCast())
  {
    (*(v63 + 32))(v33, v66, v67);
  }

  else if (swift_dynamicCast())
  {
    (*(v60 + 32))(v33, v64, v65);
  }

  else
  {
    if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v103);
      v49 = 1;
      return __swift_storeEnumTagSinglePayload(v48, v49, 1, v31);
    }

    sub_1D4FB81A8();
  }

LABEL_30:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v103);
  sub_1D4FB81A8();
  v49 = 0;
  return __swift_storeEnumTagSinglePayload(v48, v49, 1, v31);
}

uint64_t sub_1D4FA771C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v52 = type metadata accessor for UploadedVideo(0);
  MEMORY[0x1EEE9AC00](v52);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for UploadedAudio(0);
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for TVShow(0);
  MEMORY[0x1EEE9AC00](v56);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for TVSeason(0);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for TVEpisode(0);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1D5614408();
  v60 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v64 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D5613838();
  v63 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for SocialProfile(0);
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D560F8B8();
  v69 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D5614B68();
  v71 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for Playlist.Folder(0);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_1D5614898();
  v73 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v77 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1D560EEA8();
  v76 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v79 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = type metadata accessor for MusicMovie(0);
  MEMORY[0x1EEE9AC00](v83);
  v82 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_1D5613C48();
  v81 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for EditorialItem(0);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_1D56141F8();
  v86 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for CreditArtist(0);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for Composer(0);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1D5613EF8();
  v93 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D5613AF8();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v98 = &v50 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v50 - v30;
  v32 = type metadata accessor for GenericMusicItem(0);
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v50 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v31, a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
  if (swift_dynamicCast())
  {
    sub_1D4E48324(v100, v102);
    v51 = v11;
    __swift_project_boxed_opaque_existential_1(v102, v102[3]);
    v11 = v51;
    sub_1D560D078();
    (*(v27 + 8))(a1, v26);
    __swift_destroy_boxed_opaque_existential_1(v102);
  }

  else
  {
    v101 = 0;
    memset(v100, 0, sizeof(v100));
    sub_1D4E50004(v100, &qword_1EC7EC520, &unk_1D5621050);
    v104 = v26;
    v105 = MEMORY[0x1E6976CF0];
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v103);
    (*(v27 + 32))(boxed_opaque_existential_0, a1, v26);
  }

  sub_1D4E48324(&v103, v102);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC50, &unk_1D5623460);
  v36 = v98;
  if (swift_dynamicCast())
  {
    (*(v27 + 32))(v34, v36, v26);
  }

  else
  {
    v38 = v96;
    v37 = v97;
    if ((swift_dynamicCast() & 1) == 0)
    {
      if (!swift_dynamicCast() && !swift_dynamicCast())
      {
        v39 = v89;
        v40 = v90;
        if (swift_dynamicCast())
        {
          (*(v86 + 32))(v34, v39, v40);
          goto LABEL_41;
        }

        if (!swift_dynamicCast())
        {
          v41 = v84;
          v42 = v85;
          if (swift_dynamicCast())
          {
            (*(v81 + 32))(v34, v41, v42);
            goto LABEL_41;
          }

          if (!swift_dynamicCast())
          {
            v43 = v79;
            v44 = v80;
            if (swift_dynamicCast())
            {
              (*(v76 + 32))(v34, v43, v44);
              goto LABEL_41;
            }

            v45 = v77;
            v46 = v78;
            if (swift_dynamicCast())
            {
              (*(v73 + 32))(v34, v45, v46);
              goto LABEL_41;
            }

            if (!swift_dynamicCast())
            {
              v47 = v72;
              if (swift_dynamicCast())
              {
                (*(v71 + 32))(v34, v47, v14);
                goto LABEL_41;
              }

              if (swift_dynamicCast())
              {
                (*(v69 + 32))(v34, v13, v11);
                goto LABEL_41;
              }

              if (!swift_dynamicCast())
              {
                if (swift_dynamicCast())
                {
                  (*(v63 + 32))(v34, v66, v67);
                  goto LABEL_41;
                }

                if (swift_dynamicCast())
                {
                  (*(v60 + 32))(v34, v64, v65);
                  goto LABEL_41;
                }

                if (!swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast() && !swift_dynamicCast())
                {
                  __swift_destroy_boxed_opaque_existential_1(v102);
                  v48 = 1;
                  return __swift_storeEnumTagSinglePayload(v99, v48, 1, v32);
                }
              }
            }
          }
        }
      }

      sub_1D4FB81A8();
      goto LABEL_41;
    }

    (*(v93 + 32))(v34, v38, v37);
  }

LABEL_41:
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v102);
  sub_1D4FB81A8();
  v48 = 0;
  return __swift_storeEnumTagSinglePayload(v99, v48, 1, v32);
}

uint64_t sub_1D4FA8900(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D5610088();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v30 = &v28 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  type metadata accessor for LooselyComparableTypedIdentifier(0);
  type metadata accessor for GenericMusicItem(0);
  sub_1D4FB8108(qword_1EDD54BB8, type metadata accessor for LooselyComparableTypedIdentifier, &unk_1D56579DC);
  v32 = sub_1D5614BD8();
  sub_1D560FFB8();
  sub_1D4FA9070(v15, *v2, &v32, a1, a2);
  v16 = *(v6 + 8);
  v16(v15, v5);
  sub_1D560FFD8();
  sub_1D4FA9BF0(v15, v2[1], &v32, a1, a2);
  v16(v15, v5);
  sub_1D560FE88();
  sub_1D4FAA770(v15, v2[3], &v32, a1, a2);
  v16(v15, v5);
  sub_1D560FE78();
  v17 = v2[2];
  v29 = v17;
  if (v17)
  {
    v28 = a1;
    v18 = a2;
    v19 = v13;
    v20 = v17;
    v21 = sub_1D4FB5644(v17);
    sub_1D4FAB0A4(v19, v21, &v32, v28, v18);

    v22 = v19;
    a2 = v18;
    a1 = v28;
    v16(v22, v5);
    v23 = v30;
    sub_1D560FE78();
    v24 = sub_1D4FB5C60(v20);
  }

  else
  {
    sub_1D4FAB0A4(v13, 0, &v32, a1, a2);

    v16(v13, v5);
    v23 = v30;
    sub_1D560FE78();
    v24 = 0;
  }

  sub_1D4FABC24(v23, v24, &v32, a1, a2);

  v16(v23, v5);
  v25 = v31;
  sub_1D560FE78();
  if (v29)
  {
    v26 = sub_1D4FB627C(v29);
  }

  else
  {
    v26 = 0;
  }

  sub_1D4FAC7A4(v25, v26, &v32, a1, a2);

  v16(v25, v5);
  sub_1D560FFF8();
  sub_1D4FAB0A4(v15, v2[4], &v32, a1, a2);
  v16(v15, v5);
  sub_1D560FED8();
  sub_1D4FAD324(v15, v2[5], &v32, a1, a2);
  v16(v15, v5);
  sub_1D560FE28();
  sub_1D4FADC58(v15, v2[7], &v32, a1, a2);
  v16(v15, v5);
  sub_1D560FE38();
  sub_1D4FAE58C(v15, v2[8], &v32, a1, a2);
  v16(v15, v5);
  sub_1D5610038();
  sub_1D4FAF10C(v15, v2[9], &v32, a1, a2);
  v16(v15, v5);
  sub_1D560FE58();
  sub_1D4FAFC8C(v15, v2[10], &v32, a1, a2);
  v16(v15, v5);
  sub_1D560FF18();
  sub_1D4FB080C(v15, v2[11], &v32, a1, a2);
  v16(v15, v5);
  sub_1D560FFA8();
  sub_1D4FB1140(v15, v2[12], &v32, a1, a2);
  v16(v15, v5);
  sub_1D5610008();
  sub_1D4FB1CC0(v15, v2[13], &v32, a1, a2);
  v16(v15, v5);
  sub_1D5610078();
  sub_1D4FB2840(v15, v2[14], &v32, a1, a2);
  v16(v15, v5);
  sub_1D5610068();
  sub_1D4FB3174(v15, v2[15], &v32, a1, a2);
  v16(v15, v5);
  sub_1D560FFE8();
  sub_1D4FB3AA8(v15, v2[16], &v32, a1, a2);
  v16(v15, v5);
  sub_1D560FF28();
  sub_1D4FB43DC(v15, v2[17], &v32, a1, a2);
  v16(v15, v5);
  sub_1D560FF38();
  sub_1D4FB4D10(v15, v2[18], &v32, a1, a2);
  v16(v15, v5);
  sub_1D560FEA8();
  sub_1D4FA9070(v15, v2[19], &v32, a1, a2);
  v16(v15, v5);
  sub_1D560FEE8();
  sub_1D4FA9BF0(v15, v2[20], &v32, a1, a2);
  v16(v15, v5);
  sub_1D560FDF8();
  sub_1D4FAE58C(v15, v2[21], &v32, a1, a2);
  v16(v15, v5);
  sub_1D560FF58();
  sub_1D4FAF10C(v15, v2[22], &v32, a1, a2);
  v16(v15, v5);
  sub_1D560FE48();
  sub_1D4FB1140(v15, v2[23], &v32, a1, a2);
  v16(v15, v5);
  return v32;
}

uint64_t sub_1D4FA9070(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v105 = a3;
  v95 = a1;
  v94 = sub_1D560D838();
  v8 = *(v94 - 8);
  v9 = MEMORY[0x1EEE9AC00](v94);
  v93 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v87 - v11;
  v91 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v87 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v116 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v122 = &v87 - v14;
  v110 = type metadata accessor for GenericMusicItem(0);
  v90 = *(v110 - 8);
  v15 = MEMORY[0x1EEE9AC00](v110);
  v106 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v87 - v17;
  v109 = sub_1D560CD48();
  v18 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D5613AF8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v107 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v87 - v24;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  v26 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v87 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB50, &qword_1D561F270);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v121 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v29);
  v112 = &v87 - v32;
  if (a2)
  {
    v114 = v25;
    v33 = v18;
    v34 = a2 + 64;
    v35 = 1 << *(a2 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(a2 + 64);
    v88 = (v35 + 63) >> 6;
    v96 = v26 + 16;
    v97 = v26;
    v118 = (v26 + 32);
    v103 = (v33 + 16);
    v102 = (v21 + 16);
    v89 = (v8 + 8);
    v100 = (v21 + 8);

    v39 = 0;
    v115 = v20;
    v101 = a2 + 64;
    v104 = a5;
    v113 = a4;
    v111 = a2;
    while (1)
    {
      v40 = v121;
      if (!v37)
      {
        break;
      }

      v41 = v39;
LABEL_11:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v41 << 6);
      v44 = (*(v38 + 48) + 16 * v43);
      v46 = *v44;
      v45 = v44[1];
      v47 = v97;
      v49 = v119;
      v48 = v120;
      (*(v97 + 16))(v119, *(v38 + 56) + *(v97 + 72) * v43, v120);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB58, &qword_1D561F278);
      v51 = *(v50 + 48);
      v52 = v121;
      *v121 = v46;
      *(v52 + 1) = v45;
      v53 = v52;
      (*(v47 + 32))(&v52[v51], v49, v48);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v50);

      a4 = v113;
LABEL_12:
      v54 = v112;
      sub_1D4FB8058();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB58, &qword_1D561F278);
      if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
      {
      }

      (*v118)(v119, v54 + *(v55 + 48), v120);
      (*v103)(v108, a4, v109);
      sub_1D4FB8108(&qword_1EC7ECE68, MEMORY[0x1E6976D28], MEMORY[0x1E6976D00]);

      v56 = a4;
      v57 = v114;
      v58 = v122;
      v59 = v115;
      sub_1D5612698();
      v60 = v107;
      (*v102)(v107, v57, v59);
      sub_1D4FA771C(v60, v58);
      if (__swift_getEnumTagSinglePayload(v58, 1, v110) == 1)
      {
        (*v100)(v57, v59);
        sub_1D4E50004(v122, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v56;
        v38 = v111;
        v34 = v101;
      }

      else
      {
        sub_1D4FB81A8();
        v61 = v92;
        sub_1D560EC98();
        v99 = sub_1D560D708();
        v98 = v62;
        v63 = *v89;
        v64 = v61;
        v65 = v94;
        (*v89)(v64, v94);
        v66 = v116;
        v67 = v93;
        sub_1D560EC98();
        v68 = v91;
        sub_1D560D828();
        v63(v67, v65);
        v69 = *(v68 + 24);
        v70 = sub_1D5610088();
        (*(*(v70 - 8) + 16))(v66 + v69, v95, v70);
        __swift_storeEnumTagSinglePayload(v66 + v69, 0, 1, v70);
        v71 = v98;
        *v66 = v99;
        v66[1] = v71;
        sub_1D4FB80B0();
        v72 = v105;
        swift_isUniquelyReferenced_nonNull_native();
        v123 = *v72;
        v73 = v123;
        v74 = sub_1D4F0DDB4(v66);
        if (__OFADD__(*(v73 + 16), (v75 & 1) == 0))
        {
          goto LABEL_29;
        }

        v76 = v74;
        v77 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v78 = sub_1D4F0DDB4(v116);
          v80 = v111;
          v81 = v115;
          v34 = v101;
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_31;
          }

          v76 = v78;
          a4 = v113;
        }

        else
        {
          v80 = v111;
          a4 = v113;
          v81 = v115;
          v34 = v101;
        }

        v82 = v123;
        if (v77)
        {
          sub_1D4F159C4(v106, *(v123 + 56) + *(v90 + 72) * v76);
        }

        else
        {
          *(v123 + 8 * (v76 >> 6) + 64) |= 1 << v76;
          sub_1D4FB80B0();
          sub_1D4FB81A8();
          v83 = *(v82 + 16);
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (v84)
          {
            goto LABEL_30;
          }

          *(v82 + 16) = v85;
        }

        sub_1D4E58460(v116, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v117, type metadata accessor for GenericMusicItem);
        (*v100)(v114, v81);
        *v105 = v82;
        v38 = v80;
      }
    }

    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v88)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB58, &qword_1D561F278);
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v86);
        v37 = 0;
        goto LABEL_12;
      }

      v37 = *(v34 + 8 * v41);
      ++v39;
      if (v37)
      {
        v39 = v41;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FA9BF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v105 = a3;
  v95 = a1;
  v94 = sub_1D560D838();
  v8 = *(v94 - 8);
  v9 = MEMORY[0x1EEE9AC00](v94);
  v93 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v87 - v11;
  v91 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v87 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v116 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v122 = &v87 - v14;
  v110 = type metadata accessor for GenericMusicItem(0);
  v90 = *(v110 - 8);
  v15 = MEMORY[0x1EEE9AC00](v110);
  v106 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v87 - v17;
  v109 = sub_1D560CD48();
  v18 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D5613EF8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v107 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v87 - v24;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB70, &qword_1D561F280);
  v26 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v87 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB78, &qword_1D561F288);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v121 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v29);
  v112 = &v87 - v32;
  if (a2)
  {
    v114 = v25;
    v33 = v18;
    v34 = a2 + 64;
    v35 = 1 << *(a2 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(a2 + 64);
    v88 = (v35 + 63) >> 6;
    v96 = v26 + 16;
    v97 = v26;
    v118 = (v26 + 32);
    v103 = (v33 + 16);
    v102 = (v21 + 16);
    v89 = (v8 + 8);
    v100 = (v21 + 8);

    v39 = 0;
    v115 = v20;
    v101 = a2 + 64;
    v104 = a5;
    v113 = a4;
    v111 = a2;
    while (1)
    {
      v40 = v121;
      if (!v37)
      {
        break;
      }

      v41 = v39;
LABEL_11:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v41 << 6);
      v44 = (*(v38 + 48) + 16 * v43);
      v46 = *v44;
      v45 = v44[1];
      v47 = v97;
      v49 = v119;
      v48 = v120;
      (*(v97 + 16))(v119, *(v38 + 56) + *(v97 + 72) * v43, v120);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB80, &unk_1D561F290);
      v51 = *(v50 + 48);
      v52 = v121;
      *v121 = v46;
      *(v52 + 1) = v45;
      v53 = v52;
      (*(v47 + 32))(&v52[v51], v49, v48);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v50);

      a4 = v113;
LABEL_12:
      v54 = v112;
      sub_1D4FB8058();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB80, &unk_1D561F290);
      if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
      {
      }

      (*v118)(v119, v54 + *(v55 + 48), v120);
      (*v103)(v108, a4, v109);
      sub_1D4FB8108(&qword_1EC7EB5E0, MEMORY[0x1E6976F28], MEMORY[0x1E6976F08]);

      v56 = a4;
      v57 = v114;
      v58 = v122;
      v59 = v115;
      sub_1D5612698();
      v60 = v107;
      (*v102)(v107, v57, v59);
      sub_1D4FA6530(v60, v58);
      if (__swift_getEnumTagSinglePayload(v58, 1, v110) == 1)
      {
        (*v100)(v57, v59);
        sub_1D4E50004(v122, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v56;
        v38 = v111;
        v34 = v101;
      }

      else
      {
        sub_1D4FB81A8();
        v61 = v92;
        sub_1D560EC98();
        v99 = sub_1D560D708();
        v98 = v62;
        v63 = *v89;
        v64 = v61;
        v65 = v94;
        (*v89)(v64, v94);
        v66 = v116;
        v67 = v93;
        sub_1D560EC98();
        v68 = v91;
        sub_1D560D828();
        v63(v67, v65);
        v69 = *(v68 + 24);
        v70 = sub_1D5610088();
        (*(*(v70 - 8) + 16))(v66 + v69, v95, v70);
        __swift_storeEnumTagSinglePayload(v66 + v69, 0, 1, v70);
        v71 = v98;
        *v66 = v99;
        v66[1] = v71;
        sub_1D4FB80B0();
        v72 = v105;
        swift_isUniquelyReferenced_nonNull_native();
        v123 = *v72;
        v73 = v123;
        v74 = sub_1D4F0DDB4(v66);
        if (__OFADD__(*(v73 + 16), (v75 & 1) == 0))
        {
          goto LABEL_29;
        }

        v76 = v74;
        v77 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v78 = sub_1D4F0DDB4(v116);
          v80 = v111;
          v81 = v115;
          v34 = v101;
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_31;
          }

          v76 = v78;
          a4 = v113;
        }

        else
        {
          v80 = v111;
          a4 = v113;
          v81 = v115;
          v34 = v101;
        }

        v82 = v123;
        if (v77)
        {
          sub_1D4F159C4(v106, *(v123 + 56) + *(v90 + 72) * v76);
        }

        else
        {
          *(v123 + 8 * (v76 >> 6) + 64) |= 1 << v76;
          sub_1D4FB80B0();
          sub_1D4FB81A8();
          v83 = *(v82 + 16);
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (v84)
          {
            goto LABEL_30;
          }

          *(v82 + 16) = v85;
        }

        sub_1D4E58460(v116, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v117, type metadata accessor for GenericMusicItem);
        (*v100)(v114, v81);
        *v105 = v82;
        v38 = v80;
      }
    }

    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v88)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB80, &unk_1D561F290);
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v86);
        v37 = 0;
        goto LABEL_12;
      }

      v37 = *(v34 + 8 * v41);
      ++v39;
      if (v37)
      {
        v39 = v41;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FAA770(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v108 = a5;
  v103 = a4;
  v95 = a3;
  v94 = a1;
  v93 = sub_1D560D838();
  v6 = *(v93 - 8);
  v7 = MEMORY[0x1EEE9AC00](v93);
  v92 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v84 - v9;
  v90 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v114 = &v84 - v12;
  v107 = type metadata accessor for GenericMusicItem(0);
  v13 = MEMORY[0x1EEE9AC00](v107);
  v88 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v84 - v15;
  v106 = sub_1D560CD48();
  v16 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for CreditArtist(0);
  v18 = MEMORY[0x1EEE9AC00](v86);
  v104 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v84 - v20;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C8, &unk_1D561F130);
  v22 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v84 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB960, &unk_1D5623520);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v25);
  v30 = &v84 - v29;
  v98 = a2;
  if (a2)
  {
    v31 = 1 << *(v98 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v98 + 64);
    v84 = (v31 + 63) >> 6;
    v96 = v22 + 16;
    v97 = v22;
    v111 = (v22 + 32);
    v101 = (v16 + 16);
    v34 = v98 + 64;
    v85 = (v6 + 8);

    v35 = 0;
    v115 = v21;
    v109 = v30;
    v110 = v27;
    v102 = v34;
    while (v33)
    {
      v36 = v35;
LABEL_11:
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = v37 | (v36 << 6);
      v39 = v97;
      v40 = (*(v98 + 48) + 16 * v38);
      v42 = *v40;
      v41 = v40[1];
      v43 = v112;
      v44 = v113;
      (*(v97 + 16))(v112, *(v98 + 56) + *(v97 + 72) * v38, v113);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB968, &unk_1D561F140);
      v46 = *(v45 + 48);
      v47 = v110;
      *v110 = v42;
      *(v47 + 1) = v41;
      v48 = v43;
      v27 = v47;
      (*(v39 + 32))(&v47[v46], v48, v44);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v45);

      v21 = v115;
      v30 = v109;
LABEL_12:
      sub_1D4FB8058();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB968, &unk_1D561F140);
      if (__swift_getEnumTagSinglePayload(v30, 1, v49) == 1)
      {
      }

      v50 = v112;
      (*v111)(v112, &v30[*(v49 + 48)], v113);
      v51 = v105;
      (*v101)(v105, v103, v106);
      v52 = v108;

      sub_1D507ADFC(v50, v51, v52, v53, v54, v55, v56, v57, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
      v58 = v104;
      sub_1D4FB80B0();
      v59 = v114;
      sub_1D4FA5310(v58, v114);
      if (__swift_getEnumTagSinglePayload(v59, 1, v107) == 1)
      {
        sub_1D4E58460(v21, type metadata accessor for CreditArtist);
        result = sub_1D4E50004(v114, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v60 = v87;
        sub_1D4FB81A8();
        sub_1D4FB8108(&qword_1EC7EB600, type metadata accessor for CreditArtist, &protocol conformance descriptor for CreditArtist);
        v61 = v91;
        sub_1D560EC98();
        v62 = sub_1D560D708();
        v99 = v63;
        v100 = v62;
        v64 = *v85;
        v65 = v61;
        v66 = v93;
        (*v85)(v65, v93);
        v67 = v92;
        sub_1D560EC98();
        v68 = v90;
        v69 = v89;
        sub_1D560D828();
        v70 = v67;
        v27 = v110;
        v64(v70, v66);
        v30 = v109;
        v71 = *(v68 + 24);
        v72 = sub_1D5610088();
        (*(*(v72 - 8) + 16))(v69 + v71, v94, v72);
        __swift_storeEnumTagSinglePayload(v69 + v71, 0, 1, v72);
        v73 = v99;
        *v69 = v100;
        v69[1] = v73;
        v74 = v88;
        sub_1D4FB80B0();
        v75 = v95;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116 = *v75;
        v77 = v74;
        v21 = v115;
        sub_1D4F13640(v77, v69, isUniquelyReferenced_nonNull_native, v78, v79, v80, v81, v82, v84, v85, v86, v87);
        sub_1D4E58460(v69, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v60, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v21, type metadata accessor for CreditArtist);
        *v75 = v116;
      }

      v34 = v102;
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v84)
      {
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB968, &unk_1D561F140);
        __swift_storeEnumTagSinglePayload(v27, 1, 1, v83);
        v33 = 0;
        goto LABEL_12;
      }

      v33 = *(v34 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FAB0A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v105 = a3;
  v95 = a1;
  v94 = sub_1D560D838();
  v8 = *(v94 - 8);
  v9 = MEMORY[0x1EEE9AC00](v94);
  v93 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v87 - v11;
  v91 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v87 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v116 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v122 = &v87 - v14;
  v110 = type metadata accessor for GenericMusicItem(0);
  v90 = *(v110 - 8);
  v15 = MEMORY[0x1EEE9AC00](v110);
  v106 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v87 - v17;
  v109 = sub_1D560CD48();
  v18 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D56141F8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v107 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v87 - v24;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA820, &unk_1D5623370);
  v26 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v87 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB980, &unk_1D561F150);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v121 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v29);
  v112 = &v87 - v32;
  if (a2)
  {
    v114 = v25;
    v33 = v18;
    v34 = a2 + 64;
    v35 = 1 << *(a2 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(a2 + 64);
    v88 = (v35 + 63) >> 6;
    v96 = v26 + 16;
    v97 = v26;
    v118 = (v26 + 32);
    v103 = (v33 + 16);
    v102 = (v21 + 16);
    v89 = (v8 + 8);
    v100 = (v21 + 8);

    v39 = 0;
    v115 = v20;
    v101 = a2 + 64;
    v104 = a5;
    v113 = a4;
    v111 = a2;
    while (1)
    {
      v40 = v121;
      if (!v37)
      {
        break;
      }

      v41 = v39;
LABEL_11:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v41 << 6);
      v44 = (*(v38 + 48) + 16 * v43);
      v46 = *v44;
      v45 = v44[1];
      v47 = v97;
      v49 = v119;
      v48 = v120;
      (*(v97 + 16))(v119, *(v38 + 56) + *(v97 + 72) * v43, v120);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB988, &unk_1D5623510);
      v51 = *(v50 + 48);
      v52 = v121;
      *v121 = v46;
      *(v52 + 1) = v45;
      v53 = v52;
      (*(v47 + 32))(&v52[v51], v49, v48);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v50);

      a4 = v113;
LABEL_12:
      v54 = v112;
      sub_1D4FB8058();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB988, &unk_1D5623510);
      if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
      {
      }

      (*v118)(v119, v54 + *(v55 + 48), v120);
      (*v103)(v108, a4, v109);
      sub_1D4FB8108(&qword_1EC7EA7D0, MEMORY[0x1E6977048], MEMORY[0x1E6977028]);

      v56 = a4;
      v57 = v114;
      v58 = v122;
      v59 = v115;
      sub_1D5612698();
      v60 = v107;
      (*v102)(v107, v57, v59);
      sub_1D4FA4118(v60, v58);
      if (__swift_getEnumTagSinglePayload(v58, 1, v110) == 1)
      {
        (*v100)(v57, v59);
        sub_1D4E50004(v122, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v56;
        v38 = v111;
        v34 = v101;
      }

      else
      {
        sub_1D4FB81A8();
        v61 = v92;
        sub_1D560EC98();
        v99 = sub_1D560D708();
        v98 = v62;
        v63 = *v89;
        v64 = v61;
        v65 = v94;
        (*v89)(v64, v94);
        v66 = v116;
        v67 = v93;
        sub_1D560EC98();
        v68 = v91;
        sub_1D560D828();
        v63(v67, v65);
        v69 = *(v68 + 24);
        v70 = sub_1D5610088();
        (*(*(v70 - 8) + 16))(v66 + v69, v95, v70);
        __swift_storeEnumTagSinglePayload(v66 + v69, 0, 1, v70);
        v71 = v98;
        *v66 = v99;
        v66[1] = v71;
        sub_1D4FB80B0();
        v72 = v105;
        swift_isUniquelyReferenced_nonNull_native();
        v123 = *v72;
        v73 = v123;
        v74 = sub_1D4F0DDB4(v66);
        if (__OFADD__(*(v73 + 16), (v75 & 1) == 0))
        {
          goto LABEL_29;
        }

        v76 = v74;
        v77 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v78 = sub_1D4F0DDB4(v116);
          v80 = v111;
          v81 = v115;
          v34 = v101;
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_31;
          }

          v76 = v78;
          a4 = v113;
        }

        else
        {
          v80 = v111;
          a4 = v113;
          v81 = v115;
          v34 = v101;
        }

        v82 = v123;
        if (v77)
        {
          sub_1D4F159C4(v106, *(v123 + 56) + *(v90 + 72) * v76);
        }

        else
        {
          *(v123 + 8 * (v76 >> 6) + 64) |= 1 << v76;
          sub_1D4FB80B0();
          sub_1D4FB81A8();
          v83 = *(v82 + 16);
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (v84)
          {
            goto LABEL_30;
          }

          *(v82 + 16) = v85;
        }

        sub_1D4E58460(v116, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v117, type metadata accessor for GenericMusicItem);
        (*v100)(v114, v81);
        *v105 = v82;
        v38 = v80;
      }
    }

    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v88)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB988, &unk_1D5623510);
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v86);
        v37 = 0;
        goto LABEL_12;
      }

      v37 = *(v34 + 8 * v41);
      ++v39;
      if (v37)
      {
        v39 = v41;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FABC24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v105 = a3;
  v95 = a1;
  v94 = sub_1D560D838();
  v8 = *(v94 - 8);
  v9 = MEMORY[0x1EEE9AC00](v94);
  v93 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v87 - v11;
  v91 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v87 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v116 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v122 = &v87 - v14;
  v110 = type metadata accessor for GenericMusicItem(0);
  v90 = *(v110 - 8);
  v15 = MEMORY[0x1EEE9AC00](v110);
  v106 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v87 - v17;
  v109 = sub_1D560CD48();
  v18 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D5614B68();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v107 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v87 - v24;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA830, &qword_1D56233C0);
  v26 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v87 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE58, &qword_1D56234F8);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v121 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v29);
  v112 = &v87 - v32;
  if (a2)
  {
    v114 = v25;
    v33 = v18;
    v34 = a2 + 64;
    v35 = 1 << *(a2 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(a2 + 64);
    v88 = (v35 + 63) >> 6;
    v96 = v26 + 16;
    v97 = v26;
    v118 = (v26 + 32);
    v103 = (v33 + 16);
    v102 = (v21 + 16);
    v89 = (v8 + 8);
    v100 = (v21 + 8);

    v39 = 0;
    v115 = v20;
    v101 = a2 + 64;
    v104 = a5;
    v113 = a4;
    v111 = a2;
    while (1)
    {
      v40 = v121;
      if (!v37)
      {
        break;
      }

      v41 = v39;
LABEL_11:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v41 << 6);
      v44 = (*(v38 + 48) + 16 * v43);
      v46 = *v44;
      v45 = v44[1];
      v47 = v97;
      v49 = v119;
      v48 = v120;
      (*(v97 + 16))(v119, *(v38 + 56) + *(v97 + 72) * v43, v120);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE60, &unk_1D5623500);
      v51 = *(v50 + 48);
      v52 = v121;
      *v121 = v46;
      *(v52 + 1) = v45;
      v53 = v52;
      (*(v47 + 32))(&v52[v51], v49, v48);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v50);

      a4 = v113;
LABEL_12:
      v54 = v112;
      sub_1D4FB8058();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE60, &unk_1D5623500);
      if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
      {
      }

      (*v118)(v119, v54 + *(v55 + 48), v120);
      (*v103)(v108, a4, v109);
      sub_1D4FB8108(&qword_1EC7EA7C0, MEMORY[0x1E6977550], MEMORY[0x1E6977530]);

      v56 = a4;
      v57 = v114;
      v58 = v122;
      v59 = v115;
      sub_1D5612698();
      v60 = v107;
      (*v102)(v107, v57, v59);
      sub_1D4FA2EF8(v60, v58);
      if (__swift_getEnumTagSinglePayload(v58, 1, v110) == 1)
      {
        (*v100)(v57, v59);
        sub_1D4E50004(v122, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v56;
        v38 = v111;
        v34 = v101;
      }

      else
      {
        sub_1D4FB81A8();
        v61 = v92;
        sub_1D560EC98();
        v99 = sub_1D560D708();
        v98 = v62;
        v63 = *v89;
        v64 = v61;
        v65 = v94;
        (*v89)(v64, v94);
        v66 = v116;
        v67 = v93;
        sub_1D560EC98();
        v68 = v91;
        sub_1D560D828();
        v63(v67, v65);
        v69 = *(v68 + 24);
        v70 = sub_1D5610088();
        (*(*(v70 - 8) + 16))(v66 + v69, v95, v70);
        __swift_storeEnumTagSinglePayload(v66 + v69, 0, 1, v70);
        v71 = v98;
        *v66 = v99;
        v66[1] = v71;
        sub_1D4FB80B0();
        v72 = v105;
        swift_isUniquelyReferenced_nonNull_native();
        v123 = *v72;
        v73 = v123;
        v74 = sub_1D4F0DDB4(v66);
        if (__OFADD__(*(v73 + 16), (v75 & 1) == 0))
        {
          goto LABEL_29;
        }

        v76 = v74;
        v77 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v78 = sub_1D4F0DDB4(v116);
          v80 = v111;
          v81 = v115;
          v34 = v101;
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_31;
          }

          v76 = v78;
          a4 = v113;
        }

        else
        {
          v80 = v111;
          a4 = v113;
          v81 = v115;
          v34 = v101;
        }

        v82 = v123;
        if (v77)
        {
          sub_1D4F159C4(v106, *(v123 + 56) + *(v90 + 72) * v76);
        }

        else
        {
          *(v123 + 8 * (v76 >> 6) + 64) |= 1 << v76;
          sub_1D4FB80B0();
          sub_1D4FB81A8();
          v83 = *(v82 + 16);
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (v84)
          {
            goto LABEL_30;
          }

          *(v82 + 16) = v85;
        }

        sub_1D4E58460(v116, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v117, type metadata accessor for GenericMusicItem);
        (*v100)(v114, v81);
        *v105 = v82;
        v38 = v80;
      }
    }

    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v88)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE60, &unk_1D5623500);
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v86);
        v37 = 0;
        goto LABEL_12;
      }

      v37 = *(v34 + 8 * v41);
      ++v39;
      if (v37)
      {
        v39 = v41;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FAC7A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v105 = a3;
  v95 = a1;
  v94 = sub_1D560D838();
  v8 = *(v94 - 8);
  v9 = MEMORY[0x1EEE9AC00](v94);
  v93 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v87 - v11;
  v91 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v87 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v116 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v122 = &v87 - v14;
  v110 = type metadata accessor for GenericMusicItem(0);
  v90 = *(v110 - 8);
  v15 = MEMORY[0x1EEE9AC00](v110);
  v106 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v87 - v17;
  v109 = sub_1D560CD48();
  v18 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D5613C48();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v107 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v87 - v24;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA828, &qword_1D5623400);
  v26 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v87 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9C8, &unk_1D561F180);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v121 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v29);
  v112 = &v87 - v32;
  if (a2)
  {
    v114 = v25;
    v33 = v18;
    v34 = a2 + 64;
    v35 = 1 << *(a2 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(a2 + 64);
    v88 = (v35 + 63) >> 6;
    v96 = v26 + 16;
    v97 = v26;
    v118 = (v26 + 32);
    v103 = (v33 + 16);
    v102 = (v21 + 16);
    v89 = (v8 + 8);
    v100 = (v21 + 8);

    v39 = 0;
    v115 = v20;
    v101 = a2 + 64;
    v104 = a5;
    v113 = a4;
    v111 = a2;
    while (1)
    {
      v40 = v121;
      if (!v37)
      {
        break;
      }

      v41 = v39;
LABEL_11:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v41 << 6);
      v44 = (*(v38 + 48) + 16 * v43);
      v46 = *v44;
      v45 = v44[1];
      v47 = v97;
      v49 = v119;
      v48 = v120;
      (*(v97 + 16))(v119, *(v38 + 56) + *(v97 + 72) * v43, v120);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9D0, &qword_1D56234F0);
      v51 = *(v50 + 48);
      v52 = v121;
      *v121 = v46;
      *(v52 + 1) = v45;
      v53 = v52;
      (*(v47 + 32))(&v52[v51], v49, v48);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v50);

      a4 = v113;
LABEL_12:
      v54 = v112;
      sub_1D4FB8058();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9D0, &qword_1D56234F0);
      if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
      {
      }

      (*v118)(v119, v54 + *(v55 + 48), v120);
      (*v103)(v108, a4, v109);
      sub_1D4FB8108(&qword_1EC7EA7C8, MEMORY[0x1E6976DC8], MEMORY[0x1E6976DB0]);

      v56 = a4;
      v57 = v114;
      v58 = v122;
      v59 = v115;
      sub_1D5612698();
      v60 = v107;
      (*v102)(v107, v57, v59);
      sub_1D4FA1C54(v60, v58);
      if (__swift_getEnumTagSinglePayload(v58, 1, v110) == 1)
      {
        (*v100)(v57, v59);
        sub_1D4E50004(v122, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v56;
        v38 = v111;
        v34 = v101;
      }

      else
      {
        sub_1D4FB81A8();
        v61 = v92;
        sub_1D560EC98();
        v99 = sub_1D560D708();
        v98 = v62;
        v63 = *v89;
        v64 = v61;
        v65 = v94;
        (*v89)(v64, v94);
        v66 = v116;
        v67 = v93;
        sub_1D560EC98();
        v68 = v91;
        sub_1D560D828();
        v63(v67, v65);
        v69 = *(v68 + 24);
        v70 = sub_1D5610088();
        (*(*(v70 - 8) + 16))(v66 + v69, v95, v70);
        __swift_storeEnumTagSinglePayload(v66 + v69, 0, 1, v70);
        v71 = v98;
        *v66 = v99;
        v66[1] = v71;
        sub_1D4FB80B0();
        v72 = v105;
        swift_isUniquelyReferenced_nonNull_native();
        v123 = *v72;
        v73 = v123;
        v74 = sub_1D4F0DDB4(v66);
        if (__OFADD__(*(v73 + 16), (v75 & 1) == 0))
        {
          goto LABEL_29;
        }

        v76 = v74;
        v77 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v78 = sub_1D4F0DDB4(v116);
          v80 = v111;
          v81 = v115;
          v34 = v101;
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_31;
          }

          v76 = v78;
          a4 = v113;
        }

        else
        {
          v80 = v111;
          a4 = v113;
          v81 = v115;
          v34 = v101;
        }

        v82 = v123;
        if (v77)
        {
          sub_1D4F159C4(v106, *(v123 + 56) + *(v90 + 72) * v76);
        }

        else
        {
          *(v123 + 8 * (v76 >> 6) + 64) |= 1 << v76;
          sub_1D4FB80B0();
          sub_1D4FB81A8();
          v83 = *(v82 + 16);
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (v84)
          {
            goto LABEL_30;
          }

          *(v82 + 16) = v85;
        }

        sub_1D4E58460(v116, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v117, type metadata accessor for GenericMusicItem);
        (*v100)(v114, v81);
        *v105 = v82;
        v38 = v80;
      }
    }

    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v88)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9D0, &qword_1D56234F0);
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v86);
        v37 = 0;
        goto LABEL_12;
      }

      v37 = *(v34 + 8 * v41);
      ++v39;
      if (v37)
      {
        v39 = v41;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FAD324(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v103 = a5;
  v98 = a4;
  v90 = a3;
  v89 = a1;
  v88 = sub_1D560D838();
  v6 = *(v88 - 8);
  v7 = MEMORY[0x1EEE9AC00](v88);
  v87 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v79 - v9;
  v85 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v109 = &v79 - v12;
  v102 = type metadata accessor for GenericMusicItem(0);
  v13 = MEMORY[0x1EEE9AC00](v102);
  v83 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v79 - v15;
  v101 = sub_1D560CD48();
  v16 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for EditorialItem(0);
  v18 = MEMORY[0x1EEE9AC00](v81);
  v99 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v79 - v20;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9A0, &qword_1D561F160);
  v22 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v79 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9A8, &qword_1D561F168);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v25);
  v30 = &v79 - v29;
  v93 = a2;
  if (a2)
  {
    v31 = 1 << *(v93 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v93 + 64);
    v79 = (v31 + 63) >> 6;
    v91 = v22 + 16;
    v92 = v22;
    v106 = (v22 + 32);
    v96 = (v16 + 16);
    v34 = v93 + 64;
    v80 = (v6 + 8);

    v35 = 0;
    v110 = v21;
    v104 = v30;
    v105 = v27;
    v97 = v34;
    while (v33)
    {
      v36 = v35;
LABEL_11:
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = v37 | (v36 << 6);
      v39 = v92;
      v40 = (*(v93 + 48) + 16 * v38);
      v42 = *v40;
      v41 = v40[1];
      v43 = v107;
      v44 = v108;
      (*(v92 + 16))(v107, *(v93 + 56) + *(v92 + 72) * v38, v108);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9B0, &unk_1D561F170);
      v46 = *(v45 + 48);
      v47 = v105;
      *v105 = v42;
      *(v47 + 1) = v41;
      v48 = v43;
      v27 = v47;
      (*(v39 + 32))(&v47[v46], v48, v44);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v45);

      v21 = v110;
      v30 = v104;
LABEL_12:
      sub_1D4FB8058();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9B0, &unk_1D561F170);
      if (__swift_getEnumTagSinglePayload(v30, 1, v49) == 1)
      {
      }

      v50 = v107;
      (*v106)(v107, &v30[*(v49 + 48)], v108);
      v51 = v100;
      (*v96)(v100, v98, v101);
      v52 = v103;

      (loc_1D50A02C0)(v50, v51, v52);
      v53 = v99;
      sub_1D4FB80B0();
      v54 = v109;
      sub_1D4FA0A10(v53, v109);
      if (__swift_getEnumTagSinglePayload(v54, 1, v102) == 1)
      {
        sub_1D4E58460(v21, type metadata accessor for EditorialItem);
        result = sub_1D4E50004(v109, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v55 = v82;
        sub_1D4FB81A8();
        sub_1D4FB8108(&qword_1EDD57650, type metadata accessor for EditorialItem, &protocol conformance descriptor for EditorialItem);
        v56 = v86;
        sub_1D560EC98();
        v57 = sub_1D560D708();
        v94 = v58;
        v95 = v57;
        v59 = *v80;
        v60 = v56;
        v61 = v88;
        (*v80)(v60, v88);
        v62 = v87;
        sub_1D560EC98();
        v63 = v85;
        v64 = v84;
        sub_1D560D828();
        v65 = v62;
        v27 = v105;
        v59(v65, v61);
        v30 = v104;
        v66 = *(v63 + 24);
        v67 = sub_1D5610088();
        (*(*(v67 - 8) + 16))(v64 + v66, v89, v67);
        __swift_storeEnumTagSinglePayload(v64 + v66, 0, 1, v67);
        v68 = v94;
        *v64 = v95;
        v64[1] = v68;
        v69 = v83;
        sub_1D4FB80B0();
        v70 = v90;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111 = *v70;
        v72 = v69;
        v21 = v110;
        sub_1D4F13640(v72, v64, isUniquelyReferenced_nonNull_native, v73, v74, v75, v76, v77, v79, v80, v81, v82);
        sub_1D4E58460(v64, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v55, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v21, type metadata accessor for EditorialItem);
        *v70 = v111;
      }

      v34 = v97;
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v79)
      {
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9B0, &unk_1D561F170);
        __swift_storeEnumTagSinglePayload(v27, 1, 1, v78);
        v33 = 0;
        goto LABEL_12;
      }

      v33 = *(v34 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FADC58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v108 = a5;
  v103 = a4;
  v95 = a3;
  v94 = a1;
  v93 = sub_1D560D838();
  v6 = *(v93 - 8);
  v7 = MEMORY[0x1EEE9AC00](v93);
  v92 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v84 - v9;
  v90 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v114 = &v84 - v12;
  v107 = type metadata accessor for GenericMusicItem(0);
  v13 = MEMORY[0x1EEE9AC00](v107);
  v88 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v84 - v15;
  v106 = sub_1D560CD48();
  v16 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for MusicMovie(0);
  v18 = MEMORY[0x1EEE9AC00](v86);
  v104 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v84 - v20;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9E8, &unk_1D561F190);
  v22 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v84 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9F0, &unk_1D56234E0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v25);
  v30 = &v84 - v29;
  v98 = a2;
  if (a2)
  {
    v31 = 1 << *(v98 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v98 + 64);
    v84 = (v31 + 63) >> 6;
    v96 = v22 + 16;
    v97 = v22;
    v111 = (v22 + 32);
    v101 = (v16 + 16);
    v34 = v98 + 64;
    v85 = (v6 + 8);

    v35 = 0;
    v115 = v21;
    v109 = v30;
    v110 = v27;
    v102 = v34;
    while (v33)
    {
      v36 = v35;
LABEL_11:
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = v37 | (v36 << 6);
      v39 = v97;
      v40 = (*(v98 + 48) + 16 * v38);
      v42 = *v40;
      v41 = v40[1];
      v43 = v112;
      v44 = v113;
      (*(v97 + 16))(v112, *(v98 + 56) + *(v97 + 72) * v38, v113);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9F8, &unk_1D561F1A0);
      v46 = *(v45 + 48);
      v47 = v110;
      *v110 = v42;
      *(v47 + 1) = v41;
      v48 = v43;
      v27 = v47;
      (*(v39 + 32))(&v47[v46], v48, v44);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v45);

      v21 = v115;
      v30 = v109;
LABEL_12:
      sub_1D4FB8058();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9F8, &unk_1D561F1A0);
      if (__swift_getEnumTagSinglePayload(v30, 1, v49) == 1)
      {
      }

      v50 = v112;
      (*v111)(v112, &v30[*(v49 + 48)], v113);
      v51 = v105;
      (*v101)(v105, v103, v106);
      v52 = v108;

      sub_1D5096F2C(v50, v51, v52, v53, v54, v55, v56, v57, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
      v58 = v104;
      sub_1D4FB80B0();
      v59 = v114;
      sub_1D4F9F7AC(v58, v114);
      if (__swift_getEnumTagSinglePayload(v59, 1, v107) == 1)
      {
        sub_1D4E58460(v21, type metadata accessor for MusicMovie);
        result = sub_1D4E50004(v114, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v60 = v87;
        sub_1D4FB81A8();
        sub_1D4FB8108(&qword_1EDD59308, type metadata accessor for MusicMovie, &protocol conformance descriptor for MusicMovie);
        v61 = v91;
        sub_1D560EC98();
        v62 = sub_1D560D708();
        v99 = v63;
        v100 = v62;
        v64 = *v85;
        v65 = v61;
        v66 = v93;
        (*v85)(v65, v93);
        v67 = v92;
        sub_1D560EC98();
        v68 = v90;
        v69 = v89;
        sub_1D560D828();
        v70 = v67;
        v27 = v110;
        v64(v70, v66);
        v30 = v109;
        v71 = *(v68 + 24);
        v72 = sub_1D5610088();
        (*(*(v72 - 8) + 16))(v69 + v71, v94, v72);
        __swift_storeEnumTagSinglePayload(v69 + v71, 0, 1, v72);
        v73 = v99;
        *v69 = v100;
        v69[1] = v73;
        v74 = v88;
        sub_1D4FB80B0();
        v75 = v95;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116 = *v75;
        v77 = v74;
        v21 = v115;
        sub_1D4F13640(v77, v69, isUniquelyReferenced_nonNull_native, v78, v79, v80, v81, v82, v84, v85, v86, v87);
        sub_1D4E58460(v69, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v60, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v21, type metadata accessor for MusicMovie);
        *v75 = v116;
      }

      v34 = v102;
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v84)
      {
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9F8, &unk_1D561F1A0);
        __swift_storeEnumTagSinglePayload(v27, 1, 1, v83);
        v33 = 0;
        goto LABEL_12;
      }

      v33 = *(v34 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FAE58C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v105 = a3;
  v95 = a1;
  v94 = sub_1D560D838();
  v8 = *(v94 - 8);
  v9 = MEMORY[0x1EEE9AC00](v94);
  v93 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v87 - v11;
  v91 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v87 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v116 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v122 = &v87 - v14;
  v110 = type metadata accessor for GenericMusicItem(0);
  v90 = *(v110 - 8);
  v15 = MEMORY[0x1EEE9AC00](v110);
  v106 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v87 - v17;
  v109 = sub_1D560CD48();
  v18 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D560EEA8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v107 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v87 - v24;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB98, &unk_1D56234C0);
  v26 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v87 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBA0, &unk_1D561F2A0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v121 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v29);
  v112 = &v87 - v32;
  if (a2)
  {
    v114 = v25;
    v33 = v18;
    v34 = a2 + 64;
    v35 = 1 << *(a2 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(a2 + 64);
    v88 = (v35 + 63) >> 6;
    v96 = v26 + 16;
    v97 = v26;
    v118 = (v26 + 32);
    v103 = (v33 + 16);
    v102 = (v21 + 16);
    v89 = (v8 + 8);
    v100 = (v21 + 8);

    v39 = 0;
    v115 = v20;
    v101 = a2 + 64;
    v104 = a5;
    v113 = a4;
    v111 = a2;
    while (1)
    {
      v40 = v121;
      if (!v37)
      {
        break;
      }

      v41 = v39;
LABEL_11:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v41 << 6);
      v44 = (*(v38 + 48) + 16 * v43);
      v46 = *v44;
      v45 = v44[1];
      v47 = v97;
      v49 = v119;
      v48 = v120;
      (*(v97 + 16))(v119, *(v38 + 56) + *(v97 + 72) * v43, v120);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBA8, &unk_1D56234D0);
      v51 = *(v50 + 48);
      v52 = v121;
      *v121 = v46;
      *(v52 + 1) = v45;
      v53 = v52;
      (*(v47 + 32))(&v52[v51], v49, v48);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v50);

      a4 = v113;
LABEL_12:
      v54 = v112;
      sub_1D4FB8058();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBA8, &unk_1D56234D0);
      if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
      {
      }

      (*v118)(v119, v54 + *(v55 + 48), v120);
      (*v103)(v108, a4, v109);
      sub_1D4FB8108(&qword_1EC7ECE50, MEMORY[0x1E69754E8], MEMORY[0x1E69754C0]);

      v56 = a4;
      v57 = v114;
      v58 = v122;
      v59 = v115;
      sub_1D5612698();
      v60 = v107;
      (*v102)(v107, v57, v59);
      sub_1D4F9E578(v60, v58);
      if (__swift_getEnumTagSinglePayload(v58, 1, v110) == 1)
      {
        (*v100)(v57, v59);
        sub_1D4E50004(v122, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v56;
        v38 = v111;
        v34 = v101;
      }

      else
      {
        sub_1D4FB81A8();
        v61 = v92;
        sub_1D560EC98();
        v99 = sub_1D560D708();
        v98 = v62;
        v63 = *v89;
        v64 = v61;
        v65 = v94;
        (*v89)(v64, v94);
        v66 = v116;
        v67 = v93;
        sub_1D560EC98();
        v68 = v91;
        sub_1D560D828();
        v63(v67, v65);
        v69 = *(v68 + 24);
        v70 = sub_1D5610088();
        (*(*(v70 - 8) + 16))(v66 + v69, v95, v70);
        __swift_storeEnumTagSinglePayload(v66 + v69, 0, 1, v70);
        v71 = v98;
        *v66 = v99;
        v66[1] = v71;
        sub_1D4FB80B0();
        v72 = v105;
        swift_isUniquelyReferenced_nonNull_native();
        v123 = *v72;
        v73 = v123;
        v74 = sub_1D4F0DDB4(v66);
        if (__OFADD__(*(v73 + 16), (v75 & 1) == 0))
        {
          goto LABEL_29;
        }

        v76 = v74;
        v77 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v78 = sub_1D4F0DDB4(v116);
          v80 = v111;
          v81 = v115;
          v34 = v101;
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_31;
          }

          v76 = v78;
          a4 = v113;
        }

        else
        {
          v80 = v111;
          a4 = v113;
          v81 = v115;
          v34 = v101;
        }

        v82 = v123;
        if (v77)
        {
          sub_1D4F159C4(v106, *(v123 + 56) + *(v90 + 72) * v76);
        }

        else
        {
          *(v123 + 8 * (v76 >> 6) + 64) |= 1 << v76;
          sub_1D4FB80B0();
          sub_1D4FB81A8();
          v83 = *(v82 + 16);
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (v84)
          {
            goto LABEL_30;
          }

          *(v82 + 16) = v85;
        }

        sub_1D4E58460(v116, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v117, type metadata accessor for GenericMusicItem);
        (*v100)(v114, v81);
        *v105 = v82;
        v38 = v80;
      }
    }

    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v88)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBA8, &unk_1D56234D0);
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v86);
        v37 = 0;
        goto LABEL_12;
      }

      v37 = *(v34 + 8 * v41);
      ++v39;
      if (v37)
      {
        v39 = v41;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FAF10C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v105 = a3;
  v95 = a1;
  v94 = sub_1D560D838();
  v8 = *(v94 - 8);
  v9 = MEMORY[0x1EEE9AC00](v94);
  v93 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v87 - v11;
  v91 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v87 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v116 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v122 = &v87 - v14;
  v110 = type metadata accessor for GenericMusicItem(0);
  v90 = *(v110 - 8);
  v15 = MEMORY[0x1EEE9AC00](v110);
  v106 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v87 - v17;
  v109 = sub_1D560CD48();
  v18 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D5614898();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v107 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v87 - v24;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  v26 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v87 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC8, &unk_1D56234B0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v121 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v29);
  v112 = &v87 - v32;
  if (a2)
  {
    v114 = v25;
    v33 = v18;
    v34 = a2 + 64;
    v35 = 1 << *(a2 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(a2 + 64);
    v88 = (v35 + 63) >> 6;
    v96 = v26 + 16;
    v97 = v26;
    v118 = (v26 + 32);
    v103 = (v33 + 16);
    v102 = (v21 + 16);
    v89 = (v8 + 8);
    v100 = (v21 + 8);

    v39 = 0;
    v115 = v20;
    v101 = a2 + 64;
    v104 = a5;
    v113 = a4;
    v111 = a2;
    while (1)
    {
      v40 = v121;
      if (!v37)
      {
        break;
      }

      v41 = v39;
LABEL_11:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v41 << 6);
      v44 = (*(v38 + 48) + 16 * v43);
      v46 = *v44;
      v45 = v44[1];
      v47 = v97;
      v49 = v119;
      v48 = v120;
      (*(v97 + 16))(v119, *(v38 + 56) + *(v97 + 72) * v43, v120);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBD0, &unk_1D561F2C0);
      v51 = *(v50 + 48);
      v52 = v121;
      *v121 = v46;
      *(v52 + 1) = v45;
      v53 = v52;
      (*(v47 + 32))(&v52[v51], v49, v48);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v50);

      a4 = v113;
LABEL_12:
      v54 = v112;
      sub_1D4FB8058();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBD0, &unk_1D561F2C0);
      if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
      {
      }

      (*v118)(v119, v54 + *(v55 + 48), v120);
      (*v103)(v108, a4, v109);
      sub_1D4FB8108(&qword_1EDD52A78, MEMORY[0x1E69773E0], MEMORY[0x1E69773B8]);

      v56 = a4;
      v57 = v114;
      v58 = v122;
      v59 = v115;
      sub_1D5612698();
      v60 = v107;
      (*v102)(v107, v57, v59);
      sub_1D4F9D35C(v60, v58);
      if (__swift_getEnumTagSinglePayload(v58, 1, v110) == 1)
      {
        (*v100)(v57, v59);
        sub_1D4E50004(v122, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v56;
        v38 = v111;
        v34 = v101;
      }

      else
      {
        sub_1D4FB81A8();
        v61 = v92;
        sub_1D560EC98();
        v99 = sub_1D560D708();
        v98 = v62;
        v63 = *v89;
        v64 = v61;
        v65 = v94;
        (*v89)(v64, v94);
        v66 = v116;
        v67 = v93;
        sub_1D560EC98();
        v68 = v91;
        sub_1D560D828();
        v63(v67, v65);
        v69 = *(v68 + 24);
        v70 = sub_1D5610088();
        (*(*(v70 - 8) + 16))(v66 + v69, v95, v70);
        __swift_storeEnumTagSinglePayload(v66 + v69, 0, 1, v70);
        v71 = v98;
        *v66 = v99;
        v66[1] = v71;
        sub_1D4FB80B0();
        v72 = v105;
        swift_isUniquelyReferenced_nonNull_native();
        v123 = *v72;
        v73 = v123;
        v74 = sub_1D4F0DDB4(v66);
        if (__OFADD__(*(v73 + 16), (v75 & 1) == 0))
        {
          goto LABEL_29;
        }

        v76 = v74;
        v77 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v78 = sub_1D4F0DDB4(v116);
          v80 = v111;
          v81 = v115;
          v34 = v101;
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_31;
          }

          v76 = v78;
          a4 = v113;
        }

        else
        {
          v80 = v111;
          a4 = v113;
          v81 = v115;
          v34 = v101;
        }

        v82 = v123;
        if (v77)
        {
          sub_1D4F159C4(v106, *(v123 + 56) + *(v90 + 72) * v76);
        }

        else
        {
          *(v123 + 8 * (v76 >> 6) + 64) |= 1 << v76;
          sub_1D4FB80B0();
          sub_1D4FB81A8();
          v83 = *(v82 + 16);
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (v84)
          {
            goto LABEL_30;
          }

          *(v82 + 16) = v85;
        }

        sub_1D4E58460(v116, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v117, type metadata accessor for GenericMusicItem);
        (*v100)(v114, v81);
        *v105 = v82;
        v38 = v80;
      }
    }

    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v88)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBD0, &unk_1D561F2C0);
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v86);
        v37 = 0;
        goto LABEL_12;
      }

      v37 = *(v34 + 8 * v41);
      ++v39;
      if (v37)
      {
        v39 = v41;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FAFC8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v105 = a3;
  v95 = a1;
  v94 = sub_1D560D838();
  v8 = *(v94 - 8);
  v9 = MEMORY[0x1EEE9AC00](v94);
  v93 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v87 - v11;
  v91 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v87 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v116 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v122 = &v87 - v14;
  v110 = type metadata accessor for GenericMusicItem(0);
  v90 = *(v110 - 8);
  v15 = MEMORY[0x1EEE9AC00](v110);
  v106 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v87 - v17;
  v109 = sub_1D560CD48();
  v18 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D560F8B8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v107 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v87 - v24;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA10, &unk_1D5623490);
  v26 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v87 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA18, &unk_1D561F1B0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v121 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v29);
  v112 = &v87 - v32;
  if (a2)
  {
    v114 = v25;
    v33 = v18;
    v34 = a2 + 64;
    v35 = 1 << *(a2 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(a2 + 64);
    v88 = (v35 + 63) >> 6;
    v96 = v26 + 16;
    v97 = v26;
    v118 = (v26 + 32);
    v103 = (v33 + 16);
    v102 = (v21 + 16);
    v89 = (v8 + 8);
    v100 = (v21 + 8);

    v39 = 0;
    v115 = v20;
    v101 = a2 + 64;
    v104 = a5;
    v113 = a4;
    v111 = a2;
    while (1)
    {
      v40 = v121;
      if (!v37)
      {
        break;
      }

      v41 = v39;
LABEL_11:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v41 << 6);
      v44 = (*(v38 + 48) + 16 * v43);
      v46 = *v44;
      v45 = v44[1];
      v47 = v97;
      v49 = v119;
      v48 = v120;
      (*(v97 + 16))(v119, *(v38 + 56) + *(v97 + 72) * v43, v120);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA20, &unk_1D56234A0);
      v51 = *(v50 + 48);
      v52 = v121;
      *v121 = v46;
      *(v52 + 1) = v45;
      v53 = v52;
      (*(v47 + 32))(&v52[v51], v49, v48);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v50);

      a4 = v113;
LABEL_12:
      v54 = v112;
      sub_1D4FB8058();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA20, &unk_1D56234A0);
      if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
      {
      }

      (*v118)(v119, v54 + *(v55 + 48), v120);
      (*v103)(v108, a4, v109);
      sub_1D4FB8108(&qword_1EC7ECE48, MEMORY[0x1E69758A0], MEMORY[0x1E6975880]);

      v56 = a4;
      v57 = v114;
      v58 = v122;
      v59 = v115;
      sub_1D5612698();
      v60 = v107;
      (*v102)(v107, v57, v59);
      sub_1D4F9C12C(v60, v58);
      if (__swift_getEnumTagSinglePayload(v58, 1, v110) == 1)
      {
        (*v100)(v57, v59);
        sub_1D4E50004(v122, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v56;
        v38 = v111;
        v34 = v101;
      }

      else
      {
        sub_1D4FB81A8();
        v61 = v92;
        sub_1D560EC98();
        v99 = sub_1D560D708();
        v98 = v62;
        v63 = *v89;
        v64 = v61;
        v65 = v94;
        (*v89)(v64, v94);
        v66 = v116;
        v67 = v93;
        sub_1D560EC98();
        v68 = v91;
        sub_1D560D828();
        v63(v67, v65);
        v69 = *(v68 + 24);
        v70 = sub_1D5610088();
        (*(*(v70 - 8) + 16))(v66 + v69, v95, v70);
        __swift_storeEnumTagSinglePayload(v66 + v69, 0, 1, v70);
        v71 = v98;
        *v66 = v99;
        v66[1] = v71;
        sub_1D4FB80B0();
        v72 = v105;
        swift_isUniquelyReferenced_nonNull_native();
        v123 = *v72;
        v73 = v123;
        v74 = sub_1D4F0DDB4(v66);
        if (__OFADD__(*(v73 + 16), (v75 & 1) == 0))
        {
          goto LABEL_29;
        }

        v76 = v74;
        v77 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v78 = sub_1D4F0DDB4(v116);
          v80 = v111;
          v81 = v115;
          v34 = v101;
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_31;
          }

          v76 = v78;
          a4 = v113;
        }

        else
        {
          v80 = v111;
          a4 = v113;
          v81 = v115;
          v34 = v101;
        }

        v82 = v123;
        if (v77)
        {
          sub_1D4F159C4(v106, *(v123 + 56) + *(v90 + 72) * v76);
        }

        else
        {
          *(v123 + 8 * (v76 >> 6) + 64) |= 1 << v76;
          sub_1D4FB80B0();
          sub_1D4FB81A8();
          v83 = *(v82 + 16);
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (v84)
          {
            goto LABEL_30;
          }

          *(v82 + 16) = v85;
        }

        sub_1D4E58460(v116, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v117, type metadata accessor for GenericMusicItem);
        (*v100)(v114, v81);
        *v105 = v82;
        v38 = v80;
      }
    }

    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v88)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA20, &unk_1D56234A0);
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v86);
        v37 = 0;
        goto LABEL_12;
      }

      v37 = *(v34 + 8 * v41);
      ++v39;
      if (v37)
      {
        v39 = v41;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB080C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v108 = a5;
  v103 = a4;
  v95 = a3;
  v94 = a1;
  v93 = sub_1D560D838();
  v6 = *(v93 - 8);
  v7 = MEMORY[0x1EEE9AC00](v93);
  v92 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v84 - v9;
  v90 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v114 = &v84 - v12;
  v107 = type metadata accessor for GenericMusicItem(0);
  v13 = MEMORY[0x1EEE9AC00](v107);
  v88 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v84 - v15;
  v106 = sub_1D560CD48();
  v16 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for SocialProfile(0);
  v18 = MEMORY[0x1EEE9AC00](v86);
  v104 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v84 - v20;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
  v22 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v84 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA38, &unk_1D5623480);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v25);
  v30 = &v84 - v29;
  v98 = a2;
  if (a2)
  {
    v31 = 1 << *(v98 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v98 + 64);
    v84 = (v31 + 63) >> 6;
    v96 = v22 + 16;
    v97 = v22;
    v111 = (v22 + 32);
    v101 = (v16 + 16);
    v34 = v98 + 64;
    v85 = (v6 + 8);

    v35 = 0;
    v115 = v21;
    v109 = v30;
    v110 = v27;
    v102 = v34;
    while (v33)
    {
      v36 = v35;
LABEL_11:
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = v37 | (v36 << 6);
      v39 = v97;
      v40 = (*(v98 + 48) + 16 * v38);
      v42 = *v40;
      v41 = v40[1];
      v43 = v112;
      v44 = v113;
      (*(v97 + 16))(v112, *(v98 + 56) + *(v97 + 72) * v38, v113);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA40, &unk_1D561F1D0);
      v46 = *(v45 + 48);
      v47 = v110;
      *v110 = v42;
      *(v47 + 1) = v41;
      v48 = v43;
      v27 = v47;
      (*(v39 + 32))(&v47[v46], v48, v44);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v45);

      v21 = v115;
      v30 = v109;
LABEL_12:
      sub_1D4FB8058();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA40, &unk_1D561F1D0);
      if (__swift_getEnumTagSinglePayload(v30, 1, v49) == 1)
      {
      }

      v50 = v112;
      (*v111)(v112, &v30[*(v49 + 48)], v113);
      v51 = v105;
      (*v101)(v105, v103, v106);
      v52 = v108;

      sub_1D50993EC(v50, v51, v52, v53, v54, v55, v56, v57, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
      v58 = v104;
      sub_1D4FB80B0();
      v59 = v114;
      sub_1D4F9AF14(v58, v114);
      if (__swift_getEnumTagSinglePayload(v59, 1, v107) == 1)
      {
        sub_1D4E58460(v21, type metadata accessor for SocialProfile);
        result = sub_1D4E50004(v114, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v60 = v87;
        sub_1D4FB81A8();
        sub_1D4FB8108(&qword_1EDD57518, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
        v61 = v91;
        sub_1D560EC98();
        v62 = sub_1D560D708();
        v99 = v63;
        v100 = v62;
        v64 = *v85;
        v65 = v61;
        v66 = v93;
        (*v85)(v65, v93);
        v67 = v92;
        sub_1D560EC98();
        v68 = v90;
        v69 = v89;
        sub_1D560D828();
        v70 = v67;
        v27 = v110;
        v64(v70, v66);
        v30 = v109;
        v71 = *(v68 + 24);
        v72 = sub_1D5610088();
        (*(*(v72 - 8) + 16))(v69 + v71, v94, v72);
        __swift_storeEnumTagSinglePayload(v69 + v71, 0, 1, v72);
        v73 = v99;
        *v69 = v100;
        v69[1] = v73;
        v74 = v88;
        sub_1D4FB80B0();
        v75 = v95;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116 = *v75;
        v77 = v74;
        v21 = v115;
        sub_1D4F13640(v77, v69, isUniquelyReferenced_nonNull_native, v78, v79, v80, v81, v82, v84, v85, v86, v87);
        sub_1D4E58460(v69, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v60, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v21, type metadata accessor for SocialProfile);
        *v75 = v116;
      }

      v34 = v102;
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v84)
      {
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA40, &unk_1D561F1D0);
        __swift_storeEnumTagSinglePayload(v27, 1, 1, v83);
        v33 = 0;
        goto LABEL_12;
      }

      v33 = *(v34 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}