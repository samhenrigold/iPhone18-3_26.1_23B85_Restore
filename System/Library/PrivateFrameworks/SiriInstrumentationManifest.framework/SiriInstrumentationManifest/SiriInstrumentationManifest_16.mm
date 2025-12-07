uint64_t sub_26718316C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671831D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267183230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ODSAMPLESiriSchemaODSAMPLESpeakerIdSampleToRequestMap.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x4974736575716572, 0xE900000000000064);
  v5(v7, 0);
  sub_266ECB128(&unk_28788B188);
  return sub_2673811CC();
}

uint64_t sub_2671834C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267183524(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static OPTINSchemaOPTINClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F66D0, 0x277D59560);
  sub_266ECAF2C(&qword_2800F66D8, &qword_2800F66D0, 0x277D59560, &protocol conformance descriptor for OPTINSchemaOPTINInconsistentStateDetected);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000019, 0x800000026746CCA0);
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
  sub_266ECB128(&unk_28788B1B8);
  return sub_2673811CC();
}

uint64_t sub_267183918(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2671839B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267183A7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267183AE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267183B40(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F66E0, &qword_2800F1FF0, 0x277D59558, &protocol conformance descriptor for OPTINSchemaOPTINClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F66E8, &qword_2800F1FF0, 0x277D59558, &protocol conformance descriptor for OPTINSchemaOPTINClientEvent);
  result = sub_266ECAF2C(&qword_2800F66F0, &qword_2800F1FF0, 0x277D59558, &protocol conformance descriptor for OPTINSchemaOPTINClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static OPTINSchemaOPTINInconsistentStateDetected.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for OPTINSchemaOPTINStateInconsistencyCondition(0);
  sub_267184000(&qword_2800F66F8, type metadata accessor for OPTINSchemaOPTINStateInconsistencyCondition, &protocol conformance descriptor for OPTINSchemaOPTINStateInconsistencyCondition);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000016, 0x800000026746CD00);
  v6(v9, 0);
  type metadata accessor for OPTINSchemaOPTINStateInconsistencyTrigger(0);
  sub_267184000(&qword_2800F6700, type metadata accessor for OPTINSchemaOPTINStateInconsistencyTrigger, &protocol conformance descriptor for OPTINSchemaOPTINStateInconsistencyTrigger);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x800000026746CD20);
  return v7(v9, 0);
}

uint64_t sub_267183EF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267183F58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267184000(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267184048()
{
  result = qword_2800F66D0;
  if (!qword_2800F66D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F66D0);
  }

  return result;
}

uint64_t static OPTINSchemaOPTINPropagationState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026746CD70, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x800000026746CD90, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026746CDB0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x800000026746CDD0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x800000026746CDF0, v20);
  *v19 = v26;

  v17(v27, 0);
  sub_266ECB128(&unk_28788B1F0);
  return sub_26738112C();
}

uint64_t sub_2671843A8(uint64_t a1)
{
  v2 = sub_2671844AC(&qword_2800F6710, &protocol conformance descriptor for OPTINSchemaOPTINPropagationState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267184410(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671844AC(&qword_2800F6710, &protocol conformance descriptor for OPTINSchemaOPTINPropagationState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671844AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OPTINSchemaOPTINPropagationState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static OPTINSchemaOPTINStateInconsistencyCondition.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002FLL, 0x800000026746CE50, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000034, 0x800000026746CE80, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000037, 0x800000026746CEC0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003CLL, 0x800000026746CF00, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267184774(uint64_t a1)
{
  v2 = sub_267184878(&qword_2800F6718, &protocol conformance descriptor for OPTINSchemaOPTINStateInconsistencyCondition);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671847DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267184878(&qword_2800F6718, &protocol conformance descriptor for OPTINSchemaOPTINStateInconsistencyCondition);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267184878(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OPTINSchemaOPTINStateInconsistencyCondition(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static OPTINSchemaOPTINStateInconsistencyTrigger.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002DLL, 0x800000026746CF80, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000036, 0x800000026746CFB0, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_267184A60(uint64_t a1)
{
  v2 = sub_267184B64(&qword_2800F6720, &protocol conformance descriptor for OPTINSchemaOPTINStateInconsistencyTrigger);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267184AC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267184B64(&qword_2800F6720, &protocol conformance descriptor for OPTINSchemaOPTINStateInconsistencyTrigger);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267184B64(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OPTINSchemaOPTINStateInconsistencyTrigger(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static OPTINSchemaOPTINStatePropagationEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDataSharingOptInState(0);
  sub_267185138(&qword_2800F0418, type metadata accessor for SISchemaDataSharingOptInState, &protocol conformance descriptor for SISchemaDataSharingOptInState);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6174536E4974706FLL, 0xEA00000000006574);
  v6(v10, 0);
  type metadata accessor for OPTINSchemaOPTINPropagationState(0);
  sub_267185138(&qword_2800F6708, type metadata accessor for OPTINSchemaOPTINPropagationState, &protocol conformance descriptor for OPTINSchemaOPTINPropagationState);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026746D030);
  v7(v10, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x800000026746D050);
  v8(v10, 0);
  sub_266ECB128(&unk_28788B218);
  return sub_2673811CC();
}

uint64_t sub_267184F10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267184FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267185074(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671850D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267185138(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_267185180(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F6728, &qword_2800F1F60, 0x277D59568, &protocol conformance descriptor for OPTINSchemaOPTINStatePropagationEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F6730, &qword_2800F1F60, 0x277D59568, &protocol conformance descriptor for OPTINSchemaOPTINStatePropagationEvent);
  result = sub_266ECAF2C(&qword_2800F6738, &qword_2800F1F60, 0x277D59568, &protocol conformance descriptor for OPTINSchemaOPTINStatePropagationEvent);
  a1[3] = result;
  return result;
}

uint64_t static ORCHSchemaNLRouterRewrittenUtteranceTier1.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v26 = sub_26738113C();
  v28 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v25 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v24 = *(v8 + 56);
  v24(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6575716552627573, 0xEC00000064497473);
  v9(v30, 0);
  v27 = a2;
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v29, 0x6575716552627573, 0xEC00000064497473);
  v23 = *(v8 + 48);
  if (!v23(v12, 1, v7))
  {
    sub_266ECB128(&unk_28788B250);
    sub_26738115C();
  }

  (v11)(v29, 0);
  v10(v30, 0);
  v13 = *MEMORY[0x277D3E530];
  v14 = *(v28 + 104);
  v28 += 104;
  v22 = v14;
  v14(v25, v13, v26);
  v30[0] = 1;
  sub_26738114C();
  v24(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x636E617265747475, 0xED00007478655465);
  v15(v30, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v29, 0x636E617265747475, 0xED00007478655465);
  if (!v23(v18, 1, v7))
  {
    sub_266ECB128(&unk_28788B280);
    sub_26738115C();
  }

  (v17)(v29, 0);
  v16(v30, 0);
  v22(v25, *MEMORY[0x277D3E508], v26);
  v30[0] = 1;
  sub_26738114C();
  v24(v6, 0, 1, v7);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0x636E617265747475, 0xEE007865646E4965);
  return v19(v30, 0);
}

uint64_t sub_2671857E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718584C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHAceCommandContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v5, 0x6449656361, 0xE500000000000000);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F6750, 0x277D595B0);
  sub_266ECAF2C(&qword_2800F6758, &qword_2800F6750, 0x277D595B0, &protocol conformance descriptor for ORCHSchemaORCHAceCommandStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F6760, 0x277D595A0);
  sub_266ECAF2C(&qword_2800F6768, &qword_2800F6760, 0x277D595A0, &protocol conformance descriptor for ORCHSchemaORCHAceCommandEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F6770, 0x277D595A8);
  sub_266ECAF2C(&qword_2800F6778, &qword_2800F6770, 0x277D595A8, &protocol conformance descriptor for ORCHSchemaORCHAceCommandFailed);
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

uint64_t sub_267185EC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267185F28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHAceCommandEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for ORCHSchemaORCHAceCommandType(0);
  sub_267186400(&qword_2800F6790, type metadata accessor for ORCHSchemaORCHAceCommandType, &protocol conformance descriptor for ORCHSchemaORCHAceCommandType);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x616D6D6F43656361, 0xEE0065707954646ELL);
  return v11(v13, 0);
}

uint64_t sub_2671862F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267186358(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267186400(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267186448()
{
  result = qword_2800F6760;
  if (!qword_2800F6760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6760);
  }

  return result;
}

uint64_t static ORCHSchemaORCHAceCommandFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for ORCHSchemaORCHAceCommandType(0);
  sub_2671868C8(&qword_2800F6790, type metadata accessor for ORCHSchemaORCHAceCommandType, &protocol conformance descriptor for ORCHSchemaORCHAceCommandType);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x616D6D6F43656361, 0xEE0065707954646ELL);
  return v11(v13, 0);
}

uint64_t sub_2671867BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267186820(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671868C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267186910()
{
  result = qword_2800F6770;
  if (!qword_2800F6770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6770);
  }

  return result;
}

uint64_t static ORCHSchemaORCHAceCommandStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x616D6D6F43656361, 0xEE00656D614E646ELL);
  v10(v13, 0);
  type metadata accessor for ORCHSchemaORCHAceCommandType(0);
  sub_267186D98(&qword_2800F6790, type metadata accessor for ORCHSchemaORCHAceCommandType, &protocol conformance descriptor for ORCHSchemaORCHAceCommandType);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x616D6D6F43656361, 0xEE0065707954646ELL);
  return v11(v13, 0);
}

uint64_t sub_267186C8C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267186CF0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267186D98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267186DE0()
{
  result = qword_2800F6750;
  if (!qword_2800F6750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6750);
  }

  return result;
}

