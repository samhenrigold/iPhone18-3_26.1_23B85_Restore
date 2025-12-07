uint64_t sub_266F47CD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F47D3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DIMSchemaDIMExperimentContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13 = sub_26738113C();
  v1 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0470, 0x277D57068);
  sub_266ECAF2C(&qword_2800F0478, &qword_2800F0470, 0x277D57068, &protocol conformance descriptor for DIMSchemaDIMExperimentInfo);
  sub_26738122C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x656D697265707865, 0xEE006F666E49746ELL);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E538], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x800000026742BAF0);
  return v10(v14, 0);
}

uint64_t sub_266F48120(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F48184(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DIMSchemaDIMExperimentInfo.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v18 = a1;
  v1 = sub_26738113C();
  v17 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E530];
  v16 = *(v2 + 104);
  v16(v4, v8, v1);
  v19[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D697265707865, 0xEC0000006449746ELL);
  v11(v19, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v10(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D7461657274, 0xEB00000000644974);
  v12(v19, 0);
  v16(v4, *MEMORY[0x277D3E510], v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D796F6C706564, 0xEC0000006449746ELL);
  return v13(v19, 0);
}

uint64_t sub_266F48634(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F48698(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DIMSchemaDIMLocaleNotRecognized.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x4C6E776F6E6B6E75, 0xED0000656C61636FLL);
  return v8(v10, 0);
}

uint64_t sub_266F48994(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F489F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F48A5C()
{
  result = qword_2800F0388;
  if (!qword_2800F0388)
  {
    sub_266F48AB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0388);
  }

  return result;
}

unint64_t sub_266F48AB4()
{
  result = qword_2800F0380;
  if (!qword_2800F0380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0380);
  }

  return result;
}

uint64_t static DIMSchemaDIMOnDeviceDigest.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v18 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v16[1] = a1;
  sub_26738119C();
  v17 = "iri.dim.DIMOnDeviceDigest";
  v9 = *MEMORY[0x277D3E538];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000029, 0x800000026742BBD0);
  v14(v19, 0);
  sub_266ECB128(&unk_287884D38);
  return sub_2673811CC();
}

uint64_t sub_266F48E4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F48EB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F48F14()
{
  result = qword_2800F0398;
  if (!qword_2800F0398)
  {
    sub_266F48F6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0398);
  }

  return result;
}

unint64_t sub_266F48F6C()
{
  result = qword_2800F0390;
  if (!qword_2800F0390)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0390);
  }

  return result;
}

uint64_t static DIMSchemaDIMSearchDataOptOutState.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026742BC40, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x800000026742BC60, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x800000026742BC80, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266F491CC(uint64_t a1)
{
  v2 = sub_266F492D0(&qword_2800F0480, &protocol conformance descriptor for DIMSchemaDIMSearchDataOptOutState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F49234(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F492D0(&qword_2800F0480, &protocol conformance descriptor for DIMSchemaDIMSearchDataOptOutState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F492D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DIMSchemaDIMSearchDataOptOutState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DIMSchemaDIMSiriAccountInformation.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *MEMORY[0x277D3E530];
  v8 = *(v1 + 104);
  v17 = v0;
  v18 = v8;
  v8(v3, v7, v0);
  v20[0] = 1;
  sub_26738114C();
  v19 = sub_26738116C();
  v9 = *(*(v19 - 8) + 56);
  v9(v6, 0, 1, v19);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6976654469726973, 0xEC00000064496563);
  v10(v20, 0);
  v11 = v0;
  v12 = v18;
  v18(v3, v7, v11);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v19);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x6565705369726973, 0xEC00000064496863);
  v13(v20, 0);
  v12(v3, v7, v17);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v19);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x7265735569726973, 0xEA00000000006449);
  v14(v20, 0);
  sub_266ECB128(&unk_287884D60);
  return sub_2673811CC();
}

uint64_t sub_266F49714(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F49778(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F497DC()
{
  result = qword_2800F0378;
  if (!qword_2800F0378)
  {
    sub_266F49834();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0378);
  }

  return result;
}

unint64_t sub_266F49834()
{
  result = qword_2800F0370;
  if (!qword_2800F0370)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0370);
  }

  return result;
}

uint64_t static DIMSchemaDIMWatchArmOrientation.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001BLL, 0x800000026742BD10, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026742BD30, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x800000026742BD50, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266F49A94(uint64_t a1)
{
  v2 = sub_266F49B98(&qword_2800F0490, &protocol conformance descriptor for DIMSchemaDIMWatchArmOrientation);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F49AFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F49B98(&qword_2800F0490, &protocol conformance descriptor for DIMSchemaDIMWatchArmOrientation);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F49B98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DIMSchemaDIMWatchArmOrientation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DIMSchemaDIMWatchDeviceAttributes.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for DIMSchemaDIMWatchArmOrientation(0);
  sub_266F49ECC(&qword_2800F0488, type metadata accessor for DIMSchemaDIMWatchArmOrientation, &protocol conformance descriptor for DIMSchemaDIMWatchArmOrientation);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x800000026742BDB0);
  return v5(v7, 0);
}

uint64_t sub_266F49DC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F49E24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F49ECC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F49F14()
{
  result = qword_2800F0428;
  if (!qword_2800F0428)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0428);
  }

  return result;
}

uint64_t static DIMSchemaEntitySyncSettings.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x800000026742BE00);
  return v8(v10, 0);
}

uint64_t sub_266F4A1B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4A214(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F4A278()
{
  result = qword_2800F0460;
  if (!qword_2800F0460)
  {
    sub_266F4A2D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0460);
  }

  return result;
}

unint64_t sub_266F4A2D0()
{
  result = qword_2800F0458;
  if (!qword_2800F0458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0458);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRAlignmentInfo.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *MEMORY[0x277D3E530];
  v39 = *(v1 + 104);
  v39(v3, v7, v0);
  v32 = v1 + 104;
  v40[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v38 = *(v9 + 56);
  v10 = v9 + 56;
  v38(v6, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x636E657265666572, 0xED0000656D614E65);
  v11(v40, 0);
  v12 = *MEMORY[0x277D3E538];
  v35 = v3;
  v13 = v3;
  v36 = v12;
  v14 = v0;
  v37 = v0;
  v15 = v39;
  v39(v13, v12, v0);
  v40[0] = 1;
  sub_26738114C();
  v16 = v38;
  v38(v6, 0, 1, v8);
  v34 = v10;
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x74656C65446D756ELL, 0xEC000000736E6F69);
  v17(v40, 0);
  v18 = v35;
  v15(v35, v12, v14);
  v40[0] = 1;
  sub_26738114C();
  v33 = v8;
  v16(v6, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0x7265736E496D756ELL, 0xED0000736E6F6974);
  v19(v40, 0);
  v31 = "lEditMetricClassified";
  v20 = v36;
  v21 = v37;
  v22 = v39;
  v39(v18, v36, v37);
  v40[0] = 1;
  sub_26738114C();
  v23 = v38;
  v38(v6, 0, 1, v8);
  v24 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, v31 | 0x8000000000000000);
  v24(v40, 0);
  v25 = v35;
  v22(v35, v20, v21);
  v40[0] = 1;
  sub_26738114C();
  v26 = v33;
  v23(v6, 0, 1, v33);
  v27 = sub_2673811AC();
  sub_266EC637C(v6, 0x7473694474696465, 0xEC00000065636E61);
  v27(v40, 0);
  v22(v25, v36, v37);
  v40[0] = 1;
  sub_26738114C();
  v23(v6, 0, 1, v26);
  v28 = sub_2673811AC();
  sub_266EC637C(v6, 0x636E657265666572, 0xED0000657A695365);
  return v28(v40, 0);
}

uint64_t sub_266F4A9A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4AA08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F4AA6C()
{
  result = qword_2800F0498;
  if (!qword_2800F0498)
  {
    sub_266F4AAC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0498);
  }

  return result;
}

unint64_t sub_266F4AAC4()
{
  result = qword_2800F04A0;
  if (!qword_2800F04A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F04A0);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRAudioFileResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v10 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v10[1] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449727361, 0xE500000000000000);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F04A8, 0x277D570E0);
  sub_266ECAF2C(&qword_2800F04B0, &qword_2800F04A8, 0x277D570E0, &protocol conformance descriptor for DODMLASRSchemaDODMLASRDecodingResult);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x676E69646F636564, 0xEF73746C75736552);
  v7(v11, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v8(v11, 0);
}

uint64_t sub_266F4AE64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4AEC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRAudioFileResultTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF140, 0x277D56A38);
  sub_266ECAF2C(&qword_2800EF148, &qword_2800EF140, 0x277D56A38, &protocol conformance descriptor for ASRSchemaASRRecognitionResultTier1);
  v15[1] = a1;
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000011, 0x800000026742BED0);
  v8(v17, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v16, 0xD000000000000011, 0x800000026742BED0);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_287884D90);
    sub_26738115C();
  }

  (v10)(v16, 0);
  v9(v17, 0);
  sub_266ECB294(0, &qword_2800EF590, 0x277D569D8);
  sub_266ECAF2C(&qword_2800EF588, &qword_2800EF590, 0x277D569D8, &protocol conformance descriptor for ASRSchemaASROneBestTranscriptTier1);
  sub_26738122C();
  v7(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000012, 0x800000026742BEF0);
  v12(v17, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v13 = sub_2673811AC();
  sub_266EC637C(v4, 0x64496B6E696CLL, 0xE600000000000000);
  return v13(v17, 0);
}

uint64_t sub_266F4B3B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4B41C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRChoiceInfo.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v16 = v1;
  v17 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F04D8, 0x277D57160);
  sub_266ECAF2C(&qword_2800F04E0, &qword_2800F04D8, 0x277D57160, &protocol conformance descriptor for DODMLASRSchemaDODMLASRTokenInfo);
  sub_26738122C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x736E656B6F74, 0xE600000000000000);
  v10(v18, 0);
  v11 = *MEMORY[0x277D3E500];
  v12 = *(v17 + 104);
  v17 += 104;
  v12(v4, v11, v16);
  v18[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x736F436870617267, 0xE900000000000074);
  v13(v18, 0);
  v12(v4, v11, v16);
  v18[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x63697473756F6361, 0xEC00000074736F43);
  return v14(v18, 0);
}

uint64_t sub_266F4B8B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4B91C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRConfusionPair.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v25 = sub_26738113C();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19[-v4];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v22 = a1;
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v21 = *(v7 + 56);
  v21(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x6449727361, 0xE500000000000000);
  v8(v27, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v26, 0x6449727361, 0xE500000000000000);
  v11 = v6;
  if (!(*(v7 + 48))(v12, 1, v6))
  {
    sub_266ECB128(&unk_287884DB8);
    sub_26738115C();
  }

  (v10)(v26, 0);
  v9(v27, 0);
  v20 = *MEMORY[0x277D3E508];
  v23 = *(v23 + 104);
  (v23)(v24);
  v27[0] = 1;
  sub_26738114C();
  v13 = v21;
  v21(v5, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0x646F43726F727265, 0xE900000000000065);
  v14(v27, 0);
  type metadata accessor for ASRSchemaASREditMethod(0);
  sub_266F4C0C0(&qword_2800EF3C8, type metadata accessor for ASRSchemaASREditMethod, &protocol conformance descriptor for ASRSchemaASREditMethod);
  sub_26738120C();
  v13(v5, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0x6874654D74696465, 0xEA0000000000646FLL);
  v15(v27, 0);
  type metadata accessor for ASRSchemaASREditReason(0);
  sub_266F4C0C0(&qword_2800EF3D8, type metadata accessor for ASRSchemaASREditReason, &protocol conformance descriptor for ASRSchemaASREditReason);
  sub_26738120C();
  v13(v5, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v5, 0x7361655274696465, 0xEA00000000006E6FLL);
  v16(v27, 0);
  (v23)(v24, v20, v25);
  v27[0] = 1;
  sub_26738114C();
  v13(v5, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x800000026742BF70);
  return v17(v27, 0);
}

uint64_t sub_266F4BFFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4C060(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F4C0C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static DODMLASRSchemaDODMLASRConfusionPairTier1.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *(v1 + 104);
  v32 = *MEMORY[0x277D3E530];
  v33 = v1 + 104;
  v34 = v0;
  v31 = v7;
  v7(v3);
  v36[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v29 = *(v9 + 56);
  v30 = v9 + 56;
  v29(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741FB50);
  v10(v36, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v35, 0xD000000000000010, 0x800000026741FB50);
  v28 = *(v9 + 48);
  if (!v28(v13, 1, v8))
  {
    sub_266ECB128(&unk_287884DE0);
    sub_26738115C();
  }

  (v12)(v35, 0);
  v11(v36, 0);
  v31(v3, v32, v34);
  v36[0] = 1;
  sub_26738114C();
  v29(v6, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x6574636572726F63, 0xEF736E656B6F5464);
  v14(v36, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v35, 0x6574636572726F63, 0xEF736E656B6F5464);
  if (!v28(v17, 1, v8))
  {
    sub_266ECB128(&unk_287884E08);
    sub_26738115C();
  }

  (v16)(v35, 0);
  v15(v36, 0);
  v31(v3, v32, v34);
  v36[0] = 1;
  sub_26738114C();
  v29(v6, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026742BFD0);
  v18(v36, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v35, 0xD000000000000010, 0x800000026742BFD0);
  if (!v28(v21, 1, v8))
  {
    sub_266ECB128(&unk_287884E30);
    sub_26738115C();
  }

  (v20)(v35, 0);
  v19(v36, 0);
  v31(v3, v32, v34);
  v36[0] = 1;
  sub_26738114C();
  v29(v6, 0, 1, v8);
  v22 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x800000026742BFF0);
  v22(v36, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v35, 0xD000000000000011, 0x800000026742BFF0);
  if (!v28(v25, 1, v8))
  {
    sub_266ECB128(&unk_287884E58);
    sub_26738115C();
  }

  (v24)(v35, 0);
  return v23(v36, 0);
}

uint64_t sub_266F4C84C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4C8B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F4C914()
{
  result = qword_2800F0508;
  if (!qword_2800F0508)
  {
    sub_266F4C96C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0508);
  }

  return result;
}

unint64_t sub_266F4C96C()
{
  result = qword_2800F0510;
  if (!qword_2800F0510)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0510);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRContextualReplayBiomeRecordCreated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C616E696769726FLL, 0xED00006449727341);
  v5(v7, 0);
  sub_266ECB128(&unk_287884E80);
  return sub_2673811CC();
}

uint64_t sub_266F4CBC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4CC28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRContextualReplayBiomeRecordDeleted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C616E696769726FLL, 0xED00006449727341);
  v5(v7, 0);
  sub_266ECB128(&unk_287884EB0);
  return sub_2673811CC();
}

uint64_t sub_266F4CED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4CF3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRDecodingMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v25 = sub_26738113C();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v27 = a2;
  sub_26738119C();
  LODWORD(v26) = *MEMORY[0x277D3E500];
  v28 = *(v3 + 104);
  v29 = v3 + 104;
  v28(v5);
  v31[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026742C0F0);
  v13(v31, 0);
  sub_266ECB294(0, &qword_2800EF4E0, 0x277D56960);
  sub_266ECAF2C(&qword_2800EF4D8, &qword_2800EF4E0, 0x277D56960, &protocol conformance descriptor for ASRSchemaASRInterpolationWeightBundle);
  sub_26738122C();
  v11(v8, 0, 1, v9);
  v24[1] = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x8000000267421950);
  v14(v31, 0);
  v24[0] = "recognizerComponents";
  v15 = v25;
  v16 = v28;
  (v28)(v5, v26, v25);
  v31[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, v24[0] | 0x8000000000000000);
  v17(v31, 0);
  v26 = "wallRealTimeFactor";
  v18 = *MEMORY[0x277D3E540];
  (v16)(v5, v18, v15);
  v31[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, v26 | 0x8000000000000000);
  v19(v31, 0);
  v26 = "jitQueryDurationInMs";
  (v28)(v5, v18, v15);
  v31[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000026, v26 | 0x8000000000000000);
  v20(v31, 0);
  v29 = "EnrollmentDurationInMs";
  sub_266ECB294(0, &qword_2800F0538, 0x277D570E8);
  sub_266ECAF2C(&qword_2800F0540, &qword_2800F0538, 0x277D570E8, &protocol conformance descriptor for DODMLASRSchemaDODMLASREntityCategoryCount);
  sub_26738122C();
  v11(v8, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, v29 | 0x8000000000000000);
  v21(v31, 0);
  sub_26738122C();
  v11(v8, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x800000026742C190);
  return v22(v31, 0);
}

