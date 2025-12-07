uint64_t sub_266FC4C28(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F1A08, &qword_2800F1A10, 0x277D577E0, &protocol conformance descriptor for GATSchemaGATClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F1A18, &qword_2800F1A10, 0x277D577E0, &protocol conformance descriptor for GATSchemaGATClientEvent);
  result = sub_266ECAF2C(&qword_2800F1A20, &qword_2800F1A10, 0x277D577E0, &protocol conformance descriptor for GATSchemaGATClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static GATSchemaGATClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449746167, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449746167, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878862D8);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266FC4FC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC5024(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GATSchemaGATConfirmationDialogName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x800000026743D9A0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000030, 0x800000026743D9D0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x800000026743DA10, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x800000026743DA40, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FC5350(uint64_t a1)
{
  v2 = sub_266FC5454(&qword_2800F1A38, &protocol conformance descriptor for GATSchemaGATConfirmationDialogName);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC53B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC5454(&qword_2800F1A38, &protocol conformance descriptor for GATSchemaGATConfirmationDialogName);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC5454(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATConfirmationDialogName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATConfirmationSnippetOutcome.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x800000026743DAB0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x800000026743DAE0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026743DB10, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x800000026743DB40, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FC5720(uint64_t a1)
{
  v2 = sub_266FC5824(&qword_2800F1A48, &protocol conformance descriptor for GATSchemaGATConfirmationSnippetOutcome);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC5788(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC5824(&qword_2800F1A48, &protocol conformance descriptor for GATSchemaGATConfirmationSnippetOutcome);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC5824(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATConfirmationSnippetOutcome(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATConfirmationSnippetPresented.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for GATSchemaGATConfirmationDialogName(0);
  sub_266FC5C2C(&qword_2800F1A30, type metadata accessor for GATSchemaGATConfirmationDialogName, &protocol conformance descriptor for GATSchemaGATConfirmationDialogName);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x800000026743DBB0);
  v6(v9, 0);
  type metadata accessor for SISchemaGenAIAgent(0);
  sub_266FC5C2C(&qword_2800F1A50, type metadata accessor for SISchemaGenAIAgent, &protocol conformance descriptor for SISchemaGenAIAgent);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574736575716572, 0xEE00746E65674164);
  return v7(v9, 0);
}

uint64_t sub_266FC5B20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC5B84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC5C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FC5C74()
{
  result = qword_2800F19E8;
  if (!qword_2800F19E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F19E8);
  }

  return result;
}

uint64_t static GATSchemaGATConfirmationSnippetUserActioned.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for GATSchemaGATConfirmationSnippetOutcome(0);
  sub_266FC6114(&qword_2800F1A40, type metadata accessor for GATSchemaGATConfirmationSnippetOutcome, &protocol conformance descriptor for GATSchemaGATConfirmationSnippetOutcome);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D6F6374756FLL, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_266FC5E80(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for GATSchemaGATConfirmationSnippetOutcome(0);
  sub_266FC6114(&qword_2800F1A40, type metadata accessor for GATSchemaGATConfirmationSnippetOutcome, &protocol conformance descriptor for GATSchemaGATConfirmationSnippetOutcome);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D6F6374756FLL, 0xE700000000000000);
  return v5(v7, 0);
}

uint64_t sub_266FC6008(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC606C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC6114(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FC615C()
{
  result = qword_2800F19F8;
  if (!qword_2800F19F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F19F8);
  }

  return result;
}

uint64_t static GATSchemaGATConfirmationSnippetUserActionEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for GATSchemaGATConfirmationSnippetOutcome(0);
  sub_266FC64A8(&qword_2800F1A40, type metadata accessor for GATSchemaGATConfirmationSnippetOutcome, &protocol conformance descriptor for GATSchemaGATConfirmationSnippetOutcome);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D6F6374756FLL, 0xE700000000000000);
  v5(v7, 0);
  sub_266ECB128(&unk_287886308);
  return sub_2673811CC();
}

uint64_t sub_266FC639C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC6400(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC64A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FC64F0()
{
  result = qword_2800F19D8;
  if (!qword_2800F19D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F19D8);
  }

  return result;
}

uint64_t static GATSchemaGATCreateSessionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F1A58, 0x277D57820);
  sub_266ECAF2C(&qword_2800F1A60, &qword_2800F1A58, 0x277D57820, &protocol conformance descriptor for GATSchemaGATCreateSessionEventStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F1A68, 0x277D57810);
  sub_266ECAF2C(&qword_2800F1A70, &qword_2800F1A68, 0x277D57810, &protocol conformance descriptor for GATSchemaGATCreateSessionEventEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F1A78, 0x277D57818);
  sub_266ECAF2C(&qword_2800F1A80, &qword_2800F1A78, 0x277D57818, &protocol conformance descriptor for GATSchemaGATCreateSessionEventFailed);
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

uint64_t sub_266FC6A54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC6AB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GATSchemaGATCreateSessionEventEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7473697865, 0xE500000000000000);
  return v8(v10, 0);
}

uint64_t sub_266FC6DA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC6E08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FC6E6C()
{
  result = qword_2800F1A70;
  if (!qword_2800F1A70)
  {
    sub_266FC6EC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1A70);
  }

  return result;
}

unint64_t sub_266FC6EC4()
{
  result = qword_2800F1A68;
  if (!qword_2800F1A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1A68);
  }

  return result;
}

uint64_t static GATSchemaGATCreateSessionEventFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for GATSchemaGATErrorDomain(0);
  sub_266FC7350(&qword_2800F1A88, type metadata accessor for GATSchemaGATErrorDomain, &protocol conformance descriptor for GATSchemaGATErrorDomain);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D6F44726F727265, 0xEB000000006E6961);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E508], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v10(v14, 0);
}

uint64_t sub_266FC7244(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC72A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC7350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FC7398()
{
  result = qword_2800F1A78;
  if (!qword_2800F1A78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1A78);
  }

  return result;
}

uint64_t static GATSchemaGATCreateSessionEventStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7473697865, 0xE500000000000000);
  return v8(v10, 0);
}

uint64_t sub_266FC762C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC7690(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FC76F4()
{
  result = qword_2800F1A60;
  if (!qword_2800F1A60)
  {
    sub_266FC774C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1A60);
  }

  return result;
}

unint64_t sub_266FC774C()
{
  result = qword_2800F1A58;
  if (!qword_2800F1A58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1A58);
  }

  return result;
}

uint64_t static GATSchemaGATErrorDomain.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000016, 0x800000026743DD70, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000032, 0x800000026743DD90, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x800000026743DDD0, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x800000026743DE00, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001FLL, 0x800000026743DE20, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000025, 0x800000026743DE40, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000026, 0x800000026743DE70, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000027, 0x800000026743DEA0, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000012, 0x800000026743DED0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_266FC7C50(uint64_t a1)
{
  v2 = sub_266FC7D54(&qword_2800F1A90, &protocol conformance descriptor for GATSchemaGATErrorDomain);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FC7CB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FC7D54(&qword_2800F1A90, &protocol conformance descriptor for GATSchemaGATErrorDomain);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FC7D54(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATGenerativeRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F1A98, 0x277D57840);
  sub_266ECAF2C(&qword_2800F1AA0, &qword_2800F1A98, 0x277D57840, &protocol conformance descriptor for GATSchemaGATGenerativeRequestEventStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F1AA8, 0x277D57830);
  sub_266ECAF2C(&qword_2800F1AB0, &qword_2800F1AA8, 0x277D57830, &protocol conformance descriptor for GATSchemaGATGenerativeRequestEventEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F1AB8, 0x277D57838);
  sub_266ECAF2C(&qword_2800F1AC0, &qword_2800F1AB8, 0x277D57838, &protocol conformance descriptor for GATSchemaGATGenerativeRequestEventFailed);
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

uint64_t sub_266FC82B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC8314(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GATSchemaGATGenerativeRequestEventEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7473697865, 0xE500000000000000);
  return v8(v10, 0);
}

uint64_t sub_266FC8600(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC8664(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FC86C8()
{
  result = qword_2800F1AB0;
  if (!qword_2800F1AB0)
  {
    sub_266FC8720();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1AB0);
  }

  return result;
}

unint64_t sub_266FC8720()
{
  result = qword_2800F1AA8;
  if (!qword_2800F1AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1AA8);
  }

  return result;
}

uint64_t static GATSchemaGATGenerativeRequestEventFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for GATSchemaGATErrorDomain(0);
  sub_266FC8BAC(&qword_2800F1A88, type metadata accessor for GATSchemaGATErrorDomain, &protocol conformance descriptor for GATSchemaGATErrorDomain);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D6F44726F727265, 0xEB000000006E6961);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E508], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v10(v14, 0);
}

uint64_t sub_266FC8AA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC8B04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC8BAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FC8BF4()
{
  result = qword_2800F1AB8;
  if (!qword_2800F1AB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1AB8);
  }

  return result;
}

uint64_t static GATSchemaGATGenerativeRequestEventStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for GATSchemaGATUsecase(0);
  sub_266FC9238(&qword_2800F1AC8, type metadata accessor for GATSchemaGATUsecase, &protocol conformance descriptor for GATSchemaGATUsecase);
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x65736163657375, 0xE700000000000000);
  v8(v18, 0);
  type metadata accessor for GATSchemaGATMediaQnAUseCase(0);
  sub_266FC9238(&qword_2800F1AD0, type metadata accessor for GATSchemaGATMediaQnAUseCase, &protocol conformance descriptor for GATSchemaGATMediaQnAUseCase);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x554151616964656DLL, 0xEE00657361436573);
  v9(v18, 0);
  type metadata accessor for GATSchemaGATLLMAgent(0);
  sub_266FC9238(&qword_2800F1AD8, type metadata accessor for GATSchemaGATLLMAgent, &protocol conformance descriptor for GATSchemaGATLLMAgent);
  v16[1] = a1;
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x746E6567416D6C6CLL, 0xEC000000656D614ELL);
  v10(v18, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v17, 0x746E6567416D6C6CLL, 0xEC000000656D614ELL);
  if (!(*(v6 + 48))(v13, 1, v5))
  {
    sub_266ECB128(&unk_287886330);
    sub_26738115C();
  }

  (v12)(v17, 0);
  v11(v18, 0);
  type metadata accessor for SISchemaGenAIAgent(0);
  sub_266FC9238(&qword_2800F1A50, type metadata accessor for SISchemaGenAIAgent, &protocol conformance descriptor for SISchemaGenAIAgent);
  sub_26738120C();
  v7(v4, 0, 1, v5);
  v14 = sub_2673811AC();
  sub_266EC637C(v4, 0x65674149416E6567, 0xEE0064657355746ELL);
  return v14(v18, 0);
}

uint64_t sub_266FC912C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC9190(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC9238(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FC9280()
{
  result = qword_2800F1A98;
  if (!qword_2800F1A98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1A98);
  }

  return result;
}

uint64_t static GATSchemaGATImageResizingContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F1AE0, 0x277D57860);
  sub_266ECAF2C(&qword_2800F1AE8, &qword_2800F1AE0, 0x277D57860, &protocol conformance descriptor for GATSchemaGATImageResizingEventStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F1AF0, 0x277D57850);
  sub_266ECAF2C(&qword_2800F1AF8, &qword_2800F1AF0, 0x277D57850, &protocol conformance descriptor for GATSchemaGATImageResizingEventEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F1B00, 0x277D57858);
  sub_266ECAF2C(&qword_2800F1B08, &qword_2800F1B00, 0x277D57858, &protocol conformance descriptor for GATSchemaGATImageResizingEventFailed);
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

uint64_t sub_266FC97E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC9848(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GATSchemaGATImageResizingEventEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for GATSchemaGATMediaType(0);
  sub_266FC9D30(&qword_2800F1B10, type metadata accessor for GATSchemaGATMediaType, &protocol conformance descriptor for GATSchemaGATMediaType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x800000026743E060);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E518], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x800000026743E080);
  return v10(v14, 0);
}

uint64_t sub_266FC9C24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FC9C88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FC9D30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FC9D78()
{
  result = qword_2800F1AF0;
  if (!qword_2800F1AF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1AF0);
  }

  return result;
}

uint64_t static GATSchemaGATImageResizingEventFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for GATSchemaGATErrorDomain(0);
  sub_266FCA204(&qword_2800F1A88, type metadata accessor for GATSchemaGATErrorDomain, &protocol conformance descriptor for GATSchemaGATErrorDomain);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D6F44726F727265, 0xEB000000006E6961);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E508], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v10(v14, 0);
}

uint64_t sub_266FCA0F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCA15C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FCA204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FCA24C()
{
  result = qword_2800F1B00;
  if (!qword_2800F1B00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1B00);
  }

  return result;
}

uint64_t static GATSchemaGATImageResizingEventStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7473697865, 0xE500000000000000);
  return v8(v10, 0);
}

uint64_t sub_266FCA4E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCA544(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FCA5A8()
{
  result = qword_2800F1AE8;
  if (!qword_2800F1AE8)
  {
    sub_266FCA600();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1AE8);
  }

  return result;
}

unint64_t sub_266FCA600()
{
  result = qword_2800F1AE0;
  if (!qword_2800F1AE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1AE0);
  }

  return result;
}

uint64_t static GATSchemaGATLLMAgent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x800000026743E150, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x800000026743E170, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_266FCA7F0(uint64_t a1)
{
  v2 = sub_266FCA8F4(&qword_2800F1B18, &protocol conformance descriptor for GATSchemaGATLLMAgent);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FCA858(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FCA8F4(&qword_2800F1B18, &protocol conformance descriptor for GATSchemaGATLLMAgent);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FCA8F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATLLMAgent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATLoadScreenContentContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F1B20, 0x277D57880);
  sub_266ECAF2C(&qword_2800F1B28, &qword_2800F1B20, 0x277D57880, &protocol conformance descriptor for GATSchemaGATLoadScreenContentEventStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F1B30, 0x277D57870);
  sub_266ECAF2C(&qword_2800F1B38, &qword_2800F1B30, 0x277D57870, &protocol conformance descriptor for GATSchemaGATLoadScreenContentEventEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F1B40, 0x277D57878);
  sub_266ECAF2C(&qword_2800F1B48, &qword_2800F1B40, 0x277D57878, &protocol conformance descriptor for GATSchemaGATLoadScreenContentEventFailed);
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

uint64_t sub_266FCAE50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCAEB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GATSchemaGATLoadScreenContentEventEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for GATSchemaGATMediaType(0);
  sub_266FCB398(&qword_2800F1B10, type metadata accessor for GATSchemaGATMediaType, &protocol conformance descriptor for GATSchemaGATMediaType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x800000026743E210);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E518], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x800000026743E230);
  return v10(v14, 0);
}

uint64_t sub_266FCB28C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCB2F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FCB398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FCB3E0()
{
  result = qword_2800F1B30;
  if (!qword_2800F1B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1B30);
  }

  return result;
}

uint64_t static GATSchemaGATLoadScreenContentEventFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for GATSchemaGATErrorDomain(0);
  sub_266FCB86C(&qword_2800F1A88, type metadata accessor for GATSchemaGATErrorDomain, &protocol conformance descriptor for GATSchemaGATErrorDomain);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D6F44726F727265, 0xEB000000006E6961);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E508], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v10(v14, 0);
}

uint64_t sub_266FCB760(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCB7C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FCB86C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FCB8B4()
{
  result = qword_2800F1B40;
  if (!qword_2800F1B40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1B40);
  }

  return result;
}

uint64_t static GATSchemaGATLoadScreenContentEventStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7473697865, 0xE500000000000000);
  return v8(v10, 0);
}

uint64_t sub_266FCBB48(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCBBAC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FCBC10()
{
  result = qword_2800F1B28;
  if (!qword_2800F1B28)
  {
    sub_266FCBC68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1B28);
  }

  return result;
}

unint64_t sub_266FCBC68()
{
  result = qword_2800F1B20;
  if (!qword_2800F1B20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1B20);
  }

  return result;
}

uint64_t static GATSchemaGATMediaQnAUseCase.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026743E300, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x800000026743E320, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x800000026743E340, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x800000026743E370, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x800000026743E390, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266FCBFAC(uint64_t a1)
{
  v2 = sub_266FCC0B0(&qword_2800F1B50, &protocol conformance descriptor for GATSchemaGATMediaQnAUseCase);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FCC014(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FCC0B0(&qword_2800F1B50, &protocol conformance descriptor for GATSchemaGATMediaQnAUseCase);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FCC0B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATMediaQnAUseCase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATMediaType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x800000026743E3F0, isUniquelyReferenced_nonNull_native);
  *v3 = v50;

  v1(v62, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000010, 0x800000026743E410, v8);
  *v7 = v51;

  v5(v62, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000010, 0x800000026743E430, v12);
  *v11 = v52;

  v9(v62, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000010, 0x800000026743E450, v16);
  *v15 = v53;

  v13(v62, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000010, 0x800000026743E470, v20);
  *v19 = v54;

  v17(v62, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000010, 0x800000026743E490, v24);
  *v23 = v55;

  v21(v62, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000011, 0x800000026743E4B0, v28);
  *v27 = v56;

  v25(v62, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000011, 0x800000026743E4D0, v32);
  *v31 = v57;

  v29(v62, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000010, 0x800000026743E4F0, v36);
  *v35 = v58;

  v33(v62, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000010, 0x800000026743E510, v40);
  *v39 = v59;

  v37(v62, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000010, 0x800000026743E530, v44);
  *v43 = v60;

  v41(v62, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000010, 0x800000026743E550, v48);
  *v47 = v61;

  return v45(v62, 0);
}

