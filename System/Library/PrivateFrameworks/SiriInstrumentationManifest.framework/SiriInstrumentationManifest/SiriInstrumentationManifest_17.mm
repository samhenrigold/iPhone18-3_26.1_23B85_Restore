uint64_t static ORCHSchemaORCHSiriUnderstandingOnDeviceMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x80000002674714D0, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000043, 0x8000000267471500, v8);
  *v7 = v11;

  v5(v12, 0);
  sub_266ECB128(&unk_28788B900);
  return sub_26738112C();
}

uint64_t sub_2671ADB28(uint64_t a1)
{
  v2 = sub_2671ADC2C(&qword_2800F6F28, &protocol conformance descriptor for ORCHSchemaORCHSiriUnderstandingOnDeviceMode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671ADB90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671ADC2C(&qword_2800F6F28, &protocol conformance descriptor for ORCHSchemaORCHSiriUnderstandingOnDeviceMode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671ADC2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHSiriUnderstandingOnDeviceMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHSpeechTaskType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267471580, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674715A0, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x80000002674715C0, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x80000002674715F0, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x8000000267471610, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001CLL, 0x8000000267471630, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001DLL, 0x8000000267471650, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000020, 0x8000000267471670, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_2671AE0B8(uint64_t a1)
{
  v2 = sub_2671AE1BC(&qword_2800F6F30, &protocol conformance descriptor for ORCHSchemaORCHSpeechTaskType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671AE120(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671AE1BC(&qword_2800F6F30, &protocol conformance descriptor for ORCHSchemaORCHSpeechTaskType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671AE1BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHSpeechTaskType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHSubRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v28 = a1;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v27 = *(v8 + 56);
  v27(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6575716552627573, 0xEC00000064497473);
  v9(v33, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v32, 0x6575716552627573, 0xEC00000064497473);
  if (!(*(v8 + 48))(v12, 1, v7))
  {
    sub_266ECB128(&unk_28788B930);
    sub_26738115C();
  }

  (v11)(v32, 0);
  v10(v33, 0);
  sub_266ECB294(0, &qword_2800F6F38, 0x277D59850);
  sub_266ECAF2C(&qword_2800F6F40, &qword_2800F6F38, 0x277D59850, &protocol conformance descriptor for ORCHSchemaORCHSubRequestStarted);
  sub_26738121C();
  v13 = v27;
  v27(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v14(v33, 0);
  sub_266ECB294(0, &qword_2800F6F48, 0x277D59848);
  sub_266ECAF2C(&qword_2800F6F50, &qword_2800F6F48, 0x277D59848, &protocol conformance descriptor for ORCHSchemaORCHSubRequestFailed);
  sub_26738121C();
  v13(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v15(v33, 0);
  sub_266ECB294(0, &qword_2800F6F58, 0x277D59840);
  sub_266ECAF2C(&qword_2800F6F60, &qword_2800F6F58, 0x277D59840, &protocol conformance descriptor for ORCHSchemaORCHSubRequestEnded);
  sub_26738121C();
  v13(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v16(v33, 0);
  v17 = v29;
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
  (*(v30 + 32))(v21 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, v17, v31);
  return v18(v33, 0);
}

uint64_t sub_2671AE8A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AE908(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHSubRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671AEBF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AEC58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671AECBC()
{
  result = qword_2800F6F60;
  if (!qword_2800F6F60)
  {
    sub_2671AED14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6F60);
  }

  return result;
}

unint64_t sub_2671AED14()
{
  result = qword_2800F6F58;
  if (!qword_2800F6F58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6F58);
  }

  return result;
}

uint64_t static ORCHSchemaORCHSubRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v8 = *MEMORY[0x277D3E4E8];
  v9 = *(v2 + 104);
  v24 = v2 + 104;
  v25 = v1;
  v22 = v9;
  v9(v4, v8, v1);
  v27[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v21 = *(v11 + 56);
  v21(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v12(v27, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v26, 0x737473697865, 0xE600000000000000);
  if (!(*(v11 + 48))(v15, 1, v10))
  {
    sub_266ECB128(&unk_28788B960);
    sub_26738115C();
  }

  (v14)(v26, 0);
  v13(v27, 0);
  type metadata accessor for ORCHSchemaORCHErrorDomain(0);
  sub_2671AF304(&qword_2800F6B50, type metadata accessor for ORCHSchemaORCHErrorDomain, &protocol conformance descriptor for ORCHSchemaORCHErrorDomain);
  sub_26738120C();
  v16 = v21;
  v21(v7, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D6F44726F727265, 0xEB000000006E6961);
  v17(v27, 0);
  v22(v4, *MEMORY[0x277D3E508], v25);
  v27[0] = 1;
  sub_26738114C();
  v16(v7, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F43726F727265, 0xE900000000000065);
  return v18(v27, 0);
}

uint64_t sub_2671AF1F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AF25C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671AF304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671AF34C()
{
  result = qword_2800F6F48;
  if (!qword_2800F6F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6F48);
  }

  return result;
}

uint64_t static ORCHSchemaORCHSubRequestStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v14 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  v7(v15, 0);
  type metadata accessor for SISchemaSubRequestType(0);
  sub_2671AF86C();
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x6575716552627573, 0xEE00657079547473);
  v8(v15, 0);
  sub_266ECB294(0, &qword_2800F6DA0, 0x277D59760);
  sub_266ECAF2C(&qword_2800F6D98, &qword_2800F6DA0, 0x277D59760, &protocol conformance descriptor for ORCHSchemaORCHNLRouterDecisionGenAIMetadata);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x74654D49416E6567, 0xED00006174616461);
  v9(v15, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v14, 0x74654D49416E6567, 0xED00006174616461);
  if (!(*(v5 + 48))(v12, 1, v4))
  {
    sub_266ECB128(&unk_28788B988);
    sub_26738115C();
  }

  (v11)(v14, 0);
  return v10(v15, 0);
}

uint64_t sub_2671AF7A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AF80C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671AF86C()
{
  result = qword_2800F6F68;
  if (!qword_2800F6F68)
  {
    type metadata accessor for SISchemaSubRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6F68);
  }

  return result;
}

uint64_t static ORCHSchemaORCHTRPCandidateCreated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x49707254746F6F72, 0xE900000000000064);
  v6(v9, 0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x4970725472657375, 0xEA00000000007364);
  return v7(v9, 0);
}

uint64_t sub_2671AFB94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AFBF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHTRPCandidateReceived.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671AFE6C(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671B0004(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B0068(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHTRPFinalized.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671B02DC(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671B0474(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B04D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHTTSPowerContextPolicy.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267471850, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267471880, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x80000002674718B0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x80000002674718E0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2671B0804(uint64_t a1)
{
  v2 = sub_2671B0908(&qword_2800F6F70, &protocol conformance descriptor for ORCHSchemaORCHTTSPowerContextPolicy);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B086C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B0908(&qword_2800F6F70, &protocol conformance descriptor for ORCHSchemaORCHTTSPowerContextPolicy);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B0908(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHTTSPowerContextPolicy(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHUIActivationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F6F78, 0x277D59880);
  sub_266ECAF2C(&qword_2800F6F80, &qword_2800F6F78, 0x277D59880, &protocol conformance descriptor for ORCHSchemaORCHUIActivationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F6F88, 0x277D59878);
  sub_266ECAF2C(&qword_2800F6F90, &qword_2800F6F88, 0x277D59878, &protocol conformance descriptor for ORCHSchemaORCHUIActivationEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6(v4, 0, 1, v5);
  v9 = v21;
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x6449707274, 0xE500000000000000);
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

uint64_t sub_2671B0E60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B0EC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHUIActivationEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671B11B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B1214(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671B1278()
{
  result = qword_2800F6F90;
  if (!qword_2800F6F90)
  {
    sub_2671B12D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6F90);
  }

  return result;
}

unint64_t sub_2671B12D0()
{
  result = qword_2800F6F88;
  if (!qword_2800F6F88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6F88);
  }

  return result;
}

uint64_t static ORCHSchemaORCHUIActivationStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671B1564(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B15C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671B162C()
{
  result = qword_2800F6F80;
  if (!qword_2800F6F80)
  {
    sub_2671B1684();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6F80);
  }

  return result;
}

unint64_t sub_2671B1684()
{
  result = qword_2800F6F78;
  if (!qword_2800F6F78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6F78);
  }

  return result;
}

uint64_t static ORCHSchemaORCHUnsupportedLanguageDetected.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaISOLanguageCode(0);
  sub_2671B19C0(&qword_2800F12E8, type metadata accessor for SISchemaISOLanguageCode, &protocol conformance descriptor for SISchemaISOLanguageCode);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267471A00);
  return v5(v7, 0);
}

uint64_t sub_2671B18B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B1918(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671B19C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671B1A08()
{
  result = qword_2800F6AD8;
  if (!qword_2800F6AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6AD8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHUserIdentityClassification.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267471A60, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x8000000267471A90, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x8000000267471AC0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x8000000267471AF0, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000027, 0x8000000267471B20, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002BLL, 0x8000000267471B50, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_2671B1DBC(uint64_t a1)
{
  v2 = sub_2671B1EC0(&qword_2800F6F98, &protocol conformance descriptor for ORCHSchemaORCHUserIdentityClassification);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B1E24(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B1EC0(&qword_2800F6F98, &protocol conformance descriptor for ORCHSchemaORCHUserIdentityClassification);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B1EC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHUserIdentityClassification(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHUserSessionAccessLevel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x8000000267471BC0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267471BF0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x8000000267471C10, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2671B2118(uint64_t a1)
{
  v2 = sub_2671B221C(&qword_2800F6FA0, &protocol conformance descriptor for ORCHSchemaORCHUserSessionAccessLevel);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B2180(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B221C(&qword_2800F6FA0, &protocol conformance descriptor for ORCHSchemaORCHUserSessionAccessLevel);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B221C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHUserSessionAccessLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHUserSessionState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x8000000267471C60, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267471C80, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267471CA0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267471CC0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2671B24E8(uint64_t a1)
{
  v2 = sub_2671B25EC(&qword_2800F6FA8, &protocol conformance descriptor for ORCHSchemaORCHUserSessionState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B2550(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B25EC(&qword_2800F6FA8, &protocol conformance descriptor for ORCHSchemaORCHUserSessionState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B25EC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHUserSessionState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHVisionPowerState.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for ORCHSchemaORCHBlackboardUseCaseProfile(0);
  sub_2671B2A70(&qword_2800F6858, type metadata accessor for ORCHSchemaORCHBlackboardUseCaseProfile, &protocol conformance descriptor for ORCHSchemaORCHBlackboardUseCaseProfile);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267471D10);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E508], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x8000000267471D30);
  return v10(v14, 0);
}

uint64_t sub_2671B2964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B29C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671B2A70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671B2AB8()
{
  result = qword_2800F6E28;
  if (!qword_2800F6E28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6E28);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAlignmentOffset.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "SUSAlignmentOffset";
  v9 = *MEMORY[0x277D3E508];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6172616843646E65, 0xEF78644972657463);
  return v14(v19, 0);
}

uint64_t sub_2671B2E3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B2EA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671B2F04()
{
  result = qword_2800F6FB0;
  if (!qword_2800F6FB0)
  {
    sub_2671B2F5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6FB0);
  }

  return result;
}

unint64_t sub_2671B2F5C()
{
  result = qword_2800F6FB8;
  if (!qword_2800F6FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6FB8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAlternateQuerySuggestion.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v3, *MEMORY[0x277D3E508], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001DLL, 0x8000000267471DF0);
  return v8(v10, 0);
}

uint64_t sub_2671B31F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B325C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671B32C0()
{
  result = qword_2800F6FC0;
  if (!qword_2800F6FC0)
  {
    sub_2671B3318();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6FC0);
  }

  return result;
}

unint64_t sub_2671B3318()
{
  result = qword_2800F6FC8;
  if (!qword_2800F6FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6FC8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v17 = sub_26738113C();
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v16 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v16 = "ySuggestionCandidateTier1";
  type metadata accessor for PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateType(0);
  sub_2671B3840(&qword_2800F6FD0, type metadata accessor for PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateType, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, v16 | 0x8000000000000000);
  v10(v19, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v17);
  v19[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 1954047348, 0xE400000000000000);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 1954047348, 0xE400000000000000);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_28788B9B0);
    sub_26738115C();
  }

  (v13)(v18, 0);
  return v12(v19, 0);
}

uint64_t sub_2671B3734(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B3798(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671B3840(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671B3888()
{
  result = qword_2800F6FE0;
  if (!qword_2800F6FE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6FE0);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000038, 0x8000000267471ED0, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000030, 0x8000000267471F10, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_2671B3A78(uint64_t a1)
{
  v2 = sub_2671B3B7C(&qword_2800F6FE8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B3AE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B3B7C(&qword_2800F6FE8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B3B7C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAlternateQuerySuggestionTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6FE0, 0x277D598B0);
  sub_266ECAF2C(&qword_2800F6FD8, &qword_2800F6FE0, 0x277D598B0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAlternateQuerySuggestionCandidateTier1);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000026, 0x8000000267471FA0);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0xD000000000000026, 0x8000000267471FA0);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788B9D8);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2671B3E60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B3EC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v27 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E4E8];
  v9 = *(v2 + 104);
  v24 = v1;
  v9(v4, v8, v1);
  v25 = v9;
  v26 = v2 + 104;
  v30[0] = 1;
  sub_26738114C();
  v23 = sub_26738116C();
  v10 = *(v23 - 8);
  v11 = *(v10 + 56);
  v28 = v10 + 56;
  v29 = v11;
  v11(v7, 0, 1, v23);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267472010);
  v12(v30, 0);
  v9(v4, v8, v1);
  v30[0] = 1;
  v13 = v4;
  sub_26738114C();
  v14 = v23;
  v15 = v29;
  v29(v7, 0, 1, v23);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x8000000267472030);
  v16(v30, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSSafetyStatus(0);
  sub_2671B459C();
  sub_26738120C();
  v15(v7, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x8000000267472050);
  v17(v30, 0);
  sub_266ECB294(0, &qword_2800F7008, 0x277D59A10);
  sub_266ECAF2C(&qword_2800F7010, &qword_2800F7008, 0x277D59A10, &protocol conformance descriptor for PEGASUSSchemaPEGASUSSafetyScore);
  sub_26738122C();
  v18 = v29;
  v29(v7, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x8000000267472070);
  v19(v30, 0);
  v25(v13, *MEMORY[0x277D3E530], v24);
  v30[0] = 1;
  sub_26738114C();
  v18(v7, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  return v20(v30, 0);
}

uint64_t sub_2671B44D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B453C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671B459C()
{
  result = qword_2800F7000;
  if (!qword_2800F7000)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSSafetyStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7000);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAsrCorrectionInfo.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7028, 0x277D598D0);
  sub_266ECAF2C(&qword_2800F7030, &qword_2800F7028, 0x277D598D0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAsrHypothesisInfo);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674720D0);
  return v5(v7, 0);
}

uint64_t sub_2671B4830(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B4894(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSAsrHypothesisIdx.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v21 = v2;
  v22 = v10;
  v10(v5, v9, v2);
  v23[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v20[1] = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x7541656372756F73, 0xEC00000079654B78);
  v13(v23, 0);
  v14 = *MEMORY[0x277D3E538];
  v15 = v2;
  v16 = v22;
  v22(v5, v14, v15);
  v23[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x7541656372756F73, 0xEC00000078644978);
  v17(v23, 0);
  v16(v5, v14, v21);
  v23[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x8000000267472130);
  return v18(v23, 0);
}

uint64_t sub_2671B4D28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B4D8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671B4DF0()
{
  result = qword_2800F7048;
  if (!qword_2800F7048)
  {
    sub_2671B4E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7048);
  }

  return result;
}

unint64_t sub_2671B4E48()
{
  result = qword_2800F7050;
  if (!qword_2800F7050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7050);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAsrHypothesisInfo.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v39 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E530];
  v9 = *(v2 + 104);
  v37 = v2 + 104;
  v38 = v1;
  v34 = v9;
  v9(v4, v8, v1);
  v41[0] = 1;
  v33 = v4;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v35 = v11 + 56;
  v36 = v12;
  v12(v7, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x8000000267472190);
  v13(v41, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v40, 0xD000000000000010, 0x8000000267472190);
  if (!(*(v11 + 48))(v16, 1, v10))
  {
    sub_266ECB128(&unk_28788BA00);
    sub_26738115C();
  }

  (v15)(v40, 0);
  v14(v41, 0);
  sub_266ECB294(0, &qword_2800F7050, 0x277D598C8);
  sub_266ECAF2C(&qword_2800F7048, &qword_2800F7050, 0x277D598C8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAsrHypothesisIdx);
  sub_26738120C();
  v17 = v36;
  v36(v7, 0, 1, v10);
  v18 = v17;
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 7890025, 0xE300000000000000);
  v19(v41, 0);
  v20 = v33;
  v21 = v38;
  v22 = v10;
  v23 = v34;
  v34(v33, *MEMORY[0x277D3E500], v38);
  v41[0] = 1;
  sub_26738114C();
  v18(v7, 0, 1, v22);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x65726F6373, 0xE500000000000000);
  v24(v41, 0);
  v32 = "postItnUtterance";
  v25 = *MEMORY[0x277D3E4E8];
  v23(v20, v25, v21);
  v41[0] = 1;
  sub_26738114C();
  v18(v7, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v32 | 0x8000000000000000);
  v26(v41, 0);
  v23(v20, v25, v38);
  v41[0] = 1;
  sub_26738114C();
  v27 = v22;
  v28 = v36;
  v36(v7, 0, 1, v22);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x80000002674721D0);
  v29(v41, 0);
  sub_266ECB294(0, &qword_2800F7058, 0x277D59928);
  sub_266ECAF2C(&qword_2800F7060, &qword_2800F7058, 0x277D59928, &protocol conformance descriptor for PEGASUSSchemaPEGASUSCorrectionInfo);
  sub_26738122C();
  v28(v7, 0, 1, v27);
  v30 = sub_2673811AC();
  sub_266EC637C(v7, 0x6974636572726F63, 0xEB00000000736E6FLL);
  return v30(v41, 0);
}

uint64_t sub_2671B55A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B5608(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSAudioAttribute.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267472230, isUniquelyReferenced_nonNull_native);
  *v3 = v50;

  v1(v62, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267472250, v8);
  *v7 = v51;

  v5(v62, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x8000000267472280, v12);
  *v11 = v52;

  v9(v62, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x80000002674722A0, v16);
  *v15 = v53;

  v13(v62, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x80000002674722D0, v20);
  *v19 = v54;

  v17(v62, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ELL, 0x80000002674722F0, v24);
  *v23 = v55;

  v21(v62, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x8000000267472310, v28);
  *v27 = v56;

  v25(v62, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000024, 0x8000000267472330, v32);
  *v31 = v57;

  v29(v62, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ELL, 0x8000000267472360, v36);
  *v35 = v58;

  v33(v62, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000021, 0x8000000267472380, v40);
  *v39 = v59;

  v37(v62, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001FLL, 0x80000002674723B0, v44);
  *v43 = v60;

  v41(v62, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000031, 0x80000002674723D0, v48);
  *v47 = v61;

  return v45(v62, 0);
}

uint64_t sub_2671B5CC4(uint64_t a1)
{
  v2 = sub_2671B5DC8(&qword_2800F7070, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioAttribute);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B5D2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B5DC8(&qword_2800F7070, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioAttribute);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B5DC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSAudioAttribute(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioDecade.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267472440, isUniquelyReferenced_nonNull_native);
  *v3 = v50;

  v1(v62, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267472460, v8);
  *v7 = v51;

  v5(v62, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x8000000267472480, v12);
  *v11 = v52;

  v9(v62, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x80000002674724A0, v16);
  *v15 = v53;

  v13(v62, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x80000002674724C0, v20);
  *v19 = v54;

  v17(v62, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x80000002674724E0, v24);
  *v23 = v55;

  v21(v62, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000018, 0x8000000267472500, v28);
  *v27 = v56;

  v25(v62, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000018, 0x8000000267472520, v32);
  *v31 = v57;

  v29(v62, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000018, 0x8000000267472540, v36);
  *v35 = v58;

  v33(v62, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000018, 0x8000000267472560, v40);
  *v39 = v59;

  v37(v62, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000018, 0x8000000267472580, v44);
  *v43 = v60;

  v41(v62, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000018, 0x80000002674725A0, v48);
  *v47 = v61;

  return v45(v62, 0);
}

uint64_t sub_2671B6438(uint64_t a1)
{
  v2 = sub_2671B653C(&qword_2800F7080, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioDecade);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B64A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B653C(&qword_2800F7080, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioDecade);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B653C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSAudioDecade(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioEntitySource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267472600, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267472630, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267472650, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2671B6798(uint64_t a1)
{
  v2 = sub_2671B689C(&qword_2800F7090, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioEntitySource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B6800(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B689C(&qword_2800F7090, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioEntitySource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B689C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSAudioEntitySource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioExecution.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7098, 0x277D598E8);
  sub_266ECAF2C(&qword_2800F70A0, &qword_2800F7098, 0x277D598E8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioPlaybackSignal);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x80000002674726B0);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F70A8, 0x277D59910);
  sub_266ECAF2C(&qword_2800F70B0, &qword_2800F70A8, 0x277D59910, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioUnderstanding);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x80000002674726D0);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F70B8, 0x277D598F0);
  sub_266ECAF2C(&qword_2800F70C0, &qword_2800F70B8, 0x277D598F0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioQueueStateInfo);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x80000002674726F0);
  return v8(v10, 0);
}

