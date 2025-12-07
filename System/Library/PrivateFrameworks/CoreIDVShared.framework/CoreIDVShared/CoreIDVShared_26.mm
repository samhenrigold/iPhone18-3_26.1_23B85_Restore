uint64_t MobileAssetManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_225BF5AF8(char *a1, uint64_t a2, uint64_t a3)
{
  v8 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = sub_225B2E928(MEMORY[0x277D84F90]);
  sub_225BF1994(&v8, v6, sub_225BF5DB8, v5);
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_225BF5C20()
{
  result = qword_28105BFD8;
  if (!qword_28105BFD8)
  {
    sub_225CCDA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105BFD8);
  }

  return result;
}

void sub_225BF5CA0(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

BOOL sub_225BF5CAC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2259D8718(255, &qword_27D740380, 0x277D289C0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return (v5(a1 + *(TupleTypeMetadata2 + 48), a2 + *(TupleTypeMetadata2 + 48)) & 1) == 0;
}

uint64_t objectdestroy_20Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t MobileAssetManagerProtocol.retrieveMostRecentAsset<A>(info:isFirstMoreRecent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 128) = a8;
  *(v9 + 136) = v12;
  *(v9 + 112) = a6;
  *(v9 + 120) = a7;
  *(v9 + 96) = a4;
  *(v9 + 104) = a5;
  *(v9 + 80) = a1;
  *(v9 + 88) = a3;
  *(v9 + 160) = *a2;
  v10 = *(a2 + 8);
  *(v9 + 144) = v8;
  *(v9 + 152) = v10;
  return MEMORY[0x2822009F8](sub_225BF5E00, 0, 0);
}

uint64_t sub_225BF5E00()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 160);
  v4 = *(v0 + 136);
  v12 = *(v0 + 120);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 80);
  *(v0 + 16) = v0;
  *(v0 + 56) = v9;
  *(v0 + 24) = sub_225BF5EFC;
  v10 = swift_continuation_init();
  sub_225BF6004(v10, v2, v3, v1, v8, v7, v6, v5, v12, *(&v12 + 1), v4);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_225BF5EFC(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_225BF6004(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18[0] = a3 & 1;
  v19 = a4;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  (*(a9 + 8))(v18, a5, a6, sub_225BF7458, v16, a8, a10, a11, a7, a9);
}

uint64_t MobileAssetManagerProtocol.retrieveMostRecentAsset<A>(info:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = *(a1 + 8);
  v19[0] = *a1;
  v20 = v16;
  v17 = swift_allocObject();
  v17[2] = a4;
  v17[3] = a5;
  v17[4] = a6;
  v17[5] = a7;
  v17[6] = a8;
  v17[7] = a9;
  (*(a6 + 8))(v19, sub_225BF758C, v17, a2, a3, a5, a8, a9, a4, a6);
}

uint64_t MobileAssetManagerProtocol.retrieveMostRecentAsset<A>(info:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 80) = a8;
  *(v9 + 88) = v8;
  *(v9 + 64) = a6;
  *(v9 + 72) = a7;
  *(v9 + 48) = a4;
  *(v9 + 56) = a5;
  *(v9 + 32) = a1;
  *(v9 + 40) = a3;
  *(v9 + 128) = *a2;
  *(v9 + 96) = *(a2 + 8);
  return MEMORY[0x2822009F8](sub_225BF6220, 0, 0);
}

uint64_t sub_225BF6220()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 24) = v1;
  v2 = swift_allocObject();
  *(v0 + 104) = v2;
  v3 = *(v0 + 56);
  v2[1] = *(v0 + 40);
  v2[2] = v3;
  v2[3] = *(v0 + 72);
  v4 = swift_task_alloc();
  *(v0 + 112) = v4;
  *v4 = v0;
  v4[1] = sub_225BF6330;
  v5 = *(v0 + 72);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 32);
  v9 = *(v0 + 40);

  return MobileAssetManagerProtocol.retrieveMostRecentAsset<A>(info:isFirstMoreRecent:)(v8, v0 + 16, sub_225BF64D0, v2, v9, v6, v7, v5);
}

uint64_t sub_225BF6330()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225BF646C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_225BF646C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MobileAssetManagerProtocol.retrieveMostRecentAssetByCreationDate(assetType:filters:completion:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15[0] = *a1;
  v16 = a2;
  v10 = type metadata accessor for CreationDateSorter(0);
  v11 = sub_225BF7398(&qword_27D7403B0, type metadata accessor for CreationDateSorter, &unk_225CF9F6C);
  v12 = sub_225BF7398(&qword_27D7403B8, type metadata accessor for CreationDateSorter, &unk_225CF9F44);
  v13 = sub_225BF7398(&qword_27D7403C0, type metadata accessor for CreationDateSorter, &unk_225CF9F1C);

  MobileAssetManagerProtocol.retrieveMostRecentAsset<A>(info:completion:)(v15, a3, a4, a5, v10, a6, v11, v12, v13);
}

uint64_t type metadata accessor for CreationDateSorter(uint64_t a1)
{
  result = qword_27D7403C8;
  if (!qword_27D7403C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MobileAssetManagerProtocol.retrieveMostRecentAssetByCreationDate(assetType:filters:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 104) = a5;
  *(v6 + 112) = v5;
  *(v6 + 88) = a3;
  *(v6 + 96) = a4;
  *(v6 + 80) = a1;
  *(v6 + 120) = *a2;
  return MEMORY[0x2822009F8](sub_225BF66BC, 0, 0);
}

uint64_t sub_225BF66BC()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 104);
  v2 = *(v0 + 112);
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);
  *(v0 + 16) = v0;
  *(v0 + 56) = v6;
  *(v0 + 24) = sub_225BF7590;
  v7 = swift_continuation_init();
  sub_225BF6784(v7, v2, v1, v5, v4, v3);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_225BF6784(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a3 & 1;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  MobileAssetManagerProtocol.retrieveMostRecentAssetByCreationDate(assetType:filters:completion:)(&v12, a4, sub_225BF7594, v10, a5, a6);
}

uint64_t sub_225BF6834(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCCEA4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740388, &qword_225CF9FD0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  sub_225BF73E8(a1, &v15 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    swift_allocError();
    *v12 = v11;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    v14 = *(v5 + 32);
    v14(v7, v10, v4);
    v14(*(*(a2 + 64) + 40), v7, v4);
    return swift_continuation_throwingResume();
  }
}

uint64_t MobileAssetManagerProtocol.evictAssets(type:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 88) = a3;
  *(v4 + 96) = v3;
  *(v4 + 80) = a2;
  *(v4 + 104) = *a1;
  return MEMORY[0x2822009F8](sub_225BF6A20, 0, 0);
}

uint64_t sub_225BF6A20()
{
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_225BF7590;
  v5 = swift_continuation_init();
  sub_225BF6ADC(v5, v2, v1, v4, v3);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_225BF6ADC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = a3 & 1;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  (*(a5 + 16))(&v10, sub_225BF73E0, v8, a4, a5);
}

uint64_t sub_225BF6BE8(uint64_t a1)
{
  result = sub_225CCD0B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225BF6C54(void *a1, uint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    swift_allocError();
    *v3 = a1;
    v4 = a1;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_225BF6CF8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = sub_225CCD0B4();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7403E0, &qword_225CF9FB8);
  v17 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CreationDateSorter(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BF72E0();
  sub_225CCFCA4();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    sub_225BF7398(&qword_27D73BE48, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_225CCF6E4();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    sub_225BF7334(v11, v13);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_225BF6FA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_225CCF934();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_225BF702C(uint64_t a1)
{
  v2 = sub_225BF72E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_225BF7068(uint64_t a1)
{
  v2 = sub_225BF72E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_225BF70BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7403F0, &unk_225CF9FC0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_225BF72E0();
  sub_225CCFCE4();
  sub_225CCD0B4();
  sub_225BF7398(&qword_27D73BE18, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_225CCF7E4();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_225BF72E0()
{
  result = qword_27D7403E8;
  if (!qword_27D7403E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7403E8);
  }

  return result;
}

uint64_t sub_225BF7334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CreationDateSorter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_225BF7398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_225BF73E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740388, &qword_225CF9FD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_225BF7488()
{
  result = qword_27D7403F8;
  if (!qword_27D7403F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7403F8);
  }

  return result;
}

unint64_t sub_225BF74E0()
{
  result = qword_27D740400;
  if (!qword_27D740400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740400);
  }

  return result;
}

unint64_t sub_225BF7538()
{
  result = qword_27D740408;
  if (!qword_27D740408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740408);
  }

  return result;
}

unint64_t MobileAssetType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000024;
  }

  else
  {
    return 0xD000000000000023;
  }
}

CoreIDVShared::MobileAssetType_optional __swiftcall MobileAssetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_225BF7634(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000024;
  }

  else
  {
    v3 = 0xD000000000000023;
  }

  if (v2)
  {
    v4 = "ntity-presentment.handoff";
  }

  else
  {
    v4 = "Asset.CoreIDVAssets";
  }

  if (*a2)
  {
    v5 = 0xD000000000000024;
  }

  else
  {
    v5 = 0xD000000000000023;
  }

  if (*a2)
  {
    v6 = "Asset.CoreIDVAssets";
  }

  else
  {
    v6 = "ntity-presentment.handoff";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_225CCF934();
  }

  return v8 & 1;
}

unint64_t sub_225BF76E0()
{
  result = qword_27D740410;
  if (!qword_27D740410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740410);
  }

  return result;
}

uint64_t sub_225BF7734()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225BF77B0(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225BF7818()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225BF7890@<X0>(char *a2@<X8>)
{
  v3 = sub_225CCF5D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_225BF78F0(unint64_t *a1@<X8>)
{
  v2 = "Asset.CoreIDVAssets";
  v3 = 0xD000000000000023;
  if (*v1)
  {
    v3 = 0xD000000000000024;
  }

  else
  {
    v2 = "ntity-presentment.handoff";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

CoreIDVShared::BACManager __swiftcall BACManager.init()()
{
  *v0 = xmmword_225CD9620;
  *(v0 + 16) = 16;
  return result;
}

uint64_t sub_225BF7954(uint64_t a1)
{
  v2[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v2[7] = swift_task_alloc();
  v3 = sub_225CCD954();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = swift_task_alloc();
  v5 = *v1;
  v2[11] = v4;
  v2[12] = v5;

  return MEMORY[0x2822009F8](sub_225BF7A5C, 0, 0);
}

uint64_t sub_225BF7A5C()
{
  v79 = v0;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = off_28105B918;
  v5 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v6));
  v71 = *(v3 + 16);
  v72 = v5;
  v71(v1, &v4[v5], v2);
  v74 = v6;
  os_unfair_lock_unlock(&v4[v6]);
  v7 = sub_225CCD934();
  v8 = sub_225CCED04();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2259A7000, v7, v8, "Getting chip nonce", v9, 2u);
    MEMORY[0x22AA6F950](v9, -1, -1);
  }

  v10 = v0[11];
  v11 = v0[8];
  v12 = v0[9];

  v70 = *(v12 + 8);
  v70(v10, v11);
  if (qword_27D73A0F8 != -1)
  {
    swift_once();
  }

  v13 = PassportCommandAPDU.asData.getter();
  v15 = v14;

  v16 = sub_225C15D34(v13, v15, 1);
  sub_2259BEF00(v16, v17);

  sub_2259BEF00(v13, v15);
  type metadata accessor for PassportCommandAPDU();
  swift_initStaticObject();

  v18 = PassportCommandAPDU.asData.getter();
  v20 = v19;

  v21 = sub_225C15D34(v18, v20, 1);
  v23 = v22;

  result = sub_2259BEF00(v18, v20);
  v42 = v23 >> 62;
  if ((v23 >> 62) <= 1)
  {
    if (!v42)
    {
      v43 = BYTE6(v23);
      goto LABEL_25;
    }

    goto LABEL_23;
  }

  if (v42 != 2)
  {
    if (!v0[12])
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  v45 = v21[2];
  v44 = v21[3];
  v46 = __OFSUB__(v44, v45);
  v43 = v44 - v45;
  if (v46)
  {
    __break(1u);
LABEL_23:
    LODWORD(v43) = HIDWORD(v21) - v21;
    if (__OFSUB__(HIDWORD(v21), v21))
    {
      __break(1u);
      return result;
    }

    v43 = v43;
  }

LABEL_25:
  if (v43 == v0[12])
  {
LABEL_26:
    v47 = v0[10];
    v48 = v0[8];
    os_unfair_lock_lock(&v4[v74]);
    v71(v47, &v4[v72], v48);
    os_unfair_lock_unlock(&v4[v74]);
    v49 = sub_225CCD934();
    v50 = sub_225CCED04();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_2259A7000, v49, v50, "Successfully received chip nonce", v51, 2u);
      MEMORY[0x22AA6F950](v51, -1, -1);
    }

    v52 = v0[10];
    v53 = v0[8];

    v70(v52, v53);

    v54 = v0[1];

    return v54(v21, v23);
  }

LABEL_32:
  v55 = v0[7];
  v56 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v76 = swift_allocError();
  v58 = v57;
  v59 = sub_225CCE954();
  v60 = *(v59 - 8);
  (*(v60 + 56))(v55, 1, 1, v59);
  LODWORD(v59) = (*(v60 + 48))(v55, 1, v59);
  sub_2259DB318(v55);
  if (v59)
  {
    v61 = 858;
  }

  else
  {
    v61 = 23;
  }

  v62 = MEMORY[0x277D84F90];
  v63 = sub_225B2C374(MEMORY[0x277D84F90]);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v77 = v63;
  sub_225B2C4A0(v56, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v77);

  v65 = v77;
  v66 = sub_225B29AA0(0, 1, 1, v62);
  v68 = *(v66 + 2);
  v67 = *(v66 + 3);
  if (v68 >= v67 >> 1)
  {
    v66 = sub_225B29AA0((v67 > 1), v68 + 1, 1, v66);
  }

  *(v66 + 2) = v68 + 1;
  v69 = &v66[56 * v68];
  *(v69 + 4) = 0xD000000000000012;
  *(v69 + 5) = 0x8000000225D254A0;
  *(v69 + 6) = 0xD00000000000001ELL;
  *(v69 + 7) = 0x8000000225D25030;
  *(v69 + 8) = 0xD00000000000001CLL;
  *(v69 + 9) = 0x8000000225D25480;
  *(v69 + 10) = 55;
  *v58 = v61;
  *(v58 + 8) = v66;
  *(v58 + 16) = 0xD000000000000012;
  *(v58 + 24) = 0x8000000225D254A0;
  *(v58 + 32) = v65;
  *(v58 + 40) = 0;
  swift_willThrow();
  sub_2259BEF00(v21, v23);
  v25 = v0[7];
  v77 = 0;
  v78 = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000001ALL, 0x8000000225D25460);
  swift_getErrorValue();
  sub_225CCF904();
  v26 = v78;
  v75 = v77;
  v27 = MEMORY[0x277D84F90];
  v28 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v30 = v29;
  v31 = sub_225CCE954();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v25, 1, 1, v31);
  v73 = (*(v32 + 48))(v25, 1, v31);
  sub_2259DB318(v25);

  v33 = sub_225B2C374(v27);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v77 = v33;
  sub_225B2C4A0(v28, sub_225B2AC40, 0, v34, &v77);

  v35 = v77;
  v36 = sub_225B29AA0(0, 1, 1, v27);
  v38 = *(v36 + 2);
  v37 = *(v36 + 3);
  if (v38 >= v37 >> 1)
  {
    v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
  }

  if (v73)
  {
    v39 = 858;
  }

  else
  {
    v39 = 23;
  }

  *(v36 + 2) = v38 + 1;
  v40 = &v36[56 * v38];
  *(v40 + 4) = v75;
  *(v40 + 5) = v26;
  *(v40 + 6) = 0xD00000000000001ELL;
  *(v40 + 7) = 0x8000000225D25030;
  *(v40 + 8) = 0xD00000000000001CLL;
  *(v40 + 9) = 0x8000000225D25480;
  *(v40 + 10) = 61;
  *v30 = v39;
  *(v30 + 8) = v36;
  *(v30 + 16) = v75;
  *(v30 + 24) = v26;
  *(v30 + 32) = v35;
  *(v30 + 40) = 0;
  swift_willThrow();

  v41 = v0[1];

  return v41();
}

uint64_t sub_225BF8344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 424) = a8;
  *(v9 + 432) = v14;
  *(v9 + 408) = a6;
  *(v9 + 416) = a7;
  *(v9 + 392) = a4;
  *(v9 + 400) = a5;
  *(v9 + 376) = a2;
  *(v9 + 384) = a3;
  *(v9 + 368) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  *(v9 + 440) = swift_task_alloc();
  v10 = sub_225CCE264();
  *(v9 + 448) = v10;
  *(v9 + 456) = *(v10 - 8);
  *(v9 + 464) = swift_task_alloc();
  v11 = sub_225CCE254();
  *(v9 + 472) = v11;
  *(v9 + 480) = *(v11 - 8);
  *(v9 + 488) = swift_task_alloc();
  *(v9 + 496) = *v8;
  *(v9 + 512) = *(v8 + 16);

  return MEMORY[0x2822009F8](sub_225BF84EC, 0, 0);
}