uint64_t sub_266FCC718(uint64_t a1)
{
  v2 = sub_266FCC81C(&qword_2800F1B58, &protocol conformance descriptor for GATSchemaGATMediaType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FCC780(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FCC81C(&qword_2800F1B58, &protocol conformance descriptor for GATSchemaGATMediaType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FCC81C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATMediaType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GATSchemaGATPnRMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v42 = sub_26738113C();
  v2 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v44 = *MEMORY[0x277D3E518];
  v8 = *(v2 + 104);
  v8(v4);
  v9 = v2 + 104;
  v40 = v8;
  v45[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v39 = *(v11 + 56);
  v41 = v11 + 56;
  v39(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, 0x800000026743E5A0);
  v12(v45, 0);
  v36 = "DurationInSeconds";
  v13 = v44;
  (v8)(v4, v44, v42);
  v45[0] = 1;
  sub_26738114C();
  v14 = v39;
  v39(v7, 0, 1, v10);
  v43 = a1;
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000022, v36 | 0x8000000000000000);
  v15(v45, 0);
  v36 = "tDurationInSeconds";
  v16 = v13;
  v17 = v40;
  (v40)(v4, v16, v42);
  v37 = v9;
  v45[0] = 1;
  sub_26738114C();
  v14(v7, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000022, v36 | 0x8000000000000000);
  v18(v45, 0);
  v36 = "tDurationInSeconds";
  v19 = v44;
  v20 = v42;
  (v17)(v4, v44, v42);
  v45[0] = 1;
  sub_26738114C();
  v21 = v39;
  v39(v7, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, v36 | 0x8000000000000000);
  v22(v45, 0);
  v36 = "imageResizingDurationInSeconds";
  (v17)(v4, v19, v20);
  v45[0] = 1;
  sub_26738114C();
  v38 = v10;
  v21(v7, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, v36 | 0x8000000000000000);
  v23(v45, 0);
  v36 = "registerMediaDurationInSeconds";
  v24 = v44;
  v25 = v40;
  (v40)(v4, v44, v20);
  v45[0] = 1;
  sub_26738114C();
  v26 = v39;
  v39(v7, 0, 1, v10);
  v27 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, v36 | 0x8000000000000000);
  v27(v45, 0);
  v36 = "tRateKBsPerSecond";
  v25(v4, v24, v20);
  v45[0] = 1;
  sub_26738114C();
  v28 = v38;
  v26(v7, 0, 1, v38);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, v36 | 0x8000000000000000);
  v29(v45, 0);
  v36 = "registerMediaRateKBsPerSecond";
  v30 = v42;
  v31 = v40;
  (v40)(v4, *MEMORY[0x277D3E538], v42);
  v45[0] = 1;
  sub_26738114C();
  v26(v7, 0, 1, v28);
  v32 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001FLL, v36 | 0x8000000000000000);
  v32(v45, 0);
  (v31)(v4, v44, v30);
  v45[0] = 1;
  sub_26738114C();
  v26(v7, 0, 1, v38);
  v33 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x800000026743E6E0);
  return v33(v45, 0);
}

uint64_t sub_266FCD140(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCD1A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FCD208()
{
  result = qword_2800F1B60;
  if (!qword_2800F1B60)
  {
    sub_266FCD260();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1B60);
  }

  return result;
}

unint64_t sub_266FCD260()
{
  result = qword_2800F1B68;
  if (!qword_2800F1B68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1B68);
  }

  return result;
}

uint64_t static GATSchemaGATPresentConfirmationSnippetEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for GATSchemaGATConfirmationDialogName(0);
  sub_266FCD684(&qword_2800F1A30, type metadata accessor for GATSchemaGATConfirmationDialogName, &protocol conformance descriptor for GATSchemaGATConfirmationDialogName);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x800000026743DBB0);
  v6(v9, 0);
  type metadata accessor for SISchemaGenAIAgent(0);
  sub_266FCD684(&qword_2800F1A50, type metadata accessor for SISchemaGenAIAgent, &protocol conformance descriptor for SISchemaGenAIAgent);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574736575716572, 0xEE00746E65674164);
  v7(v9, 0);
  sub_266ECB128(&unk_287886358);
  return sub_2673811CC();
}

uint64_t sub_266FCD578(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCD5DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FCD684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FCD6CC()
{
  result = qword_2800F19C8;
  if (!qword_2800F19C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F19C8);
  }

  return result;
}

uint64_t static GATSchemaGATRegisterMediaContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F1B70, 0x277D578C0);
  sub_266ECAF2C(&qword_2800F1B78, &qword_2800F1B70, 0x277D578C0, &protocol conformance descriptor for GATSchemaGATRegisterMediaEventStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F1B80, 0x277D578B0);
  sub_266ECAF2C(&qword_2800F1B88, &qword_2800F1B80, 0x277D578B0, &protocol conformance descriptor for GATSchemaGATRegisterMediaEventEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F1B90, 0x277D578B8);
  sub_266ECAF2C(&qword_2800F1B98, &qword_2800F1B90, 0x277D578B8, &protocol conformance descriptor for GATSchemaGATRegisterMediaEventFailed);
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

uint64_t sub_266FCDC30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCDC94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GATSchemaGATRegisterMediaEventEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7473697865, 0xE500000000000000);
  return v8(v10, 0);
}

uint64_t sub_266FCDF80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCDFE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FCE048()
{
  result = qword_2800F1B88;
  if (!qword_2800F1B88)
  {
    sub_266FCE0A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1B88);
  }

  return result;
}

unint64_t sub_266FCE0A0()
{
  result = qword_2800F1B80;
  if (!qword_2800F1B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1B80);
  }

  return result;
}

uint64_t static GATSchemaGATRegisterMediaEventFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for GATSchemaGATErrorDomain(0);
  sub_266FCE52C(&qword_2800F1A88, type metadata accessor for GATSchemaGATErrorDomain, &protocol conformance descriptor for GATSchemaGATErrorDomain);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D6F44726F727265, 0xEB000000006E6961);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E508], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v10(v14, 0);
}

uint64_t sub_266FCE420(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCE484(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FCE52C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FCE574()
{
  result = qword_2800F1B90;
  if (!qword_2800F1B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1B90);
  }

  return result;
}

uint64_t static GATSchemaGATRegisterMediaEventStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7473697865, 0xE500000000000000);
  return v8(v10, 0);
}

uint64_t sub_266FCE808(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCE86C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FCE8D0()
{
  result = qword_2800F1B78;
  if (!qword_2800F1B78)
  {
    sub_266FCE928();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1B78);
  }

  return result;
}

unint64_t sub_266FCE928()
{
  result = qword_2800F1B70;
  if (!qword_2800F1B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1B70);
  }

  return result;
}

uint64_t static GATSchemaGATRequestCanceled.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7473697865, 0xE500000000000000);
  return v8(v10, 0);
}

uint64_t sub_266FCEBBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCEC20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FCEC84()
{
  result = qword_2800F1BA0;
  if (!qword_2800F1BA0)
  {
    sub_266FCECDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1BA0);
  }

  return result;
}

unint64_t sub_266FCECDC()
{
  result = qword_2800F1BA8;
  if (!qword_2800F1BA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1BA8);
  }

  return result;
}

uint64_t static GATSchemaGATRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v24 = sub_26738118C();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v23 = &v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1BB0, 0x277D578F0);
  sub_266ECAF2C(&qword_2800F1BB8, &qword_2800F1BB0, 0x277D578F0, &protocol conformance descriptor for GATSchemaGATRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v25, 0);
  sub_266ECB294(0, &qword_2800F1BC0, 0x277D578D8);
  sub_266ECAF2C(&qword_2800F1BC8, &qword_2800F1BC0, 0x277D578D8, &protocol conformance descriptor for GATSchemaGATRequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F1BD0, 0x277D578E0);
  sub_266ECAF2C(&qword_2800F1BD8, &qword_2800F1BD0, 0x277D578E0, &protocol conformance descriptor for GATSchemaGATRequestFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F1BA8, 0x277D578C8);
  sub_266ECAF2C(&qword_2800F1BA0, &qword_2800F1BA8, 0x277D578C8, &protocol conformance descriptor for GATSchemaGATRequestCanceled);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C65636E6163, 0xE800000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F1BE0, 0x277D578E8);
  sub_266ECAF2C(&qword_2800F1BE8, &qword_2800F1BE0, 0x277D578E8, &protocol conformance descriptor for GATSchemaGATRequestHandoff);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v11 = v23;
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x66666F646E6168, 0xE700000000000000);
  v12(v25, 0);
  sub_26738117C();
  v13 = sub_2673811BC();
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_266ECAD54(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_266ECAD54((v18 > 1), v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  (*(v22 + 32))(v16 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, v11, v24);
  return v13(v25, 0);
}

uint64_t sub_266FCF3D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCF438(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GATSchemaGATRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1B68, 0x277D57898);
  sub_266ECAF2C(&qword_2800F1B60, &qword_2800F1B68, 0x277D57898, &protocol conformance descriptor for GATSchemaGATPnRMetrics);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7274654D66726570, 0xEB00000000736369);
  return v5(v7, 0);
}

uint64_t sub_266FCF6B8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1B68, 0x277D57898);
  sub_266ECAF2C(&qword_2800F1B60, &qword_2800F1B68, 0x277D57898, &protocol conformance descriptor for GATSchemaGATPnRMetrics);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7274654D66726570, 0xEB00000000736369);
  return v5(v7, 0);
}

uint64_t sub_266FCF85C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCF8C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GATSchemaGATRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for GATSchemaGATErrorDomain(0);
  sub_266FCFDA4(&qword_2800F1A88, type metadata accessor for GATSchemaGATErrorDomain, &protocol conformance descriptor for GATSchemaGATErrorDomain);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D6F44726F727265, 0xEB000000006E6961);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E508], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v10(v14, 0);
}

uint64_t sub_266FCFC98(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FCFCFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FCFDA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FCFDEC()
{
  result = qword_2800F1BD0;
  if (!qword_2800F1BD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1BD0);
  }

  return result;
}

uint64_t static GATSchemaGATRequestHandoff.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7473697865, 0xE500000000000000);
  return v8(v10, 0);
}

uint64_t sub_266FD0080(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD00E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FD0148()
{
  result = qword_2800F1BE8;
  if (!qword_2800F1BE8)
  {
    sub_266FD01A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1BE8);
  }

  return result;
}

unint64_t sub_266FD01A0()
{
  result = qword_2800F1BE0;
  if (!qword_2800F1BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1BE0);
  }

  return result;
}

uint64_t static GATSchemaGATRequestStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x7254746E65696C63, 0xED00006449656361);
  v6(v9, 0);
  type metadata accessor for GATSchemaGATAppIntentName(0);
  sub_266FD0550();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E65746E49707061, 0xED0000656D614E74);
  return v7(v9, 0);
}

uint64_t sub_266FD048C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD04F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FD0550()
{
  result = qword_2800F1948;
  if (!qword_2800F1948)
  {
    type metadata accessor for GATSchemaGATAppIntentName(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1948);
  }

  return result;
}