uint64_t sub_2671B6C88(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B6CEC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSAudioExecutionTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v27 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v27 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *(v2 + 104);
  v30 = *MEMORY[0x277D3E530];
  v31 = v2 + 104;
  v32 = v1;
  v29 = v8;
  v8(v4);
  v36[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v33 = *(v10 + 56);
  v34 = v10 + 56;
  v33(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x75614C6F69647561, 0xED0000644968636ELL);
  v11(v36, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v35, 0x75614C6F69647561, 0xED0000644968636ELL);
  v28 = *(v10 + 48);
  if (!v28(v14, 1, v9))
  {
    sub_266ECB128(&unk_28788BA28);
    sub_26738115C();
  }

  (v13)(v35, 0);
  v12(v36, 0);
  v29(v4, v30, v32);
  v36[0] = 1;
  sub_26738114C();
  v33(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x7079546F69647561, 0xE900000000000065);
  v15(v36, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v35, 0x7079546F69647561, 0xE900000000000065);
  if (!v28(v18, 1, v9))
  {
    sub_266ECB128(&unk_28788BA50);
    sub_26738115C();
  }

  (v17)(v35, 0);
  v16(v36, 0);
  v29(v4, v30, v32);
  v36[0] = 1;
  sub_26738114C();
  v33(v7, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x8000000267472750);
  v19(v36, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v35, 0xD000000000000014, 0x8000000267472750);
  if (!v28(v22, 1, v9))
  {
    sub_266ECB128(&unk_28788BA78);
    sub_26738115C();
  }

  (v21)(v35, 0);
  v20(v36, 0);
  sub_266ECB294(0, &qword_2800F70D8, 0x277D59918);
  sub_266ECAF2C(&qword_2800F70E0, &qword_2800F70D8, 0x277D59918, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioUnderstandingTier1);
  sub_26738120C();
  v23 = v33;
  v33(v7, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x8000000267472770);
  v24(v36, 0);
  sub_266ECB294(0, &qword_2800F70E8, 0x277D598F8);
  sub_266ECAF2C(&qword_2800F70F0, &qword_2800F70E8, 0x277D598F8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1);
  sub_26738120C();
  v23(v7, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x8000000267472790);
  return v25(v36, 0);
}

uint64_t sub_2671B74FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B7560(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSAudioPlaybackQueueLocation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000029, 0x80000002674727F0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267472820, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267472850, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x8000000267472880, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2671B7888(uint64_t a1)
{
  v2 = sub_2671B798C(&qword_2800F7110, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioPlaybackQueueLocation);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B78F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B798C(&qword_2800F7110, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioPlaybackQueueLocation);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B798C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSAudioPlaybackQueueLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioPlaybackSignal.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for PEGASUSSchemaPEGASUSAudioPlaybackQueueLocation(0);
  sub_2671B7E10(&qword_2800F7108, type metadata accessor for PEGASUSSchemaPEGASUSAudioPlaybackQueueLocation, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioPlaybackQueueLocation);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x80000002674728F0);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E500], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267472910);
  return v10(v14, 0);
}

uint64_t sub_2671B7D04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B7D68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671B7E10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671B7E58()
{
  result = qword_2800F7098;
  if (!qword_2800F7098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7098);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioQueueStateInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  MEMORY[0x28223BE20](v4);
  v28 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v25 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaMediaPlayBackState(0);
  sub_2671B8524(&qword_2800EFAD8, type metadata accessor for SISchemaMediaPlayBackState, &protocol conformance descriptor for SISchemaMediaPlayBackState);
  v29 = a1;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v27 = v10;
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x6174536F69647561, 0xEA00000000006574);
  v12(v32, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSAudioEntitySource(0);
  sub_2671B8524(&qword_2800F7088, type metadata accessor for PEGASUSSchemaPEGASUSAudioEntitySource, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioEntitySource);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v13 = v11;
  v25[1] = a2;
  v26 = v11;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, 0x8000000267472970);
  v14(v32, 0);
  v25[0] = "audioEntitySource";
  v15 = *MEMORY[0x277D3E508];
  v16 = v30;
  v17 = *(v31 + 104);
  v31 += 104;
  v18 = v28;
  v17(v28, v15, v30);
  v32[0] = 1;
  sub_26738114C();
  v19 = v27;
  v13(v9, 0, 1, v27);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v25[0] | 0x8000000000000000);
  v20(v32, 0);
  v17(v18, v15, v16);
  v32[0] = 1;
  sub_26738114C();
  v21 = v26;
  v26(v9, 0, 1, v19);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x80000002674729B0);
  v22(v32, 0);
  sub_266ECB294(0, &qword_2800F7118, 0x277D59900);
  sub_266ECAF2C(&qword_2800F7120, &qword_2800F7118, 0x277D59900, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioQueueStateItem);
  sub_26738120C();
  v21(v9, 0, 1, v19);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x80000002674729D0);
  return v23(v32, 0);
}

uint64_t sub_2671B8460(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B84C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671B8524(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static PEGASUSSchemaPEGASUSAudioQueueStateInfoTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7128, 0x277D59908);
  sub_266ECAF2C(&qword_2800F7130, &qword_2800F7128, 0x277D59908, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioQueueStateItemTier1);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x8000000267472A30);
  return v5(v7, 0);
}

uint64_t sub_2671B87A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B880C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSAudioQueueStateItem.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PEGASUSSchemaPEGASUSAudioQueueStateItemType(0);
  sub_2671B8BA0(&qword_2800F7138, type metadata accessor for PEGASUSSchemaPEGASUSAudioQueueStateItemType, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioQueueStateItemType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x8000000267472A90);
  return v5(v7, 0);
}

uint64_t sub_2671B8A94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B8AF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671B8BA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671B8BE8()
{
  result = qword_2800F7118;
  if (!qword_2800F7118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7118);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioQueueStateItemTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x626C416F69647561, 0xEA00000000006D75);
  v10(v36, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v35, 0x626C416F69647561, 0xEA00000000006D75);
  v28 = *(v9 + 48);
  if (!v28(v13, 1, v8))
  {
    sub_266ECB128(&unk_28788BAA0);
    sub_26738115C();
  }

  (v12)(v35, 0);
  v11(v36, 0);
  v31(v3, v32, v34);
  v36[0] = 1;
  sub_26738114C();
  v29(v6, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x7472416F69647561, 0xEB00000000747369);
  v14(v36, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v35, 0x7472416F69647561, 0xEB00000000747369);
  if (!v28(v17, 1, v8))
  {
    sub_266ECB128(&unk_28788BAC8);
    sub_26738115C();
  }

  (v16)(v35, 0);
  v15(v36, 0);
  v31(v3, v32, v34);
  v36[0] = 1;
  sub_26738114C();
  v29(v6, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x696C436F69647561, 0xED00006449746E65);
  v18(v36, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v35, 0x696C436F69647561, 0xED00006449746E65);
  if (!v28(v21, 1, v8))
  {
    sub_266ECB128(&unk_28788BAF0);
    sub_26738115C();
  }

  (v20)(v35, 0);
  v19(v36, 0);
  v31(v3, v32, v34);
  v36[0] = 1;
  sub_26738114C();
  v29(v6, 0, 1, v8);
  v22 = sub_2673811AC();
  sub_266EC637C(v6, 0x7469546F69647561, 0xEA0000000000656CLL);
  v22(v36, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v35, 0x7469546F69647561, 0xEA0000000000656CLL);
  if (!v28(v25, 1, v8))
  {
    sub_266ECB128(&unk_28788BB18);
    sub_26738115C();
  }

  (v24)(v35, 0);
  return v23(v36, 0);
}

uint64_t sub_2671B9348(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B93AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671B9410()
{
  result = qword_2800F7130;
  if (!qword_2800F7130)
  {
    sub_2671B9468();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7130);
  }

  return result;
}