uint64_t sub_266F4D714(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4D778(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRDecodingResult.makeTypeManifestAndEnsureFields(in:)(void (*a1)(char *, void, uint64_t, uint64_t))
{
  v2 = sub_26738113C();
  v29 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v27 = *(v3 + 104);
  v28 = v3 + 104;
  v27(v5, v9, v2);
  v31[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v24 = *(v10 - 8);
  v11 = *(v24 + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x614E6769666E6F63, 0xEA0000000000656DLL);
  v12(v31, 0);
  sub_266ECB294(0, &qword_2800EF4E8, 0x277D56AA0);
  sub_266ECAF2C(&qword_2800EF4F0, &qword_2800EF4E8, 0x277D56AA0, &protocol conformance descriptor for ASRSchemaASRToken);
  sub_26738122C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x736E656B6F74, 0xE600000000000000);
  v13(v31, 0);
  sub_266ECB294(0, &qword_2800F0558, 0x277D571A0);
  sub_266ECAF2C(&qword_2800F0560, &qword_2800F0558, 0x277D571A0, &protocol conformance descriptor for DODMLASRSchemaDODMLASRUtteranceInfo);
  v25 = a1;
  sub_26738122C();
  v11(v8, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x636E617265747475, 0xEA00000000007365);
  v14(v31, 0);
  sub_266ECB294(0, &qword_2800F0550, 0x277D570D8);
  sub_266ECAF2C(&qword_2800F0548, &qword_2800F0550, 0x277D570D8, &protocol conformance descriptor for DODMLASRSchemaDODMLASRDecodingMetrics);
  sub_26738120C();
  v11(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x676E69646F636564, 0xEF7363697274654DLL);
  v15(v31, 0);
  v27(v5, *MEMORY[0x277D3E540], v29);
  v31[0] = 1;
  v26 = v5;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026742C200);
  v16(v31, 0);
  sub_266ECB294(0, &qword_2800F04A0, 0x277D57098);
  sub_266ECAF2C(&qword_2800F0498, &qword_2800F04A0, 0x277D57098, &protocol conformance descriptor for DODMLASRSchemaDODMLASRAlignmentInfo);
  sub_26738122C();
  v11(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656D6E67696C61, 0xEA00000000007374);
  v17(v31, 0);
  sub_266ECB294(0, &qword_2800F0568, 0x277D570F8);
  sub_266ECAF2C(&qword_2800F0570, &qword_2800F0568, 0x277D570F8, &protocol conformance descriptor for DODMLASRSchemaDODMLASREntityScoringResult);
  sub_26738122C();
  v25 = v11;
  v11(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026742C220);
  v18(v31, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v30, 0xD000000000000012, 0x800000026742C220);
  if (!(*(v24 + 48))(v21, 1, v10))
  {
    sub_266ECB128(&unk_287884EE0);
    sub_26738115C();
  }

  (v20)(v30, 0);
  v19(v31, 0);
  v27(v26, *MEMORY[0x277D3E538], v29);
  v31[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x800000026742C240);
  return v22(v31, 0);
}

uint64_t sub_266F4E0E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4E148(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASREntityCategoryCount.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v15[1] = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E530], v2);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6143797469746E65, 0xEE0079726F676574);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E538], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E756F63, 0xE500000000000000);
  return v13(v16, 0);
}

uint64_t sub_266F4E514(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4E578(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F4E5DC()
{
  result = qword_2800F0540;
  if (!qword_2800F0540)
  {
    sub_266F4E634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0540);
  }

  return result;
}

unint64_t sub_266F4E634()
{
  result = qword_2800F0538;
  if (!qword_2800F0538)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0538);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASREntityScore.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v19 = v1;
  v20 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ASRSchemaASREntityTaggerCategory(0);
  sub_266F4EB9C(&qword_2800EF438, type metadata accessor for ASRSchemaASREntityTaggerCategory, &protocol conformance descriptor for ASRSchemaASREntityTaggerCategory);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v18 = v9;
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x8000000267421370);
  v10(v21, 0);
  v17 = "iri.dodml.DODMLASREntityScore";
  v11 = *MEMORY[0x277D3E538];
  v12 = v19;
  v13 = *(v20 + 104);
  v20 += 104;
  v13(v4, v11, v19);
  v21[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, v17 | 0x8000000000000000);
  v14(v21, 0);
  v13(v4, v11, v12);
  v21[0] = 1;
  sub_26738114C();
  v18(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x7469746E456D756ELL, 0xEF73726F72724579);
  return v15(v21, 0);
}

uint64_t sub_266F4EA90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4EAF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F4EB9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F4EBE4()
{
  result = qword_2800F0580;
  if (!qword_2800F0580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0580);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASREntityScoringResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v13[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x636E657265666572, 0xED0000656D614E65);
  v10(v13, 0);
  sub_266ECB294(0, &qword_2800F0580, 0x277D570F0);
  sub_266ECAF2C(&qword_2800F0578, &qword_2800F0580, 0x277D570F0, &protocol conformance descriptor for DODMLASRSchemaDODMLASREntityScore);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6353797469746E65, 0xEC0000007365726FLL);
  return v11(v13, 0);
}

uint64_t sub_266F4EF74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4EFD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASREvaluationMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20[1] = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v20 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v20[0] = a2;
  sub_26738119C();
  v10 = *(v4 + 104);
  v10(v6, *MEMORY[0x277D3E500], v3);
  v21[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x6769655774736562, 0xEA00000000007468);
  v13(v21, 0);
  v10(v6, *MEMORY[0x277D3E540], v3);
  v21[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026742C370);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F0588, 0x277D57120);
  sub_266ECAF2C(&qword_2800F0590, &qword_2800F0588, 0x277D57120, &protocol conformance descriptor for DODMLASRSchemaDODMLASRLanguageModelMetrics);
  sub_26738122C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E69617274, 0xE500000000000000);
  v15(v21, 0);
  sub_26738122C();
  v12(v9, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 7759204, 0xE300000000000000);
  v16(v21, 0);
  sub_26738122C();
  v12(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 1953719668, 0xE400000000000000);
  v17(v21, 0);
  sub_26738122C();
  v12(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C616E7265747865, 0xE800000000000000);
  return v18(v21, 0);
}

uint64_t sub_266F4F5EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4F650(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C616E696769726FLL, 0xED00006449727341);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EF490, 0x277D56918);
  sub_266ECAF2C(&qword_2800EF488, &qword_2800EF490, 0x277D56918, &protocol conformance descriptor for ASRSchemaASRFullPayloadCorrectionContext);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001CLL, 0x800000026742C3E0);
  return v7(v9, 0);
}

uint64_t sub_266F4F9D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4FA34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF4B0, 0x277D56930);
  sub_266ECAF2C(&qword_2800EF4A8, &qword_2800EF4B0, 0x277D56930, &protocol conformance descriptor for ASRSchemaASRFullPayloadCorrectionInfoTier1);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x726569546F666E69, 0xE900000000000031);
  return v5(v7, 0);
}

uint64_t sub_266F4FCB0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF4B0, 0x277D56930);
  sub_266ECAF2C(&qword_2800EF4A8, &qword_2800EF4B0, 0x277D56930, &protocol conformance descriptor for ASRSchemaASRFullPayloadCorrectionInfoTier1);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x726569546F666E69, 0xE900000000000031);
  return v5(v7, 0);
}

uint64_t sub_266F4FE50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4FEB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v23 = v3;
  v24 = v4;
  MEMORY[0x28223BE20](v3);
  v22 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v21 = "rectionExperimentPostAnalysis";
  sub_266ECB294(0, &qword_2800F04A0, 0x277D57098);
  sub_266ECAF2C(&qword_2800F0498, &qword_2800F04A0, 0x277D57098, &protocol conformance descriptor for DODMLASRSchemaDODMLASRAlignmentInfo);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v21 | 0x8000000000000000);
  v11(v25, 0);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v20[1] = a2;
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x800000026742C4C0);
  v12(v25, 0);
  v13 = *MEMORY[0x277D3E538];
  v14 = v23;
  v15 = *(v24 + 104);
  v24 += 104;
  v16 = v22;
  v15(v22, v13, v23);
  v25[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x72726F4365757274, 0xEF736E6F69746365);
  v17(v25, 0);
  v15(v16, v13, v14);
  v25[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x7267655265757274, 0xEF736E6F69737365);
  return v18(v25, 0);
}

uint64_t sub_266F5040C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F50470(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRLanguageModelMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v47 = sub_26738113C();
  v3 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v42 = a2;
  sub_26738119C();
  v46 = "SRLanguageModelMetrics";
  v43 = *MEMORY[0x277D3E500];
  v9 = *(v3 + 104);
  v9(v5);
  v48[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v8, 0, 1, v10);
  v45 = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v46 | 0x8000000000000000);
  v14(v48, 0);
  v46 = "SREvaluationMetrics";
  v15 = v47;
  (v9)(v5, *MEMORY[0x277D3E540], v47);
  v48[0] = 1;
  sub_26738114C();
  v37 = v10;
  v12(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v46 | 0x8000000000000000);
  v16(v48, 0);
  LODWORD(v46) = *MEMORY[0x277D3E538];
  v9(v5);
  v40 = v9;
  v48[0] = 1;
  sub_26738114C();
  v41 = v13;
  v17 = v45;
  v45(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x72657474556D756ELL, 0xED00007365636E61);
  v18(v48, 0);
  (v9)(v5, v46, v15);
  v38 = v3 + 104;
  v48[0] = 1;
  sub_26738114C();
  v19 = v37;
  v17(v8, 0, 1, v37);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x7364726F576D756ELL, 0xE800000000000000);
  v20(v48, 0);
  v36 = "linearInterpolationWeight";
  v44 = v5;
  v21 = v46;
  v22 = v47;
  v23 = v40;
  (v40)(v5, v46, v47);
  v48[0] = 1;
  sub_26738114C();
  v24 = v45;
  v45(v8, 0, 1, v19);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v36 | 0x8000000000000000);
  v25(v48, 0);
  v36 = "numOutOfVocabularyWords";
  v23(v44, v21, v22);
  v48[0] = 1;
  sub_26738114C();
  v24(v8, 0, 1, v19);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v36 | 0x8000000000000000);
  v26(v48, 0);
  v36 = "numInvalidTokens";
  v27 = v47;
  v23(v44, v46, v47);
  v48[0] = 1;
  sub_26738114C();
  v24(v8, 0, 1, v19);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, v36 | 0x8000000000000000);
  v28(v48, 0);
  v29 = v44;
  v30 = v40;
  (v40)(v44, v43, v27);
  v48[0] = 1;
  sub_26738114C();
  v31 = v45;
  v45(v8, 0, 1, v19);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0x6978656C70726570, 0xEA00000000007974);
  v32(v48, 0);
  (v30)(v29, v43, v47);
  v48[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v19);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0x6978656C70726570, 0xED0000656E4F7974);
  v33(v48, 0);
  sub_266ECB294(0, &qword_2800F05D8, 0x277D57130);
  sub_266ECAF2C(&qword_2800F05E0, &qword_2800F05D8, 0x277D57130, &protocol conformance descriptor for DODMLASRSchemaDODMLASRNgramHits);
  sub_26738122C();
  v31(v8, 0, 1, v19);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0x7469486D6172676ELL, 0xE900000000000073);
  return v34(v48, 0);
}

uint64_t sub_266F50ED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F50F3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRModelMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v3 + 104);
  v10 = v2;
  v9(v5, *MEMORY[0x277D3E530], v2);
  v11 = v3 + 104;
  v48 = v9;
  v51[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v43 = *(v13 + 56);
  v14 = v13 + 56;
  v50 = v12;
  v43(v8, 0, 1, v12);
  v49 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x614E6769666E6F63, 0xEA0000000000656DLL);
  v15(v51, 0);
  v45 = *MEMORY[0x277D3E540];
  (v9)(v5);
  v51[0] = 1;
  sub_26738114C();
  v16 = v12;
  v17 = v43;
  v43(v8, 0, 1, v16);
  v18 = a1;
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026742C5E0);
  v19(v51, 0);
  v42 = "trainingDurationInMs";
  v20 = v45;
  v21 = v48;
  v48(v5, v45, v10);
  v47 = v11;
  v51[0] = 1;
  sub_26738114C();
  v17(v8, 0, 1, v50);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v42 | 0x8000000000000000);
  v22(v51, 0);
  v42 = "conversionDurationInMs";
  v23 = v10;
  v46 = v10;
  v21(v5, v20, v10);
  v51[0] = 1;
  sub_26738114C();
  v24 = v50;
  v25 = v43;
  v43(v8, 0, 1, v50);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v42 | 0x8000000000000000);
  v26(v51, 0);
  v21(v5, v45, v23);
  v51[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v24);
  v44 = v18;
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026742C370);
  v27(v51, 0);
  v45 = *MEMORY[0x277D3E538];
  v28 = v46;
  (v48)(v5);
  v51[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v24);
  v29 = v25;
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0x64724F6D6172676ELL, 0xEA00000000007265);
  v30(v51, 0);
  v42 = "optimizationDurationInMs";
  v31 = v48;
  v48(v5, *MEMORY[0x277D3E500], v28);
  v51[0] = 1;
  sub_26738114C();
  v32 = v50;
  v29(v8, 0, 1, v50);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v42 | 0x8000000000000000);
  v33(v51, 0);
  v42 = "residualAdaptationWeight";
  v34 = v45;
  v35 = v46;
  v31(v5, v45, v46);
  v51[0] = 1;
  sub_26738114C();
  v29(v8, 0, 1, v32);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v42 | 0x8000000000000000);
  v36(v51, 0);
  v31(v5, v34, v35);
  v51[0] = 1;
  sub_26738114C();
  v37 = v50;
  v29(v8, 0, 1, v50);
  v38 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x800000026742C680);
  v38(v51, 0);
  v48(v5, v45, v46);
  v51[0] = 1;
  sub_26738114C();
  v29(v8, 0, 1, v37);
  v39 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x800000026742C6A0);
  return v39(v51, 0);
}

uint64_t sub_266F51964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F519C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F51A2C()
{
  result = qword_2800F05E8;
  if (!qword_2800F05E8)
  {
    sub_266F51A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F05E8);
  }

  return result;
}

unint64_t sub_266F51A84()
{
  result = qword_2800F05F0;
  if (!qword_2800F05F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F05F0);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRNgramHits.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E538], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 1937009000, 0xE400000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F51D14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F51D78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F51DDC()
{
  result = qword_2800F05E0;
  if (!qword_2800F05E0)
  {
    sub_266F51E34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F05E0);
  }

  return result;
}

unint64_t sub_266F51E34()
{
  result = qword_2800F05D8;
  if (!qword_2800F05D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F05D8);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRPersonalizationExperimentContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F05F8, 0x277D57148);
  sub_266ECAF2C(&qword_2800F0600, &qword_2800F05F8, 0x277D57148, &protocol conformance descriptor for DODMLASRSchemaDODMLASRPersonalizationExperimentStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F0608, 0x277D57140);
  sub_266ECAF2C(&qword_2800F0610, &qword_2800F0608, 0x277D57140, &protocol conformance descriptor for DODMLASRSchemaDODMLASRPersonalizationExperimentEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
  sub_26738117C();
  v10 = sub_2673811BC();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_266ECAD54(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_266ECAD54((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v8, v21);
  return v10(v22, 0);
}

uint64_t sub_266F522CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F52330(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRPersonalizationExperimentEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v56 = *(v4 + 104);
  v11 = v3;
  v56(v6, v10, v3);
  v53 = v4 + 104;
  v60[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v48 = *(v12 - 8);
  v13 = (v48 + 56);
  v57 = *(v48 + 56);
  v51 = v12;
  v57(v9, 0, 1, v12);
  v14 = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x6B63617061746164, 0xEF6E6F6973726556);
  v15(v60, 0);
  v50 = "nExperimentEnded";
  v16 = *MEMORY[0x277D3E538];
  v17 = v11;
  v55 = v11;
  v18 = v11;
  v19 = v56;
  v56(v6, v16, v18);
  v60[0] = 1;
  sub_26738114C();
  v20 = v57;
  v57(v9, 0, 1, v12);
  v52 = v14;
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v50 | 0x8000000000000000);
  v21(v60, 0);
  v19(v6, v16, v17);
  v60[0] = 1;
  sub_26738114C();
  v22 = v51;
  v20(v9, 0, 1, v51);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026742C7B0);
  v23(v60, 0);
  v56(v6, *MEMORY[0x277D3E508], v55);
  v60[0] = 1;
  v47 = v6;
  sub_26738114C();
  v24 = v20;
  v20(v9, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x800000026742C7D0);
  v25(v60, 0);
  v26 = sub_266ECB294(0, &qword_2800F04C0, 0x277D570A0);
  v49 = sub_266ECAF2C(&qword_2800F04B8, &qword_2800F04C0, 0x277D570A0, &protocol conformance descriptor for DODMLASRSchemaDODMLASRAudioFileResult);
  v50 = v26;
  sub_26738122C();
  v27 = v22;
  v54 = v13;
  v24(v9, 0, 1, v22);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x800000026742C7F0);
  v28(v60, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v59, 0xD000000000000010, 0x800000026742C7F0);
  if (!(*(v48 + 48))(v31, 1, v27))
  {
    sub_266ECB128(&unk_287884F10);
    sub_26738115C();
  }

  (v30)(v59, 0);
  v29(v60, 0);
  sub_266ECB294(0, &qword_2800F0628, 0x277D57150);
  sub_266ECAF2C(&qword_2800F0630, &qword_2800F0628, 0x277D57150, &protocol conformance descriptor for DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics);
  sub_26738120C();
  v32 = v27;
  v33 = v57;
  v57(v9, 0, 1, v27);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000020, 0x800000026742C810);
  v34(v60, 0);
  v48 = "uageModelMetrics";
  v35 = *MEMORY[0x277D3E540];
  v36 = v47;
  v38 = v55;
  v37 = v56;
  v56(v47, v35, v55);
  v60[0] = 1;
  sub_26738114C();
  v33(v9, 0, 1, v32);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v48 | 0x8000000000000000);
  v39(v60, 0);
  v37(v36, v35, v38);
  v60[0] = 1;
  sub_26738114C();
  v40 = v51;
  v41 = v57;
  v57(v9, 0, 1, v51);
  v42 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x800000026742C860);
  v42(v60, 0);
  type metadata accessor for SISchemaDeviceThermalState(0);
  sub_266F52EC0();
  sub_26738120C();
  v41(v9, 0, 1, v40);
  v43 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026742C880);
  v43(v60, 0);
  sub_26738120C();
  v41(v9, 0, 1, v40);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C69466F69647561, 0xEF746C7573655265);
  return v44(v60, 0);
}