uint64_t static GATSchemaGATUsecase.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000012, 0x800000026743E980, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000013, 0x800000026743E9A0, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x800000026743E9C0, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x800000026743E9E0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ALL, 0x800000026743EA00, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x800000026743EA20, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001DLL, 0x800000026743EA50, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266FD09C4(uint64_t a1)
{
  v2 = sub_266FD0AC8(&qword_2800F1BF0, &protocol conformance descriptor for GATSchemaGATUsecase);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD0A2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD0AC8(&qword_2800F1BF0, &protocol conformance descriptor for GATSchemaGATUsecase);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD0AC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GATSchemaGATUsecase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GMSSchemaGMSCaller.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000011, 0x800000026743EAA0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x800000026743EAC0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x800000026743EAF0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000036, 0x800000026743EB20, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000026, 0x800000026743EB60, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266FD0E00(uint64_t a1)
{
  v2 = sub_266FD0F04(&qword_2800F1C00, &protocol conformance descriptor for GMSSchemaGMSCaller);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD0E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD0F04(&qword_2800F1C00, &protocol conformance descriptor for GMSSchemaGMSCaller);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD0F04(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GMSSchemaGMSCaller(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GMSSchemaGMSClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x28223BE20](v2);
  v22 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1C08, 0x277D57900);
  sub_266ECAF2C(&qword_2800F1C10, &qword_2800F1C08, 0x277D57900, &protocol conformance descriptor for GMSSchemaGMSClientEventMetadata);
  v21 = a1;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x74654D746E657665, 0xED00006174616461);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F1C18, 0x277D57908);
  sub_266ECAF2C(&qword_2800F1C20, &qword_2800F1C18, 0x277D57908, &protocol conformance descriptor for GMSSchemaGMSModelRequestContext);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x800000026743EBC0);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F1C28, 0x277D57930);
  sub_266ECAF2C(&qword_2800F1C30, &qword_2800F1C28, 0x277D57930, &protocol conformance descriptor for GMSSchemaGMSPrivateCloudMetricsReceived);
  sub_26738121C();
  v8(v6, 0, 1, v7);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ELL, 0x800000026743EBE0);
  v12(v25, 0);
  sub_26738117C();
  v13 = sub_2673811BC();
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_266ECAD54(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_266ECAD54((v18 > 1), v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  (*(v23 + 32))(v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, v11, v24);
  v13(v25, 0);
  sub_266ECB128(&unk_287886380);
  return sub_2673811CC();
}

uint64_t sub_266FD1458(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FD14F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FD15BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD1620(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FD1680(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F1C38, &qword_2800F1C40, 0x277D578F8, &protocol conformance descriptor for GMSSchemaGMSClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F1C48, &qword_2800F1C40, 0x277D578F8, &protocol conformance descriptor for GMSSchemaGMSClientEvent);
  result = sub_266ECAF2C(&qword_2800F1C50, &qword_2800F1C40, 0x277D578F8, &protocol conformance descriptor for GMSSchemaGMSClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static GMSSchemaGMSClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449736D67, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449736D67, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878863B8);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266FD1A18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD1A7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GMSSchemaGMSErrorDomain.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v198 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000016, 0x800000026743EC60, isUniquelyReferenced_nonNull_native);
  *v3 = v198;

  v1(v247, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v199 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000035, 0x800000026743EC80, v8);
  *v7 = v199;

  v5(v247, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v200 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000049, 0x800000026743ECC0, v12);
  *v11 = v200;

  v9(v247, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v201 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003BLL, 0x800000026743ED10, v16);
  *v15 = v201;

  v13(v247, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v202 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000036, 0x800000026743ED50, v20);
  *v19 = v202;

  v17(v247, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v203 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000033, 0x800000026743ED90, v24);
  *v23 = v203;

  v21(v247, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v204 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000031, 0x800000026743EDD0, v28);
  *v27 = v204;

  v25(v247, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v205 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000005BLL, 0x800000026743EE10, v32);
  *v31 = v205;

  v29(v247, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v206 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002ELL, 0x800000026743EE70, v36);
  *v35 = v206;

  v33(v247, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v207 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000005FLL, 0x800000026743EEA0, v40);
  *v39 = v207;

  v37(v247, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v208 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000063, 0x800000026743EF00, v44);
  *v43 = v208;

  v41(v247, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v209 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000004DLL, 0x800000026743EF70, v48);
  *v47 = v209;

  v45(v247, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v210 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000047, 0x800000026743EFC0, v52);
  *v51 = v210;

  v49(v247, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v211 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000046, 0x800000026743F010, v56);
  *v55 = v211;

  v53(v247, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v212 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000005DLL, 0x800000026743F060, v60);
  *v59 = v212;

  v57(v247, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v213 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000005CLL, 0x800000026743F0C0, v64);
  *v63 = v213;

  v61(v247, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v214 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000005BLL, 0x800000026743F120, v68);
  *v67 = v214;

  v65(v247, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v215 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000050, 0x800000026743F180, v72);
  *v71 = v215;

  v69(v247, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v216 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000059, 0x800000026743F1E0, v76);
  *v75 = v216;

  v73(v247, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v217 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000051, 0x800000026743F240, v80);
  *v79 = v217;

  v77(v247, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v218 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000046, 0x800000026743F2A0, v84);
  *v83 = v218;

  v81(v247, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v219 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000058, 0x800000026743F2F0, v88);
  *v87 = v219;

  v85(v247, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v220 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000004FLL, 0x800000026743F350, v92);
  *v91 = v220;

  v89(v247, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v221 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000064, 0x800000026743F3A0, v96);
  *v95 = v221;

  v93(v247, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v222 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000064, 0x800000026743F410, v100);
  *v99 = v222;

  v97(v247, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v223 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000064, 0x800000026743F480, v104);
  *v103 = v223;

  v101(v247, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v224 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000005DLL, 0x800000026743F4F0, v108);
  *v107 = v224;

  v105(v247, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v225 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000030, 0x800000026743F550, v112);
  *v111 = v225;

  v109(v247, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v226 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000047, 0x800000026743F590, v116);
  *v115 = v226;

  v113(v247, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v227 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000004FLL, 0x800000026743F5E0, v120);
  *v119 = v227;

  v117(v247, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v228 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000049, 0x800000026743F630, v124);
  *v123 = v228;

  v121(v247, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v229 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000048, 0x800000026743F680, v128);
  *v127 = v229;

  v125(v247, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v230 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000051, 0x800000026743F6D0, v132);
  *v131 = v230;

  v129(v247, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v231 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000021, 0x800000026743F730, v136);
  *v135 = v231;

  v133(v247, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v232 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000049, 0x800000026743F760, v140);
  *v139 = v232;

  v137(v247, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v233 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000051, 0x800000026743F7B0, v144);
  *v143 = v233;

  v141(v247, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v234 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000047, 0x800000026743F810, v148);
  *v147 = v234;

  v145(v247, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v235 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000042, 0x800000026743F860, v152);
  *v151 = v235;

  v149(v247, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v236 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000042, 0x800000026743F8B0, v156);
  *v155 = v236;

  v153(v247, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v237 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(39, 0xD00000000000005ALL, 0x800000026743F900, v160);
  *v159 = v237;

  v157(v247, 0);
  v161 = sub_26738111C();
  v163 = v162;
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v238 = *v163;
  *v163 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000049, 0x800000026743F960, v164);
  *v163 = v238;

  v161(v247, 0);
  v165 = sub_26738111C();
  v167 = v166;
  v168 = swift_isUniquelyReferenced_nonNull_native();
  v239 = *v167;
  *v167 = 0x8000000000000000;
  sub_266ECD368(41, 0xD000000000000054, 0x800000026743F9B0, v168);
  *v167 = v239;

  v165(v247, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = swift_isUniquelyReferenced_nonNull_native();
  v240 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(42, 0xD00000000000002ELL, 0x800000026743FA10, v172);
  *v171 = v240;

  v169(v247, 0);
  v173 = sub_26738111C();
  v175 = v174;
  v176 = swift_isUniquelyReferenced_nonNull_native();
  v241 = *v175;
  *v175 = 0x8000000000000000;
  sub_266ECD368(43, 0xD000000000000032, 0x800000026743FA40, v176);
  *v175 = v241;

  v173(v247, 0);
  v177 = sub_26738111C();
  v179 = v178;
  v180 = swift_isUniquelyReferenced_nonNull_native();
  v242 = *v179;
  *v179 = 0x8000000000000000;
  sub_266ECD368(44, 0xD000000000000044, 0x800000026743FA80, v180);
  *v179 = v242;

  v177(v247, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = swift_isUniquelyReferenced_nonNull_native();
  v243 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(45, 0xD00000000000003FLL, 0x800000026743FAD0, v184);
  *v183 = v243;

  v181(v247, 0);
  v185 = sub_26738111C();
  v187 = v186;
  v188 = swift_isUniquelyReferenced_nonNull_native();
  v244 = *v187;
  *v187 = 0x8000000000000000;
  sub_266ECD368(46, 0xD000000000000062, 0x800000026743FB10, v188);
  *v187 = v244;

  v185(v247, 0);
  v189 = sub_26738111C();
  v191 = v190;
  v192 = swift_isUniquelyReferenced_nonNull_native();
  v245 = *v191;
  *v191 = 0x8000000000000000;
  sub_266ECD368(47, 0xD000000000000069, 0x800000026743FB80, v192);
  *v191 = v245;

  v189(v247, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v246 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(48, 0xD00000000000004BLL, 0x800000026743FBF0, v196);
  *v195 = v246;

  return v193(v247, 0);
}

uint64_t sub_266FD318C(uint64_t a1)
{
  v2 = sub_266FD3290(&qword_2800F1C68, &protocol conformance descriptor for GMSSchemaGMSErrorDomain);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD31F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD3290(&qword_2800F1C68, &protocol conformance descriptor for GMSSchemaGMSErrorDomain);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD3290(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GMSSchemaGMSErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GMSSchemaGMSExternalPartner.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026743FC70, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026743FC90, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_266FD3478(uint64_t a1)
{
  v2 = sub_266FD357C(&qword_2800F1C78, &protocol conformance descriptor for GMSSchemaGMSExternalPartner);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD34E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD357C(&qword_2800F1C78, &protocol conformance descriptor for GMSSchemaGMSExternalPartner);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD357C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GMSSchemaGMSExternalPartner(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GMSSchemaGMSModelLocation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026743FCE0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x800000026743FD00, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x800000026743FD20, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266FD37D4(uint64_t a1)
{
  v2 = sub_266FD38D8(&qword_2800F1C88, &protocol conformance descriptor for GMSSchemaGMSModelLocation);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD383C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD38D8(&qword_2800F1C88, &protocol conformance descriptor for GMSSchemaGMSModelLocation);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD38D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GMSSchemaGMSModelLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GMSSchemaGMSModelParty.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x800000026743FD70, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026743FD90, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x800000026743FDB0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266FD3B30(uint64_t a1)
{
  v2 = sub_266FD3C34(&qword_2800F1C98, &protocol conformance descriptor for GMSSchemaGMSModelParty);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD3B98(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD3C34(&qword_2800F1C98, &protocol conformance descriptor for GMSSchemaGMSModelParty);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD3C34(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GMSSchemaGMSModelParty(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GMSSchemaGMSModelRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738118C();
  v1 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v20 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1CA0, 0x277D57920);
  sub_266ECAF2C(&qword_2800F1CA8, &qword_2800F1CA0, 0x277D57920, &protocol conformance descriptor for GMSSchemaGMSModelRequestStarted);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x64657472617473, 0xE700000000000000);
  v8(v22, 0);
  sub_266ECB294(0, &qword_2800F1CB0, 0x277D57910);
  sub_266ECAF2C(&qword_2800F1CB8, &qword_2800F1CB0, 0x277D57910, &protocol conformance descriptor for GMSSchemaGMSModelRequestEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v22, 0);
  sub_266ECB294(0, &qword_2800F1CC0, 0x277D57918);
  sub_266ECAF2C(&qword_2800F1CC8, &qword_2800F1CC0, 0x277D57918, &protocol conformance descriptor for GMSSchemaGMSModelRequestFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v20;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v11(v22, 0);
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
  (*(v1 + 32))(v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v18, v10, v21);
  return v12(v22, 0);
}

uint64_t sub_266FD418C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD41F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GMSSchemaGMSModelRequestEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v47 = sub_26738113C();
  v2 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v38 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v41 = *MEMORY[0x277D3E518];
  v8 = *(v2 + 104);
  v45 = v2 + 104;
  v46 = v8;
  v8(v4);
  v48[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v7, 0, 1, v9);
  v42 = a1;
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6550736E656B6F74, 0xEF646E6F63655372);
  v13(v48, 0);
  v38 = "iri.gms.GMSModelRequestEnded";
  v44 = *MEMORY[0x277D3E538];
  v14 = v47;
  v46(v4);
  v48[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v43 = v12;
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v38 | 0x8000000000000000);
  v15(v48, 0);
  v16 = v14;
  v17 = v14;
  v18 = v46;
  (v46)(v4, v41, v16);
  v48[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x636553726550626BLL, 0xEB00000000646E6FLL);
  v19(v48, 0);
  (v18)(v4, v44, v17);
  v48[0] = 1;
  sub_26738114C();
  v40 = v11;
  v11(v7, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x65736E6F70736572, 0xEF746E756F43624BLL);
  v20(v48, 0);
  (v18)(v4, *MEMORY[0x277D3E500], v47);
  v48[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0x7265506567616D69, 0xEE00646E6F636553);
  v21(v48, 0);
  v23 = v46;
  v22 = v47;
  (v46)(v4, v44, v47);
  v48[0] = 1;
  sub_26738114C();
  v24 = v40;
  v40(v7, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0x756F436567616D69, 0xEA0000000000746ELL);
  v25(v48, 0);
  v38 = "responseTokensCount";
  v26 = v41;
  (v23)(v4, v41, v22);
  v48[0] = 1;
  sub_26738114C();
  v39 = v9;
  v24(v7, 0, 1, v9);
  v27 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, v38 | 0x8000000000000000);
  v27(v48, 0);
  v38 = "timeToFirstTokenInSeconds";
  v28 = v46;
  v29 = v47;
  (v46)(v4, v26, v47);
  v48[0] = 1;
  sub_26738114C();
  v30 = v9;
  v31 = v40;
  v40(v7, 0, 1, v30);
  v32 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, v38 | 0x8000000000000000);
  v32(v48, 0);
  v33 = v44;
  (v28)(v4, v44, v29);
  v48[0] = 1;
  sub_26738114C();
  v34 = v39;
  v31(v7, 0, 1, v39);
  v35 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x800000026743FE90);
  v35(v48, 0);
  (v46)(v4, v33, v47);
  v48[0] = 1;
  sub_26738114C();
  v31(v7, 0, 1, v34);
  v36 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x800000026743FEB0);
  return v36(v48, 0);
}

uint64_t sub_266FD4C30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD4C94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FD4CF8()
{
  result = qword_2800F1CB8;
  if (!qword_2800F1CB8)
  {
    sub_266FD4D50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1CB8);
  }

  return result;
}

unint64_t sub_266FD4D50()
{
  result = qword_2800F1CB0;
  if (!qword_2800F1CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1CB0);
  }

  return result;
}

uint64_t static GMSSchemaGMSModelRequestFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = sub_26738113C();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for GMSSchemaGMSErrorDomain(0);
  sub_266FD55AC(&qword_2800F1C60, type metadata accessor for GMSSchemaGMSErrorDomain, &protocol conformance descriptor for GMSSchemaGMSErrorDomain);
  v32 = a1;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v36 = *(v9 + 56);
  v36(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D6F44726F727265, 0xEB000000006E6961);
  v10(v39, 0);
  v35 = a2;
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v38, 0x6D6F44726F727265, 0xEB000000006E6961);
  v30 = *(v9 + 48);
  if (!v30(v13, 1, v8))
  {
    sub_266ECB128(&unk_2878863E8);
    sub_26738115C();
  }

  (v12)(v38, 0);
  v11(v39, 0);
  v14 = *MEMORY[0x277D3E538];
  v15 = *(v37 + 104);
  v37 += 104;
  v31 = v15;
  v15(v33, v14, v34);
  v39[0] = 1;
  sub_26738114C();
  v36(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x726F727245736D67, 0xEC00000065646F43);
  v16(v39, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v38, 0x726F727245736D67, 0xEC00000065646F43);
  if (!v30(v19, 1, v8))
  {
    sub_266ECB128(&unk_287886410);
    sub_26738115C();
  }

  (v18)(v38, 0);
  v17(v39, 0);
  type metadata accessor for GMSSchemaGMSOpenAIErrorCode(0);
  sub_266FD55AC(&qword_2800F1CD0, type metadata accessor for GMSSchemaGMSOpenAIErrorCode, &protocol conformance descriptor for GMSSchemaGMSOpenAIErrorCode);
  sub_26738120C();
  v29 = v8;
  v36(v7, 0, 1, v8);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x724549416E65706FLL, 0xEF65646F43726F72);
  v20(v39, 0);
  v32 = "iri.gms.GMSModelRequestFailed";
  v21 = v33;
  v22 = v34;
  v23 = v31;
  v31(v33, *MEMORY[0x277D3E530], v34);
  v39[0] = 1;
  sub_26738114C();
  v24 = v36;
  v36(v7, 0, 1, v8);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, v32 | 0x8000000000000000);
  v25(v39, 0);
  v23(v21, *MEMORY[0x277D3E508], v22);
  v39[0] = 1;
  sub_26738114C();
  v24(v7, 0, 1, v29);
  v26 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F43726F727265, 0xE900000000000065);
  return v26(v39, 0);
}

uint64_t sub_266FD54A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD5504(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FD55AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FD55F4()
{
  result = qword_2800F1CC0;
  if (!qword_2800F1CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1CC0);
  }

  return result;
}

uint64_t static GMSSchemaGMSModelRequestStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v52[-v8];
  sub_266EC679C(MEMORY[0x277D84F90]);
  v56 = a2;
  sub_26738119C();
  type metadata accessor for GMSSchemaGMSPartnerAccountType(0);
  sub_266FD6610(&qword_2800F1CD8, type metadata accessor for GMSSchemaGMSPartnerAccountType, &protocol conformance descriptor for GMSSchemaGMSPartnerAccountType);
  sub_26738120C();
  v57 = sub_26738116C();
  v61 = *(v57 - 8);
  v10 = v61 + 56;
  v11 = *(v61 + 56);
  v11(v9, 0, 1, v57);
  v54 = v10;
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x54746E756F636361, 0xEB00000000657079);
  v12(v65, 0);
  v13 = *MEMORY[0x277D3E4E8];
  v14 = *(v4 + 104);
  v58 = v6;
  v59 = v3;
  (v14)(v6, v13, v3);
  v55 = v14;
  v60 = v4 + 104;
  v65[0] = 1;
  sub_26738114C();
  v15 = v57;
  v11(v9, 0, 1, v57);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0x6165536265577369, 0xEF64657355686372);
  v16(v65, 0);
  (v14)(v58, v13, v3);
  v65[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v15);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6953726573557369, 0xEE006E4964656E67);
  v17(v65, 0);
  type metadata accessor for GMSSchemaGMSModelParty(0);
  sub_266FD6610(&qword_2800F1C90, type metadata accessor for GMSSchemaGMSModelParty, &protocol conformance descriptor for GMSSchemaGMSModelParty);
  sub_26738120C();
  v11(v9, 0, 1, v15);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x7261506C65646F6DLL, 0xEA00000000007974);
  v18(v65, 0);
  type metadata accessor for GMSSchemaGMSModelLocation(0);
  sub_266FD6610(&qword_2800F1C80, type metadata accessor for GMSSchemaGMSModelLocation, &protocol conformance descriptor for GMSSchemaGMSModelLocation);
  sub_26738120C();
  v11(v9, 0, 1, v15);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x636F4C6C65646F6DLL, 0xED00006E6F697461);
  v19(v65, 0);
  type metadata accessor for GMSSchemaGMSUsecase(0);
  sub_266FD6610(&qword_2800F1CE0, type metadata accessor for GMSSchemaGMSUsecase, &protocol conformance descriptor for GMSSchemaGMSUsecase);
  sub_26738120C();
  v11(v9, 0, 1, v15);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x65736143657375, 0xE700000000000000);
  v20(v65, 0);
  v53 = *MEMORY[0x277D3E530];
  v22 = v58;
  v21 = v59;
  v23 = v55;
  v55(v58);
  v65[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v15);
  v62 = v11;
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v24(v65, 0);
  v25 = v22;
  v26 = v22;
  v27 = v53;
  v23(v26, v53, v21);
  v28 = v23;
  v65[0] = 1;
  sub_26738114C();
  v29 = v57;
  v11(v9, 0, 1, v57);
  v30 = sub_2673811AC();
  sub_266EC637C(v9, 0x65566769666E6F63, 0xED00006E6F697372);
  v30(v65, 0);
  v28(v25, v27, v59);
  v65[0] = 1;
  sub_26738114C();
  v31 = v62;
  v62(v9, 0, 1, v29);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, 0x655674706D6F7270, 0xED00006E6F697372);
  v32(v65, 0);
  v28(v25, v27, v59);
  v65[0] = 1;
  sub_26738114C();
  v31(v9, 0, 1, v29);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D614E6C65646F6DLL, 0xE900000000000065);
  v33(v65, 0);
  type metadata accessor for GMSSchemaGMSExternalPartner(0);
  sub_266FD6610(&qword_2800F1C70, type metadata accessor for GMSSchemaGMSExternalPartner, &protocol conformance descriptor for GMSSchemaGMSExternalPartner);
  sub_26738120C();
  v31(v9, 0, 1, v29);
  v34 = v29;
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0x6C616E7265747865, 0xEF72656E74726150);
  v35(v65, 0);
  v36 = sub_2673811AC();
  v37 = sub_266ECB6CC(v64, 0x6C616E7265747865, 0xEF72656E74726150);
  v38 = *(v61 + 48);
  v61 += 48;
  v59 = v38;
  if (!v38(v39, 1, v29))
  {
    sub_266ECB128(&unk_287886438);
    sub_26738115C();
  }

  (v37)(v64, 0);
  v36(v65, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v60 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v62(v9, 0, 1, v29);
  v40 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, 0x800000026743FF50);
  v40(v65, 0);
  v41 = sub_2673811AC();
  v42 = sub_266ECB6CC(v64, 0xD00000000000001ALL, 0x800000026743FF50);
  if (!v59(v43, 1, v29))
  {
    sub_266ECB128(&unk_287886460);
    sub_26738115C();
  }

  (v42)(v64, 0);
  v41(v65, 0);
  sub_26738120C();
  v62(v9, 0, 1, v29);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F747563657865, 0xEF44496563617254);
  v44(v65, 0);
  v45 = sub_2673811AC();
  v46 = sub_266ECB6CC(v64, 0x726F747563657865, 0xEF44496563617254);
  if (!v59(v47, 1, v29))
  {
    sub_266ECB128(&unk_287886488);
    sub_26738115C();
  }

  (v46)(v64, 0);
  v45(v65, 0);
  type metadata accessor for SISchemaGenAIAgent(0);
  sub_266FD6610(&qword_2800F1A50, type metadata accessor for SISchemaGenAIAgent, &protocol conformance descriptor for SISchemaGenAIAgent);
  sub_26738120C();
  v48 = v62;
  v62(v9, 0, 1, v34);
  v49 = sub_2673811AC();
  sub_266EC637C(v9, 0x65674149416E6567, 0xEE0064657355746ELL);
  v49(v65, 0);
  sub_26738120C();
  v48(v9, 0, 1, v34);
  v50 = sub_2673811AC();
  sub_266EC637C(v9, 0x7254746E65696C63, 0xED00006449656361);
  return v50(v65, 0);
}