uint64_t *sub_225BF84EC()
{
  v239 = v0;
  v1 = v0;
  v238 = *MEMORY[0x277D85DE8];
  v231 = v0[63];
  v229 = v0[59];
  v223 = v0[58];
  v225 = v0[61];
  v226 = v0[57];
  v3 = v0[53];
  v2 = v0[54];
  v219 = v0[52];
  v221 = v0[56];
  v215 = v0[50];
  v217 = v0[51];
  v212 = v0[48];
  v213 = v0[49];
  v211 = v0[47];
  v4 = randomData(numBytes:)(v0[62]);
  v6 = v5;
  v7 = randomData(numBytes:)(v231);
  v9 = v8;
  v235 = v4;
  v236 = v6;
  v10 = MEMORY[0x277CC9318];
  v11 = MEMORY[0x277CC9300];
  v0[5] = MEMORY[0x277CC9318];
  v0[6] = v11;
  v0[2] = v3;
  v0[3] = v2;
  v12 = __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  v13 = *v12;
  v14 = v12[1];
  v209 = v4;
  v210 = v6;
  sub_2259CB710(v4, v6);
  sub_2259CB710(v3, v2);
  sub_225C0EA34(v13, v14, &v235);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v0[7] = v7;
  v16 = v235;
  v15 = v236;
  v233 = v235;
  v234 = v236;
  v17 = MEMORY[0x277CC9318];
  v1[10] = MEMORY[0x277CC9318];
  v1[11] = MEMORY[0x277CC9300];
  v1[8] = v9;
  v18 = __swift_project_boxed_opaque_existential_1(v1 + 7, v17);
  v19 = *v18;
  v20 = v18[1];
  sub_2259CB710(v16, v15);
  v207 = v7;
  v208 = v9;
  sub_2259CB710(v7, v9);
  sub_225C0EA34(v19, v20, &v233);
  sub_2259BEF00(v16, v15);
  v228 = v1 + 7;
  __swift_destroy_boxed_opaque_existential_0(v1 + 7);
  v22 = v233;
  v21 = v234;
  v235 = v211;
  v236 = v212;

  MEMORY[0x22AA6CE70](v213, v215);

  MEMORY[0x22AA6CE70](v217, v219);

  v23 = sub_2259D25B0(v235, v236);
  v25 = v24;
  sub_225C0175C(&qword_27D73ABF8, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
  sub_225CCDB94();
  sub_2259CB710(v23, v25);
  sub_2259D7024(v23, v25, v223);
  sub_2259BEF00(v23, v25);
  sub_225CCDB84();
  (*(v226 + 8))(v223, v221);
  sub_225C0175C(&qword_27D73AC00, MEMORY[0x277CC5578], MEMORY[0x277CC5570]);
  v26 = sub_225CCE154();
  v28 = sub_2259D732C(v26, v27);

  v29 = sub_2259D8490(v28);
  v31 = v30;

  if ((v231 & 0x8000000000000000) == 0)
  {
    v227 = v25;
    v230 = v22;
    v232 = v21;
    v33 = v1[63];
    v34 = v1[64];
    v35 = v1[62];
    v36 = sub_225CCCF54();
    v38 = v37;
    sub_2259BEF00(v29, v31);
    v235 = v35;
    v236 = v33;
    v237 = v34;
    v39 = v38;
    sub_2259CB710(v36, v38);
    v40 = sub_225C0F394(v36, v38);
    v41 = 0;
    v42 = sub_225BF9A0C(v40);
    v222 = v39;
    v224 = v43;
    v45 = v44;

    v46 = sub_225C02CA4(v230, v232, v42, 0);
    v47 = v1 + 7;
    v216 = v45;
    v53 = v52;
    v54 = MEMORY[0x277CC9318];
    v1[15] = MEMORY[0x277CC9318];
    v1[16] = MEMORY[0x277CC9300];
    v218 = v46;
    v220 = v53;
    v1[12] = v46;
    v1[13] = v53;
    v55 = __swift_project_boxed_opaque_existential_1(v1 + 12, v54);
    v56 = *v55;
    v57 = v55[1];
    v58 = v57 >> 62;
    v214 = v42;
    if ((v57 >> 62) > 1)
    {
      if (v58 != 2)
      {
        v1[85] = 0;
        *(v1 + 674) = 0;
        sub_2259CB710(v218, v220);
        v59 = v1 + 674;
        v60 = v1 + 674;
        goto LABEL_32;
      }

      v61 = *(v56 + 16);
      v62 = *(v56 + 24);
      sub_2259CB710(v218, v220);
      v63 = sub_225CCCA44();
      if (v63)
      {
        v64 = sub_225CCCA74();
        v56 = v61 - v64;
        if (__OFSUB__(v61, v64))
        {
          goto LABEL_172;
        }

        v63 += v56;
      }

      v65 = __OFSUB__(v62, v61);
      v66 = v62 - v61;
      if (!v65)
      {
        goto LABEL_24;
      }

      __break(1u);
    }

    else if (!v58)
    {
      *(v1 + 660) = v56;
      *(v1 + 334) = v57;
      *(v1 + 670) = BYTE2(v57);
      *(v1 + 671) = BYTE3(v57);
      *(v1 + 672) = BYTE4(v57);
      *(v1 + 673) = BYTE5(v57);
      sub_2259CB710(v218, v220);
      v59 = v1 + 660;
      v60 = v1 + BYTE6(v57) + 660;
LABEL_32:
      sub_225B3D3E8(v59, v60, &v235);
      v73 = v235;
      v74 = v236;
      __swift_destroy_boxed_opaque_existential_0(v1 + 12);
      sub_2259CB710(v73, v74);
      v235 = sub_225C0F394(v73, v74);
      sub_2259BE4EC(&unk_2838FFF08);
      v75 = v235;
      v76 = v235[2];
      if ((v76 & 7) != 0)
      {
        while (1)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || (v78 = *(v75 + 3) >> 1, v78 <= v76))
          {
            v75 = sub_2259BE5D8(isUniquelyReferenced_nonNull_native, v76 + 1, 1, v75);
            v78 = *(v75 + 3) >> 1;
          }

          v79 = *(v75 + 2);
          if (v78 <= v79)
          {
            break;
          }

          v75[v79 + 32] = byte_2838FFF50;
          v76 = v79 + 1;
          *(v75 + 2) = v79 + 1;
          if (((v79 + 1) & 7) == 0)
          {
            goto LABEL_38;
          }
        }

        __break(1u);
        goto LABEL_120;
      }

LABEL_38:
      v80 = sub_2259D8490(v75);
      v82 = v81;

      sub_2259BEF00(v73, v74);
      v83 = MEMORY[0x277CC9318];
      v1[20] = MEMORY[0x277CC9318];
      v1[21] = MEMORY[0x277CC9300];
      v1[17] = v80;
      v1[18] = v82;
      v84 = __swift_project_boxed_opaque_existential_1(v1 + 17, v83);
      v85 = *v84;
      v86 = v84[1];
      v87 = v86 >> 62;
      v211 = v80;
      v212 = v82;
      if ((v86 >> 62) > 1)
      {
        if (v87 != 2)
        {
          *(v1 + 652) = 0;
          *(v1 + 646) = 0;
          sub_2259CB710(v80, v82);
          v88 = v1 + 646;
          v89 = v1 + 646;
          goto LABEL_60;
        }

        v90 = v82;
        v91 = v80;
        v92 = *(v85 + 16);
        v93 = *(v85 + 24);
        sub_2259CB710(v91, v90);
        v94 = sub_225CCCA44();
        if (v94)
        {
          v95 = sub_225CCCA74();
          v85 = v92 - v95;
          if (__OFSUB__(v92, v95))
          {
LABEL_175:
            __break(1u);
            goto LABEL_176;
          }

          v94 += v85;
        }

        v65 = __OFSUB__(v93, v92);
        v96 = v93 - v92;
        if (!v65)
        {
          goto LABEL_52;
        }

        __break(1u);
      }

      else if (!v87)
      {
        v1[79] = v85;
        *(v1 + 320) = v86;
        *(v1 + 642) = BYTE2(v86);
        *(v1 + 643) = BYTE3(v86);
        *(v1 + 644) = BYTE4(v86);
        *(v1 + 645) = BYTE5(v86);
        sub_2259CB710(v80, v82);
        v88 = v1 + 79;
        v89 = v1 + BYTE6(v86) + 632;
        goto LABEL_60;
      }

      v97 = v85;
      v98 = v85 >> 32;
      v96 = v98 - v97;
      if (v98 >= v97)
      {
        sub_2259CB710(v211, v212);
        v94 = sub_225CCCA44();
        if (!v94)
        {
LABEL_52:
          v100 = sub_225CCCA64();
          if (v100 >= v96)
          {
            v101 = v96;
          }

          else
          {
            v101 = v100;
          }

          v102 = (v101 + v94);
          if (v94)
          {
            v89 = v102;
          }

          else
          {
            v89 = 0;
          }

          v88 = v94;
LABEL_60:
          sub_225B3D3E8(v88, v89, &v235);
          v103 = v1[64];
          v105 = v235;
          v104 = v236;
          __swift_destroy_boxed_opaque_existential_0(v1 + 17);
          v106 = sub_225C0187C(v105, v104, v224, v216, v103);
          v203 = v107;
          v205 = v106;
          sub_2259BEF00(v105, v104);
          v108 = MEMORY[0x277CC9318];
          v1[25] = MEMORY[0x277CC9318];
          v1[26] = MEMORY[0x277CC9300];
          v1[22] = v209;
          v1[23] = v210;
          result = __swift_project_boxed_opaque_existential_1(v1 + 22, v108);
          v109 = *result;
          v110 = result[1];
          v111 = v110 >> 62;
          if ((v110 >> 62) > 1)
          {
            if (v111 != 2)
            {
              v1[78] = 0;
              *(v1 + 618) = 0;
              sub_2259CB710(v209, v210);
              v112 = v1 + 618;
              v113 = v1 + 618;
              goto LABEL_87;
            }

            v114 = *(v109 + 16);
            v115 = *(v109 + 24);
            sub_2259CB710(v209, v210);
            result = sub_225CCCA44();
            v116 = result;
            if (result)
            {
              result = sub_225CCCA74();
              if (__OFSUB__(v114, result))
              {
LABEL_179:
                __break(1u);
                goto LABEL_180;
              }

              v116 = (v116 + v114 - result);
            }

            v65 = __OFSUB__(v115, v114);
            v117 = v115 - v114;
            if (!v65)
            {
              v118 = sub_225CCCA64();
              if (v118 >= v117)
              {
                v119 = v117;
              }

              else
              {
                v119 = v118;
              }

              v120 = v116 + v119;
              if (v116)
              {
                v113 = v120;
              }

              else
              {
                v113 = 0;
              }

              v112 = v116;
              goto LABEL_87;
            }
          }

          else
          {
            if (!v111)
            {
              *(v1 + 604) = v109;
              *(v1 + 306) = v110;
              *(v1 + 614) = BYTE2(v110);
              *(v1 + 615) = BYTE3(v110);
              *(v1 + 616) = BYTE4(v110);
              *(v1 + 617) = BYTE5(v110);
              sub_2259CB710(v209, v210);
              v112 = v1 + 604;
              v113 = v1 + BYTE6(v110) + 604;
LABEL_87:
              sub_225B3D3E8(v112, v113, &v235);
              v76 = v236;
              v225 = v235;
              __swift_destroy_boxed_opaque_existential_0(v1 + 22);
              v128 = MEMORY[0x277CC9318];
              v1[30] = MEMORY[0x277CC9318];
              v1[31] = MEMORY[0x277CC9300];
              v1[27] = v207;
              v1[28] = v208;
              result = __swift_project_boxed_opaque_existential_1(v1 + 27, v128);
              v129 = *result;
              v130 = result[1];
              v131 = v130 >> 62;
              if ((v130 >> 62) > 1)
              {
                if (v131 != 2)
                {
                  *(v1 + 596) = 0;
                  *(v1 + 590) = 0;
                  sub_2259CB710(v207, v208);
                  v132 = v1 + 590;
                  v133 = v1 + 590;
                  goto LABEL_115;
                }

                v134 = v1;
                v135 = *(v129 + 16);
                v136 = *(v129 + 24);
                sub_2259CB710(v207, v208);
                result = sub_225CCCA44();
                v137 = result;
                if (result)
                {
                  result = sub_225CCCA74();
                  if (__OFSUB__(v135, result))
                  {
LABEL_183:
                    __break(1u);
                    goto LABEL_184;
                  }

                  v137 = (v137 + v135 - result);
                }

                v65 = __OFSUB__(v136, v135);
                v138 = v136 - v135;
                if (!v65)
                {
                  v139 = sub_225CCCA64();
                  if (v139 >= v138)
                  {
                    v140 = v138;
                  }

                  else
                  {
                    v140 = v139;
                  }

                  v141 = v137 + v140;
                  if (v137)
                  {
                    v142 = v141;
                  }

                  else
                  {
                    v142 = 0;
                  }

                  sub_225B3D3E8(v137, v142, &v235);
                  v1 = v134;
                  goto LABEL_113;
                }

LABEL_182:
                __break(1u);
                goto LABEL_183;
              }

              if (!v131)
              {
                v1[72] = v129;
                *(v1 + 292) = v130;
                *(v1 + 586) = BYTE2(v130);
                *(v1 + 587) = BYTE3(v130);
                *(v1 + 588) = BYTE4(v130);
                *(v1 + 589) = BYTE5(v130);
                sub_2259CB710(v207, v208);
                v132 = v1 + 72;
                v133 = v1 + BYTE6(v130) + 576;
LABEL_115:
                sub_225B3D3E8(v132, v133, &v235);
                goto LABEL_116;
              }

              v143 = v1;
              v144 = v129;
              v145 = v129 >> 32;
              v146 = v145 - v144;
              if (v145 >= v144)
              {
                sub_2259CB710(v207, v208);
                v147 = sub_225CCCA44();
                if (!v147)
                {
LABEL_106:
                  v1 = v143;
                  v148 = sub_225CCCA64();
                  if (v148 >= v146)
                  {
                    v149 = v146;
                  }

                  else
                  {
                    v149 = v148;
                  }

                  v150 = &v147[v149];
                  if (v147)
                  {
                    v151 = v150;
                  }

                  else
                  {
                    v151 = 0;
                  }

                  sub_225B3D3E8(v147, v151, &v235);
LABEL_113:
                  v47 = v228;
LABEL_116:
                  v41 = v235;
                  v202 = v236;
                  __swift_destroy_boxed_opaque_existential_0(v47 + 20);
                  v152 = MEMORY[0x277CC9318];
                  v1[35] = MEMORY[0x277CC9318];
                  v1[36] = MEMORY[0x277CC9300];
                  v1[32] = v218;
                  v1[33] = v220;
                  result = __swift_project_boxed_opaque_existential_1(v47 + 25, v152);
                  v78 = *result;
                  v153 = result[1];
                  v79 = v153 >> 62;
                  if ((v153 >> 62) > 1)
                  {
LABEL_120:
                    if (v79 == 2)
                    {
                      v156 = v1;
                      v157 = *(v78 + 16);
                      v158 = *(v78 + 24);
                      sub_2259CB710(v218, v220);
                      result = sub_225CCCA44();
                      v159 = result;
                      if (result)
                      {
                        result = sub_225CCCA74();
                        if (__OFSUB__(v157, result))
                        {
LABEL_187:
                          __break(1u);
                          goto LABEL_188;
                        }

                        v159 = (v159 + v157 - result);
                      }

                      v65 = __OFSUB__(v158, v157);
                      v160 = v158 - v157;
                      if (!v65)
                      {
                        v161 = sub_225CCCA64();
                        if (v161 >= v160)
                        {
                          v162 = v160;
                        }

                        else
                        {
                          v162 = v161;
                        }

                        v163 = v159 + v162;
                        if (v159)
                        {
                          v164 = v163;
                        }

                        else
                        {
                          v164 = 0;
                        }

                        sub_225B3D3E8(v159, v164, &v235);
                        v1 = v156;
                        goto LABEL_144;
                      }

LABEL_186:
                      __break(1u);
                      goto LABEL_187;
                    }

                    v47[64] = 0;
                    *(v47 + 506) = 0;
                    sub_2259CB710(v218, v220);
                    v154 = v47 + 506;
                    v155 = v47 + 506;
LABEL_146:
                    sub_225B3D3E8(v154, v155, &v235);
                    goto LABEL_147;
                  }

                  if (!v79)
                  {
                    *(v1 + 548) = v78;
                    *(v1 + 278) = v153;
                    *(v1 + 558) = BYTE2(v153);
                    *(v1 + 559) = BYTE3(v153);
                    *(v1 + 560) = BYTE4(v153);
                    *(v1 + 561) = BYTE5(v153);
                    sub_2259CB710(v218, v220);
                    v154 = v47 + 492;
                    v155 = v47 + BYTE6(v153) + 492;
                    goto LABEL_146;
                  }

                  v166 = v1;
                  v167 = v78;
                  v168 = v78 >> 32;
                  v169 = v168 - v167;
                  if (v168 >= v167)
                  {
                    sub_2259CB710(v218, v220);
                    v170 = sub_225CCCA44();
                    if (v170)
                    {
                      result = sub_225CCCA74();
                      if (__OFSUB__(v167, result))
                      {
LABEL_188:
                        __break(1u);
                        goto LABEL_189;
                      }

                      v170 += v167 - result;
                    }

                    v1 = v166;
                    v171 = sub_225CCCA64();
                    if (v171 >= v169)
                    {
                      v172 = v169;
                    }

                    else
                    {
                      v172 = v171;
                    }

                    v173 = &v170[v172];
                    if (v170)
                    {
                      v174 = v173;
                    }

                    else
                    {
                      v174 = 0;
                    }

                    sub_225B3D3E8(v170, v174, &v235);
LABEL_144:
                    v47 = v228;
LABEL_147:
                    v176 = v235;
                    v175 = v236;
                    __swift_destroy_boxed_opaque_existential_0(v47 + 25);
                    v177 = MEMORY[0x277CC9318];
                    v1[40] = MEMORY[0x277CC9318];
                    v1[41] = MEMORY[0x277CC9300];
                    v1[37] = v205;
                    v1[38] = v203;
                    result = __swift_project_boxed_opaque_existential_1(v47 + 30, v177);
                    v178 = *result;
                    v179 = result[1];
                    v180 = v179 >> 62;
                    if ((v179 >> 62) > 1)
                    {
                      if (v180 != 2)
                      {
                        v181 = v47 + 478;
                        *(v47 + 484) = 0;
                        *(v47 + 478) = 0;
                        v182 = v47 + 478;
                        goto LABEL_169;
                      }

                      v201 = v175;
                      v204 = v176;
                      v206 = v41;
                      v183 = v1;
                      v184 = *(v178 + 16);
                      v1 = *(v178 + 24);
                      v176 = (v179 & 0x3FFFFFFFFFFFFFFFLL);
                      result = sub_225CCCA44();
                      v175 = result;
                      if (result)
                      {
                        v176 = (v179 & 0x3FFFFFFFFFFFFFFFLL);
                        result = sub_225CCCA74();
                        v178 = v184 - result;
                        if (__OFSUB__(v184, result))
                        {
LABEL_190:
                          __break(1u);
                          goto LABEL_191;
                        }

                        v175 = (v175 + v178);
                      }

                      v65 = __OFSUB__(v1, v184);
                      v185 = v1 - v184;
                      if (!v65)
                      {
                        goto LABEL_161;
                      }

                      __break(1u);
                    }

                    else if (!v180)
                    {
                      v181 = v47 + 58;
                      v1[65] = v178;
                      *(v1 + 264) = v179;
                      *(v1 + 530) = BYTE2(v179);
                      *(v1 + 531) = BYTE3(v179);
                      *(v1 + 532) = BYTE4(v179);
                      *(v1 + 533) = BYTE5(v179);
                      v182 = v47 + BYTE6(v179) + 464;
LABEL_169:
                      sub_225B3D3E8(v181, v182, &v235);
                      v201 = v175;
                      v204 = v176;
                      v206 = v41;
LABEL_170:
                      sub_2259BEF00(v230, v232);
                      sub_2259BEF00(v23, v227);
                      sub_2259BEF00(v211, v212);
                      sub_2259BEF00(v218, v220);
                      sub_2259BEF00(v36, v222);
                      v193 = v1[60];
                      v192 = v1[61];
                      v194 = v1[59];
                      v195 = v1[54];
                      v196 = v1[53];
                      v197 = v1;
                      v198 = v1[46];
                      sub_2259BEF00(v207, v208);
                      sub_2259BEF00(v209, v210);
                      (*(v193 + 8))(v192, v194);
                      v199 = v235;
                      v200 = v236;
                      __swift_destroy_boxed_opaque_existential_0(v228 + 30);
                      sub_2259CB710(v196, v195);
                      *v198 = v196;
                      v198[1] = v195;
                      v198[2] = v225;
                      v198[3] = v76;
                      v198[4] = v206;
                      v198[5] = v202;
                      v198[6] = v214;
                      v198[7] = v224;
                      v198[8] = v216;
                      v198[9] = v204;
                      v198[10] = v201;
                      v198[11] = v199;
                      v198[12] = v200;

                      v50 = v197[1];
                      goto LABEL_7;
                    }

                    v201 = v175;
                    v204 = v176;
                    v206 = v41;
                    v183 = v1;
                    v186 = v178;
                    v187 = v178 >> 32;
                    v185 = v187 - v186;
                    if (v187 >= v186)
                    {
                      v175 = sub_225CCCA44();
                      if (!v175)
                      {
LABEL_161:
                        v188 = sub_225CCCA64();
                        if (v188 >= v185)
                        {
                          v189 = v185;
                        }

                        else
                        {
                          v189 = v188;
                        }

                        v190 = v175 + v189;
                        if (v175)
                        {
                          v191 = v190;
                        }

                        else
                        {
                          v191 = 0;
                        }

                        sub_225B3D3E8(v175, v191, &v235);
                        v1 = v183;
                        goto LABEL_170;
                      }

                      result = sub_225CCCA74();
                      if (!__OFSUB__(v186, result))
                      {
                        v175 = (v175 + v186 - result);
                        goto LABEL_161;
                      }

LABEL_191:
                      __break(1u);
                      return result;
                    }

LABEL_189:
                    __break(1u);
                    goto LABEL_190;
                  }

LABEL_185:
                  __break(1u);
                  goto LABEL_186;
                }

                result = sub_225CCCA74();
                if (!__OFSUB__(v144, result))
                {
                  v147 += v144 - result;
                  goto LABEL_106;
                }

LABEL_184:
                __break(1u);
                goto LABEL_185;
              }

LABEL_181:
              __break(1u);
              goto LABEL_182;
            }

            v121 = v109;
            v122 = v109 >> 32;
            v123 = v122 - v121;
            if (v122 >= v121)
            {
              sub_2259CB710(v209, v210);
              v124 = sub_225CCCA44();
              if (!v124)
              {
LABEL_79:
                v125 = sub_225CCCA64();
                if (v125 >= v123)
                {
                  v126 = v123;
                }

                else
                {
                  v126 = v125;
                }

                v127 = (v126 + v124);
                if (v124)
                {
                  v113 = v127;
                }

                else
                {
                  v113 = 0;
                }

                v112 = v124;
                goto LABEL_87;
              }

              result = sub_225CCCA74();
              if (!__OFSUB__(v121, result))
              {
                v124 += v121 - result;
                goto LABEL_79;
              }

LABEL_180:
              __break(1u);
              goto LABEL_181;
            }

            __break(1u);
          }

          __break(1u);
          goto LABEL_179;
        }

        v99 = sub_225CCCA74();
        if (!__OFSUB__(v97, v99))
        {
          v94 += v97 - v99;
          goto LABEL_52;
        }

LABEL_176:
        __break(1u);
      }

LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    v67 = v56;
    v68 = v56 >> 32;
    v66 = v68 - v67;
    if (v68 >= v67)
    {
      sub_2259CB710(v218, v220);
      v63 = sub_225CCCA44();
      if (!v63)
      {
LABEL_24:
        v70 = sub_225CCCA64();
        if (v70 >= v66)
        {
          v71 = v66;
        }

        else
        {
          v71 = v70;
        }

        v72 = (v71 + v63);
        if (v63)
        {
          v60 = v72;
        }

        else
        {
          v60 = 0;
        }

        v59 = v63;
        goto LABEL_32;
      }

      v69 = sub_225CCCA74();
      if (!__OFSUB__(v67, v69))
      {
        v63 += v67 - v69;
        goto LABEL_24;
      }

LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  __break(1u);
  v165 = sub_225B29AA0((v231 > 1), 0, 1, v32);
  if (v221)
  {
    v48 = 858;
  }

  else
  {
    v48 = 23;
  }

  *(v165 + 2) = 0;
  v49 = &v165[56 * v29];
  *(v49 + 4) = v229;
  *(v49 + 5) = v31;
  *(v49 + 6) = 0xD00000000000001ELL;
  *(v49 + 7) = 0x8000000225D25030;
  *(v49 + 8) = 0xD00000000000002CLL;
  *(v49 + 9) = 0x8000000225D25430;
  *(v49 + 10) = 99;
  *v28 = v48;
  v28[1] = v165;
  v28[2] = v229;
  v28[3] = v31;
  v28[4] = v1;
  v28[5] = 0;
  swift_willThrow();

  v50 = v22[1];
LABEL_7:

  return v50();
}

unint64_t sub_225BF9A0C(uint64_t a1)
{
  v4 = sub_225CCD954();
  v5 = *(v4 - 8);
  v50 = v4;
  v51 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v49 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v42 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = v1[2];
  v52 = a1;

  sub_2259BE4EC(&unk_2838FFE40);
  v13 = v52;
  v52 = v10;
  v53 = v11;
  v54 = v12;
  v14 = sub_2259D8490(v13);
  v16 = v15;

  v17 = sub_225BFF2E4(v14, v16);
  result = sub_2259BEF00(v14, v16);
  v55 = v2;
  if (!v2)
  {
    v19 = v9;
    v45 = v12;
    v46 = v11;
    v20 = v50;
    v47 = v10;
    v48 = v17;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v21 = off_28105B918;
    v22 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v23 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v23));
    v24 = *(v51 + 2);
    v42[1] = v51 + 16;
    v43 = v22;
    v42[0] = v24;
    v24(v19, &v21[v22], v20);
    v44 = v23;
    os_unfair_lock_unlock(&v21[v23]);
    v25 = sub_225CCD934();
    v26 = sub_225CCECF4();
    v27 = os_log_type_enabled(v25, v26);
    v28 = v47;
    if (v27)
    {
      v29 = v47;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2259A7000, v25, v26, "Generated 3DES key", v30, 2u);
      v31 = v30;
      v28 = v29;
      v20 = v50;
      MEMORY[0x22AA6F950](v31, -1, -1);
    }

    v32 = *(v51 + 1);
    v32(v19, v20);
    v52 = a1;

    sub_2259BE4EC(&unk_2838FFE68);
    v33 = v52;
    v52 = v28;
    v53 = v46;
    v54 = v45;
    v34 = sub_2259D8490(v33);
    v36 = v35;

    v37 = v55;
    sub_225BFF9F4(v34, v36);
    v55 = v37;
    if (v37)
    {

      return sub_2259BEF00(v34, v36);
    }

    else
    {
      v51 = v32;
      sub_2259BEF00(v34, v36);
      v38 = v44;
      os_unfair_lock_lock(&v21[v44]);
      (v42[0])(v49, &v21[v43], v20);
      os_unfair_lock_unlock(&v21[v38]);
      v39 = sub_225CCD934();
      v40 = sub_225CCECF4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_2259A7000, v39, v40, "Generated MAC key", v41, 2u);
        MEMORY[0x22AA6F950](v41, -1, -1);
      }

      v51(v49, v20);
      return v48;
    }
  }

  return result;
}

void sub_225BF9E30(uint64_t a1@<X0>, int64_t a2@<X1>, int64_t *a3@<X8>)
{
  v4 = v3;
  v125 = a3;
  v126 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v129 = &v123 - v7;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v131 = a1;

  v14 = 0;
  while (1)
  {
    if (!v11)
    {
      while (1)
      {
        v15 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v15 >= v12)
        {

          v136 = 0;
          v131 = 0;
          v132 = 0;
          v133 = 0xF000000000000000;
          v128 = 0xF000000000000000;
          v130 = 0xF000000000000000;
          v126 = 0;
          v127 = 0xF000000000000000;
          goto LABEL_21;
        }

        v11 = *(v8 + 8 * v15);
        ++v14;
        if (v11)
        {
          v14 = v15;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_10:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v11)));
    v17 = (*(v131 + 48) + v16);
    v19 = *v17;
    v18 = v17[1];
    v20 = (*(v131 + 56) + v16);
    v22 = *v20;
    v21 = v20[1];
    swift_bridgeObjectRetain_n();

    v23 = sub_225C11E24(v19, v18);
    if (v4)
    {

      return;
    }

    v130 = v22;
    v132 = v21;
    v133 = 0;
    v136 = v18;
    if (v23)
    {
      v24 = v23[16];
      v25 = v23[17];
      v26 = v23[18];
      v27 = v23[19];

      if (!v24 && v25 == 130 && (v26 | v27) == 0)
      {
        break;
      }
    }

    v11 &= v11 - 1;

    v4 = v133;
  }

  v12 = v136;

  v29 = v133;
  v13 = sub_225C11E24(v19, v12);
  v11 = v29;
  if (v29)
  {
LABEL_19:

    return;
  }

LABEL_31:
  if (!v13 || (v50 = *(v13 + 24), v49 = *(v13 + 32), v51 = v13, sub_2259CB6FC(v50, v49), , v49 >> 60 == 15))
  {
    v52 = 0;
    v53 = 0;
    v12 = 0;
    v54 = 0xF000000000000000;
    v55 = 0xF000000000000000;
    v56 = 0xF000000000000000;
    goto LABEL_34;
  }

  v56 = sub_225CCCF54();
  v60 = v59;
  v61 = sub_225BFABB8(v56, v59, v126);
  if (v11)
  {
    sub_2259BEF00(v56, v60);
    sub_2259B97A8(v50, v49);
    goto LABEL_19;
  }

  v70 = sub_225C0F394(v61, v62);
  v72 = v70[2];
  if (v72 < 8)
  {
    __break(1u);
    goto LABEL_70;
  }

  v51 = v70;
  v133 = v56;

  sub_2259D2AD0(v73, (v73 + 32), 0, 17);
  v72 = *(v51 + 16);
  if (v72 < 0x10)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v12 = v74;
  v56 = v75;
  v131 = v60;

  sub_2259D2AD0(v76, (v51 + 32), 8, 33);
  v72 = *(v51 + 16);
  if (v72 < 0x20)
  {
LABEL_71:
    __break(1u);
LABEL_72:
    v71 = sub_225B29AA0((v72 > 1), v11, 1, v71);
LABEL_61:
    *(v71 + 2) = v11;
    v110 = &v71[56 * v51];
    *(v110 + 4) = 0xD000000000000023;
    *(v110 + 5) = v50;
    *(v110 + 6) = 0xD00000000000001ELL;
    *(v110 + 7) = v131;
    *(v110 + 8) = 0xD00000000000001BLL;
    *(v110 + 9) = v128;
    *(v110 + 10) = 147;
    *v60 = v8;
    *(v60 + 8) = v71;
    *(v60 + 16) = 0xD000000000000023;
    *(v60 + 24) = v50;
    *(v60 + 32) = v56;
    *(v60 + 40) = 0;
    swift_willThrow();
    sub_2259B97A8(v136, v133);
    sub_2259B97A8(v12, v127);
    v47 = v132;
    v48 = v130;
    goto LABEL_28;
  }

  v53 = v77;
  v55 = v78;
  sub_2259D2AD0(v51, (v51 + 32), 16, 65);
  v52 = v79;
  v54 = v80;
  sub_2259BEF00(v133, v131);
  sub_2259B97A8(v50, v49);
LABEL_34:

  PassportResponseAPDU.init(from:)(v130, v132, &v134);
  v131 = v52;
  v128 = v54;
  if (v11)
  {

    v57 = 0;
    v58 = 0xF000000000000000;
    goto LABEL_47;
  }

  v63 = v135;
  if (v135 >> 60 == 15)
  {
    v57 = 0;
    v58 = 0xF000000000000000;
    goto LABEL_47;
  }

  v64 = v134;
  v65 = sub_225CCCF54();
  v67 = v66;
  v68 = sub_225BFABB8(v65, v66, v126);
  v133 = 0;
  v81 = sub_225C0F394(v68, v69);
  v83 = v81[2];
  if (v83 < 0x20)
  {
    __break(1u);
    goto LABEL_74;
  }

  sub_2259D2AD0(v81, v81 + 4, 16, 65);
  v136 = v84;
  v86 = v85;
  sub_2259BEF00(v65, v67);
  sub_2259B97A8(v64, v63);
  v58 = v86;
  v57 = v136;
  v52 = v131;
  v54 = v128;