uint64_t static ORCHSchemaORCHAceCommandType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026746D1A0, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026746D1C0, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026746D1F0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x800000026746D220, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ALL, 0x800000026746D250, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000034, 0x800000026746D280, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_267187194(uint64_t a1)
{
  v2 = sub_267187298(&qword_2800F6798, &protocol conformance descriptor for ORCHSchemaORCHAceCommandType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671871FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267187298(&qword_2800F6798, &protocol conformance descriptor for ORCHSchemaORCHAceCommandType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267187298(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHAceCommandType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHASRBridgeContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F67A0, 0x277D59590);
  sub_266ECAF2C(&qword_2800F67A8, &qword_2800F67A0, 0x277D59590, &protocol conformance descriptor for ORCHSchemaORCHASRCallStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F67B0, 0x277D59580);
  sub_266ECAF2C(&qword_2800F67B8, &qword_2800F67B0, 0x277D59580, &protocol conformance descriptor for ORCHSchemaORCHASRCallEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F67C0, 0x277D59588);
  sub_266ECAF2C(&qword_2800F67C8, &qword_2800F67C0, 0x277D59588, &protocol conformance descriptor for ORCHSchemaORCHASRCallFailed);
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

uint64_t sub_2671877F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267187858(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHASRCallEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267187B44(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267187BA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267187C0C()
{
  result = qword_2800F67B8;
  if (!qword_2800F67B8)
  {
    sub_267187C64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F67B8);
  }

  return result;
}

unint64_t sub_267187C64()
{
  result = qword_2800F67B0;
  if (!qword_2800F67B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F67B0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHASRCallFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x726F727265, 0xE500000000000000);
  return v8(v10, 0);
}

uint64_t sub_267187EF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267187F5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267187FC0()
{
  result = qword_2800F67C8;
  if (!qword_2800F67C8)
  {
    sub_267188018();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F67C8);
  }

  return result;
}

unint64_t sub_267188018()
{
  result = qword_2800F67C0;
  if (!qword_2800F67C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F67C0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHASRCallStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHSpeechTaskType(0);
  sub_2671884B8(&qword_2800F67E0, type metadata accessor for ORCHSchemaORCHSpeechTaskType, &protocol conformance descriptor for ORCHSchemaORCHSpeechTaskType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x657079546B736174, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_267188224(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHSpeechTaskType(0);
  sub_2671884B8(&qword_2800F67E0, type metadata accessor for ORCHSchemaORCHSpeechTaskType, &protocol conformance descriptor for ORCHSchemaORCHSpeechTaskType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x657079546B736174, 0xE800000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671883AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267188410(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671884B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267188500()
{
  result = qword_2800F67A0;
  if (!qword_2800F67A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F67A0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHASRPowerContextPolicy.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x800000026746D3C0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026746D3F0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x800000026746D420, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000023, 0x800000026746D450, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x800000026746D480, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267188844(uint64_t a1)
{
  v2 = sub_267188948(&qword_2800F67F0, &protocol conformance descriptor for ORCHSchemaORCHASRPowerContextPolicy);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671888AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267188948(&qword_2800F67F0, &protocol conformance descriptor for ORCHSchemaORCHASRPowerContextPolicy);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267188948(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHASRPowerContextPolicy(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHAssetSetsReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F67F8, 0x277D5B1D8);
  sub_266ECAF2C(&qword_2800F6800, &qword_2800F67F8, 0x277D5B1D8, &protocol conformance descriptor for UAFSchemaUAFAssetSet);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7465737341666175, 0xEC00000073746553);
  return v5(v7, 0);
}

uint64_t sub_267188B68(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F67F8, 0x277D5B1D8);
  sub_266ECAF2C(&qword_2800F6800, &qword_2800F67F8, 0x277D5B1D8, &protocol conformance descriptor for UAFSchemaUAFAssetSet);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x7465737341666175, 0xEC00000073746553);
  return v5(v7, 0);
}

uint64_t sub_267188D0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267188D70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHAssetsReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798, &protocol conformance descriptor for SISchemaAsset);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x737465737361, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267188FE4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798, &protocol conformance descriptor for SISchemaAsset);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x737465737361, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_26718917C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671891E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHAssetType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026746D540, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x800000026746D570, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000010, 0x800000026746D590, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x800000026746D5B0, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x800000026746D5D0, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000016, 0x800000026746D5F0, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_2671895EC(uint64_t a1)
{
  v2 = sub_2671896F0(&qword_2800F6828, &protocol conformance descriptor for ORCHSchemaORCHAssetType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267189654(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671896F0(&qword_2800F6828, &protocol conformance descriptor for ORCHSchemaORCHAssetType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671896F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHAssetType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHAssistantDaemonLaunchMetadataReported.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v18[2] = a1;
  sub_26738119C();
  v19 = "chMetadataReported";
  v9 = *MEMORY[0x277D3E510];
  v20 = *(v3 + 104);
  v20(v5, v9, v2);
  v18[1] = v3 + 104;
  v21[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v18[3] = v11 + 56;
  v12(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, v19 | 0x8000000000000000);
  v13(v21, 0);
  v19 = "pawnTimestampInNs";
  v14 = v20;
  v20(v5, v9, v2);
  v21[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000022, v19 | 0x8000000000000000);
  v15(v21, 0);
  v14(v5, *MEMORY[0x277D3E4E8], v2);
  v21[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x5274737269467369, 0xEE00747365757165);
  return v16(v21, 0);
}

uint64_t sub_267189B50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267189BB4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267189C18()
{
  result = qword_2800F6830;
  if (!qword_2800F6830)
  {
    sub_267189C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6830);
  }

  return result;
}

unint64_t sub_267189C70()
{
  result = qword_2800F6838;
  if (!qword_2800F6838)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6838);
  }

  return result;
}

uint64_t static ORCHSchemaORCHAudioTopologyReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for ORCHSchemaORCHDevicesAudioTopology(0);
  sub_26718A0FC(&qword_2800F6840, type metadata accessor for ORCHSchemaORCHDevicesAudioTopology, &protocol conformance descriptor for ORCHSchemaORCHDevicesAudioTopology);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x706F546F69647561, 0xED000079676F6C6FLL);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x72656461654C7369, 0xE800000000000000);
  return v10(v14, 0);
}

uint64_t sub_267189FF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718A054(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26718A0FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26718A144()
{
  result = qword_2800F6850;
  if (!qword_2800F6850)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6850);
  }

  return result;
}

uint64_t static ORCHSchemaORCHBlackboardUseCaseProfile.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x800000026746D740, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x800000026746D770, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x800000026746D7A0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x800000026746D7D0, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x800000026746D800, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000026, 0x800000026746D830, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_26718A4F8(uint64_t a1)
{
  v2 = sub_26718A5FC(&qword_2800F6860, &protocol conformance descriptor for ORCHSchemaORCHBlackboardUseCaseProfile);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26718A560(uint64_t a1, uint64_t a2)
{
  v4 = sub_26718A5FC(&qword_2800F6860, &protocol conformance descriptor for ORCHSchemaORCHBlackboardUseCaseProfile);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26718A5FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHBlackboardUseCaseProfile(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHBluetoothState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026746D890, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x800000026746D8B0, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x800000026746D8D0, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001FLL, 0x800000026746D8F0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x800000026746D910, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x800000026746D930, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001DLL, 0x800000026746D950, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26718AA18(uint64_t a1)
{
  v2 = sub_26718AB1C(&qword_2800F6870, &protocol conformance descriptor for ORCHSchemaORCHBluetoothState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26718AA80(uint64_t a1, uint64_t a2)
{
  v4 = sub_26718AB1C(&qword_2800F6870, &protocol conformance descriptor for ORCHSchemaORCHBluetoothState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26718AB1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHBluetoothState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHCandidateRequestCancelled.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26718ADA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718AE0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26718AE70()
{
  result = qword_2800F6878;
  if (!qword_2800F6878)
  {
    sub_26718AEC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6878);
  }

  return result;
}

unint64_t sub_26718AEC8()
{
  result = qword_2800F6880;
  if (!qword_2800F6880)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6880);
  }

  return result;
}

uint64_t static ORCHSchemaORCHCandidateRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20 = sub_26738118C();
  v1 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v19 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6888, 0x277D59608);
  sub_266ECAF2C(&qword_2800F6890, &qword_2800F6888, 0x277D59608, &protocol conformance descriptor for ORCHSchemaORCHCandidateRequestStarted);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x64657472617473, 0xE700000000000000);
  v8(v21, 0);
  sub_266ECB294(0, &qword_2800F6880, 0x277D595F8);
  sub_266ECAF2C(&qword_2800F6878, &qword_2800F6880, 0x277D595F8, &protocol conformance descriptor for ORCHSchemaORCHCandidateRequestCancelled);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v19;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x656C6C65636E6163, 0xE900000000000064);
  v10(v21, 0);
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
  (*(v1 + 32))(v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17, v9, v20);
  return v11(v21, 0);
}

uint64_t sub_26718B364(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718B3C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHCandidateRequestStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHCandidateRequestType(0);
  sub_26718B8D0(&qword_2800F68A8, type metadata accessor for ORCHSchemaORCHCandidateRequestType, &protocol conformance descriptor for ORCHSchemaORCHCandidateRequestType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x5474736575716572, 0xEB00000000657079);
  return v5(v7, 0);
}

uint64_t sub_26718B634(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHCandidateRequestType(0);
  sub_26718B8D0(&qword_2800F68A8, type metadata accessor for ORCHSchemaORCHCandidateRequestType, &protocol conformance descriptor for ORCHSchemaORCHCandidateRequestType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x5474736575716572, 0xEB00000000657079);
  return v5(v7, 0);
}

uint64_t sub_26718B7C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718B828(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26718B8D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26718B918()
{
  result = qword_2800F6888;
  if (!qword_2800F6888)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6888);
  }

  return result;
}

uint64_t static ORCHSchemaORCHCandidateRequestType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026746DA70, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000036, 0x800000026746DAA0, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000029, 0x800000026746DAE0, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x800000026746DB10, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000032, 0x800000026746DB40, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000032, 0x800000026746DB80, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000034, 0x800000026746DBC0, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_26718BD3C(uint64_t a1)
{
  v2 = sub_26718BE40(&qword_2800F68B0, &protocol conformance descriptor for ORCHSchemaORCHCandidateRequestType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26718BDA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26718BE40(&qword_2800F68B0, &protocol conformance descriptor for ORCHSchemaORCHCandidateRequestType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26718BE40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHCandidateRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHCDMBridgeContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F68B8, 0x277D595F0);
  sub_266ECAF2C(&qword_2800F68C0, &qword_2800F68B8, 0x277D595F0, &protocol conformance descriptor for ORCHSchemaORCHCDMRequestStarted);
  sub_26738121C();
  v6 = sub_26738116C();
  v25 = *(v6 - 8);
  v7 = *(v25 + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v30, 0);
  sub_266ECB294(0, &qword_2800F68C8, 0x277D595E0);
  sub_266ECAF2C(&qword_2800F68D0, &qword_2800F68C8, 0x277D595E0, &protocol conformance descriptor for ORCHSchemaORCHCDMRequestEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v30, 0);
  sub_266ECB294(0, &qword_2800F68D8, 0x277D595E8);
  sub_266ECAF2C(&qword_2800F68E0, &qword_2800F68D8, 0x277D595E8, &protocol conformance descriptor for ORCHSchemaORCHCDMRequestFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v30, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6449707274, 0xE500000000000000);
  v11(v30, 0);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x6575716552627573, 0xEC00000064497473);
  v12(v30, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v29, 0x6575716552627573, 0xEC00000064497473);
  if (!(*(v25 + 48))(v15, 1, v6))
  {
    sub_266ECB128(&unk_28788B2A8);
    sub_26738115C();
  }

  (v14)(v29, 0);
  v13(v30, 0);
  v16 = v26;
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
  (*(v27 + 32))(v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, v16, v28);
  return v17(v30, 0);
}

uint64_t sub_26718C590(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718C5F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHCDMRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for ORCHSchemaORCHCDMResponseStatus(0);
  sub_26718CAC8(&qword_2800F68F8, type metadata accessor for ORCHSchemaORCHCDMResponseStatus, &protocol conformance descriptor for ORCHSchemaORCHCDMResponseStatus);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x737574617473, 0xE600000000000000);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x800000026746DC60);
  return v10(v14, 0);
}

uint64_t sub_26718C9BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718CA20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26718CAC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26718CB10()
{
  result = qword_2800F68C8;
  if (!qword_2800F68C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F68C8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHCDMRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v17[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v17 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E4E8], v1);
  v19[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0x737473697865, 0xE600000000000000);
  if (!(*(v9 + 48))(v14, 1, v8))
  {
    sub_266ECB128(&unk_28788B2D8);
    sub_26738115C();
  }

  (v13)(v18, 0);
  v12(v19, 0);
  type metadata accessor for ORCHSchemaORCHCDMRequestFailureReason(0);
  sub_26718D028(&qword_2800F6900, type metadata accessor for ORCHSchemaORCHCDMRequestFailureReason, &protocol conformance descriptor for ORCHSchemaORCHCDMRequestFailureReason);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F73616572, 0xE600000000000000);
  return v15(v19, 0);
}