unint64_t sub_2671B9468()
{
  result = qword_2800F7128;
  if (!qword_2800F7128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7128);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioQueueStateItemType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267472B30, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x8000000267472B60, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x8000000267472B90, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x8000000267472BC0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ALL, 0x8000000267472BF0, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000026, 0x8000000267472C20, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000023, 0x8000000267472C50, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2671B9890(uint64_t a1)
{
  v2 = sub_2671B9994(&qword_2800F7140, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioQueueStateItemType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671B98F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671B9994(&qword_2800F7140, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioQueueStateItemType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671B9994(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSAudioQueueStateItemType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioUnderstanding.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PEGASUSSchemaPEGASUSAudioVerb(0);
  sub_2671B9F18(&qword_2800F7148, type metadata accessor for PEGASUSSchemaPEGASUSAudioVerb, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioVerb);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7265566F69647561, 0xE900000000000062);
  v6(v11, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSRequestedMediaType(0);
  sub_2671B9F18(&qword_2800F7150, type metadata accessor for PEGASUSSchemaPEGASUSRequestedMediaType, &protocol conformance descriptor for PEGASUSSchemaPEGASUSRequestedMediaType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267472CC0);
  v7(v11, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSAudioAttribute(0);
  sub_2671B9F18(&qword_2800F7068, type metadata accessor for PEGASUSSchemaPEGASUSAudioAttribute, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioAttribute);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x7474416F69647561, 0xEF73657475626972);
  v8(v11, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSAudioDecade(0);
  sub_2671B9F18(&qword_2800F7078, type metadata accessor for PEGASUSSchemaPEGASUSAudioDecade, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioDecade);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x6365446F69647561, 0xEB00000000656461);
  return v9(v11, 0);
}

uint64_t sub_2671B9E0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671B9E70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671B9F18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671B9F60()
{
  result = qword_2800F70A8;
  if (!qword_2800F70A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F70A8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioUnderstandingTier1.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7472416F69647561, 0xEB00000000747369);
  v10(v36, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v35, 0x7472416F69647561, 0xEB00000000747369);
  v28 = *(v9 + 48);
  if (!v28(v13, 1, v8))
  {
    sub_266ECB128(&unk_28788BB40);
    sub_26738115C();
  }

  (v12)(v35, 0);
  v11(v36, 0);
  v31(v3, v32, v34);
  v36[0] = 1;
  sub_26738114C();
  v29(v6, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x7070416F69647561, 0xEC000000656D614ELL);
  v14(v36, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v35, 0x7070416F69647561, 0xEC000000656D614ELL);
  if (!v28(v17, 1, v8))
  {
    sub_266ECB128(&unk_28788BB68);
    sub_26738115C();
  }

  (v16)(v35, 0);
  v15(v36, 0);
  v31(v3, v32, v34);
  v36[0] = 1;
  sub_26738114C();
  v29(v6, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x746E456F69647561, 0xEB00000000797469);
  v18(v36, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v35, 0x746E456F69647561, 0xEB00000000797469);
  if (!v28(v21, 1, v8))
  {
    sub_266ECB128(&unk_28788BB90);
    sub_26738115C();
  }

  (v20)(v35, 0);
  v19(v36, 0);
  v31(v3, v32, v34);
  v36[0] = 1;
  sub_26738114C();
  v29(v6, 0, 1, v8);
  v22 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267472D20);
  v22(v36, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v35, 0xD000000000000018, 0x8000000267472D20);
  if (!v28(v25, 1, v8))
  {
    sub_266ECB128(&unk_28788BBB8);
    sub_26738115C();
  }

  (v24)(v35, 0);
  return v23(v36, 0);
}

uint64_t sub_2671BA6B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671BA718(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671BA77C()
{
  result = qword_2800F70E0;
  if (!qword_2800F70E0)
  {
    sub_2671BA7D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F70E0);
  }

  return result;
}

unint64_t sub_2671BA7D4()
{
  result = qword_2800F70D8;
  if (!qword_2800F70D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F70D8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSAudioVerb.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267472D70, isUniquelyReferenced_nonNull_native);
  *v3 = v46;

  v1(v57, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267472D90, v8);
  *v7 = v47;

  v5(v57, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267472DB0, v12);
  *v11 = v48;

  v9(v57, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x8000000267472DD0, v16);
  *v15 = v49;

  v13(v57, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000015, 0x8000000267472DF0, v20);
  *v19 = v50;

  v17(v57, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x8000000267472E10, v24);
  *v23 = v51;

  v21(v57, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ALL, 0x8000000267472E30, v28);
  *v27 = v52;

  v25(v57, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000017, 0x8000000267472E50, v32);
  *v31 = v53;

  v29(v57, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000018, 0x8000000267472E70, v36);
  *v35 = v54;

  v33(v57, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000017, 0x8000000267472E90, v40);
  *v39 = v55;

  v37(v57, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000017, 0x8000000267472EB0, v44);
  *v43 = v56;

  return v41(v57, 0);
}

uint64_t sub_2671BADC0(uint64_t a1)
{
  v2 = sub_2671BAEC4(&qword_2800F7158, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioVerb);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671BAE28(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671BAEC4(&qword_2800F7158, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioVerb);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671BAEC4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSAudioVerb(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSCirAlerts.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v77 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v69 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v3 + 104);
  v78 = *MEMORY[0x277D3E530];
  v9 = v78;
  v10(v5, v78, v2);
  v76 = v3 + 104;
  v79[0] = 1;
  sub_26738114C();
  v75 = sub_26738116C();
  v11 = *(v75 - 8);
  v12 = *(v11 + 56);
  v73 = v11 + 56;
  v12(v8, 0, 1, v75);
  v71 = a1;
  v72 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x7472656C41726963, 0xE800000000000000);
  v13(v79, 0);
  v14 = v9;
  v15 = v77;
  v10(v5, v14, v77);
  v79[0] = 1;
  sub_26738114C();
  v16 = v75;
  v12(v8, 0, 1, v75);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x7472656C41726963, 0xEF747865746E6F43);
  v17(v79, 0);
  v69 = "iri.pegasus.PEGASUSCirAlerts";
  v18 = v78;
  v10(v5, v78, v15);
  v79[0] = 1;
  sub_26738114C();
  v72(v8, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v69 | 0x8000000000000000);
  v19(v79, 0);
  v69 = "cirAlertDictionaryOverKgBoost";
  v10(v5, v18, v15);
  v79[0] = 1;
  sub_26738114C();
  v20 = v72;
  v72(v8, 0, 1, v16);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v69 | 0x8000000000000000);
  v21(v79, 0);
  v69 = "cirAlertDomainFallback";
  v22 = v78;
  v74 = v10;
  v10(v5, v78, v77);
  v79[0] = 1;
  sub_26738114C();
  v20(v8, 0, 1, v16);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v69 | 0x8000000000000000);
  v23(v79, 0);
  v69 = "cirAlertEmergencyOverride";
  v70 = v5;
  v24 = v77;
  v10(v5, v22, v77);
  v79[0] = 1;
  sub_26738114C();
  v25 = v75;
  v26 = v72;
  v72(v8, 0, 1, v75);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v69 | 0x8000000000000000);
  v27(v79, 0);
  v69 = "cirAlertKgWaBoost";
  v28 = v70;
  v29 = v78;
  v74(v70, v78, v24);
  v79[0] = 1;
  sub_26738114C();
  v26(v8, 0, 1, v25);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, v69 | 0x8000000000000000);
  v30(v79, 0);
  v69 = "cirAlertKgWaBoostQa";
  v31 = v74;
  v74(v28, v29, v24);
  v79[0] = 1;
  sub_26738114C();
  v32 = v75;
  v33 = v72;
  v72(v8, 0, 1, v75);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v69 | 0x8000000000000000);
  v34(v79, 0);
  v69 = "cirAlertKgWaBoostWebPost";
  v35 = v77;
  v31(v28, v78, v77);
  v79[0] = 1;
  sub_26738114C();
  v33(v8, 0, 1, v32);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v69 | 0x8000000000000000);
  v36(v79, 0);
  v69 = "cirAlertKgWaBoostWebPre";
  v37 = v78;
  v38 = v35;
  v39 = v74;
  v74(v28, v78, v38);
  v79[0] = 1;
  sub_26738114C();
  v33(v8, 0, 1, v32);
  v40 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v69 | 0x8000000000000000);
  v40(v79, 0);
  v69 = "cirAlertMapsKgSwap";
  v41 = v37;
  v42 = v77;
  v43 = v39;
  v39(v70, v41, v77);
  v79[0] = 1;
  sub_26738114C();
  v44 = v75;
  v45 = v72;
  v72(v8, 0, 1, v75);
  v46 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v69 | 0x8000000000000000);
  v46(v79, 0);
  v69 = "cirAlertMediaPodcastOverride";
  v47 = v70;
  v48 = v78;
  v43(v70, v78, v42);
  v79[0] = 1;
  sub_26738114C();
  v45(v8, 0, 1, v44);
  v49 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v69 | 0x8000000000000000);
  v49(v79, 0);
  v69 = "cirAlertProfaneFilter";
  v50 = v74;
  v74(v47, v48, v42);
  v79[0] = 1;
  sub_26738114C();
  v51 = v75;
  v52 = v72;
  v72(v8, 0, 1, v75);
  v53 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000026, v69 | 0x8000000000000000);
  v53(v79, 0);
  v69 = "sFollowUpHeuristicFlag";
  v54 = v70;
  v50(v70, v78, v42);
  v79[0] = 1;
  sub_26738114C();
  v52(v8, 0, 1, v51);
  v55 = v52;
  v56 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002BLL, v69 | 0x8000000000000000);
  v56(v79, 0);
  v69 = "ultiTurnResolvedRankingFlag";
  v57 = v78;
  v58 = v74;
  v74(v54, v78, v42);
  v79[0] = 1;
  sub_26738114C();
  v59 = v75;
  v55(v8, 0, 1, v75);
  v60 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v69 | 0x8000000000000000);
  v60(v79, 0);
  v69 = "cirAlertRespectScoreOverrides";
  v61 = v77;
  v58(v54, v57, v77);
  v79[0] = 1;
  sub_26738114C();
  v55(v8, 0, 1, v59);
  v62 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v69 | 0x8000000000000000);
  v62(v79, 0);
  v69 = "cirAlertVerblessQueriesKgBoost";
  v63 = v61;
  v64 = v74;
  v74(v54, v57, v63);
  v79[0] = 1;
  sub_26738114C();
  v65 = v75;
  v55(v8, 0, 1, v75);
  v66 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v69 | 0x8000000000000000);
  v66(v79, 0);
  v64(v54, v78, v77);
  v79[0] = 1;
  sub_26738114C();
  v55(v8, 0, 1, v65);
  v67 = sub_2673811AC();
  sub_266EC637C(v8, 0x7472656C41726963, 0xEF74736F6F426157);
  return v67(v79, 0);
}

uint64_t sub_2671BBF58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671BBFBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671BC020()
{
  result = qword_2800F7160;
  if (!qword_2800F7160)
  {
    sub_2671BC078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7160);
  }

  return result;
}

unint64_t sub_2671BC078()
{
  result = qword_2800F7168;
  if (!qword_2800F7168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7168);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSCorrectionInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v4 + 104);
  v34 = *MEMORY[0x277D3E530];
  v36 = v4 + 104;
  v37 = v3;
  v33 = v10;
  v10(v6);
  v40[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v35 = *(v12 + 56);
  v35(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C616E696769726FLL, 0xE800000000000000);
  v13(v40, 0);
  v38 = a2;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v39, 0x6C616E696769726FLL, 0xE800000000000000);
  v31 = *(v12 + 48);
  if (!v31(v16, 1, v11))
  {
    sub_266ECB128(&unk_28788BBE0);
    sub_26738115C();
  }

  (v15)(v39, 0);
  v14(v40, 0);
  v33(v6, v34, v37);
  v40[0] = 1;
  sub_26738114C();
  v35(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6974636572726F63, 0xEA00000000006E6FLL);
  v17(v40, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v39, 0x6974636572726F63, 0xEA00000000006E6FLL);
  if (!v31(v20, 1, v11))
  {
    sub_266ECB128(&unk_28788BC08);
    sub_26738115C();
  }

  (v19)(v39, 0);
  v18(v40, 0);
  v21 = v37;
  v22 = v33;
  v33(v6, *MEMORY[0x277D3E500], v37);
  v40[0] = 1;
  sub_26738114C();
  v30 = v11;
  v23 = v35;
  v35(v9, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x65726F6373, 0xE500000000000000);
  v24(v40, 0);
  v22(v6, v34, v21);
  v40[0] = 1;
  sub_26738114C();
  v25 = v30;
  v23(v9, 0, 1, v30);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x7541656372756F73, 0xEC00000079654B78);
  v26(v40, 0);
  sub_266ECB294(0, &qword_2800F6FB8, 0x277D598A0);
  sub_266ECAF2C(&qword_2800F6FB0, &qword_2800F6FB8, 0x277D598A0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAlignmentOffset);
  sub_26738120C();
  v23(v9, 0, 1, v25);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E656D6E67696C61, 0xEF74657366664F74);
  return v27(v40, 0);
}

uint64_t sub_2671BC798(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671BC7FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSCrossIntentRankerResponse.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v26 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v27 = "ssIntentRankerResponse";
  v10 = *MEMORY[0x277D3E530];
  v30 = *(v4 + 104);
  v31 = v4 + 104;
  v28 = v10;
  v33 = v3;
  v30(v6, v10, v3);
  v34[0] = 1;
  sub_26738114C();
  v26[0] = sub_26738116C();
  v11 = *(v26[0] - 8);
  v12 = *(v11 + 56);
  v26[1] = v11 + 56;
  v12(v9, 0, 1, v26[0]);
  v26[2] = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, v27 | 0x8000000000000000);
  v13(v34, 0);
  v29 = v6;
  v14 = v10;
  v15 = v30;
  v30(v6, v14, v3);
  v34[0] = 1;
  sub_26738114C();
  v16 = v26[0];
  v12(v9, 0, 1, v26[0]);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001CLL, 0x80000002674316D0);
  v17(v34, 0);
  sub_266ECB294(0, &qword_2800F7170, 0x277D59938);
  sub_266ECAF2C(&qword_2800F7178, &qword_2800F7170, 0x277D59938, &protocol conformance descriptor for PEGASUSSchemaPEGASUSDomainCards);
  sub_26738120C();
  v18 = v16;
  v12(v9, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x61436E69616D6F64, 0xEB00000000736472);
  v19(v34, 0);
  v15(v29, v28, v33);
  v34[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v16);
  v20 = v12;
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x8000000267473180);
  v21(v34, 0);
  sub_266ECB294(0, &qword_2800F7180, 0x277D59A28);
  sub_266ECAF2C(&qword_2800F7188, &qword_2800F7180, 0x277D59A28, &protocol conformance descriptor for PEGASUSSchemaPEGASUSSortedScore);
  sub_26738120C();
  v12(v9, 0, 1, v18);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0x6353646574726F73, 0xEB0000000065726FLL);
  v22(v34, 0);
  sub_266ECB294(0, &qword_2800F7168, 0x277D59920);
  sub_266ECAF2C(&qword_2800F7160, &qword_2800F7168, 0x277D59920, &protocol conformance descriptor for PEGASUSSchemaPEGASUSCirAlerts);
  sub_26738120C();
  v12(v9, 0, 1, v18);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x7472656C41726963, 0xE900000000000073);
  v23(v34, 0);
  v30(v29, *MEMORY[0x277D3E4E8], v33);
  v34[0] = 1;
  sub_26738114C();
  v20(v9, 0, 1, v18);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x80000002674731A0);
  return v24(v34, 0);
}

uint64_t sub_2671BCFFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671BD060(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSDomain.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v130 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674731F0, isUniquelyReferenced_nonNull_native);
  *v3 = v130;

  v1(v162, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267473210, v8);
  *v7 = v131;

  v5(v162, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x8000000267473230, v12);
  *v11 = v132;

  v9(v162, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000010, 0x8000000267473250, v16);
  *v15 = v133;

  v13(v162, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x8000000267473270, v20);
  *v19 = v134;

  v17(v162, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v135 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000016, 0x8000000267473290, v24);
  *v23 = v135;

  v21(v162, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v136 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000013, 0x80000002674732B0, v28);
  *v27 = v136;

  v25(v162, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000013, 0x80000002674732D0, v32);
  *v31 = v137;

  v29(v162, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000011, 0x80000002674732F0, v36);
  *v35 = v138;

  v33(v162, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000015, 0x8000000267473310, v40);
  *v39 = v139;

  v37(v162, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v140 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000013, 0x8000000267473330, v44);
  *v43 = v140;

  v41(v162, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000014, 0x8000000267473350, v48);
  *v47 = v141;

  v45(v162, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000018, 0x8000000267473370, v52);
  *v51 = v142;

  v49(v162, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000012, 0x8000000267473390, v56);
  *v55 = v143;

  v53(v162, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v144 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000012, 0x80000002674733B0, v60);
  *v59 = v144;

  v57(v162, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000015, 0x80000002674733D0, v64);
  *v63 = v145;

  v61(v162, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000012, 0x80000002674733F0, v68);
  *v67 = v146;

  v65(v162, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000012, 0x8000000267473410, v72);
  *v71 = v147;

  v69(v162, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000019, 0x8000000267473430, v76);
  *v75 = v148;

  v73(v162, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v149 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000018, 0x8000000267473450, v80);
  *v79 = v149;

  v77(v162, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v150 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000014, 0x8000000267473470, v84);
  *v83 = v150;

  v81(v162, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v151 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000010, 0x8000000267473490, v88);
  *v87 = v151;

  v85(v162, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v152 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000013, 0x80000002674734B0, v92);
  *v91 = v152;

  v89(v162, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v153 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000015, 0x80000002674734D0, v96);
  *v95 = v153;

  v93(v162, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000019, 0x80000002674734F0, v100);
  *v99 = v154;

  v97(v162, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000016, 0x8000000267473510, v104);
  *v103 = v155;

  v101(v162, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v156 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000013, 0x8000000267473530, v108);
  *v107 = v156;

  v105(v162, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v157 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000017, 0x8000000267473550, v112);
  *v111 = v157;

  v109(v162, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000015, 0x8000000267473570, v116);
  *v115 = v158;

  v113(v162, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001BLL, 0x8000000267473590, v120);
  *v119 = v159;

  v117(v162, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000019, 0x80000002674735B0, v124);
  *v123 = v160;

  v121(v162, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000014, 0x80000002674735D0, v128);
  *v127 = v161;

  return v125(v162, 0);
}