LABEL_47:
  v127 = v56;
  if (v56 >> 60 == 15)
  {
    v132 = v53;
    v133 = v58;
    v136 = v57;
    v130 = v55;
    v126 = v12;
LABEL_21:
    v124 = 0x8000000225D250A0;
    v125 = 0x8000000225D25030;
    v30 = MEMORY[0x277D84F90];
    v31 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v33 = v32;
    v34 = sub_225CCE954();
    v35 = *(v34 - 8);
    v36 = v129;
    (*(v35 + 56))(v129, 1, 1, v34);
    LODWORD(v34) = (*(v35 + 48))(v36, 1, v34);
    sub_2259DB318(v36);
    if (v34)
    {
      v37 = 900;
    }

    else
    {
      v37 = 23;
    }

    v38 = sub_225B2C374(v30);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v134 = v38;
    sub_225B2C4A0(v31, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v134);

    v40 = v134;
    v41 = sub_225B29AA0(0, 1, 1, v30);
    v43 = *(v41 + 2);
    v42 = *(v41 + 3);
    if (v43 >= v42 >> 1)
    {
      v41 = sub_225B29AA0((v42 > 1), v43 + 1, 1, v41);
    }

    v44 = v131;
    v45 = v128;
    *(v41 + 2) = v43 + 1;
    v46 = &v41[56 * v43];
    *(v46 + 4) = 0xD000000000000019;
    *(v46 + 5) = 0x8000000225D25080;
    *(v46 + 6) = 0xD00000000000001ELL;
    *(v46 + 7) = v125;
    *(v46 + 8) = 0xD00000000000001BLL;
    *(v46 + 9) = v124;
    *(v46 + 10) = 139;
    *v33 = v37;
    *(v33 + 8) = v41;
    *(v33 + 16) = 0xD000000000000019;
    *(v33 + 24) = 0x8000000225D25080;
    *(v33 + 32) = v40;
    *(v33 + 40) = 0;
    swift_willThrow();
    sub_2259B97A8(v136, v133);
    sub_2259B97A8(v44, v45);
    sub_2259B97A8(v132, v130);
    v47 = v126;
LABEL_27:
    v48 = v127;
LABEL_28:
    sub_2259B97A8(v47, v48);
    return;
  }

  if (v55 >> 60 == 15)
  {
    v136 = v57;
    v132 = 0x8000000225D25030;
    v133 = v58;
    v130 = 0x8000000225D250A0;
    v87 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v89 = v88;
    v90 = sub_225CCE954();
    v91 = *(v90 - 8);
    v92 = v129;
    (*(v91 + 56))(v129, 1, 1, v90);
    LODWORD(v90) = (*(v91 + 48))(v92, 1, v90);
    sub_2259DB318(v92);
    if (v90)
    {
      v93 = 899;
    }

    else
    {
      v93 = 23;
    }

    v94 = MEMORY[0x277D84F90];
    v95 = sub_225B2C374(MEMORY[0x277D84F90]);
    v96 = swift_isUniquelyReferenced_nonNull_native();
    v134 = v95;
    sub_225B2C4A0(v87, sub_225B2AC40, 0, v96, &v134);

    v97 = v134;
    v98 = sub_225B29AA0(0, 1, 1, v94);
    v100 = *(v98 + 2);
    v99 = *(v98 + 3);
    if (v100 >= v99 >> 1)
    {
      v98 = sub_225B29AA0((v99 > 1), v100 + 1, 1, v98);
    }

    *(v98 + 2) = v100 + 1;
    v101 = &v98[56 * v100];
    *(v101 + 4) = 0xD000000000000017;
    *(v101 + 5) = 0x8000000225D250C0;
    *(v101 + 6) = 0xD00000000000001ELL;
    *(v101 + 7) = v132;
    *(v101 + 8) = 0xD00000000000001BLL;
    *(v101 + 9) = v130;
    *(v101 + 10) = 143;
    *v89 = v93;
    *(v89 + 8) = v98;
    *(v89 + 16) = 0xD000000000000017;
    *(v89 + 24) = 0x8000000225D250C0;
    *(v89 + 32) = v97;
    *(v89 + 40) = 0;
    swift_willThrow();
    sub_2259B97A8(v136, v133);
    sub_2259B97A8(v131, v128);
    v47 = v12;
    goto LABEL_27;
  }

  if (v54 >> 60 == 15)
  {
    v132 = v53;
    v133 = v58;
    v136 = v57;
    v130 = v55;
    v50 = 0x8000000225D250E0;
    v131 = 0x8000000225D25030;
    v128 = 0x8000000225D250A0;
    v102 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v60 = v103;
    v104 = sub_225CCE954();
    v105 = *(v104 - 8);
    v106 = v129;
    (*(v105 + 56))(v129, 1, 1, v104);
    LODWORD(v104) = (*(v105 + 48))(v106, 1, v104);
    sub_2259DB318(v106);
    if (v104)
    {
      LOWORD(v8) = 902;
    }

    else
    {
      LOWORD(v8) = 23;
    }

    v107 = MEMORY[0x277D84F90];
    v108 = sub_225B2C374(MEMORY[0x277D84F90]);
    v109 = swift_isUniquelyReferenced_nonNull_native();
    v134 = v108;
    sub_225B2C4A0(v102, sub_225B2AC40, 0, v109, &v134);

    v56 = v134;
    v71 = sub_225B29AA0(0, 1, 1, v107);
    v51 = *(v71 + 2);
    v72 = *(v71 + 3);
    v11 = v51 + 1;
    if (v51 < v72 >> 1)
    {
      goto LABEL_61;
    }

    goto LABEL_72;
  }

  if (v58 >> 60 == 15)
  {
    v130 = v55;
    v132 = v53;
    v126 = v12;
    v53 = 0x8000000225D25110;
    v136 = 0x8000000225D25030;
    v133 = 0x8000000225D250A0;
    v111 = MEMORY[0x277D84F90];
    v112 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v63 = v113;
    v114 = sub_225CCE954();
    v115 = *(v114 - 8);
    v116 = v129;
    (*(v115 + 56))(v129, 1, 1, v114);
    LODWORD(v114) = (*(v115 + 48))(v116, 1, v114);
    sub_2259DB318(v116);
    if (v114)
    {
      LOWORD(v65) = 901;
    }

    else
    {
      LOWORD(v65) = 23;
    }

    v117 = sub_225B2C374(v111);
    v118 = swift_isUniquelyReferenced_nonNull_native();
    v134 = v117;
    sub_225B2C4A0(v112, sub_225B2AC40, 0, v118, &v134);

    v56 = v134;
    v82 = sub_225B29AA0(0, 1, 1, v111);
    v64 = *(v82 + 2);
    v83 = *(v82 + 3);
    v11 = v64 + 1;
    if (v64 < v83 >> 1)
    {
LABEL_67:
      v119 = v126;
      v120 = v130;
      *(v82 + 2) = v11;
      v121 = &v82[56 * v64];
      *(v121 + 4) = 0xD000000000000021;
      *(v121 + 5) = v53;
      *(v121 + 6) = 0xD00000000000001ELL;
      *(v121 + 7) = v136;
      *(v121 + 8) = 0xD00000000000001BLL;
      *(v121 + 9) = v133;
      *(v121 + 10) = 151;
      *v63 = v65;
      *(v63 + 8) = v82;
      *(v63 + 16) = 0xD000000000000021;
      *(v63 + 24) = v53;
      *(v63 + 32) = v56;
      *(v63 + 40) = 0;
      swift_willThrow();
      sub_2259B97A8(v119, v127);
      sub_2259B97A8(v132, v120);
      sub_2259B97A8(v131, v128);
      return;
    }

LABEL_74:
    v82 = sub_225B29AA0((v83 > 1), v11, 1, v82);
    goto LABEL_67;
  }

  v122 = v125;
  *v125 = v12;
  v122[1] = v56;
  v122[2] = v53;
  v122[3] = v55;
  v122[4] = v52;
  v122[5] = v54;
  v122[6] = v57;
  v122[7] = v58;
}

uint64_t sub_225BFABB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v62[5] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v56 - v9;
  v10 = sub_225CCD954();
  v59 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62[3] = MEMORY[0x277CC9318];
  v62[4] = MEMORY[0x277CC9300];
  v62[0] = a1;
  v62[1] = a2;
  v13 = __swift_project_boxed_opaque_existential_1(v62, MEMORY[0x277CC9318]);
  v15 = *v13;
  v16 = v13[1];
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 != 2)
    {
      memset(v60, 0, 14);
      sub_2259CB710(a1, a2);
      v18 = v60;
      v19 = v60;
      goto LABEL_24;
    }

    v21 = *(v15 + 16);
    v20 = *(v15 + 24);
    sub_2259CB710(a1, a2);
    a2 = v16 & 0x3FFFFFFFFFFFFFFFLL;
    v23 = sub_225CCCA44();
    if (v23)
    {
      a2 = v16 & 0x3FFFFFFFFFFFFFFFLL;
      v24 = sub_225CCCA74();
      v22 = v21 - v24;
      if (__OFSUB__(v21, v24))
      {
        __break(1u);
        goto LABEL_40;
      }

      v23 += v22;
    }

    v25 = __OFSUB__(v20, v21);
    v26 = v20 - v21;
    if (!v25)
    {
      v27 = sub_225CCCA64();
      if (v27 >= v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = v27;
      }

LABEL_19:
      v31 = (v28 + v23);
      if (v23)
      {
        v19 = v31;
      }

      else
      {
        v19 = 0;
      }

      v18 = v23;
      goto LABEL_24;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    v14 = sub_225B29AA0((v22 > 1), v26, 1, v14);
LABEL_34:
    *(v14 + 2) = v26;
    v52 = &v14[56 * v12];
    *(v52 + 4) = 0xD000000000000022;
    *(v52 + 5) = v10;
    v53 = v59;
    *(v52 + 6) = 0xD00000000000001ELL;
    *(v52 + 7) = v53;
    v54 = v57;
    *(v52 + 8) = 0xD00000000000002ALL;
    *(v52 + 9) = v54;
    *(v52 + 10) = 202;
    *a2 = v21;
    *(a2 + 8) = v14;
    *(a2 + 16) = 0xD000000000000022;
    *(a2 + 24) = v10;
    *(a2 + 32) = v16;
    *(a2 + 40) = 0;
    swift_willThrow();
    sub_2259BEF00(a3, v4);
    return a3;
  }

  if (v17)
  {
    v26 = v15;
    v22 = v15 >> 32;
    v21 = v22 - v26;
    if (v22 >= v26)
    {
      sub_2259CB710(a1, a2);
      v23 = sub_225CCCA44();
      if (!v23)
      {
        goto LABEL_16;
      }

      v29 = sub_225CCCA74();
      if (!__OFSUB__(v26, v29))
      {
        v23 += v26 - v29;
LABEL_16:
        v30 = sub_225CCCA64();
        if (v30 >= v21)
        {
          v28 = v21;
        }

        else
        {
          v28 = v30;
        }

        goto LABEL_19;
      }

LABEL_40:
      __break(1u);
    }

    __break(1u);
    goto LABEL_37;
  }

  v60[0] = *v13;
  LOWORD(v60[1]) = v16;
  BYTE2(v60[1]) = BYTE2(v16);
  BYTE3(v60[1]) = BYTE3(v16);
  BYTE4(v60[1]) = BYTE4(v16);
  BYTE5(v60[1]) = BYTE5(v16);
  sub_2259CB710(a1, a2);
  v18 = v60;
  v19 = v60 + BYTE6(v16);
LABEL_24:
  sub_225B3D3E8(v18, v19, v61);
  v32 = v61[0];
  v33 = v61[1];
  __swift_destroy_boxed_opaque_existential_0(v62);
  a3 = sub_225C02CA4(v32, v33, a3, 1);
  v4 = v34;
  sub_2259BEF00(v32, v33);
  if (!v3)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v35 = off_28105B918;
    v36 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v37 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v37));
    v38 = v59;
    (*(v59 + 16))(v12, &v35[v36], v10);
    os_unfair_lock_unlock(&v35[v37]);
    v39 = sub_225CCD934();
    v40 = sub_225CCED34();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2259A7000, v39, v40, "Successfully decrypted response", v41, 2u);
      v42 = v41;
      v38 = v59;
      MEMORY[0x22AA6F950](v42, -1, -1);
    }

    (*(v38 + 8))(v12, v10);
    sub_2259CB710(a3, v4);
    v43 = sub_225C0F394(a3, v4)[2];

    if (v43 < 0x20)
    {
      v10 = 0x8000000225D25140;
      v59 = 0x8000000225D25030;
      v56 = 0;
      v57 = 0x8000000225D25170;
      v44 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      a2 = v45;
      v46 = sub_225CCE954();
      v47 = *(v46 - 8);
      v48 = v58;
      (*(v47 + 56))(v58, 1, 1, v46);
      LODWORD(v46) = (*(v47 + 48))(v48, 1, v46);
      sub_2259DB318(v48);
      if (v46)
      {
        LOWORD(v21) = 903;
      }

      else
      {
        LOWORD(v21) = 23;
      }

      v49 = MEMORY[0x277D84F90];
      v50 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62[0] = v50;
      sub_225B2C4A0(v44, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v62);

      v16 = v62[0];
      v14 = sub_225B29AA0(0, 1, 1, v49);
      v12 = *(v14 + 2);
      v22 = *(v14 + 3);
      v26 = (v12 + 1);
      if (v12 < v22 >> 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  return a3;
}

uint64_t sub_225BFB264(uint64_t a1, uint64_t a2)
{
  *(v3 + 152) = a1;
  *(v3 + 160) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = *v2;
  *(v3 + 192) = *(v2 + 16);

  return MEMORY[0x2822009F8](sub_225BFB310, 0, 0);
}

uint64_t sub_225BFB310()
{
  v26 = v0;
  v1 = *(v0 + 152);
  *(v0 + 80) = *(v1 + 72);
  *(v0 + 96) = *(v1 + 88);
  v24 = *(v1 + 72);
  v2 = MEMORY[0x277CC9318];
  v3 = MEMORY[0x277CC9300];
  *(v0 + 40) = MEMORY[0x277CC9318];
  *(v0 + 48) = v3;
  *(v0 + 16) = *(v1 + 88);
  v4 = __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v5 = *v4;
  v6 = v4[1];
  sub_225A0DD9C(v0 + 80, v0 + 112);
  sub_225A0DD9C(v0 + 96, v0 + 128);
  sub_225C0EA34(v5, v6, &v24);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v7 = *(&v24 + 1);
  v23 = v24;
  _s13CoreIDVShared19PassportCommandAPDUC20externalAuthenticateyAC10Foundation4DataVFZ_0(v24, *(&v24 + 1));
  v8 = PassportCommandAPDU.asData.getter();
  v10 = v9;

  v11 = sub_225C15D34(v8, v10, 1);
  v13 = v12;
  v14 = *(v0 + 192);
  v22 = *(v0 + 176);

  result = sub_2259BEF00(v8, v10);
  v24 = v22;
  v25 = v14;
  v16 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v16 != 2)
    {
      v17 = 0;
      goto LABEL_11;
    }

    v19 = *(v23 + 16);
    v18 = *(v23 + 24);
    v17 = v18 - v19;
    if (!__OFSUB__(v18, v19))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v16)
  {
    v17 = BYTE6(v7);
    goto LABEL_11;
  }

  if (__OFSUB__(HIDWORD(v23), v23))
  {
    __break(1u);
    return result;
  }

  v17 = HIDWORD(v23) - v23;
LABEL_11:
  v20 = sub_225BFB7DC(v11, v13, v17, *(v0 + 152));
  sub_2259BEF00(v11, v13);

  sub_2259BEF00(v23, v7);

  v21 = *(v0 + 8);

  return v21(v20);
}

char *sub_225BFB7DC(uint64_t a1, char *a2, void *a3, void *a4)
{
  v282 = a4;
  v9 = sub_225CCD954();
  v279 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v278 = &v255 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v277 = &v255 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v255 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v273 = &v255 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v274 = &v255 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v276 = &v255 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v275 = &v255 - v24;
  MEMORY[0x28223BE20](v23);
  v26 = &v255 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v255 - v28;
  v30 = *v4;
  v280 = v4[1];
  v281 = v30;
  v31 = v4[2];
  sub_2259CB710(a1, a2);
  v32 = sub_225C0F394(a1, a2);
  v35 = v32[2];
  if (v35 != a3)
  {

    v283 = 0;
    v284 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000034, 0x8000000225D252D0);
    v286 = a3;
    v49 = sub_225CCF824();
    v50 = v29;
    MEMORY[0x22AA6CE70](v49);

    MEMORY[0x22AA6CE70](0x766965636572202CLL, 0xEC000000203A6465);
    v286 = v35;
    v51 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v51);

    v35 = v283;
    a3 = v284;
    v280 = 0x8000000225D25310;
    v281 = 0x8000000225D25030;
    v52 = MEMORY[0x277D84F90];
    v53 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v282 = swift_allocError();
    v31 = v54;
    v55 = sub_225CCE954();
    v56 = *(v55 - 8);
    (*(v56 + 56))(v50, 1, 1, v55);
    LODWORD(v55) = (*(v56 + 48))(v50, 1, v55);
    sub_2259DB318(v50);
    if (v55)
    {
      LOWORD(v9) = 859;
    }

    else
    {
      LOWORD(v9) = 23;
    }

    v57 = sub_225B2C374(v52);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v283 = v57;
    sub_225B2C4A0(v53, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v283);

    v29 = v283;
    v33 = sub_225B29AA0(0, 1, 1, v52);
    v26 = *(v33 + 2);
    v34 = *(v33 + 3);
    a2 = (v26 + 1);
    if (v26 < v34 >> 1)
    {
      goto LABEL_9;
    }

    goto LABEL_76;
  }

  if (a3 < 0x28)
  {
    __break(1u);
LABEL_76:
    v33 = sub_225B29AA0((v34 > 1), a2, 1, v33);
LABEL_9:
    *(v33 + 2) = a2;
    v59 = &v33[56 * v26];
    *(v59 + 4) = v35;
    *(v59 + 5) = a3;
    v60 = v281;
    *(v59 + 6) = 0xD00000000000001ELL;
    *(v59 + 7) = v60;
    v61 = v280;
    *(v59 + 8) = 0xD000000000000042;
    *(v59 + 9) = v61;
    *(v59 + 10) = 217;
    *v31 = v9;
    *(v31 + 8) = v33;
    *(v31 + 16) = v35;
    *(v31 + 24) = a3;
    *(v31 + 32) = v29;
    *(v31 + 40) = 0;
    return swift_willThrow();
  }

  v269 = v16;
  v272 = v9;
  v271 = v29;
  v283 = v281;
  v284 = v280;
  *&v285 = v31;
  v36 = v32;
  swift_bridgeObjectRetain_n();
  sub_2259D2AD0(v36, (v36 + 32), 0, 65);
  v38 = v37;
  v40 = v39;
  v41 = swift_unknownObjectRetain();
  sub_2259D2AD0(v41, (v36 + 32), 32, 81);
  v43 = v42;
  v45 = v44;
  v46 = v31;
  v47 = sub_225BFD59C(v38, v40, v42, v44, v282);
  if (v5)
  {
    swift_bridgeObjectRelease_n();
    sub_2259BEF00(v43, v45);
    return sub_2259BEF00(v38, v40);
  }

  v62 = v47;
  v268 = 0;
  v267 = v46;
  v270 = v36;
  sub_2259BEF00(v43, v45);
  sub_2259BEF00(v38, v40);
  v63 = MEMORY[0x277D841D0];
  if ((v62 & 1) == 0)
  {

    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v85 = off_28105B918;
    v86 = *(*off_28105B918 + *v63 + 16);
    v87 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v87));
    v88 = v278;
    v89 = v272;
    (*(v279 + 16))(v278, &v85[v86], v272);
    os_unfair_lock_unlock(&v85[v87]);
    v90 = sub_225CCD934();
    v91 = sub_225CCED04();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_2259A7000, v90, v91, "Computed MAC does not match response MAC", v92, 2u);
      MEMORY[0x22AA6F950](v92, -1, -1);
    }

    (*(v279 + 8))(v88, v89);
    v282 = 0x8000000225D25030;
    v93 = MEMORY[0x277D84F90];
    v94 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v96 = v95;
    v97 = sub_225CCE954();
    v98 = *(v97 - 8);
    v99 = v271;
    (*(v98 + 56))(v271, 1, 1, v97);
    LODWORD(v97) = (*(v98 + 48))(v99, 1, v97);
    sub_2259DB318(v99);
    if (v97)
    {
      v100 = 860;
    }

    else
    {
      v100 = 23;
    }

    v101 = sub_225B2C374(v93);
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v283 = v101;
    sub_225B2C4A0(v94, sub_225B2AC40, 0, v102, &v283);

    v103 = v283;
    v104 = sub_225B29AA0(0, 1, 1, v93);
    v106 = *(v104 + 2);
    v105 = *(v104 + 3);
    if (v106 >= v105 >> 1)
    {
      v104 = sub_225B29AA0((v105 > 1), v106 + 1, 1, v104);
    }

    *(v104 + 2) = v106 + 1;
    v107 = &v104[56 * v106];
    *(v107 + 4) = 0xD000000000000028;
    *(v107 + 5) = 0x8000000225D25360;
    v108 = v282;
    *(v107 + 6) = 0xD00000000000001ELL;
    *(v107 + 7) = v108;
    *(v107 + 8) = 0xD000000000000042;
    *(v107 + 9) = 0x8000000225D25310;
    *(v107 + 10) = 226;
    *v96 = v100;
    *(v96 + 8) = v104;
    *(v96 + 16) = 0xD000000000000028;
    *(v96 + 24) = 0x8000000225D25360;
    *(v96 + 32) = v103;
    *(v96 + 40) = 0;
    swift_willThrow();
    return swift_bridgeObjectRelease_n();
  }

  v64 = v268;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v65 = off_28105B918;
  v66 = *(*off_28105B918 + *v63 + 16);
  v67 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v67));
  v68 = v279;
  v69 = *(v279 + 16);
  v264 = v66;
  v265 = v279 + 16;
  v263 = v69;
  v69(v26, &v65[v66], v272);
  v278 = v65;
  v266 = v67;
  os_unfair_lock_unlock(&v65[v67]);
  v70 = sub_225CCD934();
  v71 = sub_225CCED34();
  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&dword_2259A7000, v70, v71, "Validated response MAC", v72, 2u);
    MEMORY[0x22AA6F950](v72, -1, -1);
  }

  v75 = *(v68 + 8);
  v74 = (v68 + 8);
  v73 = v75;
  v75(v26, v272);
  v76 = v270;
  v77 = swift_unknownObjectRetain();
  sub_2259D2AD0(v77, (v76 + 32), 0, 65);
  v79 = v78;
  v81 = v80;
  v82 = sub_225BFABB8(v78, v80, v282[6]);
  LOWORD(v84) = v64;
  if (v64)
  {

    sub_2259BEF00(v79, v81);
    v281 = 0;
    v74 = v64;
LABEL_62:
    v283 = 0;
    v284 = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD00000000000002BLL, 0x8000000225D25390);
    v282 = v74;
    swift_getErrorValue();
    sub_225CCF904();
    v224 = v283;
    v223 = v284;
    v279 = 0x8000000225D25310;
    v280 = 0x8000000225D25030;
    v225 = MEMORY[0x277D84F90];
    v226 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v228 = v227;
    v229 = sub_225CCE954();
    v230 = *(v229 - 8);
    v231 = v271;
    (*(v230 + 56))(v271, 1, 1, v229);
    LODWORD(v229) = (*(v230 + 48))(v231, 1, v229);
    sub_2259DB318(v231);
    if (v229)
    {
      v232 = 0;
    }

    else
    {
      v232 = 23;
    }

    v233 = sub_225B2C374(v225);
    v234 = swift_isUniquelyReferenced_nonNull_native();
    v283 = v233;
    sub_225B2C4A0(v226, sub_225B2AC40, 0, v234, &v283);

    v235 = v283;
    v236 = sub_225B29AA0(0, 1, 1, v225);
    v238 = *(v236 + 2);
    v237 = *(v236 + 3);
    if (v238 >= v237 >> 1)
    {
      v236 = sub_225B29AA0((v237 > 1), v238 + 1, 1, v236);
    }

    *(v236 + 2) = v238 + 1;
    v239 = &v236[56 * v238];
    *(v239 + 4) = v224;
    *(v239 + 5) = v223;
    v240 = v280;
    *(v239 + 6) = 0xD00000000000001ELL;
    *(v239 + 7) = v240;
    v241 = v279;
    *(v239 + 8) = 0xD000000000000042;
    *(v239 + 9) = v241;
    *(v239 + 10) = 279;
    *v228 = v232;
    *(v228 + 8) = v236;
    *(v228 + 16) = v224;
    *(v228 + 24) = v223;
    *(v228 + 32) = v235;
    *(v228 + 40) = 0;
    swift_willThrow();

    return swift_bridgeObjectRelease_n();
  }

  v109 = v83;
  v260 = 0;
  v262 = v73;
  v279 = v74;
  v110 = v82;
  sub_2259BEF00(v79, v81);
  sub_2259CB710(v110, v109);
  v259 = v110;
  v111 = sub_225C0F394(v110, v109);
  if (v281 < 0)
  {
    __break(1u);
    goto LABEL_78;
  }

  v114 = 2 * v281;
  v113 = &v287;
  v74 = v272;
  v64 = v282;
  if (__OFADD__(v281, v281))
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  if (v114 < v281)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v115 = v111;
  v261 = v109;
  v113 = v111[2];
  v258 = 2 * v281;
  if (v113 < v114)
  {
LABEL_80:
    __break(1u);
LABEL_81:
    v112 = sub_225B29AA0((v113 > 1), v79, 1, v112);
LABEL_51:
    *(v112 + 2) = v79;
    v200 = &v112[56 * v73];
    v201 = 0xD00000000000001BLL;
    *(v200 + 4) = 0xD00000000000001BLL;
    *(v200 + 5) = v64;
    v202 = v282;
    *(v200 + 6) = 0xD00000000000001ELL;
    *(v200 + 7) = v202;
    *(v200 + 8) = 0xD000000000000042;
    *(v200 + 9) = v109;
    v203 = 247;
LABEL_58:
    *(v200 + 10) = v203;
    LOWORD(v81->isa) = v84;
    v81[1].isa = v112;
    v81[2].isa = v201;
    v81[3].isa = v64;
    v81[4].isa = v110;
    v81[5].isa = 0;
    swift_willThrow();
    sub_2259BEF00(v259, v261);
    swift_bridgeObjectRelease_n();
    v281 = 0;
    goto LABEL_62;
  }

  v116 = (2 * v281) | 1;
  v118 = *v282;
  v117 = v282[1];
  v119 = v281;
  swift_bridgeObjectRetain_n();
  sub_2259CB710(v118, v117);
  v257 = v116;
  sub_2259D2AD0(v115, (v115 + 32), 0, v116);
  v121 = v120;
  v123 = v122;
  v124 = sub_2259D8228(v118, v117, v120, v122);
  sub_2259BEF00(v121, v123);
  v268 = v115;
  if (!v124)
  {
    sub_2259BEF00(v118, v117);
    v159 = v278;
    v160 = v266;
    os_unfair_lock_lock(&v278[v266]);
    v161 = v277;
    v162 = v74;
    v263(v277, &v159[v264], v74);
    os_unfair_lock_unlock(&v159[v160]);

    sub_225C017A4(v64, &v283);
    v163 = sub_225CCD934();
    v164 = sub_225CCED04();
    sub_225C00E8C(v64);

    if (os_log_type_enabled(v163, v164))
    {
      v165 = v161;
      v166 = swift_slowAlloc();
      v167 = swift_slowAlloc();
      v283 = v167;
      *v166 = 136643075;
      v168 = sub_225CCCEE4();
      v170 = sub_2259BE198(v168, v169, &v283);

      *(v166 + 4) = v170;
      *(v166 + 12) = 2085;
      v171 = sub_225CCF0B4();
      v74 = v162;
      v173 = sub_2259BE198(v171, v172, &v283);

      *(v166 + 14) = v173;
      _os_log_impl(&dword_2259A7000, v163, v164, "Unexpected value for RND.IC in response expected: %{sensitive}s, found: %{sensitive}s", v166, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA6F950](v167, -1, -1);
      MEMORY[0x22AA6F950](v166, -1, -1);

      v174 = v165;
    }

    else
    {

      v174 = v161;
    }

    v262(v174, v74);
    v64 = 0x8000000225D253C0;
    v282 = 0x8000000225D25030;
    v109 = 0x8000000225D25310;
    v192 = MEMORY[0x277D84F90];
    v193 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v74 = swift_allocError();
    v81 = v194;
    v195 = sub_225CCE954();
    v196 = *(v195 - 8);
    v197 = v271;
    (*(v196 + 56))(v271, 1, 1, v195);
    LODWORD(v195) = (*(v196 + 48))(v197, 1, v195);
    sub_2259DB318(v197);
    if (v195)
    {
      LOWORD(v84) = 860;
    }

    else
    {
      LOWORD(v84) = 23;
    }

    v198 = sub_225B2C374(v192);
    v199 = swift_isUniquelyReferenced_nonNull_native();
    v283 = v198;
    sub_225B2C4A0(v193, sub_225B2AC40, 0, v199, &v283);

    v110 = v283;
    v112 = sub_225B29AA0(0, 1, 1, v192);
    v73 = *(v112 + 2);
    v113 = *(v112 + 3);
    v79 = v73 + 1;
    if (v73 < v113 >> 1)
    {
      goto LABEL_51;
    }

    goto LABEL_81;
  }

  v256 = v118;
  v257 = v117;
  v84 = (2 * v258) | 1;
  v126 = v64[2];
  v125 = v64[3];

  sub_2259CB710(v126, v125);
  sub_2259D2AD0(v115, (v115 + 32), v119, v84);
  v128 = v127;
  v130 = v129;
  v277 = v125;
  v110 = sub_2259D8228(v126, v125, v127, v129);
  sub_2259BEF00(v128, v130);
  if ((v110 & 1) == 0)
  {
    sub_2259BEF00(v126, v277);
    sub_2259BEF00(v256, v257);
    v175 = v278;
    v176 = v266;
    os_unfair_lock_lock(&v278[v266]);
    v177 = v269;
    v178 = v272;
    v263(v269, &v175[v264], v272);
    os_unfair_lock_unlock(&v175[v176]);

    sub_225C017A4(v64, &v283);
    v179 = sub_225CCD934();
    v180 = sub_225CCED04();
    sub_225C00E8C(v64);

    if (os_log_type_enabled(v179, v180))
    {
      v181 = swift_slowAlloc();
      v182 = swift_slowAlloc();
      v283 = v182;
      *v181 = 136643075;
      v183 = sub_225CCCEE4();
      v185 = sub_2259BE198(v183, v184, &v283);

      *(v181 + 4) = v185;
      *(v181 + 12) = 2085;
      v186 = sub_225CCF0B4();
      v188 = v177;
      v189 = sub_2259BE198(v186, v187, &v283);

      *(v181 + 14) = v189;
      _os_log_impl(&dword_2259A7000, v179, v180, "Unexpected value for RND.IFD in response expected: %{sensitive}s, found: %{sensitive}s", v181, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AA6F950](v182, -1, -1);
      MEMORY[0x22AA6F950](v181, -1, -1);

      v190 = v188;
      v191 = v272;
    }

    else
    {

      v190 = v177;
      v191 = v178;
    }

    v262(v190, v191);
    v64 = 0x8000000225D253E0;
    v282 = 0x8000000225D25030;
    v137 = 0x8000000225D25310;
    v204 = MEMORY[0x277D84F90];
    v205 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v74 = swift_allocError();
    v81 = v206;
    v207 = sub_225CCE954();
    v208 = *(v207 - 8);
    v209 = v271;
    (*(v208 + 56))(v271, 1, 1, v207);
    LODWORD(v207) = (*(v208 + 48))(v209, 1, v207);
    sub_2259DB318(v209);
    if (v207)
    {
      LOWORD(v84) = 860;
    }

    else
    {
      LOWORD(v84) = 23;
    }

    v210 = sub_225B2C374(v204);
    v211 = swift_isUniquelyReferenced_nonNull_native();
    v283 = v210;
    sub_225B2C4A0(v205, sub_225B2AC40, 0, v211, &v283);

    v110 = v283;
    v112 = sub_225B29AA0(0, 1, 1, v204);
    v133 = *(v112 + 2);
    v136 = *(v112 + 3);
    v134 = v133 + 1;
    if (v133 < v136 >> 1)
    {
      goto LABEL_57;
    }

    goto LABEL_83;
  }

  v269 = v126;

  v131 = v278;
  v132 = v266;
  os_unfair_lock_lock(&v278[v266]);
  v133 = v275;
  v263(v275, &v131[v264], v272);
  os_unfair_lock_unlock(&v131[v132]);
  v81 = sub_225CCD934();
  v134 = sub_225CCED34();
  if (os_log_type_enabled(v81, v134))
  {
    v110 = swift_slowAlloc();
    *v110 = 0;
    _os_log_impl(&dword_2259A7000, v81, v134, "Verified RND.IC and RND.IFD", v110, 2u);
    MEMORY[0x22AA6F950](v110, -1, -1);
  }

  v135 = v262;
  result = (v262)(v133, v272);
  v74 = v258;
  v136 = v280 + v258;
  v137 = v276;
  if (__OFADD__(v258, v280))
  {
    __break(1u);
LABEL_83:
    v112 = sub_225B29AA0((v136 > 1), v134, 1, v112);
LABEL_57:
    *(v112 + 2) = v134;
    v200 = &v112[56 * v133];
    v201 = 0xD00000000000001CLL;
    *(v200 + 4) = 0xD00000000000001CLL;
    *(v200 + 5) = v64;
    v212 = v282;
    *(v200 + 6) = 0xD00000000000001ELL;
    *(v200 + 7) = v212;
    *(v200 + 8) = 0xD000000000000042;
    *(v200 + 9) = v137;
    v203 = 253;
    goto LABEL_58;
  }

  v138 = v269;
  if (v136 < v258)
  {
    __break(1u);
    goto LABEL_85;
  }

  if (v268[2] < v136)
  {
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v139 = (2 * v136) | 1;
  v140 = v278;
  v141 = v266;
  os_unfair_lock_lock(&v278[v266]);
  v263(v137, &v140[v264], v272);
  os_unfair_lock_unlock(&v140[v141]);
  v142 = sub_225CCD934();
  v143 = sub_225CCED34();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    *v144 = 0;
    _os_log_impl(&dword_2259A7000, v142, v143, "Successfully decrypted response and retrieve kIC", v144, 2u);
    v145 = v144;
    v64 = v282;
    MEMORY[0x22AA6F950](v145, -1, -1);
  }

  v146 = v137;
  v147 = v272;
  v135(v146, v272);
  v148 = v64[4];
  v149 = v64[5];
  v150 = v268;
  v151 = swift_unknownObjectRetain();
  sub_2259D2AD0(v151, v150 + 4, v74, v139);
  v153 = v152;
  v155 = v154;
  v156 = v260;
  v157 = Data.xor(with:)(v152, v154, v148, v149);
  v74 = v156;
  if (v156)
  {
    sub_2259BEF00(v138, v277);
    sub_2259BEF00(v256, v257);
    sub_2259BEF00(v259, v261);
    sub_2259BEF00(v153, v155);
    swift_bridgeObjectRelease_n();
    v281 = 0;
    goto LABEL_62;
  }

  v213 = v157;
  v214 = v158;
  sub_2259BEF00(v153, v155);
  v215 = v278;
  v216 = v266;
  os_unfair_lock_lock(&v278[v266]);
  v217 = v274;
  v263(v274, &v215[v264], v147);
  os_unfair_lock_unlock(&v215[v216]);
  v218 = sub_225CCD934();
  v219 = sub_225CCED34();
  if (os_log_type_enabled(v218, v219))
  {
    v220 = swift_slowAlloc();
    *v220 = 0;
    _os_log_impl(&dword_2259A7000, v218, v219, "Generated seed for session keys", v220, 2u);
    MEMORY[0x22AA6F950](v220, -1, -1);
  }

  v262(v217, v272);
  v283 = v281;
  v284 = v280;
  *&v285 = v267;
  sub_2259CB710(v213, v214);
  v221 = sub_225C0F394(v213, v214);
  v222 = sub_225BF9A0C(v221);
  v281 = v242;
  v282 = v243;
  v280 = v222;

  result = sub_225C0F394(v256, v257);
  if (*(result + 2) < 8uLL)
  {
    goto LABEL_86;
  }

  v244 = result;
  result = sub_225C0F394(v269, v277);
  if (*(result + 2) < 8uLL)
  {
LABEL_87:
    __break(1u);
    return result;
  }

  v283 = v244;
  v284 = v244 + 32;
  v285 = xmmword_225CFA1B0;
  sub_225C01414(result, (result + 32), 4, 0x11uLL);

  sub_2259D2AD0(v283, v284, v285, *(&v285 + 1));
  v246 = v245;
  v248 = v247;
  v249 = v278;
  v250 = v266;
  os_unfair_lock_lock(&v278[v266]);
  v263(v273, &v249[v264], v272);
  os_unfair_lock_unlock(&v249[v250]);
  v251 = sub_225CCD934();
  v252 = sub_225CCED34();
  if (os_log_type_enabled(v251, v252))
  {
    v253 = swift_slowAlloc();
    *v253 = 0;
    _os_log_impl(&dword_2259A7000, v251, v252, "Generated send sequence counter", v253, 2u);
    MEMORY[0x22AA6F950](v253, -1, -1);

    sub_2259BEF00(v213, v214);
    swift_bridgeObjectRelease_n();
    sub_2259BEF00(v259, v261);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    swift_bridgeObjectRelease_n();
    sub_2259BEF00(v259, v261);
    swift_bridgeObjectRelease_n();
    sub_2259BEF00(v213, v214);
  }

  v262(v273, v272);
  type metadata accessor for SecureMessaging();
  result = swift_allocObject();
  v254 = v281;
  *(result + 2) = v280;
  *(result + 3) = v254;
  *(result + 4) = v282;
  *(result + 5) = v246;
  *(result + 6) = v248;
  *(result + 7) = 16;
  return result;
}