uint64_t sub_266F52DFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F52E60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F52EC0()
{
  result = qword_2800F0638;
  if (!qword_2800F0638)
  {
    type metadata accessor for SISchemaDeviceThermalState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0638);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRPersonalizationExperimentStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E4E8], v1);
  v13[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v10(v13, 0);
  type metadata accessor for SISchemaDeviceThermalState(0);
  sub_266F53388(&qword_2800F0638, type metadata accessor for SISchemaDeviceThermalState, &protocol conformance descriptor for SISchemaDeviceThermalState);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026742C880);
  return v11(v13, 0);
}

uint64_t sub_266F5327C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F532E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F53388(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F533D0()
{
  result = qword_2800F05F8;
  if (!qword_2800F05F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F05F8);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRPersonalizedLanguageModelMetrics.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_266F53918();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x61636F4C72657375, 0xEA0000000000656CLL);
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F0640, 0x277D57170);
  sub_266ECAF2C(&qword_2800F0648, &qword_2800F0640, 0x277D57170, &protocol conformance descriptor for DODMLASRSchemaDODMLASRTranscriptionMetrics);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x800000026742C940);
  v7(v11, 0);
  sub_266ECB294(0, &qword_2800F05F0, 0x277D57128);
  sub_266ECAF2C(&qword_2800F05E8, &qword_2800F05F0, 0x277D57128, &protocol conformance descriptor for DODMLASRSchemaDODMLASRModelMetrics);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x74654D6C65646F6DLL, 0xEC00000073636972);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F05A0, 0x277D57100);
  sub_266ECAF2C(&qword_2800F0598, &qword_2800F05A0, 0x277D57100, &protocol conformance descriptor for DODMLASRSchemaDODMLASREvaluationMetrics);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x800000026742C960);
  return v9(v11, 0);
}

uint64_t sub_266F53854(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F538B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F53918()
{
  result = qword_2800EEFA8;
  if (!qword_2800EEFA8)
  {
    type metadata accessor for SISchemaLocale(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EEFA8);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRResultInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17[1] = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v17 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v17[0] = a2;
  sub_26738119C();
  v10 = *(v4 + 104);
  v10(v6, *MEMORY[0x277D3E530], v3);
  v18[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D614E6567617473, 0xE900000000000065);
  v13(v18, 0);
  v10(v6, *MEMORY[0x277D3E4E8], v3);
  v18[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x656E67696C417369, 0xE900000000000064);
  v14(v18, 0);
  sub_266ECB294(0, &qword_2800F04F0, 0x277D570B0);
  sub_266ECAF2C(&qword_2800F04E8, &qword_2800F04F0, 0x277D570B0, &protocol conformance descriptor for DODMLASRSchemaDODMLASRChoiceInfo);
  sub_26738122C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x736563696F6863, 0xE700000000000000);
  return v15(v18, 0);
}

uint64_t sub_266F53DB0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F53E14(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRTokenInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v31 = v3;
  v32 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v26 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF4E8, 0x277D56AA0);
  sub_266ECAF2C(&qword_2800EF4F0, &qword_2800EF4E8, 0x277D56AA0, &protocol conformance descriptor for ASRSchemaASRToken);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v9, 0, 1, v10);
  v28 = v12;
  v29 = v13;
  v26[1] = a2;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656B6F74, 0xE500000000000000);
  v14(v33, 0);
  v15 = *MEMORY[0x277D3E500];
  v16 = v31;
  v17 = *(v32 + 104);
  v32 += 104;
  v30 = v15;
  v17(v6, v15, v31);
  v27 = v17;
  v33[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x63697473756F6361, 0xEC00000074736F43);
  v18(v33, 0);
  v26[0] = "iri.dodml.DODMLASRTokenInfo";
  v17(v6, v15, v16);
  v33[0] = 1;
  v19 = v6;
  sub_26738114C();
  v20 = v28;
  v28(v9, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v26[0] | 0x8000000000000000);
  v21(v33, 0);
  v22 = v27;
  v27(v19, *MEMORY[0x277D3E538], v16);
  v33[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F6B6361426D756ELL, 0xEB00000000736666);
  v23(v33, 0);
  v22(v19, v30, v31);
  v33[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v10);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026742CA00);
  return v24(v33, 0);
}

uint64_t sub_266F54458(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F544BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRTranscriptionMetrics.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0660, 0x277D57168);
  sub_266ECAF2C(&qword_2800F0668, &qword_2800F0660, 0x277D57168, &protocol conformance descriptor for DODMLASRSchemaDODMLASRTranscriptMetadata);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E69617274, 0xE500000000000000);
  v6(v11, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 7759204, 0xE300000000000000);
  v7(v11, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 1953719668, 0xE400000000000000);
  v8(v11, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C616E7265747865, 0xE800000000000000);
  return v9(v11, 0);
}

uint64_t sub_266F548D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F54934(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRTranscriptMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v62 = sub_26738113C();
  v2 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v51 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v59 = *MEMORY[0x277D3E538];
  v56 = *(v2 + 104);
  v56(v4);
  v57 = v2 + 104;
  v63[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v60 = v9 + 56;
  v10(v7, 0, 1, v8);
  v61 = a1;
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x800000026742CAA0);
  v11(v63, 0);
  v54 = "numDocumentsRejected";
  v12 = v59;
  v13 = v56;
  (v56)(v4, v59, v62);
  v63[0] = 1;
  sub_26738114C();
  v58 = v8;
  v55 = v10;
  v10(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, v54 | 0x8000000000000000);
  v14(v63, 0);
  v54 = "numSentencesRejected";
  v13(v4, v12, v62);
  v63[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, v54 | 0x8000000000000000);
  v15(v63, 0);
  v54 = "numDocumentsAccepted";
  v16 = v62;
  v13(v4, v12, v62);
  v17 = v13;
  v63[0] = 1;
  sub_26738114C();
  v18 = v58;
  v19 = v55;
  v55(v7, 0, 1, v58);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, v54 | 0x8000000000000000);
  v20(v63, 0);
  v52 = "numSentencesAccepted";
  v21 = v59;
  v17(v4, v59, v16);
  v22 = v17;
  v63[0] = 1;
  sub_26738114C();
  v19(v7, 0, 1, v18);
  v23 = sub_2673811AC();
  v54 = 0xD000000000000011;
  sub_266EC637C(v7, 0xD000000000000011, v52 | 0x8000000000000000);
  v23(v63, 0);
  v52 = "numTokensAccepted";
  v22(v4, v21, v62);
  v63[0] = 1;
  sub_26738114C();
  v24 = v58;
  v19(v7, 0, 1, v58);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000020, v52 | 0x8000000000000000);
  v25(v63, 0);
  v52 = "cabularyAccepted";
  v26 = v62;
  (v56)(v4, v21, v62);
  v63[0] = 1;
  sub_26738114C();
  v27 = v55;
  v55(v7, 0, 1, v24);
  v28 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, v52 | 0x8000000000000000);
  v28(v63, 0);
  v52 = "numDocumentsDictated";
  v53 = v4;
  v29 = v4;
  v30 = v26;
  v31 = v56;
  (v56)(v29, v21, v26);
  v63[0] = 1;
  sub_26738114C();
  v32 = v58;
  v27(v7, 0, 1, v58);
  v33 = sub_2673811AC();
  sub_266EC637C(v7, v54, v52 | 0x8000000000000000);
  v33(v63, 0);
  v52 = "numDocumentsTyped";
  v34 = v59;
  (v31)(v53, v59, v30);
  v63[0] = 1;
  sub_26738114C();
  v27(v7, 0, 1, v32);
  v35 = sub_2673811AC();
  sub_266EC637C(v7, v54, v52 | 0x8000000000000000);
  v35(v63, 0);
  v36 = v53;
  v37 = v62;
  (v31)(v53, v34, v62);
  v63[0] = 1;
  sub_26738114C();
  v27(v7, 0, 1, v32);
  v38 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656B6F546D756ELL, 0xEE00646570795473);
  v38(v63, 0);
  v54 = "numTokensDictated";
  v39 = v34;
  v40 = v37;
  (v31)(v36, v39, v37);
  v63[0] = 1;
  sub_26738114C();
  v41 = v58;
  v27(v7, 0, 1, v58);
  v42 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v54 | 0x8000000000000000);
  v42(v63, 0);
  v54 = "numSentencesMungeRejected";
  v43 = v59;
  (v31)(v36, v59, v40);
  v63[0] = 1;
  sub_26738114C();
  v27(v7, 0, 1, v41);
  v44 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, v54 | 0x8000000000000000);
  v44(v63, 0);
  v54 = "numSentencesMungeChanged";
  v45 = v62;
  v46 = v56;
  (v56)(v36, v43, v62);
  v63[0] = 1;
  sub_26738114C();
  v47 = v55;
  v55(v7, 0, 1, v41);
  v48 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, v54 | 0x8000000000000000);
  v48(v63, 0);
  (v46)(v36, v59, v45);
  v63[0] = 1;
  sub_26738114C();
  v47(v7, 0, 1, v58);
  v49 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x800000026742CC30);
  return v49(v63, 0);
}

uint64_t sub_266F556C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5572C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F55790()
{
  result = qword_2800F0668;
  if (!qword_2800F0668)
  {
    sub_266F557E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0668);
  }

  return result;
}

unint64_t sub_266F557E8()
{
  result = qword_2800F0660;
  if (!qword_2800F0660)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0660);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRUserEditExperimentContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0670, 0x277D57198);
  sub_266ECAF2C(&qword_2800F0678, &qword_2800F0670, 0x277D57198, &protocol conformance descriptor for DODMLASRSchemaDODMLASRUserEditExperimentStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F0680, 0x277D57180);
  sub_266ECAF2C(&qword_2800F0688, &qword_2800F0680, 0x277D57180, &protocol conformance descriptor for DODMLASRSchemaDODMLASRUserEditExperimentEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
  sub_26738117C();
  v10 = sub_2673811BC();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_266ECAD54(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_266ECAD54((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v8, v21);
  return v10(v22, 0);
}

uint64_t sub_266F55C80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F55CE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRUserEditExperimentEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = sub_26738113C();
  v28 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v30 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F06A0, 0x277D57190);
  sub_266ECAF2C(&qword_2800F06A8, &qword_2800F06A0, 0x277D57190, &protocol conformance descriptor for DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults);
  sub_26738122C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x800000026742CCD0);
  v10(v35, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v32 = v8 + 56;
  v29 = v9;
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496B6E696CLL, 0xE600000000000000);
  v11(v35, 0);
  v31 = a2;
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v34, 0x64496B6E696CLL, 0xE600000000000000);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_287884F38);
    sub_26738115C();
  }

  (v13)(v34, 0);
  v12(v35, 0);
  v27 = "nExperimentEnded";
  v15 = *MEMORY[0x277D3E538];
  v28 = *(v28 + 104);
  v16 = v30;
  v17 = v33;
  (v28)(v30, v15, v33);
  v35[0] = 1;
  sub_26738114C();
  v18 = v7;
  v19 = v7;
  v20 = v29;
  v29(v6, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, v27 | 0x8000000000000000);
  v21(v35, 0);
  v27 = "numAudioFilesAvailable";
  v22 = v28;
  (v28)(v16, v15, v17);
  v35[0] = 1;
  sub_26738114C();
  v20(v6, 0, 1, v18);
  v23 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, v27 | 0x8000000000000000);
  v23(v35, 0);
  v22(v16, *MEMORY[0x277D3E508], v33);
  v35[0] = 1;
  sub_26738114C();
  v20(v6, 0, 1, v18);
  v24 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v24(v35, 0);
}

uint64_t sub_266F563F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5645C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRUserEditExperimentEndedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F0510, 0x277D570C0);
  sub_266ECAF2C(&qword_2800F0508, &qword_2800F0510, 0x277D570C0, &protocol conformance descriptor for DODMLASRSchemaDODMLASRConfusionPairTier1);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F697375666E6F63, 0xEE0073726961506ELL);
  return v7(v9, 0);
}

uint64_t sub_266F567D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F56834(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRUserEditExperimentRedecodingResults.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v20 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v19[1] = v3 + 104;
  v21 = v10;
  v10(v5, v9, v2);
  v22[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6B63617061746164, 0xEF6E6F6973726556);
  v13(v22, 0);
  sub_266ECB294(0, &qword_2800F0500, 0x277D570B8);
  sub_266ECAF2C(&qword_2800F04F8, &qword_2800F0500, 0x277D570B8, &protocol conformance descriptor for DODMLASRSchemaDODMLASRConfusionPair);
  v19[0] = a1;
  sub_26738122C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F697375666E6F63, 0xEE0073726961506ELL);
  v14(v22, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v12(v8, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449727361, 0xE500000000000000);
  v15(v22, 0);
  v21(v5, *MEMORY[0x277D3E508], v20);
  v22[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  v16(v22, 0);
  sub_26738120C();
  v12(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496B6E696CLL, 0xE600000000000000);
  return v17(v22, 0);
}

uint64_t sub_266F56E3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F56EA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLASRSchemaDODMLASRUserEditExperimentStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F5718C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F571F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F57254()
{
  result = qword_2800F0678;
  if (!qword_2800F0678)
  {
    sub_266F572AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0678);
  }

  return result;
}

unint64_t sub_266F572AC()
{
  result = qword_2800F0670;
  if (!qword_2800F0670)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0670);
  }

  return result;
}

uint64_t static DODMLASRSchemaDODMLASRUtteranceInfo.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v16 = v1;
  v17 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0658, 0x277D57158);
  sub_266ECAF2C(&qword_2800F0650, &qword_2800F0658, 0x277D57158, &protocol conformance descriptor for DODMLASRSchemaDODMLASRResultInfo);
  sub_26738122C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x73746C75736572, 0xE700000000000000);
  v10(v18, 0);
  v11 = *MEMORY[0x277D3E540];
  v12 = *(v17 + 104);
  v17 += 104;
  v12(v4, v11, v16);
  v18[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D69547472617473, 0xED0000734E6E4965);
  v13(v18, 0);
  v12(v4, v11, v16);
  v18[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x49656D6954646E65, 0xEB00000000734E6ELL);
  return v14(v18, 0);
}