uint64_t sub_26718CF1C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718CF80(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26718D028(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26718D070()
{
  result = qword_2800F68D8;
  if (!qword_2800F68D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F68D8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHCDMRequestFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x800000026746DCF0, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x800000026746DD20, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_26718D260(uint64_t a1)
{
  v2 = sub_26718D364(&qword_2800F6908, &protocol conformance descriptor for ORCHSchemaORCHCDMRequestFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26718D2C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26718D364(&qword_2800F6908, &protocol conformance descriptor for ORCHSchemaORCHCDMRequestFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26718D364(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHCDMRequestFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHCDMRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26718D5F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26718D654(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26718D6B8()
{
  result = qword_2800F68C0;
  if (!qword_2800F68C0)
  {
    sub_26718D710();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F68C0);
  }

  return result;
}

unint64_t sub_26718D710()
{
  result = qword_2800F68B8;
  if (!qword_2800F68B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F68B8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHCDMResponseStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026746DDB0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x800000026746DDD0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x800000026746DDF0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26718D974(uint64_t a1)
{
  v2 = sub_26718DA78(&qword_2800F6910, &protocol conformance descriptor for ORCHSchemaORCHCDMResponseStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26718D9DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26718DA78(&qword_2800F6910, &protocol conformance descriptor for ORCHSchemaORCHCDMResponseStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26718DA78(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHCDMResponseStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v70 = *(v4 - 8);
  v71 = v4;
  MEMORY[0x28223BE20](v4);
  v69 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v66 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6918, 0x277D59618);
  sub_266ECAF2C(&qword_2800F6920, &qword_2800F6918, 0x277D59618, &protocol conformance descriptor for ORCHSchemaORCHClientEventMetadata);
  sub_26738120C();
  v9 = sub_26738116C();
  v68 = *(v9 - 8);
  v10 = v68 + 56;
  v11 = *(v68 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v12(v74, 0);
  sub_266ECB294(0, &qword_2800F6928, 0x277D597D8);
  sub_266ECAF2C(&qword_2800F6930, &qword_2800F6928, 0x277D597D8, &protocol conformance descriptor for ORCHSchemaORCHResourceUtilizationMetadata);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x800000026746DE50);
  v13(v74, 0);
  sub_266ECB294(0, &qword_2800F6938, 0x277D597B0);
  sub_266ECAF2C(&qword_2800F6940, &qword_2800F6938, 0x277D597B0, &protocol conformance descriptor for ORCHSchemaORCHRequestContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x4374736575716572, 0xEE00747865746E6FLL);
  v14(v74, 0);
  sub_266ECB294(0, &qword_2800F67D8, 0x277D59578);
  sub_266ECAF2C(&qword_2800F67D0, &qword_2800F67D8, 0x277D59578, &protocol conformance descriptor for ORCHSchemaORCHASRBridgeContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026746DE70);
  v15(v74, 0);
  sub_266ECB294(0, &qword_2800F68F0, 0x277D595D8);
  sub_266ECAF2C(&qword_2800F68E8, &qword_2800F68F0, 0x277D595D8, &protocol conformance descriptor for ORCHSchemaORCHCDMBridgeContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026746DE90);
  v16(v74, 0);
  sub_266ECB294(0, &qword_2800F6948, 0x277D59650);
  sub_266ECAF2C(&qword_2800F6950, &qword_2800F6948, 0x277D59650, &protocol conformance descriptor for ORCHSchemaORCHExecutionBridgeContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026746DEB0);
  v17(v74, 0);
  sub_266ECB294(0, &qword_2800F6958, 0x277D597F8);
  sub_266ECAF2C(&qword_2800F6960, &qword_2800F6958, 0x277D597F8, &protocol conformance descriptor for ORCHSchemaORCHServerFallbackContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026746DED0);
  v18(v74, 0);
  sub_266ECB294(0, &qword_2800F6968, 0x277D59670);
  sub_266ECAF2C(&qword_2800F6970, &qword_2800F6968, 0x277D59670, &protocol conformance descriptor for ORCHSchemaORCHFlowOutputSubmitted);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026746DEF0);
  v19(v74, 0);
  sub_266ECB294(0, &qword_2800F6978, 0x277D597E0);
  sub_266ECAF2C(&qword_2800F6980, &qword_2800F6978, 0x277D597E0, &protocol conformance descriptor for ORCHSchemaORCHResultCandidateReceived);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x6143746C75736572, 0xEF6574616469646ELL);
  v20(v74, 0);
  sub_266ECB294(0, &qword_2800F6988, 0x277D597E8);
  sub_266ECAF2C(&qword_2800F6990, &qword_2800F6988, 0x277D597E8, &protocol conformance descriptor for ORCHSchemaORCHResultSelected);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x6553746C75736572, 0xEE0064657463656CLL);
  v21(v74, 0);
  sub_266ECB294(0, &qword_2800F6998, 0x277D59620);
  sub_266ECAF2C(&qword_2800F69A0, &qword_2800F6998, 0x277D59620, &protocol conformance descriptor for ORCHSchemaORCHConversationContextSubmitted);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026746DF10);
  v22(v74, 0);
  sub_266ECB294(0, &qword_2800F6820, 0x277D595C0);
  sub_266ECAF2C(&qword_2800F6818, &qword_2800F6820, 0x277D595C0, &protocol conformance descriptor for ORCHSchemaORCHAssetsReported);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C62616C69617661, 0xEF73746573734165);
  v23(v74, 0);
  sub_266ECB294(0, &qword_2800F69A8, 0x277D59628);
  sub_266ECAF2C(&qword_2800F69B0, &qword_2800F69A8, 0x277D59628, &protocol conformance descriptor for ORCHSchemaORCHDeviceDynamicContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026746DF30);
  v24(v74, 0);
  sub_266ECB294(0, &qword_2800F69B8, 0x277D59770);
  sub_266ECAF2C(&qword_2800F69C0, &qword_2800F69B8, 0x277D59770, &protocol conformance descriptor for ORCHSchemaORCHPommesBridgeContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026746DF50);
  v25(v74, 0);
  sub_266ECB294(0, &qword_2800F69C8, 0x277D596C0);
  sub_266ECAF2C(&qword_2800F69D0, &qword_2800F69C8, 0x277D596C0, &protocol conformance descriptor for ORCHSchemaORCHMUXBridgeContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026746DF70);
  v26(v74, 0);
  sub_266ECB294(0, &qword_2800F69D8, 0x277D596F8);
  sub_266ECAF2C(&qword_2800F69E0, &qword_2800F69D8, 0x277D596F8, &protocol conformance descriptor for ORCHSchemaORCHMultiUserResultCandidateReceived);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026746DF90);
  v27(v74, 0);
  sub_266ECB294(0, &qword_2800F69E8, 0x277D59700);
  sub_266ECAF2C(&qword_2800F69F0, &qword_2800F69E8, 0x277D59700, &protocol conformance descriptor for ORCHSchemaORCHMultiUserResultCandidateSelected);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x800000026746DFB0);
  v28(v74, 0);
  sub_266ECB294(0, &qword_2800F6788, 0x277D59598);
  sub_266ECAF2C(&qword_2800F6780, &qword_2800F6788, 0x277D59598, &protocol conformance descriptor for ORCHSchemaORCHAceCommandContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026746DFD0);
  v29(v74, 0);
  sub_266ECB294(0, &qword_2800F69F8, 0x277D59868);
  sub_266ECAF2C(&qword_2800F6A00, &qword_2800F69F8, 0x277D59868, &protocol conformance descriptor for ORCHSchemaORCHTRPFinalized);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C616E6946707274, 0xEC00000064657A69);
  v30(v74, 0);
  sub_266ECB294(0, &qword_2800F6A08, 0x277D597C8);
  sub_266ECAF2C(&qword_2800F6A10, &qword_2800F6A08, 0x277D597C8, &protocol conformance descriptor for ORCHSchemaORCHRequestMitigated);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026746DFF0);
  v31(v74, 0);
  sub_266ECB294(0, &qword_2800F6A18, 0x277D59768);
  sub_266ECAF2C(&qword_2800F6A20, &qword_2800F6A18, 0x277D59768, &protocol conformance descriptor for ORCHSchemaORCHNLV3ServerFallbackDeprecated);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x800000026746E010);
  v32(v74, 0);
  sub_266ECB294(0, &qword_2800F6A28, 0x277D59870);
  sub_266ECAF2C(&qword_2800F6A30, &qword_2800F6A28, 0x277D59870, &protocol conformance descriptor for ORCHSchemaORCHUIActivationContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026746E030);
  v33(v74, 0);
  sub_266ECB294(0, &qword_2800F6A38, 0x277D59860);
  sub_266ECAF2C(&qword_2800F6A40, &qword_2800F6A38, 0x277D59860, &protocol conformance descriptor for ORCHSchemaORCHTRPCandidateReceived);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026746E050);
  v34(v74, 0);
  sub_266ECB294(0, &qword_2800F6A48, 0x277D59678);
  sub_266ECAF2C(&qword_2800F6A50, &qword_2800F6A48, 0x277D59678, &protocol conformance descriptor for ORCHSchemaORCHIdentityBridgeRequestContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x800000026746E070);
  v35(v74, 0);
  sub_266ECB294(0, &qword_2800F6810, 0x277D595B8);
  sub_266ECAF2C(&qword_2800F6808, &qword_2800F6810, 0x277D595B8, &protocol conformance descriptor for ORCHSchemaORCHAssetSetsReported);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026746E090);
  v36(v74, 0);
  sub_266ECB294(0, &qword_2800F68A0, 0x277D59600);
  sub_266ECAF2C(&qword_2800F6898, &qword_2800F68A0, 0x277D59600, &protocol conformance descriptor for ORCHSchemaORCHCandidateRequestContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v37 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x800000026746E0B0);
  v37(v74, 0);
  sub_266ECB294(0, &qword_2800F6A58, 0x277D597A0);
  sub_266ECAF2C(&qword_2800F6A60, &qword_2800F6A58, 0x277D597A0, &protocol conformance descriptor for ORCHSchemaORCHPowerContextPolicyReported);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v38 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x800000026746E0D0);
  v38(v74, 0);
  sub_266ECB294(0, &qword_2800F6A68, 0x277D59630);
  sub_266ECAF2C(&qword_2800F6A70, &qword_2800F6A68, 0x277D59630, &protocol conformance descriptor for ORCHSchemaORCHExecuteOnRemoteRequestContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v39 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001DLL, 0x800000026746E0F0);
  v39(v74, 0);
  sub_266ECB294(0, &qword_2800F6838, 0x277D595C8);
  sub_266ECAF2C(&qword_2800F6830, &qword_2800F6838, 0x277D595C8, &protocol conformance descriptor for ORCHSchemaORCHAssistantDaemonLaunchMetadataReported);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v40 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, 0x800000026746E110);
  v40(v74, 0);
  sub_266ECB294(0, &qword_2800F6A78, 0x277D59690);
  sub_266ECAF2C(&qword_2800F6A80, &qword_2800F6A78, 0x277D59690, &protocol conformance descriptor for ORCHSchemaORCHIntelligenceFlowQuerySent);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v41 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026746E140);
  v41(v74, 0);
  sub_266ECB294(0, &qword_2800F6A88, 0x277D59838);
  sub_266ECAF2C(&qword_2800F6A90, &qword_2800F6A88, 0x277D59838, &protocol conformance descriptor for ORCHSchemaORCHSubRequestContext);
  sub_26738121C();
  v11(v8, 0, 1, v9);
  v42 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026746E160);
  v42(v74, 0);
  sub_266ECB294(0, &qword_2800F6748, 0x277D59570);
  sub_266ECAF2C(&qword_2800F6740, &qword_2800F6748, 0x277D59570, &protocol conformance descriptor for ORCHSchemaNLRouterRewrittenUtteranceTier1);
  v66[1] = a1;
  sub_26738121C();
  v67 = v11;
  v66[0] = v10;
  v11(v8, 0, 1, v9);
  v43 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x800000026746E180);
  v43(v74, 0);
  v72 = a2;
  v44 = sub_2673811AC();
  v45 = sub_266ECB6CC(v73, 0xD000000000000018, 0x800000026746E180);
  if (!(*(v68 + 48))(v46, 1, v9))
  {
    sub_266ECB128(&unk_28788B300);
    sub_26738115C();
  }

  (v45)(v73, 0);
  v44(v74, 0);
  sub_266ECB294(0, &qword_2800F6A98, 0x277D59718);
  sub_266ECAF2C(&qword_2800F6AA0, &qword_2800F6A98, 0x277D59718, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeContext);
  sub_26738121C();
  v47 = v67;
  v67(v8, 0, 1, v9);
  v48 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026746E1A0);
  v48(v74, 0);
  sub_266ECB294(0, &qword_2800F6AA8, 0x277D59818);
  sub_266ECAF2C(&qword_2800F6AB0, &qword_2800F6AA8, 0x277D59818, &protocol conformance descriptor for ORCHSchemaORCHShimToolContext);
  sub_26738121C();
  v47(v8, 0, 1, v9);
  v49 = sub_2673811AC();
  sub_266EC637C(v8, 0x6C6F6F546D696873, 0xEF747865746E6F43);
  v49(v74, 0);
  sub_266ECB294(0, &qword_2800F6AB8, 0x277D596B8);
  sub_266ECAF2C(&qword_2800F6AC0, &qword_2800F6AB8, 0x277D596B8, &protocol conformance descriptor for ORCHSchemaORCHIntelligenceFlowSubRequestFallback);
  sub_26738121C();
  v47(v8, 0, 1, v9);
  v50 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026746E1C0);
  v50(v74, 0);
  sub_266ECB294(0, &qword_2800F6AC8, 0x277D59740);
  sub_266ECAF2C(&qword_2800F6AD0, &qword_2800F6AC8, 0x277D59740, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeSubComponentContext);
  sub_26738121C();
  v47(v8, 0, 1, v9);
  v51 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x800000026746E1E0);
  v51(v74, 0);
  sub_266ECB294(0, &qword_2800F6AD8, 0x277D59888);
  sub_266ECAF2C(&qword_2800F6AE0, &qword_2800F6AD8, 0x277D59888, &protocol conformance descriptor for ORCHSchemaORCHUnsupportedLanguageDetected);
  sub_26738121C();
  v47(v8, 0, 1, v9);
  v52 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x800000026746E210);
  v52(v74, 0);
  sub_266ECB294(0, &qword_2800F6AE8, 0x277D59858);
  sub_266ECAF2C(&qword_2800F6AF0, &qword_2800F6AE8, 0x277D59858, &protocol conformance descriptor for ORCHSchemaORCHTRPCandidateCreated);
  sub_26738121C();
  v47(v8, 0, 1, v9);
  v53 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026746E230);
  v53(v74, 0);
  sub_266ECB294(0, &qword_2800F6850, 0x277D595D0);
  sub_266ECAF2C(&qword_2800F6848, &qword_2800F6850, 0x277D595D0, &protocol conformance descriptor for ORCHSchemaORCHAudioTopologyReported);
  sub_26738121C();
  v47(v8, 0, 1, v9);
  v54 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267442E50);
  v54(v74, 0);
  sub_266ECB294(0, &qword_2800F6AF8, 0x277D59698);
  sub_266ECAF2C(&qword_2800F6B00, &qword_2800F6AF8, 0x277D59698, &protocol conformance descriptor for ORCHSchemaORCHIntelligenceFlowRequestContext);
  sub_26738121C();
  v47(v8, 0, 1, v9);
  v55 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x800000026746E250);
  v55(v74, 0);
  sub_266ECB294(0, &qword_2800F6B08, 0x277D596E8);
  sub_266ECAF2C(&qword_2800F6B10, &qword_2800F6B08, 0x277D596E8, &protocol conformance descriptor for ORCHSchemaORCHMUXUserSessionState);
  sub_26738121C();
  v47(v8, 0, 1, v9);
  v56 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026746E270);
  v56(v74, 0);
  v57 = v69;
  sub_26738117C();
  v58 = sub_2673811BC();
  v60 = v59;
  v61 = *v59;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v60 = v61;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v61 = sub_266ECAD54(0, v61[2] + 1, 1, v61);
    *v60 = v61;
  }

  v64 = v61[2];
  v63 = v61[3];
  if (v64 >= v63 >> 1)
  {
    v61 = sub_266ECAD54((v63 > 1), v64 + 1, 1, v61);
    *v60 = v61;
  }

  v61[2] = v64 + 1;
  (*(v70 + 32))(v61 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v64, v57, v71);
  v58(v74, 0);
  sub_266ECB128(&unk_28788B328);
  return sub_2673811CC();
}

uint64_t sub_2671900A8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267190140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26719020C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267190270(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671902D0(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F6B18, &qword_2800F1E80, 0x277D59610, &protocol conformance descriptor for ORCHSchemaORCHClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F6B20, &qword_2800F1E80, 0x277D59610, &protocol conformance descriptor for ORCHSchemaORCHClientEvent);
  result = sub_266ECAF2C(&qword_2800F6B28, &qword_2800F1E80, 0x277D59610, &protocol conformance descriptor for ORCHSchemaORCHClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static ORCHSchemaORCHClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v4, 0x4974736575716572, 0xE900000000000064);
  v8(v19, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v18, 0x4974736575716572, 0xE900000000000064);
  if (!(*(v6 + 48))(v11, 1, v5))
  {
    sub_266ECB128(&unk_28788B360);
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

uint64_t sub_2671907B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719081C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHConversationContextSubmitted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "versationContextSubmitted";
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026746E330);
  return v14(v19, 0);
}

uint64_t sub_267190BF4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267190C58(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267190CBC()
{
  result = qword_2800F69A0;
  if (!qword_2800F69A0)
  {
    sub_267190D14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F69A0);
  }

  return result;
}

unint64_t sub_267190D14()
{
  result = qword_2800F6998;
  if (!qword_2800F6998)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6998);
  }

  return result;
}

uint64_t static ORCHSchemaORCHDeviceDynamicContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v48 = sub_26738113C();
  v51 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDeviceThermalState(0);
  sub_267191AB0(&qword_2800F0638, type metadata accessor for SISchemaDeviceThermalState, &protocol conformance descriptor for SISchemaDeviceThermalState);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x536C616D72656874, 0xEC00000065746174);
  v11(v53, 0);
  type metadata accessor for ORCHSchemaORCHMotionActivity(0);
  sub_267191AB0(&qword_2800F66A8, type metadata accessor for ORCHSchemaORCHMotionActivity, &protocol conformance descriptor for ORCHSchemaORCHMotionActivity);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x63416E6F69746F6DLL, 0xEE00797469766974);
  v12(v53, 0);
  v13 = *MEMORY[0x277D3E540];
  v14 = *(v51 + 104);
  v51 += 104;
  v47 = v14;
  v14(v4, v13, v48);
  v53[0] = 1;
  v44 = v4;
  sub_26738114C();
  v45 = v10;
  v49 = v9 + 56;
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000023, 0x800000026746E390);
  v15(v53, 0);
  v46 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v52, 0xD000000000000023, 0x800000026746E390);
  v18 = *(v9 + 48);
  v43 = v8;
  v40 = v18;
  v41 = v9 + 48;
  if (!v18(v19, 1, v8))
  {
    sub_266ECB128(&unk_28788B390);
    sub_26738115C();
  }

  (v17)(v52, 0);
  v16(v53, 0);
  v21 = v44;
  v42 = *MEMORY[0x277D3E4E8];
  v20 = v42;
  v22 = v48;
  v47(v44, v42, v48);
  v53[0] = 1;
  sub_26738114C();
  v23 = v43;
  v45(v7, 0, 1, v43);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x800000026746A700);
  v24(v53, 0);
  v47(v21, v20, v22);
  v53[0] = 1;
  sub_26738114C();
  v25 = v45;
  v45(v7, 0, 1, v23);
  v26 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x800000026746A720);
  v26(v53, 0);
  v39 = "headGesturesEnabled";
  type metadata accessor for ORCHSchemaORCHHeadGestureMapping(0);
  sub_267191AB0(&qword_2800F6230, type metadata accessor for ORCHSchemaORCHHeadGestureMapping, &protocol conformance descriptor for ORCHSchemaORCHHeadGestureMapping);
  sub_26738120C();
  v25(v7, 0, 1, v23);
  v27 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, v39 | 0x8000000000000000);
  v27(v53, 0);
  sub_26738120C();
  v25(v7, 0, 1, v23);
  v28 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x800000026746A760);
  v28(v53, 0);
  v47(v44, v42, v48);
  v53[0] = 1;
  sub_26738114C();
  v29 = v23;
  v25(v7, 0, 1, v23);
  v30 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E45696669577369, 0xED000064656C6261);
  v30(v53, 0);
  type metadata accessor for ORCHSchemaORCHBluetoothState(0);
  sub_267191AB0(&qword_2800F6868, type metadata accessor for ORCHSchemaORCHBluetoothState, &protocol conformance descriptor for ORCHSchemaORCHBluetoothState);
  sub_26738120C();
  v25(v7, 0, 1, v23);
  v31 = sub_2673811AC();
  sub_266EC637C(v7, 0x746F6F7465756C62, 0xEE00657461745368);
  v31(v53, 0);
  type metadata accessor for ORCHSchemaORCHFlashlightLevel(0);
  sub_267191AB0(&qword_2800F6B30, type metadata accessor for ORCHSchemaORCHFlashlightLevel, &protocol conformance descriptor for ORCHSchemaORCHFlashlightLevel);
  sub_26738120C();
  v25(v7, 0, 1, v23);
  v32 = sub_2673811AC();
  sub_266EC637C(v7, 0x67696C6873616C66, 0xEF6C6576654C7468);
  v32(v53, 0);
  v47(v44, v42, v48);
  v53[0] = 1;
  sub_26738114C();
  v25(v7, 0, 1, v23);
  v33 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x8000000267468D30);
  v33(v53, 0);
  v34 = sub_2673811AC();
  v35 = sub_266ECB6CC(v52, 0xD000000000000010, 0x8000000267468D30);
  if (!v40(v36, 1, v29))
  {
    sub_266ECB128(&unk_28788B3B8);
    sub_26738115C();
  }

  (v35)(v52, 0);
  v34(v53, 0);
  type metadata accessor for SISchemaGenAIAgent(0);
  sub_267191AB0(&qword_2800F1A50, type metadata accessor for SISchemaGenAIAgent, &protocol conformance descriptor for SISchemaGenAIAgent);
  sub_26738122C();
  v45(v7, 0, 1, v43);
  v37 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x8000000267468DC0);
  return v37(v53, 0);
}