unint64_t sub_225BFD59C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v36 = a3;
  v37 = a4;
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v5 + 16);
  sub_2259CB710(a1, a2);
  v38 = sub_225C0F394(a1, a2);
  sub_2259BE4EC(&unk_2838FFF80);
  v15 = v38;
  v16 = v38[2];
  if ((v16 & 7) != 0)
  {
    v17 = &unk_2838FF000;
    while (1)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v19 = *(v15 + 24) >> 1, v19 <= v16))
      {
        v15 = sub_2259BE5D8(isUniquelyReferenced_nonNull_native, v16 + 1, 1, v15);
        v19 = *(v15 + 24) >> 1;
      }

      v20 = *(v15 + 16);
      if (v19 <= v20)
      {
        break;
      }

      *(v15 + v20 + 32) = byte_2838FFFC8;
      v16 = v20 + 1;
      *(v15 + 16) = v20 + 1;
      if (((v20 + 1) & 7) == 0)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_8:
  v16 = sub_2259D8490(v15);
  v17 = v21;

  v22 = sub_225C0187C(v16, v17, *(a5 + 56), *(a5 + 64), v14);
  if (!v6)
  {
    v34 = v22;
    v35 = v23;
    if (qword_28105B910 == -1)
    {
LABEL_11:
      v24 = off_28105B918;
      v25 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
      v26 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((off_28105B918 + v26));
      (*(v11 + 16))(v13, &v24[v25], v10);
      os_unfair_lock_unlock(&v24[v26]);
      v33 = v10;
      v27 = v11;
      v28 = v36;
      v15 = v37;
      sub_2259CB710(v36, v37);
      v29 = v34;
      v30 = v35;
      sub_2259CB710(v34, v35);
      sub_225B414C4(v13, v28, v15, v29, v30);
      sub_2259BEF00(v29, v30);
      sub_2259BEF00(v28, v15);
      (*(v27 + 8))(v13, v33);
      LOBYTE(v15) = sub_2259D8228(v28, v15, v29, v30);
      sub_2259BEF00(v29, v30);
      sub_2259BEF00(v16, v17);
      return v15 & 1;
    }

LABEL_14:
    swift_once();
    goto LABEL_11;
  }

  sub_2259BEF00(v16, v17);
  return v15 & 1;
}

uint64_t sub_225BFD8B4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  sub_225CCF204();

  strcpy(v15, "ResponseMAC: ");
  sub_225B34448(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DCB0, &unk_225CD76A0);
  sub_2259CB764();
  v8 = sub_225CCE384();
  v10 = v9;

  MEMORY[0x22AA6CE70](v8, v10);

  MEMORY[0x22AA6CE70](0x657475706D6F430ALL, 0xEE00203A43414D64);
  sub_225B34448(a3, a4);
  v11 = sub_225CCE384();
  v13 = v12;

  MEMORY[0x22AA6CE70](v11, v13);

  return v15[0];
}

uint64_t BACManager.deriveSessionKeys(with:dob:doe:tagOperations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[33] = a6;
  v8[34] = a7;
  v8[31] = a4;
  v8[32] = a5;
  v8[29] = a2;
  v8[30] = a3;
  v8[28] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v10 = swift_task_alloc();
  v11 = *v7;
  v12 = v7[1];
  v8[35] = v10;
  v8[36] = v11;
  v13 = v7[2];
  v8[37] = v12;
  v8[38] = v13;
  v8[15] = v11;
  v8[16] = v12;
  v8[17] = v13;
  v14 = swift_task_alloc();
  v8[39] = v14;
  *v14 = v8;
  v14[1] = sub_225BFDB34;

  return sub_225BF7954(a7);
}

uint64_t sub_225BFDB34(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  *(v5 + 320) = a1;
  *(v5 + 328) = a2;
  *(v5 + 336) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_225BFE028, 0, 0);
  }

  else
  {
    *(v5 + 168) = *(v5 + 288);
    *(v5 + 184) = *(v5 + 304);
    v6 = swift_task_alloc();
    *(v5 + 344) = v6;
    *v6 = v5;
    v6[1] = sub_225BFDCEC;
    v7 = *(v5 + 256);
    v8 = *(v5 + 264);
    v9 = *(v5 + 240);
    v10 = *(v5 + 248);
    v11 = *(v5 + 224);
    v12 = *(v5 + 232);

    return sub_225BF8344(v5 + 16, v11, v12, v9, v10, v7, v8, a1);
  }
}

uint64_t sub_225BFDCEC()
{
  v2 = *v1;
  *(v2 + 352) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_225BFE2E4, 0, 0);
  }

  else
  {
    *(v2 + 192) = *(v2 + 288);
    *(v2 + 208) = *(v2 + 304);
    v3 = swift_task_alloc();
    *(v2 + 360) = v3;
    *v3 = v2;
    v3[1] = sub_225BFDE74;
    v4 = *(v2 + 272);

    return sub_225BFB264(v2 + 16, v4);
  }
}