uint64_t sub_266F576FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F57760(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DODMLSchemaDODMLClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x28223BE20](v4);
  v46 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v44 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F06C0, 0x277D571B0);
  sub_266ECAF2C(&qword_2800F06C8, &qword_2800F06C0, 0x277D571B0, &protocol conformance descriptor for DODMLSchemaDODMLClientEventMetadata);
  sub_26738120C();
  v9 = sub_26738116C();
  v52 = *(v9 - 8);
  v10 = v52 + 56;
  v11 = *(v52 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v12(v55, 0);
  sub_266ECB294(0, &qword_2800F0620, 0x277D57138);
  sub_266ECAF2C(&qword_2800F0618, &qword_2800F0620, 0x277D57138, &protocol conformance descriptor for DODMLASRSchemaDODMLASRPersonalizationExperimentContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x800000026742CE20);
  v13(v55, 0);
  sub_266ECB294(0, &qword_2800F0698, 0x277D57178);
  sub_266ECAF2C(&qword_2800F0690, &qword_2800F0698, 0x277D57178, &protocol conformance descriptor for DODMLASRSchemaDODMLASRUserEditExperimentContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026742CE50);
  v14(v55, 0);
  sub_266ECB294(0, &qword_2800F06B8, 0x277D57188);
  sub_266ECAF2C(&qword_2800F06B0, &qword_2800F06B8, 0x277D57188, &protocol conformance descriptor for DODMLASRSchemaDODMLASRUserEditExperimentEndedTier1);
  v49 = a1;
  sub_26738121C();
  v50 = v10;
  v51 = v11;
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x800000026742CE70);
  v15(v55, 0);
  v53 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v54, 0xD00000000000001CLL, 0x800000026742CE70);
  v18 = *(v52 + 48);
  v52 += 48;
  if (!v18(v19, 1, v9))
  {
    sub_266ECB128(&unk_287884F60);
    sub_26738115C();
  }

  (v17)(v54, 0);
  v16(v55, 0);
  sub_266ECB294(0, &qword_2800F04D0, 0x277D570A8);
  sub_266ECAF2C(&qword_2800F04C8, &qword_2800F04D0, 0x277D570A8, &protocol conformance descriptor for DODMLASRSchemaDODMLASRAudioFileResultTier1);
  sub_26738121C();
  v51(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026742CE90);
  v20(v55, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v54, 0xD000000000000014, 0x800000026742CE90);
  v24 = v18(v23, 1, v9);
  v45 = v18;
  if (!v24)
  {
    sub_266ECB128(&unk_287884F88);
    sub_26738115C();
  }

  (v22)(v54, 0);
  v21(v55, 0);
  sub_266ECB294(0, &qword_2800F05B0, 0x277D57108);
  sub_266ECAF2C(&qword_2800F05A8, &qword_2800F05B0, 0x277D57108, &protocol conformance descriptor for DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentContext);
  sub_26738121C();
  v25 = v51;
  v51(v8, 0, 1, v9);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000026, 0x800000026742CEB0);
  v26(v55, 0);
  sub_266ECB294(0, &qword_2800F05C0, 0x277D57110);
  sub_266ECAF2C(&qword_2800F05B8, &qword_2800F05C0, 0x277D57110, &protocol conformance descriptor for DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentInfoTier1);
  sub_26738121C();
  v25(v8, 0, 1, v9);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000024, 0x800000026742CEE0);
  v27(v55, 0);
  v28 = sub_2673811AC();
  v29 = sub_266ECB6CC(v54, 0xD000000000000024, 0x800000026742CEE0);
  if (!v45(v30, 1, v9))
  {
    sub_266ECB128(&unk_287884FB0);
    sub_26738115C();
  }

  (v29)(v54, 0);
  v28(v55, 0);
  sub_266ECB294(0, &qword_2800F05D0, 0x277D57118);
  sub_266ECAF2C(&qword_2800F05C8, &qword_2800F05D0, 0x277D57118, &protocol conformance descriptor for DODMLASRSchemaDODMLASRFullPayloadCorrectionExperimentPostAnalysis);
  sub_26738121C();
  v31 = v51;
  v51(v8, 0, 1, v9);
  v44 = v9;
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002BLL, 0x800000026742CF10);
  v32(v55, 0);
  sub_266ECB294(0, &qword_2800F0520, 0x277D570C8);
  sub_266ECAF2C(&qword_2800F0518, &qword_2800F0520, 0x277D570C8, &protocol conformance descriptor for DODMLASRSchemaDODMLASRContextualReplayBiomeRecordCreated);
  sub_26738121C();
  v31(v8, 0, 1, v9);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x800000026742CF40);
  v33(v55, 0);
  sub_266ECB294(0, &qword_2800F0530, 0x277D570D0);
  sub_266ECAF2C(&qword_2800F0528, &qword_2800F0530, 0x277D570D0, &protocol conformance descriptor for DODMLASRSchemaDODMLASRContextualReplayBiomeRecordDeleted);
  sub_26738121C();
  v31(v8, 0, 1, v44);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x800000026742CF70);
  v34(v55, 0);
  v35 = v46;
  sub_26738117C();
  v36 = sub_2673811BC();
  v38 = v37;
  v39 = *v37;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v38 = v39;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v39 = sub_266ECAD54(0, v39[2] + 1, 1, v39);
    *v38 = v39;
  }

  v42 = v39[2];
  v41 = v39[3];
  if (v42 >= v41 >> 1)
  {
    v39 = sub_266ECAD54((v41 > 1), v42 + 1, 1, v39);
    *v38 = v39;
  }

  v39[2] = v42 + 1;
  (*(v47 + 32))(v39 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v42, v35, v48);
  v36(v55, 0);
  sub_266ECB128(&unk_287884FD8);
  return sub_2673811CC();
}

uint64_t sub_266F58500(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F58598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F58664(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F586C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F58728(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F06D0, &qword_2800F06D8, 0x277D571A8, &protocol conformance descriptor for DODMLSchemaDODMLClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F06E0, &qword_2800F06D8, 0x277D571A8, &protocol conformance descriptor for DODMLSchemaDODMLClientEvent);
  result = sub_266ECAF2C(&qword_2800F06E8, &qword_2800F06D8, 0x277D571A8, &protocol conformance descriptor for DODMLSchemaDODMLClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static DODMLSchemaDODMLClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = sub_26738113C();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v10 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v31 = v9;
  v32 = a1;
  v30 = v10;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v35 = *(v12 + 56);
  v36 = v12 + 56;
  v35(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496C4D646F64, 0xE700000000000000);
  v13(v39, 0);
  v34 = a2;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v38, 0x64496C4D646F64, 0xE700000000000000);
  if (!(*(v12 + 48))(v16, 1, v11))
  {
    sub_266ECB128(&unk_287885010);
    sub_26738115C();
  }

  (v15)(v38, 0);
  v14(v39, 0);
  v17 = *MEMORY[0x277D3E530];
  v18 = *(v4 + 104);
  v19 = v33;
  v20 = v37;
  v18(v33, v17, v37);
  v29 = v18;
  v39[0] = 1;
  sub_26738114C();
  v28 = v11;
  v35(v8, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D697265707865, 0xEE00656D614E746ELL);
  v21(v39, 0);
  v18(v19, v17, v20);
  v39[0] = 1;
  sub_26738114C();
  v22 = v28;
  v23 = v35;
  v35(v8, 0, 1, v28);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026742CFE0);
  v24(v39, 0);
  sub_26738120C();
  v23(v8, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026742D000);
  v25(v39, 0);
  v29(v19, *MEMORY[0x277D3E510], v37);
  v39[0] = 1;
  sub_26738114C();
  v23(v8, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026742D020);
  return v26(v39, 0);
}

uint64_t sub_266F58E40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F58EA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DonationSchemaSDASRTask.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000011, 0x800000026742D070, isUniquelyReferenced_nonNull_native);
  *v3 = v42;

  v1(v52, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x800000026742D090, v8);
  *v7 = v43;

  v5(v52, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x800000026742D0B0, v12);
  *v11 = v44;

  v9(v52, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x800000026742D0D0, v16);
  *v15 = v45;

  v13(v52, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000010, 0x800000026742D0F0, v20);
  *v19 = v46;

  v17(v52, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x800000026742D110, v24);
  *v23 = v47;

  v21(v52, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000016, 0x800000026742D130, v28);
  *v27 = v48;

  v25(v52, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000013, 0x800000026742D150, v32);
  *v31 = v49;

  v29(v52, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000015, 0x800000026742D170, v36);
  *v35 = v50;

  v33(v52, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000011, 0x800000026742D190, v40);
  *v39 = v51;

  return v37(v52, 0);
}

uint64_t sub_266F59480(uint64_t a1)
{
  v2 = sub_266F59584(&qword_2800F0700, &protocol conformance descriptor for DonationSchemaSDASRTask);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F594E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F59584(&qword_2800F0700, &protocol conformance descriptor for DonationSchemaSDASRTask);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F59584(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DonationSchemaSDASRTask(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DonationSchemaSDAudioCaptureDevice.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001CLL, 0x800000026742D1E0, isUniquelyReferenced_nonNull_native);
  *v3 = v54;

  v1(v67, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026742D200, v8);
  *v7 = v55;

  v5(v67, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026742D220, v12);
  *v11 = v56;

  v9(v67, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x800000026742D250, v16);
  *v15 = v57;

  v13(v67, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x800000026742D280, v20);
  *v19 = v58;

  v17(v67, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000026, 0x800000026742D2B0, v24);
  *v23 = v59;

  v21(v67, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001CLL, 0x800000026742D2E0, v28);
  *v27 = v60;

  v25(v67, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000031, 0x800000026742D300, v32);
  *v31 = v61;

  v29(v67, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000037, 0x800000026742D340, v36);
  *v35 = v62;

  v33(v67, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000036, 0x800000026742D380, v40);
  *v39 = v63;

  v37(v67, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000003CLL, 0x800000026742D3C0, v44);
  *v43 = v64;

  v41(v67, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ELL, 0x800000026742D400, v48);
  *v47 = v65;

  v45(v67, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000023, 0x800000026742D420, v52);
  *v51 = v66;

  return v49(v67, 0);
}

uint64_t sub_266F59C40(uint64_t a1)
{
  v2 = sub_266F59D44(&qword_2800F0710, &protocol conformance descriptor for DonationSchemaSDAudioCaptureDevice);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F59CA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F59D44(&qword_2800F0710, &protocol conformance descriptor for DonationSchemaSDAudioCaptureDevice);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F59D44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DonationSchemaSDAudioCaptureDevice(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DonationSchemaSDSpeechAttribute.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000019, 0x800000026742D480, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x800000026742D4A0, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_266F59F2C(uint64_t a1)
{
  v2 = sub_266F5A030(&qword_2800F0720, &protocol conformance descriptor for DonationSchemaSDSpeechAttribute);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F59F94(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F5A030(&qword_2800F0720, &protocol conformance descriptor for DonationSchemaSDSpeechAttribute);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F5A030(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DonationSchemaSDSpeechAttribute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DonationSchemaSDSpeechDonationEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = a1;
  v1 = sub_26738118C();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0728, 0x277D57218);
  sub_266ECAF2C(&qword_2800F0730, &qword_2800F0728, 0x277D57218, &protocol conformance descriptor for DonationSchemaSDSpeechDonationEventMetaData);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174614461);
  v9(v28, 0);
  sub_266ECB294(0, &qword_2800F0738, 0x277D57220);
  sub_266ECAF2C(&qword_2800F0740, &qword_2800F0738, 0x277D57220, &protocol conformance descriptor for DonationSchemaSDSpeechSampleDonation);
  sub_26738121C();
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x800000026742D4F0);
  v10(v28, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v27, 0xD000000000000014, 0x800000026742D4F0);
  if (!(*(v7 + 48))(v13, 1, v6))
  {
    sub_266ECB128(&unk_287885038);
    sub_26738115C();
  }

  (v12)(v27, 0);
  v11(v28, 0);
  v14 = v24;
  sub_26738117C();
  v15 = sub_2673811BC();
  v17 = v16;
  v18 = *v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_266ECAD54(0, v18[2] + 1, 1, v18);
    *v17 = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_266ECAD54((v20 > 1), v21 + 1, 1, v18);
    *v17 = v18;
  }

  v18[2] = v21 + 1;
  (*(v25 + 32))(v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, v14, v26);
  v15(v28, 0);
  sub_266ECB128(&unk_287885060);
  return sub_2673811CC();
}

uint64_t sub_266F5A54C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F5A5E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F5A6B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5A714(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F5A774(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F0748, &qword_2800F0750, 0x277D57210, &protocol conformance descriptor for DonationSchemaSDSpeechDonationEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F0758, &qword_2800F0750, 0x277D57210, &protocol conformance descriptor for DonationSchemaSDSpeechDonationEvent);
  result = sub_266ECAF2C(&qword_2800F0760, &qword_2800F0750, 0x277D57210, &protocol conformance descriptor for DonationSchemaSDSpeechDonationEvent);
  a1[3] = result;
  return result;
}

uint64_t static DonationSchemaSDSpeechDonationEventMetaData.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x28223BE20](v2);
  v18 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v17 = a1;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 1682531443, 0xE400000000000000);
  v10(v22, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v21, 1682531443, 0xE400000000000000);
  if (!(*(v8 + 48))(v13, 1, v7))
  {
    sub_266ECB128(&unk_287885090);
    sub_26738115C();
  }

  (v12)(v21, 0);
  v11(v22, 0);
  type metadata accessor for SISchemaDeviceFamily(0);
  sub_266F5ADA4();
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x7954656369766564, 0xEA00000000006570);
  v14(v22, 0);
  (*(v19 + 104))(v18, *MEMORY[0x277D3E530], v20);
  v22[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x75426D6574737973, 0xEB00000000646C69);
  return v15(v22, 0);
}

uint64_t sub_266F5ACE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5AD44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F5ADA4()
{
  result = qword_2800F0770;
  if (!qword_2800F0770)
  {
    type metadata accessor for SISchemaDeviceFamily(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0770);
  }

  return result;
}

uint64_t static DonationSchemaSDSpeechSampleDonation.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = sub_26738113C();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v38 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v41 = sub_26738116C();
  v8 = *(v41 - 8);
  v9 = *(v8 + 56);
  v10 = v8 + 56;
  v9(v7, 0, 1, v41);
  v33 = v9;
  v37 = a2;
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F6974616E6F64, 0xEA00000000004449);
  v11(v42, 0);
  v36 = *MEMORY[0x277D3E530];
  v12 = *(v3 + 104);
  v13 = v40;
  v12(v38);
  v34 = v12;
  v35 = v3 + 104;
  v42[0] = 1;
  sub_26738114C();
  v14 = v41;
  v9(v7, 0, 1, v41);
  v15 = v10;
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E7542726F6E6F64, 0xED00004449656C64);
  v16(v42, 0);
  v17 = v38;
  (v12)(v38, *MEMORY[0x277D3E540], v13);
  v42[0] = 1;
  sub_26738114C();
  v18 = v33;
  v33(v7, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x4465727574706163, 0xEB00000000657461);
  v19(v42, 0);
  type metadata accessor for DonationSchemaSDSpeechAttribute(0);
  sub_266F5B888(&qword_2800F0718, type metadata accessor for DonationSchemaSDSpeechAttribute, &protocol conformance descriptor for DonationSchemaSDSpeechAttribute);
  sub_26738122C();
  v18(v7, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x7475626972747461, 0xEA00000000007365);
  v20(v42, 0);
  type metadata accessor for DonationSchemaSDAudioCaptureDevice(0);
  sub_266F5B888(&qword_2800F0708, type metadata accessor for DonationSchemaSDAudioCaptureDevice, &protocol conformance descriptor for DonationSchemaSDAudioCaptureDevice);
  sub_26738120C();
  v18(v7, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026742D580);
  v21(v42, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_266F5B888(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v18(v7, 0, 1, v14);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0x656C61636F6CLL, 0xE600000000000000);
  v22(v42, 0);
  type metadata accessor for DonationSchemaSDASRTask(0);
  sub_266F5B888(&qword_2800F06F8, type metadata accessor for DonationSchemaSDASRTask, &protocol conformance descriptor for DonationSchemaSDASRTask);
  sub_26738120C();
  v18(v7, 0, 1, v14);
  v32 = v15;
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0x6B736154727361, 0xE700000000000000);
  v23(v42, 0);
  v24 = v36;
  v25 = v40;
  v26 = v34;
  (v34)(v17, v36, v40);
  v42[0] = 1;
  sub_26738114C();
  v18(v7, 0, 1, v41);
  v27 = sub_2673811AC();
  sub_266EC637C(v7, 0x697263736E617274, 0xED00006E6F697470);
  v27(v42, 0);
  v26(v17, v24, v25);
  v42[0] = 1;
  sub_26738114C();
  v28 = v41;
  v18(v7, 0, 1, v41);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0x6465746365707865, 0xE800000000000000);
  v29(v42, 0);
  type metadata accessor for DonationSchemaSDTranscriptionEvaluation(0);
  sub_266F5B888(&qword_2800F0778, type metadata accessor for DonationSchemaSDTranscriptionEvaluation, &protocol conformance descriptor for DonationSchemaSDTranscriptionEvaluation);
  sub_26738120C();
  v18(v7, 0, 1, v28);
  v30 = sub_2673811AC();
  sub_266EC637C(v7, 0x697461756C617665, 0xEA00000000006E6FLL);
  return v30(v42, 0);
}