uint64_t sub_2671BDFEC(uint64_t a1)
{
  v2 = sub_2671BE0F0(&qword_2800F71A0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSDomain);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671BE054(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671BE0F0(&qword_2800F71A0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSDomain);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671BE0F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSDomainCards.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v106 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v97 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v3 + 104);
  v105 = *MEMORY[0x277D3E538];
  v9 = v105;
  v10(v5, v105, v2);
  v11 = v3 + 104;
  v104 = v10;
  v107[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v99 = *(v13 + 56);
  v101 = v13 + 56;
  v103 = v12;
  v99(v8, 0, 1, v12);
  v100 = a1;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x756F436B636F6C63, 0xEA0000000000746ELL);
  v14(v107, 0);
  v15 = v106;
  v10(v5, v9, v106);
  v107[0] = 1;
  sub_26738114C();
  v16 = v99;
  v99(v8, 0, 1, v12);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x616E6F6974636964, 0xEF746E756F437972);
  v17(v107, 0);
  v98 = v5;
  v18 = v105;
  v19 = v104;
  v104(v5, v105, v15);
  v102 = v11;
  v107[0] = 1;
  sub_26738114C();
  v20 = v103;
  v16(v8, 0, 1, v103);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E756F43676BLL, 0xE700000000000000);
  v21(v107, 0);
  v22 = v106;
  v19(v98, v18, v106);
  v107[0] = 1;
  sub_26738114C();
  v23 = v99;
  v99(v8, 0, 1, v20);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E756F437370616DLL, 0xE900000000000074);
  v24(v107, 0);
  v25 = v98;
  v19(v98, v18, v22);
  v107[0] = 1;
  sub_26738114C();
  v26 = v103;
  v23(v8, 0, 1, v103);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E756F436874616DLL, 0xE900000000000074);
  v27(v107, 0);
  v28 = v25;
  v29 = v25;
  v30 = v105;
  v19(v29, v105, v106);
  v107[0] = 1;
  sub_26738114C();
  v31 = v99;
  v99(v8, 0, 1, v26);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0x756F43616964656DLL, 0xEA0000000000746ELL);
  v32(v107, 0);
  v33 = v106;
  v34 = v104;
  v104(v28, v30, v106);
  v107[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v26);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F43736569766F6DLL, 0xEB00000000746E75);
  v35(v107, 0);
  v36 = v98;
  v34(v98, v30, v33);
  v107[0] = 1;
  sub_26738114C();
  v37 = v103;
  v31(v8, 0, 1, v103);
  v38 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E756F437377656ELL, 0xE900000000000074);
  v38(v107, 0);
  v97 = "iri.pegasus.PEGASUSDomainCards";
  v39 = v105;
  v40 = v104;
  v104(v36, v105, v33);
  v107[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v37);
  v41 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v97 | 0x8000000000000000);
  v41(v107, 0);
  v42 = v98;
  v40(v98, v39, v33);
  v107[0] = 1;
  sub_26738114C();
  v43 = v103;
  v31(v8, 0, 1, v103);
  v44 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F437374726F7073, 0xEB00000000746E75);
  v44(v107, 0);
  v45 = v105;
  v104(v42, v105, v33);
  v107[0] = 1;
  sub_26738114C();
  v46 = v43;
  v31(v8, 0, 1, v43);
  v47 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F43736B636F7473, 0xEB00000000746E75);
  v47(v107, 0);
  v48 = v104;
  v104(v42, v45, v33);
  v107[0] = 1;
  sub_26738114C();
  v31(v8, 0, 1, v46);
  v49 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E756F437674, 0xE700000000000000);
  v49(v107, 0);
  v50 = v105;
  v48(v42, v105, v106);
  v107[0] = 1;
  sub_26738114C();
  v51 = v99;
  v99(v8, 0, 1, v46);
  v52 = sub_2673811AC();
  sub_266EC637C(v8, 0x756F436F65646976, 0xEA0000000000746ELL);
  v52(v107, 0);
  v53 = v50;
  v54 = v50;
  v55 = v106;
  v56 = v104;
  v104(v42, v54, v106);
  v107[0] = 1;
  sub_26738114C();
  v51(v8, 0, 1, v103);
  v57 = sub_2673811AC();
  sub_266EC637C(v8, 0x4372656874616577, 0xEC000000746E756FLL);
  v57(v107, 0);
  v56(v42, v53, v55);
  v107[0] = 1;
  sub_26738114C();
  v58 = v103;
  v51(v8, 0, 1, v103);
  v59 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E756F43626577, 0xE800000000000000);
  v59(v107, 0);
  v60 = v53;
  v61 = v104;
  v104(v42, v60, v55);
  v107[0] = 1;
  sub_26738114C();
  v62 = v58;
  v63 = v99;
  v99(v8, 0, 1, v62);
  v64 = sub_2673811AC();
  sub_266EC637C(v8, 0x6567616D49626577, 0xEE00746E756F4373);
  v64(v107, 0);
  v65 = v105;
  v66 = v106;
  v61(v42, v105, v106);
  v107[0] = 1;
  sub_26738114C();
  v67 = v103;
  v63(v8, 0, 1, v103);
  v68 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F65646956706D61, 0xED0000746E756F43);
  v68(v107, 0);
  v69 = v66;
  v70 = v104;
  v104(v42, v65, v69);
  v107[0] = 1;
  sub_26738114C();
  v63(v8, 0, 1, v67);
  v71 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E756F4373707061, 0xE900000000000074);
  v71(v107, 0);
  v97 = "precomputedWebanswersCount";
  v72 = v98;
  v73 = v105;
  v70(v98, v105, v106);
  v107[0] = 1;
  sub_26738114C();
  v63(v8, 0, 1, v67);
  v74 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v97 | 0x8000000000000000);
  v74(v107, 0);
  v97 = "conversionsCount";
  v75 = v106;
  v76 = v104;
  v104(v72, v73, v106);
  v107[0] = 1;
  sub_26738114C();
  v63(v8, 0, 1, v67);
  v77 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v97 | 0x8000000000000000);
  v77(v107, 0);
  v78 = v98;
  v76(v98, v105, v75);
  v107[0] = 1;
  sub_26738114C();
  v63(v8, 0, 1, v67);
  v79 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E756F436E63676BLL, 0xE900000000000074);
  v79(v107, 0);
  v80 = v105;
  v81 = v106;
  v82 = v104;
  v104(v78, v105, v106);
  v107[0] = 1;
  sub_26738114C();
  v83 = v103;
  v99(v8, 0, 1, v103);
  v84 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F65646956626577, 0xED0000746E756F43);
  v84(v107, 0);
  v85 = v80;
  v86 = v81;
  v87 = v81;
  v88 = v82;
  v82(v78, v85, v86);
  v107[0] = 1;
  sub_26738114C();
  v89 = v83;
  v90 = v83;
  v91 = v99;
  v99(v8, 0, 1, v89);
  v92 = sub_2673811AC();
  sub_266EC637C(v8, 0x73676E6974697277, 0xED0000746E756F43);
  v92(v107, 0);
  v93 = v105;
  v88(v78, v105, v87);
  v107[0] = 1;
  sub_26738114C();
  v91(v8, 0, 1, v90);
  v94 = sub_2673811AC();
  sub_266EC637C(v8, 0x4373746867696C66, 0xEC000000746E756FLL);
  v94(v107, 0);
  v88(v78, v93, v106);
  v107[0] = 1;
  sub_26738114C();
  v91(v8, 0, 1, v103);
  v95 = sub_2673811AC();
  sub_266EC637C(v8, 0x636973754D706D61, 0xED0000746E756F43);
  return v95(v107, 0);
}

uint64_t sub_2671BF680(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671BF6E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671BF748()
{
  result = qword_2800F7178;
  if (!qword_2800F7178)
  {
    sub_2671BF7A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7178);
  }

  return result;
}

unint64_t sub_2671BF7A0()
{
  result = qword_2800F7170;
  if (!qword_2800F7170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7170);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSEntityInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E530];
  v10 = *(v3 + 104);
  v22 = v3 + 104;
  v23 = v2;
  v21 = v10;
  v10(v5, v9, v2);
  v26[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v20 = *(v12 + 56);
  v20(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449797469746E65, 0xE800000000000000);
  v13(v26, 0);
  v24 = a1;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v25, 0x6449797469746E65, 0xE800000000000000);
  if (!(*(v12 + 48))(v16, 1, v11))
  {
    sub_266ECB128(&unk_28788BC30);
    sub_26738115C();
  }

  (v15)(v25, 0);
  v14(v26, 0);
  v21(v5, *MEMORY[0x277D3E500], v23);
  v26[0] = 1;
  sub_26738114C();
  v20(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656469666E6F63, 0xEA00000000006563);
  return v17(v26, 0);
}

uint64_t sub_2671BFBC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671BFC24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671BFC88()
{
  result = qword_2800F71A8;
  if (!qword_2800F71A8)
  {
    sub_2671BFCE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F71A8);
  }

  return result;
}

unint64_t sub_2671BFCE0()
{
  result = qword_2800F71B0;
  if (!qword_2800F71B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F71B0);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F71B8, 0x277D599B0);
  sub_266ECAF2C(&qword_2800F71C0, &qword_2800F71B8, 0x277D599B0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMultistepGatingExecution);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x8000000267473710);
  v9(v22, 0);
  sub_266ECB294(0, &qword_2800F71C8, 0x277D599B8);
  v18[0] = sub_266ECAF2C(&qword_2800F71D0, &qword_2800F71C8, 0x277D599B8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMultistepSubSearchExecution);
  sub_26738120C();
  v19 = v8;
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001BLL, 0x8000000267473730);
  v10(v22, 0);
  v18[1] = a2;
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v21, 0xD00000000000001BLL, 0x8000000267473730);
  if (!(*(v7 + 48))(v13, 1, v6))
  {
    sub_266ECB128(&unk_28788BC58);
    sub_26738115C();
  }

  (v12)(v21, 0);
  v11(v22, 0);
  sub_266ECB294(0, &qword_2800F71D8, 0x277D599C0);
  sub_266ECAF2C(&qword_2800F71E0, &qword_2800F71D8, 0x277D599C0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMultiturnExecution);
  sub_26738120C();
  v14 = v19;
  v19(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x8000000267473750);
  v15(v22, 0);
  sub_26738122C();
  v14(v5, 0, 1, v6);
  v16 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001CLL, 0x8000000267473770);
  return v16(v22, 0);
}

uint64_t sub_2671C0220(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C0284(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSIntent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  v23 = v2;
  v24 = v3;
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v22[1] = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496B6E696CLL, 0xE600000000000000);
  v11(v25, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSIntentCategory(0);
  sub_2671C0964(&qword_2800F71F8, type metadata accessor for PEGASUSSchemaPEGASUSIntentCategory, &protocol conformance descriptor for PEGASUSSchemaPEGASUSIntentCategory);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6143746E65746E69, 0xEE0079726F676574);
  v12(v25, 0);
  v13 = *MEMORY[0x277D3E530];
  v14 = *(v24 + 104);
  v24 += 104;
  v15 = v5;
  v16 = v5;
  v17 = v23;
  v14(v16, v13, v23);
  v25[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 1701667182, 0xE400000000000000);
  v18(v25, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSIntentSource(0);
  sub_2671C0964(&qword_2800F7200, type metadata accessor for PEGASUSSchemaPEGASUSIntentSource, &protocol conformance descriptor for PEGASUSSchemaPEGASUSIntentSource);
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x656372756F73, 0xE600000000000000);
  v19(v25, 0);
  v14(v15, *MEMORY[0x277D3E500], v17);
  v25[0] = 1;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656469666E6F63, 0xEA00000000006563);
  return v20(v25, 0);
}

uint64_t sub_2671C08A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C0904(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671C0964(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static PEGASUSSchemaPEGASUSIntentArg.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  v3 = sub_26738113C();
  v19 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v18[1] = a2;
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  v21[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 7955819, 0xE300000000000000);
  v14(v21, 0);
  v11(v6, v10, v19);
  v21[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x7475626972747461, 0xED00006570795465);
  v15(v21, 0);
  sub_266ECB294(0, &qword_2800F71B0, 0x277D59940);
  sub_266ECAF2C(&qword_2800F71A8, &qword_2800F71B0, 0x277D59940, &protocol conformance descriptor for PEGASUSSchemaPEGASUSEntityInfo);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x797469746E65, 0xE600000000000000);
  return v16(v21, 0);
}

uint64_t sub_2671C0DE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C0E44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSIntentCategory.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267473830, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x8000000267473850, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267473880, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x80000002674738B0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2671C116C(uint64_t a1)
{
  v2 = sub_2671C1270(&qword_2800F7218, &protocol conformance descriptor for PEGASUSSchemaPEGASUSIntentCategory);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C11D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C1270(&qword_2800F7218, &protocol conformance descriptor for PEGASUSSchemaPEGASUSIntentCategory);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C1270(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSIntentCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSIntentSource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267473900, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x8000000267473920, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267473940, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267473960, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267473980, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x80000002674739A0, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_2671C1620(uint64_t a1)
{
  v2 = sub_2671C1724(&qword_2800F7220, &protocol conformance descriptor for PEGASUSSchemaPEGASUSIntentSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C1688(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C1724(&qword_2800F7220, &protocol conformance descriptor for PEGASUSSchemaPEGASUSIntentSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C1724(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSIntentSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSIntentTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F7210, 0x277D59958);
  sub_266ECAF2C(&qword_2800F7208, &qword_2800F7210, 0x277D59958, &protocol conformance descriptor for PEGASUSSchemaPEGASUSIntentArg);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7241746E65746E69, 0xEA00000000007367);
  return v7(v9, 0);
}

uint64_t sub_2671C1A30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C1A94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSKGQAClaimTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v27[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v27 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *(v2 + 104);
  v30 = *MEMORY[0x277D3E530];
  v31 = v1;
  v29 = v8;
  v8(v4);
  v35[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v32 = *(v10 + 56);
  v33 = v10 + 56;
  v32(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449797469746E65, 0xE800000000000000);
  v11(v35, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v34, 0x6449797469746E65, 0xE800000000000000);
  v28 = *(v10 + 48);
  if (!v28(v14, 1, v9))
  {
    sub_266ECB128(&unk_28788BC80);
    sub_26738115C();
  }

  (v13)(v34, 0);
  v12(v35, 0);
  v29(v4, v30, v31);
  v35[0] = 1;
  sub_26738114C();
  v32(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449706F7270, 0xE600000000000000);
  v15(v35, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v34, 0x6449706F7270, 0xE600000000000000);
  if (!v28(v18, 1, v9))
  {
    sub_266ECB128(&unk_28788BCA8);
    sub_26738115C();
  }

  (v17)(v34, 0);
  v16(v35, 0);
  v29(v4, v30, v31);
  v35[0] = 1;
  sub_26738114C();
  v32(v7, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x65756C6176, 0xE500000000000000);
  v19(v35, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v34, 0x65756C6176, 0xE500000000000000);
  if (!v28(v22, 1, v9))
  {
    sub_266ECB128(&unk_28788BCD0);
    sub_26738115C();
  }

  (v21)(v34, 0);
  v20(v35, 0);
  sub_266ECB294(0, &qword_2800F7228, 0x277D59980);
  sub_266ECAF2C(&qword_2800F7230, &qword_2800F7228, 0x277D59980, &protocol conformance descriptor for PEGASUSSchemaPEGASUSKGQAQualifierTier1);
  sub_26738122C();
  v23 = v32;
  v32(v7, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x656966696C617571, 0xEA00000000007372);
  v24(v35, 0);
  sub_266ECB294(0, &qword_2800F7238, 0x277D59988);
  sub_266ECAF2C(&qword_2800F7240, &qword_2800F7238, 0x277D59988, &protocol conformance descriptor for PEGASUSSchemaPEGASUSKGQAReference);
  sub_26738122C();
  v23(v7, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0x636E657265666572, 0xEA00000000007365);
  return v25(v35, 0);
}

uint64_t sub_2671C227C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C22E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSKGQAExecution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v31 = a2;
  sub_26738119C();
  type metadata accessor for PEGASUSSchemaPEGASUSKGQAUsecase(0);
  sub_2671C2A34(&qword_2800F7258, type metadata accessor for PEGASUSSchemaPEGASUSKGQAUsecase, &protocol conformance descriptor for PEGASUSSchemaPEGASUSKGQAUsecase);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v32 = v11 + 56;
  v30 = v10;
  v12(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x636573554151676BLL, 0xEB00000000657361);
  v13(v35, 0);
  v34 = *MEMORY[0x277D3E530];
  v14 = *(v4 + 104);
  v27 = v3;
  v14(v6);
  v35[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v28 = v12;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x7475626972747461, 0xEA00000000007365);
  v15(v35, 0);
  v26 = "iri.flow.FLOWKGQAExecution";
  v33 = *MEMORY[0x277D3E4E8];
  v14(v6);
  v16 = v14;
  v29 = v14;
  v35[0] = 1;
  sub_26738114C();
  v17 = v30;
  v12(v9, 0, 1, v30);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v26 | 0x8000000000000000);
  v18(v35, 0);
  v19 = v27;
  (v16)(v6, v34, v27);
  v35[0] = 1;
  sub_26738114C();
  v20 = v17;
  v21 = v17;
  v22 = v28;
  v28(v9, 0, 1, v20);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x79654B676C6ELL, 0xE600000000000000);
  v23(v35, 0);
  (v29)(v6, v33, v19);
  v35[0] = 1;
  sub_26738114C();
  v22(v9, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267434790);
  return v24(v35, 0);
}

uint64_t sub_2671C2928(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C298C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671C2A34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671C2A7C()
{
  result = qword_2800F7268;
  if (!qword_2800F7268)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7268);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSKGQAExecutionTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v25 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *(v2 + 104);
  v28 = *MEMORY[0x277D3E530];
  v29 = v2 + 104;
  v30 = v1;
  v27 = v8;
  v8(v4);
  v34[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v31 = *(v10 + 56);
  v32 = v10 + 56;
  v31(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x457972616D697270, 0xEF7365697469746ELL);
  v11(v34, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v33, 0x457972616D697270, 0xEF7365697469746ELL);
  v26 = *(v10 + 48);
  if (!v26(v14, 1, v9))
  {
    sub_266ECB128(&unk_28788BCF8);
    sub_26738115C();
  }

  (v13)(v33, 0);
  v12(v34, 0);
  v27(v4, v28, v30);
  v34[0] = 1;
  sub_26738114C();
  v31(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674347E0);
  v15(v34, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v33, 0xD000000000000011, 0x80000002674347E0);
  if (!v26(v18, 1, v9))
  {
    sub_266ECB128(&unk_28788BD20);
    sub_26738115C();
  }

  (v17)(v33, 0);
  v16(v34, 0);
  v27(v4, v28, v30);
  v34[0] = 1;
  sub_26738114C();
  v31(v7, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449726577736E61, 0xE800000000000000);
  v19(v34, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v33, 0x6449726577736E61, 0xE800000000000000);
  if (!v26(v22, 1, v9))
  {
    sub_266ECB128(&unk_28788BD48);
    sub_26738115C();
  }

  (v21)(v33, 0);
  v20(v34, 0);
  sub_266ECB294(0, &qword_2800F7250, 0x277D59968);
  sub_266ECAF2C(&qword_2800F7248, &qword_2800F7250, 0x277D59968, &protocol conformance descriptor for PEGASUSSchemaPEGASUSKGQAClaimTier1);
  sub_26738122C();
  v31(v7, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0x736D69616C63, 0xE600000000000000);
  return v23(v34, 0);
}

uint64_t sub_2671C3148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C31AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSKGQAQualifierTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v3 + 104);
  v25 = *MEMORY[0x277D3E530];
  v26 = v3 + 104;
  v27 = v2;
  v24 = v9;
  v9(v5);
  v30[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v23 = *(v11 + 56);
  v23(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6449706F7270, 0xE600000000000000);
  v12(v30, 0);
  v28 = a1;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v29, 0x6449706F7270, 0xE600000000000000);
  v22 = *(v11 + 48);
  if (!v22(v15, 1, v10))
  {
    sub_266ECB128(&unk_28788BD70);
    sub_26738115C();
  }

  (v14)(v29, 0);
  v13(v30, 0);
  v24(v5, v25, v27);
  v30[0] = 1;
  sub_26738114C();
  v23(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x65756C6176, 0xE500000000000000);
  v16(v30, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v29, 0x65756C6176, 0xE500000000000000);
  if (!v22(v19, 1, v10))
  {
    sub_266ECB128(&unk_28788BD98);
    sub_26738115C();
  }

  (v18)(v29, 0);
  return v17(v30, 0);
}

uint64_t sub_2671C36AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C3710(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671C3774()
{
  result = qword_2800F7230;
  if (!qword_2800F7230)
  {
    sub_2671C37CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7230);
  }

  return result;
}

unint64_t sub_2671C37CC()
{
  result = qword_2800F7228;
  if (!qword_2800F7228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7228);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSKGQAReference.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x656E696C65706970, 0xE800000000000000);
  return v8(v10, 0);
}