uint64_t sub_2671919A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267191A08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267191AB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267191AF8()
{
  result = qword_2800F69A8;
  if (!qword_2800F69A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F69A8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHDevicesAudioTopology.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x800000026746E400, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x800000026746E430, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x800000026746E450, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000028, 0x800000026746E480, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002DLL, 0x800000026746E4B0, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_267191E38(uint64_t a1)
{
  v2 = sub_267191F3C(&qword_2800F6B38, &protocol conformance descriptor for ORCHSchemaORCHDevicesAudioTopology);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267191EA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267191F3C(&qword_2800F6B38, &protocol conformance descriptor for ORCHSchemaORCHDevicesAudioTopology);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267191F3C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHDevicesAudioTopology(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHErrorCode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x800000026746E510, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x800000026746E530, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026746E550, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x800000026746E570, v16);
  *v15 = v21;

  v13(v22, 0);
  sub_266ECB128(&unk_28788B3E0);
  return sub_26738112C();
}

uint64_t sub_267192218(uint64_t a1)
{
  v2 = sub_26719231C(&qword_2800F6B48, &protocol conformance descriptor for ORCHSchemaORCHErrorCode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267192280(uint64_t a1, uint64_t a2)
{
  v4 = sub_26719231C(&qword_2800F6B48, &protocol conformance descriptor for ORCHSchemaORCHErrorCode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26719231C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHErrorCode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHErrorDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x800000026746E5C0, isUniquelyReferenced_nonNull_native);
  *v3 = v66;

  v1(v82, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x800000026746E5E0, v8);
  *v7 = v67;

  v5(v82, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x800000026746E600, v12);
  *v11 = v68;

  v9(v82, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x800000026746E620, v16);
  *v15 = v69;

  v13(v82, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x800000026746E640, v20);
  *v19 = v70;

  v17(v82, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001CLL, 0x800000026746E670, v24);
  *v23 = v71;

  v21(v82, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000018, 0x800000026746E690, v28);
  *v27 = v72;

  v25(v82, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000028, 0x800000026746E6B0, v32);
  *v31 = v73;

  v29(v82, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000029, 0x800000026746E6E0, v36);
  *v35 = v74;

  v33(v82, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000023, 0x800000026746E710, v40);
  *v39 = v75;

  v37(v82, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ALL, 0x800000026746E740, v44);
  *v43 = v76;

  v41(v82, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ALL, 0x800000026746E760, v48);
  *v47 = v77;

  v45(v82, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000019, 0x800000026746E780, v52);
  *v51 = v78;

  v49(v82, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD00000000000001DLL, 0x800000026746E7A0, v56);
  *v55 = v79;

  v53(v82, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000019, 0x800000026746E7C0, v60);
  *v59 = v80;

  v57(v82, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000016, 0x800000026746E7E0, v64);
  *v63 = v81;

  return v61(v82, 0);
}

uint64_t sub_267192B28(uint64_t a1)
{
  v2 = sub_267192C2C(&qword_2800F6B58, &protocol conformance descriptor for ORCHSchemaORCHErrorDomain);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267192B90(uint64_t a1, uint64_t a2)
{
  v4 = sub_267192C2C(&qword_2800F6B58, &protocol conformance descriptor for ORCHSchemaORCHErrorDomain);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267192C2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHExecuteOnRemoteRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F6B60, 0x277D59648);
  sub_266ECAF2C(&qword_2800F6B68, &qword_2800F6B60, 0x277D59648, &protocol conformance descriptor for ORCHSchemaORCHExecuteOnRemoteRequestStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F6B70, 0x277D59638);
  sub_266ECAF2C(&qword_2800F6B78, &qword_2800F6B70, 0x277D59638, &protocol conformance descriptor for ORCHSchemaORCHExecuteOnRemoteRequestEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F6B80, 0x277D59640);
  sub_266ECAF2C(&qword_2800F6B88, &qword_2800F6B80, 0x277D59640, &protocol conformance descriptor for ORCHSchemaORCHExecuteOnRemoteRequestFailed);
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

uint64_t sub_26719324C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671932B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHExecuteOnRemoteRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHAceCommandType(0);
  sub_2671937C0(&qword_2800F6790, type metadata accessor for ORCHSchemaORCHAceCommandType, &protocol conformance descriptor for ORCHSchemaORCHAceCommandType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x616D6D6F43656361, 0xEE0065707954646ELL);
  return v5(v7, 0);
}

uint64_t sub_267193520(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHAceCommandType(0);
  sub_2671937C0(&qword_2800F6790, type metadata accessor for ORCHSchemaORCHAceCommandType, &protocol conformance descriptor for ORCHSchemaORCHAceCommandType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x616D6D6F43656361, 0xEE0065707954646ELL);
  return v5(v7, 0);
}

uint64_t sub_2671936B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267193718(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671937C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267193808()
{
  result = qword_2800F6B70;
  if (!qword_2800F6B70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6B70);
  }

  return result;
}

uint64_t static ORCHSchemaORCHExecuteOnRemoteRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHAceCommandType(0);
  sub_267193CC0(&qword_2800F6790, type metadata accessor for ORCHSchemaORCHAceCommandType, &protocol conformance descriptor for ORCHSchemaORCHAceCommandType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x616D6D6F43656361, 0xEE0065707954646ELL);
  return v5(v7, 0);
}

uint64_t sub_267193A20(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHAceCommandType(0);
  sub_267193CC0(&qword_2800F6790, type metadata accessor for ORCHSchemaORCHAceCommandType, &protocol conformance descriptor for ORCHSchemaORCHAceCommandType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x616D6D6F43656361, 0xEE0065707954646ELL);
  return v5(v7, 0);
}

uint64_t sub_267193BB4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267193C18(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267193CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267193D08()
{
  result = qword_2800F6B80;
  if (!qword_2800F6B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6B80);
  }

  return result;
}

uint64_t static ORCHSchemaORCHExecuteOnRemoteRequestStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x616D6D6F43656361, 0xEE00656D614E646ELL);
  v10(v13, 0);
  type metadata accessor for ORCHSchemaORCHAceCommandType(0);
  sub_267194190(&qword_2800F6790, type metadata accessor for ORCHSchemaORCHAceCommandType, &protocol conformance descriptor for ORCHSchemaORCHAceCommandType);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x616D6D6F43656361, 0xEE0065707954646ELL);
  return v11(v13, 0);
}

uint64_t sub_267194084(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671940E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267194190(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671941D8()
{
  result = qword_2800F6B60;
  if (!qword_2800F6B60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6B60);
  }

  return result;
}

uint64_t static ORCHSchemaORCHExecutionBridgeContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F6B90, 0x277D59668);
  sub_266ECAF2C(&qword_2800F6B98, &qword_2800F6B90, 0x277D59668, &protocol conformance descriptor for ORCHSchemaORCHExecutionRequestReceived);
  sub_26738121C();
  v6 = sub_26738116C();
  v25 = *(v6 - 8);
  v7 = *(v25 + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v30, 0);
  sub_266ECB294(0, &qword_2800F6BA0, 0x277D59658);
  sub_266ECAF2C(&qword_2800F6BA8, &qword_2800F6BA0, 0x277D59658, &protocol conformance descriptor for ORCHSchemaORCHExecutionEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v30, 0);
  sub_266ECB294(0, &qword_2800F6BB0, 0x277D59660);
  sub_266ECAF2C(&qword_2800F6BB8, &qword_2800F6BB0, 0x277D59660, &protocol conformance descriptor for ORCHSchemaORCHExecutionFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v30, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6449707274, 0xE500000000000000);
  v11(v30, 0);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x6575716552627573, 0xEC00000064497473);
  v12(v30, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v29, 0x6575716552627573, 0xEC00000064497473);
  if (!(*(v25 + 48))(v15, 1, v6))
  {
    sub_266ECB128(&unk_28788B408);
    sub_26738115C();
  }

  (v14)(v29, 0);
  v13(v30, 0);
  v16 = v26;
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
  (*(v27 + 32))(v20 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, v16, v28);
  return v17(v30, 0);
}

uint64_t sub_267194930(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267194994(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHExecutionEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267194C80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267194CE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267194D48()
{
  result = qword_2800F6BA8;
  if (!qword_2800F6BA8)
  {
    sub_267194DA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6BA8);
  }

  return result;
}

unint64_t sub_267194DA0()
{
  result = qword_2800F6BA0;
  if (!qword_2800F6BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6BA0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHExecutionFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x727453726F727265, 0xEB00000000676E69);
  v11(v19, 0);
  type metadata accessor for ORCHSchemaORCHErrorDomain(0);
  sub_2671952EC(&qword_2800F6B50, type metadata accessor for ORCHSchemaORCHErrorDomain, &protocol conformance descriptor for ORCHSchemaORCHErrorDomain);
  sub_26738120C();
  v10(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D6F44726F727265, 0xEB000000006E6961);
  v12(v19, 0);
  v16(v4, *MEMORY[0x277D3E508], v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F43726F727265, 0xE900000000000065);
  return v13(v19, 0);
}

uint64_t sub_2671951E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267195244(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671952EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267195334()
{
  result = qword_2800F6BB0;
  if (!qword_2800F6BB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6BB0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHExecutionRequestReceived.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for ORCHSchemaORCHPreExecutionDecision(0);
  sub_267195888(&qword_2800F6BC0, type metadata accessor for ORCHSchemaORCHPreExecutionDecision, &protocol conformance descriptor for ORCHSchemaORCHPreExecutionDecision);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x800000026746E9E0);
  v9(v15, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026746EA00);
  v10(v15, 0);
  type metadata accessor for ORCHSchemaORCHRSKESource(0);
  sub_267195888(&qword_2800F6BC8, type metadata accessor for ORCHSchemaORCHRSKESource, &protocol conformance descriptor for ORCHSchemaORCHRSKESource);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x53646E616D6D6F63, 0xED0000656372756FLL);
  return v11(v15, 0);
}

uint64_t sub_26719577C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671957E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267195888(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671958D0()
{
  result = qword_2800F6B90;
  if (!qword_2800F6B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6B90);
  }

  return result;
}

uint64_t static ORCHSchemaORCHFlashlightLevel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x800000026746EA50, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x800000026746EA70, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x800000026746EA90, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x800000026746EAB0, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000018, 0x800000026746EAD0, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001BLL, 0x800000026746EAF0, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_267195C84(uint64_t a1)
{
  v2 = sub_267195D88(&qword_2800F6BD0, &protocol conformance descriptor for ORCHSchemaORCHFlashlightLevel);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267195CEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267195D88(&qword_2800F6BD0, &protocol conformance descriptor for ORCHSchemaORCHFlashlightLevel);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267195D88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHFlashlightLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHFlowOutputSubmitted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v31 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v29 = "wOutputSubmitted";
  v8 = *MEMORY[0x277D3E508];
  v30 = *(v2 + 104);
  v28 = v1;
  v30(v4, v8, v1);
  v27 = v2 + 104;
  v34[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v32 = *(v9 - 8);
  v10 = *(v32 + 56);
  v26 = v9;
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, v29 | 0x8000000000000000);
  v11(v34, 0);
  v29 = "flowOutputSubmissionId";
  v12 = *MEMORY[0x277D3E4E8];
  v13 = v1;
  v14 = v30;
  v30(v4, v12, v13);
  v34[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v29 | 0x8000000000000000);
  v15(v34, 0);
  v14(v4, v12, v28);
  v34[0] = 1;
  sub_26738114C();
  v16 = v26;
  v10(v7, 0, 1, v26);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x800000026746EB90);
  v17(v34, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v10(v7, 0, 1, v16);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x616D6D6F43656361, 0xEC0000006449646ELL);
  v18(v34, 0);
  sub_26738122C();
  v10(v7, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x4977656956656361, 0xEA00000000007364);
  v19(v34, 0);
  sub_26738120C();
  v10(v7, 0, 1, v16);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x6575716552627573, 0xEC00000064497473);
  v20(v34, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v33, 0x6575716552627573, 0xEC00000064497473);
  if (!(*(v32 + 48))(v23, 1, v16))
  {
    sub_266ECB128(&unk_28788B438);
    sub_26738115C();
  }

  (v22)(v33, 0);
  return v21(v34, 0);
}