uint64_t sub_266F5B7C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5B828(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F5B888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static DonationSchemaSDTranscriptionEvaluation.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000021, 0x800000026742D5E0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026742D610, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026742D640, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266F5BB28(uint64_t a1)
{
  v2 = sub_266F5BC2C(&qword_2800F0780, &protocol conformance descriptor for DonationSchemaSDTranscriptionEvaluation);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F5BB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F5BC2C(&qword_2800F0780, &protocol conformance descriptor for DonationSchemaSDTranscriptionEvaluation);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F5BC2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DonationSchemaSDTranscriptionEvaluation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DUSchemaDUContent.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4F8], v0);
  v15[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6C79615061746164, 0xEB0000000064616FLL);
  v9(v15, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v14, 0x6C79615061746164, 0xEB0000000064616FLL);
  if (!(*(v8 + 48))(v12, 1, v7))
  {
    sub_266ECB128(&unk_2878850B8);
    sub_26738115C();
  }

  (v11)(v14, 0);
  v10(v15, 0);
  sub_266ECB128(&unk_2878850E0);
  return sub_2673811CC();
}

uint64_t sub_266F5BF94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5BFF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F5C05C()
{
  result = qword_2800F0788;
  if (!qword_2800F0788)
  {
    sub_266F5C0B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0788);
  }

  return result;
}

unint64_t sub_266F5C0B4()
{
  result = qword_2800F0790;
  if (!qword_2800F0790)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0790);
  }

  return result;
}

uint64_t static DUSchemaDUEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v36 = *(v2 - 8);
  v37 = v2;
  MEMORY[0x28223BE20](v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0798, 0x277D571C8);
  sub_266ECAF2C(&qword_2800F07A0, &qword_2800F0798, 0x277D571C8, &protocol conformance descriptor for DUSchemaDUEventMetadata);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x617461646174656DLL, 0xE800000000000000);
  v10(v39, 0);
  sub_266ECB294(0, &qword_2800F0790, 0x277D571B8);
  sub_266ECAF2C(&qword_2800F0788, &qword_2800F0790, 0x277D571B8, &protocol conformance descriptor for DUSchemaDUContent);
  v34 = a1;
  sub_26738120C();
  v33 = v9;
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x746E65746E6F63, 0xE700000000000000);
  v11(v39, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v38, 0x746E65746E6F63, 0xE700000000000000);
  v31 = *(v8 + 48);
  v32 = v8 + 48;
  if (!v31(v14, 1, v7))
  {
    sub_266ECB128(&unk_287885110);
    sub_26738115C();
  }

  (v13)(v38, 0);
  v12(v39, 0);
  sub_266ECB294(0, &qword_2800F07A8, 0x277D571E0);
  sub_266ECAF2C(&qword_2800F07B0, &qword_2800F07A8, 0x277D571E0, &protocol conformance descriptor for DUSchemaDUSpeechAudioRecord);
  sub_26738121C();
  v15 = v33;
  v33(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x800000026742D6D0);
  v16(v39, 0);
  sub_266ECB294(0, &qword_2800F07B8, 0x277D571D8);
  sub_266ECAF2C(&qword_2800F07C0, &qword_2800F07B8, 0x277D571D8, &protocol conformance descriptor for DUSchemaDUSearchSessionRecord);
  sub_26738121C();
  v15(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x800000026742D6F0);
  v17(v39, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v38, 0xD000000000000013, 0x800000026742D6F0);
  if (!v31(v20, 1, v7))
  {
    sub_266ECB128(&unk_287885138);
    sub_26738115C();
  }

  (v19)(v38, 0);
  v18(v39, 0);
  v21 = v35;
  sub_26738117C();
  v22 = sub_2673811BC();
  v24 = v23;
  v25 = *v23;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v25;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v25 = sub_266ECAD54(0, v25[2] + 1, 1, v25);
    *v24 = v25;
  }

  v28 = v25[2];
  v27 = v25[3];
  if (v28 >= v27 >> 1)
  {
    v25 = sub_266ECAD54((v27 > 1), v28 + 1, 1, v25);
    *v24 = v25;
  }

  v25[2] = v28 + 1;
  (*(v36 + 32))(v25 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v28, v21, v37);
  v22(v39, 0);
  sub_266ECB128(&unk_287885168);
  return sub_2673811CC();
}

uint64_t sub_266F5C818(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F5C8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F5C97C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5C9E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F5CA40(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F07C8, &qword_2800F07D0, 0x277D571C0, &protocol conformance descriptor for DUSchemaDUEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F07D8, &qword_2800F07D0, 0x277D571C0, &protocol conformance descriptor for DUSchemaDUEvent);
  result = sub_266ECAF2C(&qword_2800F07E0, &qword_2800F07D0, 0x277D571C0, &protocol conformance descriptor for DUSchemaDUEvent);
  a1[3] = result;
  return result;
}

uint64_t static DUSchemaDUEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6564497465737361, 0xEF7265696669746ELL);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6564497465737361, 0xEF7265696669746ELL);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878851A0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  v7(v12, 0);
  sub_266ECB128(&unk_2878851C8);
  return sub_2673811CC();
}

uint64_t sub_266F5CE04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5CE68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DUSchemaDUResponse.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for DUSchemaDUResponseStatus(0);
  sub_266F5D260();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x737574617473, 0xE600000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6564497465737361, 0xEF7265696669746ELL);
  return v7(v9, 0);
}

uint64_t sub_266F5D19C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5D200(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F5D260()
{
  result = qword_2800F07F0;
  if (!qword_2800F07F0)
  {
    type metadata accessor for DUSchemaDUResponseStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F07F0);
  }

  return result;
}

uint64_t static DUSchemaDUResponseStatus.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0x53534543435553, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0x44454C494146, 0xE600000000000000, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_266F5D488(uint64_t a1)
{
  v2 = sub_266F5D58C(&qword_2800F0808, &protocol conformance descriptor for DUSchemaDUResponseStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F5D4F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F5D58C(&qword_2800F0808, &protocol conformance descriptor for DUSchemaDUResponseStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F5D58C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DUSchemaDUResponseStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DUSchemaDUSearchSessionRecord.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13 = sub_26738113C();
  v1 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v12 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x496E6F6973736573, 0xE900000000000064);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E540], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x800000026742D7D0);
  v10(v14, 0);
  sub_266ECB128(&unk_2878851F8);
  return sub_2673811CC();
}

uint64_t sub_266F5D920(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5D984(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DUSchemaDUSpeechAudioRecord.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a1;
  v3 = sub_26738113C();
  v41 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v32 = a2;
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  v44[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v42 = *(v12 - 8);
  v14 = v42 + 56;
  v13 = *(v42 + 56);
  v13(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x65676175676E616CLL, 0xE800000000000000);
  v15(v44, 0);
  v33 = v10;
  v36 = v11;
  v37 = v4 + 104;
  v11(v6, v10, v41);
  v44[0] = 1;
  v38 = v6;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6365646F63, 0xE500000000000000);
  v16(v44, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v39 = v13;
  v40 = v14;
  v13(v9, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x7463617265746E69, 0xED000064496E6F69);
  v17(v44, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v43, 0x7463617265746E69, 0xED000064496E6F69);
  v20 = *(v42 + 48);
  v42 += 48;
  v34 = v20;
  if (!v20(v21, 1, v12))
  {
    sub_266ECB128(&unk_287885230);
    sub_26738115C();
  }

  (v19)(v43, 0);
  v18(v44, 0);
  sub_26738120C();
  v39(v9, 0, 1, v12);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449686365657073, 0xE800000000000000);
  v22(v44, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v43, 0x6449686365657073, 0xE800000000000000);
  if (!v34(v25, 1, v12))
  {
    sub_266ECB128(&unk_287885258);
    sub_26738115C();
  }

  (v24)(v43, 0);
  v23(v44, 0);
  v36(v38, v33, v41);
  v44[0] = 1;
  sub_26738114C();
  v39(v9, 0, 1, v12);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x6449686365657073, 0xEE00676E69727453);
  v26(v44, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v43, 0x6449686365657073, 0xEE00676E69727453);
  if (!v34(v29, 1, v12))
  {
    sub_266ECB128(&unk_287885288);
    sub_26738115C();
  }

  (v28)(v43, 0);
  v27(v44, 0);
  v36(v38, *MEMORY[0x277D3E540], v41);
  v44[0] = 1;
  sub_26738114C();
  v39(v9, 0, 1, v12);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x800000026742D820);
  v30(v44, 0);
  sub_266ECB128(&unk_2878852B8);
  return sub_2673811CC();
}

uint64_t sub_266F5E238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5E29C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorAppIntentCallContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0810, 0x277D572C0);
  sub_266ECAF2C(&qword_2800F0818, &qword_2800F0810, 0x277D572C0, &protocol conformance descriptor for ExecutorSiriSchemaExecutorAppIntentCallStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800F0820, 0x277D572B0);
  sub_266ECAF2C(&qword_2800F0828, &qword_2800F0820, 0x277D572B0, &protocol conformance descriptor for ExecutorSiriSchemaExecutorAppIntentCallEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F0830, 0x277D572B8);
  sub_266ECAF2C(&qword_2800F0838, &qword_2800F0830, 0x277D572B8, &protocol conformance descriptor for ExecutorSiriSchemaExecutorAppIntentCallFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6(v4, 0, 1, v5);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v4, 0x64496563617274, 0xE700000000000000);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_266F5E91C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5E980(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorAppIntentCallEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F5EC6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5ECD0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F5ED34()
{
  result = qword_2800F0828;
  if (!qword_2800F0828)
  {
    sub_266F5ED8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0828);
  }

  return result;
}

unint64_t sub_266F5ED8C()
{
  result = qword_2800F0820;
  if (!qword_2800F0820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0820);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorAppIntentCallFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ExecutorSiriSchemaExecutorAppIntentError(0);
  sub_266F5F224(&qword_2800F0850, type metadata accessor for ExecutorSiriSchemaExecutorAppIntentError, &protocol conformance descriptor for ExecutorSiriSchemaExecutorAppIntentError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F5EF94(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ExecutorSiriSchemaExecutorAppIntentError(0);
  sub_266F5F224(&qword_2800F0850, type metadata accessor for ExecutorSiriSchemaExecutorAppIntentError, &protocol conformance descriptor for ExecutorSiriSchemaExecutorAppIntentError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F5F118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5F17C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F5F224(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F5F26C()
{
  result = qword_2800F0830;
  if (!qword_2800F0830)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0830);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorAppIntentCallStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v15[1] = a1;
  sub_26738119C();
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E4E8], v2);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E540], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026742D940);
  return v13(v16, 0);
}

uint64_t sub_266F5F5D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F5F63C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F5F6A0()
{
  result = qword_2800F0818;
  if (!qword_2800F0818)
  {
    sub_266F5F6F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0818);
  }

  return result;
}