uint64_t sub_2671C3A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C3AC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671C3B2C()
{
  result = qword_2800F7240;
  if (!qword_2800F7240)
  {
    sub_2671C3B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7240);
  }

  return result;
}

unint64_t sub_2671C3B84()
{
  result = qword_2800F7238;
  if (!qword_2800F7238)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7238);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSKGQAUsecase.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267473B60, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267473B80, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267473BB0, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267473BE0, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000020, 0x8000000267473C10, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x8000000267473C40, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000018, 0x8000000267473C60, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001CLL, 0x8000000267473C80, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_2671C401C(uint64_t a1)
{
  v2 = sub_2671C4120(&qword_2800F7280, &protocol conformance descriptor for PEGASUSSchemaPEGASUSKGQAUsecase);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C4084(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C4120(&qword_2800F7280, &protocol conformance descriptor for PEGASUSSchemaPEGASUSKGQAUsecase);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C4120(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSKGQAUsecase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMapsEntity.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738118C();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v38 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *MEMORY[0x277D3E540];
  v12 = *(v5 + 104);
  v46 = v5 + 104;
  v38[0] = v12;
  v12(v7, v11, v4);
  v49[0] = 0;
  sub_26738114C();
  v13 = sub_26738116C();
  v14 = *(v13 - 8);
  v44 = *(v14 + 56);
  v45 = v14 + 56;
  v44(v10, 0, 1, v13);
  v15 = sub_2673811AC();
  sub_266EC637C(v10, 1684632941, 0xE400000000000000);
  v15(v49, 0);
  v47 = a1;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v48, 1684632941, 0xE400000000000000);
  v18 = *(v14 + 48);
  v38[1] = v14 + 48;
  v43 = v18;
  if (!v18(v19, 1, v13))
  {
    sub_266ECB128(&unk_28788BDC0);
    sub_26738115C();
  }

  (v17)(v48, 0);
  v16(v49, 0);
  v39 = v4;
  v20 = v38[0];
  (v38[0])(v7, v11, v4);
  v49[0] = 0;
  sub_26738114C();
  v44(v10, 0, 1, v13);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x746165467370616DLL, 0xED00006449657275);
  v21(v49, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v48, 0x746165467370616DLL, 0xED00006449657275);
  if (!v43(v24, 1, v13))
  {
    sub_266ECB128(&unk_28788BDE8);
    sub_26738115C();
  }

  (v23)(v48, 0);
  v22(v49, 0);
  v20(v7, *MEMORY[0x277D3E530], v39);
  v49[0] = 0;
  sub_26738114C();
  v44(v10, 0, 1, v13);
  v25 = sub_2673811AC();
  sub_266EC637C(v10, 0x4973736572646461, 0xE900000000000064);
  v25(v49, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v48, 0x4973736572646461, 0xE900000000000064);
  if (!v43(v28, 1, v13))
  {
    sub_266ECB128(&unk_28788BE10);
    sub_26738115C();
  }

  (v27)(v48, 0);
  v26(v49, 0);
  v29 = v40;
  sub_26738117C();
  v30 = sub_2673811BC();
  v32 = v31;
  v33 = *v31;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v32 = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = sub_266ECAD54(0, v33[2] + 1, 1, v33);
    *v32 = v33;
  }

  v36 = v33[2];
  v35 = v33[3];
  if (v36 >= v35 >> 1)
  {
    v33 = sub_266ECAD54((v35 > 1), v36 + 1, 1, v33);
    *v32 = v33;
  }

  v33[2] = v36 + 1;
  (*(v41 + 32))(v33 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v36, v29, v42);
  return v30(v49, 0);
}

uint64_t sub_2671C48A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C4904(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671C4968()
{
  result = qword_2800F7288;
  if (!qword_2800F7288)
  {
    sub_2671C49C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7288);
  }

  return result;
}

unint64_t sub_2671C49C0()
{
  result = qword_2800F7290;
  if (!qword_2800F7290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7290);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMapsExecution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PEGASUSSchemaPEGASUSMapsFeature(0);
  sub_2671C50C4(&qword_2800F7298, type metadata accessor for PEGASUSSchemaPEGASUSMapsFeature, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMapsFeature);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v9, 0, 1, v10);
  v27 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x746165467370616DLL, 0xEB00000000657275);
  v14(v30, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSMapsQueryLabel(0);
  sub_2671C50C4(&qword_2800F72A0, type metadata accessor for PEGASUSSchemaPEGASUSMapsQueryLabel, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMapsQueryLabel);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v15 = v12;
  v26 = a2;
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x726575517370616DLL, 0xEE006C6562614C79);
  v16(v30, 0);
  v24 = "iri.flow.FLOWMapsExecution";
  v17 = *MEMORY[0x277D3E4E8];
  v18 = v28;
  v19 = *(v29 + 104);
  v29 += 104;
  v25 = v17;
  v19(v6, v17, v28);
  v30[0] = 1;
  sub_26738114C();
  v15(v9, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, v24 | 0x8000000000000000);
  v20(v30, 0);
  v24 = "isSearchAlongRouteRequest";
  v19(v6, v17, v18);
  v30[0] = 1;
  sub_26738114C();
  v15(v9, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v24 | 0x8000000000000000);
  v21(v30, 0);
  v19(v6, v25, v28);
  v30[0] = 1;
  sub_26738114C();
  v15(v9, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267434F70);
  return v22(v30, 0);
}

uint64_t sub_2671C4FB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C501C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671C50C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671C510C()
{
  result = qword_2800F72B0;
  if (!qword_2800F72B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F72B0);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMapsExecutionTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7290, 0x277D59990);
  sub_266ECAF2C(&qword_2800F7288, &qword_2800F7290, 0x277D59990, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMapsEntity);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x69746E457370616DLL, 0xEC00000073656974);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x69746E457370616DLL, 0xEC00000073656974);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_28788BE38);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2671C5408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C546C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSMapsFeature.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267473D80, isUniquelyReferenced_nonNull_native);
  *v3 = v54;

  v1(v67, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267473DA0, v8);
  *v7 = v55;

  v5(v67, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267473DC0, v12);
  *v11 = v56;

  v9(v67, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x8000000267473DE0, v16);
  *v15 = v57;

  v13(v67, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x8000000267473E00, v20);
  *v19 = v58;

  v17(v67, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x8000000267473E30, v24);
  *v23 = v59;

  v21(v67, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000025, 0x8000000267473E60, v28);
  *v27 = v60;

  v25(v67, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000029, 0x8000000267473E90, v32);
  *v31 = v61;

  v29(v67, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001CLL, 0x8000000267473EC0, v36);
  *v35 = v62;

  v33(v67, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000022, 0x8000000267473EE0, v40);
  *v39 = v63;

  v37(v67, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ALL, 0x8000000267473F10, v44);
  *v43 = v64;

  v41(v67, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ALL, 0x8000000267473F30, v48);
  *v47 = v65;

  v45(v67, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000018, 0x8000000267473F50, v52);
  *v51 = v66;

  return v49(v67, 0);
}