uint64_t sub_266FD654C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD65B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FD6610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static GMSSchemaGMSOpenAIErrorCode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026743FFA0, isUniquelyReferenced_nonNull_native);
  *v3 = v102;

  v1(v127, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026743FFC0, v8);
  *v7 = v103;

  v5(v127, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001FLL, 0x800000026743FFF0, v12);
  *v11 = v104;

  v9(v127, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267440010, v16);
  *v15 = v105;

  v13(v127, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x8000000267440040, v20);
  *v19 = v106;

  v17(v127, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002DLL, 0x8000000267440070, v24);
  *v23 = v107;

  v21(v127, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002DLL, 0x80000002674400A0, v28);
  *v27 = v108;

  v25(v127, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000028, 0x80000002674400D0, v32);
  *v31 = v109;

  v29(v127, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000028, 0x8000000267440100, v36);
  *v35 = v110;

  v33(v127, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002CLL, 0x8000000267440130, v40);
  *v39 = v111;

  v37(v127, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v112 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000027, 0x8000000267440160, v44);
  *v43 = v112;

  v41(v127, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v113 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000002ALL, 0x8000000267440190, v48);
  *v47 = v113;

  v45(v127, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v114 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000027, 0x80000002674401C0, v52);
  *v51 = v114;

  v49(v127, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v115 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001FLL, 0x80000002674401F0, v56);
  *v55 = v115;

  v53(v127, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v116 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001ELL, 0x8000000267440210, v60);
  *v59 = v116;

  v57(v127, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v117 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000002DLL, 0x8000000267440230, v64);
  *v63 = v117;

  v61(v127, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v118 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000024, 0x8000000267440260, v68);
  *v67 = v118;

  v65(v127, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v119 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000022, 0x8000000267440290, v72);
  *v71 = v119;

  v69(v127, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v120 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000001ELL, 0x80000002674402C0, v76);
  *v75 = v120;

  v73(v127, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v121 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000020, 0x80000002674402E0, v80);
  *v79 = v121;

  v77(v127, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v122 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000022, 0x8000000267440310, v84);
  *v83 = v122;

  v81(v127, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v123 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000020, 0x8000000267440340, v88);
  *v87 = v123;

  v85(v127, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v124 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000024, 0x8000000267440370, v92);
  *v91 = v124;

  v89(v127, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v125 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000026, 0x80000002674403A0, v96);
  *v95 = v125;

  v93(v127, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v126 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000020, 0x80000002674403D0, v100);
  *v99 = v126;

  return v97(v127, 0);
}

uint64_t sub_266FD727C(uint64_t a1)
{
  v2 = sub_266FD7380(&qword_2800F1CE8, &protocol conformance descriptor for GMSSchemaGMSOpenAIErrorCode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD72E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD7380(&qword_2800F1CE8, &protocol conformance descriptor for GMSSchemaGMSOpenAIErrorCode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD7380(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GMSSchemaGMSOpenAIErrorCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GMSSchemaGMSPartnerAccountType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267440430, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267440450, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267440470, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x8000000267440490, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FD764C(uint64_t a1)
{
  v2 = sub_266FD7750(&qword_2800F1CF0, &protocol conformance descriptor for GMSSchemaGMSPartnerAccountType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD76B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD7750(&qword_2800F1CF0, &protocol conformance descriptor for GMSSchemaGMSPartnerAccountType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD7750(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GMSSchemaGMSPartnerAccountType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GMSSchemaGMSPrivateCloudMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v26[1] = a2;
  sub_26738119C();
  v10 = *MEMORY[0x277D3E518];
  v33 = *(v4 + 104);
  v34 = v4 + 104;
  v30 = v10;
  v33(v6, v10, v3);
  v35[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v14 = v12 + 56;
  v29 = v11;
  v13(v9, 0, 1, v11);
  v28 = v14;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x7461526E656B6F74, 0xE900000000000065);
  v15(v35, 0);
  v26[0] = "iri.gms.GMSPrivateCloudMetrics";
  v16 = v33;
  v33(v6, v10, v3);
  v35[0] = 1;
  sub_26738114C();
  v31 = v13;
  v13(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v26[0] | 0x8000000000000000);
  v17(v35, 0);
  v26[0] = "timeToFirstTokenMillis";
  v27 = v3;
  v16(v6, v30, v3);
  v35[0] = 1;
  sub_26738114C();
  v18 = v29;
  v13(v9, 0, 1, v29);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, v26[0] | 0x8000000000000000);
  v19(v35, 0);
  v26[0] = "extendLatencyMillis";
  v30 = *MEMORY[0x277D3E510];
  v20 = v33;
  (v33)(v6);
  v35[0] = 1;
  sub_26738114C();
  v21 = v31;
  v31(v9, 0, 1, v18);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v26[0] | 0x8000000000000000);
  v22(v35, 0);
  v20(v6, v30, v27);
  v35[0] = 1;
  sub_26738114C();
  v21(v9, 0, 1, v18);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267440550);
  v23(v35, 0);
  sub_266ECB294(0, &qword_2800F1CF8, 0x277D57938);
  sub_266ECAF2C(&qword_2800F1D00, &qword_2800F1CF8, 0x277D57938, &protocol conformance descriptor for GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics);
  sub_26738120C();
  v21(v9, 0, 1, v18);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000029, 0x8000000267440570);
  return v24(v35, 0);
}

uint64_t sub_266FD7E14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD7E78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GMSSchemaGMSPrivateCloudMetricsReceived.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x7254746E65696C63, 0xED00006449656361);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F1D10, 0x277D57928);
  sub_266ECAF2C(&qword_2800F1D08, &qword_2800F1D10, 0x277D57928, &protocol conformance descriptor for GMSSchemaGMSPrivateCloudMetrics);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x80000002674405E0);
  v7(v10, 0);
  type metadata accessor for GMSSchemaGMSCaller(0);
  sub_266FD8348();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x656C6C6143736D67, 0xE900000000000072);
  return v8(v10, 0);
}

uint64_t sub_266FD8284(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD82E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FD8348()
{
  result = qword_2800F1BF8;
  if (!qword_2800F1BF8)
  {
    type metadata accessor for GMSSchemaGMSCaller(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1BF8);
  }

  return result;
}

uint64_t static GMSSchemaGMSPrivateCloudSpeculativeDecodingMetrics.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v41 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v35 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v37 = "veDecodingMetrics";
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E500], v2);
  v36 = v9;
  v42[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v38 = *(v11 + 56);
  v12 = v11 + 56;
  v38(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, v37 | 0x8000000000000000);
  v13(v42, 0);
  v35[0] = "ingAcceptanceRate";
  LODWORD(v37) = *MEMORY[0x277D3E538];
  v14 = v41;
  (v9)(v5);
  v42[0] = 1;
  sub_26738114C();
  v40 = v10;
  v15 = v38;
  v38(v8, 0, 1, v10);
  v35[1] = v12;
  v39 = a1;
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v35[0] | 0x8000000000000000);
  v16(v42, 0);
  v35[0] = "draftModelInferenceCallCount";
  v17 = v14;
  v18 = v36;
  v36(v5, v37, v17);
  v42[0] = 1;
  sub_26738114C();
  v15(v8, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, v35[0] | 0x8000000000000000);
  v19(v42, 0);
  v35[0] = "targetModelInferenceCallCount";
  v20 = v37;
  v21 = v41;
  v18(v5, v37, v41);
  v42[0] = 1;
  sub_26738114C();
  v22 = v40;
  v23 = v38;
  v38(v8, 0, 1, v40);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v35[0] | 0x8000000000000000);
  v24(v42, 0);
  v35[0] = "draftOutputTokenCount";
  v25 = v36;
  v36(v5, v20, v21);
  v42[0] = 1;
  sub_26738114C();
  v23(v8, 0, 1, v22);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v35[0] | 0x8000000000000000);
  v26(v42, 0);
  v35[0] = "targetOutputTokenCount";
  LODWORD(v37) = *MEMORY[0x277D3E540];
  v27 = v41;
  v28 = v25;
  (v25)(v5);
  v42[0] = 1;
  sub_26738114C();
  v23(v8, 0, 1, v40);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000025, v35[0] | 0x8000000000000000);
  v29(v42, 0);
  v35[0] = "nferenceLatencyMillis";
  v30 = v37;
  v28(v5, v37, v27);
  v42[0] = 1;
  sub_26738114C();
  v31 = v40;
  v23(v8, 0, 1, v40);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000026, v35[0] | 0x8000000000000000);
  v32(v42, 0);
  v28(v5, v30, v41);
  v42[0] = 1;
  sub_26738114C();
  v38(v8, 0, 1, v31);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0x6574537466617264, 0xEA00000000007370);
  return v33(v42, 0);
}

uint64_t sub_266FD8C08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD8C6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FD8CD0()
{
  result = qword_2800F1D00;
  if (!qword_2800F1D00)
  {
    sub_266FD8D28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1D00);
  }

  return result;
}

unint64_t sub_266FD8D28()
{
  result = qword_2800F1CF8;
  if (!qword_2800F1CF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1CF8);
  }

  return result;
}

uint64_t static GMSSchemaGMSUsecase.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000012, 0x8000000267440790, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x80000002674407B0, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x80000002674407D0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x80000002674407F0, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267440810, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000010, 0x8000000267440830, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_266FD90DC(uint64_t a1)
{
  v2 = sub_266FD91E0(&qword_2800F1D18, &protocol conformance descriptor for GMSSchemaGMSUsecase);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FD9144(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FD91E0(&qword_2800F1D18, &protocol conformance descriptor for GMSSchemaGMSUsecase);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FD91E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GMSSchemaGMSUsecase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GRPSchemaGroupedMessagesClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1D20, 0x277D57948);
  sub_266ECAF2C(&qword_2800F1D28, &qword_2800F1D20, 0x277D57948, &protocol conformance descriptor for GRPSchemaGroupedMessagesGrouping);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x42646570756F7267, 0xE900000000000079);
  v6(v10, 0);
  sub_266ECB294(0, &qword_2800F1D30, 0x277D57960);
  sub_266ECAF2C(&qword_2800F1D38, &qword_2800F1D30, 0x277D57960, &protocol conformance descriptor for GRPSchemaProducerMetadata);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267440890);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800F1D40, 0x277D57958);
  sub_266ECAF2C(&qword_2800F1D48, &qword_2800F1D40, 0x277D57958, &protocol conformance descriptor for GRPSchemaOrderedMessage);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x4D6465726564726FLL, 0xEF73656761737365);
  v8(v10, 0);
  sub_266ECB128(&unk_2878864B0);
  return sub_2673811CC();
}

uint64_t sub_266FD95B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FD9648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FD9714(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD9778(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FD97D8(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F1D50, &qword_2800F1D58, 0x277D57940, &protocol conformance descriptor for GRPSchemaGroupedMessagesClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F1D60, &qword_2800F1D58, 0x277D57940, &protocol conformance descriptor for GRPSchemaGroupedMessagesClientEvent);
  result = sub_266ECAF2C(&qword_2800F1D68, &qword_2800F1D58, 0x277D57940, &protocol conformance descriptor for GRPSchemaGroupedMessagesClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static GRPSchemaGroupedMessagesGrouping.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6564496B636F6C63, 0xEF7265696669746ELL);
  v5(v7, 0);
  sub_266ECB128(&unk_2878864E8);
  return sub_2673811CC();
}

uint64_t sub_266FD9AB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FD9B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FD9C14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FD9C78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FD9CD8(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F1D78, &qword_2800F1D20, 0x277D57948, &protocol conformance descriptor for GRPSchemaGroupedMessagesGrouping);
  a1[2] = sub_266ECAF2C(&qword_2800F1D80, &qword_2800F1D20, 0x277D57948, &protocol conformance descriptor for GRPSchemaGroupedMessagesGrouping);
  result = sub_266ECAF2C(&qword_2800F1D88, &qword_2800F1D20, 0x277D57948, &protocol conformance descriptor for GRPSchemaGroupedMessagesGrouping);
  a1[3] = result;
  return result;
}

uint64_t static GRPSchemaGroupedMessagesServerEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v14 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1D90, 0x277D5A790);
  sub_266ECAF2C(&qword_2800F1D98, &qword_2800F1D90, 0x277D5A790, &protocol conformance descriptor for SISchemaAnyEvent);
  v14[1] = a1;
  sub_26738122C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 56);
  v7(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x746E657645796E61, 0xE900000000000073);
  v8(v16, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v15, 0x746E657645796E61, 0xE900000000000073);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_287886520);
    sub_26738115C();
  }

  (v10)(v15, 0);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800F1DA0, 0x277D5A978);
  sub_266ECAF2C(&qword_2800F1DA8, &qword_2800F1DA0, 0x277D5A978, &protocol conformance descriptor for SISchemaOrderedAnyEvent);
  sub_26738122C();
  v7(v4, 0, 1, v5);
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x8000000267440920);
  v12(v16, 0);
  sub_266ECB128(&unk_287886548);
  return sub_2673811CC();
}

uint64_t sub_266FDA138(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FDA1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FDA29C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FDA300(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FDA360(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F1DB0, &qword_2800F1DB8, 0x277D57950, &protocol conformance descriptor for GRPSchemaGroupedMessagesServerEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F1DC0, &qword_2800F1DB8, 0x277D57950, &protocol conformance descriptor for GRPSchemaGroupedMessagesServerEvent);
  result = sub_266ECAF2C(&qword_2800F1DC8, &qword_2800F1DB8, 0x277D57950, &protocol conformance descriptor for GRPSchemaGroupedMessagesServerEvent);
  a1[3] = result;
  return result;
}

uint64_t static GRPSchemaOrderedMessage.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v25 = a1;
  v26 = sub_26738118C();
  v1 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v24 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v4 + 104))(v6, *MEMORY[0x277D3E510], v3);
  v27[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000019, 0x8000000267440970);
  v12(v27, 0);
  sub_266ECB294(0, &qword_2800F1DD8, 0x277D57968);
  sub_266ECAF2C(&qword_2800F1DE0, &qword_2800F1DD8, 0x277D57968, &protocol conformance descriptor for GRPSchemaSiriEventTypeUnion);
  sub_26738121C();
  v11(v9, 0, 1, v10);
  v13 = v24;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267440990);
  v14(v27, 0);
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
  (*(v1 + 32))(v18 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v21, v13, v26);
  return v15(v27, 0);
}

uint64_t sub_266FDA918(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FDA97C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRPSchemaProducerMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1DE8, 0x277D57970);
  sub_266ECAF2C(&qword_2800F1DF0, &qword_2800F1DE8, 0x277D57970, &protocol conformance descriptor for GRPSchemaTrialExperimentIdentifiers);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7078456C61697274, 0xEF746E656D697265);
  v5(v7, 0);
  sub_266ECB128(&unk_287886580);
  return sub_2673811CC();
}

uint64_t sub_266FDABF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FDAC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FDAD5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FDADC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FDAE20(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F1DF8, &qword_2800F1D30, 0x277D57960, &protocol conformance descriptor for GRPSchemaProducerMetadata);
  a1[2] = sub_266ECAF2C(&qword_2800F1E00, &qword_2800F1D30, 0x277D57960, &protocol conformance descriptor for GRPSchemaProducerMetadata);
  result = sub_266ECAF2C(&qword_2800F1E08, &qword_2800F1D30, 0x277D57960, &protocol conformance descriptor for GRPSchemaProducerMetadata);
  a1[3] = result;
  return result;
}