unint64_t sub_266F5F6F8()
{
  result = qword_2800F0810;
  if (!qword_2800F0810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0810);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorAppIntentError.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026742D9A0, isUniquelyReferenced_nonNull_native);
  *v3 = v118;

  v1(v147, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003DLL, 0x800000026742D9C0, v8);
  *v7 = v119;

  v5(v147, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003ELL, 0x800000026742DA00, v12);
  *v11 = v120;

  v9(v147, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000036, 0x800000026742DA40, v16);
  *v15 = v121;

  v13(v147, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000032, 0x800000026742DA80, v20);
  *v19 = v122;

  v17(v147, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000037, 0x800000026742DAC0, v24);
  *v23 = v123;

  v21(v147, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000034, 0x800000026742DB00, v28);
  *v27 = v124;

  v25(v147, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000034, 0x800000026742DB40, v32);
  *v31 = v125;

  v29(v147, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000003ALL, 0x800000026742DB80, v36);
  *v35 = v126;

  v33(v147, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v127 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000041, 0x800000026742DBC0, v40);
  *v39 = v127;

  v37(v147, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000035, 0x800000026742DC10, v44);
  *v43 = v128;

  v41(v147, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v129 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000037, 0x800000026742DC50, v48);
  *v47 = v129;

  v45(v147, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v130 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000003CLL, 0x800000026742DC90, v52);
  *v51 = v130;

  v49(v147, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(100, 0xD00000000000002CLL, 0x800000026742DCD0, v56);
  *v55 = v131;

  v53(v147, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(101, 0xD000000000000051, 0x800000026742DD00, v60);
  *v59 = v132;

  v57(v147, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(102, 0xD000000000000049, 0x800000026742DD60, v64);
  *v63 = v133;

  v61(v147, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(103, 0xD00000000000004FLL, 0x800000026742DDB0, v68);
  *v67 = v134;

  v65(v147, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v135 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(104, 0xD000000000000053, 0x800000026742DE00, v72);
  *v71 = v135;

  v69(v147, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v136 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(105, 0xD000000000000057, 0x800000026742DE60, v76);
  *v75 = v136;

  v73(v147, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(106, 0xD00000000000005CLL, 0x800000026742DEC0, v80);
  *v79 = v137;

  v77(v147, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(107, 0xD000000000000063, 0x800000026742DF20, v84);
  *v83 = v138;

  v81(v147, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(108, 0xD00000000000005BLL, 0x800000026742DF90, v88);
  *v87 = v139;

  v85(v147, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v140 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(109, 0xD000000000000057, 0x800000026742DFF0, v92);
  *v91 = v140;

  v89(v147, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(110, 0xD00000000000005CLL, 0x800000026742E050, v96);
  *v95 = v141;

  v93(v147, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(111, 0xD000000000000059, 0x800000026742E0B0, v100);
  *v99 = v142;

  v97(v147, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(112, 0xD00000000000005BLL, 0x800000026742E110, v104);
  *v103 = v143;

  v101(v147, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v144 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(200, 0xD000000000000030, 0x800000026742E170, v108);
  *v107 = v144;

  v105(v147, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(201, 0xD000000000000041, 0x800000026742E1B0, v112);
  *v111 = v145;

  v109(v147, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(301, 0xD00000000000002ELL, 0x800000026742E200, v116);
  *v115 = v146;

  return v113(v147, 0);
}

uint64_t sub_266F604C4(uint64_t a1)
{
  v2 = sub_266F605C8(&qword_2800F0858, &protocol conformance descriptor for ExecutorSiriSchemaExecutorAppIntentError);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F6052C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F605C8(&qword_2800F0858, &protocol conformance descriptor for ExecutorSiriSchemaExecutorAppIntentError);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F605C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExecutorSiriSchemaExecutorAppIntentError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v26 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0860, 0x277D572D0);
  sub_266ECAF2C(&qword_2800F0868, &qword_2800F0860, 0x277D572D0, &protocol conformance descriptor for ExecutorSiriSchemaExecutorClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v30, 0);
  sub_266ECB294(0, &qword_2800F0848, 0x277D572A8);
  sub_266ECAF2C(&qword_2800F0840, &qword_2800F0848, 0x277D572A8, &protocol conformance descriptor for ExecutorSiriSchemaExecutorAppIntentCallContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001CLL, 0x800000026742E270);
  v9(v30, 0);
  sub_266ECB294(0, &qword_2800F0870, 0x277D57340);
  sub_266ECAF2C(&qword_2800F0878, &qword_2800F0870, 0x277D57340, &protocol conformance descriptor for ExecutorSiriSchemaExecutorSearchToolQueryCallContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000022, 0x800000026742E290);
  v10(v30, 0);
  sub_266ECB294(0, &qword_2800F0880, 0x277D572F8);
  sub_266ECAF2C(&qword_2800F0888, &qword_2800F0880, 0x277D572F8, &protocol conformance descriptor for ExecutorSiriSchemaExecutorPersonQueryCallContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001ELL, 0x800000026742E2C0);
  v11(v30, 0);
  sub_266ECB294(0, &qword_2800F0890, 0x277D573A0);
  sub_266ECAF2C(&qword_2800F0898, &qword_2800F0890, 0x277D573A0, &protocol conformance descriptor for ExecutorSiriSchemaExecutorStringQueryLocationCallContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000026, 0x800000026742E2E0);
  v12(v30, 0);
  sub_266ECB294(0, &qword_2800F08A0, 0x277D57380);
  sub_266ECAF2C(&qword_2800F08A8, &qword_2800F08A0, 0x277D57380, &protocol conformance descriptor for ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000002BLL, 0x800000026742E310);
  v13(v30, 0);
  sub_266ECB294(0, &qword_2800F08B0, 0x277D57360);
  sub_266ECAF2C(&qword_2800F08B8, &qword_2800F08B0, 0x277D57360, &protocol conformance descriptor for ExecutorSiriSchemaExecutorStringQueryEntityCallContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000024, 0x800000026742E340);
  v14(v30, 0);
  sub_266ECB294(0, &qword_2800F08C0, 0x277D572D8);
  sub_266ECAF2C(&qword_2800F08C8, &qword_2800F08C0, 0x277D572D8, &protocol conformance descriptor for ExecutorSiriSchemaExecutorIdentifierQueryCallContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000022, 0x800000026742E370);
  v15(v30, 0);
  sub_266ECB294(0, &qword_2800F08D0, 0x277D57320);
  sub_266ECAF2C(&qword_2800F08D8, &qword_2800F08D0, 0x277D57320, &protocol conformance descriptor for ExecutorSiriSchemaExecutorRequestContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v16 = v27;
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x800000026742E3A0);
  v17(v30, 0);
  sub_26738117C();
  v18 = sub_2673811BC();
  v20 = v19;
  v21 = *v19;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v20 = v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_266ECAD54(0, v21[2] + 1, 1, v21);
    *v20 = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_266ECAD54((v23 > 1), v24 + 1, 1, v21);
    *v20 = v21;
  }

  v21[2] = v24 + 1;
  (*(v28 + 32))(v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, v16, v29);
  v18(v30, 0);
  sub_266ECB128(&unk_2878852E8);
  return sub_2673811CC();
}

uint64_t sub_266F61028(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F610C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F6118C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F611F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F61250(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F08E0, &qword_2800F08E8, 0x277D572C8, &protocol conformance descriptor for ExecutorSiriSchemaExecutorClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F08F0, &qword_2800F08E8, 0x277D572C8, &protocol conformance descriptor for ExecutorSiriSchemaExecutorClientEvent);
  result = sub_266ECAF2C(&qword_2800F08F8, &qword_2800F08E8, 0x277D572C8, &protocol conformance descriptor for ExecutorSiriSchemaExecutorClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static ExecutorSiriSchemaExecutorClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = sub_26738113C();
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v22 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v23 = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v27 = *(v9 + 56);
  v28 = v9 + 56;
  v27(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x7365757165526669, 0xEB00000000644974);
  v10(v31, 0);
  v29 = a2;
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v30, 0x7365757165526669, 0xEB00000000644974);
  v21 = *(v9 + 48);
  if (!v21(v13, 1, v8))
  {
    sub_266ECB128(&unk_287885320);
    sub_26738115C();
  }

  (v12)(v30, 0);
  v11(v31, 0);
  sub_26738120C();
  v27(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x726F747563657865, 0xEA00000000006449);
  v14(v31, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v30, 0x726F747563657865, 0xEA00000000006449);
  if (!v21(v17, 1, v8))
  {
    sub_266ECB128(&unk_287885350);
    sub_26738115C();
  }

  (v16)(v30, 0);
  v15(v31, 0);
  (*(v24 + 104))(v25, *MEMORY[0x277D3E540], v26);
  v31[0] = 1;
  sub_26738114C();
  v27(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496E617073, 0xE600000000000000);
  return v18(v31, 0);
}

uint64_t sub_266F61868(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F618CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorIdentifierQueryCallContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0908, 0x277D572F0);
  sub_266ECAF2C(&qword_2800F0910, &qword_2800F0908, 0x277D572F0, &protocol conformance descriptor for ExecutorSiriSchemaExecutorIdentifierQueryCallStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F0918, 0x277D572E0);
  sub_266ECAF2C(&qword_2800F0920, &qword_2800F0918, 0x277D572E0, &protocol conformance descriptor for ExecutorSiriSchemaExecutorIdentifierQueryCallEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0928, 0x277D572E8);
  sub_266ECAF2C(&qword_2800F0930, &qword_2800F0928, 0x277D572E8, &protocol conformance descriptor for ExecutorSiriSchemaExecutorIdentifierQueryCallFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_266F61E88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F61EEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorIdentifierQueryCallEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F621D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6223C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F622A0()
{
  result = qword_2800F0920;
  if (!qword_2800F0920)
  {
    sub_266F622F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0920);
  }

  return result;
}

unint64_t sub_266F622F8()
{
  result = qword_2800F0918;
  if (!qword_2800F0918)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0918);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorIdentifierQueryCallFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F6258C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F625F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F62654()
{
  result = qword_2800F0930;
  if (!qword_2800F0930)
  {
    sub_266F626AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0930);
  }

  return result;
}

unint64_t sub_266F626AC()
{
  result = qword_2800F0928;
  if (!qword_2800F0928)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0928);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorIdentifierQueryCallStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F62940(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F629A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F62A08()
{
  result = qword_2800F0910;
  if (!qword_2800F0910)
  {
    sub_266F62A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0910);
  }

  return result;
}

unint64_t sub_266F62A60()
{
  result = qword_2800F0908;
  if (!qword_2800F0908)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0908);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorPersonQueryCallContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0938, 0x277D57310);
  sub_266ECAF2C(&qword_2800F0940, &qword_2800F0938, 0x277D57310, &protocol conformance descriptor for ExecutorSiriSchemaExecutorPersonQueryCallStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F0948, 0x277D57300);
  sub_266ECAF2C(&qword_2800F0950, &qword_2800F0948, 0x277D57300, &protocol conformance descriptor for ExecutorSiriSchemaExecutorPersonQueryCallEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0958, 0x277D57308);
  sub_266ECAF2C(&qword_2800F0960, &qword_2800F0958, 0x277D57308, &protocol conformance descriptor for ExecutorSiriSchemaExecutorPersonQueryCallFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_266F62FC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F63028(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorPersonQueryCallEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F63314(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F63378(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F633DC()
{
  result = qword_2800F0950;
  if (!qword_2800F0950)
  {
    sub_266F63434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0950);
  }

  return result;
}

unint64_t sub_266F63434()
{
  result = qword_2800F0948;
  if (!qword_2800F0948)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0948);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorPersonQueryCallFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F636C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6372C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F63790()
{
  result = qword_2800F0960;
  if (!qword_2800F0960)
  {
    sub_266F637E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0960);
  }

  return result;
}

unint64_t sub_266F637E8()
{
  result = qword_2800F0958;
  if (!qword_2800F0958)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0958);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorPersonQueryCallStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F63A7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F63AE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F63B44()
{
  result = qword_2800F0940;
  if (!qword_2800F0940)
  {
    sub_266F63B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0940);
  }

  return result;
}

unint64_t sub_266F63B9C()
{
  result = qword_2800F0938;
  if (!qword_2800F0938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0938);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorRequestCanceled.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F63E30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F63E94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F63EF8()
{
  result = qword_2800F0968;
  if (!qword_2800F0968)
  {
    sub_266F63F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0968);
  }

  return result;
}

unint64_t sub_266F63F50()
{
  result = qword_2800F0970;
  if (!qword_2800F0970)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0970);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0978, 0x277D57338);
  sub_266ECAF2C(&qword_2800F0980, &qword_2800F0978, 0x277D57338, &protocol conformance descriptor for ExecutorSiriSchemaExecutorRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800F0988, 0x277D57328);
  sub_266ECAF2C(&qword_2800F0990, &qword_2800F0988, 0x277D57328, &protocol conformance descriptor for ExecutorSiriSchemaExecutorRequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F0998, 0x277D57330);
  sub_266ECAF2C(&qword_2800F09A0, &qword_2800F0998, 0x277D57330, &protocol conformance descriptor for ExecutorSiriSchemaExecutorRequestFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F0970, 0x277D57318);
  sub_266ECAF2C(&qword_2800F0968, &qword_2800F0970, 0x277D57318, &protocol conformance descriptor for ExecutorSiriSchemaExecutorRequestCanceled);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C65636E6163, 0xE800000000000000);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_266F6457C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F645E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x28223BE20](v1);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaIFOutcome(0);
  sub_266F64C24();
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x656D6F6374756FLL, 0xE700000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F09B0, 0x277D5A8F0);
  sub_266ECAF2C(&qword_2800F09B8, &qword_2800F09B0, 0x277D5A8F0, &protocol conformance descriptor for SISchemaIFOutcomeSuccess);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x73736563637573, 0xE700000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F09C0, 0x277D5A8F8);
  sub_266ECAF2C(&qword_2800F09C8, &qword_2800F09C0, 0x277D5A8F8, &protocol conformance descriptor for SISchemaIFOutcomeToolDisambiguation);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v21;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x800000026742E6C0);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v22 + 32))(v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_266F64B60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F64BC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F64C24()
{
  result = qword_2800F09A8;
  if (!qword_2800F09A8)
  {
    type metadata accessor for SISchemaIFOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F09A8);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F09D0, 0x277D5A8E8);
  sub_266ECAF2C(&qword_2800F09D8, &qword_2800F09D0, 0x277D5A8E8, &protocol conformance descriptor for SISchemaIFError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F727265, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F64E90(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F09D0, 0x277D5A8E8);
  sub_266ECAF2C(&qword_2800F09D8, &qword_2800F09D0, 0x277D5A8E8, &protocol conformance descriptor for SISchemaIFError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F727265, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F65028(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6508C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorRequestStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaIFPayload(0);
  sub_266F65594(&qword_2800F09E0, type metadata accessor for SISchemaIFPayload, &protocol conformance descriptor for SISchemaIFPayload);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7961507475706E69, 0xEC00000064616F6CLL);
  return v5(v7, 0);
}

uint64_t sub_266F652F8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaIFPayload(0);
  sub_266F65594(&qword_2800F09E0, type metadata accessor for SISchemaIFPayload, &protocol conformance descriptor for SISchemaIFPayload);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7961507475706E69, 0xEC00000064616F6CLL);
  return v5(v7, 0);
}

uint64_t sub_266F65488(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F654EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F65594(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F655DC()
{
  result = qword_2800F0978;
  if (!qword_2800F0978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0978);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorSearchToolQueryCallContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F09E8, 0x277D57358);
  sub_266ECAF2C(&qword_2800F09F0, &qword_2800F09E8, 0x277D57358, &protocol conformance descriptor for ExecutorSiriSchemaExecutorSearchToolQueryCallStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800F09F8, 0x277D57348);
  sub_266ECAF2C(&qword_2800F0A00, &qword_2800F09F8, 0x277D57348, &protocol conformance descriptor for ExecutorSiriSchemaExecutorSearchToolQueryCallEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F0A08, 0x277D57350);
  sub_266ECAF2C(&qword_2800F0A10, &qword_2800F0A08, 0x277D57350, &protocol conformance descriptor for ExecutorSiriSchemaExecutorSearchToolQueryCallFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6(v4, 0, 1, v5);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v4, 0x64496563617274, 0xE700000000000000);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_266F65C04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F65C68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorSearchToolQueryCallEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F65F54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F65FB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F6601C()
{
  result = qword_2800F0A00;
  if (!qword_2800F0A00)
  {
    sub_266F66074();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A00);
  }

  return result;
}

unint64_t sub_266F66074()
{
  result = qword_2800F09F8;
  if (!qword_2800F09F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F09F8);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorSearchToolQueryCallFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F66308(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6636C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F663D0()
{
  result = qword_2800F0A10;
  if (!qword_2800F0A10)
  {
    sub_266F66428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A10);
  }

  return result;
}

unint64_t sub_266F66428()
{
  result = qword_2800F0A08;
  if (!qword_2800F0A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A08);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorSearchToolQueryCallStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E4E8], v1);
  v13[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v10(v13, 0);
  type metadata accessor for ExecutorSiriSchemaExecutorSearchToolQueryType(0);
  sub_266F668A0(&qword_2800F0A18, type metadata accessor for ExecutorSiriSchemaExecutorSearchToolQueryType, &protocol conformance descriptor for ExecutorSiriSchemaExecutorSearchToolQueryType);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x800000026742E860);
  return v11(v13, 0);
}

uint64_t sub_266F66794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F667F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F668A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F668E8()
{
  result = qword_2800F09E8;
  if (!qword_2800F09E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F09E8);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorSearchToolQueryType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000023, 0x800000026742E8C0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x800000026742E8F0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x800000026742E920, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000032, 0x800000026742E950, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266F66BB8(uint64_t a1)
{
  v2 = sub_266F66CBC(&qword_2800F0A20, &protocol conformance descriptor for ExecutorSiriSchemaExecutorSearchToolQueryType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F66C20(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F66CBC(&qword_2800F0A20, &protocol conformance descriptor for ExecutorSiriSchemaExecutorSearchToolQueryType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F66CBC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ExecutorSiriSchemaExecutorSearchToolQueryType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryEntityCallContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0A28, 0x277D57378);
  sub_266ECAF2C(&qword_2800F0A30, &qword_2800F0A28, 0x277D57378, &protocol conformance descriptor for ExecutorSiriSchemaExecutorStringQueryEntityCallStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F0A38, 0x277D57368);
  sub_266ECAF2C(&qword_2800F0A40, &qword_2800F0A38, 0x277D57368, &protocol conformance descriptor for ExecutorSiriSchemaExecutorStringQueryEntityCallEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0A48, 0x277D57370);
  sub_266ECAF2C(&qword_2800F0A50, &qword_2800F0A48, 0x277D57370, &protocol conformance descriptor for ExecutorSiriSchemaExecutorStringQueryEntityCallFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_266F67218(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6727C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryEntityCallEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F67568(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F675CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F67630()
{
  result = qword_2800F0A40;
  if (!qword_2800F0A40)
  {
    sub_266F67688();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A40);
  }

  return result;
}

unint64_t sub_266F67688()
{
  result = qword_2800F0A38;
  if (!qword_2800F0A38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A38);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryEntityCallFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F6791C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F67980(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F679E4()
{
  result = qword_2800F0A50;
  if (!qword_2800F0A50)
  {
    sub_266F67A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A50);
  }

  return result;
}

unint64_t sub_266F67A3C()
{
  result = qword_2800F0A48;
  if (!qword_2800F0A48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A48);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryEntityCallStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F67CD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F67D34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F67D98()
{
  result = qword_2800F0A30;
  if (!qword_2800F0A30)
  {
    sub_266F67DF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A30);
  }

  return result;
}

unint64_t sub_266F67DF0()
{
  result = qword_2800F0A28;
  if (!qword_2800F0A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A28);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0A58, 0x277D57398);
  sub_266ECAF2C(&qword_2800F0A60, &qword_2800F0A58, 0x277D57398, &protocol conformance descriptor for ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F0A68, 0x277D57388);
  sub_266ECAF2C(&qword_2800F0A70, &qword_2800F0A68, 0x277D57388, &protocol conformance descriptor for ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0A78, 0x277D57390);
  sub_266ECAF2C(&qword_2800F0A80, &qword_2800F0A78, 0x277D57390, &protocol conformance descriptor for ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_266F68354(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F683B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F686A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F68708(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F6876C()
{
  result = qword_2800F0A70;
  if (!qword_2800F0A70)
  {
    sub_266F687C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A70);
  }

  return result;
}

unint64_t sub_266F687C4()
{
  result = qword_2800F0A68;
  if (!qword_2800F0A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A68);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F68A58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F68ABC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F68B20()
{
  result = qword_2800F0A80;
  if (!qword_2800F0A80)
  {
    sub_266F68B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A80);
  }

  return result;
}

unint64_t sub_266F68B78()
{
  result = qword_2800F0A78;
  if (!qword_2800F0A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A78);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryEntityMatcherCallStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F68E0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F68E70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F68ED4()
{
  result = qword_2800F0A60;
  if (!qword_2800F0A60)
  {
    sub_266F68F2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A60);
  }

  return result;
}

unint64_t sub_266F68F2C()
{
  result = qword_2800F0A58;
  if (!qword_2800F0A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A58);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryLocationCallContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0A88, 0x277D573B8);
  sub_266ECAF2C(&qword_2800F0A90, &qword_2800F0A88, 0x277D573B8, &protocol conformance descriptor for ExecutorSiriSchemaExecutorStringQueryLocationCallStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F0A98, 0x277D573A8);
  sub_266ECAF2C(&qword_2800F0AA0, &qword_2800F0A98, 0x277D573A8, &protocol conformance descriptor for ExecutorSiriSchemaExecutorStringQueryLocationCallEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0AA8, 0x277D573B0);
  sub_266ECAF2C(&qword_2800F0AB0, &qword_2800F0AA8, 0x277D573B0, &protocol conformance descriptor for ExecutorSiriSchemaExecutorStringQueryLocationCallFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_266F69490(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F694F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryLocationCallEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F697E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F69844(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F698A8()
{
  result = qword_2800F0AA0;
  if (!qword_2800F0AA0)
  {
    sub_266F69900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0AA0);
  }

  return result;
}

unint64_t sub_266F69900()
{
  result = qword_2800F0A98;
  if (!qword_2800F0A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A98);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryLocationCallFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F69B94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F69BF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F69C5C()
{
  result = qword_2800F0AB0;
  if (!qword_2800F0AB0)
  {
    sub_266F69CB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0AB0);
  }

  return result;
}

unint64_t sub_266F69CB4()
{
  result = qword_2800F0AA8;
  if (!qword_2800F0AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0AA8);
  }

  return result;
}

uint64_t static ExecutorSiriSchemaExecutorStringQueryLocationCallStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F69F48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F69FAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F6A010()
{
  result = qword_2800F0A90;
  if (!qword_2800F0A90)
  {
    sub_266F6A068();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0A90);
  }

  return result;
}

unint64_t sub_266F6A068()
{
  result = qword_2800F0A88;
  if (!qword_2800F0A88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0A88);
  }

  return result;
}

uint64_t static EXPSchemaEXPRolloutAllocationStatus.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000022, 0x800000026742ED70, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x800000026742EDA0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026742EDD0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x800000026742EE00, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266F6A33C(uint64_t a1)
{
  v2 = sub_266F6A440(&qword_2800F0AC0, &protocol conformance descriptor for EXPSchemaEXPRolloutAllocationStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F6A3A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F6A440(&qword_2800F0AC0, &protocol conformance descriptor for EXPSchemaEXPRolloutAllocationStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F6A440(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EXPSchemaEXPRolloutAllocationStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static EXPSchemaEXPTreatmentAllocationStatus.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000024, 0x800000026742EE60, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026742EE90, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x800000026742EEC0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x800000026742EEF0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266F6A70C(uint64_t a1)
{
  v2 = sub_266F6A810(&qword_2800F0AD0, &protocol conformance descriptor for EXPSchemaEXPTreatmentAllocationStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F6A774(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F6A810(&qword_2800F0AD0, &protocol conformance descriptor for EXPSchemaEXPTreatmentAllocationStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F6A810(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EXPSchemaEXPTreatmentAllocationStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static EXPSchemaEXPTrialExperiment.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v3 = sub_26738113C();
  v36 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v31 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v35 = a2;
  sub_26738119C();
  v33 = "xp.EXPTrialExperiment";
  v10 = *MEMORY[0x277D3E530];
  v37 = *(v4 + 104);
  v37(v6, v10, v3);
  v38 = v4 + 104;
  v40[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v13(v9, 0, 1, v11);
  v32 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v33 | 0x8000000000000000);
  v15(v40, 0);
  v16 = v10;
  v18 = v36;
  v17 = v37;
  v37(v6, v16, v36);
  v40[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D697265707865, 0xEC0000006449746ELL);
  v19(v40, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v20 = v32;
  v32(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656D7461657274, 0xEB00000000644974);
  v21(v40, 0);
  v22 = *MEMORY[0x277D3E510];
  v34 = v6;
  v17(v6, v22, v18);
  v40[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v11);
  v31[1] = v14;
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D796F6C706564, 0xEC0000006449746ELL);
  v23(v40, 0);
  type metadata accessor for EXPSchemaEXPTreatmentAllocationStatus(0);
  sub_266F6B05C();
  sub_26738120C();
  v31[0] = v11;
  v20(v9, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x800000026742EF70);
  v24(v40, 0);
  v39 = "allocationStatus";
  v25 = v34;
  v27 = v36;
  v26 = v37;
  v37(v34, *MEMORY[0x277D3E540], v36);
  v40[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v11);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v39 | 0x8000000000000000);
  v28(v40, 0);
  v26(v25, *MEMORY[0x277D3E538], v27);
  v40[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v31[0]);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x800000026742EFB0);
  v29(v40, 0);
  sub_266ECB128(&unk_287885380);
  return sub_2673811CC();
}

uint64_t sub_266F6AF98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6AFFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F6B05C()
{
  result = qword_2800F0AC8;
  if (!qword_2800F0AC8)
  {
    type metadata accessor for EXPSchemaEXPTreatmentAllocationStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0AC8);
  }

  return result;
}

uint64_t static EXPSchemaEXPTrialRollout.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E530];
  v9 = *(v2 + 104);
  v21 = v1;
  v22 = v9;
  v9(v4, v8, v1);
  v24[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v20 = *(*(v10 - 8) + 56);
  v20(v7, 0, 1, v10);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x4974756F6C6C6F72, 0xE900000000000064);
  v11(v24, 0);
  v12 = v1;
  v13 = v22;
  v22(v4, v8, v12);
  v24[0] = 1;
  sub_26738114C();
  v14 = v20;
  v20(v7, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449706D6172, 0xE600000000000000);
  v15(v24, 0);
  v13(v4, *MEMORY[0x277D3E538], v21);
  v24[0] = 1;
  sub_26738114C();
  v14(v7, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x656D796F6C706564, 0xEC0000006449746ELL);
  v16(v24, 0);
  type metadata accessor for EXPSchemaEXPRolloutAllocationStatus(0);
  sub_266F6B718();
  sub_26738120C();
  v14(v7, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x737574617473, 0xE600000000000000);
  v17(v24, 0);
  sub_266ECB294(0, &qword_2800F0AE8, 0x277D57238);
  sub_266ECAF2C(&qword_2800F0AF0, &qword_2800F0AE8, 0x277D57238, &protocol conformance descriptor for EXPSchemaEXPTrialRolloutNamespace);
  sub_26738122C();
  v14(v7, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x63617073656D616ELL, 0xEA00000000007365);
  v18(v24, 0);
  sub_266ECB128(&unk_2878853A8);
  return sub_2673811CC();
}

uint64_t sub_266F6B654(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6B6B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F6B718()
{
  result = qword_2800F0AB8;
  if (!qword_2800F0AB8)
  {
    type metadata accessor for EXPSchemaEXPRolloutAllocationStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0AB8);
  }

  return result;
}

uint64_t static EXPSchemaEXPTrialRolloutNamespace.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v19 = *MEMORY[0x277D3E530];
  v7 = *(v1 + 104);
  v17 = v0;
  v18 = v7;
  v7(v3);
  v20[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 1701667182, 0xE400000000000000);
  v10(v20, 0);
  v16 = "lastUpdatedAtInMs";
  v11 = v0;
  v12 = v18;
  v18(v3, *MEMORY[0x277D3E538], v11);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, v16 | 0x8000000000000000);
  v13(v20, 0);
  v12(v3, v19, v17);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x6150726F74636166, 0xEC00000064496B63);
  return v14(v20, 0);
}

uint64_t sub_266F6BBA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6BC04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F6BC68()
{
  result = qword_2800F0AF0;
  if (!qword_2800F0AF0)
  {
    sub_266F6BCC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0AF0);
  }

  return result;
}

unint64_t sub_266F6BCC0()
{
  result = qword_2800F0AE8;
  if (!qword_2800F0AE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0AE8);
  }

  return result;
}

uint64_t static EXPSearchSchemaEXPSearchClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0B08, 0x277D57248);
  sub_266ECAF2C(&qword_2800F0B10, &qword_2800F0B08, 0x277D57248, &protocol conformance descriptor for EXPSearchSchemaEXPSearchSessionExperiments);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026742F060);
  v9(v18, 0);
  sub_26738117C();
  v10 = sub_2673811BC();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_266ECAD54(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_266ECAD54((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v2 + 32))(v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v16, v4, v1);
  v10(v18, 0);
  sub_266ECB128(&unk_2878853D0);
  return sub_2673811CC();
}

uint64_t sub_266F6C05C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F6C0F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F6C1C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6C224(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F6C284(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F0B18, &qword_2800F0B20, 0x277D57240, &protocol conformance descriptor for EXPSearchSchemaEXPSearchClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F0B28, &qword_2800F0B20, 0x277D57240, &protocol conformance descriptor for EXPSearchSchemaEXPSearchClientEvent);
  result = sub_266ECAF2C(&qword_2800F0B30, &qword_2800F0B20, 0x277D57240, &protocol conformance descriptor for EXPSearchSchemaEXPSearchClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static EXPSearchSchemaEXPSearchSessionExperiments.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6553686372616573, 0xEF64496E6F697373);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228, &protocol conformance descriptor for EXPSchemaEXPTrialExperiment);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x800000026742F0C0);
  v7(v9, 0);
  sub_266ECB128(&unk_287885408);
  return sub_2673811CC();
}

uint64_t sub_266F6C674(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6C6D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static EXPSiriSchemaEXPAllocationChangelogSnapshot.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228, &protocol conformance descriptor for EXPSchemaEXPTrialExperiment);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEB00000000736E6FLL);
  return v5(v7, 0);
}

uint64_t sub_266F6C958(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228, &protocol conformance descriptor for EXPSchemaEXPTrialExperiment);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEB00000000736E6FLL);
  return v5(v7, 0);
}

uint64_t sub_266F6CAFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6CB60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static EXPSiriSchemaEXPAllocationSnapshot.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228, &protocol conformance descriptor for EXPSchemaEXPTrialExperiment);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEB00000000736E6FLL);
  return v5(v7, 0);
}