uint64_t sub_2671C5B8C(uint64_t a1)
{
  v2 = sub_2671C5C90(&qword_2800F72C8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMapsFeature);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C5BF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C5C90(&qword_2800F72C8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMapsFeature);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C5C90(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSMapsFeature(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMapsQueryLabel.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267473FB0, isUniquelyReferenced_nonNull_native);
  *v3 = v50;

  v1(v62, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267473FD0, v8);
  *v7 = v51;

  v5(v62, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267473FF0, v12);
  *v11 = v52;

  v9(v62, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x8000000267474020, v16);
  *v15 = v53;

  v13(v62, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x8000000267474050, v20);
  *v19 = v54;

  v17(v62, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002BLL, 0x8000000267474080, v24);
  *v23 = v55;

  v21(v62, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002BLL, 0x80000002674740B0, v28);
  *v27 = v56;

  v25(v62, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000026, 0x80000002674740E0, v32);
  *v31 = v57;

  v29(v62, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ELL, 0x8000000267474110, v36);
  *v35 = v58;

  v33(v62, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000025, 0x8000000267474130, v40);
  *v39 = v59;

  v37(v62, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001CLL, 0x8000000267474160, v44);
  *v43 = v60;

  v41(v62, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ALL, 0x8000000267474180, v48);
  *v47 = v61;

  return v45(v62, 0);
}

uint64_t sub_2671C62EC(uint64_t a1)
{
  v2 = sub_2671C63F0(&qword_2800F72D0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMapsQueryLabel);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C6354(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C63F0(&qword_2800F72D0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMapsQueryLabel);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C63F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSMapsQueryLabel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMultistepGatingExecution.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v4, *MEMORY[0x277D3E508], v1);
  v13[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6B636162706F6F6CLL, 0xED00006874706544);
  v10(v13, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSDomain(0);
  sub_2671C686C(&qword_2800F0C08, type metadata accessor for PEGASUSSchemaPEGASUSDomain, &protocol conformance descriptor for PEGASUSSchemaPEGASUSDomain);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x736E69616D6F64, 0xE700000000000000);
  return v11(v13, 0);
}

uint64_t sub_2671C6760(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C67C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671C686C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671C68B4()
{
  result = qword_2800F71B8;
  if (!qword_2800F71B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F71B8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMultistepSearchType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000022, 0x8000000267474220, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267474250, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x8000000267474270, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000025, 0x80000002674742A0, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x80000002674742D0, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x80000002674742F0, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000023, 0x8000000267474320, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000021, 0x8000000267474350, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_2671C6D4C(uint64_t a1)
{
  v2 = sub_2671C6E50(&qword_2800F72E0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMultistepSearchType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C6DB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C6E50(&qword_2800F72E0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMultistepSearchType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C6E50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSMultistepSearchType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMultistepSubSearchExecution.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19[1] = a1;
  v1 = sub_26738113C();
  v24 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v19 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E508];
  v9 = *(v2 + 104);
  v23 = v2 + 104;
  v25 = v9;
  (v9)(v4, v8, v1);
  v26[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6B636162706F6F6CLL, 0xED00006874706544);
  v12(v26, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSDomain(0);
  v21 = sub_2671C75C0(&qword_2800F0C08, type metadata accessor for PEGASUSSchemaPEGASUSDomain, &protocol conformance descriptor for PEGASUSSchemaPEGASUSDomain);
  sub_26738120C();
  v11(v7, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F44746E65726170, 0xEC0000006E69616DLL);
  v13(v26, 0);
  v22 = *MEMORY[0x277D3E4E8];
  v20 = v4;
  v25(v4);
  v26[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x537478654E736168, 0xEC00000073706574);
  v14(v26, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSMultistepSearchType(0);
  sub_2671C75C0(&qword_2800F72D8, type metadata accessor for PEGASUSSchemaPEGASUSMultistepSearchType, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMultistepSearchType);
  sub_26738120C();
  v11(v7, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x7954686372616573, 0xEA00000000006570);
  v15(v26, 0);
  sub_26738122C();
  v11(v7, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x80000002674743C0);
  v16(v26, 0);
  (v25)(v20, v22, v24);
  v26[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674743E0);
  return v17(v26, 0);
}

uint64_t sub_2671C74B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C7518(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671C75C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671C7608()
{
  result = qword_2800F71C8;
  if (!qword_2800F71C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F71C8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMultiturnExecution.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x7469727765527369, 0xE900000000000065);
  v10(v13, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSMultiturnTriggerError(0);
  sub_2671C7A8C(&qword_2800F72E8, type metadata accessor for PEGASUSSchemaPEGASUSMultiturnTriggerError, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMultiturnTriggerError);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x4572656767697274, 0xEC000000726F7272);
  return v11(v13, 0);
}

uint64_t sub_2671C7980(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C79E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671C7A8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671C7AD4()
{
  result = qword_2800F71D8;
  if (!qword_2800F71D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F71D8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v3 + 104);
  v24 = *MEMORY[0x277D3E530];
  v28 = v3 + 104;
  v29 = v2;
  v27 = v9;
  v9(v5);
  v32[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v25 = *(v11 + 56);
  v26 = v11 + 56;
  v25(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x7075776F6C6C6F66, 0xED00007972657551);
  v12(v32, 0);
  v30 = a1;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v31, 0x7075776F6C6C6F66, 0xED00007972657551);
  v15 = *(v11 + 48);
  if (!v15(v16, 1, v10))
  {
    sub_266ECB128(&unk_28788BE60);
    sub_26738115C();
  }

  (v14)(v31, 0);
  v13(v32, 0);
  v27(v5, v24, v29);
  v32[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x73746C75736572, 0xE700000000000000);
  v17(v32, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v31, 0x73746C75736572, 0xE700000000000000);
  if (!v15(v20, 1, v10))
  {
    sub_266ECB128(&unk_28788BE88);
    sub_26738115C();
  }

  (v19)(v31, 0);
  v18(v32, 0);
  v27(v5, *MEMORY[0x277D3E508], v29);
  v32[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656D6D6F636572, 0xEF736E6F69746164);
  return v21(v32, 0);
}

uint64_t sub_2671C805C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671C80C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671C8124()
{
  result = qword_2800F72F0;
  if (!qword_2800F72F0)
  {
    sub_2671C817C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F72F0);
  }

  return result;
}

unint64_t sub_2671C817C()
{
  result = qword_2800F72F8;
  if (!qword_2800F72F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F72F8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSMultiturnTriggerError.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x80000002674744D0, isUniquelyReferenced_nonNull_native);
  *v3 = v42;

  v1(v52, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267474500, v8);
  *v7 = v43;

  v5(v52, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x8000000267474530, v12);
  *v11 = v44;

  v9(v52, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002FLL, 0x8000000267474560, v16);
  *v15 = v45;

  v13(v52, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002FLL, 0x8000000267474590, v20);
  *v19 = v46;

  v17(v52, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000031, 0x80000002674745C0, v24);
  *v23 = v47;

  v21(v52, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002ELL, 0x8000000267474600, v28);
  *v27 = v48;

  v25(v52, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002ELL, 0x8000000267474630, v32);
  *v31 = v49;

  v29(v52, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000030, 0x8000000267474660, v36);
  *v35 = v50;

  v33(v52, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000023, 0x80000002674746A0, v40);
  *v39 = v51;

  return v37(v52, 0);
}

uint64_t sub_2671C86F0(uint64_t a1)
{
  v2 = sub_2671C87F4(&qword_2800F7300, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMultiturnTriggerError);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C8758(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C87F4(&qword_2800F7300, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMultiturnTriggerError);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C87F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSMultiturnTriggerError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSProductArea.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267474700, isUniquelyReferenced_nonNull_native);
  *v3 = v66;

  v1(v82, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x8000000267474720, v8);
  *v7 = v67;

  v5(v82, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267474740, v12);
  *v11 = v68;

  v9(v82, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267474760, v16);
  *v15 = v69;

  v13(v82, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267474780, v20);
  *v19 = v70;

  v17(v82, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x80000002674747B0, v24);
  *v23 = v71;

  v21(v82, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000017, 0x80000002674747D0, v28);
  *v27 = v72;

  v25(v82, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000019, 0x80000002674747F0, v32);
  *v31 = v73;

  v29(v82, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000017, 0x8000000267474810, v36);
  *v35 = v74;

  v33(v82, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001ALL, 0x8000000267474830, v40);
  *v39 = v75;

  v37(v82, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000019, 0x8000000267474850, v44);
  *v43 = v76;

  v41(v82, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000016, 0x8000000267474870, v48);
  *v47 = v77;

  v45(v82, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001DLL, 0x8000000267474890, v52);
  *v51 = v78;

  v49(v82, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000018, 0x80000002674748B0, v56);
  *v55 = v79;

  v53(v82, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000018, 0x80000002674748D0, v60);
  *v59 = v80;

  v57(v82, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001ELL, 0x80000002674748F0, v64);
  *v63 = v81;

  return v61(v82, 0);
}

uint64_t sub_2671C9038(uint64_t a1)
{
  v2 = sub_2671C913C(&qword_2800F7310, &protocol conformance descriptor for PEGASUSSchemaPEGASUSProductArea);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C90A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C913C(&qword_2800F7310, &protocol conformance descriptor for PEGASUSSchemaPEGASUSProductArea);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C913C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSProductArea(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSProvider.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267474940, isUniquelyReferenced_nonNull_native);
  *v3 = v70;

  v1(v87, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267474960, v8);
  *v7 = v71;

  v5(v87, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267474980, v12);
  *v11 = v72;

  v9(v87, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x80000002674749A0, v16);
  *v15 = v73;

  v13(v87, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x80000002674749C0, v20);
  *v19 = v74;

  v17(v87, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001CLL, 0x80000002674749E0, v24);
  *v23 = v75;

  v21(v87, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000017, 0x8000000267474A00, v28);
  *v27 = v76;

  v25(v87, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000016, 0x8000000267474A20, v32);
  *v31 = v77;

  v29(v87, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000017, 0x8000000267474A40, v36);
  *v35 = v78;

  v33(v87, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000014, 0x8000000267474A60, v40);
  *v39 = v79;

  v37(v87, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000015, 0x8000000267474A80, v44);
  *v43 = v80;

  v41(v87, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000015, 0x8000000267474AA0, v48);
  *v47 = v81;

  v45(v87, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000023, 0x8000000267474AC0, v52);
  *v51 = v82;

  v49(v87, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001BLL, 0x8000000267474AF0, v56);
  *v55 = v83;

  v53(v87, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000018, 0x8000000267474B10, v60);
  *v59 = v84;

  v57(v87, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000015, 0x8000000267474B30, v64);
  *v63 = v85;

  v61(v87, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000015, 0x8000000267474B50, v68);
  *v67 = v86;

  return v65(v87, 0);
}

uint64_t sub_2671C99C4(uint64_t a1)
{
  v2 = sub_2671C9AC8(&qword_2800F7320, &protocol conformance descriptor for PEGASUSSchemaPEGASUSProvider);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671C9A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671C9AC8(&qword_2800F7320, &protocol conformance descriptor for PEGASUSSchemaPEGASUSProvider);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671C9AC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F7328, 0x277D599E8);
  sub_266ECAF2C(&qword_2800F7330, &qword_2800F7328, 0x277D599E8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F7338, 0x277D599D0);
  sub_266ECAF2C(&qword_2800F7340, &qword_2800F7338, 0x277D599D0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSRequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F7348, 0x277D599E0);
  sub_266ECAF2C(&qword_2800F7350, &qword_2800F7348, 0x277D599E0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSRequestFailed);
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

uint64_t sub_2671CA024(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CA088(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSRequestedMediaType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267474BF0, isUniquelyReferenced_nonNull_native);
  *v3 = v102;

  v1(v127, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x8000000267474C20, v8);
  *v7 = v103;

  v5(v127, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x8000000267474C50, v12);
  *v11 = v104;

  v9(v127, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x8000000267474C80, v16);
  *v15 = v105;

  v13(v127, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x8000000267474CA0, v20);
  *v19 = v106;

  v17(v127, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x8000000267474CD0, v24);
  *v23 = v107;

  v21(v127, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001FLL, 0x8000000267474D00, v28);
  *v27 = v108;

  v25(v127, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x8000000267474D20, v32);
  *v31 = v109;

  v29(v127, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000025, 0x8000000267474D50, v36);
  *v35 = v110;

  v33(v127, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001FLL, 0x8000000267474D80, v40);
  *v39 = v111;

  v37(v127, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000020, 0x8000000267474DA0, v44);
  *v43 = v112;

  v41(v127, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000021, 0x8000000267474DD0, v48);
  *v47 = v113;

  v45(v127, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000024, 0x8000000267474E00, v52);
  *v51 = v114;

  v49(v127, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001ELL, 0x8000000267474E30, v56);
  *v55 = v115;

  v53(v127, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000027, 0x8000000267474E50, v60);
  *v59 = v116;

  v57(v127, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000029, 0x8000000267474E80, v64);
  *v63 = v117;

  v61(v127, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000021, 0x8000000267474EB0, v68);
  *v67 = v118;

  v65(v127, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000028, 0x8000000267474EE0, v72);
  *v71 = v119;

  v69(v127, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000021, 0x8000000267474F10, v76);
  *v75 = v120;

  v73(v127, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000020, 0x8000000267474F40, v80);
  *v79 = v121;

  v77(v127, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000001CLL, 0x8000000267474F70, v84);
  *v83 = v122;

  v81(v127, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001CLL, 0x8000000267474F90, v88);
  *v87 = v123;

  v85(v127, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000001ELL, 0x8000000267474FB0, v92);
  *v91 = v124;

  v89(v127, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001FLL, 0x8000000267474FD0, v96);
  *v95 = v125;

  v93(v127, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001ELL, 0x8000000267474FF0, v100);
  *v99 = v126;

  return v97(v127, 0);
}

uint64_t sub_2671CAD08(uint64_t a1)
{
  v2 = sub_2671CAE0C(&qword_2800F7368, &protocol conformance descriptor for PEGASUSSchemaPEGASUSRequestedMediaType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671CAD70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671CAE0C(&qword_2800F7368, &protocol conformance descriptor for PEGASUSSchemaPEGASUSRequestedMediaType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671CAE0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSRequestedMediaType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSRequestEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v55 = sub_26738113C();
  v4 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v46 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v52 = *MEMORY[0x277D3E4E8];
  v10 = *(v4 + 104);
  v56 = v4 + 104;
  v54 = v10;
  (v10)(v6);
  v60[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v48 = *(v11 - 8);
  v12 = v48 + 56;
  v13 = *(v48 + 56);
  v13(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v14(v60, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v13(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x64496B6E696CLL, 0xE600000000000000);
  v15(v60, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSProductArea(0);
  sub_2671CC194(&qword_2800F7308, type metadata accessor for PEGASUSSchemaPEGASUSProductArea, &protocol conformance descriptor for PEGASUSSchemaPEGASUSProductArea);
  sub_26738120C();
  v13(v9, 0, 1, v11);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x41746375646F7270, 0xEB00000000616572);
  v16(v60, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSProvider(0);
  sub_2671CC194(&qword_2800F7318, type metadata accessor for PEGASUSSchemaPEGASUSProvider, &protocol conformance descriptor for PEGASUSSchemaPEGASUSProvider);
  sub_26738120C();
  v13(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x507972616D697270, 0xEF72656469766F72);
  v17(v60, 0);
  v53 = a1;
  sub_26738122C();
  v13(v9, 0, 1, v11);
  v49 = a2;
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F7250726568746FLL, 0xEE00737265646976);
  v18(v60, 0);
  sub_266ECB294(0, &qword_2800F14B0, 0x277D59950);
  sub_266ECAF2C(&qword_2800F14B8, &qword_2800F14B0, 0x277D59950, &protocol conformance descriptor for PEGASUSSchemaPEGASUSIntent);
  sub_26738120C();
  v51 = v11;
  v13(v9, 0, 1, v11);
  v57 = v12;
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x746E65746E69, 0xE600000000000000);
  v19(v60, 0);
  v47 = "iri.pegasus.PEGASUSRequestEnded";
  v20 = v58;
  v22 = v54;
  v21 = v55;
  v54(v58, *MEMORY[0x277D3E500], v55);
  v60[0] = 1;
  sub_26738114C();
  v50 = v13;
  v13(v9, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v47 | 0x8000000000000000);
  v23(v60, 0);
  v47 = "queryConfidenceScore";
  v24 = v20;
  v25 = v52;
  v22(v24, v52, v21);
  v60[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v51);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, v47 | 0x8000000000000000);
  v26(v60, 0);
  v22(v58, v25, v21);
  v60[0] = 1;
  sub_26738114C();
  v27 = v50;
  v28 = v51;
  v50(v9, 0, 1, v51);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267436B40);
  v29(v60, 0);
  sub_266ECB294(0, &qword_2800F7198, 0x277D59930);
  sub_266ECAF2C(&qword_2800F7190, &qword_2800F7198, 0x277D59930, &protocol conformance descriptor for PEGASUSSchemaPEGASUSCrossIntentRankerResponse);
  sub_26738120C();
  v27(v9, 0, 1, v28);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x8000000267436B80);
  v30(v60, 0);
  sub_266ECB294(0, &qword_2800F7268, 0x277D59970);
  sub_266ECAF2C(&qword_2800F7260, &qword_2800F7268, 0x277D59970, &protocol conformance descriptor for PEGASUSSchemaPEGASUSKGQAExecution);
  sub_26738120C();
  v27(v9, 0, 1, v28);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0x636578454151676BLL, 0xED00006E6F697475);
  v31(v60, 0);
  sub_266ECB294(0, &qword_2800F7370, 0x277D59A80);
  sub_266ECAF2C(&qword_2800F7378, &qword_2800F7370, 0x277D59A80, &protocol conformance descriptor for PEGASUSSchemaPEGASUSWebAnswerExecution);
  sub_26738120C();
  v32 = v50;
  v50(v9, 0, 1, v28);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267436B60);
  v33(v60, 0);
  sub_266ECB294(0, &qword_2800F7380, 0x277D59A30);
  sub_266ECAF2C(&qword_2800F7388, &qword_2800F7380, 0x277D59A30, &protocol conformance descriptor for PEGASUSSchemaPEGASUSSportsExecution);
  sub_26738120C();
  v32(v9, 0, 1, v28);
  v34 = sub_2673811AC();
  sub_266EC637C(v9, 0x78457374726F7073, 0xEF6E6F6974756365);
  v34(v60, 0);
  sub_266ECB294(0, &qword_2800F72B0, 0x277D59998);
  sub_266ECAF2C(&qword_2800F72A8, &qword_2800F72B0, 0x277D59998, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMapsExecution);
  sub_26738120C();
  v32(v9, 0, 1, v28);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0x636578457370616DLL, 0xED00006E6F697475);
  v35(v60, 0);
  sub_266ECB294(0, &qword_2800F70D0, 0x277D598D8);
  sub_266ECAF2C(&qword_2800F70C8, &qword_2800F70D0, 0x277D598D8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioExecution);
  sub_26738120C();
  v32(v9, 0, 1, v28);
  v36 = sub_2673811AC();
  sub_266EC637C(v9, 0x6578456F69647561, 0xEE006E6F69747563);
  v36(v60, 0);
  sub_266ECB294(0, &qword_2800F7390, 0x277D59A50);
  sub_266ECAF2C(&qword_2800F7398, &qword_2800F7390, 0x277D59A50, &protocol conformance descriptor for PEGASUSSchemaPEGASUSVideoExecution);
  sub_26738120C();
  v32(v9, 0, 1, v28);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0x6578456F65646976, 0xEE006E6F69747563);
  v37(v60, 0);
  v54(v58, *MEMORY[0x277D3E530], v55);
  v60[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v28);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 1701274725, 0xE400000000000000);
  v38(v60, 0);
  sub_266ECB294(0, &qword_2800F6FC8, 0x277D598A8);
  sub_266ECAF2C(&qword_2800F6FC0, &qword_2800F6FC8, 0x277D598A8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAlternateQuerySuggestion);
  sub_26738120C();
  v32(v9, 0, 1, v28);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x8000000267475080);
  v39(v60, 0);
  v54(v58, v52, v55);
  v60[0] = 1;
  sub_26738114C();
  v32(v9, 0, 1, v28);
  v40 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, 0x80000002674750A0);
  v40(v60, 0);
  sub_266ECB294(0, &qword_2800F6FF8, 0x277D598B8);
  sub_266ECAF2C(&qword_2800F6FF0, &qword_2800F6FF8, 0x277D598B8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAlternateQuerySuggestionTier1);
  sub_26738120C();
  v32(v9, 0, 1, v28);
  v41 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001DLL, 0x80000002674750C0);
  v41(v60, 0);
  v42 = sub_2673811AC();
  v43 = sub_266ECB6CC(v59, 0xD00000000000001DLL, 0x80000002674750C0);
  if (!(*(v48 + 48))(v44, 1, v28))
  {
    sub_266ECB128(&unk_28788BEB0);
    sub_26738115C();
  }

  (v43)(v59, 0);
  return v42(v60, 0);
}

uint64_t sub_2671CC0D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CC134(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671CC194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static PEGASUSSchemaPEGASUSRequestEndedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16[-v2];
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
  v6(v16, 0);
  sub_266ECB294(0, &qword_2800F14E0, 0x277D59960);
  sub_266ECAF2C(&qword_2800F14E8, &qword_2800F14E0, 0x277D59960, &protocol conformance descriptor for PEGASUSSchemaPEGASUSIntentTier1);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6954746E65746E69, 0xEB00000000317265);
  v7(v16, 0);
  sub_266ECB294(0, &qword_2800F7278, 0x277D59978);
  sub_266ECAF2C(&qword_2800F7270, &qword_2800F7278, 0x277D59978, &protocol conformance descriptor for PEGASUSSchemaPEGASUSKGQAExecutionTier1);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267436BE0);
  v8(v16, 0);
  sub_266ECB294(0, &qword_2800F73A0, 0x277D59A88);
  sub_266ECAF2C(&qword_2800F73A8, &qword_2800F73A0, 0x277D59A88, &protocol conformance descriptor for PEGASUSSchemaPEGASUSWebAnswerExecutionTier1);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x8000000267436C00);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800F73B0, 0x277D59A38);
  sub_266ECAF2C(&qword_2800F73B8, &qword_2800F73B0, 0x277D59A38, &protocol conformance descriptor for PEGASUSSchemaPEGASUSSportsExecutionTier1);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v10 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x8000000267436C20);
  v10(v16, 0);
  sub_266ECB294(0, &qword_2800F72C0, 0x277D599A0);
  sub_266ECAF2C(&qword_2800F72B8, &qword_2800F72C0, 0x277D599A0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMapsExecutionTier1);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v11 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267436C40);
  v11(v16, 0);
  sub_266ECB294(0, &qword_2800F7100, 0x277D598E0);
  sub_266ECAF2C(&qword_2800F70F8, &qword_2800F7100, 0x277D598E0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAudioExecutionTier1);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v12 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267475120);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800F73C0, 0x277D59A58);
  sub_266ECAF2C(&qword_2800F73C8, &qword_2800F73C0, 0x277D59A58, &protocol conformance descriptor for PEGASUSSchemaPEGASUSVideoExecutionTier1);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v13 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267475140);
  v13(v16, 0);
  sub_266ECB294(0, &qword_2800F6FF8, 0x277D598B8);
  sub_266ECAF2C(&qword_2800F6FF0, &qword_2800F6FF8, 0x277D598B8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAlternateQuerySuggestionTier1);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v14 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001DLL, 0x80000002674750C0);
  return v14(v16, 0);
}