uint64_t static GRPSchemaSiriEventTypeUnion.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4);
  v84 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v83 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F1E10, 0x277D5A800);
  sub_266ECAF2C(&qword_2800F1E18, &qword_2800F1E10, 0x277D5A800, &protocol conformance descriptor for SISchemaClientEvent);
  sub_26738121C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C43696575, 0xEE00746E65764574);
  v13(v91, 0);
  sub_266ECB294(0, &qword_2800F1E20, 0x277D59AC8);
  sub_266ECAF2C(&qword_2800F1E28, &qword_2800F1E20, 0x277D59AC8, &protocol conformance descriptor for PETSchemaPETUpload);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x616F6C7055746570, 0xEE00746E65764564);
  v14(v91, 0);
  sub_266ECB294(0, &qword_2800F1E30, 0x277D5A9A8);
  sub_266ECAF2C(&qword_2800F1E38, &qword_2800F1E30, 0x277D5A9A8, &protocol conformance descriptor for SISchemaProvisionalEvent);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x8000000267440A10);
  v15(v91, 0);
  sub_266ECB294(0, &qword_2800F1E40, 0x277D5B048);
  sub_266ECAF2C(&qword_2800F1E48, &qword_2800F1E40, 0x277D5B048, &protocol conformance descriptor for SUTSchemaTestExecutionEvent);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267440A30);
  v16(v91, 0);
  sub_266ECB294(0, &qword_2800F1E50, 0x277D5A9D0);
  sub_266ECAF2C(&qword_2800F1E58, &qword_2800F1E50, 0x277D5A9D0, &protocol conformance descriptor for SISchemaRequestLink);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x8000000267440A50);
  v17(v91, 0);
  sub_266ECB294(0, &qword_2800F0FF8, 0x277D57500);
  sub_266ECAF2C(&qword_2800F1010, &qword_2800F0FF8, 0x277D57500, &protocol conformance descriptor for FLOWSchemaFLOWClientEvent);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v18 = v11;
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x65696C43776F6C66, 0xEF746E657645746ELL);
  v19(v91, 0);
  sub_266ECB294(0, &qword_2800EF8B8, 0x277D56C30);
  sub_266ECAF2C(&qword_2800EF8D0, &qword_2800EF8B8, 0x277D56C30, &protocol conformance descriptor for CAMSchemaCAMClientEvent);
  sub_26738121C();
  v20 = v9;
  v21 = v12;
  v18(v8, 0, 1, v9);
  v22 = v18;
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C436D6163, 0xEE00746E65764574);
  v23(v91, 0);
  sub_266ECB294(0, &qword_2800F1E60, 0x277D5B2B8);
  sub_266ECAF2C(&qword_2800F1E68, &qword_2800F1E60, 0x277D5B2B8, &protocol conformance descriptor for USPSchemaUSPClientEvent);
  v24 = a1;
  sub_26738121C();
  v18(v8, 0, 1, v20);
  v25 = a2;
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C43707375, 0xEE00746E65764574);
  v26(v91, 0);
  sub_266ECB294(0, &qword_2800F03D8, 0x277D57038);
  sub_266ECAF2C(&qword_2800F03F0, &qword_2800F03D8, 0x277D57038, &protocol conformance descriptor for DIMSchemaDIMClientEvent);
  v27 = v24;
  sub_26738121C();
  v28 = v20;
  v18(v8, 0, 1, v20);
  v29 = v25;
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C436D6964, 0xEE00746E65764574);
  v30(v91, 0);
  sub_266ECB294(0, &qword_2800F1E70, 0x277D590F0);
  sub_266ECAF2C(&qword_2800F1E78, &qword_2800F1E70, 0x277D590F0, &protocol conformance descriptor for NLXSchemaNLXClientEvent);
  v31 = v27;
  sub_26738121C();
  v22(v8, 0, 1, v20);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C43786C6ELL, 0xEE00746E65764574);
  v32(v91, 0);
  sub_266ECB294(0, &qword_2800F1E80, 0x277D59610);
  sub_266ECAF2C(&qword_2800F1E88, &qword_2800F1E80, 0x277D59610, &protocol conformance descriptor for ORCHSchemaORCHClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v28);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0x65696C436863726FLL, 0xEF746E657645746ELL);
  v33(v91, 0);
  sub_266ECB294(0, &qword_2800EF328, 0x277D56858);
  sub_266ECAF2C(&qword_2800EF340, &qword_2800EF328, 0x277D56858, &protocol conformance descriptor for ASRSchemaASRClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v28);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C43727361, 0xEE00746E65764574);
  v34(v91, 0);
  sub_266ECB294(0, &qword_2800F1E90, 0x277D58180);
  sub_266ECAF2C(&qword_2800F1E98, &qword_2800F1E90, 0x277D58180, &protocol conformance descriptor for IHSchemaIHClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v28);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E65696C436869, 0xED0000746E657645);
  v35(v91, 0);
  sub_266ECB294(0, &qword_2800F1EA0, 0x277D587F0);
  sub_266ECAF2C(&qword_2800F1EA8, &qword_2800F1EA0, 0x277D587F0, &protocol conformance descriptor for MHSchemaMHClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v28);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E65696C43686DLL, 0xED0000746E657645);
  v36(v91, 0);
  sub_266ECB294(0, &qword_2800F1EB0, 0x277D5B140);
  sub_266ECAF2C(&qword_2800F1EB8, &qword_2800F1EB0, 0x277D5B140, &protocol conformance descriptor for TTSSchemaTTSClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v28);
  v37 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C43737474, 0xEE00746E65764574);
  v37(v91, 0);
  sub_266ECB294(0, &qword_2800EFC78, 0x277D56D70);
  sub_266ECAF2C(&qword_2800EFC90, &qword_2800EFC78, 0x277D56D70, &protocol conformance descriptor for CLPInstSchemaCLPClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v28);
  v38 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C43706C63, 0xEE00746E65764574);
  v38(v91, 0);
  sub_266ECB294(0, &qword_2800F1EC0, 0x277D5A4D0);
  sub_266ECAF2C(&qword_2800F1EC8, &qword_2800F1EC0, 0x277D5A4D0, &protocol conformance descriptor for RRSchemaRRClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v28);
  v39 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E65696C437272, 0xED0000746E657645);
  v39(v91, 0);
  sub_266ECB294(0, &qword_2800F0010, 0x277D56E70);
  sub_266ECAF2C(&qword_2800F0028, &qword_2800F0010, 0x277D56E70, &protocol conformance descriptor for CNVSchemaCNVClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v28);
  v40 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C43766E63, 0xEE00746E65764574);
  v40(v91, 0);
  sub_266ECB294(0, &qword_2800EEE60, 0x277D56748);
  sub_266ECAF2C(&qword_2800EEE78, &qword_2800EEE60, 0x277D56748, &protocol conformance descriptor for ANCSchemaANCClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v28);
  v41 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C43636E61, 0xEE00746E65764574);
  v41(v91, 0);
  sub_266ECB294(0, &qword_2800F1ED0, 0x277D579F0);
  sub_266ECAF2C(&qword_2800F1ED8, &qword_2800F1ED0, 0x277D579F0, &protocol conformance descriptor for HALSchemaHALClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v28);
  v42 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C436C6168, 0xEE00746E65764574);
  v42(v91, 0);
  sub_266ECB294(0, &qword_2800F1EE0, 0x277D58B78);
  sub_266ECAF2C(&qword_2800F1EE8, &qword_2800F1EE0, 0x277D58B78, &protocol conformance descriptor for NETSchemaNETClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v28);
  v43 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C4374656ELL, 0xEE00746E65764574);
  v43(v91, 0);
  sub_266ECB294(0, &qword_2800F1EF0, 0x277D5A5E0);
  sub_266ECAF2C(&qword_2800F1EF8, &qword_2800F1EF0, 0x277D5A5E0, &protocol conformance descriptor for SADSchemaSADClientEvent);
  sub_26738121C();
  v89 = v28;
  v22(v8, 0, 1, v28);
  v44 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C43646173, 0xEE00746E65764574);
  v44(v91, 0);
  sub_266ECB294(0, &qword_2800F06D8, 0x277D571A8);
  sub_266ECAF2C(&qword_2800F06F0, &qword_2800F06D8, 0x277D571A8, &protocol conformance descriptor for DODMLSchemaDODMLClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v28);
  v90 = v29;
  v45 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x8000000267440A70);
  v45(v91, 0);
  sub_266ECB294(0, &qword_2800F1F00, 0x277D59C50);
  sub_266ECAF2C(&qword_2800F1F08, &qword_2800F1F00, 0x277D59C50, &protocol conformance descriptor for PLUSSchemaPLUSClientEvent);
  sub_26738121C();
  v46 = v89;
  v87 = v21;
  v22(v8, 0, 1, v89);
  v47 = sub_2673811AC();
  sub_266EC637C(v8, 0x65696C4373756C70, 0xEF746E657645746ELL);
  v47(v91, 0);
  sub_266ECB294(0, &qword_2800F0B20, 0x277D57240);
  sub_266ECAF2C(&qword_2800F0B38, &qword_2800F0B20, 0x277D57240, &protocol conformance descriptor for EXPSearchSchemaEXPSearchClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v46);
  v48 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267440A90);
  v48(v91, 0);
  sub_266ECB294(0, &qword_2800F0BE0, 0x277D57290);
  sub_266ECAF2C(&qword_2800F0BF8, &qword_2800F0BE0, 0x277D57290, &protocol conformance descriptor for EXPSiriSchemaEXPSiriClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v46);
  v49 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267440AB0);
  v49(v91, 0);
  sub_266ECB294(0, &qword_2800F1F10, 0x277D5AD70);
  sub_266ECAF2C(&qword_2800F1F18, &qword_2800F1F10, 0x277D5AD70, &protocol conformance descriptor for SRSTSchemaSRSTClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v46);
  v50 = sub_2673811AC();
  sub_266EC637C(v8, 0x65696C4374737273, 0xEF746E657645746ELL);
  v50(v91, 0);
  sub_266ECB294(0, &qword_2800F1F20, 0x277D59F68);
  sub_266ECAF2C(&qword_2800F1F28, &qword_2800F1F20, 0x277D59F68, &protocol conformance descriptor for POMMESSchemaPOMMESClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v46);
  v51 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267440AD0);
  v51(v91, 0);
  sub_266ECB294(0, &qword_2800EF9C0, 0x277D56CA0);
  sub_266ECAF2C(&qword_2800EF9D8, &qword_2800EF9C0, 0x277D56CA0, &protocol conformance descriptor for CDASchemaCDAClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v46);
  v52 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C43616463, 0xEE00746E65764574);
  v52(v91, 0);
  sub_266ECB294(0, &qword_2800F1F30, 0x277D58B50);
  sub_266ECAF2C(&qword_2800F1F38, &qword_2800F1F30, 0x277D58B50, &protocol conformance descriptor for MWTSchemaMWTClientEvent);
  sub_26738121C();
  v22(v8, 0, 1, v46);
  v88 = v22;
  v53 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C4374776DLL, 0xEE00746E65764574);
  v53(v91, 0);
  sub_266ECB294(0, &qword_2800F1F40, 0x277D57AD8);
  sub_266ECAF2C(&qword_2800F1F48, &qword_2800F1F40, 0x277D57AD8, &protocol conformance descriptor for HOMESchemaHOMEClientEvent);
  v83 = v31;
  sub_26738121C();
  v54 = v89;
  v22(v8, 0, 1, v89);
  v55 = sub_2673811AC();
  sub_266EC637C(v8, 0x65696C43656D6F68, 0xEF746E657645746ELL);
  v55(v91, 0);
  sub_266ECB294(0, &qword_2800F1F50, 0x277D5A8C0);
  sub_266ECAF2C(&qword_2800F1F58, &qword_2800F1F50, 0x277D5A8C0, &protocol conformance descriptor for SISchemaGradingOptInStateChange);
  sub_26738121C();
  v56 = v88;
  v88(v8, 0, 1, v54);
  v57 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267440AF0);
  v57(v91, 0);
  sub_266ECB294(0, &qword_2800F1F60, 0x277D59568);
  sub_266ECAF2C(&qword_2800F1F68, &qword_2800F1F60, 0x277D59568, &protocol conformance descriptor for OPTINSchemaOPTINStatePropagationEvent);
  sub_26738121C();
  v56(v8, 0, 1, v54);
  v58 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267440B10);
  v58(v91, 0);
  sub_266ECB294(0, &qword_2800F1F70, 0x277D5A530);
  sub_266ECAF2C(&qword_2800F1F78, &qword_2800F1F70, 0x277D5A530, &protocol conformance descriptor for RSSSchemaRSSClientEvent);
  sub_26738121C();
  v56(v8, 0, 1, v54);
  v59 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C43737372, 0xEE00746E65764574);
  v59(v91, 0);
  sub_266ECB294(0, &qword_2800F1F80, 0x277D5AF30);
  sub_266ECAF2C(&qword_2800F1F88, &qword_2800F1F80, 0x277D5AF30, &protocol conformance descriptor for SUGSchemaSUGClientEvent);
  sub_26738121C();
  v60 = v88;
  v88(v8, 0, 1, v54);
  v61 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C43677573, 0xEE00746E65764574);
  v61(v91, 0);
  sub_266ECB294(0, &qword_2800F0EA0, 0x277D574A8);
  sub_266ECAF2C(&qword_2800F0EB8, &qword_2800F0EA0, 0x277D574A8, &protocol conformance descriptor for FLOWLINKSchemaFLOWLINKClientEvent);
  sub_26738121C();
  v60(v8, 0, 1, v54);
  v62 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267440B30);
  v62(v91, 0);
  sub_266ECB294(0, &qword_2800F1F90, 0x277D5A328);
  sub_266ECAF2C(&qword_2800F1F98, &qword_2800F1F90, 0x277D5A328, &protocol conformance descriptor for RFSchemaRFClientEvent);
  sub_26738121C();
  v63 = v89;
  v60(v8, 0, 1, v89);
  v64 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E65696C436672, 0xED0000746E657645);
  v64(v91, 0);
  sub_266ECB294(0, &qword_2800F1FA0, 0x277D5A660);
  sub_266ECAF2C(&qword_2800F1FA8, &qword_2800F1FA0, 0x277D5A660, &protocol conformance descriptor for SICSchemaSICClientEvent);
  sub_26738121C();
  v60(v8, 0, 1, v63);
  v65 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C43636973, 0xEE00746E65764574);
  v65(v91, 0);
  sub_266ECB294(0, &qword_2800F1FB0, 0x277D581F0);
  sub_266ECAF2C(&qword_2800F1FB8, &qword_2800F1FB0, 0x277D581F0, &protocol conformance descriptor for INFERENCESchemaINFERENCEClientEvent);
  sub_26738121C();
  v60(v8, 0, 1, v63);
  v66 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267440B50);
  v66(v91, 0);
  sub_266ECB294(0, &qword_2800EF798, 0x277D56B50);
  sub_266ECAF2C(&qword_2800EF7B0, &qword_2800EF798, 0x277D56B50, &protocol conformance descriptor for CAARSchemaCAARClientEvent);
  sub_26738121C();
  v60(v8, 0, 1, v63);
  v67 = sub_2673811AC();
  sub_266EC637C(v8, 0x65696C4372616163, 0xEF746E657645746ELL);
  v67(v91, 0);
  sub_266ECB294(0, &qword_2800F1FC0, 0x277D5A320);
  sub_266ECAF2C(&qword_2800F1FC8, &qword_2800F1FC0, 0x277D5A320, &protocol conformance descriptor for RFGSchemaRFGClientEvent);
  sub_26738121C();
  v60(v8, 0, 1, v63);
  v68 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E65696C43676672, 0xEE00746E65764574);
  v68(v91, 0);
  sub_266ECB294(0, &qword_2800F1FD0, 0x277D5A630);
  sub_266ECAF2C(&qword_2800F1FD8, &qword_2800F1FD0, 0x277D5A630, &protocol conformance descriptor for SCSchemaSCClientEvent);
  sub_26738121C();
  v60(v8, 0, 1, v63);
  v69 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E65696C436373, 0xED0000746E657645);
  v69(v91, 0);
  sub_266ECB294(0, &qword_2800F1FE0, 0x277D5A6A0);
  sub_266ECAF2C(&qword_2800F1FE8, &qword_2800F1FE0, 0x277D5A6A0, &protocol conformance descriptor for SIRISETUPSchemaSIRISETUPClientEvent);
  sub_26738121C();
  v60(v8, 0, 1, v63);
  v70 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x8000000267440B70);
  v70(v91, 0);
  sub_266ECB294(0, &qword_2800F1FF0, 0x277D59558);
  sub_266ECAF2C(&qword_2800F1FF8, &qword_2800F1FF0, 0x277D59558, &protocol conformance descriptor for OPTINSchemaOPTINClientEvent);
  sub_26738121C();
  v60(v8, 0, 1, v63);
  v71 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x8000000267440B90);
  v71(v91, 0);
  sub_266ECB294(0, &qword_2800F2000, 0x277D58540);
  sub_266ECAF2C(&qword_2800F2008, &qword_2800F2000, 0x277D58540, &protocol conformance descriptor for LRSchemaLRClientEvent);
  sub_26738121C();
  v60(v8, 0, 1, v63);
  v72 = sub_2673811AC();
  sub_266EC637C(v8, 0x746E65696C43726CLL, 0xED0000746E657645);
  v72(v91, 0);
  sub_266ECB294(0, &qword_2800F2010, 0x277D57AF8);
  sub_266ECAF2C(&qword_2800F2018, &qword_2800F2010, 0x277D57AF8, &protocol conformance descriptor for HomeKitSchemaHKClientEvent);
  sub_26738121C();
  v73 = v84;
  v60(v8, 0, 1, v63);
  v74 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x8000000267440BB0);
  v74(v91, 0);
  sub_26738117C();
  v75 = sub_2673811BC();
  v77 = v76;
  v78 = *v76;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v77 = v78;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v78 = sub_266ECAD54(0, v78[2] + 1, 1, v78);
    *v77 = v78;
  }

  v81 = v78[2];
  v80 = v78[3];
  if (v81 >= v80 >> 1)
  {
    v78 = sub_266ECAD54((v80 > 1), v81 + 1, 1, v78);
    *v77 = v78;
  }

  v78[2] = v81 + 1;
  (*(v85 + 32))(v78 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v81, v73, v86);
  v75(v91, 0);
  sub_266ECB128(&unk_2878865B8);
  return sub_2673811CC();
}

uint64_t sub_266FDDA10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FDDA74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRPSchemaTrialExperimentIdentifiers.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v15 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v16 = *MEMORY[0x277D3E530];
  v17 = *(v1 + 104);
  v15 = v0;
  v17(v3);
  v19[0] = 1;
  sub_26738114C();
  v18 = sub_26738116C();
  v7 = *(*(v18 - 8) + 56);
  v7(v6, 0, 1, v18);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x656D697265707865, 0xEC0000006449746ELL);
  v8(v19, 0);
  v9 = v16;
  v10 = v0;
  v11 = v17;
  (v17)(v3, v16, v10);
  v19[0] = 1;
  sub_26738114C();
  v7(v6, 0, 1, v18);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E656D7461657274, 0xEB00000000644974);
  v12(v19, 0);
  (v11)(v3, v9, v15);
  v19[0] = 1;
  sub_26738114C();
  v7(v6, 0, 1, v18);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x656D796F6C706564, 0xEC0000006449746ELL);
  return v13(v19, 0);
}

uint64_t sub_266FDDF0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FDDF70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FDDFD4()
{
  result = qword_2800F1DF0;
  if (!qword_2800F1DF0)
  {
    sub_266FDE02C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F1DF0);
  }

  return result;
}

unint64_t sub_266FDE02C()
{
  result = qword_2800F1DE8;
  if (!qword_2800F1DE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F1DE8);
  }

  return result;
}

uint64_t static GRRSchemaGRRClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2020, 0x277D57980);
  sub_266ECAF2C(&qword_2800F2028, &qword_2800F2020, 0x277D57980, &protocol conformance descriptor for GRRSchemaGRRClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F2030, 0x277D57998);
  sub_266ECAF2C(&qword_2800F2038, &qword_2800F2030, 0x277D57998, &protocol conformance descriptor for GRRSchemaGRRFeatureExtractionContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x8000000267440C40);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F2040, 0x277D579B8);
  sub_266ECAF2C(&qword_2800F2048, &qword_2800F2040, 0x277D579B8, &protocol conformance descriptor for GRRSchemaGRRHypothesisRankingContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x8000000267440C60);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F2050, 0x277D579E0);
  sub_266ECAF2C(&qword_2800F2058, &qword_2800F2050, 0x277D579E0, &protocol conformance descriptor for GRRSchemaGRRSystemErrorOccurred);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x8000000267440C80);
  v12(v25, 0);
  sub_26738117C();
  v13 = sub_2673811BC();
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_266ECAD54(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_266ECAD54((v18 > 1), v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  (*(v23 + 32))(v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, v11, v24);
  v13(v25, 0);
  sub_266ECB128(&unk_2878865E0);
  return sub_2673811CC();
}

uint64_t sub_266FDE654(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FDE6EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FDE7B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FDE81C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FDE87C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F2060, &qword_2800F2068, 0x277D57978, &protocol conformance descriptor for GRRSchemaGRRClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F2070, &qword_2800F2068, 0x277D57978, &protocol conformance descriptor for GRRSchemaGRRClientEvent);
  result = sub_266ECAF2C(&qword_2800F2078, &qword_2800F2068, 0x277D57978, &protocol conformance descriptor for GRRSchemaGRRClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static GRRSchemaGRRClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v4, 0x6449727267, 0xE500000000000000);
  v8(v19, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v18, 0x6449727267, 0xE500000000000000);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_287886610);
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