uint64_t sub_266F6CDE0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228, &protocol conformance descriptor for EXPSchemaEXPTrialExperiment);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEB00000000736E6FLL);
  return v5(v7, 0);
}

uint64_t sub_266F6CF84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6CFE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static EXPSiriSchemaEXPClientExperimentTriggeredTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228, &protocol conformance descriptor for EXPSchemaEXPTrialExperiment);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEA00000000006E6FLL);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6874617065646F63, 0xEA00000000006449);
  return v7(v9, 0);
}

uint64_t sub_266F6D364(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6D3C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228, &protocol conformance descriptor for EXPSchemaEXPTrialExperiment);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEA00000000006E6FLL);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6874617065646F63, 0xEA00000000006449);
  v7(v10, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x4974736575716572, 0xE900000000000064);
  return v8(v10, 0);
}

uint64_t sub_266F6D7D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6D834(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static EXPSiriSchemaEXPRolloutChangeSnapshot.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E540], v1);
  v13[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000029, 0x800000026742F220);
  v10(v13, 0);
  sub_266ECB294(0, &qword_2800F0B00, 0x277D57230);
  sub_266ECAF2C(&qword_2800F0AF8, &qword_2800F0B00, 0x277D57230, &protocol conformance descriptor for EXPSchemaEXPTrialRollout);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x7374756F6C6C6F72, 0xE800000000000000);
  return v11(v13, 0);
}

uint64_t sub_266F6DC0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6DC70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static EXPSiriSchemaEXPServerCounterfactualTriggered.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v22 = v1;
  v23 = v2;
  MEMORY[0x28223BE20](v1);
  v21 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v20[2] = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x4973757361676570, 0xE900000000000064);
  v9(v24, 0);
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v23 + 104);
  v23 += 104;
  v20[0] = v11;
  v12 = v21;
  v11(v21, v10, v22);
  v24[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674206D0);
  v13(v24, 0);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x6874617065646F63, 0xEA00000000006449);
  v14(v24, 0);
  (v20[0])(v12, *MEMORY[0x277D3E4E8], v22);
  v24[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x800000026742F290);
  v15(v24, 0);
  type metadata accessor for EXPSiriSchemaEXPSiriDiffOutcome(0);
  sub_266F6E480();
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0x6374754F66666964, 0xEB00000000656D6FLL);
  v16(v24, 0);
  v23 = "isCounterfactualDifferent";
  sub_266ECB294(0, &qword_2800F0B98, 0x277D57298);
  sub_266ECAF2C(&qword_2800F0BA0, &qword_2800F0B98, 0x277D57298, &protocol conformance descriptor for EXPSiriSchemaEXPSiriPegasusResponseSummary);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, v23 | 0x8000000000000000);
  v17(v24, 0);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x800000026742F2D0);
  return v18(v24, 0);
}

uint64_t sub_266F6E3BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6E420(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F6E480()
{
  result = qword_2800F0B90;
  if (!qword_2800F0B90)
  {
    type metadata accessor for EXPSiriSchemaEXPSiriDiffOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0B90);
  }

  return result;
}

uint64_t static EXPSiriSchemaEXPServerCounterfactualTriggeredTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = sub_26738113C();
  v45 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v44 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  v42 = sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228, &protocol conformance descriptor for EXPSchemaEXPTrialExperiment);
  v39 = v8;
  sub_26738122C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v7, 0, 1, v9);
  v36 = v11;
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x697461636F6C6C61, 0xEA00000000006E6FLL);
  v13(v46, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v11(v7, 0, 1, v9);
  v14 = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6874617065646F63, 0xEA00000000006449);
  v15(v46, 0);
  v40 = a1;
  sub_26738120C();
  v16 = v36;
  v36(v7, 0, 1, v9);
  v41 = v14;
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x4973757361676570, 0xE900000000000064);
  v17(v46, 0);
  sub_26738122C();
  v16(v7, 0, 1, v9);
  v38 = v12;
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x800000026742F330);
  v18(v46, 0);
  v39 = "rCounterfactualTriggered";
  v19 = *MEMORY[0x277D3E4E8];
  v20 = v44;
  v21 = v45 + 104;
  v42 = *(v45 + 104);
  v22 = v43;
  v42(v44, v19, v43);
  v46[0] = 1;
  sub_26738114C();
  v23 = v9;
  v37 = v9;
  v16(v7, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v39 | 0x8000000000000000);
  v24(v46, 0);
  v39 = "counterfactualAllocation";
  v25 = v22;
  v26 = v22;
  v27 = v42;
  v42(v20, *MEMORY[0x277D3E500], v25);
  v45 = v21;
  v46[0] = 1;
  sub_26738114C();
  v16(v7, 0, 1, v23);
  v28 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, v39 | 0x8000000000000000);
  v28(v46, 0);
  v27(v44, *MEMORY[0x277D3E510], v26);
  v46[0] = 1;
  sub_26738114C();
  v29 = v37;
  v16(v7, 0, 1, v37);
  v30 = sub_2673811AC();
  sub_266EC637C(v7, 0x65756C61566BLL, 0xE600000000000000);
  v30(v46, 0);
  type metadata accessor for EXPSiriSchemaEXPSiriDiffOutcome(0);
  sub_266F6E480();
  sub_26738120C();
  v16(v7, 0, 1, v29);
  v31 = sub_2673811AC();
  sub_266EC637C(v7, 0x6374754F66666964, 0xEB00000000656D6FLL);
  v31(v46, 0);
  v39 = "isCounterfactualDifferent";
  sub_266ECB294(0, &qword_2800F0B98, 0x277D57298);
  sub_266ECAF2C(&qword_2800F0BA0, &qword_2800F0B98, 0x277D57298, &protocol conformance descriptor for EXPSiriSchemaEXPSiriPegasusResponseSummary);
  sub_26738120C();
  v16(v7, 0, 1, v29);
  v32 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, v39 | 0x8000000000000000);
  v32(v46, 0);
  sub_26738120C();
  v16(v7, 0, 1, v29);
  v33 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x800000026742F2D0);
  v33(v46, 0);
  v42(v44, *MEMORY[0x277D3E530], v43);
  v46[0] = 1;
  sub_26738114C();
  v16(v7, 0, 1, v29);
  v34 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674206D0);
  return v34(v46, 0);
}

uint64_t sub_266F6EEF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6EF58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static EXPSiriSchemaEXPServerExperimentTriggeredTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0AE0, 0x277D57228);
  sub_266ECAF2C(&qword_2800F0AD8, &qword_2800F0AE0, 0x277D57228, &protocol conformance descriptor for EXPSchemaEXPTrialExperiment);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x697461636F6C6C61, 0xEA00000000006E6FLL);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6874617065646F63, 0xEA00000000006449);
  v7(v10, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x4973757361676570, 0xE900000000000064);
  return v8(v10, 0);
}

uint64_t sub_266F6F360(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6F3C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static EXPSiriSchemaEXPSiriClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x28223BE20](v1);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v22 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0B58, 0x277D57258);
  sub_266ECAF2C(&qword_2800F0B50, &qword_2800F0B58, 0x277D57258, &protocol conformance descriptor for EXPSiriSchemaEXPAllocationSnapshot);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x800000026742F3E0);
  v8(v26, 0);
  sub_266ECB294(0, &qword_2800F0B48, 0x277D57250);
  sub_266ECAF2C(&qword_2800F0B40, &qword_2800F0B48, 0x277D57250, &protocol conformance descriptor for EXPSiriSchemaEXPAllocationChangelogSnapshot);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001BLL, 0x800000026742F400);
  v9(v26, 0);
  sub_266ECB294(0, &qword_2800F0B68, 0x277D57260);
  sub_266ECAF2C(&qword_2800F0B60, &qword_2800F0B68, 0x277D57260, &protocol conformance descriptor for EXPSiriSchemaEXPClientExperimentTriggeredTier1);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x800000026742F420);
  v10(v26, 0);
  sub_266ECB294(0, &qword_2800F0B78, 0x277D57268);
  sub_266ECAF2C(&qword_2800F0B70, &qword_2800F0B78, 0x277D57268, &protocol conformance descriptor for EXPSiriSchemaEXPClientSiriRequestExperimentTriggeredTier1);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001ELL, 0x800000026742F440);
  v11(v26, 0);
  sub_266ECB294(0, &qword_2800F0B88, 0x277D57270);
  sub_266ECAF2C(&qword_2800F0B80, &qword_2800F0B88, 0x277D57270, &protocol conformance descriptor for EXPSiriSchemaEXPRolloutChangeSnapshot);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000015, 0x800000026742F460);
  v13(v26, 0);
  sub_26738117C();
  v14 = sub_2673811BC();
  v16 = v15;
  v17 = *v15;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v16 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = sub_266ECAD54(0, v17[2] + 1, 1, v17);
    *v16 = v17;
  }

  v20 = v17[2];
  v19 = v17[3];
  if (v20 >= v19 >> 1)
  {
    v17 = sub_266ECAD54((v19 > 1), v20 + 1, 1, v17);
    *v16 = v17;
  }

  v17[2] = v20 + 1;
  (*(v24 + 32))(v17 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20, v12, v25);
  v14(v26, 0);
  sub_266ECB128(&unk_287885438);
  return sub_2673811CC();
}