uint64_t sub_2671CCAB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CCB1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSRequestFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671CCE08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CCE6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671CCED0()
{
  result = qword_2800F7350;
  if (!qword_2800F7350)
  {
    sub_2671CCF28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7350);
  }

  return result;
}

unint64_t sub_2671CCF28()
{
  result = qword_2800F7348;
  if (!qword_2800F7348)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7348);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSRequestStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for PEGASUSSchemaPEGASUSRequestType(0);
  sub_2671CD3A4(&qword_2800F73E0, type metadata accessor for PEGASUSSchemaPEGASUSRequestType, &protocol conformance descriptor for PEGASUSSchemaPEGASUSRequestType);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x5474736575716572, 0xEB00000000657079);
  return v11(v13, 0);
}

uint64_t sub_2671CD298(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CD2FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671CD3A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671CD3EC()
{
  result = qword_2800F7328;
  if (!qword_2800F7328)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7328);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSRequestType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267475210, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x8000000267475230, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267475250, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267475270, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000022, 0x80000002674752A0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2671CD730(uint64_t a1)
{
  v2 = sub_2671CD834(&qword_2800F73E8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSRequestType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671CD798(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671CD834(&qword_2800F73E8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSRequestType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671CD834(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSResponseStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267475310, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267475330, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267475350, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267475370, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2671CDB00(uint64_t a1)
{
  v2 = sub_2671CDC04(&qword_2800F73F0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSResponseStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671CDB68(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671CDC04(&qword_2800F73F0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSResponseStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671CDC04(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSResponseStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSRewrittenUtterance.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for PEGASUSSchemaPEGASUSUtteranceRewriteType(0);
  sub_2671CE080(&qword_2800F73F8, type metadata accessor for PEGASUSSchemaPEGASUSUtteranceRewriteType, &protocol conformance descriptor for PEGASUSSchemaPEGASUSUtteranceRewriteType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x5465746972776572, 0xEB00000000657079);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x646573557369, 0xE600000000000000);
  return v10(v14, 0);
}

uint64_t sub_2671CDF74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CDFD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671CE080(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671CE0C8()
{
  result = qword_2800F7408;
  if (!qword_2800F7408)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7408);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSRewrittenUtterancesReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13 = a1;
  v14 = sub_26738113C();
  v1 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
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
  v9(v15, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x8000000267475420);
  v10(v15, 0);
  sub_266ECB294(0, &qword_2800F7408, 0x277D599F0);
  sub_266ECAF2C(&qword_2800F7400, &qword_2800F7408, 0x277D599F0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSRewrittenUtterance);
  sub_26738122C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001BLL, 0x8000000267475440);
  return v11(v15, 0);
}

uint64_t sub_2671CE520(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CE584(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSRewrittenUtterancesReportedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F7420, 0x277D599F8);
  sub_266ECAF2C(&qword_2800F7428, &qword_2800F7420, 0x277D599F8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSRewrittenUtteranceTier1);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x80000002674754B0);
  return v7(v9, 0);
}

uint64_t sub_2671CE8F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CE958(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSRewrittenUtteranceTier1.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v0);
  v15[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267463440);
  v9(v15, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v14, 0xD000000000000012, 0x8000000267463440);
  if (!(*(v8 + 48))(v12, 1, v7))
  {
    sub_266ECB128(&unk_28788BED8);
    sub_26738115C();
  }

  (v11)(v14, 0);
  return v10(v15, 0);
}

uint64_t sub_2671CED00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CED64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671CEDC8()
{
  result = qword_2800F7428;
  if (!qword_2800F7428)
  {
    sub_2671CEE20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7428);
  }

  return result;
}

unint64_t sub_2671CEE20()
{
  result = qword_2800F7420;
  if (!qword_2800F7420)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7420);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSSafetyScore.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *MEMORY[0x277D3E508];
  v8 = *(v1 + 104);
  v17 = v0;
  v18 = v8;
  v8(v3, v7, v0);
  v19[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v6, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x616C4365726F6373, 0xEA00000000007373);
  v11(v19, 0);
  v12 = v0;
  v13 = v18;
  v18(v3, *MEMORY[0x277D3E500], v12);
  v19[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x65726F6373, 0xE500000000000000);
  v14(v19, 0);
  v13(v3, *MEMORY[0x277D3E530], v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v6, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x62614C65726F6373, 0xEA00000000006C65);
  return v15(v19, 0);
}

uint64_t sub_2671CF254(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671CF2B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671CF31C()
{
  result = qword_2800F7010;
  if (!qword_2800F7010)
  {
    sub_2671CF374();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7010);
  }

  return result;
}

unint64_t sub_2671CF374()
{
  result = qword_2800F7008;
  if (!qword_2800F7008)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7008);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSSafetyStatus.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267475570, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267475590, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x80000002674755B0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x80000002674755D0, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x80000002674755F0, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001FLL, 0x8000000267475610, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_2671CF730(uint64_t a1)
{
  v2 = sub_2671CF834(&qword_2800F7440, &protocol conformance descriptor for PEGASUSSchemaPEGASUSSafetyStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671CF798(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671CF834(&qword_2800F7440, &protocol conformance descriptor for PEGASUSSchemaPEGASUSSafetyStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671CF834(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSSafetyStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSServerEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v50 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F7448, 0x277D59A20);
  sub_266ECAF2C(&qword_2800F7450, &qword_2800F7448, 0x277D59A20, &protocol conformance descriptor for PEGASUSSchemaPEGASUSServerEventMetadata);
  sub_26738120C();
  v9 = sub_26738116C();
  v59 = *(v9 - 8);
  v10 = v59 + 56;
  v11 = *(v59 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v12(v61, 0);
  sub_266ECB294(0, &qword_2800F7360, 0x277D599C8);
  sub_266ECAF2C(&qword_2800F7358, &qword_2800F7360, 0x277D599C8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSRequestContext);
  v58 = a1;
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267475660);
  v13(v61, 0);
  sub_266ECB294(0, &qword_2800F7418, 0x277D59A00);
  sub_266ECAF2C(&qword_2800F7410, &qword_2800F7418, 0x277D59A00, &protocol conformance descriptor for PEGASUSSchemaPEGASUSRewrittenUtterancesReported);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, 0x8000000267475680);
  v14(v61, 0);
  sub_266ECB294(0, &qword_2800F7438, 0x277D59A08);
  sub_266ECAF2C(&qword_2800F7430, &qword_2800F7438, 0x277D59A08, &protocol conformance descriptor for PEGASUSSchemaPEGASUSRewrittenUtterancesReportedTier1);
  sub_26738121C();
  v55 = v11;
  v56 = v10;
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000027, 0x80000002674756B0);
  v15(v61, 0);
  v50 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v60, 0xD000000000000027, 0x80000002674756B0);
  v18 = *(v59 + 48);
  v57 = v9;
  v59 += 48;
  v54 = v18;
  if (!v18(v19, 1, v9))
  {
    sub_266ECB128(&unk_28788BF00);
    sub_26738115C();
  }

  (v17)(v60, 0);
  v16(v61, 0);
  sub_266ECB294(0, &qword_2800F7458, 0x277D59A40);
  sub_266ECAF2C(&qword_2800F7460, &qword_2800F7458, 0x277D59A40, &protocol conformance descriptor for PEGASUSSchemaPEGASUSUtteranceUnderstandingReported);
  sub_26738121C();
  v20 = v57;
  v21 = v55;
  v55(v8, 0, 1, v57);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, 0x80000002674756E0);
  v22(v61, 0);
  sub_266ECB294(0, &qword_2800F7468, 0x277D59A48);
  sub_266ECAF2C(&qword_2800F7470, &qword_2800F7468, 0x277D59A48, &protocol conformance descriptor for PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1);
  sub_26738121C();
  v21(v8, 0, 1, v20);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000002ALL, 0x8000000267475710);
  v23(v61, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v60, 0xD00000000000002ALL, 0x8000000267475710);
  if (!v54(v26, 1, v20))
  {
    sub_266ECB128(&unk_28788BF28);
    sub_26738115C();
  }

  (v25)(v60, 0);
  v24(v61, 0);
  sub_266ECB294(0, &qword_2800F73D8, 0x277D599D8);
  sub_266ECAF2C(&qword_2800F73D0, &qword_2800F73D8, 0x277D599D8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSRequestEndedTier1);
  sub_26738121C();
  v27 = v57;
  v55(v8, 0, 1, v57);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267475740);
  v28(v61, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v60, 0xD000000000000018, 0x8000000267475740);
  if (!v54(v31, 1, v27))
  {
    sub_266ECB128(&unk_28788BF50);
    sub_26738115C();
  }

  (v30)(v60, 0);
  v29(v61, 0);
  sub_266ECB294(0, &qword_2800F71F0, 0x277D59948);
  sub_266ECAF2C(&qword_2800F71E8, &qword_2800F71F0, 0x277D59948, &protocol conformance descriptor for PEGASUSSchemaPEGASUSInfoDomainMultistepAndMultiturnExecutionReported);
  sub_26738121C();
  v32 = v57;
  v33 = v55;
  v55(v8, 0, 1, v57);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000037, 0x8000000267475760);
  v34(v61, 0);
  sub_266ECB294(0, &qword_2800F7020, 0x277D59898);
  sub_266ECAF2C(&qword_2800F7018, &qword_2800F7020, 0x277D59898, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAMPSafetyLoggingInfo);
  sub_26738121C();
  v33(v8, 0, 1, v32);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x80000002674757A0);
  v35(v61, 0);
  sub_266ECB294(0, &qword_2800F7040, 0x277D598C0);
  sub_266ECAF2C(&qword_2800F7038, &qword_2800F7040, 0x277D598C0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSAsrCorrectionInfo);
  sub_26738121C();
  v36 = v57;
  v33(v8, 0, 1, v57);
  v37 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x80000002674757C0);
  v37(v61, 0);
  v38 = sub_2673811AC();
  v39 = sub_266ECB6CC(v60, 0xD000000000000018, 0x80000002674757C0);
  if (!v54(v40, 1, v36))
  {
    sub_266ECB128(&unk_28788BF80);
    sub_26738115C();
  }

  (v39)(v60, 0);
  v38(v61, 0);
  v41 = v51;
  sub_26738117C();
  v42 = sub_2673811BC();
  v44 = v43;
  v45 = *v43;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v44 = v45;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v45 = sub_266ECAD54(0, v45[2] + 1, 1, v45);
    *v44 = v45;
  }

  v48 = v45[2];
  v47 = v45[3];
  if (v48 >= v47 >> 1)
  {
    v45 = sub_266ECAD54((v47 > 1), v48 + 1, 1, v45);
    *v44 = v45;
  }

  v45[2] = v48 + 1;
  (*(v52 + 32))(v45 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v48, v41, v53);
  v42(v61, 0);
  sub_266ECB128(&unk_28788BFA8);
  return sub_2673811CC();
}

uint64_t sub_2671D0600(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2671D0698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2671D0764(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D07C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671D0828(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F7478, &qword_2800F7480, 0x277D59A18, &protocol conformance descriptor for PEGASUSSchemaPEGASUSServerEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F7488, &qword_2800F7480, 0x277D59A18, &protocol conformance descriptor for PEGASUSSchemaPEGASUSServerEvent);
  result = sub_266ECAF2C(&qword_2800F7490, &qword_2800F7480, 0x277D59A18, &protocol conformance descriptor for PEGASUSSchemaPEGASUSServerEvent);
  a1[3] = result;
  return result;
}

uint64_t static PEGASUSSchemaPEGASUSServerEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v17 = sub_26738113C();
  v15 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v16 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x4973757361676570, 0xE900000000000064);
  v8(v19, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v18, 0x4973757361676570, 0xE900000000000064);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_28788BFE0);
    sub_26738115C();
  }

  (v10)(v18, 0);
  v9(v19, 0);
  (*(v15 + 104))(v16, *MEMORY[0x277D3E530], v17);
  v19[0] = 1;
  sub_26738114C();
  v7(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000011, 0x80000002674206D0);
  return v12(v19, 0);
}

uint64_t sub_2671D0D10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D0D74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSSortedScore.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v42 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v38 = a1;
  sub_26738119C();
  v36 = "iri.pegasus.PEGASUSSortedScore";
  v10 = *(v3 + 104);
  v41 = *MEMORY[0x277D3E530];
  v9 = v41;
  v10(v5, v41, v2);
  v40 = v10;
  v43[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v37 = v11;
  v13(v8, 0, 1, v11);
  v39 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v36 | 0x8000000000000000);
  v15(v43, 0);
  v35 = v3 + 104;
  v36 = "sortedScoreFinal";
  v16 = v9;
  v17 = v42;
  v10(v5, v16, v42);
  v43[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v34 = v13;
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v36 | 0x8000000000000000);
  v18(v43, 0);
  v36 = "sortedScorelinearCombiner";
  v19 = v41;
  v20 = v17;
  v21 = v40;
  v40(v5, v41, v20);
  v43[0] = 1;
  sub_26738114C();
  v22 = v37;
  v13(v8, 0, 1, v37);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v36 | 0x8000000000000000);
  v23(v43, 0);
  v36 = "sortedScoreModelFinal";
  v24 = v42;
  v21(v5, v19, v42);
  v43[0] = 1;
  sub_26738114C();
  v25 = v34;
  v34(v8, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v36 | 0x8000000000000000);
  v26(v43, 0);
  v36 = "sortedScoreStage2";
  v27 = v41;
  v28 = v24;
  v29 = v40;
  v40(v5, v41, v28);
  v43[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v22);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v36 | 0x8000000000000000);
  v30(v43, 0);
  v29(v5, v27, v42);
  v43[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v37);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x80000002674758F0);
  return v31(v43, 0);
}

uint64_t sub_2671D14A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D1504(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671D1568()
{
  result = qword_2800F7188;
  if (!qword_2800F7188)
  {
    sub_2671D15C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F7188);
  }

  return result;
}

unint64_t sub_2671D15C0()
{
  result = qword_2800F7180;
  if (!qword_2800F7180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7180);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSSportName.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267475940, isUniquelyReferenced_nonNull_native);
  *v3 = v46;

  v1(v57, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267475960, v8);
  *v7 = v47;

  v5(v57, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x8000000267475980, v12);
  *v11 = v48;

  v9(v57, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x80000002674759A0, v16);
  *v15 = v49;

  v13(v57, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000019, 0x80000002674759C0, v20);
  *v19 = v50;

  v17(v57, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000017, 0x80000002674759E0, v24);
  *v23 = v51;

  v21(v57, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000017, 0x8000000267475A00, v28);
  *v27 = v52;

  v25(v57, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001BLL, 0x8000000267475A20, v32);
  *v31 = v53;

  v29(v57, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000016, 0x8000000267475A40, v36);
  *v35 = v54;

  v33(v57, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000015, 0x8000000267475A60, v40);
  *v39 = v55;

  v37(v57, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000017, 0x8000000267475A80, v44);
  *v43 = v56;

  return v41(v57, 0);
}