uint64_t sub_267196480(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671964E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHHeadGestureMapping.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x800000026746EBE0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000023, 0x800000026746EC00, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x800000026746EC30, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26719679C(uint64_t a1)
{
  v2 = sub_2671968A0(&qword_2800F6BD8, &protocol conformance descriptor for ORCHSchemaORCHHeadGestureMapping);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267196804(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671968A0(&qword_2800F6BD8, &protocol conformance descriptor for ORCHSchemaORCHHeadGestureMapping);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671968A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHHeadGestureMapping(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHIdentityBridgeRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F6BE0, 0x277D59688);
  sub_266ECAF2C(&qword_2800F6BE8, &qword_2800F6BE0, 0x277D59688, &protocol conformance descriptor for ORCHSchemaORCHIdentityBridgeRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F6BF0, 0x277D59680);
  sub_266ECAF2C(&qword_2800F6BF8, &qword_2800F6BF0, 0x277D59680, &protocol conformance descriptor for ORCHSchemaORCHIdentityBridgeRequestEnded);
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

uint64_t sub_267196D30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267196D94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHIdentityBridgeRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267197080(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671970E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267197148()
{
  result = qword_2800F6BF8;
  if (!qword_2800F6BF8)
  {
    sub_2671971A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6BF8);
  }

  return result;
}

unint64_t sub_2671971A0()
{
  result = qword_2800F6BF0;
  if (!qword_2800F6BF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6BF0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHIdentityBridgeRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267197434(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267197498(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671974FC()
{
  result = qword_2800F6BE8;
  if (!qword_2800F6BE8)
  {
    sub_267197554();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6BE8);
  }

  return result;
}

unint64_t sub_267197554()
{
  result = qword_2800F6BE0;
  if (!qword_2800F6BE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6BE0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHIntelligenceFlowFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000029, 0x800000026746ED60, isUniquelyReferenced_nonNull_native);
  *v3 = v74;

  v1(v92, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003ALL, 0x800000026746ED90, v8);
  *v7 = v75;

  v5(v92, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003BLL, 0x800000026746EDD0, v12);
  *v11 = v76;

  v9(v92, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000033, 0x800000026746EE10, v16);
  *v15 = v77;

  v13(v92, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v78 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002FLL, 0x800000026746EE50, v20);
  *v19 = v78;

  v17(v92, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v79 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000034, 0x800000026746EE80, v24);
  *v23 = v79;

  v21(v92, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v80 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000031, 0x800000026746EEC0, v28);
  *v27 = v80;

  v25(v92, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v81 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000031, 0x800000026746EF00, v32);
  *v31 = v81;

  v29(v92, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000037, 0x800000026746EF40, v36);
  *v35 = v82;

  v33(v92, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000003ELL, 0x800000026746EF80, v40);
  *v39 = v83;

  v37(v92, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000032, 0x800000026746EFC0, v44);
  *v43 = v84;

  v41(v92, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000034, 0x800000026746F000, v48);
  *v47 = v85;

  v45(v92, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000003FLL, 0x800000026746F040, v52);
  *v51 = v86;

  v49(v92, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000032, 0x800000026746F080, v56);
  *v55 = v87;

  v53(v92, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000030, 0x800000026746F0C0, v60);
  *v59 = v88;

  v57(v92, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000031, 0x800000026746F100, v64);
  *v63 = v89;

  v61(v92, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000039, 0x800000026746F140, v68);
  *v67 = v90;

  v65(v92, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000032, 0x800000026746F180, v72);
  *v71 = v91;

  return v69(v92, 0);
}

uint64_t sub_267197E50(uint64_t a1)
{
  v2 = sub_267197F54(&qword_2800F6C08, &protocol conformance descriptor for ORCHSchemaORCHIntelligenceFlowFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267197EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_267197F54(&qword_2800F6C08, &protocol conformance descriptor for ORCHSchemaORCHIntelligenceFlowFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267197F54(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHIntelligenceFlowFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHIntelligenceFlowQuerySent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v7 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v33 = a1;
  v30 = v7;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v29 = *(v9 + 56);
  v29(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x5172656E6E616C70, 0xEE00644979726575);
  v10(v35, 0);
  v31 = a2;
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v34, 0x5172656E6E616C70, 0xEE00644979726575);
  v13 = *(v9 + 48);
  v32 = v9 + 48;
  v15 = v13(v14, 1, v8);
  v28 = v13;
  if (!v15)
  {
    sub_266ECB128(&unk_28788B468);
    sub_26738115C();
  }

  (v12)(v34, 0);
  v11(v35, 0);
  sub_26738120C();
  v16 = v29;
  v29(v6, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449707274, 0xE500000000000000);
  v17(v35, 0);
  sub_26738120C();
  v16(v6, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x6575716552627573, 0xEC00000064497473);
  v18(v35, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v34, 0x6575716552627573, 0xEC00000064497473);
  v21 = v28;
  if (!v28(v22, 1, v8))
  {
    sub_266ECB128(&unk_28788B490);
    sub_26738115C();
  }

  (v20)(v34, 0);
  v19(v35, 0);
  sub_26738120C();
  v29(v6, 0, 1, v8);
  v23 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496563617274, 0xE700000000000000);
  v23(v35, 0);
  v24 = sub_2673811AC();
  v25 = sub_266ECB6CC(v34, 0x64496563617274, 0xE700000000000000);
  if (!v21(v26, 1, v8))
  {
    sub_266ECB128(&unk_28788B4C0);
    sub_26738115C();
  }

  (v25)(v34, 0);
  return v24(v35, 0);
}

uint64_t sub_267198524(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267198588(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHIntelligenceFlowRequestContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a1;
  v3 = sub_26738118C();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x28223BE20](v3);
  v36 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v35 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449707274, 0xE500000000000000);
  v12(v43, 0);
  v35[1] = v8;
  sub_26738120C();
  v39 = v11;
  v11(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6575716552627573, 0xEC00000064497473);
  v13(v43, 0);
  v40 = a2;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v42, 0x6575716552627573, 0xEC00000064497473);
  v16 = *(v10 + 48);
  if (!v16(v17, 1, v9))
  {
    sub_266ECB128(&unk_28788B4F0);
    sub_26738115C();
  }

  (v15)(v42, 0);
  v14(v43, 0);
  sub_26738120C();
  v39(v7, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496563617274, 0xE700000000000000);
  v18(v43, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v42, 0x64496563617274, 0xE700000000000000);
  if (!v16(v21, 1, v9))
  {
    sub_266ECB128(&unk_28788B520);
    sub_26738115C();
  }

  (v20)(v42, 0);
  v19(v43, 0);
  sub_266ECB294(0, &qword_2800F6C10, 0x277D596B0);
  sub_266ECAF2C(&qword_2800F6C18, &qword_2800F6C10, 0x277D596B0, &protocol conformance descriptor for ORCHSchemaORCHIntelligenceFlowRequestStarted);
  sub_26738121C();
  v22 = v39;
  v39(v7, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x800000026741EB30);
  v23(v43, 0);
  sub_266ECB294(0, &qword_2800F6C20, 0x277D596A8);
  sub_266ECAF2C(&qword_2800F6C28, &qword_2800F6C20, 0x277D596A8, &protocol conformance descriptor for ORCHSchemaORCHIntelligenceFlowRequestFailed);
  sub_26738121C();
  v22(v7, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x64656C696166, 0xE600000000000000);
  v24(v43, 0);
  sub_266ECB294(0, &qword_2800F6C30, 0x277D596A0);
  sub_266ECAF2C(&qword_2800F6C38, &qword_2800F6C30, 0x277D596A0, &protocol conformance descriptor for ORCHSchemaORCHIntelligenceFlowRequestEnded);
  sub_26738121C();
  v22(v7, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0x6465646E65, 0xE500000000000000);
  v25(v43, 0);
  v26 = v36;
  sub_26738117C();
  v27 = sub_2673811BC();
  v29 = v28;
  v30 = *v28;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v29 = v30;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v30 = sub_266ECAD54(0, v30[2] + 1, 1, v30);
    *v29 = v30;
  }

  v33 = v30[2];
  v32 = v30[3];
  if (v33 >= v32 >> 1)
  {
    v30 = sub_266ECAD54((v32 > 1), v33 + 1, 1, v30);
    *v29 = v30;
  }

  v30[2] = v33 + 1;
  (*(v37 + 32))(v30 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v33, v26, v38);
  return v27(v43, 0);
}

uint64_t sub_267198E74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267198ED8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHIntelligenceFlowRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHShimAction(0);
  sub_2671993D8(&qword_2800F6C40, type metadata accessor for ORCHSchemaORCHShimAction, &protocol conformance descriptor for ORCHSchemaORCHShimAction);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x697463416D696873, 0xEA00000000006E6FLL);
  return v5(v7, 0);
}

uint64_t sub_267199140(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHShimAction(0);
  sub_2671993D8(&qword_2800F6C40, type metadata accessor for ORCHSchemaORCHShimAction, &protocol conformance descriptor for ORCHSchemaORCHShimAction);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x697463416D696873, 0xEA00000000006E6FLL);
  return v5(v7, 0);
}

uint64_t sub_2671992CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267199330(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671993D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267199420()
{
  result = qword_2800F6C30;
  if (!qword_2800F6C30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6C30);
  }

  return result;
}

uint64_t static ORCHSchemaORCHIntelligenceFlowRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for ORCHSchemaORCHIntelligenceFlowFailureReason(0);
  sub_2671998A8(&qword_2800F6C00, type metadata accessor for ORCHSchemaORCHIntelligenceFlowFailureReason, &protocol conformance descriptor for ORCHSchemaORCHIntelligenceFlowFailureReason);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E6F73616572, 0xE600000000000000);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x4658697269537369, 0xEF6B6361626C6C61);
  return v10(v14, 0);
}

uint64_t sub_26719979C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267199800(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671998A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671998F0()
{
  result = qword_2800F6C20;
  if (!qword_2800F6C20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6C20);
  }

  return result;
}

uint64_t static ORCHSchemaORCHIntelligenceFlowRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267199B84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267199BE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267199C4C()
{
  result = qword_2800F6C18;
  if (!qword_2800F6C18)
  {
    sub_267199CA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6C18);
  }

  return result;
}

unint64_t sub_267199CA4()
{
  result = qword_2800F6C10;
  if (!qword_2800F6C10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6C10);
  }

  return result;
}

uint64_t static ORCHSchemaORCHIntelligenceFlowSubRequestFallback.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v4, 0xD000000000000012, 0x800000026746F340);
  v7(v21, 0);
  v8 = sub_2673811AC();
  v9 = sub_266ECB6CC(v20, 0xD000000000000012, 0x800000026746F340);
  v16 = *(v6 + 48);
  if (!v16(v10, 1, v5))
  {
    sub_266ECB128(&unk_28788B550);
    sub_26738115C();
  }

  (v9)(v20, 0);
  v8(v21, 0);
  sub_26738120C();
  v17(v4, 0, 1, v5);
  v11 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000014, 0x800000026746F360);
  v11(v21, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v20, 0xD000000000000014, 0x800000026746F360);
  if (!v16(v14, 1, v5))
  {
    sub_266ECB128(&unk_28788B580);
    sub_26738115C();
  }

  (v13)(v20, 0);
  return v12(v21, 0);
}

uint64_t sub_26719A0B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719A118(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHMemoryUsageMetadata.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x53535278616DLL, 0xE600000000000000);
  return v8(v10, 0);
}

uint64_t sub_26719A404(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719A468(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26719A4CC()
{
  result = qword_2800F6C48;
  if (!qword_2800F6C48)
  {
    sub_26719A524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6C48);
  }

  return result;
}

unint64_t sub_26719A524()
{
  result = qword_2800F6C50;
  if (!qword_2800F6C50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6C50);
  }

  return result;
}

uint64_t static ORCHSchemaORCHMitigationSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x800000026746F3F0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x800000026746F410, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x800000026746F440, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26719A784(uint64_t a1)
{
  v2 = sub_26719A888(&qword_2800F6C60, &protocol conformance descriptor for ORCHSchemaORCHMitigationSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26719A7EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_26719A888(&qword_2800F6C60, &protocol conformance descriptor for ORCHSchemaORCHMitigationSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26719A888(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHMitigationSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHMotionActivity.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x800000026746F4A0, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026746F4C0, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x800000026746F4E0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000024, 0x800000026746F500, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000024, 0x800000026746F530, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000028, 0x800000026746F560, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_26719AC34(uint64_t a1)
{
  v2 = sub_26719AD38(&qword_2800F6C68, &protocol conformance descriptor for ORCHSchemaORCHMotionActivity);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26719AC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26719AD38(&qword_2800F6C68, &protocol conformance descriptor for ORCHSchemaORCHMotionActivity);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26719AD38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHMotionActivity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHMultiUserResultCandidateReceived.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26719AFC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719B028(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26719B08C()
{
  result = qword_2800F69E0;
  if (!qword_2800F69E0)
  {
    sub_26719B0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F69E0);
  }

  return result;
}

unint64_t sub_26719B0E4()
{
  result = qword_2800F69D8;
  if (!qword_2800F69D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F69D8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHMultiUserResultCandidateSelected.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26719B378(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719B3DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26719B440()
{
  result = qword_2800F69F0;
  if (!qword_2800F69F0)
  {
    sub_26719B498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F69F0);
  }

  return result;
}

unint64_t sub_26719B498()
{
  result = qword_2800F69E8;
  if (!qword_2800F69E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F69E8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHMultiUserScore.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v37 = v4 + 104;
  v38 = v3;
  v36 = v10;
  (v10)(v6);
  v40[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = v12 + 56;
  v33 = *(v12 + 56);
  v33(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x80000002674206B0);
  v14(v40, 0);
  v35 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v39, 0xD000000000000014, 0x80000002674206B0);
  if (!(*(v12 + 48))(v17, 1, v11))
  {
    sub_266ECB128(&unk_28788B5B0);
    sub_26738115C();
  }

  (v16)(v39, 0);
  v15(v40, 0);
  v18 = *MEMORY[0x277D3E538];
  v36(v6, v18, v38);
  v40[0] = 1;
  sub_26738114C();
  v19 = v33;
  v33(v9, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x65726F6373, 0xE500000000000000);
  v20(v40, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v19(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x6568704572657375, 0xEF64496C6172656DLL);
  v21(v40, 0);
  v22 = v18;
  v23 = v38;
  v30 = v11;
  v31 = v13;
  v24 = v11;
  v25 = v36;
  v36(v6, v22, v38);
  v40[0] = 1;
  sub_26738114C();
  v19(v9, 0, 1, v24);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x726F635372657375, 0xEF68736148644965);
  v26(v40, 0);
  v25(v6, v34, v23);
  v40[0] = 1;
  sub_26738114C();
  v19(v9, 0, 1, v30);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026746F640);
  return v27(v40, 0);
}

uint64_t sub_26719BB28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719BB8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHMUXBridgeContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F6C80, 0x277D596E0);
  sub_266ECAF2C(&qword_2800F6C88, &qword_2800F6C80, 0x277D596E0, &protocol conformance descriptor for ORCHSchemaORCHMUXRequestStarted);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F6C90, 0x277D596D8);
  sub_266ECAF2C(&qword_2800F6C98, &qword_2800F6C90, 0x277D596D8, &protocol conformance descriptor for ORCHSchemaORCHMUXRequestEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F6CA0, 0x277D596D0);
  sub_266ECAF2C(&qword_2800F6CA8, &qword_2800F6CA0, 0x277D596D0, &protocol conformance descriptor for ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = v21;
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000023, 0x800000026742B660);
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

uint64_t sub_26719C14C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719C1B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = sub_26738113C();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v31 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v32 = a1;
  sub_26738120C();
  v35 = sub_26738116C();
  v9 = *(v35 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(v7, 0, 1, v35);
  v28 = a2;
  v29 = v11;
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6568704572657375, 0xEF64496C6172656DLL);
  v12(v37, 0);
  v30 = v8;
  sub_26738120C();
  v13 = v35;
  v27 = v10;
  v10(v7, 0, 1, v35);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x800000026742B9C0);
  v14(v37, 0);
  v26 = "userAggregationId";
  v15 = *MEMORY[0x277D3E540];
  v16 = *(v36 + 104);
  v36 += 104;
  v17 = v33;
  v18 = v34;
  v16(v33, v15, v34);
  v37[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000024, v26 | 0x8000000000000000);
  v19(v37, 0);
  v16(v17, v15, v18);
  v37[0] = 1;
  sub_26738114C();
  v20 = v35;
  v21 = v27;
  v27(v7, 0, 1, v35);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000026, 0x800000026742BA10);
  v22(v37, 0);
  sub_26738120C();
  v21(v7, 0, 1, v20);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x800000026742BA40);
  v23(v37, 0);
  sub_266ECB128(&unk_28788B5E0);
  return sub_2673811CC();
}

uint64_t sub_26719C7BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719C820(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6CB8, 0x277D596C8);
  sub_266ECAF2C(&qword_2800F6CB0, &qword_2800F6CB8, 0x277D596C8, &protocol conformance descriptor for ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x64657463656C6573, 0xEC00000072657355);
  v5(v7, 0);
  sub_266ECB128(&unk_28788B610);
  return sub_2673811CC();
}