uint64_t sub_225BFDE74(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 368) = v1;

  if (v1)
  {
    v5 = sub_225BFE5A8;
  }

  else
  {
    *(v4 + 376) = a1;
    v5 = sub_225BFDF9C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_225BFDF9C()
{
  v1 = v0[40];
  v2 = v0[41];
  sub_225C00E8C((v0 + 2));
  sub_2259BEF00(v1, v2);

  v3 = v0[1];
  v4 = v0[47];

  return v3(v4);
}

uint64_t sub_225BFE028()
{
  v22 = v0;
  v1 = v0[42];
  v2 = v0[35];
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000001FLL, 0x8000000225D25010);
  v20 = v1;
  swift_getErrorValue();
  sub_225CCF904();
  v3 = MEMORY[0x277D84F90];
  v4 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v6 = v5;
  v7 = sub_225CCE954();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v2, 1, 1, v7);
  v9 = (*(v8 + 48))(v2, 1, v7);
  sub_2259DB318(v2);

  v10 = sub_225B2C374(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = v10;
  sub_225B2C4A0(v4, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v21);

  v12 = v21[0];
  v13 = sub_225B29AA0(0, 1, 1, v3);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_225B29AA0((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[56 * v15];
  *(v16 + 4) = 0;
  *(v16 + 5) = 0xE000000000000000;
  if (v9)
  {
    v17 = 0;
  }

  else
  {
    v17 = 23;
  }

  *(v16 + 6) = 0xD00000000000001ELL;
  *(v16 + 7) = 0x8000000225D25030;
  *(v16 + 8) = 0xD00000000000002ELL;
  *&v13[56 * v15 + 72] = 0x8000000225D25050;
  *(v16 + 10) = 293;
  *v6 = v17;
  *(v6 + 8) = v13;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  *(v6 + 32) = v12;
  *(v6 + 40) = 0;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_225BFE2E4()
{
  v22 = v0;
  sub_2259BEF00(v0[40], v0[41]);
  v1 = v0[44];
  v2 = v0[35];
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000001FLL, 0x8000000225D25010);
  v20 = v1;
  swift_getErrorValue();
  sub_225CCF904();
  v3 = MEMORY[0x277D84F90];
  v4 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v6 = v5;
  v7 = sub_225CCE954();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v2, 1, 1, v7);
  v9 = (*(v8 + 48))(v2, 1, v7);
  sub_2259DB318(v2);

  v10 = sub_225B2C374(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21[0] = v10;
  sub_225B2C4A0(v4, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v21);

  v12 = v21[0];
  v13 = sub_225B29AA0(0, 1, 1, v3);
  v15 = *(v13 + 2);
  v14 = *(v13 + 3);
  if (v15 >= v14 >> 1)
  {
    v13 = sub_225B29AA0((v14 > 1), v15 + 1, 1, v13);
  }

  *(v13 + 2) = v15 + 1;
  v16 = &v13[56 * v15];
  *(v16 + 4) = 0;
  *(v16 + 5) = 0xE000000000000000;
  if (v9)
  {
    v17 = 0;
  }

  else
  {
    v17 = 23;
  }

  *(v16 + 6) = 0xD00000000000001ELL;
  *(v16 + 7) = 0x8000000225D25030;
  *(v16 + 8) = 0xD00000000000002ELL;
  *&v13[56 * v15 + 72] = 0x8000000225D25050;
  *(v16 + 10) = 293;
  *v6 = v17;
  *(v6 + 8) = v13;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  *(v6 + 32) = v12;
  *(v6 + 40) = 0;
  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_225BFE5A8()
{
  v24 = v0;
  v1 = v0[40];
  v2 = v0[41];
  sub_225C00E8C((v0 + 2));
  sub_2259BEF00(v1, v2);
  v3 = v0[46];
  v4 = v0[35];
  v23[0] = 0;
  v23[1] = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000001FLL, 0x8000000225D25010);
  v22 = v3;
  swift_getErrorValue();
  sub_225CCF904();
  v5 = MEMORY[0x277D84F90];
  v6 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v8 = v7;
  v9 = sub_225CCE954();
  v10 = *(v9 - 8);
  (*(v10 + 56))(v4, 1, 1, v9);
  v11 = (*(v10 + 48))(v4, 1, v9);
  sub_2259DB318(v4);

  v12 = sub_225B2C374(v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23[0] = v12;
  sub_225B2C4A0(v6, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, v23);

  v14 = v23[0];
  v15 = sub_225B29AA0(0, 1, 1, v5);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_225B29AA0((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[56 * v17];
  *(v18 + 4) = 0;
  *(v18 + 5) = 0xE000000000000000;
  if (v11)
  {
    v19 = 0;
  }

  else
  {
    v19 = 23;
  }

  *(v18 + 6) = 0xD00000000000001ELL;
  *(v18 + 7) = 0x8000000225D25030;
  *(v18 + 8) = 0xD00000000000002ELL;
  *&v15[56 * v17 + 72] = 0x8000000225D25050;
  *(v18 + 10) = 293;
  *v8 = v19;
  *(v8 + 8) = v15;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0xE000000000000000;
  *(v8 + 32) = v14;
  *(v8 + 40) = 0;
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

void *BACManager.deriveSessionKeys(from:kSeed:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v127 = a1;
  v137 = *MEMORY[0x277D85DE8];
  v7 = sub_225CCD954();
  v125 = *(v7 - 8);
  v126 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v106 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v106 - v11;
  v14 = *v3;
  v13 = v3[1];
  v15 = v3[2];
  v130 = *v3;
  v131 = v13;
  *&v132 = v15;
  sub_2259CB710(a2, a3);
  v16 = sub_225C0F394(a2, a3);
  v17 = sub_225BF9A0C(v16);
  if (v4)
  {
  }

  v20 = v18;
  v21 = v19;
  v121 = v12;
  v122 = v15;
  v123 = v13;
  v124 = v14;
  v120 = v10;
  v22 = v17;

  sub_2259BEF00(v20, v21);
  sub_225BF9E30(v127, v22, &v130);
  v25 = v130;
  v24 = v131;
  v26 = v132;
  v115 = *(&v132 + 1);
  v127 = v132;
  v27 = v133;
  v28 = v135;
  v29 = v136;
  v30 = v134;

  sub_2259CB710(v25, v24);
  sub_2259CB710(v26, *(&v26 + 1));
  sub_2259CB710(v27, v30);
  sub_2259CB710(v28, v29);
  v118 = v27;
  sub_2259BEF00(v27, v30);
  sub_2259BEF00(v26, *(&v26 + 1));
  v119 = v25;
  v117 = v24;
  sub_2259BEF00(v25, v24);
  *(&v132 + 1) = MEMORY[0x277CC9318];
  v133 = MEMORY[0x277CC9300];
  v116 = v28;
  v130 = v28;
  v131 = v29;
  v31 = __swift_project_boxed_opaque_existential_1(&v130, MEMORY[0x277CC9318]);
  v32 = *v31;
  v33 = v31[1];
  v34 = v33 >> 62;
  v114 = v29;
  if ((v33 >> 62) <= 1)
  {
    if (!v34)
    {
      v128[0] = v32;
      LOWORD(v128[1]) = v33;
      BYTE2(v128[1]) = BYTE2(v33);
      BYTE3(v128[1]) = BYTE3(v33);
      BYTE4(v128[1]) = BYTE4(v33);
      BYTE5(v128[1]) = BYTE5(v33);
      v35 = v128 + BYTE6(v33);
LABEL_31:
      sub_225B3D3E8(v128, v35, v129);
      v46 = v125;
      v47 = v126;
      goto LABEL_32;
    }

    v113 = v30;
    v48 = v32;
    v49 = v32 >> 32;
    v50 = v49 - v48;
    if (v49 >= v48)
    {
      v51 = sub_225CCCA44();
      if (!v51)
      {
LABEL_23:
        v53 = v126;
        v54 = sub_225CCCA64();
        if (v54 >= v50)
        {
          v55 = v50;
        }

        else
        {
          v55 = v54;
        }

        v56 = &v51[v55];
        if (v51)
        {
          v57 = v56;
        }

        else
        {
          v57 = 0;
        }

        sub_225B3D3E8(v51, v57, v129);
        v46 = v125;
        v30 = v113;
        v47 = v53;
        goto LABEL_32;
      }

      v52 = sub_225CCCA74();
      if (!__OFSUB__(v48, v52))
      {
        v51 += v48 - v52;
        goto LABEL_23;
      }

LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
    }

    __break(1u);
    goto LABEL_43;
  }

  if (v34 != 2)
  {
    memset(v128, 0, 14);
    v35 = v128;
    goto LABEL_31;
  }

  v113 = v30;
  v37 = *(v32 + 16);
  v36 = *(v32 + 24);
  v38 = sub_225CCCA44();
  if (v38)
  {
    v39 = sub_225CCCA74();
    if (__OFSUB__(v37, v39))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v38 += v37 - v39;
  }

  v40 = __OFSUB__(v36, v37);
  v41 = v36 - v37;
  if (v40)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v42 = sub_225CCCA64();
  if (v42 >= v41)
  {
    v43 = v41;
  }

  else
  {
    v43 = v42;
  }

  v44 = &v38[v43];
  if (v38)
  {
    v45 = v44;
  }

  else
  {
    v45 = 0;
  }

  sub_225B3D3E8(v38, v45, v129);
  v46 = v125;
  v47 = v126;
  v30 = v113;
LABEL_32:
  v58 = v129[0];
  v59 = v129[1];
  __swift_destroy_boxed_opaque_existential_0(&v130);
  v60 = Data.xor(with:)(v58, v59, v118, v30);
  v62 = v61;
  sub_2259BEF00(v58, v59);
  v63 = v117;
  v111 = v60;
  v112 = v62;
  v113 = v30;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v64 = off_28105B918;
  v65 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v66 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v66));
  v67 = v46;
  v68 = *(v46 + 16);
  v109 = v65;
  v69 = v121;
  v108 = v46 + 16;
  v107 = v68;
  v68(v121, &v64[v65], v47);
  v110 = v66;
  os_unfair_lock_unlock(&v64[v66]);
  v70 = sub_225CCD934();
  v71 = sub_225CCED34();
  v72 = os_log_type_enabled(v70, v71);
  v73 = v124;
  if (v72)
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&dword_2259A7000, v70, v71, "Generated seed for session keys", v74, 2u);
    v63 = v117;
    MEMORY[0x22AA6F950](v74, -1, -1);
  }

  v76 = v67 + 8;
  v75 = *(v67 + 8);
  v75(v69, v126);
  v130 = v73;
  v131 = v123;
  *&v132 = v122;
  v77 = v111;
  v78 = v112;
  sub_2259CB710(v111, v112);
  v79 = sub_225C0F394(v77, v78);
  v80 = sub_225BF9A0C(v79);
  v121 = v75;
  v81 = v119;
  v82 = v114;
  v124 = v83;
  v125 = v76;
  v122 = v80;
  v123 = v84;

  sub_2259CB710(v81, v63);
  v85 = v115;
  sub_2259CB710(v127, v115);
  v86 = v118;
  v87 = v113;
  sub_2259CB710(v118, v113);
  v88 = v116;
  sub_2259CB710(v116, v82);
  sub_2259BEF00(v88, v82);
  sub_2259BEF00(v86, v87);
  sub_2259BEF00(v81, v63);
  v89 = v85;
  v106 = sub_225C0F394(v127, v85);
  if (v106[2] < 8uLL)
  {
    goto LABEL_46;
  }

  v90 = v117;
  sub_2259CB710(v119, v117);
  v91 = v127;
  sub_2259CB710(v127, v89);
  sub_2259CB710(v86, v87);
  sub_2259CB710(v88, v82);
  v92 = v88;
  v93 = v82;
  sub_2259BEF00(v92, v82);
  sub_2259BEF00(v86, v87);
  sub_2259BEF00(v91, v89);
  v94 = sub_225C0F394(v119, v90);
  if (v94[2] < 8uLL)
  {
    goto LABEL_47;
  }

  v95 = v90;
  v130 = v106;
  v131 = v106 + 4;
  v132 = xmmword_225CFA1B0;
  sub_225C01414(v94, (v94 + 4), 4, 0x11uLL);

  sub_2259D2AD0(v130, v131, v132, *(&v132 + 1));
  v97 = v96;
  v106 = v98;
  v99 = v110;
  os_unfair_lock_lock(&v64[v110]);
  v107(v120, &v64[v109], v126);
  os_unfair_lock_unlock(&v64[v99]);
  v100 = sub_225CCD934();
  v101 = sub_225CCED34();
  if (os_log_type_enabled(v100, v101))
  {
    v102 = v95;
    v103 = swift_slowAlloc();
    *v103 = 0;
    _os_log_impl(&dword_2259A7000, v100, v101, "Generated send sequence counter", v103, 2u);
    v104 = v120;
    MEMORY[0x22AA6F950](v103, -1, -1);

    sub_2259BEF00(v111, v112);
    sub_2259BEF00(v119, v102);
    sub_2259BEF00(v127, v115);
    sub_2259BEF00(v86, v113);
    sub_2259BEF00(v116, v93);
  }

  else
  {
    sub_2259BEF00(v119, v95);
    sub_2259BEF00(v127, v115);
    sub_2259BEF00(v86, v113);
    sub_2259BEF00(v116, v93);
    sub_2259BEF00(v111, v112);

    v104 = v120;
  }

  v121(v104, v126);
  type metadata accessor for SecureMessaging();
  result = swift_allocObject();
  v105 = v123;
  result[2] = v122;
  result[3] = v105;
  result[4] = v124;
  result[5] = v97;
  result[6] = v106;
  result[7] = 16;
  return result;
}

unint64_t sub_225BFF2E4(uint64_t a1, unint64_t a2)
{
  v95 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v84 - v7;
  v9 = *(v2 + 2);
  v91 = *v2;
  v92 = v9;
  v10 = sub_225BFFED4(a1, a2);
  if (!v3)
  {
    v29 = v10;
    v30 = v11;
    v31 = sub_225CCCF54();
    v32 = MEMORY[0x277CC9318];
    v33 = MEMORY[0x277CC9300];
    v93 = MEMORY[0x277CC9318];
    v94 = MEMORY[0x277CC9300];
    *&v91 = v31;
    *(&v91 + 1) = v34;
    v35 = __swift_project_boxed_opaque_existential_1(&v91, MEMORY[0x277CC9318]);
    v36 = *v35;
    v37 = v35[1];
    v38 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      if (v38 != 2)
      {
        memset(v88, 0, 14);
        v39 = v88;
        goto LABEL_31;
      }

      v41 = *(v36 + 16);
      v40 = *(v36 + 24);
      v42 = sub_225CCCA44();
      if (v42)
      {
        v43 = sub_225CCCA74();
        if (__OFSUB__(v41, v43))
        {
LABEL_65:
          __break(1u);
          goto LABEL_66;
        }

        v42 += v41 - v43;
      }

      v44 = __OFSUB__(v40, v41);
      v45 = v40 - v41;
      if (!v44)
      {
        v46 = sub_225CCCA64();
        if (v46 >= v45)
        {
          v47 = v45;
        }

        else
        {
          v47 = v46;
        }

LABEL_26:
        v53 = &v42[v47];
        if (v42)
        {
          v54 = v53;
        }

        else
        {
          v54 = 0;
        }

        sub_225B3D3E8(v42, v54, &v89);
        v33 = MEMORY[0x277CC9300];
        goto LABEL_32;
      }
    }

    else
    {
      if (!v38)
      {
        v88[0] = *v35;
        LOWORD(v88[1]) = v37;
        BYTE2(v88[1]) = BYTE2(v37);
        BYTE3(v88[1]) = BYTE3(v37);
        BYTE4(v88[1]) = BYTE4(v37);
        BYTE5(v88[1]) = BYTE5(v37);
        v39 = v88 + BYTE6(v37);
LABEL_31:
        sub_225B3D3E8(v88, v39, &v89);
LABEL_32:
        v55 = v89;
        v56 = v90;
        __swift_destroy_boxed_opaque_existential_0(&v91);
        v57 = sub_225CCCF54();
        v93 = v32;
        v94 = v33;
        *&v91 = v57;
        *(&v91 + 1) = v58;
        v59 = __swift_project_boxed_opaque_existential_1(&v91, v32);
        v60 = *v59;
        v61 = v59[1];
        v62 = v61 >> 62;
        if ((v61 >> 62) > 1)
        {
          if (v62 != 2)
          {
            memset(v88, 0, 14);
            v64 = v88;
            v63 = v88;
            goto LABEL_59;
          }

          v87 = 0;
          v66 = *(v60 + 16);
          v65 = *(v60 + 24);
          v67 = sub_225CCCA44();
          if (v67)
          {
            v68 = sub_225CCCA74();
            if (__OFSUB__(v66, v68))
            {
LABEL_66:
              __break(1u);
              goto LABEL_67;
            }

            v67 += v66 - v68;
          }

          v44 = __OFSUB__(v65, v66);
          v69 = v65 - v66;
          if (!v44)
          {
            v70 = sub_225CCCA64();
            if (v70 >= v69)
            {
              v71 = v69;
            }

            else
            {
              v71 = v70;
            }

            v72 = (v71 + v67);
            if (v67)
            {
              v63 = v72;
            }

            else
            {
              v63 = 0;
            }

            v64 = v67;
            goto LABEL_59;
          }

          goto LABEL_64;
        }

        if (!v62)
        {
          v88[0] = *v59;
          LOWORD(v88[1]) = v61;
          BYTE2(v88[1]) = BYTE2(v61);
          BYTE3(v88[1]) = BYTE3(v61);
          BYTE4(v88[1]) = BYTE4(v61);
          BYTE5(v88[1]) = BYTE5(v61);
          v63 = v88 + BYTE6(v61);
          v64 = v88;
LABEL_59:
          sub_225B3D3E8(v64, v63, &v89);
          v81 = v89;
          v82 = v90;
          __swift_destroy_boxed_opaque_existential_0(&v91);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD38, &qword_225CD42D8);
          v25 = swift_allocObject();
          *(v25 + 16) = xmmword_225CD73B0;
          *(v25 + 32) = v55;
          *(v25 + 40) = v56;
          *(v25 + 48) = v81;
          *(v25 + 56) = v82;
          *(v25 + 64) = v55;
          *(v25 + 72) = v56;
          sub_2259CB710(v55, v56);
          sub_2259BEF00(v29, v30);
          return v25;
        }

        v87 = 0;
        v73 = v60;
        v74 = v60 >> 32;
        v75 = v74 - v73;
        if (v74 >= v73)
        {
          v76 = sub_225CCCA44();
          if (!v76)
          {
LABEL_51:
            v78 = sub_225CCCA64();
            if (v78 >= v75)
            {
              v79 = v75;
            }

            else
            {
              v79 = v78;
            }

            v80 = (v79 + v76);
            if (v76)
            {
              v63 = v80;
            }

            else
            {
              v63 = 0;
            }

            v64 = v76;
            goto LABEL_59;
          }

          v77 = sub_225CCCA74();
          if (!__OFSUB__(v73, v77))
          {
            v76 += v73 - v77;
            goto LABEL_51;
          }

LABEL_68:
          __break(1u);
        }

LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v48 = v36;
      v49 = v36 >> 32;
      v50 = v49 - v48;
      if (v49 >= v48)
      {
        v42 = sub_225CCCA44();
        if (v42)
        {
          v51 = sub_225CCCA74();
          if (__OFSUB__(v48, v51))
          {
LABEL_67:
            __break(1u);
            goto LABEL_68;
          }

          v42 += v48 - v51;
        }

        v52 = sub_225CCCA64();
        if (v52 >= v50)
        {
          v47 = v50;
        }

        else
        {
          v47 = v52;
        }

        goto LABEL_26;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_63;
  }

  *&v91 = 0;
  *(&v91 + 1) = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000022, 0x8000000225D25220);
  v87 = v3;
  swift_getErrorValue();
  sub_225CCF904();
  v12 = v91;
  v85 = 0x8000000225D25250;
  v86 = 0x8000000225D25030;
  v13 = MEMORY[0x277D84F90];
  v14 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v16 = v15;
  v17 = sub_225CCE954();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v8, 1, 1, v17);
  LODWORD(v17) = (*(v18 + 48))(v8, 1, v17);
  sub_2259DB318(v8);
  if (v17)
  {
    v19 = 0;
  }

  else
  {
    v19 = 23;
  }

  v20 = sub_225B2C374(v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v91 = v20;
  sub_225B2C4A0(v14, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v91);

  v22 = v91;
  v23 = sub_225B29AA0(0, 1, 1, v13);
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_225B29AA0((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v26 = &v23[56 * v25];
  *(v26 + 2) = v12;
  v27 = v86;
  *(v26 + 6) = 0xD00000000000001ELL;
  *(v26 + 7) = v27;
  v28 = v85;
  *(v26 + 8) = 0xD00000000000001BLL;
  *(v26 + 9) = v28;
  *(v26 + 10) = 367;
  *v16 = v19;
  *(v16 + 8) = v23;
  *(v16 + 16) = v12;
  *(v16 + 32) = v22;
  *(v16 + 40) = 0;
  swift_willThrow();

  return v25;
}

uint64_t sub_225BFF9F4(uint64_t a1, unint64_t a2)
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v54 - v7;
  v9 = *(v2 + 2);
  v60 = *v2;
  v61 = v9;
  v10 = sub_225BFFED4(a1, a2);
  if (!v3)
  {
    v31 = v10;
    v32 = v11;
    v33 = sub_225CCCF54();
    v62 = MEMORY[0x277CC9318];
    v63 = MEMORY[0x277CC9300];
    *&v60 = v33;
    *(&v60 + 1) = v34;
    v35 = __swift_project_boxed_opaque_existential_1(&v60, MEMORY[0x277CC9318]);
    v36 = *v35;
    v37 = v35[1];
    v38 = v37 >> 62;
    if ((v37 >> 62) > 1)
    {
      if (v38 != 2)
      {
        memset(v58, 0, 14);
        v40 = v58;
        v39 = v58;
        goto LABEL_30;
      }

      v41 = *(v36 + 16);
      v42 = *(v36 + 24);
      v43 = sub_225CCCA44();
      if (v43)
      {
        v44 = sub_225CCCA74();
        v36 = v41 - v44;
        if (__OFSUB__(v41, v44))
        {
          goto LABEL_33;
        }

        v43 += v36;
      }

      v45 = __OFSUB__(v42, v41);
      v46 = v42 - v41;
      if (!v45)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    else if (!v38)
    {
      v58[0] = *v35;
      LOWORD(v58[1]) = v37;
      BYTE2(v58[1]) = BYTE2(v37);
      BYTE3(v58[1]) = BYTE3(v37);
      BYTE4(v58[1]) = BYTE4(v37);
      BYTE5(v58[1]) = BYTE5(v37);
      v39 = v58 + BYTE6(v37);
      v40 = v58;
LABEL_30:
      sub_225B3D3E8(v40, v39, &v59);
      sub_2259BEF00(v31, v32);
      v19 = v59;
      __swift_destroy_boxed_opaque_existential_0(&v60);
      return v19;
    }

    v47 = v36;
    v48 = v36 >> 32;
    v46 = v48 - v47;
    if (v48 >= v47)
    {
      v43 = sub_225CCCA44();
      if (!v43)
      {
LABEL_22:
        v50 = sub_225CCCA64();
        if (v50 >= v46)
        {
          v51 = v46;
        }

        else
        {
          v51 = v50;
        }

        v52 = (v51 + v43);
        if (v43)
        {
          v39 = v52;
        }

        else
        {
          v39 = 0;
        }

        v40 = v43;
        goto LABEL_30;
      }

      v49 = sub_225CCCA74();
      if (!__OFSUB__(v47, v49))
      {
        v43 += v47 - v49;
        goto LABEL_22;
      }

LABEL_34:
      __break(1u);
    }

    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000001BLL, 0x8000000225D251A0);
  v57 = v3;
  swift_getErrorValue();
  sub_225CCF904();
  v12 = v60;
  v55 = 0x8000000225D251C0;
  v56 = 0x8000000225D25030;
  v13 = MEMORY[0x277D84F90];
  v14 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  swift_allocError();
  v16 = v15;
  v17 = sub_225CCE954();
  v18 = *(v17 - 8);
  (*(v18 + 56))(v8, 1, 1, v17);
  v20 = *(v18 + 48);
  v19 = v18 + 48;
  LODWORD(v17) = v20(v8, 1, v17);
  sub_2259DB318(v8);
  if (v17)
  {
    v21 = 0;
  }

  else
  {
    v21 = 23;
  }

  v22 = sub_225B2C374(v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v60 = v22;
  sub_225B2C4A0(v14, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v60);

  v24 = v60;
  v25 = sub_225B29AA0(0, 1, 1, v13);
  v27 = *(v25 + 2);
  v26 = *(v25 + 3);
  if (v27 >= v26 >> 1)
  {
    v25 = sub_225B29AA0((v26 > 1), v27 + 1, 1, v25);
  }

  *(v25 + 2) = v27 + 1;
  v28 = &v25[56 * v27];
  *(v28 + 2) = v12;
  v29 = v56;
  *(v28 + 6) = 0xD00000000000001ELL;
  *(v28 + 7) = v29;
  v30 = v55;
  *(v28 + 8) = 0xD000000000000014;
  *(v28 + 9) = v30;
  *(v28 + 10) = 379;
  *v16 = v21;
  *(v16 + 8) = v25;
  *(v16 + 16) = v12;
  *(v16 + 32) = v24;
  *(v16 + 40) = 0;
  swift_willThrow();

  return v19;
}

uint64_t sub_225BFFED4(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v57 - v6;
  v8 = sub_225CCE264();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_225CCE254();
  result = MEMORY[0x28223BE20](v12);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v2;
  v18 = v2[1];
  v19 = v2[2];
  v20 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v20)
    {
      if (BYTE6(a2) != 20)
      {
        goto LABEL_11;
      }

LABEL_8:
      v57 = result;
      v58 = v17;
      v25 = v14;
      v59 = v18;
      v60 = v19;
      sub_225C0175C(&qword_27D73ABF8, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
      sub_225CCDB94();
      sub_2259CB710(a1, a2);
      v26 = v61;
      sub_2259D7024(a1, a2, v11);
      v61 = v26;
      sub_2259BEF00(a1, a2);
      sub_225CCDB84();
      (*(v9 + 8))(v11, v8);
      sub_225C0175C(&qword_27D73AC00, MEMORY[0x277CC5578], MEMORY[0x277CC5570]);
      v27 = v57;
      v28 = sub_225CCE154();
      v30 = sub_2259D732C(v28, v29);

      v31 = sub_2259D8490(v30);
      v33 = v32;

      (*(v25 + 8))(v16, v27);
      v62 = v58;
      v63 = v59;
      v64 = v60;
      v34 = sub_225C004D0(v31, v33);
      sub_2259BEF00(v31, v33);
      return v34;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 20)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v20 != 2)
  {
    goto LABEL_11;
  }

  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  v23 = __OFSUB__(v21, v22);
  v24 = v21 - v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v24 == 20)
  {
    goto LABEL_8;
  }

LABEL_11:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_225CCF204();

  v62 = 0xD000000000000015;
  v63 = 0x8000000225D251E0;
  if (v20 > 1)
  {
    v35 = 0;
    if (v20 != 2 || (v37 = *(a1 + 16), v36 = *(a1 + 24), v23 = __OFSUB__(v36, v37), v35 = v36 - v37, !v23))
    {
LABEL_20:
      v65 = v35;
      v38 = sub_225CCF824();
      MEMORY[0x22AA6CE70](v38);

      v40 = v62;
      v39 = v63;
      v59 = 0x8000000225D25200;
      v60 = 0x8000000225D25030;
      v41 = MEMORY[0x277D84F90];
      v42 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v44 = v43;
      v45 = sub_225CCE954();
      v46 = *(v45 - 8);
      (*(v46 + 56))(v7, 1, 1, v45);
      LODWORD(v45) = (*(v46 + 48))(v7, 1, v45);
      sub_2259DB318(v7);
      if (v45)
      {
        v47 = 861;
      }

      else
      {
        v47 = 23;
      }

      v48 = sub_225B2C374(v41);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v48;
      sub_225B2C4A0(v42, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v62);

      v50 = v62;
      v51 = sub_225B29AA0(0, 1, 1, v41);
      v53 = *(v51 + 2);
      v52 = *(v51 + 3);
      v34 = v53 + 1;
      if (v53 >= v52 >> 1)
      {
        v51 = sub_225B29AA0((v52 > 1), v53 + 1, 1, v51);
      }

      *(v51 + 2) = v34;
      v54 = &v51[56 * v53];
      *(v54 + 4) = v40;
      *(v54 + 5) = v39;
      v55 = v60;
      *(v54 + 6) = 0xD00000000000001ELL;
      *(v54 + 7) = v55;
      v56 = v59;
      *(v54 + 8) = 0xD000000000000011;
      *(v54 + 9) = v56;
      *(v54 + 10) = 344;
      *v44 = v47;
      *(v44 + 8) = v51;
      *(v44 + 16) = v40;
      *(v44 + 24) = v39;
      *(v44 + 32) = v50;
      *(v44 + 40) = 0;
      swift_willThrow();
      return v34;
    }

    __break(1u);
  }

  else if (!v20)
  {
    v35 = BYTE6(a2);
    goto LABEL_20;
  }

  LODWORD(v35) = HIDWORD(a1) - a1;
  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    v35 = v35;
    goto LABEL_20;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_225C004D0(uint64_t a1, unint64_t a2)
{
  sub_2259CB710(a1, a2);
  result = sub_225C0F394(a1, a2);
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      v8 = *(v5 + v7 + 32);
      if (!v8)
      {
        goto LABEL_14;
      }

      v9 = 0;
      v10 = *(v5 + v7 + 32);
      do
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
          goto LABEL_21;
        }

        v10 &= v10 - 1;
        ++v9;
      }

      while (v10);
      if (v11)
      {
        goto LABEL_6;
      }

      if (*(v5 + v7 + 32))
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_225C0EC14(v5);
          v5 = result;
        }

        *(v5 + v7 + 32) = v8 & 0xFE;
      }

      else
      {
LABEL_14:
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_225C0EC14(v5);
          v5 = result;
        }

        if (v7 >= *(v5 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(v5 + 32 + v7) + 1;
        if ((v12 >> 8))
        {
          goto LABEL_23;
        }

        *(v5 + 32 + v7) = v12;
      }

LABEL_6:
      if (++v7 == v6)
      {
        goto LABEL_19;
      }
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_19:
    v13 = sub_2259D8490(v5);

    return v13;
  }

  return result;
}