uint64_t sub_2671D1BA8(uint64_t a1)
{
  v2 = sub_2671D1CAC(&qword_2800F74A8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSSportName);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671D1C10(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671D1CAC(&qword_2800F74A8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSSportName);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671D1CAC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSSportName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSSportsExecution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v40 = sub_26738113C();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PEGASUSSchemaPEGASUSSportsUsecase(0);
  sub_2671D2484(&qword_2800F74B0, type metadata accessor for PEGASUSSchemaPEGASUSSportsUsecase, &protocol conformance descriptor for PEGASUSSchemaPEGASUSSportsUsecase);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v38 = v10 + 56;
  v39 = v9;
  v11(v8, 0, 1, v9);
  v35 = a2;
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x73557374726F7073, 0xED00006573616365);
  v12(v41, 0);
  v37 = *MEMORY[0x277D3E4E8];
  v36 = *(v3 + 104);
  v13 = v40;
  v36(v5);
  v41[0] = 1;
  sub_26738114C();
  v14 = v11;
  v34 = v11;
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267438DF0);
  v15(v41, 0);
  v33 = "isSportsWatchFaceRequest";
  v16 = v37;
  v17 = v36;
  (v36)(v5, v37, v13);
  v41[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v39);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v33 | 0x8000000000000000);
  v18(v41, 0);
  v32 = v5;
  v33 = "isSnippetNextCardRequest";
  v19 = v5;
  v20 = v16;
  v21 = v40;
  v17(v19, v16, v40);
  v41[0] = 1;
  sub_26738114C();
  v22 = v39;
  v23 = v34;
  v34(v8, 0, 1, v39);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v33 | 0x8000000000000000);
  v24(v41, 0);
  v33 = "isMachineUtterance";
  v25 = v32;
  v26 = v21;
  v27 = v36;
  (v36)(v32, v20, v26);
  v41[0] = 1;
  sub_26738114C();
  v23(v8, 0, 1, v22);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v33 | 0x8000000000000000);
  v28(v41, 0);
  (v27)(v25, v37, v40);
  v41[0] = 1;
  sub_26738114C();
  v23(v8, 0, 1, v22);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267438E70);
  return v29(v41, 0);
}

uint64_t sub_2671D2378(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D23DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671D2484(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671D24CC()
{
  result = qword_2800F7380;
  if (!qword_2800F7380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F7380);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSSportsExecutionTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v40 = v1;
  v41 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PEGASUSSchemaPEGASUSSportName(0);
  sub_2671D2EA8(&qword_2800F74A0, type metadata accessor for PEGASUSSchemaPEGASUSSportName, &protocol conformance descriptor for PEGASUSSchemaPEGASUSSportName);
  sub_26738122C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v34 = v9 + 56;
  v38 = v10;
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D614E74726F7073, 0xE900000000000065);
  v11(v43, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v42, 0x6D614E74726F7073, 0xE900000000000065);
  v14 = *(v9 + 48);
  v39 = v9 + 48;
  v37 = v14;
  if (!v14(v15, 1, v8))
  {
    sub_266ECB128(&unk_28788C010);
    sub_26738115C();
  }

  (v13)(v42, 0);
  v12(v43, 0);
  v16 = *(v41 + 104);
  v36 = *MEMORY[0x277D3E530];
  v41 += 104;
  v35 = v16;
  v16(v4);
  v43[0] = 1;
  sub_26738114C();
  v38(v7, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x65756761656CLL, 0xE600000000000000);
  v17(v43, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v42, 0x65756761656CLL, 0xE600000000000000);
  if (!v37(v20, 1, v8))
  {
    sub_266ECB128(&unk_28788C038);
    sub_26738115C();
  }

  (v19)(v42, 0);
  v18(v43, 0);
  v35(v4, v36, v40);
  v43[0] = 1;
  sub_26738114C();
  v38(v7, 0, 1, v8);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0x456574656C687461, 0xEF7365697469746ELL);
  v21(v43, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v42, 0x456574656C687461, 0xEF7365697469746ELL);
  if (!v37(v24, 1, v8))
  {
    sub_266ECB128(&unk_28788C060);
    sub_26738115C();
  }

  (v23)(v42, 0);
  v22(v43, 0);
  v35(v4, v36, v40);
  v43[0] = 1;
  sub_26738114C();
  v38(v7, 0, 1, v8);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0x69746E456D616574, 0xEC00000073656974);
  v25(v43, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v42, 0x69746E456D616574, 0xEC00000073656974);
  if (!v37(v28, 1, v8))
  {
    sub_266ECB128(&unk_28788C088);
    sub_26738115C();
  }

  (v27)(v42, 0);
  v26(v43, 0);
  v35(v4, v36, v40);
  v43[0] = 1;
  sub_26738114C();
  v38(v7, 0, 1, v8);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E45746E657665, 0xED00007365697469);
  v29(v43, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v42, 0x746E45746E657665, 0xED00007365697469);
  if (!v37(v32, 1, v8))
  {
    sub_266ECB128(&unk_28788C0B0);
    sub_26738115C();
  }

  (v31)(v42, 0);
  return v30(v43, 0);
}

uint64_t sub_2671D2D9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D2E00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671D2EA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671D2EF0()
{
  result = qword_2800F73B0;
  if (!qword_2800F73B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F73B0);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSSportsUsecase.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v130 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001CLL, 0x8000000267475B60, isUniquelyReferenced_nonNull_native);
  *v3 = v130;

  v1(v162, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267475B80, v8);
  *v7 = v131;

  v5(v162, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v132 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267475BB0, v12);
  *v11 = v132;

  v9(v162, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v133 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x8000000267475BE0, v16);
  *v15 = v133;

  v13(v162, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267475C10, v20);
  *v19 = v134;

  v17(v162, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v135 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ELL, 0x8000000267475C40, v24);
  *v23 = v135;

  v21(v162, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v136 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000022, 0x8000000267475C60, v28);
  *v27 = v136;

  v25(v162, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v137 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000021, 0x8000000267475C90, v32);
  *v31 = v137;

  v29(v162, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v138 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ELL, 0x8000000267475CC0, v36);
  *v35 = v138;

  v33(v162, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v139 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000028, 0x8000000267475CE0, v40);
  *v39 = v139;

  v37(v162, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v140 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000023, 0x8000000267475D10, v44);
  *v43 = v140;

  v41(v162, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v141 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000030, 0x8000000267475D40, v48);
  *v47 = v141;

  v45(v162, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v142 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001BLL, 0x8000000267475D80, v52);
  *v51 = v142;

  v49(v162, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v143 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001DLL, 0x8000000267475DA0, v56);
  *v55 = v143;

  v53(v162, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v144 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000027, 0x8000000267475DC0, v60);
  *v59 = v144;

  v57(v162, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v145 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001ALL, 0x8000000267475DF0, v64);
  *v63 = v145;

  v61(v162, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v146 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000024, 0x8000000267475E10, v68);
  *v67 = v146;

  v65(v162, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v147 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000025, 0x8000000267475E40, v72);
  *v71 = v147;

  v69(v162, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v148 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000021, 0x8000000267475E70, v76);
  *v75 = v148;

  v73(v162, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v149 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000026, 0x8000000267475EA0, v80);
  *v79 = v149;

  v77(v162, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v150 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000022, 0x8000000267475ED0, v84);
  *v83 = v150;

  v81(v162, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v151 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001ELL, 0x8000000267475F00, v88);
  *v87 = v151;

  v85(v162, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v152 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000028, 0x8000000267475F20, v92);
  *v91 = v152;

  v89(v162, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v153 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000022, 0x8000000267475F50, v96);
  *v95 = v153;

  v93(v162, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v154 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001BLL, 0x8000000267475F80, v100);
  *v99 = v154;

  v97(v162, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v155 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001FLL, 0x8000000267475FA0, v104);
  *v103 = v155;

  v101(v162, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v156 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000022, 0x8000000267475FC0, v108);
  *v107 = v156;

  v105(v162, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v157 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000023, 0x8000000267475FF0, v112);
  *v111 = v157;

  v109(v162, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000023, 0x8000000267476020, v116);
  *v115 = v158;

  v113(v162, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000021, 0x8000000267476050, v120);
  *v119 = v159;

  v117(v162, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000025, 0x8000000267476080, v124);
  *v123 = v160;

  v121(v162, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000027, 0x80000002674760B0, v128);
  *v127 = v161;

  return v125(v162, 0);
}

uint64_t sub_2671D3E2C(uint64_t a1)
{
  v2 = sub_2671D3F30(&qword_2800F74B8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSSportsUsecase);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671D3E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671D3F30(&qword_2800F74B8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSSportsUsecase);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671D3F30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSSportsUsecase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSUtteranceRewriteType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v22 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267476120, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x8000000267476150, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x8000000267476180, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000034, 0x80000002674761B0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000038, 0x80000002674761F0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2671D4268(uint64_t a1)
{
  v2 = sub_2671D436C(&qword_2800F74C0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSUtteranceRewriteType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671D42D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671D436C(&qword_2800F74C0, &protocol conformance descriptor for PEGASUSSchemaPEGASUSUtteranceRewriteType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671D436C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSUtteranceRewriteType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSUtteranceUnderstandingReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v14 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v14[1] = a2;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v9 = v7 + 56;
  v8(v5, 0, 1, v6);
  v14[0] = v9;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496B6E696CLL, 0xE600000000000000);
  v10(v15, 0);
  sub_266ECB294(0, &qword_2800F14B0, 0x277D59950);
  sub_266ECAF2C(&qword_2800F14B8, &qword_2800F14B0, 0x277D59950, &protocol conformance descriptor for PEGASUSSchemaPEGASUSIntent);
  sub_26738122C();
  v8(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x8000000267476280);
  v11(v15, 0);
  sub_26738122C();
  v8(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x80000002674762A0);
  return v12(v15, 0);
}

uint64_t sub_2671D4728(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D478C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSUtteranceUnderstandingReportedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
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
  v6(v11, 0);
  sub_266ECB294(0, &qword_2800F14E0, 0x277D59960);
  sub_266ECAF2C(&qword_2800F14E8, &qword_2800F14E0, 0x277D59960, &protocol conformance descriptor for PEGASUSSchemaPEGASUSIntentTier1);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E493255706F74, 0xEC00000073746E65);
  v7(v11, 0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x494153474B706F74, 0xEE0073746E65746ELL);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800F72F8, 0x277D599A8);
  sub_266ECAF2C(&qword_2800F72F0, &qword_2800F72F8, 0x277D599A8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSMultiTurnListSelectionUnderstandingTier1);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000023, 0x8000000267476310);
  return v9(v11, 0);
}

uint64_t sub_2671D4C68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D4CCC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSVideoExecution.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F74C8, 0x277D59A68);
  sub_266ECAF2C(&qword_2800F74D0, &qword_2800F74C8, 0x277D59A68, &protocol conformance descriptor for PEGASUSSchemaPEGASUSVideoInteraction);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267476380);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F74D8, 0x277D59A60);
  sub_266ECAF2C(&qword_2800F74E0, &qword_2800F74D8, 0x277D59A60, &protocol conformance descriptor for PEGASUSSchemaPEGASUSVideoExperienceProperty);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000017, 0x80000002674763A0);
  return v7(v9, 0);
}

uint64_t sub_2671D5048(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D50AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static PEGASUSSchemaPEGASUSVideoExecutionTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27[-v7];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v3 + 104);
  v28 = *MEMORY[0x277D3E530];
  v34 = v3 + 104;
  v35 = v2;
  v29 = v9;
  v9(v5);
  v37[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v30 = *(v11 + 56);
  v31 = v11 + 56;
  v30(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E45746C75736572, 0xEF73644979746974);
  v12(v37, 0);
  v32 = a1;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v36, 0x6E45746C75736572, 0xEF73644979746974);
  v15 = *(v11 + 48);
  v33 = v11 + 48;
  if (!v15(v16, 1, v10))
  {
    sub_266ECB128(&unk_28788C0D8);
    sub_26738115C();
  }

  (v14)(v36, 0);
  v13(v37, 0);
  v17 = v29;
  v29(v5, v28, v35);
  v37[0] = 1;
  sub_26738114C();
  v30(v8, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x7469546F65646976, 0xEA0000000000656CLL);
  v18(v37, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v36, 0x7469546F65646976, 0xEA0000000000656CLL);
  if (!v15(v21, 1, v10))
  {
    sub_266ECB128(&unk_28788C100);
    sub_26738115C();
  }

  (v20)(v36, 0);
  v19(v37, 0);
  v17(v5, *MEMORY[0x277D3E4E8], v35);
  v37[0] = 1;
  sub_26738114C();
  v30(v8, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x736552736C4E7369, 0xEB00000000746C75);
  v22(v37, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v36, 0x736552736C4E7369, 0xEB00000000746C75);
  if (!v15(v25, 1, v10))
  {
    sub_266ECB128(&unk_28788C128);
    sub_26738115C();
  }

  (v24)(v36, 0);
  return v23(v37, 0);
}

uint64_t sub_2671D572C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D5790(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671D57F4()
{
  result = qword_2800F73C8;
  if (!qword_2800F73C8)
  {
    sub_2671D584C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F73C8);
  }

  return result;
}

unint64_t sub_2671D584C()
{
  result = qword_2800F73C0;
  if (!qword_2800F73C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F73C0);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSVideoExperienceProperty.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v25 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v23 = a1;
  sub_26738119C();
  v24 = "SUSVideoExperienceProperty";
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v26 = v3 + 104;
  v22 = v9;
  v10(v5, v9, v2);
  v11 = v10;
  v21 = v10;
  v27[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v8, 0, 1, v12);
  v14 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v24 | 0x8000000000000000);
  v15(v27, 0);
  v24 = "isForegroundAppAvailable";
  v16 = v9;
  v17 = v25;
  v11(v5, v16, v25);
  v27[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, v24 | 0x8000000000000000);
  v18(v27, 0);
  v21(v5, v22, v17);
  v27[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267476480);
  return v19(v27, 0);
}

uint64_t sub_2671D5CAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D5D10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671D5D74()
{
  result = qword_2800F74E0;
  if (!qword_2800F74E0)
  {
    sub_2671D5DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F74E0);
  }

  return result;
}

unint64_t sub_2671D5DCC()
{
  result = qword_2800F74D8;
  if (!qword_2800F74D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F74D8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSVideoInteraction.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v18[2] = a1;
  v19 = sub_26738113C();
  v1 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for PEGASUSSchemaPEGASUSVideoInteractionType(0);
  sub_2671D63E8(&qword_2800F74E8, type metadata accessor for PEGASUSSchemaPEGASUSVideoInteractionType, &protocol conformance descriptor for PEGASUSSchemaPEGASUSVideoInteractionType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v18[0] = v8;
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x7463617265746E69, 0xEF657079546E6F69);
  v9(v20, 0);
  v10 = *MEMORY[0x277D3E530];
  v11 = v1 + 104;
  v12 = *(v1 + 104);
  v18[1] = v11;
  v12(v3, v10, v19);
  v20[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x80000002674764E0);
  v13(v20, 0);
  v12(v3, v10, v19);
  v20[0] = 1;
  sub_26738114C();
  v14 = v18[0];
  (v18[0])(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449676F6C616964, 0xE800000000000000);
  v15(v20, 0);
  type metadata accessor for PEGASUSSchemaPEGASUSVideoVerb(0);
  sub_2671D63E8(&qword_2800F74F0, type metadata accessor for PEGASUSSchemaPEGASUSVideoVerb, &protocol conformance descriptor for PEGASUSSchemaPEGASUSVideoVerb);
  sub_26738120C();
  v14(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x8000000267476500);
  return v16(v20, 0);
}

uint64_t sub_2671D62DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671D6340(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671D63E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671D6430()
{
  result = qword_2800F74C8;
  if (!qword_2800F74C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F74C8);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSVideoInteractionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x8000000267476560, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x8000000267476590, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x80000002674765C0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2671D6694(uint64_t a1)
{
  v2 = sub_2671D6798(&qword_2800F74F8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSVideoInteractionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671D66FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671D6798(&qword_2800F74F8, &protocol conformance descriptor for PEGASUSSchemaPEGASUSVideoInteractionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671D6798(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PEGASUSSchemaPEGASUSVideoInteractionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static PEGASUSSchemaPEGASUSVideoVerb.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267476620, isUniquelyReferenced_nonNull_native);
  *v3 = v42;

  v1(v52, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267476640, v8);
  *v7 = v43;

  v5(v52, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267476660, v12);
  *v11 = v44;

  v9(v52, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x8000000267476680, v16);
  *v15 = v45;

  v13(v52, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x80000002674766B0, v20);
  *v19 = v46;

  v17(v52, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x80000002674766E0, v24);
  *v23 = v47;

  v21(v52, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000023, 0x8000000267476710, v28);
  *v27 = v48;

  v25(v52, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x8000000267476740, v32);
  *v31 = v49;

  v29(v52, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000021, 0x8000000267476760, v36);
  *v35 = v50;

  v33(v52, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001FLL, 0x8000000267476790, v40);
  *v39 = v51;

  return v37(v52, 0);
}