uint64_t sub_266FDED58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FDEDBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRRSchemaGRRErrorCode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x8000000267440D00, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267440D20, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267440D50, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266FDF074(uint64_t a1)
{
  v2 = sub_266FDF178(&qword_2800F2090, &protocol conformance descriptor for GRRSchemaGRRErrorCode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FDF0DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FDF178(&qword_2800F2090, &protocol conformance descriptor for GRRSchemaGRRErrorCode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FDF178(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GRRSchemaGRRErrorCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GRRSchemaGRRFeature.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v175 = a1;
  v3 = sub_26738118C();
  v177 = *(v3 - 8);
  v178 = v3;
  MEMORY[0x28223BE20](v3);
  v176 = &v169 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_26738113C();
  v182 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v6 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v169 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = sub_266ECB294(0, &qword_2800F2098, 0x277D579D8);
  v11 = sub_266ECAF2C(&qword_2800F20A0, &qword_2800F2098, 0x277D579D8, &protocol conformance descriptor for GRRSchemaGRRStringList);
  v173 = v10;
  v174 = v11;
  sub_26738121C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v15 = v13 + 56;
  v187 = v12;
  v14(v9, 0, 1, v12);
  v185 = v14;
  v186 = v15;
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x8000000267440DA0);
  v16(v190, 0);
  LODWORD(v172) = *MEMORY[0x277D3E538];
  v18 = v182 + 104;
  v17 = *(v182 + 104);
  v181 = v6;
  v17(v6);
  v183 = v17;
  v190[0] = 0;
  sub_26738114C();
  v14(v9, 0, 1, v12);
  v184 = a2;
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0x6B6E6152727361, 0xE700000000000000);
  v19(v190, 0);
  v188 = *MEMORY[0x277D3E4E8];
  v20 = v181;
  v17(v181);
  v182 = v18;
  v190[0] = 0;
  sub_26738114C();
  v21 = v187;
  v22 = v185;
  v185(v9, 0, 1, v187);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001FLL, 0x8000000267440DC0);
  v23(v190, 0);
  v179 = "canResolveContactByRelationship";
  v180 = *MEMORY[0x277D3E530];
  v24 = v189;
  v25 = v183;
  v183(v20);
  v190[0] = 0;
  sub_26738114C();
  v22(v9, 0, 1, v21);
  v26 = v22;
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v179 | 0x8000000000000000);
  v27(v190, 0);
  v179 = "configuredSiriLanguage";
  (v25)(v20, v188, v24);
  v190[0] = 0;
  sub_26738114C();
  v28 = v187;
  v26(v9, 0, 1, v187);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000020, v179 | 0x8000000000000000);
  v29(v190, 0);
  v179 = "tedAddressDetail";
  v30 = v189;
  (v25)(v20, *MEMORY[0x277D3E518], v189);
  v190[0] = 0;
  sub_26738114C();
  v31 = v28;
  v32 = v185;
  v185(v9, 0, 1, v31);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v179 | 0x8000000000000000);
  v33(v190, 0);
  v179 = "contactMatchConfidence";
  (v25)(v20, v188, v30);
  v190[0] = 0;
  sub_26738114C();
  v32(v9, 0, 1, v187);
  v34 = v32;
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v179 | 0x8000000000000000);
  v35(v190, 0);
  v36 = v181;
  (v25)(v181, v180, v30);
  v190[0] = 0;
  v37 = v36;
  sub_26738114C();
  v38 = v187;
  v34(v9, 0, 1, v187);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0x69724F7475706E69, 0xEB000000006E6967);
  v39(v190, 0);
  v179 = "deviceIsPlayingAudio";
  v40 = v37;
  v41 = v188;
  (v25)(v40, v188, v30);
  v190[0] = 0;
  sub_26738114C();
  v42 = v38;
  v43 = v185;
  v185(v9, 0, 1, v38);
  v44 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v179 | 0x8000000000000000);
  v44(v190, 0);
  v179 = "isActiveAlarmPresent";
  v45 = v181;
  v46 = v189;
  v47 = v183;
  (v183)(v181, v41, v189);
  v190[0] = 0;
  sub_26738114C();
  v43(v9, 0, 1, v42);
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ALL, v179 | 0x8000000000000000);
  v48(v190, 0);
  v171 = "isActiveAppointmentPresent";
  v49 = v188;
  (v47)(v45, v188, v46);
  v190[0] = 0;
  sub_26738114C();
  v50 = v187;
  v51 = v185;
  v185(v9, 0, 1, v187);
  v52 = sub_2673811AC();
  v179 = 0xD000000000000011;
  sub_266EC637C(v9, 0xD000000000000011, v171 | 0x8000000000000000);
  v52(v190, 0);
  (v183)(v45, v49, v189);
  v190[0] = 0;
  sub_26738114C();
  v53 = v50;
  v51(v9, 0, 1, v50);
  v54 = sub_2673811AC();
  sub_266EC637C(v9, 0x506F696475417369, 0xEE00676E6979616CLL);
  v54(v190, 0);
  v55 = v188;
  v56 = v189;
  v57 = v183;
  (v183)(v45, v188, v189);
  v190[0] = 0;
  sub_26738114C();
  v185(v9, 0, 1, v53);
  v58 = sub_2673811AC();
  sub_266EC637C(v9, 0x736E497070417369, 0xEE0064656C6C6174);
  v58(v190, 0);
  v171 = "isAnnounceEnabled";
  v57(v45, v55, v56);
  v190[0] = 0;
  sub_26738114C();
  v59 = v187;
  v60 = v185;
  v185(v9, 0, 1, v187);
  v61 = sub_2673811AC();
  sub_266EC637C(v9, v179, v171 | 0x8000000000000000);
  v61(v190, 0);
  v62 = v189;
  v57(v45, v188, v189);
  v190[0] = 0;
  sub_26738114C();
  v63 = v60;
  v60(v9, 0, 1, v59);
  v64 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E75527070417369, 0xEC000000676E696ELL);
  v64(v190, 0);
  v65 = v188;
  (v183)(v45, v188, v62);
  v190[0] = 0;
  sub_26738114C();
  v63(v9, 0, 1, v187);
  v66 = v63;
  v67 = sub_2673811AC();
  sub_266EC637C(v9, 0x7473697472417369, 0xEF746E6573657250);
  v67(v190, 0);
  v179 = "isAppMatchPresent";
  v68 = v183;
  (v183)(v45, v65, v62);
  v190[0] = 0;
  sub_26738114C();
  v69 = v187;
  v66(v9, 0, 1, v187);
  v70 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, v179 | 0x8000000000000000);
  v70(v190, 0);
  v179 = "isContactNameResolved";
  (v68)(v45, v188, v62);
  v190[0] = 0;
  sub_26738114C();
  v71 = v185;
  v185(v9, 0, 1, v69);
  v72 = sub_2673811AC();
  v171 = 0xD000000000000010;
  sub_266EC637C(v9, 0xD000000000000010, v179 | 0x8000000000000000);
  v72(v190, 0);
  v73 = v188;
  v74 = v189;
  (v68)(v45, v188, v189);
  v190[0] = 0;
  sub_26738114C();
  v75 = v187;
  v71(v9, 0, 1, v187);
  v76 = sub_2673811AC();
  sub_266EC637C(v9, 0x776F6C6C6F467369, 0xEA00000000007055);
  v76(v190, 0);
  v179 = "isEmailAvailable";
  v77 = v183;
  (v183)(v45, v73, v74);
  v190[0] = 0;
  sub_26738114C();
  v78 = v75;
  v79 = v75;
  v80 = v185;
  v185(v9, 0, 1, v79);
  v81 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v179 | 0x8000000000000000);
  v81(v190, 0);
  v170 = "isMediaItemEntityPresent";
  v82 = v189;
  v77(v45, v73, v189);
  v190[0] = 0;
  sub_26738114C();
  v80(v9, 0, 1, v78);
  v83 = sub_2673811AC();
  v179 = 0xD000000000000013;
  sub_266EC637C(v9, 0xD000000000000013, v170 | 0x8000000000000000);
  v83(v190, 0);
  v170 = "isMessagingPossible";
  v84 = v188;
  v85 = v183;
  (v183)(v45, v188, v82);
  v190[0] = 0;
  sub_26738114C();
  v86 = v185;
  v185(v9, 0, 1, v78);
  v87 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000027, v170 | 0x8000000000000000);
  v87(v190, 0);
  v170 = "bleForSendMessageIntent";
  v88 = v189;
  v85(v45, v84, v189);
  v190[0] = 0;
  sub_26738114C();
  v89 = v187;
  v86(v9, 0, 1, v187);
  v90 = sub_2673811AC();
  sub_266EC637C(v9, v179, v170 | 0x8000000000000000);
  v90(v190, 0);
  v170 = "isPhoneCallPossible";
  v91 = v181;
  v85(v181, v84, v88);
  v190[0] = 0;
  sub_26738114C();
  v92 = v185;
  v185(v9, 0, 1, v89);
  v93 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000025, v170 | 0x8000000000000000);
  v93(v190, 0);
  v170 = "bleForPhoneCallIntent";
  v94 = v188;
  v85(v91, v188, v88);
  v190[0] = 0;
  sub_26738114C();
  v92(v9, 0, 1, v89);
  v95 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v170 | 0x8000000000000000);
  v95(v190, 0);
  v170 = "isPhoneNumberAvailable";
  v96 = v189;
  v97 = v183;
  (v183)(v91, v94, v189);
  v190[0] = 0;
  sub_26738114C();
  v98 = v89;
  v99 = v185;
  v185(v9, 0, 1, v98);
  v100 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v170 | 0x8000000000000000);
  v100(v190, 0);
  v170 = "isPhoneNumberContactResolvable";
  v101 = v188;
  v102 = v96;
  v103 = v97;
  v97(v91, v188, v102);
  v190[0] = 0;
  sub_26738114C();
  v104 = v187;
  v99(v9, 0, 1, v187);
  v105 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001ELL, v170 | 0x8000000000000000);
  v105(v190, 0);
  v103(v91, v101, v189);
  v190[0] = 0;
  sub_26738114C();
  v106 = v185;
  v185(v9, 0, 1, v104);
  v107 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E69747465537369, 0xEB000000006E4F67);
  v107(v190, 0);
  v108 = v189;
  (v183)(v91, v101, v189);
  v190[0] = 0;
  sub_26738114C();
  v106(v9, 0, 1, v104);
  v109 = sub_2673811AC();
  sub_266EC637C(v9, 0x4172656D69547369, 0xED00006576697463);
  v109(v190, 0);
  v110 = v101;
  v111 = v183;
  (v183)(v91, v110, v108);
  v190[0] = 0;
  sub_26738114C();
  v112 = v104;
  v113 = v185;
  v185(v9, 0, 1, v112);
  v114 = sub_2673811AC();
  sub_266EC637C(v9, 0x506F656469567369, 0xEE00676E6979616CLL);
  v114(v190, 0);
  v170 = "isPreviousTurnSendEmptyMessage";
  (v111)(v91, v172, v108);
  v190[0] = 0;
  sub_26738114C();
  v115 = v187;
  v113(v9, 0, 1, v187);
  v116 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v170 | 0x8000000000000000);
  v116(v190, 0);
  v170 = "numberOfContactsResolved";
  v117 = v183;
  (v183)(v91, v180, v108);
  v190[0] = 0;
  sub_26738114C();
  v113(v9, 0, 1, v115);
  v118 = sub_2673811AC();
  v172 = 0xD000000000000012;
  sub_266EC637C(v9, 0xD000000000000012, v170 | 0x8000000000000000);
  v118(v190, 0);
  v170 = "previousFlowDomain";
  v180 = *MEMORY[0x277D3E540];
  v119 = v91;
  v117(v91);
  v190[0] = 0;
  sub_26738114C();
  v120 = v115;
  v113(v9, 0, 1, v115);
  v121 = sub_2673811AC();
  sub_266EC637C(v9, v172, v170 | 0x8000000000000000);
  v121(v190, 0);
  v172 = "requestTimeBeginMs";
  v122 = v119;
  v123 = v188;
  v124 = v189;
  v125 = v183;
  (v183)(v122, v188, v189);
  v190[0] = 0;
  sub_26738114C();
  v113(v9, 0, 1, v120);
  v126 = sub_2673811AC();
  sub_266EC637C(v9, v171, v172 | 0x8000000000000000);
  v126(v190, 0);
  v172 = "sharingAppActive";
  v127 = v123;
  v128 = v124;
  v125(v181, v123, v124);
  v129 = v125;
  v190[0] = 0;
  sub_26738114C();
  v130 = v187;
  v131 = v185;
  v185(v9, 0, 1, v187);
  v132 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v172 | 0x8000000000000000);
  v132(v190, 0);
  v172 = "sharingEntityPresent";
  v133 = v181;
  v129(v181, v127, v128);
  v190[0] = 0;
  sub_26738114C();
  v131(v9, 0, 1, v130);
  v134 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v172 | 0x8000000000000000);
  v134(v190, 0);
  v172 = "sharingRecipientPresent";
  v135 = v188;
  v136 = v189;
  v137 = v183;
  (v183)(v133, v188, v189);
  v190[0] = 0;
  sub_26738114C();
  v131(v9, 0, 1, v187);
  v138 = sub_2673811AC();
  sub_266EC637C(v9, v179, v172 | 0x8000000000000000);
  v138(v190, 0);
  v179 = "smsAttachmentExists";
  v139 = v181;
  v137(v181, v135, v136);
  v140 = v137;
  v190[0] = 0;
  v141 = v139;
  sub_26738114C();
  v142 = v187;
  v143 = v185;
  v185(v9, 0, 1, v187);
  v144 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v179 | 0x8000000000000000);
  v144(v190, 0);
  v179 = "smsAttributeRecipientExists";
  v145 = v141;
  v146 = v188;
  v147 = v189;
  v140(v145, v188, v189);
  v190[0] = 0;
  sub_26738114C();
  v143(v9, 0, 1, v142);
  v148 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v179 | 0x8000000000000000);
  v148(v190, 0);
  v179 = "smsAttributeSenderExists";
  v149 = v181;
  v140(v181, v146, v147);
  v190[0] = 0;
  sub_26738114C();
  v150 = v187;
  v143(v9, 0, 1, v187);
  v151 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v179 | 0x8000000000000000);
  v151(v190, 0);
  v179 = "smsPhoneNumberMentioned";
  v152 = v189;
  v153 = v183;
  (v183)(v149, v188, v189);
  v190[0] = 0;
  sub_26738114C();
  v154 = v150;
  v143(v9, 0, 1, v150);
  v155 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, v179 | 0x8000000000000000);
  v155(v190, 0);
  (v153)(v149, v180, v152);
  v190[0] = 0;
  sub_26738114C();
  v156 = v185;
  v185(v9, 0, 1, v154);
  v157 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x80000002674411B0);
  v157(v190, 0);
  sub_26738121C();
  v156(v9, 0, 1, v154);
  v158 = sub_2673811AC();
  v159 = v9;
  v160 = v176;
  sub_266EC637C(v159, 0x6369706F54706F74, 0xE900000000000073);
  v158(v190, 0);
  sub_26738117C();
  v161 = sub_2673811BC();
  v163 = v162;
  v164 = *v162;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v163 = v164;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v164 = sub_266ECAD54(0, v164[2] + 1, 1, v164);
    *v163 = v164;
  }

  v167 = v164[2];
  v166 = v164[3];
  if (v167 >= v166 >> 1)
  {
    v164 = sub_266ECAD54((v166 > 1), v167 + 1, 1, v164);
    *v163 = v164;
  }

  v164[2] = v167 + 1;
  (*(v177 + 32))(v164 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v167, v160, v178);
  return v161(v190, 0);
}

uint64_t sub_266FE1744(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE17A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRRSchemaGRRFeatureExtracted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F20B8, 0x277D579D0);
  sub_266ECAF2C(&qword_2800F20C0, &qword_2800F20B8, 0x277D579D0, &protocol conformance descriptor for GRRSchemaGRRSource);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x656372756F73, 0xE600000000000000);
  v9(v15, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v14);
  v15[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x4E65727574616566, 0xEC00000073656D61);
  v10(v15, 0);
  sub_266ECB294(0, &qword_2800F20B0, 0x277D57988);
  sub_266ECAF2C(&qword_2800F20A8, &qword_2800F20B0, 0x277D57988, &protocol conformance descriptor for GRRSchemaGRRFeature);
  sub_26738122C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x7365727574616566, 0xE800000000000000);
  return v11(v15, 0);
}

uint64_t sub_266FE1C50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE1CB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRRSchemaGRRFeatureExtractionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x49747865746E6F63, 0xE900000000000064);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F20D8, 0x277D579A0);
  sub_266ECAF2C(&qword_2800F20E0, &qword_2800F20D8, 0x277D579A0, &protocol conformance descriptor for GRRSchemaGRRFeatureExtractionStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F20D0, 0x277D57990);
  sub_266ECAF2C(&qword_2800F20C8, &qword_2800F20D0, 0x277D57990, &protocol conformance descriptor for GRRSchemaGRRFeatureExtracted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v21;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
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

uint64_t sub_266FE2270(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE22D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRRSchemaGRRFeatureExtractionStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F20B8, 0x277D579D0);
  sub_266ECAF2C(&qword_2800F20C0, &qword_2800F20B8, 0x277D579D0, &protocol conformance descriptor for GRRSchemaGRRSource);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656372756F73, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266FE2548(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F20B8, 0x277D579D0);
  sub_266ECAF2C(&qword_2800F20C0, &qword_2800F20B8, 0x277D579D0, &protocol conformance descriptor for GRRSchemaGRRSource);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x656372756F73, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266FE26E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE2744(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRRSchemaGRRFeatureFlag.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v8, 0x4665727574616566, 0xEE0079654B67616CLL);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E4E8], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x656C62616E457369, 0xE900000000000064);
  return v13(v16, 0);
}