void *sub_225C0060C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18, &unk_225CD3AF0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_225C00680(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD08, &unk_225CE40A0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_225C00704(uint64_t result)
{
  v2 = result;
  v3 = v1[3];
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    goto LABEL_10;
  }

  v5 = *v1;
  result = swift_isUniquelyReferenced_nonNull();
  *v1 = v5;
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v6 = v1[2];
  v7 = v4 - v6;
  if (__OFSUB__(v4, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v8 = v1[1];
  sub_225CCFA44();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + v4 != v9 + v10 + 32)
  {

    goto LABEL_9;
  }

  v11 = *(v9 + 24);

  v12 = (v11 >> 1) - v10;
  v13 = __OFADD__(v7, v12);
  v7 += v12;
  if (!v13)
  {
LABEL_9:
    if (v7 >= v2)
    {
LABEL_17:
      *v1 = v5;
      return result;
    }

LABEL_10:
    v14 = v1[2];
    if (__OFSUB__(v4, v14))
    {
      __break(1u);
    }

    else
    {
      result = sub_225C0060C(v4 - v14, v2);
      if (v4 >= v14)
      {
        v5 = result;
        v15 = result + 32;
        result = memcpy((result + 32), (v1[1] + v14), v4 - v14);
        if (!__OFSUB__(0, v14))
        {
          v16 = *(v5 + 16);
          v13 = __OFADD__(v14, v16);
          v17 = v14 + v16;
          if (!v13)
          {
            if (v17 >= v14)
            {
              if ((v17 & 0x8000000000000000) == 0)
              {
                v18 = (2 * v17) | 1;
                result = swift_unknownObjectRelease();
                v1[1] = v15 - v14;
                v1[2] = v14;
                v1[3] = v18;
                goto LABEL_17;
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_225C0087C(uint64_t *a1, size_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t))
{
  v6 = v4[2];
  v7 = v4[3] >> 1;
  result = v7 - v6;
  if (__OFSUB__(v7, v6))
  {
    __break(1u);
    goto LABEL_32;
  }

  v10 = *a1;
  v11 = *(*a1 + 16);
  v12 = __OFSUB__(v11, a2);
  v13 = v11 - a2;
  if (v12)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v15 = v13 - a3;
  if (__OFSUB__(v13, a3))
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v16 = result - a2;
  if (__OFSUB__(result, a2))
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v12 = __OFSUB__(v16, v15);
  v17 = v16 - v15;
  if (v12)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v33 = v17;
  v18 = (v10 + 32);
  v19 = v10 + 32 + a2;
  __dst = (v19 + a3);
  result = sub_225C00D2C(result);
  if (result)
  {
    v20 = result;
    v31 = v10;
    v21 = v4[2];
    v22 = (v4[1] + v21);
    v23 = &v22[a2];
    if (v18 != v22 || v18 >= v23)
    {
      memmove(v18, v22, a2);
    }

    a4(v19, a3);
    if (__dst != (v23 + v33) || __dst >= v23 + v33 + v15)
    {
      memmove(__dst, (v23 + v33), v15);
    }

    *(v20 + 16) = 0;

    v10 = v31;
  }

  else
  {
    v21 = v4[2];
    v25 = v21 + a2;
    if (__OFADD__(v21, a2))
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v25 < v21)
    {
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (__OFSUB__(v25, v21))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v26 = v4[1];
    memcpy((v10 + 32), (v26 + v21), a2);
    result = a4(&v18[a2], a3);
    v27 = v25 + v33;
    if (__OFADD__(v25, v33))
    {
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v28 = v4[3] >> 1;
    if (v28 < v27)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (__OFSUB__(v28, v27))
    {
LABEL_45:
      __break(1u);
      return result;
    }

    memcpy(__dst, (v26 + v27), v28 - v27);
  }

  result = swift_unknownObjectRelease();
  if (__OFSUB__(0, v21))
  {
    goto LABEL_36;
  }

  v29 = *(v10 + 16);
  v12 = __OFADD__(v21, v29);
  v30 = v21 + v29;
  if (v12)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v30 < v21)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v30 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  *v4 = v10;
  v4[1] = &v18[-v21];
  v4[2] = v21;
  v4[3] = (2 * v30) | 1;
}

uint64_t sub_225C00A98(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = v3 >> 1;
  v5 = __OFSUB__(v3 >> 1, v2);
  v6 = (v3 >> 1) - v2;
  if (v5)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = result - v6;
  if (__OFSUB__(result, v6))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!v7)
  {
    return result;
  }

  sub_225CCFA44();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v8 = *(result + 16);
  v5 = __OFADD__(v8, v7);
  v9 = v8 + v7;
  if (v5)
  {
    goto LABEL_13;
  }

  *(result + 16) = v9;

  v10 = v4 + v7;
  if (__OFADD__(v4, v7))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 0)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  *(v1 + 24) = v3 & 1 | (2 * v10);
  return result;
}

void *sub_225C00B50(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = (a6 >> 1) - a5;
  if (__OFSUB__(a6 >> 1, a5))
  {
    __break(1u);
LABEL_28:
    if (v8 >= v7)
    {
      goto LABEL_21;
    }

LABEL_18:
    if (v8 + 0x4000000000000000 >= 0)
    {
      v8 *= 2;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_31;
  }

  v7 = a2;
  v6 = result;
  if ((a6 & 1) == 0)
  {
    goto LABEL_28;
  }

  sub_225CCFA44();
  swift_unknownObjectRetain();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {
    swift_unknownObjectRelease();
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  v13 = a4 + a5 + v8;
  if (v13 == v11 + v12 + 32)
  {
    v15 = *(v11 + 24);

    v16 = (v15 >> 1) - v12;
    v14 = v8 + v16;
    if (__OFADD__(v8, v16))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }
  }

  else
  {

    v14 = v8;
  }

  swift_unknownObjectRetain();
  v17 = swift_dynamicCastClass();
  if (v14 < v7)
  {
    if (!v17)
    {
      swift_unknownObjectRelease();
      v17 = MEMORY[0x277D84F90];
    }

    v18 = *(v17 + 16);
    if (v13 == v17 + v18 + 32)
    {
      v20 = *(v17 + 24);

      v21 = (v20 >> 1) - v18;
      v22 = __OFADD__(v8, v21);
      v8 += v21;
      if (v22)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
    }

    goto LABEL_18;
  }

  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v19 = *(v17 + 16);
  if (v13 == v17 + v19 + 32)
  {
    v23 = *(v17 + 24);

    v24 = (v23 >> 1) - v19;
    v22 = __OFADD__(v8, v24);
    v8 += v24;
    if (!v22)
    {
      goto LABEL_21;
    }

LABEL_33:
    __break(1u);
    return result;
  }

LABEL_21:
  if (v8 <= v7)
  {
    v25 = v7;
  }

  else
  {
    v25 = v8;
  }

  return sub_225C0060C(v6, v25);
}

uint64_t sub_225C00D2C(uint64_t a1)
{
  result = swift_isUniquelyReferenced_nonNull();
  if (!result)
  {
    return 0;
  }

  v6 = v1[2];
  v5 = v1[3];
  v7 = (v5 >> 1) - v6;
  if (__OFSUB__(v5 >> 1, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8 = v1[1];
  if ((v5 & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_225CCFA44();
  swift_unknownObjectRetain();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    swift_unknownObjectRelease();
    v9 = MEMORY[0x277D84F90];
  }

  v10 = *(v9 + 16);
  if (v8 + v6 + v7 != v9 + v10 + 32)
  {

LABEL_8:
    v11 = v7;
    goto LABEL_10;
  }

  v12 = *(v9 + 24);

  v13 = (v12 >> 1) - v10;
  v14 = __OFADD__(v7, v13);
  v11 = v7 + v13;
  if (v14)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  if (v11 < a1)
  {
    return 0;
  }

  sub_225CCFA44();
  swift_unknownObjectRetain();
  result = swift_dynamicCastClass();
  if (!result)
  {
    swift_unknownObjectRelease();
    result = MEMORY[0x277D84F90];
  }

  v15 = v8 + v6 - result - 32;
  v14 = __OFADD__(v7, v15);
  v5 = v7 + v15;
  if (v14)
  {
    goto LABEL_18;
  }

  v4 = *(result + 16);
  if (v5 < v4)
  {
LABEL_19:
    v16 = result;
    sub_225C0107C(v5, v4, 0);
    return v16;
  }

  return result;
}

uint64_t sub_225C00EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for ImageQualityMetrics();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_225CCF144();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_225CCF144();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_225C00FBC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_225C0107C(char *result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result += v6 + a3 + 32;
  v10 = (v6 + 32 + a2);
  if (result != v10 || result >= &v10[v9])
  {
    v12 = a3;
    result = memmove(result, v10, v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

void *sub_225C01120(void *result)
{
  v2 = *(v1 + 24);
  v33 = *(v1 + 16);
  v3 = ((v2 >> 1) - v33);
  if (__OFSUB__(v2 >> 1, v33))
  {
    goto LABEL_49;
  }

  v4 = result[4];
  v31 = result[3] >> 1;
  if (v4 == v31)
  {
    return result;
  }

  v30 = result[2];
  if (v4 < v30 || v4 >= v31)
  {
    goto LABEL_50;
  }

  v6 = v1;
  v7 = v4 + 1;
  v8 = *(result[1] + v4);
  v29 = result[1];
  while (!__OFADD__(v3, 1))
  {
    v34 = sub_225C00B50(v3, (v3 + 1), *v6, v6[1], v33, v2);
    v9 = sub_225C00D10();
    v10 = v6;
    sub_225C0087C(&v34, v3, 0, v9);

    v11 = v6[3];
    v12 = v11 >> 1;
    v33 = v6[2];
    v13 = (v11 >> 1) - v33;
    if (__OFSUB__(v11 >> 1, v33))
    {
      goto LABEL_44;
    }

    v14 = v6[1];
    v32 = v6[3];
    if ((v11 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_225CCFA44();
    swift_unknownObjectRetain();
    v15 = swift_dynamicCastClass();
    if (!v15)
    {
      swift_unknownObjectRelease();
      v15 = MEMORY[0x277D84F90];
    }

    v16 = *(v15 + 16);
    if (v14 + v33 + v13 != v15 + v16 + 32)
    {

LABEL_19:
      v17 = v13;
      goto LABEL_22;
    }

    v18 = *(v15 + 24);

    v19 = (v18 >> 1) - v16;
    v20 = __OFADD__(v13, v19);
    v17 = (v13 + v19);
    if (v20)
    {
      goto LABEL_48;
    }

    v6 = v10;
LABEL_22:
    if (v3 >= v17)
    {
      v22 = 0;
    }

    else
    {
      v3[v14 + v33] = v8;
      v21 = v3 + 1;
      if (v7 != v31)
      {
        v23 = 0;
        while (1)
        {
          if (v7 < v30)
          {
            goto LABEL_42;
          }

          v24 = v23;
          if (v7 + v23 >= v31)
          {
            goto LABEL_42;
          }

          v8 = *(v29 + v7 + v23);
          if (!(v21 - v17 + v23))
          {
            break;
          }

          v3[v33 + 1 + v14 + v23++] = v8;
          if (!(v7 - v31 + v24 + 1))
          {
            v8 = 0;
            v3 = &v21[v23];
            v7 = v31;
LABEL_33:
            v22 = &v21[v24] < v17;
            goto LABEL_34;
          }
        }

        v7 += v23 + 1;
        v3 = v17;
        goto LABEL_33;
      }

      v8 = 0;
      v22 = 1;
      v7 = v31;
      ++v3;
    }

LABEL_34:
    v2 = v32;
    v25 = &v3[-v13];
    if (__OFSUB__(v3, v13))
    {
      goto LABEL_45;
    }

    if (v25)
    {
      sub_225CCFA44();
      swift_unknownObjectRetain();
      result = swift_dynamicCastClass();
      if (!result)
      {
        swift_unknownObjectRelease();
        result = MEMORY[0x277D84F90];
      }

      v26 = result[2];
      v20 = __OFADD__(v26, v25);
      v27 = &v25[v26];
      if (v20)
      {
        goto LABEL_46;
      }

      result[2] = v27;

      v28 = &v25[v12];
      if (__OFADD__(v12, v25))
      {
        goto LABEL_47;
      }

      if ((v28 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        break;
      }

      v2 = v32 & 1 | (2 * v28);
      v6[3] = v2;
    }

    if (v22)
    {
      return result;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

void *sub_225C01414(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v30 = result;
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_35;
  }

  v8 = v4[2];
  v7 = v4[3];
  v9 = (v7 >> 1) - v8;
  if (__OFSUB__(v7 >> 1, v8))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((v7 & 1) == 0)
  {
LABEL_8:
    v15 = v9;
    goto LABEL_10;
  }

  v12 = v4[1];
  sub_225CCFA44();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {
    swift_unknownObjectRelease();
    v13 = MEMORY[0x277D84F90];
  }

  v14 = *(v13 + 16);
  if (v12 + v8 + v9 != v13 + v14 + 32)
  {

    goto LABEL_8;
  }

  v16 = *(v13 + 24);

  v17 = (v16 >> 1) - v14;
  v18 = __OFADD__(v9, v17);
  v15 = v9 + v17;
  if (v18)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

LABEL_10:
  result = (v9 + v6);
  if (__OFADD__(v9, v6))
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v15 < result)
  {
    if (v15 + 0x4000000000000000 < 0)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v19 = (2 * v15);
    if (v19 > result)
    {
      result = v19;
    }
  }

  result = sub_225C00704(result);
  v21 = v4[2];
  v20 = v4[3];
  v22 = (v20 >> 1) - v21;
  if (__OFSUB__(v20 >> 1, v21))
  {
    goto LABEL_37;
  }

  v23 = (v4[1] + (v20 >> 1));
  if ((v20 & 1) == 0)
  {
LABEL_21:
    v26 = v22;
    goto LABEL_23;
  }

  sub_225CCFA44();
  swift_unknownObjectRetain();
  v24 = swift_dynamicCastClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
    v24 = MEMORY[0x277D84F90];
  }

  v25 = *(v24 + 16);
  if (v23 != (v24 + v25 + 32))
  {

    goto LABEL_21;
  }

  v27 = *(v24 + 24);

  v28 = (v27 >> 1) - v25;
  v18 = __OFADD__(v22, v28);
  v26 = v22 + v28;
  if (v18)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_23:
  v29 = v26 - v22;
  if (__OFSUB__(v26, v22))
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      v6 = 0;
      v5 = a3;
      goto LABEL_31;
    }

    goto LABEL_39;
  }

  if (v29 < v6)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  result = memcpy(v23, (a2 + a3), v6);
  if (v6 > 0)
  {
    result = (v22 + v6);
    if (__OFADD__(v22, v6))
    {
LABEL_44:
      __break(1u);
      return result;
    }

    result = sub_225C00A98(result);
  }

LABEL_31:
  if (v6 == v29)
  {
    v32[0] = v30;
    v32[1] = a2;
    v32[2] = a3;
    v32[3] = a4;
    v32[4] = v5;
    return sub_225C01120(v32);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BACManager(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for BACManager(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

uint64_t sub_225C016AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225C016F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225C0175C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t IDVNFTag.init(internalTag:readerSession:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_225C01804(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      sub_2259CB710(v4, *v2);
      sub_225CCCFC4();
      result = sub_2259BEF00(v4, v3);
      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t sub_225C0187C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v8 = v6;
  v75 = a1;
  v76 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v68 - v13;
  v74 = sub_225CCCFE4();
  v15 = *(v74 - 8);
  result = MEMORY[0x28223BE20](v74);
  v73 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v19 == 2)
    {
      v21 = *(a3 + 16);
      v20 = *(a3 + 24);
      v22 = __OFSUB__(v20, v21);
      v23 = v20 - v21;
      if (v22)
      {
        goto LABEL_78;
      }

      if (v23 != a5)
      {
        goto LABEL_15;
      }
    }

    else if (a5)
    {
LABEL_15:
      a3 = 0x8000000225D25570;
      v76 = 0x8000000225D25590;
      v77 = 0x8000000225D254E0;
      v26 = MEMORY[0x277D84F90];
      v27 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      swift_allocError();
      v8 = v28;
      v29 = sub_225CCE954();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v14, 1, 1, v29);
      LODWORD(v29) = (*(v30 + 48))(v14, 1, v29);
      sub_2259DB318(v14);
      if (v29)
      {
        LOWORD(a4) = 861;
      }

      else
      {
        LOWORD(a4) = 23;
      }

      v31 = sub_225B2C374(v26);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v31;
      sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v78);

      v7 = v78;
      v17 = sub_225B29AA0(0, 1, 1, v26);
      a5 = *(v17 + 2);
      v33 = *(v17 + 3);
      v5 = a5 + 1;
      if (a5 >= v33 >> 1)
      {
LABEL_75:
        v17 = sub_225B29AA0((v33 > 1), v5, 1, v17);
      }

      *(v17 + 2) = v5;
      v34 = &v17[56 * a5];
      v35 = 0xD000000000000014;
      *(v34 + 4) = 0xD000000000000014;
      *(v34 + 5) = a3;
      *(v34 + 6) = 0xD000000000000028;
      *(v34 + 7) = v77;
      *(v34 + 8) = 0xD000000000000012;
      *(v34 + 9) = v76;
      v36 = 100;
      goto LABEL_31;
    }
  }

  else if (v19)
  {
    v23 = (HIDWORD(a3) - a3);
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_79;
    }

    if (v23 != a5)
    {
      goto LABEL_15;
    }
  }

  else if (BYTE6(a4) != a5)
  {
    goto LABEL_15;
  }

  v24 = v76 >> 62;
  if ((v76 >> 62) > 1)
  {
    if (v24 != 2)
    {
      v45 = v6;
      v5 = 0;
      goto LABEL_41;
    }

    v37 = *(v75 + 16);
    v25 = *(v75 + 24);
    v22 = __OFSUB__(v25, v37);
    LOBYTE(v25) = v25 - v37;
    if (!v22)
    {
      goto LABEL_25;
    }

    __break(1u);
  }

  else if (!v24)
  {
    v25 = HIWORD(v76);
    goto LABEL_25;
  }

  LOBYTE(v25) = BYTE4(v75) - v75;
  if (__OFSUB__(HIDWORD(v75), v75))
  {
    __break(1u);
    goto LABEL_83;
  }

LABEL_25:
  if ((v25 & 7) != 0)
  {
    a3 = 0x8000000225D255B0;
    v76 = 0x8000000225D25590;
    v77 = 0x8000000225D254E0;
    v38 = MEMORY[0x277D84F90];
    v39 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v8 = v40;
    v41 = sub_225CCE954();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v14, 1, 1, v41);
    LODWORD(v41) = (*(v42 + 48))(v14, 1, v41);
    sub_2259DB318(v14);
    if (v41)
    {
      LOWORD(a4) = 862;
    }

    else
    {
      LOWORD(a4) = 23;
    }

    v43 = sub_225B2C374(v38);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v78 = v43;
    sub_225B2C4A0(v39, sub_225B2AC40, 0, v44, &v78);

    v7 = v78;
    v17 = sub_225B29AA0(0, 1, 1, v38);
    a5 = *(v17 + 2);
    v23 = *(v17 + 3);
    v5 = a5 + 1;
    if (a5 >= v23 >> 1)
    {
      goto LABEL_81;
    }

    goto LABEL_30;
  }

  if (v24 == 2)
  {
    v47 = *(v75 + 16);
    v46 = *(v75 + 24);
    v5 = v46 - v47;
    if (!__OFSUB__(v46, v47))
    {
      v45 = v6;
      goto LABEL_41;
    }

LABEL_84:
    __break(1u);
    return result;
  }

  if (v24 != 1)
  {
    v45 = v6;
    v5 = BYTE6(v76);
    goto LABEL_41;
  }

  if (__OFSUB__(HIDWORD(v75), v75))
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v45 = v6;
  v5 = HIDWORD(v75) - v75;
LABEL_41:
  v8 = v5 + 7;
  if (v5 >= 0)
  {
    v48 = v5;
  }

  else
  {
    v48 = v5 + 7;
  }

  v49 = sub_225CCCF54();
  v71 = sub_225C0F394(v49, v50);
  v51 = sub_225CCCF54();
  v53 = sub_225C0F394(v51, v52);
  if (v5 < -7)
  {
    goto LABEL_80;
  }

  v69 = v53;
  if (v8 < 0xF)
  {
    a5 = &unk_2838FFEB8;
    v8 = v45;
    v54 = v71;
LABEL_67:
    v66 = sub_225C0330C(a5, v69, qword_2838FFEE0, 2, 1);

    if (!v8)
    {
      v67 = sub_225C0330C(v66, v54, qword_2838FFEE0, 2, 0);

      v8 = sub_2259D8490(v67);
    }

    return v8;
  }

  v7 = v48 >> 3;
  v70 = (v15 + 8);
  v33 = &unk_2838FFEB8;
  v5 = 0x7FFFFFFFFFFFFFF8;
  a3 = 8;
  v8 = v45;
  v54 = v71;
  while (1)
  {
    if (!v7)
    {
      __break(1u);
LABEL_73:
      __break(1u);
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (!v5)
    {
      goto LABEL_73;
    }

    v77 = v33;
    v55 = sub_225CCCF54();
    a5 = v55;
    a4 = v56;
    v57 = v56 >> 62;
    if ((v56 >> 62) > 1)
    {
      break;
    }

    if (v57)
    {
      v23 = (HIDWORD(v55) - v55);
      if (__OFSUB__(HIDWORD(v55), v55))
      {
        goto LABEL_77;
      }

      v58 = v23;
      if (!v23)
      {
LABEL_61:
        sub_2259BEF00(v55, v56);
        v60 = MEMORY[0x277D84F90];
        goto LABEL_65;
      }
    }

    else
    {
      v58 = BYTE6(v56);
      if (!BYTE6(v56))
      {
        goto LABEL_61;
      }
    }

LABEL_57:
    v72 = v8;
    if (v58 < 1)
    {
      v60 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73AA18, &unk_225CD3AF0);
      v60 = swift_allocObject();
      v61 = _swift_stdlib_malloc_size(v60);
      v60[2] = v58;
      v60[3] = 2 * v61 - 64;
    }

    v62 = v73;
    v63 = sub_225CCCEF4();
    sub_2259BEF00(a5, a4);
    (*v70)(v62, v74);
    v64 = v63 == v58;
    v54 = v71;
    v8 = v72;
    if (!v64)
    {
      goto LABEL_74;
    }

LABEL_65:
    v65 = sub_225C0330C(v60, v54, v77, 0, 0);
    if (v8)
    {

      return v8;
    }

    a5 = v65;

    v5 -= 8;
    a3 += 8;
    v33 = a5;
    if (!--v7)
    {
      goto LABEL_67;
    }
  }

  if (v57 != 2)
  {
    goto LABEL_61;
  }

  v59 = *(v55 + 16);
  v23 = *(v55 + 24);
  v58 = v23 - v59;
  if (!__OFSUB__(v23, v59))
  {
    if (!v58)
    {
      goto LABEL_61;
    }

    goto LABEL_57;
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  v17 = sub_225B29AA0((v23 > 1), v5, 1, v17);
LABEL_30:
  *(v17 + 2) = v5;
  v34 = &v17[56 * a5];
  v35 = 0xD000000000000027;
  *(v34 + 4) = 0xD000000000000027;
  *(v34 + 5) = a3;
  *(v34 + 6) = 0xD000000000000028;
  *(v34 + 7) = v77;
  *(v34 + 8) = 0xD000000000000012;
  *(v34 + 9) = v76;
  v36 = 104;
LABEL_31:
  *(v34 + 10) = v36;
  *v8 = a4;
  *(v8 + 8) = v17;
  *(v8 + 16) = v35;
  *(v8 + 24) = a3;
  *(v8 + 32) = v7;
  *(v8 + 40) = 0;
  swift_willThrow();
  return v8;
}

unint64_t sub_225C0217C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_225C0219C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_225CCCA94();
      swift_allocObject();
      sub_225CCCA54();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_225CCCF14();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void *sub_225C0223C(void *result)
{
  if (result[2] != 3)
  {
    goto LABEL_15;
  }

  v1 = result[4];
  v2 = result[5];
  v3 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v3)
    {
      v4 = result;
      sub_2259BEF00(result[4], v2);
      result = v4;
      if (BYTE6(v2) != 8)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    v8 = __OFSUB__(HIDWORD(v1), v1);
    v10 = HIDWORD(v1) - v1;
    if (v8)
    {
      goto LABEL_34;
    }

    if (v10 == 8)
    {
      goto LABEL_12;
    }

LABEL_15:
    v13 = 0;
    return (v13 & 1);
  }

  if (v3 != 2)
  {
    goto LABEL_27;
  }

  v7 = v1 + 16;
  v5 = *(v1 + 16);
  v6 = *(v7 + 8);
  v8 = __OFSUB__(v6, v5);
  v9 = v6 - v5;
  if (v8)
  {
    goto LABEL_35;
  }

  if (v9 != 8)
  {
    goto LABEL_15;
  }

LABEL_12:
  v1 = result[6];
  v2 = result[7];
  v11 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v11 == 3)
    {
      goto LABEL_27;
    }

    v16 = v1 + 16;
    v14 = *(v1 + 16);
    v15 = *(v16 + 8);
    v8 = __OFSUB__(v15, v14);
    v17 = v15 - v14;
    if (v8)
    {
      goto LABEL_35;
    }

    if (v17 != 8)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  if (!v11)
  {
    v12 = result;
    sub_2259BEF00(result[6], v2);
    result = v12;
    if (BYTE6(v2) != 8)
    {
      goto LABEL_15;
    }

    goto LABEL_20;
  }

  v8 = __OFSUB__(HIDWORD(v1), v1);
  v19 = HIDWORD(v1) - v1;
  if (v8)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v19 != 8)
  {
    goto LABEL_15;
  }

LABEL_20:
  v1 = result[8];
  v2 = result[9];
  v18 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v18)
    {
      sub_2259BEF00(result[8], v2);
      v1 = BYTE6(v2);
      goto LABEL_31;
    }

    v8 = __OFSUB__(HIDWORD(v1), v1);
    LODWORD(v1) = HIDWORD(v1) - v1;
    if (!v8)
    {
      v1 = v1;
      goto LABEL_31;
    }

    goto LABEL_34;
  }

  if (v18 == 3)
  {
LABEL_27:
    sub_2259BEF00(v1, v2);
    v13 = 0;
    return (v13 & 1);
  }

  v22 = v1 + 16;
  v20 = *(v1 + 16);
  v21 = *(v22 + 8);
  v8 = __OFSUB__(v21, v20);
  v1 = v21 - v20;
  if (!v8)
  {
LABEL_31:
    if (v1 == 8)
    {
      v13 = -1;
    }

    else
    {
      v13 = 0;
    }

    return (v13 & 1);
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_225C023C0(uint64_t *a1, size_t a2, uint64_t *a3, uint64_t a4, unint64_t a5, size_t a6, size_t *a7)
{
  dataOutAvailable = a6;
  v11 = a2;
  v12 = a1;
  v88 = *MEMORY[0x277D85DE8];
  v14 = *a1;
  v13 = a1[1];
  v15 = v13 >> 62;
  if ((v13 >> 62) > 1)
  {
    if (v15 != 2)
    {
      *(&dataOut + 7) = 0;
      *&dataOut = 0;
      v34 = *a3;
      v17 = a3[1];
      sub_2259CB710(a4, a5);
      sub_2259CB710(a4, a5);
      sub_2259CB710(v34, v17);
      v18 = sub_225C0F394(v34, v17);
      v35 = *a3;
      v21 = a3[1];
      v36 = v21 >> 62;
      if ((v21 >> 62) <= 1)
      {
        if (v36)
        {
          v42 = __OFSUB__(HIDWORD(v35), v35);
          v44 = HIDWORD(v35) - v35;
          if (v42)
          {
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          v22 = v44;
        }

        else
        {
          v22 = BYTE6(v21);
        }

        goto LABEL_36;
      }

      goto LABEL_24;
    }

    sub_2259CB710(a4, a5);
    sub_2259CB710(a4, a5);
    sub_2259CB710(v14, v13);
    sub_2259BEF00(v14, v13);
    *&dataOut = v14;
    *(&dataOut + 1) = v13 & 0x3FFFFFFFFFFFFFFFLL;
    v85 = v12;
    *v12 = xmmword_225CD4150;
    sub_2259BEF00(0, 0xC000000000000000);
    sub_225CCCEB4();
    v18 = *(&dataOut + 1);
    v23 = *(dataOut + 16);
    sub_2259CB710(a4, a5);
    result = sub_225CCCA44();
    if (!result)
    {
      __break(1u);
      goto LABEL_113;
    }

    v25 = result;
    v26 = sub_225CCCA74();
    if (!__OFSUB__(v23, v26))
    {
      v81 = v23 - v26;
      v82 = v25;
      v84 = dataOut;
      LOBYTE(v17) = v11;
      v11 = dataOutAvailable;
      sub_225CCCA64();
      v12 = *a3;
      v27 = a3[1];
      sub_2259CB710(*a3, v27);
      v14 = sub_225C0F394(v12, v27);
      v28 = *a3;
      v29 = a3[1];
      v21 = v29 >> 62;
      if ((v29 >> 62) <= 1)
      {
        dataOutAvailable = v11;
        if (v21)
        {
          v42 = __OFSUB__(HIDWORD(v28), v28);
          v57 = HIDWORD(v28) - v28;
          if (v42)
          {
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }

          v30 = v57;
        }

        else
        {
          v30 = BYTE6(v29);
        }

        goto LABEL_62;
      }

LABEL_28:
      dataOutAvailable = v11;
      if (v21 == 2)
      {
        v41 = v28 + 16;
        v19 = *(v28 + 16);
        v40 = *(v41 + 8);
        v30 = v40 - v19;
        if (__OFSUB__(v40, v19))
        {
          __break(1u);
LABEL_32:
          v42 = __OFSUB__(HIDWORD(v19), v19);
          v43 = HIDWORD(v19) - v19;
          if (!v42)
          {
            v22 = v43;
            goto LABEL_44;
          }

          goto LABEL_104;
        }
      }

      else
      {
        v30 = 0;
      }

LABEL_62:
      sub_2259CB710(a4, a5);
      v58 = sub_225C0F394(a4, a5);
      v59 = a5 >> 62;
      if ((a5 >> 62) > 1)
      {
        if (v59 != 2)
        {
          v60 = 0;
          goto LABEL_72;
        }

        v62 = *(a4 + 16);
        v61 = *(a4 + 24);
        v60 = v61 - v62;
        if (!__OFSUB__(v61, v62))
        {
          goto LABEL_72;
        }

        __break(1u);
      }

      else if (!v59)
      {
        v60 = BYTE6(a5);
        goto LABEL_72;
      }

      if (__OFSUB__(HIDWORD(a4), a4))
      {
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      v60 = HIDWORD(a4) - a4;
LABEL_72:
      v54 = CCCrypt(v17 & 1, 2u, 0, (v14 + 32), v30, 0, v58 + 4, v60, (v82 + v81), dataOutAvailable, a7);

      sub_2259BEF00(a4, a5);
      sub_2259BEF00(a4, a5);
      sub_2259BEF00(a4, a5);
      *v85 = v84;
      v85[1] = v18 | 0x8000000000000000;
      return v54;
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v84 = a6;
  v85 = a1;
  if (!v15)
  {
    LODWORD(v82) = a2;
    dataOutAvailable = v14 >> 24;
    v81 = HIWORD(v13);
    sub_2259CB710(a4, a5);
    sub_2259CB710(a4, a5);
    sub_2259BEF00(v14, v13);
    *&dataOut = v14;
    WORD4(dataOut) = v13;
    BYTE10(dataOut) = BYTE2(v13);
    BYTE11(dataOut) = BYTE3(v13);
    BYTE12(dataOut) = BYTE4(v13);
    BYTE13(dataOut) = BYTE5(v13);
    BYTE14(dataOut) = BYTE6(v13);
    v16 = *a3;
    v17 = a3[1];
    sub_2259CB710(*a3, v17);
    v18 = sub_225C0F394(v16, v17);
    v19 = *a3;
    v20 = a3[1];
    v21 = v20 >> 62;
    if ((v20 >> 62) <= 1)
    {
      v12 = v84;
      LOBYTE(v11) = v82;
      if (!v21)
      {
        v22 = BYTE6(v20);
LABEL_44:
        sub_2259CB710(a4, a5);
        v45 = sub_225C0F394(a4, a5);
        v50 = a5 >> 62;
        if ((a5 >> 62) <= 1)
        {
          if (!v50)
          {
            v51 = BYTE6(a5);
LABEL_58:
            v54 = CCCrypt(v11 & 1, 2u, 0, (v18 + 32), v22, 0, v45 + 4, v51, &dataOut, v12, a7);

            v55 = dataOut;
            v56 = DWORD2(dataOut) | ((WORD6(dataOut) | (BYTE14(dataOut) << 16)) << 32);
            sub_2259BEF00(a4, a5);
            sub_2259BEF00(a4, a5);
            *v85 = v55;
            v85[1] = v56;
            return v54;
          }

          if (!__OFSUB__(HIDWORD(a4), a4))
          {
            v51 = HIDWORD(a4) - a4;
            goto LABEL_58;
          }

          goto LABEL_107;
        }

        if (v50 != 2)
        {
          v51 = 0;
          goto LABEL_58;
        }

        v53 = *(a4 + 16);
        v52 = *(a4 + 24);
        v51 = v52 - v53;
        if (!__OFSUB__(v52, v53))
        {
          goto LABEL_58;
        }

        __break(1u);
LABEL_51:
        if (!__OFSUB__(HIDWORD(a4), a4))
        {
          v47 = HIDWORD(a4) - a4;
          goto LABEL_54;
        }

LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
        goto LABEL_108;
      }

      goto LABEL_32;
    }

    v12 = v84;
    v11 = v82;
    if (v21 != 2)
    {
LABEL_43:
      v22 = 0;
      goto LABEL_44;
    }

    v37 = v19 + 16;
    v35 = *(v19 + 16);
    v36 = *(v37 + 8);
    v22 = v36 - v35;
    if (!__OFSUB__(v36, v35))
    {
      goto LABEL_44;
    }

    __break(1u);
LABEL_24:
    v22 = 0;
    if (v36 != 2 || (v39 = v35 + 16, v28 = *(v35 + 16), v38 = *(v39 + 8), v22 = v38 - v28, !__OFSUB__(v38, v28)))
    {
LABEL_36:
      sub_2259CB710(a4, a5);
      v45 = sub_225C0F394(a4, a5);
      v46 = a5 >> 62;
      if ((a5 >> 62) <= 1)
      {
        if (!v46)
        {
          v47 = BYTE6(a5);
LABEL_54:
          v54 = CCCrypt(v11 & 1, 2u, 0, (v18 + 32), v22, 0, v45 + 4, v47, &dataOut, dataOutAvailable, a7);

          sub_2259BEF00(a4, a5);
          sub_2259BEF00(a4, a5);
          return v54;
        }

        goto LABEL_51;
      }

      if (v46 != 2)
      {
        v47 = 0;
        goto LABEL_54;
      }

      v49 = *(a4 + 16);
      v48 = *(a4 + 24);
      v47 = v48 - v49;
      if (!__OFSUB__(v48, v49))
      {
        goto LABEL_54;
      }

      __break(1u);
      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_28;
  }

  v31 = v13 & 0x3FFFFFFFFFFFFFFFLL;
  sub_2259CB710(a4, a5);
  sub_2259CB710(a4, a5);
  sub_2259CB710(v14, v13);
  sub_2259BEF00(v14, v13);
  *v12 = xmmword_225CD4150;
  sub_2259BEF00(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v14 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    if (v33 < v14)
    {
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
      goto LABEL_105;
    }

    if (sub_225CCCA44() && __OFSUB__(v14, sub_225CCCA74()))
    {
      goto LABEL_103;
    }

    sub_225CCCA94();
    swift_allocObject();
    v63 = sub_225CCCA24();

    v31 = v63;
    v33 = v14 >> 32;
  }

  if (v33 < v14)
  {
    goto LABEL_100;
  }

  sub_2259CB710(a4, a5);

  result = sub_225CCCA44();
  if (result)
  {
    v64 = result;
    v65 = sub_225CCCA74();
    if (!__OFSUB__(v14, v65))
    {
      v83 = v14 - v65;
      sub_225CCCA64();
      v66 = *a3;
      v67 = a3[1];
      sub_2259CB710(*a3, v67);
      v68 = sub_225C0F394(v66, v67);
      v69 = *a3;
      v70 = a3[1];
      v71 = v70 >> 62;
      if ((v70 >> 62) > 1)
      {
        if (v71 != 2)
        {
          v72 = 0;
          goto LABEL_87;
        }

        v74 = v69 + 16;
        v69 = *(v69 + 16);
        v73 = *(v74 + 8);
        v72 = v73 - v69;
        if (!__OFSUB__(v73, v69))
        {
LABEL_87:
          sub_2259CB710(a4, a5);
          v76 = sub_225C0F394(a4, a5);
          v77 = a5 >> 62;
          if ((a5 >> 62) > 1)
          {
            if (v77 != 2)
            {
              v78 = 0;
              goto LABEL_97;
            }

            v80 = *(a4 + 16);
            v79 = *(a4 + 24);
            v78 = v79 - v80;
            if (!__OFSUB__(v79, v80))
            {
              goto LABEL_97;
            }

            __break(1u);
          }

          else if (!v77)
          {
            v78 = BYTE6(a5);
            goto LABEL_97;
          }

          if (__OFSUB__(HIDWORD(a4), a4))
          {
            goto LABEL_111;
          }

          v78 = HIDWORD(a4) - a4;
LABEL_97:
          v54 = CCCrypt(v11 & 1, 2u, 0, v68 + 4, v72, 0, v76 + 4, v78, (v64 + v83), v84, a7);

          sub_2259BEF00(a4, a5);

          sub_2259BEF00(a4, a5);
          sub_2259BEF00(a4, a5);
          *v85 = v14;
          v85[1] = v31 | 0x4000000000000000;
          return v54;
        }

        __break(1u);
      }

      else if (!v71)
      {
        v72 = BYTE6(v70);
        goto LABEL_87;
      }

      v42 = __OFSUB__(HIDWORD(v69), v69);
      v75 = HIDWORD(v69) - v69;
      if (v42)
      {
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
      }

      v72 = v75;
      goto LABEL_87;
    }

    goto LABEL_101;
  }

LABEL_113:
  __break(1u);
  return result;
}

uint64_t sub_225C02CA4(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = v4;
  v64 = *MEMORY[0x277D85DE8];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v55 - v13;
  if ((sub_225C0223C(a3) & 1) == 0)
  {
    v55 = 0x8000000225D25510;
    v56 = 0x8000000225D254E0;
    v18 = MEMORY[0x277D84F90];
    v19 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v21 = v20;
    v22 = sub_225CCE954();
    v23 = *(v22 - 8);
    (*(v23 + 56))(v14, 1, 1, v22);
    LODWORD(v22) = (*(v23 + 48))(v14, 1, v22);
    sub_2259DB318(v14);
    if (v22)
    {
      v24 = 861;
    }

    else
    {
      v24 = 23;
    }

    v25 = sub_225B2C374(v18);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v25;
    sub_225B2C4A0(v19, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v62);

    v27 = v62;
    v28 = sub_225B29AA0(0, 1, 1, v18);
    v30 = *(v28 + 2);
    v29 = *(v28 + 3);
    if (v30 >= v29 >> 1)
    {
      v28 = sub_225B29AA0((v29 > 1), v30 + 1, 1, v28);
    }

    *(v28 + 2) = v30 + 1;
    v31 = &v28[56 * v30];
    *(v31 + 4) = 0xD000000000000018;
    *(v31 + 5) = 0x8000000225D254C0;
    v32 = v56;
    *(v31 + 6) = 0xD000000000000028;
    *(v31 + 7) = v32;
    v33 = v55;
    *(v31 + 8) = 0xD000000000000023;
    *(v31 + 9) = v33;
    *(v31 + 10) = 45;
    *v21 = v24;
    *(v21 + 8) = v28;
    *(v21 + 16) = 0xD000000000000018;
    *(v21 + 24) = 0x8000000225D254C0;
    *(v21 + 32) = v27;
    *(v21 + 40) = 0;
    return swift_willThrow();
  }

  v16 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v16)
    {
      v17 = BYTE6(a2);
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  if (v16 != 2)
  {
    v17 = 0;
    goto LABEL_18;
  }

  v36 = *(a1 + 16);
  v35 = *(a1 + 24);
  v37 = __OFSUB__(v35, v36);
  v17 = v35 - v36;
  if (v37)
  {
    __break(1u);
LABEL_15:
    v17 = (HIDWORD(a1) - a1);
    if (__OFSUB__(HIDWORD(a1), a1))
    {
LABEL_30:
      __break(1u);
LABEL_31:
      v15 = sub_225B29AA0((v17 > 1), v14, 1, v15);
LABEL_26:
      *(v15 + 2) = v14;
      v49 = &v15[56 * a3];
      *(v49 + 4) = v6;
      *(v49 + 5) = a1;
      v50 = v56;
      *(v49 + 6) = 0xD000000000000028;
      *(v49 + 7) = v50;
      v51 = v55;
      *(v49 + 8) = 0xD000000000000023;
      *(v49 + 9) = v51;
      *(v49 + 10) = 75;
      *a4 = v5;
      *(a4 + 8) = v15;
      *(a4 + 16) = v6;
      *(a4 + 24) = a1;
      *(a4 + 32) = v7;
      *(a4 + 40) = 0;
      swift_willThrow();
      sub_2259BEF00(v62, v63);
      return sub_2259BEF00(v61, *(&v61 + 1));
    }

    v17 = v17;
  }

LABEL_18:
  v38 = v17 + 8;
  if (__OFADD__(v17, 8))
  {
    __break(1u);
    goto LABEL_30;
  }

  v62 = sub_225C0219C(v17 + 8);
  v63 = v39;
  v60 = 0;
  v61 = xmmword_225CD4150;
  sub_225C01804(a3);
  sub_2259CB710(a1, a2);
  v40 = sub_225C023C0(&v62, a4 & 1, &v61, a1, a2, v38, &v60);
  sub_2259BEF00(a1, a2);
  if (v4)
  {
    sub_2259BEF00(v62, v63);
    return sub_2259BEF00(v61, *(&v61 + 1));
  }

  if (v40)
  {
    v58 = 0;
    v59 = 0xE000000000000000;
    sub_225CCF204();

    v58 = 0xD000000000000024;
    v59 = 0x8000000225D25540;
    v57 = v40;
    v41 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v41);

    v6 = v58;
    a1 = v59;
    v55 = 0x8000000225D25510;
    v56 = 0x8000000225D254E0;
    v42 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    a4 = v43;
    v44 = sub_225CCE954();
    v45 = *(v44 - 8);
    (*(v45 + 56))(v14, 1, 1, v44);
    LODWORD(v44) = (*(v45 + 48))(v14, 1, v44);
    sub_2259DB318(v14);
    if (v44)
    {
      v5 = 863;
    }

    else
    {
      v5 = 23;
    }

    v46 = MEMORY[0x277D84F90];
    v47 = sub_225B2C374(MEMORY[0x277D84F90]);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v58 = v47;
    sub_225B2C4A0(v42, sub_225B2AC40, 0, v48, &v58);

    v7 = v58;
    v15 = sub_225B29AA0(0, 1, 1, v46);
    a3 = *(v15 + 2);
    v17 = *(v15 + 3);
    v14 = (a3 + 1);
    if (a3 < v17 >> 1)
    {
      goto LABEL_26;
    }

    goto LABEL_31;
  }

  if ((v60 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v53 = v62;
  v52 = v63;
  v54 = sub_225CCCFD4();
  sub_2259BEF00(v53, v52);
  sub_2259BEF00(v61, *(&v61 + 1));
  return v54;
}

void *sub_225C0330C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v88 = *MEMORY[0x277D85DE8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v67 - v15;
  v17 = *(a1 + 16);
  if (__OFADD__(v17, 8))
  {
    __break(1u);
LABEL_44:
    v14 = sub_225B29AA0((v15 > 1), a3, 1, v14);
LABEL_12:
    *(v14 + 2) = a3;
    v40 = &v14[56 * v16];
    *(v40 + 4) = v6;
    *(v40 + 5) = a5;
    v41 = v82;
    *(v40 + 6) = 0xD000000000000028;
    *(v40 + 7) = v41;
    v42 = v81;
    *(v40 + 8) = 0xD000000000000023;
    *(v40 + 9) = v42;
    *(v40 + 10) = 160;
    *v7 = a1;
    *(v7 + 8) = v14;
    *(v7 + 16) = v6;
    *(v7 + 24) = a5;
    *(v7 + 32) = a4;
    *(v7 + 40) = 0;
    swift_willThrow();
    sub_2259BEF00(v86, v87);
    return a3;
  }

  LODWORD(v82) = a5;
  v81 = v17 + 8;
  v18 = sub_225C0219C(v17 + 8);
  v20 = v18;
  v86 = v18;
  v87 = v19;
  dataOutMoved = 0;
  v21 = v19 >> 62;
  v79 = v16;
  v80 = v5;
  if ((v19 >> 62) > 1)
  {
    if (v21 == 2)
    {
      v76 = a3 + 4;
      v77 = a1;
      v78 = v17;
      LODWORD(v75) = a4;
      v43 = v19 & 0x3FFFFFFFFFFFFFFFLL;
      v44 = v19;

      sub_2259BEF00(v20, v44);
      *&dataOut = v20;
      *(&dataOut + 1) = v43;
      sub_2259BEF00(0, 0xC000000000000000);
      sub_225CCCEB4();
      v45 = dataOut;
      v46 = *(dataOut + 16);
      v47 = *(dataOut + 24);
      result = sub_225CCCA44();
      if (!result)
      {
        __break(1u);
        goto LABEL_53;
      }

      v49 = result;
      v50 = sub_225CCCA74();
      v51 = v46 - v50;
      if (__OFSUB__(v46, v50))
      {
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      if (__OFSUB__(v47, v46))
      {
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      sub_225CCCA64();
      if (v82)
      {
        v52 = 0;
      }

      else
      {
        v52 = v76;
      }

      v53 = CCCrypt(v82 & 1, 1u, v75, (a2 + 32), 8uLL, v52, (v77 + 32), v78, v49 + v51, v81, &dataOutMoved);
      v86 = v45;
      v87 = *(&v45 + 1) | 0x8000000000000000;
      if (v53)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v82)
      {
        v58 = 0;
      }

      else
      {
        v58 = a3 + 4;
      }

      *(&dataOut + 7) = 0;
      *&dataOut = 0;
      if (CCCrypt(v82 & 1, 1u, a4, (a2 + 32), 8uLL, v58, (a1 + 32), v17, &dataOut, v81, &dataOutMoved))
      {
        goto LABEL_8;
      }
    }

LABEL_31:
    if ((dataOutMoved & 0x8000000000000000) == 0)
    {
      sub_225CCCF34();
      v59 = v86;
      v60 = v87;
      sub_2259CB710(v86, v87);
      a3 = sub_225C0F394(v59, v60);
      sub_2259BEF00(v59, v60);
      return a3;
    }

    __break(1u);
    goto LABEL_46;
  }

  v76 = a3 + 4;
  v77 = a1;
  v78 = v17;
  if (!v21)
  {
    v22 = v18 >> 8;
    LODWORD(v75) = a4;
    v23 = v18 >> 16;
    v24 = v18 >> 24;
    v25 = HIDWORD(v18);
    v26 = v18 >> 40;
    v27 = HIWORD(v18);
    v74 = a2;
    v28 = HIBYTE(v18);
    v68 = v19 >> 8;
    v69 = v19 >> 16;
    v70 = v19 >> 24;
    v71 = HIDWORD(v19);
    v72 = v19 >> 40;
    v73 = HIWORD(v19);
    v29 = v19;
    sub_2259BEF00(v18, v19);
    LOBYTE(dataOut) = v20;
    BYTE1(dataOut) = v22;
    BYTE2(dataOut) = v23;
    BYTE3(dataOut) = v24;
    BYTE4(dataOut) = v25;
    BYTE5(dataOut) = v26;
    BYTE6(dataOut) = v27;
    BYTE7(dataOut) = v28;
    BYTE8(dataOut) = v29;
    BYTE9(dataOut) = v68;
    BYTE10(dataOut) = v69;
    BYTE11(dataOut) = v70;
    BYTE12(dataOut) = v71;
    BYTE13(dataOut) = v72;
    if (v82)
    {
      v30 = 0;
    }

    else
    {
      v30 = v76;
    }

    BYTE14(dataOut) = v73;
    v31 = CCCrypt(v82 & 1, 1u, v75, (v74 + 32), 8uLL, v30, (v77 + 32), v78, &dataOut, v81, &dataOutMoved);
    v86 = dataOut;
    v87 = DWORD2(dataOut) | ((WORD6(dataOut) | (BYTE14(dataOut) << 16)) << 32);
    if (v31)
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

  v54 = v19 & 0x3FFFFFFFFFFFFFFFLL;
  v55 = v19;

  sub_2259BEF00(v20, v55);
  sub_2259BEF00(0, 0xC000000000000000);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v57 = v20 >> 32;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v75 = v20 >> 32;
    v74 = v57 - v20;
    if (v57 < v20)
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (sub_225CCCA44() && __OFSUB__(v20, sub_225CCCA74()))
    {
LABEL_51:
      __break(1u);
    }

    sub_225CCCA94();
    swift_allocObject();
    v61 = sub_225CCCA24();

    v54 = v61;
    v57 = v75;
  }

  if (v57 < v20)
  {
    goto LABEL_47;
  }

  result = sub_225CCCA44();
  if (result)
  {
    v62 = result;
    v63 = sub_225CCCA74();
    v64 = v20 - v63;
    if (__OFSUB__(v20, v63))
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    sub_225CCCA64();
    if (v82)
    {
      v65 = 0;
    }

    else
    {
      v65 = v76;
    }

    v66 = CCCrypt(v82 & 1, 1u, a4, (a2 + 32), 8uLL, v65, (v77 + 32), v78, v62 + v64, v81, &dataOutMoved);

    v86 = v20;
    v87 = v54 | 0x4000000000000000;
    if (!v66)
    {
      goto LABEL_31;
    }

LABEL_8:
    *&dataOut = 0;
    *(&dataOut + 1) = 0xE000000000000000;
    sub_225CCF204();
    MEMORY[0x22AA6CE70](0xD000000000000016, 0x8000000225D255E0);
    v83 = v82 & 1;
    sub_225CCF434();
    a5 = *(&dataOut + 1);
    v6 = dataOut;
    v81 = 0x8000000225D25600;
    v82 = 0x8000000225D254E0;
    v32 = MEMORY[0x277D84F90];
    v33 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v7 = v34;
    v35 = sub_225CCE954();
    v36 = *(v35 - 8);
    v37 = v79;
    (*(v36 + 56))(v79, 1, 1, v35);
    LODWORD(v35) = (*(v36 + 48))(v37, 1, v35);
    sub_2259DB318(v37);
    if (v35)
    {
      LOWORD(a1) = 864;
    }

    else
    {
      LOWORD(a1) = 23;
    }

    v38 = sub_225B2C374(v32);
    v39 = swift_isUniquelyReferenced_nonNull_native();
    *&dataOut = v38;
    sub_225B2C4A0(v33, sub_225B2AC40, 0, v39, &dataOut);

    a4 = dataOut;
    v14 = sub_225B29AA0(0, 1, 1, v32);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    a3 = (v16 + 1);
    if (v16 < v15 >> 1)
    {
      goto LABEL_12;
    }

    goto LABEL_44;
  }

LABEL_53:
  __break(1u);
  return result;
}

void sub_225C03A90(uint64_t a1, unint64_t a2)
{
  sub_2259CB710(a1, a2);
  v4 = sub_225C0F394(a1, a2);
  v5 = v4[2];
  v6 = v5 - 9;
  if (v5 < 9)
  {
    goto LABEL_19;
  }

  v7 = (v4 + 4);
  if (*(v4 + v6 + 32) == 128)
  {
    goto LABEL_17;
  }

  if (v5 == 9)
  {
LABEL_19:
    __break(1u);
    return;
  }

  v6 = v5 - 10;
  if (v7[v5 - 10] == 128)
  {
LABEL_17:
    sub_2259D2AD0(v4, v7, 0, (2 * v6) | 1);
    return;
  }

  v6 = v5 - 11;
  if (v5 < 0xB)
  {
    goto LABEL_19;
  }

  if (v7[v6] == 128)
  {
    goto LABEL_17;
  }

  if (v5 == 11)
  {
    goto LABEL_19;
  }

  v6 = v5 - 12;
  if (v7[v5 - 12] == 128)
  {
    goto LABEL_17;
  }

  v6 = v5 - 13;
  if (v5 < 0xD)
  {
    goto LABEL_19;
  }

  if (v7[v6] == 128)
  {
    goto LABEL_17;
  }

  if (v5 == 13)
  {
    goto LABEL_19;
  }

  v6 = v5 - 14;
  if (v7[v5 - 14] == 128)
  {
    goto LABEL_17;
  }

  v6 = v5 - 15;
  if (v5 < 0xF)
  {
    goto LABEL_19;
  }

  if (v7[v6] == 128)
  {
    goto LABEL_17;
  }

  if (v5 == 15)
  {
    goto LABEL_19;
  }

  v6 = v5 - 16;
  if (v7[v5 - 16] == 128)
  {
    goto LABEL_17;
  }

  sub_2259CB710(a1, a2);
}

unint64_t sub_225C03BD0()
{
  result = qword_27D740418;
  if (!qword_27D740418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740418);
  }

  return result;
}

unint64_t PassportFields.assessorFieldName.getter()
{
  v1 = *v0;
  v2 = 0xD000000000000011;
  v3 = 0x6D616E5F7473616CLL;
  if (v1 != 1)
  {
    v3 = 0;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  if (*v0)
  {
    return v2;
  }

  else
  {
    return 0x616E5F7473726966;
  }
}

CoreIDVShared::PassportFields_optional __swiftcall PassportFields.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t PassportFields.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C616E6F6974616ELL;
  v3 = 0x6942664F65746164;
  if (v1 != 4)
  {
    v3 = 0x7265646E6567;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_225C03DD4()
{
  result = qword_27D740420;
  if (!qword_27D740420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D740420);
  }

  return result;
}

uint64_t sub_225C03E30(uint64_t a1)
{
  sub_225CCE5B4();
}

void sub_225C03F44(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000797469;
  v4 = 0x6C616E6F6974616ELL;
  v5 = 0x8000000225D0C990;
  v6 = 0xEB00000000687472;
  v7 = 0x6942664F65746164;
  if (v2 != 4)
  {
    v7 = 0x7265646E6567;
    v6 = 0xE600000000000000;
  }

  if (v2 == 3)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v5 = v6;
  }

  if (v2 == 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x8000000225D0C970;
  }

  if (!*v1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x8000000225D0C950;
  }

  if (*v1 <= 2u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t MRZType.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

uint64_t MRZFormat.lineCount.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

CoreIDVShared::MRZFormat_optional __swiftcall MRZFormat.init(basedOnLineCharacterCount:)(Swift::Int basedOnLineCharacterCount)
{
  v2 = byte_2839000A0;
  if (qword_225CFA9B0[byte_2839000A0] == basedOnLineCharacterCount || (v2 = byte_2839000A1, qword_225CFA9B0[byte_2839000A1] == basedOnLineCharacterCount))
  {
    *v1 = v2;
  }

  else
  {
    if (qword_225CFA9B0[byte_2839000A2] == basedOnLineCharacterCount)
    {
      v3 = byte_2839000A2;
    }

    else
    {
      v3 = 3;
    }

    *v1 = v3;
  }

  return basedOnLineCharacterCount;
}

CoreIDVShared::MRZFormat_optional __swiftcall MRZFormat.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_225C041B0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 << 16 == *a2 << 16)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_225CCF934();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_225C04220()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225C0427C(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225C042BC()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t MRZResult.dobWithCheckDigit.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MRZResult.expiryDateWithCheckDigit.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t MRZResult.docNumber.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MRZResult.issuingCountryCode.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

void sub_225C04470(char *a1)
{
  v2 = *a1;
  swift_beginAccess();
  *(v1 + 56) = v2;
}

uint64_t sub_225C04500(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
}

double sub_225C04560()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_225C04598(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t sub_225C04630(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 72) = v2;
}

double sub_225C04690()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_225C046C8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
}

uint64_t sub_225C04760(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 80) = v2;
}

double sub_225C047C0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_225C047F8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t sub_225C04890(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 88) = v2;
}

double sub_225C048F0()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_225C04928(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

double sub_225C049C0@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v120 = a1;
  v121 = sub_225CCD954();
  v123 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v124 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  v5 = 0;
  v6 = sub_225C0AD50(v4, v1, sub_225C0AB68, sub_225C0AB68);

  v7 = 1 << v6[32];
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 8);
  if (v9)
  {
    v10 = 0;
    v11 = __clz(__rbit64(v9));
    v12 = (v9 - 1) & v9;
    v13 = (v7 + 63) >> 6;
LABEL_9:
    v16 = *(v6 + 7);
    v17 = (*(v6 + 6) + 16 * v11);
    v18 = v17[1];
    v118 = *v17;
    v19 = *(v16 + 8 * v11);
    v20 = v18;

LABEL_10:
    v21 = v19;
    while (v12)
    {
LABEL_11:
      v22 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v23 = v22 | (v10 << 6);
      v19 = *(*(v6 + 7) + 8 * v23);
      if (v21 < v19)
      {
        v26 = (*(v6 + 6) + 16 * v23);
        v25 = *v26;
        v122 = v26[1];
        v118 = v25;

        v20 = v122;
        goto LABEL_10;
      }
    }

    while (1)
    {
      v24 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v24 >= v13)
      {
        v114 = v21;

        v27 = v20;
        goto LABEL_19;
      }

      v12 = *&v6[8 * v24 + 64];
      ++v10;
      if (v12)
      {
        v10 = v24;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_96;
  }

  v14 = 0;
  v13 = (v7 + 63) >> 6;
  while (v13 - 1 != v9)
  {
    v10 = v9 + 1;
    v15 = *&v6[8 * v9 + 72];
    v14 -= 64;
    ++v9;
    if (v15)
    {
      v12 = (v15 - 1) & v15;
      v11 = __clz(__rbit64(v15)) - v14;
      goto LABEL_9;
    }
  }

  v118 = 0;
  v27 = 0;
  v114 = 0;
LABEL_19:
  swift_beginAccess();
  v19 = v2[9];

  v29 = sub_225C0AD50(v28, v2, sub_225C0AC5C, sub_225C0AC5C);
  v122 = v27;
  v6 = v29;

  v30 = 1 << v6[32];
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(v6 + 8);
  if (v32)
  {
    v33 = 0;
    v34 = __clz(__rbit64(v32));
    v35 = (v32 - 1) & v32;
    v36 = (v30 + 63) >> 6;
LABEL_27:
    v39 = *(v6 + 7);
    v40 = (*(v6 + 6) + 16 * v34);
    v41 = v40[1];
    v117 = *v40;
    v42 = *(v39 + 8 * v34);
    v43 = v41;

LABEL_28:
    v44 = v42;
    while (v35)
    {
LABEL_29:
      v45 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v46 = v45 | (v33 << 6);
      v42 = *(*(v6 + 7) + 8 * v46);
      if (v44 < v42)
      {
        v49 = (*(v6 + 6) + 16 * v46);
        v48 = *v49;
        v119 = v49[1];
        v117 = v48;

        v43 = v119;
        goto LABEL_28;
      }
    }

    v12 = v122;
    while (1)
    {
      v47 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v47 >= v36)
      {
        v113 = v44;

        goto LABEL_38;
      }

      v35 = *&v6[8 * v47 + 64];
      ++v33;
      if (v35)
      {
        v33 = v47;
        goto LABEL_29;
      }
    }

LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    swift_once();
    goto LABEL_75;
  }

  v37 = 0;
  v36 = (v30 + 63) >> 6;
  while (v36 - 1 != v32)
  {
    v33 = v32 + 1;
    v38 = *&v6[8 * v32 + 72];
    v37 -= 64;
    ++v32;
    if (v38)
    {
      v35 = (v38 - 1) & v38;
      v34 = __clz(__rbit64(v38)) - v37;
      goto LABEL_27;
    }
  }

  v117 = 0;
  v43 = 0;
  v113 = 0;
LABEL_38:
  v119 = v43;
  swift_beginAccess();
  v6 = v2[10];

  v51 = sub_225C0AD50(v50, v2, sub_225C0AF20, sub_225C0AF20);

  v52 = 1 << v51[32];
  v53 = -1;
  if (v52 < 64)
  {
    v53 = ~(-1 << v52);
  }

  v54 = v53 & *(v51 + 8);
  if (v54)
  {
    v55 = 0;
    v56 = __clz(__rbit64(v54));
    v12 = (v54 - 1) & v54;
    v57 = (v52 + 63) >> 6;
LABEL_46:
    v60 = *(v51 + 7);
    v61 = (*(v51 + 6) + 16 * v56);
    v19 = v61[1];
    v116 = *v61;
    v62 = *(v60 + 8 * v56);

LABEL_47:
    v63 = v62;
    while (v12)
    {
LABEL_48:
      v64 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v65 = v64 | (v55 << 6);
      v62 = *(*(v51 + 7) + 8 * v65);
      if (v63 < v62)
      {
        v68 = (*(v51 + 6) + 16 * v65);
        v67 = *v68;
        v115 = v68[1];
        v116 = v67;

        v19 = v115;
        goto LABEL_47;
      }
    }

    while (1)
    {
      v66 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        goto LABEL_97;
      }

      if (v66 >= v57)
      {
        v112 = v63;

        goto LABEL_56;
      }

      v12 = *&v51[8 * v66 + 64];
      ++v55;
      if (v12)
      {
        v55 = v66;
        goto LABEL_48;
      }
    }
  }

  v58 = 0;
  v57 = (v52 + 63) >> 6;
  while (v57 - 1 != v54)
  {
    v55 = v54 + 1;
    v59 = *&v51[8 * v54 + 72];
    v58 -= 64;
    ++v54;
    if (v59)
    {
      v12 = (v59 - 1) & v59;
      v56 = __clz(__rbit64(v59)) - v58;
      goto LABEL_46;
    }
  }

  v116 = 0;
  v19 = 0;
  v112 = 0;
LABEL_56:
  swift_beginAccess();
  v6 = v2[11];

  v70 = sub_225C0AD50(v69, v2, sub_225C0B014, sub_225C0B014);

  v71 = 1 << v70[32];
  v72 = -1;
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  v73 = v72 & *(v70 + 8);
  if (v73)
  {
    v12 = 0;
    v74 = __clz(__rbit64(v73));
    v75 = (v73 - 1) & v73;
    v76 = (v71 + 63) >> 6;
LABEL_64:
    v79 = *(v70 + 7);
    v80 = (*(v70 + 6) + 16 * v74);
    v5 = v80[1];
    v115 = *v80;
    v81 = *(v79 + 8 * v74);

LABEL_65:
    v82 = v81;
    while (v75)
    {
LABEL_66:
      v83 = __clz(__rbit64(v75));
      v75 &= v75 - 1;
      v84 = v83 | (v12 << 6);
      v81 = *(*(v70 + 7) + 8 * v84);
      if (v82 < v81)
      {
        v87 = (*(v70 + 6) + 16 * v84);
        v86 = *v87;
        v111 = v87[1];
        v115 = v86;

        v5 = v111;
        goto LABEL_65;
      }
    }

    while (1)
    {
      v85 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_98;
      }

      if (v85 >= v76)
      {
        v111 = v82;

        goto LABEL_74;
      }

      v75 = *&v70[8 * v85 + 64];
      ++v12;
      if (v75)
      {
        v12 = v85;
        goto LABEL_66;
      }
    }
  }

  v77 = 0;
  v76 = (v71 + 63) >> 6;
  while (v76 - 1 != v73)
  {
    v12 = v73 + 1;
    v78 = *&v70[8 * v73 + 72];
    v77 -= 64;
    ++v73;
    if (v78)
    {
      v75 = (v78 - 1) & v78;
      v74 = __clz(__rbit64(v78)) - v77;
      goto LABEL_64;
    }
  }

  v115 = 0;
  v5 = 0;
  v111 = 0;
LABEL_74:
  v12 = v122;
  v6 = v121;
  if (qword_28105B910 != -1)
  {
    goto LABEL_99;
  }

LABEL_75:
  v88 = off_28105B918;
  v89 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v90 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v90));
  (*(v123 + 16))(v124, &v88[v89], v6);
  os_unfair_lock_unlock(&v88[v90]);
  v91 = objc_opt_self();

  v92 = v119;

  v93 = [v91 standardUserDefaults];
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1)
  {
    v94 = sub_225CCE444();
    v95 = [v93 BOOLForKey_];

    if (v95)
    {
      v96 = sub_225C05744(v118, v12, v114, v2, v117, v92, v113, v116, v19, v112, v115, v5);
      v98 = v97;
      v99 = sub_225CCD934();
      v100 = sub_225CCED04();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        v102 = swift_slowAlloc();
        v125 = v102;
        *v101 = 136315138;
        v103 = sub_2259BE198(v96, v98, &v125);

        *(v101 + 4) = v103;
        _os_log_impl(&dword_2259A7000, v99, v100, "%s", v101, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v102);
        v104 = v102;
        v12 = v122;
        MEMORY[0x22AA6F950](v104, -1, -1);
        MEMORY[0x22AA6F950](v101, -1, -1);
      }

      else
      {
      }

      v6 = v121;
    }

    else
    {
    }
  }

  else
  {
  }

  (*(v123 + 8))(v124, v6);
  if (v12 && v92 && v19 && v5)
  {
    v106 = v120;
    *v120 = v118;
    v106[1] = v12;
    v106[2] = v117;
    v106[3] = v92;
    v106[4] = v116;
    v106[5] = v19;
    v106[6] = v115;
    v106[7] = v5;
    v107 = v113;
    v106[8] = v114;
    v106[9] = v107;
    v108 = v111;
    v106[10] = v112;
    v106[11] = v108;
  }

  else
  {

    result = 0.0;
    v109 = v120;
    *(v120 + 64) = 0u;
    v109[5] = 0u;
    v109[2] = 0u;
    v109[3] = 0u;
    *v109 = 0u;
    v109[1] = 0u;
  }

  return result;
}

uint64_t sub_225C05744(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000032, 0x8000000225D257A0);
  if (a2)
  {
    v14 = 1702195828;
  }

  else
  {
    v14 = 0x65736C6166;
  }

  if (a2)
  {
    v15 = 0xE400000000000000;
  }

  else
  {
    v15 = 0xE500000000000000;
  }

  MEMORY[0x22AA6CE70](v14, v15);

  MEMORY[0x22AA6CE70](10272, 0xE200000000000000);
  swift_beginAccess();

  v16 = sub_225CCE2E4();
  v18 = v17;

  MEMORY[0x22AA6CE70](v16, v18);

  MEMORY[0x22AA6CE70](0xD000000000000010, 0x8000000225D257E0);
  if (a6)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (a6)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x22AA6CE70](v19, v20);

  MEMORY[0x22AA6CE70](10272, 0xE200000000000000);
  swift_beginAccess();

  v21 = sub_225CCE2E4();
  v23 = v22;

  MEMORY[0x22AA6CE70](v21, v23);

  MEMORY[0x22AA6CE70](0xD000000000000015, 0x8000000225D25800);
  if (a9)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (a9)
  {
    v25 = 0xE400000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  MEMORY[0x22AA6CE70](v24, v25);

  MEMORY[0x22AA6CE70](10272, 0xE200000000000000);
  swift_beginAccess();

  v26 = sub_225CCE2E4();
  v28 = v27;

  MEMORY[0x22AA6CE70](v26, v28);

  MEMORY[0x22AA6CE70](0xD00000000000001BLL, 0x8000000225D25820);
  if (a12)
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (a12)
  {
    v30 = 0xE400000000000000;
  }

  else
  {
    v30 = 0xE500000000000000;
  }

  MEMORY[0x22AA6CE70](v29, v30);

  MEMORY[0x22AA6CE70](10272, 0xE200000000000000);
  swift_beginAccess();

  v31 = sub_225CCE2E4();
  v33 = v32;

  MEMORY[0x22AA6CE70](v31, v33);

  MEMORY[0x22AA6CE70](41, 0xE100000000000000);
  return 0;
}

uint64_t PassportMRZParser.__allocating_init(supportedRegions:dobRepeatCount:doeRepeatCount:docNumberRepeatCount:issuerNumberRepeatCount:minimumAge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  *(v12 + 56) = 3;
  v13 = MEMORY[0x277D84F90];
  *(v12 + 64) = sub_225B2DC84(MEMORY[0x277D84F90]);
  *(v12 + 72) = sub_225B2DC84(v13);
  *(v12 + 80) = sub_225B2DC84(v13);
  *(v12 + 88) = sub_225B2DC84(v13);
  *(v12 + 96) = a1;
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4;
  *(v12 + 40) = a5;
  *(v12 + 48) = a6;
  return v12;
}

uint64_t PassportMRZParser.init(supportedRegions:dobRepeatCount:doeRepeatCount:docNumberRepeatCount:issuerNumberRepeatCount:minimumAge:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = 3;
  v13 = MEMORY[0x277D84F90];
  *(v6 + 64) = sub_225B2DC84(MEMORY[0x277D84F90]);
  *(v6 + 72) = sub_225B2DC84(v13);
  *(v6 + 80) = sub_225B2DC84(v13);
  *(v6 + 88) = sub_225B2DC84(v13);
  *(v6 + 96) = a1;
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  return v6;
}

uint64_t sub_225C05C08()
{
  v1 = v0;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v6 = off_28105B918;
  v7 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v8));
  (*(v3 + 16))(v5, &v6[v7], v2);
  os_unfair_lock_unlock(&v6[v8]);
  v9 = sub_225CCD934();
  v10 = sub_225CCED04();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_2259A7000, v9, v10, "PassportMRZParser resetting...", v11, 2u);
    MEMORY[0x22AA6F950](v11, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  v12 = MEMORY[0x277D84F90];
  v13 = sub_225B2DC84(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v1[8] = v13;

  v14 = sub_225B2DC84(v12);
  swift_beginAccess();
  v1[9] = v14;

  v15 = sub_225B2DC84(v12);
  swift_beginAccess();
  v1[10] = v15;

  v16 = sub_225B2DC84(v12);
  swift_beginAccess();
  v1[11] = v16;
}

uint64_t sub_225C05EA8(uint64_t a1, uint64_t a2)
{
  if (sub_225CCE5D4() == 3)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    if (qword_28105B9F0 != -1)
    {
      swift_once();
    }

    if (byte_28105B9F8 == 1 && (v4 = sub_225CCE444(), v5 = [v3 stringForKey_], v4, v5))
    {
      v6 = sub_225CCE474();
      v8 = v7;

      swift_beginAccess();
      v9 = *(v2 + 96);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 96) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_225B29BC8(0, *(v9 + 2) + 1, 1, v9);
        *(v2 + 96) = v9;
      }

      v11 = *(v9 + 2);
      v12 = *(v9 + 3);
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        v19 = v9;
        v20 = *(v9 + 2);
        v21 = sub_225B29BC8((v12 > 1), v11 + 1, 1, v19);
        v11 = v20;
        v9 = v21;
      }

      *(v9 + 2) = v13;
      v14 = &v9[16 * v11];
      *(v14 + 4) = v6;
      *(v14 + 5) = v8;
      *(v2 + 96) = v9;
      swift_endAccess();
    }

    else
    {
    }

    swift_beginAccess();
    v16 = *(v2 + 96);
    v23[0] = sub_225CCE534();
    v23[1] = v17;
    MEMORY[0x28223BE20](v23[0]);
    v22[2] = v23;

    v15 = sub_225B53C58(sub_225C0B108, v22, v16);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_225C06108(uint64_t a1, unint64_t a2, char a3)
{
  v6 = sub_225CCD954();
  MEMORY[0x28223BE20](v6);
  v7 = sub_225CCD0B4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_225CCE5D4() != 7)
  {
    return 0;
  }

  sub_225C0A19C(a1, a2, a3 & 1);
  (*(v8 + 8))(v10, v7);
  return 1;
}

void sub_225C063D4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v100 = a1;
  v99 = a3;
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v3 - 8);
  v97 = &v96 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73E758, &qword_225CF2990);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v96 - v7;
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v13 = off_28105B918;
  v14 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v15));
  (*(v10 + 16))(v12, &v13[v14], v9);
  os_unfair_lock_unlock(&v13[v15]);
  v16 = sub_225CCD934();
  v17 = sub_225CCED04();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_2259A7000, v16, v17, "Attempting to parse type 1 MRZ", v18, 2u);
    MEMORY[0x22AA6F950](v18, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v20 = v100;
  v19 = v101;
  v104 = v100;
  v105 = v101;
  sub_225CCD814();
  v21 = sub_225B53BA0();
  sub_2259D8B24(&qword_27D73E770, &qword_27D73E758, &qword_225CF2990, MEMORY[0x277D85AC0]);
  v22 = sub_225CCE364();
  v25 = *(v6 + 8);
  v24 = v6 + 8;
  v23 = v25;
  v25(v8, v5);
  if (v22)
  {
    v26 = sub_225CCE604();
    v28 = sub_225CCE604() >> 14;
    v23 = v98;
    if (v28 < v26 >> 14)
    {
      __break(1u);
    }

    else
    {
      sub_225CCE5E4();
      v29 = sub_225CCE704();
      MEMORY[0x22AA6CD90](v29);
      v21 = v30;

      v31 = sub_225CCE534();
      v20 = v32;

      v26 = sub_225CCE604();
      v28 = sub_225CCE604() >> 14;
      if (v28 >= v26 >> 14)
      {
        sub_225CCE5E4();
        v33 = sub_225CCE704();
        MEMORY[0x22AA6CD90](v33);
        v21 = v34;

        v19 = sub_225CCE534();
        v24 = v35;

        swift_beginAccess();
        v36 = *(v23 + 88);
        v28 = *(v36 + 16);
        if (v28)
        {

          v37 = sub_2259F18D4(v31, v20);
          if (v38)
          {
            v39 = *(*(v36 + 56) + 8 * v37);
          }

          else
          {
            v39 = 0;
          }
        }

        else
        {
          v39 = 0;
        }

        v54 = __OFADD__(v39, 1);
        v26 = v39 + 1;
        if (!v54)
        {
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v102 = *(v23 + 88);
          *(v23 + 88) = 0x8000000000000000;
          sub_225A04D6C(v26, v31, v20, isUniquelyReferenced_nonNull_native);

          *(v23 + 88) = v102;
          swift_endAccess();
          swift_beginAccess();
          v56 = *(v23 + 80);
          v28 = *(v56 + 16);
          if (v28)
          {

            v57 = sub_2259F18D4(v19, v24);
            if (v58)
            {
              v59 = *(*(v56 + 56) + 8 * v57);
            }

            else
            {
              v59 = 0;
            }
          }

          else
          {
            v59 = 0;
          }

          v54 = __OFADD__(v59, 1);
          v26 = v59 + 1;
          if (!v54)
          {
            swift_beginAccess();
            v60 = swift_isUniquelyReferenced_nonNull_native();
            v106 = *(v23 + 80);
            *(v23 + 80) = 0x8000000000000000;
            sub_225A04D6C(v26, v19, v24, v60);

            *(v23 + 80) = v106;
            swift_endAccess();
            v53 = 0;
LABEL_31:
            swift_beginAccess();
            *(v23 + 56) = 0;
            goto LABEL_32;
          }

          goto LABEL_62;
        }

LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }
    }

    __break(1u);
    goto LABEL_61;
  }

  v104 = v20;
  v105 = v19;
  sub_225CCD814();
  v40 = sub_225CCE364();
  (v23)(v8, v5);
  if ((v40 & 1) == 0)
  {
    v53 = 2;
LABEL_32:
    *v99 = v53;
    return;
  }

  v26 = sub_225CCE604();
  v28 = sub_225CCE604() >> 14;
  if (v28 < v26 >> 14)
  {
    goto LABEL_63;
  }

  sub_225CCE5E4();
  v41 = sub_225CCE704();
  v42 = MEMORY[0x22AA6CD90](v41);
  v21 = v43;

  v23 = v98;
  v44 = sub_225C06108(v42, v21, 1);

  if ((v44 & 1) == 0)
  {
    v19 = 0x8000000225D25630;
    v61 = MEMORY[0x277D84F90];
    v62 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v21 = v63;
    v64 = sub_225CCE954();
    v65 = *(v64 - 8);
    v66 = v97;
    (*(v65 + 56))(v97, 1, 1, v64);
    LODWORD(v64) = (*(v65 + 48))(v66, 1, v64);
    sub_2259CB640(v66, &unk_27D73B050, &unk_225CD3AD0);
    if (v64)
    {
      LOWORD(v20) = 855;
    }

    else
    {
      LOWORD(v20) = 23;
    }

    v67 = sub_225B2C374(v61);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v104 = v67;
    sub_225B2C4A0(v62, sub_225B2AC40, 0, v68, &v104);

    v24 = v104;
    v27 = sub_225B29AA0(0, 1, 1, v61);
    v23 = *(v27 + 2);
    v28 = *(v27 + 3);
    v26 = v23 + 1;
    if (v23 < v28 >> 1)
    {
      goto LABEL_37;
    }

    goto LABEL_65;
  }

  v26 = sub_225CCE604();
  v28 = sub_225CCE604() >> 14;
  if (v28 < v26 >> 14)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    v27 = sub_225B29AA0((v28 > 1), v26, 1, v27);
LABEL_37:
    v69 = 0xEB00000000424F44;
    *(v27 + 2) = v26;
    v70 = &v27[56 * v23];
    *(v70 + 2) = xmmword_225CFA6E0;
    *(v70 + 6) = 0xD000000000000025;
    *(v70 + 7) = v19;
    strcpy(v70 + 64, "parseTD1(_:)");
    v70[77] = 0;
    *(v70 + 39) = -5120;
    *(v70 + 10) = 200;
    *v21 = v20;
LABEL_53:
    *(v21 + 8) = v27;
    *(v21 + 16) = 0x2064696C61766E69;
    *(v21 + 24) = v69;
    *(v21 + 32) = v24;
    *(v21 + 40) = 0;
    swift_willThrow();
    return;
  }

  sub_225CCE5E4();
  v45 = sub_225CCE704();
  v46 = MEMORY[0x22AA6CD90](v45);
  v21 = v47;

  swift_beginAccess();
  v48 = *(v23 + 64);
  v49 = *(v48 + 16);
  if (v49)
  {

    v50 = sub_2259F18D4(v46, v21);
    if (v51)
    {
      v52 = *(*(v48 + 56) + 8 * v50);
    }

    else
    {
      v52 = 0;
    }
  }

  else
  {
    v52 = 0;
  }

  v54 = __OFADD__(v52, 1);
  v71 = v52 + 1;
  if (v54)
  {
    __break(1u);
    goto LABEL_67;
  }

  swift_beginAccess();
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *(v23 + 64);
  *(v23 + 64) = 0x8000000000000000;
  sub_225A04D6C(v71, v46, v21, v72);

  *(v23 + 64) = v102;
  swift_endAccess();
  v71 = sub_225CCE604();
  v49 = sub_225CCE604() >> 14;
  if (v49 < v71 >> 14)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  sub_225CCE5E4();
  v73 = sub_225CCE704();
  v74 = MEMORY[0x22AA6CD90](v73);
  v21 = v75;

  v76 = sub_225C06108(v74, v21, 0);

  if ((v76 & 1) == 0)
  {
    v19 = 0x8000000225D25630;
    v85 = MEMORY[0x277D84F90];
    v86 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v21 = v87;
    v88 = sub_225CCE954();
    v89 = *(v88 - 8);
    v90 = v97;
    (*(v89 + 56))(v97, 1, 1, v88);
    LODWORD(v88) = (*(v89 + 48))(v90, 1, v88);
    sub_2259CB640(v90, &unk_27D73B050, &unk_225CD3AD0);
    if (v88)
    {
      LOWORD(v20) = 856;
    }

    else
    {
      LOWORD(v20) = 23;
    }

    v91 = sub_225B2C374(v85);
    v92 = swift_isUniquelyReferenced_nonNull_native();
    v103[0] = v91;
    sub_225B2C4A0(v86, sub_225B2AC40, 0, v92, v103);

    v24 = v103[0];
    v27 = sub_225B29AA0(0, 1, 1, v85);
    v23 = *(v27 + 2);
    v49 = *(v27 + 3);
    v71 = v23 + 1;
    if (v23 < v49 >> 1)
    {
      goto LABEL_52;
    }

    goto LABEL_69;
  }

  v71 = sub_225CCE604();
  v49 = sub_225CCE604() >> 14;
  if (v49 < v71 >> 14)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    v27 = sub_225B29AA0((v49 > 1), v71, 1, v27);