uint64_t sub_26719CACC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719CB30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHMUXRequestEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v63 = a2;
  v64 = sub_26738113C();
  v2 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v47 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *(v2 + 104);
  v55 = *MEMORY[0x277D3E4E8];
  v8(v4);
  v66[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x5569746C754D7369, 0xEB00000000726573);
  v12(v66, 0);
  v13 = *MEMORY[0x277D3E538];
  v58 = v2 + 104;
  v62 = v8;
  (v8)(v4, v13, v64);
  v66[0] = 1;
  v56 = v4;
  sub_26738114C();
  v59 = v10 + 56;
  v60 = v11;
  v11(v7, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x546E757265526C6ELL, 0xEF734D6E49656D69);
  v14(v66, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v65, 0x546E757265526C6ELL, 0xEF734D6E49656D69);
  v17 = *(v10 + 48);
  v57 = v9;
  v49 = v10 + 48;
  v48 = v17;
  if (!v17(v18, 1, v9))
  {
    sub_266ECB128(&unk_28788B640);
    sub_26738115C();
  }

  (v16)(v65, 0);
  v15(v66, 0);
  v19 = sub_266ECB294(0, &qword_2800F6C78, 0x277D59708);
  v52 = sub_266ECAF2C(&qword_2800F6C70, &qword_2800F6C78, 0x277D59708, &protocol conformance descriptor for ORCHSchemaORCHMultiUserScore);
  v53 = v19;
  sub_26738122C();
  v20 = v57;
  v21 = v60;
  v60(v7, 0, 1, v57);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0x726F635372657375, 0xEA00000000007365);
  v22(v66, 0);
  type metadata accessor for ORCHSchemaORCHUserIdentityClassification(0);
  v24 = v23;
  v50 = sub_26719D974();
  v51 = v24;
  sub_26738120C();
  v21(v7, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, 0x800000026746F760);
  v25(v66, 0);
  v26 = v56;
  (v62)(v56, v55, v64);
  v66[0] = 1;
  sub_26738114C();
  v21(v7, 0, 1, v20);
  v27 = sub_2673811AC();
  sub_266EC637C(v7, 0x64697374754F7369, 0xEA00000000007265);
  v27(v66, 0);
  v54 = *MEMORY[0x277D3E530];
  v28 = v64;
  v29 = v62;
  v62(v26);
  v66[0] = 1;
  sub_26738114C();
  v21(v7, 0, 1, v20);
  v30 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x800000026746F780);
  v30(v66, 0);
  v47 = "voiceIdAssetVersion";
  (v29)(v26, v55, v28);
  v66[0] = 1;
  sub_26738114C();
  v31 = v57;
  v32 = v60;
  v60(v7, 0, 1, v57);
  v33 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, v47 | 0x8000000000000000);
  v33(v66, 0);
  (v62)(v26, v54, v64);
  v66[0] = 1;
  sub_26738114C();
  v32(v7, 0, 1, v31);
  v34 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x800000026746F7D0);
  v34(v66, 0);
  v35 = sub_2673811AC();
  v36 = sub_266ECB6CC(v65, 0xD000000000000014, 0x800000026746F7D0);
  if (!v48(v37, 1, v31))
  {
    sub_266ECB128(&unk_28788B668);
    sub_26738115C();
  }

  (v36)(v65, 0);
  v35(v66, 0);
  v38 = v56;
  (v62)(v56, *MEMORY[0x277D3E540], v64);
  v66[0] = 1;
  sub_26738114C();
  v39 = v57;
  v40 = v60;
  v60(v7, 0, 1, v57);
  v41 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026746F7F0);
  v41(v66, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v40(v7, 0, 1, v39);
  v42 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x800000026746F810);
  v42(v66, 0);
  (v62)(v38, v54, v64);
  v66[0] = 1;
  sub_26738114C();
  v40(v7, 0, 1, v39);
  v43 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ALL, 0x800000026746F830);
  v43(v66, 0);
  sub_26738122C();
  v40(v7, 0, 1, v39);
  v44 = sub_2673811AC();
  sub_266EC637C(v7, 0x5364496563696F76, 0xED00007365726F63);
  v44(v66, 0);
  sub_26738120C();
  v40(v7, 0, 1, v39);
  v45 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x800000026746F850);
  return v45(v66, 0);
}

uint64_t sub_26719D8B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719D914(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26719D974()
{
  result = qword_2800F6CC0;
  if (!qword_2800F6CC0)
  {
    type metadata accessor for ORCHSchemaORCHUserIdentityClassification(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6CC0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHMUXRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26719DC58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719DCBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26719DD20()
{
  result = qword_2800F6C88;
  if (!qword_2800F6C88)
  {
    sub_26719DD78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6C88);
  }

  return result;
}

unint64_t sub_26719DD78()
{
  result = qword_2800F6C80;
  if (!qword_2800F6C80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6C80);
  }

  return result;
}

uint64_t static ORCHSchemaORCHMUXUserSessionState.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for ORCHSchemaORCHUserSessionState(0);
  sub_26719E2B8(&qword_2800F6CC8, type metadata accessor for ORCHSchemaORCHUserSessionState, &protocol conformance descriptor for ORCHSchemaORCHUserSessionState);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6574617473, 0xE500000000000000);
  v9(v15, 0);
  type metadata accessor for ORCHSchemaORCHUserSessionAccessLevel(0);
  sub_26719E2B8(&qword_2800F6CD0, type metadata accessor for ORCHSchemaORCHUserSessionAccessLevel, &protocol conformance descriptor for ORCHSchemaORCHUserSessionAccessLevel);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x654C737365636361, 0xEB000000006C6576);
  v10(v15, 0);
  (*(v13 + 104))(v3, *MEMORY[0x277D3E4E8], v14);
  v15[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x52664F646E457369, 0xEE00747365757165);
  return v11(v15, 0);
}

uint64_t sub_26719E1AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719E210(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26719E2B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26719E300()
{
  result = qword_2800F6B08;
  if (!qword_2800F6B08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6B08);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLClassicDeprecationFlags.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "lassicDeprecationFlags";
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x800000026746F940);
  return v14(v19, 0);
}

uint64_t sub_26719E680(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719E6E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26719E748()
{
  result = qword_2800F6CD8;
  if (!qword_2800F6CD8)
  {
    sub_26719E7A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6CD8);
  }

  return result;
}

unint64_t sub_26719E7A0()
{
  result = qword_2800F6CE0;
  if (!qword_2800F6CE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6CE0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F6CE8, 0x277D59738);
  sub_266ECAF2C(&qword_2800F6CF0, &qword_2800F6CE8, 0x277D59738, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800F6CF8, 0x277D59720);
  sub_266ECAF2C(&qword_2800F6D00, &qword_2800F6CF8, 0x277D59720, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F6D08, 0x277D59728);
  sub_266ECAF2C(&qword_2800F6D10, &qword_2800F6D08, 0x277D59728, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeFailed);
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
  sub_266EC637C(v4, 0x6449707274, 0xE500000000000000);
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

uint64_t sub_26719EDC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719EE28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHNLRouterBridgeEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6D18, 0x277D59730);
  sub_266ECAF2C(&qword_2800F6D20, &qword_2800F6D18, 0x277D59730, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeRoutingDecision);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x44676E6974756F72, 0xEF6E6F6973696365);
  return v5(v7, 0);
}

uint64_t sub_26719F0AC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6D18, 0x277D59730);
  sub_266ECAF2C(&qword_2800F6D20, &qword_2800F6D18, 0x277D59730, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeRoutingDecision);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x44676E6974756F72, 0xEF6E6F6973696365);
  return v5(v7, 0);
}

uint64_t sub_26719F254(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719F2B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHNLRouterBridgeErrorDomain.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x800000026746FA20, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ELL, 0x800000026746FA50, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_26719F500(uint64_t a1)
{
  v2 = sub_26719F604(&qword_2800F6D30, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeErrorDomain);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26719F568(uint64_t a1, uint64_t a2)
{
  v4 = sub_26719F604(&qword_2800F6D30, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeErrorDomain);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26719F604(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHNLRouterBridgeErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13[1] = a1;
  v13[0] = sub_26738113C();
  v1 = *(v13[0] - 8);
  MEMORY[0x28223BE20](v13[0]);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHNLRouterBridgeErrorDomain(0);
  sub_26719FAE4();
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D6F44726F727265, 0xEB000000006E6961);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E508], v13[0]);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800F6D18, 0x277D59730);
  sub_266ECAF2C(&qword_2800F6D20, &qword_2800F6D18, 0x277D59730, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeRoutingDecision);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x44676E6974756F72, 0xEF6E6F6973696365);
  return v11(v14, 0);
}

uint64_t sub_26719FA20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719FA84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26719FAE4()
{
  result = qword_2800F6D28;
  if (!qword_2800F6D28)
  {
    type metadata accessor for ORCHSchemaORCHNLRouterBridgeErrorDomain(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6D28);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeRoutingDecision.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHNLRouterBridgeRoutingDecisionSource(0);
  sub_26719FF40(&qword_2800F6D38, type metadata accessor for ORCHSchemaORCHNLRouterBridgeRoutingDecisionSource, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeRoutingDecisionSource);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x8000000267461610);
  v6(v9, 0);
  type metadata accessor for NLRouterSchemaNLRouterDecisionType(0);
  sub_26719FF40(&qword_2800F4FE0, type metadata accessor for NLRouterSchemaNLRouterDecisionType, &protocol conformance descriptor for NLRouterSchemaNLRouterDecisionType);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267461630);
  return v7(v9, 0);
}