uint64_t sub_266F6FB24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F6FBBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F6FC88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F6FCEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F6FD4C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F0BD8, &qword_2800F0BE0, 0x277D57290, &protocol conformance descriptor for EXPSiriSchemaEXPSiriClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F0BE8, &qword_2800F0BE0, 0x277D57290, &protocol conformance descriptor for EXPSiriSchemaEXPSiriClientEvent);
  result = sub_266ECAF2C(&qword_2800F0BF0, &qword_2800F0BE0, 0x277D57290, &protocol conformance descriptor for EXPSiriSchemaEXPSiriClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static EXPSiriSchemaEXPSiriDiffOutcome.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026742F4B0, isUniquelyReferenced_nonNull_native);
  *v3 = v94;

  v1(v117, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x800000026742F4D0, v8);
  *v7 = v95;

  v5(v117, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x800000026742F4F0, v12);
  *v11 = v96;

  v9(v117, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x800000026742F520, v16);
  *v15 = v97;

  v13(v117, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x800000026742F540, v20);
  *v19 = v98;

  v17(v117, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x800000026742F570, v24);
  *v23 = v99;

  v21(v117, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x800000026742F590, v28);
  *v27 = v100;

  v25(v117, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000033, 0x800000026742F5C0, v32);
  *v31 = v101;

  v29(v117, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ELL, 0x800000026742F600, v36);
  *v35 = v102;

  v33(v117, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000022, 0x800000026742F620, v40);
  *v39 = v103;

  v37(v117, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000027, 0x800000026742F650, v44);
  *v43 = v104;

  v41(v117, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000027, 0x800000026742F680, v48);
  *v47 = v105;

  v45(v117, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000026, 0x800000026742F6B0, v52);
  *v51 = v106;

  v49(v117, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000027, 0x800000026742F6E0, v56);
  *v55 = v107;

  v53(v117, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000026, 0x800000026742F710, v60);
  *v59 = v108;

  v57(v117, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001DLL, 0x800000026742F740, v64);
  *v63 = v109;

  v61(v117, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001DLL, 0x800000026742F760, v68);
  *v67 = v110;

  v65(v117, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000019, 0x800000026742F780, v72);
  *v71 = v111;

  v69(v117, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000002ELL, 0x800000026742F7A0, v76);
  *v75 = v112;

  v73(v117, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000038, 0x800000026742F7D0, v80);
  *v79 = v113;

  v77(v117, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000021, 0x800000026742F810, v84);
  *v83 = v114;

  v81(v117, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000022, 0x800000026742F840, v88);
  *v87 = v115;

  v85(v117, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000023, 0x800000026742F870, v92);
  *v91 = v116;

  return v89(v117, 0);
}

uint64_t sub_266F70928(uint64_t a1)
{
  v2 = sub_266F70A2C(&qword_2800F0C00, &protocol conformance descriptor for EXPSiriSchemaEXPSiriDiffOutcome);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F70990(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F70A2C(&qword_2800F0C00, &protocol conformance descriptor for EXPSiriSchemaEXPSiriDiffOutcome);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F70A2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EXPSiriSchemaEXPSiriDiffOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static EXPSiriSchemaEXPSiriPegasusResponseSummary.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v31 = v1;
  v32 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PEGASUSSchemaPEGASUSDomain(0);
  sub_266F711F0(&qword_2800F0C08, type metadata accessor for PEGASUSSchemaPEGASUSDomain, &protocol conformance descriptor for PEGASUSSchemaPEGASUSDomain);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v30 = v9;
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F44746C75736572, 0xEC0000006E69616DLL);
  v10(v33, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSResponseStatus(0);
  sub_266F711F0(&qword_2800F0C10, type metadata accessor for PEGASUSSchemaPEGASUSResponseStatus, &protocol conformance descriptor for PEGASUSSchemaPEGASUSResponseStatus);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x65736E6F70736572, 0xEE00737574617453);
  v11(v33, 0);
  v12 = *MEMORY[0x277D3E530];
  v13 = v31;
  v15 = v32 + 104;
  v14 = *(v32 + 104);
  v27 = v4;
  v28 = v14;
  v14(v4, v12, v31);
  v32 = v15;
  v33[0] = 1;
  sub_26738114C();
  v29 = v8;
  v16 = v30;
  v30(v7, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x6163696E6F6E6163, 0xEC0000007364496CLL);
  v17(v33, 0);
  v18 = v27;
  v19 = v13;
  v20 = v13;
  v21 = v28;
  v28(v27, v12, v20);
  v33[0] = 1;
  sub_26738114C();
  v16(v7, 0, 1, v8);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449746163, 0xE500000000000000);
  v22(v33, 0);
  v21(v18, *MEMORY[0x277D3E500], v19);
  v33[0] = 1;
  sub_26738114C();
  v23 = v29;
  v16(v7, 0, 1, v29);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656469666E6F63, 0xEF65726F63536563);
  v24(v33, 0);
  v21(v18, *MEMORY[0x277D3E4E8], v31);
  v33[0] = 1;
  sub_26738114C();
  v16(v7, 0, 1, v23);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, 0x800000026742F8E0);
  return v25(v33, 0);
}

uint64_t sub_266F710E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F71148(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F711F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F71238()
{
  result = qword_2800F0B98;
  if (!qword_2800F0B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0B98);
  }

  return result;
}

uint64_t static EXPSiriSchemaEXPSiriServerEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x28223BE20](v1);
  v21 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0BD0, 0x277D57288);
  sub_266ECAF2C(&qword_2800F0BC8, &qword_2800F0BD0, 0x277D57288, &protocol conformance descriptor for EXPSiriSchemaEXPServerExperimentTriggeredTier1);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x800000026742F420);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F0BC0, 0x277D57280);
  sub_266ECAF2C(&qword_2800F0BB8, &qword_2800F0BC0, 0x277D57280, &protocol conformance descriptor for EXPSiriSchemaEXPServerCounterfactualTriggeredTier1);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, 0x800000026742F930);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F0BB0, 0x277D57278);
  sub_266ECAF2C(&qword_2800F0BA8, &qword_2800F0BB0, 0x277D57278, &protocol conformance descriptor for EXPSiriSchemaEXPServerCounterfactualTriggered);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v21;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001FLL, 0x800000026742F950);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v22 + 32))(v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, v10, v23);
  v12(v24, 0);
  sub_266ECB128(&unk_287885470);
  return sub_2673811CC();
}

uint64_t sub_266F71790(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F71828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F718F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F71958(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F719B8(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F0C18, &qword_2800F0C20, 0x277D572A0, &protocol conformance descriptor for EXPSiriSchemaEXPSiriServerEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F0C28, &qword_2800F0C20, 0x277D572A0, &protocol conformance descriptor for EXPSiriSchemaEXPSiriServerEvent);
  result = sub_266ECAF2C(&qword_2800F0C30, &qword_2800F0C20, 0x277D572A0, &protocol conformance descriptor for EXPSiriSchemaEXPSiriServerEvent);
  a1[3] = result;
  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKAction.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v15 = a1;
  v16 = sub_26738113C();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496B6E696CLL, 0xE600000000000000);
  v9(v17, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v16);
  v17[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x800000026742F9A0);
  v10(v17, 0);
  type metadata accessor for LINKSchemaLINKSystemActionProtocol(0);
  sub_266F72110(&qword_2800F0230, type metadata accessor for LINKSchemaLINKSystemActionProtocol, &protocol conformance descriptor for LINKSchemaLINKSystemActionProtocol);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x72506D6574737973, 0xEE006C6F636F746FLL);
  v11(v17, 0);
  type metadata accessor for LINKSchemaLINKActionPresentationStyle(0);
  sub_266F72110(&qword_2800F0C40, type metadata accessor for LINKSchemaLINKActionPresentationStyle, &protocol conformance descriptor for LINKSchemaLINKActionPresentationStyle);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x800000026742F9C0);
  v12(v17, 0);
  sub_266ECB294(0, &qword_2800F0C48, 0x277D57420);
  sub_266ECAF2C(&qword_2800F0C50, &qword_2800F0C48, 0x277D57420, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionParameter);
  sub_26738122C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x6574656D61726170, 0xEA00000000007372);
  return v13(v17, 0);
}

uint64_t sub_266F7204C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F720B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F72110(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static FLOWLINKSchemaFLOWLINKActionCancellationInitiator.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026742FA30, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x800000026742FA60, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x800000026742FA90, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266F723B4(uint64_t a1)
{
  v2 = sub_266F724B8(&qword_2800F0C70, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionCancellationInitiator);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F7241C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F724B8(&qword_2800F0C70, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionCancellationInitiator);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F724B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FLOWLINKSchemaFLOWLINKActionCancellationInitiator(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLinkActionCancelled.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for FLOWLINKSchemaFLOWLINKActionCancellationInitiator(0);
  sub_266F727EC(&qword_2800F0C68, type metadata accessor for FLOWLINKSchemaFLOWLINKActionCancellationInitiator, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionCancellationInitiator);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026742FB00);
  return v5(v7, 0);
}

uint64_t sub_266F726E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F72744(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F727EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F72834()
{
  result = qword_2800F0C80;
  if (!qword_2800F0C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0C80);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionConfirmationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C88, 0x277D573D8);
  sub_266ECAF2C(&qword_2800F0C90, &qword_2800F0C88, 0x277D573D8, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionConfirmationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F0C98, 0x277D573D0);
  sub_266ECAF2C(&qword_2800F0CA0, &qword_2800F0C98, 0x277D573D0, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionConfirmationEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
  sub_26738117C();
  v10 = sub_2673811BC();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_266ECAD54(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_266ECAD54((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v8, v21);
  return v10(v22, 0);
}

uint64_t sub_266F72CCC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F72D30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionConfirmationEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x636572726F437369, 0xEF6E6F6974634174);
  return v8(v10, 0);
}

uint64_t sub_266F7302C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F73090(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F730F4()
{
  result = qword_2800F0CA0;
  if (!qword_2800F0CA0)
  {
    sub_266F7314C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0CA0);
  }

  return result;
}

unint64_t sub_266F7314C()
{
  result = qword_2800F0C98;
  if (!qword_2800F0C98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0C98);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionConfirmationStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F733E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F73444(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F734A8()
{
  result = qword_2800F0C90;
  if (!qword_2800F0C90)
  {
    sub_266F73500();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0C90);
  }

  return result;
}

unint64_t sub_266F73500()
{
  result = qword_2800F0C88;
  if (!qword_2800F0C88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0C88);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v23 = sub_26738118C();
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v22 = &v20 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v20 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0CB8, 0x277D574E8);
  sub_266ECAF2C(&qword_2800F0CC0, &qword_2800F0CB8, 0x277D574E8, &protocol conformance descriptor for FLOWLINKSchemaFLOWLinkActionStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800F0CC8, 0x277D574D8);
  sub_266ECAF2C(&qword_2800F0CD0, &qword_2800F0CC8, 0x277D574D8, &protocol conformance descriptor for FLOWLINKSchemaFLOWLinkActionEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F0CD8, 0x277D574E0);
  sub_266ECAF2C(&qword_2800F0CE0, &qword_2800F0CD8, 0x277D574E0, &protocol conformance descriptor for FLOWLINKSchemaFLOWLinkActionFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F0C80, 0x277D574D0);
  sub_266ECAF2C(&qword_2800F0C78, &qword_2800F0C80, 0x277D574D0, &protocol conformance descriptor for FLOWLINKSchemaFLOWLinkActionCancelled);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v10 = v22;
  v11 = sub_2673811AC();
  sub_266EC637C(v4, 0x656C6C65636E6163, 0xE900000000000064);
  v11(v24, 0);
  sub_26738117C();
  v12 = sub_2673811BC();
  v14 = v13;
  v15 = *v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v14 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_266ECAD54(0, v15[2] + 1, 1, v15);
    *v14 = v15;
  }

  v18 = v15[2];
  v17 = v15[3];
  if (v18 >= v17 >> 1)
  {
    v15 = sub_266ECAD54((v17 > 1), v18 + 1, 1, v15);
    *v14 = v15;
  }

  v15[2] = v18 + 1;
  (*(v21 + 32))(v15 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18, v10, v23);
  return v12(v24, 0);
}

uint64_t sub_266F73B30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F73B94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionConversionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v20 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0CF8, 0x277D57400);
  sub_266ECAF2C(&qword_2800F0D00, &qword_2800F0CF8, 0x277D57400, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionConversionStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F0D08, 0x277D573F0);
  sub_266ECAF2C(&qword_2800F0D10, &qword_2800F0D08, 0x277D573F0, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionConversionEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0D18, 0x277D573F8);
  sub_266ECAF2C(&qword_2800F0D20, &qword_2800F0D18, 0x277D573F8, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionConversionFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v10(v23, 0);
  sub_26738117C();
  v11 = sub_2673811BC();
  v13 = v12;
  v14 = *v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v13 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = sub_266ECAD54(0, v14[2] + 1, 1, v14);
    *v13 = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = sub_266ECAD54((v16 > 1), v17 + 1, 1, v14);
    *v13 = v14;
  }

  v14[2] = v17 + 1;
  (*(v20 + 32))(v14 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_266F74150(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F741B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionConversionEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C60, 0x277D573C0);
  sub_266ECAF2C(&qword_2800F0C58, &qword_2800F0C60, 0x277D573C0, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKAction);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F69746361, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F74428(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0C60, 0x277D573C0);
  sub_266ECAF2C(&qword_2800F0C58, &qword_2800F0C60, 0x277D573C0, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKAction);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F69746361, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F745C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F74624(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionConversionFailed.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F74910(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F74974(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F749D8()
{
  result = qword_2800F0D20;
  if (!qword_2800F0D20)
  {
    sub_266F74A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0D20);
  }

  return result;
}

unint64_t sub_266F74A30()
{
  result = qword_2800F0D18;
  if (!qword_2800F0D18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0D18);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionConversionStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267427640);
  return v5(v7, 0);
}

uint64_t sub_266F74C74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F74CD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLinkActionEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F74FC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F75028(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F7508C()
{
  result = qword_2800F0CD0;
  if (!qword_2800F0CD0)
  {
    sub_266F750E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0CD0);
  }

  return result;
}

unint64_t sub_266F750E4()
{
  result = qword_2800F0CC8;
  if (!qword_2800F0CC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0CC8);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionExecutionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v19 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0D38, 0x277D57418);
  sub_266ECAF2C(&qword_2800F0D40, &qword_2800F0D38, 0x277D57418, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionExecutionStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F0D48, 0x277D57410);
  sub_266ECAF2C(&qword_2800F0D50, &qword_2800F0D48, 0x277D57410, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKActionExecutionEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = v20;
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
  sub_26738117C();
  v10 = sub_2673811BC();
  v12 = v11;
  v13 = *v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v12 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_266ECAD54(0, v13[2] + 1, 1, v13);
    *v12 = v13;
  }

  v16 = v13[2];
  v15 = v13[3];
  if (v16 >= v15 >> 1)
  {
    v13 = sub_266ECAD54((v15 > 1), v16 + 1, 1, v13);
    *v12 = v13;
  }

  v13[2] = v16 + 1;
  (*(v19 + 32))(v13 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v16, v8, v21);
  return v10(v22, 0);
}

uint64_t sub_266F7557C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F755E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static FLOWLINKSchemaFLOWLINKActionExecutionEnded.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x800000026742FDE0);
  return v8(v10, 0);
}

uint64_t sub_266F758D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F75938(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F7599C()
{
  result = qword_2800F0D50;
  if (!qword_2800F0D50)
  {
    sub_266F759F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0D50);
  }

  return result;
}

unint64_t sub_266F759F4()
{
  result = qword_2800F0D48;
  if (!qword_2800F0D48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0D48);
  }

  return result;
}

uint64_t static FLOWLINKSchemaFLOWLINKActionExecutionStarted.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10[-v5];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_266F75C88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}