uint64_t sub_266FE2B18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE2B7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FE2BE0()
{
  result = qword_2800F20E8;
  if (!qword_2800F20E8)
  {
    sub_266FE2C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F20E8);
  }

  return result;
}

unint64_t sub_266FE2C38()
{
  result = qword_2800F20F0;
  if (!qword_2800F20F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F20F0);
  }

  return result;
}

uint64_t static GRRSchemaGRRHypothesisRanked.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F20F8, 0x277D579C8);
  sub_266ECAF2C(&qword_2800F2100, &qword_2800F20F8, 0x277D579C8, &protocol conformance descriptor for GRRSchemaGRRRanking);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73676E696B6E6172, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_266FE2E58(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F20F8, 0x277D579C8);
  sub_266ECAF2C(&qword_2800F2100, &qword_2800F20F8, 0x277D579C8, &protocol conformance descriptor for GRRSchemaGRRRanking);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x73676E696B6E6172, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_266FE2FF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE3058(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRRSchemaGRRHypothesisRankingContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x49747865746E6F63, 0xE900000000000064);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F2118, 0x277D579C0);
  sub_266ECAF2C(&qword_2800F2120, &qword_2800F2118, 0x277D579C0, &protocol conformance descriptor for GRRSchemaGRRHypothesisRankingStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F2110, 0x277D579B0);
  sub_266ECAF2C(&qword_2800F2108, &qword_2800F2110, 0x277D579B0, &protocol conformance descriptor for GRRSchemaGRRHypothesisRanked);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v21;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
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

uint64_t sub_266FE3614(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE3678(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRRSchemaGRRHypothesisRankingStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x7265567465737361, 0xEC0000006E6F6973);
  v10(v13, 0);
  sub_266ECB294(0, &qword_2800F20F0, 0x277D579A8);
  sub_266ECAF2C(&qword_2800F20E8, &qword_2800F20F0, 0x277D579A8, &protocol conformance descriptor for GRRSchemaGRRFeatureFlag);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x4665727574616566, 0xEC0000007367616CLL);
  return v11(v13, 0);
}

uint64_t sub_266FE3A5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE3AC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static GRRSchemaGRRParseType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x8000000267441390, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000011, 0x80000002674413B0, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000011, 0x80000002674413D0, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000013, 0x80000002674413F0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000011, 0x8000000267441410, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000010, 0x8000000267441430, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000011, 0x8000000267441450, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266FE3F44(uint64_t a1)
{
  v2 = sub_266FE4048(&qword_2800F2130, &protocol conformance descriptor for GRRSchemaGRRParseType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FE3FAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FE4048(&qword_2800F2130, &protocol conformance descriptor for GRRSchemaGRRParseType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FE4048(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GRRSchemaGRRParseType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GRRSchemaGRRRanking.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v13 = *(v1 - 8);
  v14 = v1;
  MEMORY[0x28223BE20](v1);
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
  sub_266EC637C(v6, 0x64496573726170, 0xE700000000000000);
  v9(v15, 0);
  type metadata accessor for GRRSchemaGRRParseType(0);
  sub_266FE4508();
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x7079546573726170, 0xE900000000000065);
  v10(v15, 0);
  (*(v13 + 104))(v3, *MEMORY[0x277D3E518], v14);
  v15[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x65726F6373, 0xE500000000000000);
  return v11(v15, 0);
}

uint64_t sub_266FE4444(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE44A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FE4508()
{
  result = qword_2800F2128;
  if (!qword_2800F2128)
  {
    type metadata accessor for GRRSchemaGRRParseType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2128);
  }

  return result;
}

uint64_t static GRRSchemaGRRSource.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449656372756F73, 0xE800000000000000);
  v6(v9, 0);
  type metadata accessor for GRRSchemaGRRSourceType(0);
  sub_266FE48F4();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7954656372756F73, 0xEA00000000006570);
  return v7(v9, 0);
}

uint64_t sub_266FE4830(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE4894(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FE48F4()
{
  result = qword_2800F2138;
  if (!qword_2800F2138)
  {
    type metadata accessor for GRRSchemaGRRSourceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2138);
  }

  return result;
}

uint64_t static GRRSchemaGRRSourceType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267441500, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000011, 0x8000000267441520, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267441540, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000010, 0x8000000267441560, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267441580, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000014, 0x80000002674415A0, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001DLL, 0x80000002674415C0, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266FE4D68(uint64_t a1)
{
  v2 = sub_266FE4E6C(&qword_2800F2140, &protocol conformance descriptor for GRRSchemaGRRSourceType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FE4DD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FE4E6C(&qword_2800F2140, &protocol conformance descriptor for GRRSchemaGRRSourceType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FE4E6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for GRRSchemaGRRSourceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static GRRSchemaGRRStringList.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x614E676E69727473, 0xEA0000000000656DLL);
  return v8(v10, 0);
}

uint64_t sub_266FE5100(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE5164(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FE51C8()
{
  result = qword_2800F20A0;
  if (!qword_2800F20A0)
  {
    sub_266FE5220();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F20A0);
  }

  return result;
}

unint64_t sub_266FE5220()
{
  result = qword_2800F2098;
  if (!qword_2800F2098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2098);
  }

  return result;
}

uint64_t static GRRSchemaGRRSystemErrorOccurred.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for GRRSchemaGRRErrorCode(0);
  sub_266FE56AC(&qword_2800F2088, type metadata accessor for GRRSchemaGRRErrorCode, &protocol conformance descriptor for GRRSchemaGRRErrorCode);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x73654D726F727265, 0xEC00000065676173);
  return v10(v14, 0);
}

uint64_t sub_266FE55A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE5604(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FE56AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FE56F4()
{
  result = qword_2800F2050;
  if (!qword_2800F2050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2050);
  }

  return result;
}

uint64_t static HALSchemaHALAction.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000011, 0x8000000267441670, isUniquelyReferenced_nonNull_native);
  *v3 = v90;

  v1(v112, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267441690, v8);
  *v7 = v91;

  v5(v112, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x80000002674416B0, v12);
  *v11 = v92;

  v9(v112, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x80000002674416E0, v16);
  *v15 = v93;

  v13(v112, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x8000000267441700, v20);
  *v19 = v94;

  v17(v112, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000016, 0x8000000267441730, v24);
  *v23 = v95;

  v21(v112, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001CLL, 0x8000000267441750, v28);
  *v27 = v96;

  v25(v112, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000019, 0x8000000267441770, v32);
  *v31 = v97;

  v29(v112, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000019, 0x8000000267441790, v36);
  *v35 = v98;

  v33(v112, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000020, 0x80000002674417B0, v40);
  *v39 = v99;

  v37(v112, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000022, 0x80000002674417E0, v44);
  *v43 = v100;

  v41(v112, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000021, 0x8000000267441810, v48);
  *v47 = v101;

  v45(v112, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v102 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000022, 0x8000000267441840, v52);
  *v51 = v102;

  v49(v112, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v103 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000021, 0x8000000267441870, v56);
  *v55 = v103;

  v53(v112, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v104 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000020, 0x80000002674418A0, v60);
  *v59 = v104;

  v57(v112, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v105 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000018, 0x80000002674418D0, v64);
  *v63 = v105;

  v61(v112, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v106 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000017, 0x80000002674418F0, v68);
  *v67 = v106;

  v65(v112, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v107 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000016, 0x8000000267441910, v72);
  *v71 = v107;

  v69(v112, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v108 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000016, 0x8000000267441930, v76);
  *v75 = v108;

  v73(v112, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v109 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000017, 0x8000000267441950, v80);
  *v79 = v109;

  v77(v112, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000015, 0x8000000267441970, v84);
  *v83 = v110;

  v81(v112, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v111 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000020, 0x8000000267441990, v88);
  *v87 = v111;

  return v85(v112, 0);
}

uint64_t sub_266FE61AC(uint64_t a1)
{
  v2 = sub_266FE62B0(&qword_2800F2150, &protocol conformance descriptor for HALSchemaHALAction);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FE6214(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FE62B0(&qword_2800F2150, &protocol conformance descriptor for HALSchemaHALAction);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FE62B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALActionResult.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x80000002674419F0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267441A10, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267441A30, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x8000000267441A50, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FE6578(uint64_t a1)
{
  v2 = sub_266FE667C(&qword_2800F2160, &protocol conformance descriptor for HALSchemaHALActionResult);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FE65E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FE667C(&qword_2800F2160, &protocol conformance descriptor for HALSchemaHALActionResult);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FE667C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALActionResult(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALAlarmContext.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v3, *MEMORY[0x277D3E540], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001CLL, 0x8000000267441AB0);
  return v8(v10, 0);
}

uint64_t sub_266FE6910(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE6974(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FE69D8()
{
  result = qword_2800F2168;
  if (!qword_2800F2168)
  {
    sub_266FE6A30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2168);
  }

  return result;
}

unint64_t sub_266FE6A30()
{
  result = qword_2800F2170;
  if (!qword_2800F2170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2170);
  }

  return result;
}

uint64_t static HALSchemaHALClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x28223BE20](v1);
  v26 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v25 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2178, 0x277D579F8);
  sub_266ECAF2C(&qword_2800F2180, &qword_2800F2178, 0x277D579F8, &protocol conformance descriptor for HALSchemaHALClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v29, 0);
  sub_266ECB294(0, &qword_2800F2188, 0x277D57A40);
  sub_266ECAF2C(&qword_2800F2190, &qword_2800F2188, 0x277D57A40, &protocol conformance descriptor for HALSchemaHALCrossDeviceCommandExecutionContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000019, 0x8000000267441B00);
  v9(v29, 0);
  sub_266ECB294(0, &qword_2800F2198, 0x277D57A88);
  sub_266ECAF2C(&qword_2800F21A0, &qword_2800F2198, 0x277D57A88, &protocol conformance descriptor for HALSchemaHALLocalFetchContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x8000000267441B20);
  v10(v29, 0);
  sub_266ECB294(0, &qword_2800F21A8, 0x277D57A20);
  sub_266ECAF2C(&qword_2800F21B0, &qword_2800F21A8, 0x277D57A20, &protocol conformance descriptor for HALSchemaHALContextCollectorFetchContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001CLL, 0x8000000267441B40);
  v11(v29, 0);
  sub_266ECB294(0, &qword_2800F21B8, 0x277D57A68);
  sub_266ECAF2C(&qword_2800F21C0, &qword_2800F21B8, 0x277D57A68, &protocol conformance descriptor for HALSchemaHALForceFetchContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x8000000267441B60);
  v12(v29, 0);
  sub_266ECB294(0, &qword_2800F21C8, 0x277D57A10);
  sub_266ECAF2C(&qword_2800F21D0, &qword_2800F21C8, 0x277D57A10, &protocol conformance descriptor for HALSchemaHALCompanionDeviceDiscoveryContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001FLL, 0x8000000267441B80);
  v13(v29, 0);
  sub_266ECB294(0, &qword_2800F21D8, 0x277D57A00);
  sub_266ECAF2C(&qword_2800F21E0, &qword_2800F21D8, 0x277D57A00, &protocol conformance descriptor for HALSchemaHALCompanionDeviceCommunicationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000023, 0x8000000267441BA0);
  v14(v29, 0);
  sub_266ECB294(0, &qword_2800F21E8, 0x277D57AB0);
  sub_266ECAF2C(&qword_2800F21F0, &qword_2800F21E8, 0x277D57AB0, &protocol conformance descriptor for HALSchemaHALNearbyPersonalDevicesReported);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v15 = v26;
  v16 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001DLL, 0x8000000267441BD0);
  v16(v29, 0);
  sub_26738117C();
  v17 = sub_2673811BC();
  v19 = v18;
  v20 = *v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v19 = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = sub_266ECAD54(0, v20[2] + 1, 1, v20);
    *v19 = v20;
  }

  v23 = v20[2];
  v22 = v20[3];
  if (v23 >= v22 >> 1)
  {
    v20 = sub_266ECAD54((v22 > 1), v23 + 1, 1, v20);
    *v19 = v20;
  }

  v20[2] = v23 + 1;
  (*(v27 + 32))(v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, v15, v28);
  v17(v29, 0);
  sub_266ECB128(&unk_287886640);
  return sub_2673811CC();
}

uint64_t sub_266FE73B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266FE7450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266FE751C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE7580(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FE75E0(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F21F8, &qword_2800F1ED0, 0x277D579F0, &protocol conformance descriptor for HALSchemaHALClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F2200, &qword_2800F1ED0, 0x277D579F0, &protocol conformance descriptor for HALSchemaHALClientEvent);
  result = sub_266ECAF2C(&qword_2800F2208, &qword_2800F1ED0, 0x277D579F0, &protocol conformance descriptor for HALSchemaHALClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static HALSchemaHALClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v18 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v19 = a1;
  sub_26738120C();
  v5 = sub_26738116C();
  v6 = *(v5 - 8);
  v17 = *(v6 + 56);
  v17(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0x64496C6168, 0xE500000000000000);
  v7(v21, 0);
  v8 = sub_2673811AC();
  v9 = sub_266ECB6CC(v20, 0x64496C6168, 0xE500000000000000);
  v16 = *(v6 + 48);
  if (!v16(v10, 1, v5))
  {
    sub_266ECB128(&unk_287886678);
    sub_26738115C();
  }

  (v9)(v20, 0);
  v8(v21, 0);
  sub_26738120C();
  v17(v4, 0, 1, v5);
  v11 = sub_2673811AC();
  sub_266EC637C(v4, 0x4974736575716572, 0xE900000000000064);
  v11(v21, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v20, 0x4974736575716572, 0xE900000000000064);
  if (!v16(v14, 1, v5))
  {
    sub_266ECB128(&unk_2878866A8);
    sub_26738115C();
  }

  (v13)(v20, 0);
  return v12(v21, 0);
}

uint64_t sub_266FE7AA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE7B04(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HALSchemaHALCompanionDeviceCommunicationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F2210, 0x277D57A08);
  sub_266ECAF2C(&qword_2800F2218, &qword_2800F2210, 0x277D57A08, &protocol conformance descriptor for HALSchemaHALCompanionDeviceCommunicationEnded);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0x6465646E65, 0xE500000000000000);
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
  return v10(v18, 0);
}

uint64_t sub_266FE7F14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE7F78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HALSchemaHALCompanionDeviceCommunicationEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for HALSchemaHALConnectionType(0);
  sub_266FE845C(&qword_2800F2220, type metadata accessor for HALSchemaHALConnectionType, &protocol conformance descriptor for HALSchemaHALConnectionType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x697463656E6E6F63, 0xEE00657079546E6FLL);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x8000000267441CA0);
  return v10(v14, 0);
}

uint64_t sub_266FE8350(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE83B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FE845C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FE84A4()
{
  result = qword_2800F2210;
  if (!qword_2800F2210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2210);
  }

  return result;
}

uint64_t static HALSchemaHALCompanionDeviceDiscoveryContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F2228, 0x277D57A18);
  sub_266ECAF2C(&qword_2800F2230, &qword_2800F2228, 0x277D57A18, &protocol conformance descriptor for HALSchemaHALCompanionDeviceDiscoveryEnded);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0x6465646E65, 0xE500000000000000);
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
  return v10(v18, 0);
}

uint64_t sub_266FE885C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE88C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HALSchemaHALCompanionDeviceDiscoveryEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v28 = a1;
  v29 = sub_26738113C();
  v1 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALDiscoveryType(0);
  sub_266FE9010(&qword_2800F2238, type metadata accessor for HALSchemaHALDiscoveryType, &protocol conformance descriptor for HALSchemaHALDiscoveryType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v10 = v8 + 56;
  v9(v6, 0, 1, v7);
  v24 = v9;
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x7265766F63736964, 0xED00006570795479);
  v11(v30, 0);
  v12 = *MEMORY[0x277D3E4E8];
  v13 = v1 + 104;
  v14 = *(v1 + 104);
  v25 = v13;
  v27 = v12;
  v15 = v29;
  v14(v3, v12, v29);
  v30[0] = 1;
  sub_26738114C();
  v26 = v10;
  v9(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0x69766544654D7369, 0xEA00000000006563);
  v16(v30, 0);
  v23 = "nionDeviceDiscoveryEnded";
  v14(v3, v12, v15);
  v30[0] = 1;
  sub_26738114C();
  v17 = v24;
  v24(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, v23 | 0x8000000000000000);
  v18(v30, 0);
  v14(v3, v27, v29);
  v30[0] = 1;
  sub_26738114C();
  v17(v6, 0, 1, v7);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001DLL, 0x8000000267441D60);
  v19(v30, 0);
  type metadata accessor for HALSchemaHALDeviceProximity(0);
  sub_266FE9010(&qword_2800F2240, type metadata accessor for HALSchemaHALDeviceProximity, &protocol conformance descriptor for HALSchemaHALDeviceProximity);
  sub_26738120C();
  v17(v6, 0, 1, v7);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0x7250656369766564, 0xEF7974696D69786FLL);
  return v20(v30, 0);
}

uint64_t sub_266FE8F04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE8F68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FE9010(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FE9058()
{
  result = qword_2800F2228;
  if (!qword_2800F2228)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2228);
  }

  return result;
}