uint64_t sub_26719FE34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26719FE98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26719FF40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26719FF88()
{
  result = qword_2800F6D18;
  if (!qword_2800F6D18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6D18);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeRoutingDecisionSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002FLL, 0x800000026746FB50, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000038, 0x800000026746FB80, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003ALL, 0x800000026746FBC0, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000037, 0x800000026746FC00, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000040, 0x800000026746FC40, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000044, 0x800000026746FC90, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000039, 0x800000026746FCE0, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2671A03A8(uint64_t a1)
{
  v2 = sub_2671A04AC(&qword_2800F6D40, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeRoutingDecisionSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A0410(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A04AC(&qword_2800F6D40, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeRoutingDecisionSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A04AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHNLRouterBridgeRoutingDecisionSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671A0738(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A079C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671A0800()
{
  result = qword_2800F6CF0;
  if (!qword_2800F6CF0)
  {
    sub_2671A0858();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6CF0);
  }

  return result;
}

unint64_t sub_2671A0858()
{
  result = qword_2800F6CE8;
  if (!qword_2800F6CE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6CE8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeSubComponent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x800000026746FDA0, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000030, 0x800000026746FDD0, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000034, 0x800000026746FE10, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002FLL, 0x800000026746FE50, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002FLL, 0x800000026746FE80, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2671A0B9C(uint64_t a1)
{
  v2 = sub_2671A0CA0(&qword_2800F6D50, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeSubComponent);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A0C04(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A0CA0(&qword_2800F6D50, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeSubComponent);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A0CA0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHNLRouterBridgeSubComponent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeSubComponentContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x28223BE20](v1);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v24 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v6 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v7 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v24[1] = v6;
  v24[2] = v7;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64496563617274, 0xE700000000000000);
  v10(v28, 0);
  sub_266ECB294(0, &qword_2800F6D58, 0x277D59758);
  sub_266ECAF2C(&qword_2800F6D60, &qword_2800F6D58, 0x277D59758, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeSubComponentStarted);
  sub_26738121C();
  v9(v5, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v11(v28, 0);
  sub_266ECB294(0, &qword_2800F6D68, 0x277D59748);
  sub_266ECAF2C(&qword_2800F6D70, &qword_2800F6D68, 0x277D59748, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeSubComponentEnded);
  sub_26738121C();
  v9(v5, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v12(v28, 0);
  sub_266ECB294(0, &qword_2800F6D78, 0x277D59750);
  sub_266ECAF2C(&qword_2800F6D80, &qword_2800F6D78, 0x277D59750, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeSubComponentFailed);
  sub_26738121C();
  v9(v5, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v13(v28, 0);
  sub_26738120C();
  v9(v5, 0, 1, v8);
  v14 = v25;
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0x6449707274, 0xE500000000000000);
  v15(v28, 0);
  sub_26738117C();
  v16 = sub_2673811BC();
  v18 = v17;
  v19 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_266ECAD54(0, v19[2] + 1, 1, v19);
    *v18 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_266ECAD54((v21 > 1), v22 + 1, 1, v19);
    *v18 = v19;
  }

  v19[2] = v22 + 1;
  (*(v26 + 32))(v19 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, v14, v27);
  return v16(v28, 0);
}

uint64_t sub_2671A1334(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A1398(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHNLRouterBridgeSubComponentEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671A1684(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A16E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671A174C()
{
  result = qword_2800F6D70;
  if (!qword_2800F6D70)
  {
    sub_2671A17A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6D70);
  }

  return result;
}

unint64_t sub_2671A17A4()
{
  result = qword_2800F6D68;
  if (!qword_2800F6D68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6D68);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeSubComponentFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v8(v10, 0);
}

uint64_t sub_2671A1A40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A1AA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671A1B08()
{
  result = qword_2800F6D80;
  if (!qword_2800F6D80)
  {
    sub_2671A1B60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6D80);
  }

  return result;
}

unint64_t sub_2671A1B60()
{
  result = qword_2800F6D78;
  if (!qword_2800F6D78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6D78);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterBridgeSubComponentStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHNLRouterBridgeSubComponent(0);
  sub_2671A1E9C(&qword_2800F6D48, type metadata accessor for ORCHSchemaORCHNLRouterBridgeSubComponent, &protocol conformance descriptor for ORCHSchemaORCHNLRouterBridgeSubComponent);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674626E0);
  return v5(v7, 0);
}

uint64_t sub_2671A1D90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A1DF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A1E9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671A1EE4()
{
  result = qword_2800F6D58;
  if (!qword_2800F6D58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6D58);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterDecisionGenAIAppIntent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ALL, 0x800000026746FFF0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003DLL, 0x8000000267470020, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000004FLL, 0x8000000267470060, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000004ALL, 0x80000002674700B0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2671A21B4(uint64_t a1)
{
  v2 = sub_2671A22B8(&qword_2800F6D90, &protocol conformance descriptor for ORCHSchemaORCHNLRouterDecisionGenAIAppIntent);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A221C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A22B8(&qword_2800F6D90, &protocol conformance descriptor for ORCHSchemaORCHNLRouterDecisionGenAIAppIntent);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A22B8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHNLRouterDecisionGenAIAppIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLRouterDecisionGenAIMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x63696C7078457369, 0xEA00000000007469);
  v10(v13, 0);
  type metadata accessor for ORCHSchemaORCHNLRouterDecisionGenAIAppIntent(0);
  sub_2671A2738(&qword_2800F6D88, type metadata accessor for ORCHSchemaORCHNLRouterDecisionGenAIAppIntent, &protocol conformance descriptor for ORCHSchemaORCHNLRouterDecisionGenAIAppIntent);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x70704149416E6567, 0xEE00746E65746E49);
  return v11(v13, 0);
}

uint64_t sub_2671A262C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A2690(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A2738(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671A2780()
{
  result = qword_2800F6DA0;
  if (!qword_2800F6DA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6DA0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHNLV3ServerFallbackDeprecated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHServerFallbackReason(0);
  sub_2671A2C38(&qword_2800F6DA8, type metadata accessor for ORCHSchemaORCHServerFallbackReason, &protocol conformance descriptor for ORCHSchemaORCHServerFallbackReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6B6361626C6C6166, 0xEE006E6F73616552);
  return v5(v7, 0);
}

uint64_t sub_2671A2998(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHServerFallbackReason(0);
  sub_2671A2C38(&qword_2800F6DA8, type metadata accessor for ORCHSchemaORCHServerFallbackReason, &protocol conformance descriptor for ORCHSchemaORCHServerFallbackReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6B6361626C6C6166, 0xEE006E6F73616552);
  return v5(v7, 0);
}

uint64_t sub_2671A2B2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A2B90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A2C38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671A2C80()
{
  result = qword_2800F6A18;
  if (!qword_2800F6A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6A18);
  }

  return result;
}

uint64_t static ORCHSchemaORCHPommesBridgeContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F6DB0, 0x277D59788);
  sub_266ECAF2C(&qword_2800F6DB8, &qword_2800F6DB0, 0x277D59788, &protocol conformance descriptor for ORCHSchemaORCHPommesRequestStarted);
  sub_26738121C();
  v6 = sub_26738116C();
  v26 = *(v6 - 8);
  v7 = *(v26 + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v8(v31, 0);
  sub_266ECB294(0, &qword_2800F6DC0, 0x277D59778);
  sub_266ECAF2C(&qword_2800F6DC8, &qword_2800F6DC0, 0x277D59778, &protocol conformance descriptor for ORCHSchemaORCHPommesRequestEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v9(v31, 0);
  sub_266ECB294(0, &qword_2800F6DD0, 0x277D59780);
  sub_266ECAF2C(&qword_2800F6DD8, &qword_2800F6DD0, 0x277D59780, &protocol conformance descriptor for ORCHSchemaORCHPommesRequestFailed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v10(v31, 0);
  sub_266ECB294(0, &qword_2800F6DE0, 0x277D59790);
  sub_266ECAF2C(&qword_2800F6DE8, &qword_2800F6DE0, 0x277D59790, &protocol conformance descriptor for ORCHSchemaORCHPommesRequestUnableToHandle);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x656C6C65636E6163, 0xE900000000000064);
  v11(v31, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x6449707274, 0xE500000000000000);
  v12(v31, 0);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x6575716552627573, 0xEC00000064497473);
  v13(v31, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v30, 0x6575716552627573, 0xEC00000064497473);
  if (!(*(v26 + 48))(v16, 1, v6))
  {
    sub_266ECB128(&unk_28788B690);
    sub_26738115C();
  }

  (v15)(v30, 0);
  v14(v31, 0);
  v17 = v27;
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
  (*(v28 + 32))(v21 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v24, v17, v29);
  return v18(v31, 0);
}

uint64_t sub_2671A34A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A350C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHPommesRequestEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHPommesResponseStatus(0);
  sub_2671A39FC(&qword_2800F6DF0, type metadata accessor for ORCHSchemaORCHPommesResponseStatus, &protocol conformance descriptor for ORCHSchemaORCHPommesResponseStatus);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x737574617473, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671A376C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHPommesResponseStatus(0);
  sub_2671A39FC(&qword_2800F6DF0, type metadata accessor for ORCHSchemaORCHPommesResponseStatus, &protocol conformance descriptor for ORCHSchemaORCHPommesResponseStatus);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x737574617473, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671A38F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A3954(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A39FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671A3A44()
{
  result = qword_2800F6DC0;
  if (!qword_2800F6DC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6DC0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHPommesRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHPommesRequestFailureReason(0);
  sub_2671A3EDC(&qword_2800F6DF8, type metadata accessor for ORCHSchemaORCHPommesRequestFailureReason, &protocol conformance descriptor for ORCHSchemaORCHPommesRequestFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671A3C4C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHPommesRequestFailureReason(0);
  sub_2671A3EDC(&qword_2800F6DF8, type metadata accessor for ORCHSchemaORCHPommesRequestFailureReason, &protocol conformance descriptor for ORCHSchemaORCHPommesRequestFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671A3DD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A3E34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A3EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671A3F24()
{
  result = qword_2800F6DD0;
  if (!qword_2800F6DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6DD0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHPommesRequestFailureReason.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267470270, isUniquelyReferenced_nonNull_native);
  *v3 = v48;

  v1(v58, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000040, 0x80000002674702A0, v8);
  *v7 = v49;

  v5(v58, 0);
  v9 = sub_266ECB128(&unk_28788B6C0);
  v11 = v10;
  v12 = sub_2673810FC();
  v14 = v13;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v14;
  *v14 = 0x8000000000000000;
  sub_266ECD4CC(v9, v11, 1, v15);
  *v14 = v50;
  v12(v58, 0);
  v16 = sub_26738111C();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v18;
  *v18 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x80000002674702F0, v19);
  *v18 = v51;

  v16(v58, 0);
  v20 = sub_266ECB128(&unk_28788B6E8);
  v22 = v21;
  v23 = sub_2673810FC();
  v25 = v24;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v25;
  *v25 = 0x8000000000000000;
  sub_266ECD4CC(v20, v22, 2, v26);
  *v25 = v52;
  v23(v58, 0);
  v27 = sub_26738111C();
  v29 = v28;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v29;
  *v29 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x8000000267470320, v30);
  *v29 = v53;

  v27(v58, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x8000000267470350, v34);
  *v33 = v54;

  v31(v58, 0);
  v35 = sub_26738111C();
  v37 = v36;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v37;
  *v37 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000003FLL, 0x8000000267470380, v38);
  *v37 = v55;

  v35(v58, 0);
  v39 = sub_26738111C();
  v41 = v40;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v41;
  *v41 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000039, 0x80000002674703C0, v42);
  *v41 = v56;

  v39(v58, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002DLL, 0x8000000267470400, v46);
  *v45 = v57;

  return v43(v58, 0);
}

uint64_t sub_2671A44A4(uint64_t a1)
{
  v2 = sub_2671A45A8(&qword_2800F6E00, &protocol conformance descriptor for ORCHSchemaORCHPommesRequestFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A450C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A45A8(&qword_2800F6E00, &protocol conformance descriptor for ORCHSchemaORCHPommesRequestFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A45A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHPommesRequestFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHPommesRequestStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671A4834(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A4898(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671A48FC()
{
  result = qword_2800F6DB8;
  if (!qword_2800F6DB8)
  {
    sub_2671A4954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6DB8);
  }

  return result;
}

unint64_t sub_2671A4954()
{
  result = qword_2800F6DB0;
  if (!qword_2800F6DB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6DB0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHPommesRequestUnableToHandle.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671A4BE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A4C4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671A4CB0()
{
  result = qword_2800F6DE8;
  if (!qword_2800F6DE8)
  {
    sub_2671A4D08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6DE8);
  }

  return result;
}

unint64_t sub_2671A4D08()
{
  result = qword_2800F6DE0;
  if (!qword_2800F6DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6DE0);
  }

  return result;
}

uint64_t static ORCHSchemaORCHPommesResponseStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674704F0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267470520, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267470550, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2671A4F6C(uint64_t a1)
{
  v2 = sub_2671A5070(&qword_2800F6E08, &protocol conformance descriptor for ORCHSchemaORCHPommesResponseStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A4FD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A5070(&qword_2800F6E08, &protocol conformance descriptor for ORCHSchemaORCHPommesResponseStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A5070(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHPommesResponseStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHPowerContextPolicies.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v10[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v10 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHASRPowerContextPolicy(0);
  sub_2671A5508(&qword_2800F67E8, type metadata accessor for ORCHSchemaORCHASRPowerContextPolicy, &protocol conformance descriptor for ORCHSchemaORCHASRPowerContextPolicy);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x80000002674705C0);
  v6(v11, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x80000002674705E0);
  v7(v11, 0);
  type metadata accessor for ORCHSchemaORCHTTSPowerContextPolicy(0);
  sub_2671A5508(&qword_2800F6E10, type metadata accessor for ORCHSchemaORCHTTSPowerContextPolicy, &protocol conformance descriptor for ORCHSchemaORCHTTSPowerContextPolicy);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x63696C6F50737474, 0xE900000000000079);
  return v8(v11, 0);
}

uint64_t sub_2671A53FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A5460(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A5508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671A5550()
{
  result = qword_2800F6E20;
  if (!qword_2800F6E20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6E20);
  }

  return result;
}

uint64_t static ORCHSchemaORCHPowerContextPolicyReported.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v21 = *(v1 - 8);
  v22 = v1;
  MEMORY[0x28223BE20](v1);
  v20 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6E20, 0x277D59798);
  sub_266ECAF2C(&qword_2800F6E18, &qword_2800F6E20, 0x277D59798, &protocol conformance descriptor for ORCHSchemaORCHPowerContextPolicies);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x8000000267470640);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F6E28, 0x277D59890);
  sub_266ECAF2C(&qword_2800F6E30, &qword_2800F6E28, 0x277D59890, &protocol conformance descriptor for ORCHSchemaORCHVisionPowerState);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v20;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x8000000267470660);
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
  (*(v21 + 32))(v14 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17, v9, v22);
  return v11(v23, 0);
}

uint64_t sub_2671A59F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A5A54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHPreExecutionDecision.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000020, 0x80000002674706E0, isUniquelyReferenced_nonNull_native);
  *v3 = v53;

  v1(v65, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000048, 0x8000000267470710, v8);
  *v7 = v54;

  v5(v65, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000042, 0x8000000267470760, v12);
  *v11 = v55;

  v9(v65, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000049, 0x80000002674707B0, v16);
  *v15 = v56;

  v13(v65, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003FLL, 0x8000000267470800, v20);
  *v19 = v57;

  v17(v65, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000040, 0x8000000267470840, v24);
  *v23 = v58;

  v21(v65, 0);
  v25 = sub_266ECB128(&unk_28788B710);
  v27 = v26;
  v28 = sub_2673810FC();
  v30 = v29;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v30;
  *v30 = 0x8000000000000000;
  sub_266ECD4CC(v25, v27, 5, v31);
  *v30 = v59;
  v28(v65, 0);
  v32 = sub_26738111C();
  v34 = v33;
  v35 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v34;
  *v34 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000040, 0x8000000267470890, v35);
  *v34 = v60;

  v32(v65, 0);
  v36 = sub_26738111C();
  v38 = v37;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v38;
  *v38 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000021, 0x80000002674708E0, v39);
  *v38 = v61;

  v36(v65, 0);
  v40 = sub_26738111C();
  v42 = v41;
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v62 = *v42;
  *v42 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000039, 0x8000000267470910, v43);
  *v42 = v62;

  v40(v65, 0);
  v44 = sub_26738111C();
  v46 = v45;
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *v46;
  *v46 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002BLL, 0x8000000267470950, v47);
  *v46 = v63;

  v44(v65, 0);
  v48 = sub_26738111C();
  v50 = v49;
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v50;
  *v50 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000031, 0x8000000267470980, v51);
  *v50 = v64;

  return v48(v65, 0);
}

uint64_t sub_2671A610C(uint64_t a1)
{
  v2 = sub_2671A6210(&qword_2800F6E38, &protocol conformance descriptor for ORCHSchemaORCHPreExecutionDecision);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A6174(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A6210(&qword_2800F6E38, &protocol conformance descriptor for ORCHSchemaORCHPreExecutionDecision);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A6210(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHPreExecutionDecision(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHRequestCancellationReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x8000000267470A00, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x8000000267470A30, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002CLL, 0x8000000267470A60, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2671A6468(uint64_t a1)
{
  v2 = sub_2671A656C(&qword_2800F6E40, &protocol conformance descriptor for ORCHSchemaORCHRequestCancellationReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A64D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A656C(&qword_2800F6E40, &protocol conformance descriptor for ORCHSchemaORCHRequestCancellationReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A656C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHRequestCancellationReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHRequestCancelled.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHRequestCancellationReason(0);
  sub_2671A69FC(&qword_2800F66B0, type metadata accessor for ORCHSchemaORCHRequestCancellationReason, &protocol conformance descriptor for ORCHSchemaORCHRequestCancellationReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671A676C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHRequestCancellationReason(0);
  sub_2671A69FC(&qword_2800F66B0, type metadata accessor for ORCHSchemaORCHRequestCancellationReason, &protocol conformance descriptor for ORCHSchemaORCHRequestCancellationReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2671A68F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A6954(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A69FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671A6A44()
{
  result = qword_2800F6E50;
  if (!qword_2800F6E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6E50);
  }

  return result;
}

uint64_t static ORCHSchemaORCHRequestContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F6E58, 0x277D597D0);
  sub_266ECAF2C(&qword_2800F6E60, &qword_2800F6E58, 0x277D597D0, &protocol conformance descriptor for ORCHSchemaORCHRequestStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800F6E68, 0x277D597B8);
  sub_266ECAF2C(&qword_2800F6E70, &qword_2800F6E68, 0x277D597B8, &protocol conformance descriptor for ORCHSchemaORCHRequestEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F6E78, 0x277D597C0);
  sub_266ECAF2C(&qword_2800F6E80, &qword_2800F6E78, 0x277D597C0, &protocol conformance descriptor for ORCHSchemaORCHRequestFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F6E50, 0x277D597A8);
  sub_266ECAF2C(&qword_2800F6E48, &qword_2800F6E50, 0x277D597A8, &protocol conformance descriptor for ORCHSchemaORCHRequestCancelled);
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

uint64_t sub_2671A7074(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A70D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHRequestEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671A73C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A7428(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671A748C()
{
  result = qword_2800F6E70;
  if (!qword_2800F6E70)
  {
    sub_2671A74E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6E70);
  }

  return result;
}

unint64_t sub_2671A74E4()
{
  result = qword_2800F6E68;
  if (!qword_2800F6E68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6E68);
  }

  return result;
}

uint64_t static ORCHSchemaORCHRequestFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for ORCHSchemaORCHErrorCode(0);
  sub_2671A7AE0(&qword_2800F6B40, type metadata accessor for ORCHSchemaORCHErrorCode, &protocol conformance descriptor for ORCHSchemaORCHErrorCode);
  v17 = a1;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  v10(v22, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v21, 0x646F43726F727265, 0xE900000000000065);
  if (!(*(v8 + 48))(v13, 1, v7))
  {
    sub_266ECB128(&unk_28788B738);
    sub_26738115C();
  }

  (v12)(v21, 0);
  v11(v22, 0);
  type metadata accessor for ORCHSchemaORCHErrorDomain(0);
  sub_2671A7AE0(&qword_2800F6B50, type metadata accessor for ORCHSchemaORCHErrorDomain, &protocol conformance descriptor for ORCHSchemaORCHErrorDomain);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D6F44726F727265, 0xEB000000006E6961);
  v14(v22, 0);
  (*(v19 + 104))(v18, *MEMORY[0x277D3E508], v20);
  v22[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x6F7272456863726FLL, 0xED000065646F4372);
  return v15(v22, 0);
}

uint64_t sub_2671A79D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A7A38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A7AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671A7B28()
{
  result = qword_2800F6E78;
  if (!qword_2800F6E78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6E78);
  }

  return result;
}

uint64_t static ORCHSchemaORCHRequestMitigated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHMitigationSource(0);
  sub_2671A7E64(&qword_2800F6C58, type metadata accessor for ORCHSchemaORCHMitigationSource, &protocol conformance descriptor for ORCHSchemaORCHMitigationSource);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267470B80);
  return v5(v7, 0);
}

uint64_t sub_2671A7D58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A7DBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A7E64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671A7EAC()
{
  result = qword_2800F6A08;
  if (!qword_2800F6A08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6A08);
  }

  return result;
}

uint64_t static ORCHSchemaORCHRequestStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v39 = sub_26738113C();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v36 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v46 = "iri.orch.ORCHRequestStarted";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  (v10)(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, v46 | 0x8000000000000000);
  v11(v48, 0);
  type metadata accessor for ORCHSchemaORCHRequestType(0);
  sub_2671A8A60(&qword_2800F6E88, type metadata accessor for ORCHSchemaORCHRequestType, &protocol conformance descriptor for ORCHSchemaORCHRequestType);
  sub_26738120C();
  (v10)(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x5474736575716572, 0xEB00000000657079);
  v12(v48, 0);
  v13 = *(v43 + 104);
  v37 = *MEMORY[0x277D3E4E8];
  v43 += 104;
  v36 = v13;
  v13(v4);
  v48[0] = 1;
  v38 = v4;
  sub_26738114C();
  v46 = v10;
  v44 = v9 + 56;
  (v10)(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x45444F5569726973, 0xEE0064656C62616ELL);
  v14(v48, 0);
  v45 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v47, 0x45444F5569726973, 0xEE0064656C62616ELL);
  v40 = *(v9 + 48);
  v41 = v9 + 48;
  if (!v40(v17, 1, v8))
  {
    sub_266ECB128(&unk_28788B760);
    sub_26738115C();
  }

  (v16)(v47, 0);
  v15(v48, 0);
  type metadata accessor for ORCHSchemaORCHSiriUnderstandingOnDeviceMode(0);
  sub_2671A8A60(&qword_2800F6E90, type metadata accessor for ORCHSchemaORCHSiriUnderstandingOnDeviceMode, &protocol conformance descriptor for ORCHSchemaORCHSiriUnderstandingOnDeviceMode);
  sub_26738120C();
  (v46)(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x4D444F5569726973, 0xEB0000000065646FLL);
  v18(v48, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v47, 0x4D444F5569726973, 0xEB0000000065646FLL);
  if (!v40(v21, 1, v8))
  {
    sub_266ECB128(&unk_28788B788);
    sub_26738115C();
  }

  (v20)(v47, 0);
  v19(v48, 0);
  type metadata accessor for ORCHSchemaORCHSiriAsrMode(0);
  sub_2671A8A60(&qword_2800F5F68, type metadata accessor for ORCHSchemaORCHSiriAsrMode, &protocol conformance descriptor for ORCHSchemaORCHSiriAsrMode);
  sub_26738120C();
  (v46)(v7, 0, 1, v8);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0x4D72734169726973, 0xEB0000000065646FLL);
  v22(v48, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v47, 0x4D72734169726973, 0xEB0000000065646FLL);
  if (!v40(v25, 1, v8))
  {
    sub_266ECB128(&unk_28788B7B8);
    sub_26738115C();
  }

  (v24)(v47, 0);
  v23(v48, 0);
  type metadata accessor for ORCHSchemaORCHSiriNlMode(0);
  sub_2671A8A60(&qword_2800F5F70, type metadata accessor for ORCHSchemaORCHSiriNlMode, &protocol conformance descriptor for ORCHSchemaORCHSiriNlMode);
  sub_26738120C();
  (v46)(v7, 0, 1, v8);
  v26 = sub_2673811AC();
  sub_266EC637C(v7, 0x6F4D6C4E69726973, 0xEA00000000006564);
  v26(v48, 0);
  v27 = sub_2673811AC();
  v28 = sub_266ECB6CC(v47, 0x6F4D6C4E69726973, 0xEA00000000006564);
  if (!v40(v29, 1, v8))
  {
    sub_266ECB128(&unk_28788B7E8);
    sub_26738115C();
  }

  (v28)(v47, 0);
  v27(v48, 0);
  sub_266ECB294(0, &qword_2800F6CE0, 0x277D59710);
  sub_266ECAF2C(&qword_2800F6CD8, &qword_2800F6CE0, 0x277D59710, &protocol conformance descriptor for ORCHSchemaORCHNLClassicDeprecationFlags);
  sub_26738120C();
  v30 = v8;
  v31 = v8;
  v32 = v46;
  (v46)(v7, 0, 1, v30);
  v33 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000014, 0x8000000267470BF0);
  v33(v48, 0);
  v36(v38, v37, v39);
  v48[0] = 1;
  sub_26738114C();
  v32(v7, 0, 1, v31);
  v34 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x8000000267470C10);
  return v34(v48, 0);
}