LABEL_52:
    *(v27 + 2) = v71;
    v93 = &v27[56 * v23];
    *(v93 + 2) = xmmword_225CFA6F0;
    *(v93 + 6) = 0xD000000000000025;
    *(v93 + 7) = v19;
    strcpy(v93 + 64, "parseTD1(_:)");
    v93[77] = 0;
    *(v93 + 39) = -5120;
    *(v93 + 10) = 207;
    *v21 = v20;
    v69 = 0xEB00000000454F44;
    goto LABEL_53;
  }

  sub_225CCE5E4();
  v77 = sub_225CCE704();
  v78 = MEMORY[0x22AA6CD90](v77);
  v80 = v79;

  swift_beginAccess();
  v81 = *(v23 + 72);
  if (*(v81 + 16))
  {

    v82 = sub_2259F18D4(v78, v80);
    if (v83)
    {
      v84 = *(*(v81 + 56) + 8 * v82);
    }

    else
    {
      v84 = 0;
    }
  }

  else
  {
    v84 = 0;
  }

  v54 = __OFADD__(v84, 1);
  v94 = v84 + 1;
  if (!v54)
  {
    swift_beginAccess();
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v106 = *(v23 + 72);
    *(v23 + 72) = 0x8000000000000000;
    sub_225A04D6C(v94, v78, v80, v95);

    *(v23 + 72) = v106;
    swift_endAccess();
    v53 = 1;
    goto LABEL_31;
  }

  __break(1u);
}