uint64_t static HALSchemaHALConnectionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267441DB0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x8000000267441DD0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x8000000267441DF0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266FE92B8(uint64_t a1)
{
  v2 = sub_266FE93BC(&qword_2800F2248, &protocol conformance descriptor for HALSchemaHALConnectionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FE9320(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FE93BC(&qword_2800F2248, &protocol conformance descriptor for HALSchemaHALConnectionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FE93BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALConnectionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALContextCollectorFetchContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x49747865746E6F63, 0xE900000000000064);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F2250, 0x277D57A38);
  sub_266ECAF2C(&qword_2800F2258, &qword_2800F2250, 0x277D57A38, &protocol conformance descriptor for HALSchemaHALContextCollectorFetchStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F2260, 0x277D57A28);
  sub_266ECAF2C(&qword_2800F2268, &qword_2800F2260, 0x277D57A28, &protocol conformance descriptor for HALSchemaHALContextCollectorFetchEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F2270, 0x277D57A30);
  sub_266ECAF2C(&qword_2800F2278, &qword_2800F2270, 0x277D57A30, &protocol conformance descriptor for HALSchemaHALContextCollectorFetchFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v12(v25, 0);
  sub_26738117C();
  v13 = sub_2673811BC();
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_266ECAD54(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_266ECAD54((v18 > 1), v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  (*(v23 + 32))(v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, v11, v24);
  return v13(v25, 0);
}

uint64_t sub_266FE99DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE9A40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HALSchemaHALContextCollectorFetchEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267441E90);
  return v8(v10, 0);
}

uint64_t sub_266FE9D34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FE9D98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FE9DFC()
{
  result = qword_2800F2268;
  if (!qword_2800F2268)
  {
    sub_266FE9E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2268);
  }

  return result;
}

unint64_t sub_266FE9E54()
{
  result = qword_2800F2260;
  if (!qword_2800F2260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2260);
  }

  return result;
}

uint64_t static HALSchemaHALContextCollectorFetchFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALContextFetchFailureReason(0);
  sub_266FEA30C(&qword_2800F2280, type metadata accessor for HALSchemaHALContextFetchFailureReason, &protocol conformance descriptor for HALSchemaHALContextFetchFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x526572756C696166, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_266FEA06C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALContextFetchFailureReason(0);
  sub_266FEA30C(&qword_2800F2280, type metadata accessor for HALSchemaHALContextFetchFailureReason, &protocol conformance descriptor for HALSchemaHALContextFetchFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x526572756C696166, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_266FEA200(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEA264(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FEA30C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FEA354()
{
  result = qword_2800F2270;
  if (!qword_2800F2270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2270);
  }

  return result;
}

uint64_t static HALSchemaHALContextCollectorFetchStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267441F30);
  return v8(v10, 0);
}

uint64_t sub_266FEA5F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEA654(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FEA6B8()
{
  result = qword_2800F2258;
  if (!qword_2800F2258)
  {
    sub_266FEA710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2258);
  }

  return result;
}

unint64_t sub_266FEA710()
{
  result = qword_2800F2250;
  if (!qword_2800F2250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2250);
  }

  return result;
}

uint64_t static HALSchemaHALContextFetchFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x8000000267441F90, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x8000000267441FC0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000033, 0x8000000267441FF0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003ALL, 0x8000000267442030, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FEA9E4(uint64_t a1)
{
  v2 = sub_266FEAAE8(&qword_2800F2288, &protocol conformance descriptor for HALSchemaHALContextFetchFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FEAA4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FEAAE8(&qword_2800F2288, &protocol conformance descriptor for HALSchemaHALContextFetchFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FEAAE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALContextFetchFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALCrossDeviceCommandExecutionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F2290, 0x277D57A58);
  sub_266ECAF2C(&qword_2800F2298, &qword_2800F2290, 0x277D57A58, &protocol conformance descriptor for HALSchemaHALCrossDeviceCommandExecutionStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F22A0, 0x277D57A48);
  sub_266ECAF2C(&qword_2800F22A8, &qword_2800F22A0, 0x277D57A48, &protocol conformance descriptor for HALSchemaHALCrossDeviceCommandExecutionEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F22B0, 0x277D57A50);
  sub_266ECAF2C(&qword_2800F22B8, &qword_2800F22B0, 0x277D57A50, &protocol conformance descriptor for HALSchemaHALCrossDeviceCommandExecutionFailed);
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

uint64_t sub_266FEB044(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEB0A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HALSchemaHALCrossDeviceCommandExecutionEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F22C0, 0x277D57A60);
  sub_266ECAF2C(&qword_2800F22C8, &qword_2800F22C0, 0x277D57A60, &protocol conformance descriptor for HALSchemaHALDevice);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x64657463656C6573, 0xE800000000000000);
  v6(v11, 0);
  type metadata accessor for HALSchemaHALAction(0);
  sub_266FEB648(&qword_2800F2148, type metadata accessor for HALSchemaHALAction, &protocol conformance descriptor for HALSchemaHALAction);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F69746361, 0xE600000000000000);
  v7(v11, 0);
  type metadata accessor for HALSchemaHALActionResult(0);
  sub_266FEB648(&qword_2800F2158, type metadata accessor for HALSchemaHALActionResult, &protocol conformance descriptor for HALSchemaHALActionResult);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x65526E6F69746361, 0xEC000000746C7573);
  v8(v11, 0);
  type metadata accessor for HALSchemaHALHomeKitTarget(0);
  sub_266FEB648(&qword_2800F22D0, type metadata accessor for HALSchemaHALHomeKitTarget, &protocol conformance descriptor for HALSchemaHALHomeKitTarget);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x5474694B656D6F68, 0xED00007465677261);
  return v9(v11, 0);
}

uint64_t sub_266FEB584(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEB5E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FEB648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static HALSchemaHALCrossDeviceCommandExecutionFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALFailureReason(0);
  sub_266FEBA80(&qword_2800F22D8, type metadata accessor for HALSchemaHALFailureReason, &protocol conformance descriptor for HALSchemaHALFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v6(v9, 0);
  type metadata accessor for HALSchemaHALAction(0);
  sub_266FEBA80(&qword_2800F2148, type metadata accessor for HALSchemaHALAction, &protocol conformance descriptor for HALSchemaHALAction);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F69746361, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_266FEB974(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEB9D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FEBA80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FEBAC8()
{
  result = qword_2800F22B0;
  if (!qword_2800F22B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F22B0);
  }

  return result;
}

uint64_t static HALSchemaHALCrossDeviceCommandExecutionStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FEBD5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEBDC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FEBE24()
{
  result = qword_2800F2298;
  if (!qword_2800F2298)
  {
    sub_266FEBE7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2298);
  }

  return result;
}

unint64_t sub_266FEBE7C()
{
  result = qword_2800F2290;
  if (!qword_2800F2290)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2290);
  }

  return result;
}

uint64_t static HALSchemaHALDevice.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v19 = *(v1 - 8);
  v20 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALDeviceProximity(0);
  sub_266FEC84C(&qword_2800F2240, type metadata accessor for HALSchemaHALDeviceProximity, &protocol conformance descriptor for HALSchemaHALDeviceProximity);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x7250656369766564, 0xEF7974696D69786FLL);
  v9(v21, 0);
  type metadata accessor for SISchemaDeviceFamily(0);
  sub_266FEC84C(&qword_2800F0770, type metadata accessor for SISchemaDeviceFamily, &protocol conformance descriptor for SISchemaDeviceFamily);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6146656369766564, 0xEC000000796C696DLL);
  v10(v21, 0);
  (*(v19 + 104))(v3, *MEMORY[0x277D3E530], v20);
  v21[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x75426D6574737973, 0xEB00000000646C69);
  v11(v21, 0);
  type metadata accessor for SISchemaLocale(0);
  sub_266FEC84C(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x75706E4969726973, 0xEF656C61636F4C74);
  v12(v21, 0);
  sub_266ECB294(0, &qword_2800F22E0, 0x277D57AA8);
  sub_266ECAF2C(&qword_2800F22E8, &qword_2800F22E0, 0x277D57AA8, &protocol conformance descriptor for HALSchemaHALMediaPlayerContext);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267431780);
  v13(v21, 0);
  sub_266ECB294(0, &qword_2800F2170, 0x277D579E8);
  sub_266ECAF2C(&qword_2800F2168, &qword_2800F2170, 0x277D579E8, &protocol conformance descriptor for HALSchemaHALAlarmContext);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E6F436D72616C61, 0xEC00000074786574);
  v14(v21, 0);
  sub_266ECB294(0, &qword_2800F22F0, 0x277D57AB8);
  sub_266ECAF2C(&qword_2800F22F8, &qword_2800F22F0, 0x277D57AB8, &protocol conformance descriptor for HALSchemaHALTimerContext);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E6F4372656D6974, 0xEC00000074786574);
  v15(v21, 0);
  sub_266ECB294(0, &qword_2800F2300, 0x277D57AC0);
  sub_266ECAF2C(&qword_2800F2308, &qword_2800F2300, 0x277D57AC0, &protocol conformance descriptor for HALSchemaHALVoiceTriggerContext);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x80000002674421A0);
  v16(v21, 0);
  type metadata accessor for HALSchemaHALPowerState(0);
  sub_266FEC84C(&qword_2800F2310, type metadata accessor for HALSchemaHALPowerState, &protocol conformance descriptor for HALSchemaHALPowerState);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x6174537265776F70, 0xEA00000000006574);
  return v17(v21, 0);
}

uint64_t sub_266FEC788(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEC7EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FEC84C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static HALSchemaHALDeviceProximity.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x80000002674421F0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267442210, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001CLL, 0x8000000267442230, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x8000000267442250, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000016, 0x8000000267442270, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266FECBD0(uint64_t a1)
{
  v2 = sub_266FECCD4(&qword_2800F2318, &protocol conformance descriptor for HALSchemaHALDeviceProximity);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FECC38(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FECCD4(&qword_2800F2318, &protocol conformance descriptor for HALSchemaHALDeviceProximity);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FECCD4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALDeviceProximity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALDeviceSharedContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x80000002674422C0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x80000002674422E0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x8000000267442310, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267442340, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x8000000267442360, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_266FED010(uint64_t a1)
{
  v2 = sub_266FED114(&qword_2800F2328, &protocol conformance descriptor for HALSchemaHALDeviceSharedContext);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FED078(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FED114(&qword_2800F2328, &protocol conformance descriptor for HALSchemaHALDeviceSharedContext);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FED114(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALDeviceSharedContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALDiscoveryType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x80000002674423B0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674423D0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x80000002674423F0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x8000000267442410, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FED3E0(uint64_t a1)
{
  v2 = sub_266FED4E4(&qword_2800F2330, &protocol conformance descriptor for HALSchemaHALDiscoveryType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FED448(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FED4E4(&qword_2800F2330, &protocol conformance descriptor for HALSchemaHALDiscoveryType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FED4E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALDiscoveryType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267442460, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x8000000267442480, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x80000002674424A0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x80000002674424D0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266FED7B0(uint64_t a1)
{
  v2 = sub_266FED8B4(&qword_2800F2338, &protocol conformance descriptor for HALSchemaHALFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FED818(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FED8B4(&qword_2800F2338, &protocol conformance descriptor for HALSchemaHALFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FED8B4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALForceFetchContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v23 = *(v1 - 8);
  v24 = v1;
  MEMORY[0x28223BE20](v1);
  v22 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x49747865746E6F63, 0xE900000000000064);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F2340, 0x277D57A80);
  sub_266ECAF2C(&qword_2800F2348, &qword_2800F2340, 0x277D57A80, &protocol conformance descriptor for HALSchemaHALForceFetchStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F2350, 0x277D57A70);
  sub_266ECAF2C(&qword_2800F2358, &qword_2800F2350, 0x277D57A70, &protocol conformance descriptor for HALSchemaHALForceFetchEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F2360, 0x277D57A78);
  sub_266ECAF2C(&qword_2800F2368, &qword_2800F2360, 0x277D57A78, &protocol conformance descriptor for HALSchemaHALForceFetchFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v12(v25, 0);
  sub_26738117C();
  v13 = sub_2673811BC();
  v15 = v14;
  v16 = *v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v15 = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v16 = sub_266ECAD54(0, v16[2] + 1, 1, v16);
    *v15 = v16;
  }

  v19 = v16[2];
  v18 = v16[3];
  if (v19 >= v18 >> 1)
  {
    v16 = sub_266ECAD54((v18 > 1), v19 + 1, 1, v16);
    *v15 = v16;
  }

  v16[2] = v19 + 1;
  (*(v23 + 32))(v16 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v19, v11, v24);
  return v13(v25, 0);
}

uint64_t sub_266FEDED4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEDF38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HALSchemaHALForceFetchEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267441E90);
  return v8(v10, 0);
}

uint64_t sub_266FEE22C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEE290(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FEE2F4()
{
  result = qword_2800F2358;
  if (!qword_2800F2358)
  {
    sub_266FEE34C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2358);
  }

  return result;
}

unint64_t sub_266FEE34C()
{
  result = qword_2800F2350;
  if (!qword_2800F2350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2350);
  }

  return result;
}

uint64_t static HALSchemaHALForceFetchFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALContextFetchFailureReason(0);
  sub_266FEE804(&qword_2800F2280, type metadata accessor for HALSchemaHALContextFetchFailureReason, &protocol conformance descriptor for HALSchemaHALContextFetchFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x526572756C696166, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_266FEE564(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALContextFetchFailureReason(0);
  sub_266FEE804(&qword_2800F2280, type metadata accessor for HALSchemaHALContextFetchFailureReason, &protocol conformance descriptor for HALSchemaHALContextFetchFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x526572756C696166, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_266FEE6F8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEE75C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FEE804(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FEE84C()
{
  result = qword_2800F2360;
  if (!qword_2800F2360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2360);
  }

  return result;
}

uint64_t static HALSchemaHALForceFetchStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FEEAE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEEB44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FEEBA8()
{
  result = qword_2800F2348;
  if (!qword_2800F2348)
  {
    sub_266FEEC00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2348);
  }

  return result;
}

unint64_t sub_266FEEC00()
{
  result = qword_2800F2340;
  if (!qword_2800F2340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2340);
  }

  return result;
}

uint64_t static HALSchemaHALHomeKitTarget.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x80000002674425E0, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267442600, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267442620, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x8000000267442640, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x8000000267442660, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000015, 0x8000000267442690, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001CLL, 0x80000002674426B0, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000026, 0x80000002674426D0, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_266FEF09C(uint64_t a1)
{
  v2 = sub_266FEF1A0(&qword_2800F2370, &protocol conformance descriptor for HALSchemaHALHomeKitTarget);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266FEF104(uint64_t a1, uint64_t a2)
{
  v4 = sub_266FEF1A0(&qword_2800F2370, &protocol conformance descriptor for HALSchemaHALHomeKitTarget);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266FEF1A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for HALSchemaHALHomeKitTarget(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static HALSchemaHALLocalFetchContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F2378, 0x277D57AA0);
  sub_266ECAF2C(&qword_2800F2380, &qword_2800F2378, 0x277D57AA0, &protocol conformance descriptor for HALSchemaHALLocalFetchStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F2388, 0x277D57A90);
  sub_266ECAF2C(&qword_2800F2390, &qword_2800F2388, 0x277D57A90, &protocol conformance descriptor for HALSchemaHALLocalFetchEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F2398, 0x277D57A98);
  sub_266ECAF2C(&qword_2800F23A0, &qword_2800F2398, 0x277D57A98, &protocol conformance descriptor for HALSchemaHALLocalFetchFailed);
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

uint64_t sub_266FEF6FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEF760(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static HALSchemaHALLocalFetchEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FEFA4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEFAB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FEFB14()
{
  result = qword_2800F2390;
  if (!qword_2800F2390)
  {
    sub_266FEFB6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2390);
  }

  return result;
}

unint64_t sub_266FEFB6C()
{
  result = qword_2800F2388;
  if (!qword_2800F2388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2388);
  }

  return result;
}

uint64_t static HALSchemaHALLocalFetchFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALContextFetchFailureReason(0);
  sub_266FF0024(&qword_2800F2280, type metadata accessor for HALSchemaHALContextFetchFailureReason, &protocol conformance descriptor for HALSchemaHALContextFetchFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x526572756C696166, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_266FEFD84(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALContextFetchFailureReason(0);
  sub_266FF0024(&qword_2800F2280, type metadata accessor for HALSchemaHALContextFetchFailureReason, &protocol conformance descriptor for HALSchemaHALContextFetchFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x526572756C696166, 0xED00006E6F736165);
  return v5(v7, 0);
}

uint64_t sub_266FEFF18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FEFF7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266FF0024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266FF006C()
{
  result = qword_2800F2398;
  if (!qword_2800F2398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2398);
  }

  return result;
}

uint64_t static HALSchemaHALLocalFetchStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266FF0300(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266FF0364(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266FF03C8()
{
  result = qword_2800F2380;
  if (!qword_2800F2380)
  {
    sub_266FF0420();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2380);
  }

  return result;
}

unint64_t sub_266FF0420()
{
  result = qword_2800F2378;
  if (!qword_2800F2378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2378);
  }

  return result;
}

uint64_t static HALSchemaHALMediaPlayerContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v13 = *(v1 - 8);
  v14 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for HALSchemaHALMediaPlayerState(0);
  sub_266FF0948(&qword_2800F23A8, type metadata accessor for HALSchemaHALMediaPlayerState, &protocol conformance descriptor for HALSchemaHALMediaPlayerState);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6574617473, 0xE500000000000000);
  v9(v15, 0);
  type metadata accessor for FLOWSchemaFLOWMediaType(0);
  sub_266FF0948(&qword_2800F13E8, type metadata accessor for FLOWSchemaFLOWMediaType, &protocol conformance descriptor for FLOWSchemaFLOWMediaType);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 1701869940, 0xE400000000000000);
  v10(v15, 0);
  (*(v13 + 104))(v3, *MEMORY[0x277D3E538], v14);
  v15[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000023, 0x80000002674427F0);
  return v11(v15, 0);
}