uint64_t sub_2671A899C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A8A00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671A8A60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static ORCHSchemaORCHRequestType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267470C60, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x8000000267470C80, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x8000000267470CA0, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267470CC0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267470CF0, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000023, 0x8000000267470D10, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000020, 0x8000000267470D40, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2671A8EC4(uint64_t a1)
{
  v2 = sub_2671A8FC8(&qword_2800F6E98, &protocol conformance descriptor for ORCHSchemaORCHRequestType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A8F2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A8FC8(&qword_2800F6E98, &protocol conformance descriptor for ORCHSchemaORCHRequestType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A8FC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHResourceUtilizationMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F6C50, 0x277D596F0);
  sub_266ECAF2C(&qword_2800F6C48, &qword_2800F6C50, 0x277D596F0, &protocol conformance descriptor for ORCHSchemaORCHMemoryUsageMetadata);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x8000000267470DB0);
  return v5(v7, 0);
}

uint64_t sub_2671A9204(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A9268(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHResultCandidateReceived.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671A9554(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A95B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671A961C()
{
  result = qword_2800F6980;
  if (!qword_2800F6980)
  {
    sub_2671A9674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6980);
  }

  return result;
}

unint64_t sub_2671A9674()
{
  result = qword_2800F6978;
  if (!qword_2800F6978)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6978);
  }

  return result;
}

uint64_t static ORCHSchemaORCHResultSelected.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671A9908(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671A996C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671A99D0()
{
  result = qword_2800F6990;
  if (!qword_2800F6990)
  {
    sub_2671A9A28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6990);
  }

  return result;
}

unint64_t sub_2671A9A28()
{
  result = qword_2800F6988;
  if (!qword_2800F6988)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6988);
  }

  return result;
}

uint64_t static ORCHSchemaORCHRSKESource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267470E70, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267470E90, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267470EB0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000015, 0x8000000267470ED0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2671A9CFC(uint64_t a1)
{
  v2 = sub_2671A9E00(&qword_2800F6EA0, &protocol conformance descriptor for ORCHSchemaORCHRSKESource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671A9D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671A9E00(&qword_2800F6EA0, &protocol conformance descriptor for ORCHSchemaORCHRSKESource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671A9E00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHRSKESource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHServerFallbackContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x28223BE20](v1);
  v25 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v24 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v6 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v7 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v24[1] = v6;
  v24[2] = v7;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v5, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x49747865746E6F63, 0xE900000000000064);
  v10(v28, 0);
  sub_266ECB294(0, &qword_2800F6EA8, 0x277D59808);
  sub_266ECAF2C(&qword_2800F6EB0, &qword_2800F6EA8, 0x277D59808, &protocol conformance descriptor for ORCHSchemaORCHServerFallbackInitiated);
  sub_26738121C();
  v9(v5, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v11(v28, 0);
  sub_266ECB294(0, &qword_2800F6EB8, 0x277D59810);
  sub_266ECAF2C(&qword_2800F6EC0, &qword_2800F6EB8, 0x277D59810, &protocol conformance descriptor for ORCHSchemaORCHServerFallbackResponseReceived);
  sub_26738121C();
  v9(v5, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v12(v28, 0);
  sub_266ECB294(0, &qword_2800F6EC8, 0x277D59800);
  sub_266ECAF2C(&qword_2800F6ED0, &qword_2800F6EC8, 0x277D59800, &protocol conformance descriptor for ORCHSchemaORCHServerFallbackFailed);
  sub_26738121C();
  v9(v5, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x64656C696166, 0xE600000000000000);
  v13(v28, 0);
  sub_26738120C();
  v9(v5, 0, 1, v8);
  v14 = v25;
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0x6449707274, 0xE500000000000000);
  v15(v28, 0);
  sub_26738117C();
  v16 = sub_2673811BC();
  v18 = v17;
  v19 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v18 = v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v19 = sub_266ECAD54(0, v19[2] + 1, 1, v19);
    *v18 = v19;
  }

  v22 = v19[2];
  v21 = v19[3];
  if (v22 >= v21 >> 1)
  {
    v19 = sub_266ECAD54((v21 > 1), v22 + 1, 1, v19);
    *v18 = v19;
  }

  v19[2] = v22 + 1;
  (*(v26 + 32))(v19 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22, v14, v27);
  return v16(v28, 0);
}

uint64_t sub_2671AA498(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AA4FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHServerFallbackFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v8(v10, 0);
}

uint64_t sub_2671AA7F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AA854(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671AA8B8()
{
  result = qword_2800F6ED0;
  if (!qword_2800F6ED0)
  {
    sub_2671AA910();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6ED0);
  }

  return result;
}

unint64_t sub_2671AA910()
{
  result = qword_2800F6EC8;
  if (!qword_2800F6EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6EC8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHServerFallbackInitiated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for ORCHSchemaORCHServerFallbackReason(0);
  sub_2671AAD24(&qword_2800F6DA8, type metadata accessor for ORCHSchemaORCHServerFallbackReason, &protocol conformance descriptor for ORCHSchemaORCHServerFallbackReason);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6B6361626C6C6166, 0xEE006E6F73616552);
  v6(v9, 0);
  type metadata accessor for ORCHSchemaORCHAssetType(0);
  sub_2671AAD24(&qword_2800F6370, type metadata accessor for ORCHSchemaORCHAssetType, &protocol conformance descriptor for ORCHSchemaORCHAssetType);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x41676E697373696DLL, 0xEC00000074657373);
  return v7(v9, 0);
}

uint64_t sub_2671AAC18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AAC7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671AAD24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671AAD6C()
{
  result = qword_2800F6EA8;
  if (!qword_2800F6EA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6EA8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHServerFallbackReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267470FF0, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x8000000267471020, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267471050, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002BLL, 0x8000000267471070, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002CLL, 0x80000002674710A0, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000029, 0x80000002674710D0, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000032, 0x8000000267471100, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_2671AB18C(uint64_t a1)
{
  v2 = sub_2671AB290(&qword_2800F6ED8, &protocol conformance descriptor for ORCHSchemaORCHServerFallbackReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671AB1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671AB290(&qword_2800F6ED8, &protocol conformance descriptor for ORCHSchemaORCHServerFallbackReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671AB290(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHServerFallbackReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHServerFallbackResponseReceived.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671AB51C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AB580(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671AB5E4()
{
  result = qword_2800F6EC0;
  if (!qword_2800F6EC0)
  {
    sub_2671AB63C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6EC0);
  }

  return result;
}

unint64_t sub_2671AB63C()
{
  result = qword_2800F6EB8;
  if (!qword_2800F6EB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6EB8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHShimAction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x80000002674711B0, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x80000002674711D0, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x80000002674711F0, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267471210, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000019, 0x8000000267471230, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000019, 0x8000000267471250, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x8000000267471270, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ALL, 0x8000000267471290, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_2671ABAD0(uint64_t a1)
{
  v2 = sub_2671ABBD4(&qword_2800F6EE0, &protocol conformance descriptor for ORCHSchemaORCHShimAction);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671ABB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671ABBD4(&qword_2800F6EE0, &protocol conformance descriptor for ORCHSchemaORCHShimAction);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671ABBD4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHShimAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHShimToolContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x28223BE20](v4);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v9 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v40 = a1;
  v34 = v9;
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v38 = *(v11 + 56);
  v39 = v11 + 56;
  v38(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x7254746E65696C63, 0xED00006449656361);
  v12(v43, 0);
  v41 = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v42, 0x7254746E65696C63, 0xED00006449656361);
  v15 = *(v11 + 48);
  if (!v15(v16, 1, v10))
  {
    sub_266ECB128(&unk_28788B818);
    sub_26738115C();
  }

  (v14)(v42, 0);
  v13(v43, 0);
  sub_26738120C();
  v38(v8, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0x6575716552627573, 0xEC00000064497473);
  v17(v43, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v42, 0x6575716552627573, 0xEC00000064497473);
  if (!v15(v20, 1, v10))
  {
    sub_266ECB128(&unk_28788B848);
    sub_26738115C();
  }

  (v19)(v42, 0);
  v18(v43, 0);
  sub_266ECB294(0, &qword_2800F6EE8, 0x277D59830);
  sub_266ECAF2C(&qword_2800F6EF0, &qword_2800F6EE8, 0x277D59830, &protocol conformance descriptor for ORCHSchemaORCHShimToolStarted);
  sub_26738121C();
  v21 = v38;
  v38(v8, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026741EB30);
  v22(v43, 0);
  sub_266ECB294(0, &qword_2800F6EF8, 0x277D59828);
  sub_266ECAF2C(&qword_2800F6F00, &qword_2800F6EF8, 0x277D59828, &protocol conformance descriptor for ORCHSchemaORCHShimToolFailed);
  sub_26738121C();
  v21(v8, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x64656C696166, 0xE600000000000000);
  v23(v43, 0);
  sub_266ECB294(0, &qword_2800F6F08, 0x277D59820);
  sub_266ECAF2C(&qword_2800F6F10, &qword_2800F6F08, 0x277D59820, &protocol conformance descriptor for ORCHSchemaORCHShimToolEnded);
  sub_26738121C();
  v21(v8, 0, 1, v10);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0x6465646E65, 0xE500000000000000);
  v24(v43, 0);
  v25 = v35;
  sub_26738117C();
  v26 = sub_2673811BC();
  v28 = v27;
  v29 = *v27;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v28 = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_266ECAD54(0, v29[2] + 1, 1, v29);
    *v28 = v29;
  }

  v32 = v29[2];
  v31 = v29[3];
  if (v32 >= v31 >> 1)
  {
    v29 = sub_266ECAD54((v31 > 1), v32 + 1, 1, v29);
    *v28 = v29;
  }

  v29[2] = v32 + 1;
  (*(v36 + 32))(v29 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v32, v25, v37);
  return v26(v43, 0);
}

uint64_t sub_2671AC3E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AC448(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static ORCHSchemaORCHShimToolEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671AC734(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AC798(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671AC7FC()
{
  result = qword_2800F6F10;
  if (!qword_2800F6F10)
  {
    sub_2671AC854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6F10);
  }

  return result;
}

unint64_t sub_2671AC854()
{
  result = qword_2800F6F08;
  if (!qword_2800F6F08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6F08);
  }

  return result;
}

uint64_t static ORCHSchemaORCHShimToolFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
    sub_266ECB128(&unk_28788B878);
    sub_26738115C();
  }

  (v14)(v26, 0);
  v13(v27, 0);
  type metadata accessor for ORCHSchemaORCHErrorDomain(0);
  sub_2671ACE44(&qword_2800F6B50, type metadata accessor for ORCHSchemaORCHErrorDomain, &protocol conformance descriptor for ORCHSchemaORCHErrorDomain);
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

uint64_t sub_2671ACD38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671ACD9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2671ACE44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2671ACE8C()
{
  result = qword_2800F6EF8;
  if (!qword_2800F6EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6EF8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHShimToolStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2671AD120(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2671AD184(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2671AD1E8()
{
  result = qword_2800F6EF0;
  if (!qword_2800F6EF0)
  {
    sub_2671AD240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F6EF0);
  }

  return result;
}

unint64_t sub_2671AD240()
{
  result = qword_2800F6EE8;
  if (!qword_2800F6EE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F6EE8);
  }

  return result;
}

uint64_t static ORCHSchemaORCHSiriAsrMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x80000002674713A0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x80000002674713C0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x80000002674713E0, v12);
  *v11 = v16;

  v9(v17, 0);
  sub_266ECB128(&unk_28788B8A0);
  return sub_26738112C();
}

uint64_t sub_2671AD4B8(uint64_t a1)
{
  v2 = sub_2671AD5BC(&qword_2800F6F18, &protocol conformance descriptor for ORCHSchemaORCHSiriAsrMode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671AD520(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671AD5BC(&qword_2800F6F18, &protocol conformance descriptor for ORCHSchemaORCHSiriAsrMode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671AD5BC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHSiriAsrMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static ORCHSchemaORCHSiriNlMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267471430, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267471450, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267471470, v12);
  *v11 = v16;

  v9(v17, 0);
  sub_266ECB128(&unk_28788B8D0);
  return sub_26738112C();
}

uint64_t sub_2671AD828(uint64_t a1)
{
  v2 = sub_2671AD92C(&qword_2800F6F20, &protocol conformance descriptor for ORCHSchemaORCHSiriNlMode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2671AD890(uint64_t a1, uint64_t a2)
{
  v4 = sub_2671AD92C(&qword_2800F6F20, &protocol conformance descriptor for ORCHSchemaORCHSiriNlMode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2671AD92C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ORCHSchemaORCHSiriNlMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}