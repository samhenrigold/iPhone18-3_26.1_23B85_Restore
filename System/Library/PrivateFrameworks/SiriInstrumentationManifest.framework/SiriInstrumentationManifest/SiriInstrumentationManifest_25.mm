uint64_t sub_2672F73D8(uint64_t a1)
{
  v2 = sub_2672F74DC(&qword_2800FA3A0, &protocol conformance descriptor for SISchemaResponseCategory);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672F7440(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672F74DC(&qword_2800FA3A0, &protocol conformance descriptor for SISchemaResponseCategory);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672F74DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaResponseCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSelfTriggerSuppressionMetrics.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v16 = "lfTriggerSuppressionMetrics";
  v8 = *(v2 + 104);
  v8(v4, *MEMORY[0x277D3E508], v1);
  v19[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, v16 | 0x8000000000000000);
  v11(v19, 0);
  v8(v4, *MEMORY[0x277D3E518], v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000030, 0x8000000267499420);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F4690, 0x277D588C8);
  sub_266ECAF2C(&qword_2800F4688, &qword_2800F4690, 0x277D588C8, &protocol conformance descriptor for MHSchemaMHSelfTriggerSuppressionSession);
  sub_26738122C();
  v10(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, 0x8000000267499460);
  return v13(v19, 0);
}

uint64_t sub_2672F792C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F7990(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaSendWithoutConfirmation.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v25 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v20 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v22 = a1;
  sub_26738119C();
  v10 = *(v3 + 104);
  v24 = *MEMORY[0x277D3E4E8];
  v9 = v24;
  v10(v5, v24, v2);
  v23 = v3 + 104;
  v26[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = v12;
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x656C62616E457369, 0xE900000000000064);
  v14(v26, 0);
  v21 = "nfirmationEnabled";
  v15 = v9;
  v16 = v25;
  v10(v5, v15, v25);
  v26[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v21 | 0x8000000000000000);
  v17(v26, 0);
  v10(v5, v24, v16);
  v26[0] = 1;
  sub_26738114C();
  v13(v8, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267469A00);
  return v18(v26, 0);
}

uint64_t sub_2672F7E34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F7E98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672F7EFC()
{
  result = qword_2800FA0A0;
  if (!qword_2800FA0A0)
  {
    sub_2672F7F54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA0A0);
  }

  return result;
}

unint64_t sub_2672F7F54()
{
  result = qword_2800FA098;
  if (!qword_2800FA098)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA098);
  }

  return result;
}

uint64_t static SISchemaServerEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v26 = *(v1 - 8);
  v27 = v1;
  MEMORY[0x28223BE20](v1);
  v25 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA3A8, 0x277D5AA00);
  sub_266ECAF2C(&qword_2800FA3B0, &qword_2800FA3A8, 0x277D5AA00, &protocol conformance descriptor for SISchemaServerEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v28, 0);
  sub_266ECB294(0, &qword_2800FA3B8, 0x277D5AC88);
  sub_266ECAF2C(&qword_2800FA3C0, &qword_2800FA3B8, 0x277D5AC88, &protocol conformance descriptor for SISchemaUserSpeechDuration);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x80000002674994F0);
  v9(v28, 0);
  sub_266ECB294(0, &qword_2800F9AB8, 0x277D5A830);
  sub_266ECAF2C(&qword_2800F9AC0, &qword_2800F9AB8, 0x277D5A830, &protocol conformance descriptor for SISchemaConversationTrace);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, 0x8000000267499510);
  v10(v28, 0);
  sub_266ECB294(0, &qword_2800FA3C8, 0x277D5AA70);
  sub_266ECAF2C(&qword_2800FA3D0, &qword_2800FA3C8, 0x277D5AA70, &protocol conformance descriptor for SISchemaTurnInteraction);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x65746E496E727574, 0xEF6E6F6974636172);
  v11(v28, 0);
  sub_266ECB294(0, &qword_2800FA3D8, 0x277D5AA30);
  sub_266ECAF2C(&qword_2800FA3E0, &qword_2800FA3D8, 0x277D5AA30, &protocol conformance descriptor for SISchemaSpeechResultSelected);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x8000000267499530);
  v12(v28, 0);
  sub_266ECB294(0, &qword_2800F9AD8, 0x277D5A848);
  sub_266ECAF2C(&qword_2800F9AE0, &qword_2800F9AD8, 0x277D5A848, &protocol conformance descriptor for SISchemaDeviceFixedContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x8000000267499550);
  v13(v28, 0);
  sub_266ECB294(0, &qword_2800FA3E8, 0x277D5AA08);
  sub_266ECAF2C(&qword_2800FA3F0, &qword_2800FA3E8, 0x277D5AA08, &protocol conformance descriptor for SISchemaServerGeneratedDismissal);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v14 = v25;
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x8000000267499570);
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
  v16(v28, 0);
  sub_266ECB128(&unk_287892638);
  return sub_2673811CC();
}

uint64_t sub_2672F8808(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2672F88A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_2672F896C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F89D0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672F8A30(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FA3F8, &qword_2800FA400, 0x277D5A9F8, &protocol conformance descriptor for SISchemaServerEvent);
  a1[2] = sub_266ECAF2C(&qword_2800FA408, &qword_2800FA400, 0x277D5A9F8, &protocol conformance descriptor for SISchemaServerEvent);
  result = sub_266ECAF2C(&qword_2800FA410, &qword_2800FA400, 0x277D5A9F8, &protocol conformance descriptor for SISchemaServerEvent);
  a1[3] = result;
  return result;
}

uint64_t static SISchemaServerEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v3 + 104);
  v30 = *MEMORY[0x277D3E4F8];
  v37 = v2;
  v38 = v3 + 104;
  v35 = v9;
  v9(v5);
  v40[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v33 = *(v11 + 56);
  v34 = v11 + 56;
  v33(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  v32 = v8;
  sub_266EC637C(v8, 0x44496E727574, 0xE600000000000000);
  v12(v40, 0);
  v36 = a1;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v39, 0x44496E727574, 0xE600000000000000);
  v15 = *(v11 + 48);
  v31 = v11 + 48;
  v29 = v15;
  if (!v15(v16, 1, v10))
  {
    sub_266ECB128(&unk_287892668);
    sub_26738115C();
  }

  (v14)(v39, 0);
  v13(v40, 0);
  v17 = v37;
  v18 = v35;
  v35(v5, *MEMORY[0x277D3E510], v37);
  v40[0] = 1;
  v19 = v32;
  sub_26738114C();
  v20 = v33;
  v33(v19, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v19, 0x6D617473656D6974, 0xEB00000000734E70);
  v21(v40, 0);
  v18(v5, v30, v17);
  v40[0] = 1;
  sub_26738114C();
  v20(v19, 0, 1, v10);
  v22 = sub_2673811AC();
  sub_266EC637C(v19, 0x6976654469726973, 0xEC00000044496563);
  v22(v40, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v39, 0x6976654469726973, 0xEC00000044496563);
  if (!v29(v25, 1, v10))
  {
    sub_266ECB128(&unk_287892698);
    sub_26738115C();
  }

  (v24)(v39, 0);
  v23(v40, 0);
  v35(v5, *MEMORY[0x277D3E530], v37);
  v40[0] = 1;
  v26 = v32;
  sub_26738114C();
  v33(v26, 0, 1, v10);
  v27 = sub_2673811AC();
  sub_266EC637C(v26, 0x6F50726576726573, 0xE900000000000064);
  return v27(v40, 0);
}

uint64_t sub_2672F9148(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F91AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672F9210()
{
  result = qword_2800FA3B0;
  if (!qword_2800FA3B0)
  {
    sub_2672F9268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA3B0);
  }

  return result;
}

unint64_t sub_2672F9268()
{
  result = qword_2800FA3A8;
  if (!qword_2800FA3A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA3A8);
  }

  return result;
}

uint64_t static SISchemaServerGeneratedDismissal.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaServerGeneratedDismissalReason(0);
  sub_2672F95A4(&qword_2800FA420, type metadata accessor for SISchemaServerGeneratedDismissalReason, &protocol conformance descriptor for SISchemaServerGeneratedDismissalReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001ELL, 0x8000000267499600);
  return v5(v7, 0);
}

uint64_t sub_2672F9498(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F94FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672F95A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672F95EC()
{
  result = qword_2800FA3E8;
  if (!qword_2800FA3E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA3E8);
  }

  return result;
}

uint64_t static SISchemaServerGeneratedDismissalReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x8000000267499660, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000038, 0x8000000267499690, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000037, 0x80000002674996D0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000037, 0x8000000267499710, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000003BLL, 0x8000000267499750, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000032, 0x8000000267499790, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_2672F99A0(uint64_t a1)
{
  v2 = sub_2672F9AA4(&qword_2800FA428, &protocol conformance descriptor for SISchemaServerGeneratedDismissalReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672F9A08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672F9AA4(&qword_2800FA428, &protocol conformance descriptor for SISchemaServerGeneratedDismissalReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672F9AA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaServerGeneratedDismissalReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriCue.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaSiriCueType(0);
  sub_2672F9F4C(&qword_2800FA430, type metadata accessor for SISchemaSiriCueType, &protocol conformance descriptor for SISchemaSiriCueType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x5465754369726973, 0xEB00000000657079);
  return v5(v7, 0);
}

uint64_t sub_2672F9CB0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaSiriCueType(0);
  sub_2672F9F4C(&qword_2800FA430, type metadata accessor for SISchemaSiriCueType, &protocol conformance descriptor for SISchemaSiriCueType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x5465754369726973, 0xEB00000000657079);
  return v5(v7, 0);
}

uint64_t sub_2672F9E40(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672F9EA4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672F9F4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672F9F94()
{
  result = qword_2800F9B18;
  if (!qword_2800F9B18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9B18);
  }

  return result;
}

uint64_t static SISchemaSiriCueType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267499820, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000011, 0x8000000267499850, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x8000000267499870, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000012, 0x8000000267499890, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2672FA268(uint64_t a1)
{
  v2 = sub_2672FA36C(&qword_2800FA438, &protocol conformance descriptor for SISchemaSiriCueType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FA2D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FA36C(&qword_2800FA438, &protocol conformance descriptor for SISchemaSiriCueType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FA36C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriCueType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriDirectAction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x80000002674998E0, isUniquelyReferenced_nonNull_native);
  *v3 = v46;

  v1(v57, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267499910, v8);
  *v7 = v47;

  v5(v57, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x8000000267499940, v12);
  *v11 = v48;

  v9(v57, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x8000000267499960, v16);
  *v15 = v49;

  v13(v57, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001CLL, 0x8000000267499980, v20);
  *v19 = v50;

  v17(v57, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x80000002674999A0, v24);
  *v23 = v51;

  v21(v57, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001BLL, 0x80000002674999C0, v28);
  *v27 = v52;

  v25(v57, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001ELL, 0x80000002674999E0, v32);
  *v31 = v53;

  v29(v57, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001DLL, 0x8000000267499A00, v36);
  *v35 = v54;

  v33(v57, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001BLL, 0x8000000267499A20, v40);
  *v39 = v55;

  v37(v57, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001FLL, 0x8000000267499A40, v44);
  *v43 = v56;

  return v41(v57, 0);
}

uint64_t sub_2672FA958(uint64_t a1)
{
  v2 = sub_2672FAA5C(&qword_2800FA440, &protocol conformance descriptor for SISchemaSiriDirectAction);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FA9C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FAA5C(&qword_2800FA440, &protocol conformance descriptor for SISchemaSiriDirectAction);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FAA5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriDirectAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriHardwareButtonLongPressBehavior.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x8000000267499AA0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000032, 0x8000000267499AD0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002BLL, 0x8000000267499B10, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003BLL, 0x8000000267499B40, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2672FAD28(uint64_t a1)
{
  v2 = sub_2672FAE2C(&qword_2800FA448, &protocol conformance descriptor for SISchemaSiriHardwareButtonLongPressBehavior);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FAD90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FAE2C(&qword_2800FA448, &protocol conformance descriptor for SISchemaSiriHardwareButtonLongPressBehavior);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FAE2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriHardwareButtonLongPressBehavior(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriInCallEnablementState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x8000000267499BC0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002ALL, 0x8000000267499BF0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267499C20, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000027, 0x8000000267499C50, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2672FB0F4(uint64_t a1)
{
  v2 = sub_2672FB1F8(&qword_2800FA450, &protocol conformance descriptor for SISchemaSiriInCallEnablementState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FB15C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FB1F8(&qword_2800FA450, &protocol conformance descriptor for SISchemaSiriInCallEnablementState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FB1F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriInCallEnablementState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriPauseTimeState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ALL, 0x8000000267499CB0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x8000000267499CD0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267499CF0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x8000000267499D10, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2672FB4C8(uint64_t a1)
{
  v2 = sub_2672FB5CC(&qword_2800FA458, &protocol conformance descriptor for SISchemaSiriPauseTimeState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FB530(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FB5CC(&qword_2800FA458, &protocol conformance descriptor for SISchemaSiriPauseTimeState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FB5CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriPauseTimeState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriPresentationType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000033, 0x8000000267499D60, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267499DA0, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267499DC0, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267499DE0, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x8000000267499E00, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x8000000267499E20, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000020, 0x8000000267499E50, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001CLL, 0x8000000267499E80, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_2672FBA58(uint64_t a1)
{
  v2 = sub_2672FBB5C(&qword_2800FA468, &protocol conformance descriptor for SISchemaSiriPresentationType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FBAC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FBB5C(&qword_2800FA468, &protocol conformance descriptor for SISchemaSiriPresentationType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FBB5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriPresentationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriProductType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000029, 0x8000000267499ED0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267499F00, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000019, 0x8000000267499F20, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x8000000267499F40, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2672FBE28(uint64_t a1)
{
  v2 = sub_2672FBF2C(&qword_2800FA478, &protocol conformance descriptor for SISchemaSiriProductType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FBE90(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FBF2C(&qword_2800FA478, &protocol conformance descriptor for SISchemaSiriProductType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FBF2C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriProductType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriResponseContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v14[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x6850676F6C616964, 0xEB00000000657361);
  v10(v14, 0);
  type metadata accessor for SISchemaSiriPresentationType(0);
  sub_2672FC464(&qword_2800FA460, type metadata accessor for SISchemaSiriPresentationType, &protocol conformance descriptor for SISchemaSiriPresentationType);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x8000000267499F90);
  v11(v14, 0);
  type metadata accessor for SISchemaSiriResponseMode(0);
  sub_2672FC464(&qword_2800FA480, type metadata accessor for SISchemaSiriResponseMode, &protocol conformance descriptor for SISchemaSiriResponseMode);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x8000000267499FB0);
  return v12(v14, 0);
}

uint64_t sub_2672FC358(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672FC3BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672FC464(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672FC4AC()
{
  result = qword_2800FA490;
  if (!qword_2800FA490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA490);
  }

  return result;
}

uint64_t static SISchemaSiriResponseMode.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026749A000, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x800000026749A030, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x800000026749A050, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x800000026749A070, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001DLL, 0x800000026749A090, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000020, 0x800000026749A0B0, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ELL, 0x800000026749A0E0, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001BLL, 0x800000026749A100, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_2672FC940(uint64_t a1)
{
  v2 = sub_2672FCA44(&qword_2800FA498, &protocol conformance descriptor for SISchemaSiriResponseMode);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FC9A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FCA44(&qword_2800FA498, &protocol conformance descriptor for SISchemaSiriResponseMode);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FCA44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriResponseMode(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriUILocation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x800000026749A150, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x800000026749A180, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x800000026749A1A0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x800000026749A1C0, v16);
  *v15 = v21;

  v13(v22, 0);
  sub_266ECB128(&unk_2878926C8);
  return sub_26738112C();
}

uint64_t sub_2672FCD20(uint64_t a1)
{
  v2 = sub_2672FCE24(&qword_2800FA4A8, &protocol conformance descriptor for SISchemaSiriUILocation);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FCD88(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FCE24(&qword_2800FA4A8, &protocol conformance descriptor for SISchemaSiriUILocation);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FCE24(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriUILocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriUISettings.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *(v3 + 104);
  v30 = *MEMORY[0x277D3E4E8];
  v31 = v2;
  v37 = v3 + 104;
  v35 = v9;
  (v9)(v5);
  v40[0] = 1;
  v29 = v5;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v33 = *(v11 + 56);
  v34 = v11 + 56;
  v33(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x800000026749A210);
  v12(v40, 0);
  v38 = a1;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v39, 0xD00000000000001ELL, 0x800000026749A210);
  v15 = *(v11 + 48);
  v36 = v11 + 48;
  v32 = v15;
  if (!v15(v16, 1, v10))
  {
    sub_266ECB128(&unk_2878926F0);
    sub_26738115C();
  }

  (v14)(v39, 0);
  v13(v40, 0);
  v17 = v29;
  v18 = v30;
  v19 = v31;
  v35(v29, v30, v31);
  v40[0] = 1;
  sub_26738114C();
  v33(v8, 0, 1, v10);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026749A230);
  v20(v40, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v39, 0xD000000000000014, 0x800000026749A230);
  if (!v32(v23, 1, v10))
  {
    sub_266ECB128(&unk_287892718);
    sub_26738115C();
  }

  (v22)(v39, 0);
  v21(v40, 0);
  v35(v17, v18, v19);
  v40[0] = 1;
  sub_26738114C();
  v33(v8, 0, 1, v10);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026749A250);
  v24(v40, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v39, 0xD000000000000014, 0x800000026749A250);
  if (!v32(v27, 1, v10))
  {
    sub_266ECB128(&unk_287892740);
    sub_26738115C();
  }

  (v26)(v39, 0);
  v25(v40, 0);
  sub_266ECB128(&unk_287892768);
  return sub_2673811CC();
}

uint64_t sub_2672FD460(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672FD4C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672FD528()
{
  result = qword_2800FA008;
  if (!qword_2800FA008)
  {
    sub_2672FD580();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA008);
  }

  return result;
}

unint64_t sub_2672FD580()
{
  result = qword_2800FA000;
  if (!qword_2800FA000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA000);
  }

  return result;
}

uint64_t static SISchemaSiriUISize.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026749A2A0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026749A2C0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x800000026749A2F0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2672FD7E4(uint64_t a1)
{
  v2 = sub_2672FD8E8(&qword_2800FA4B8, &protocol conformance descriptor for SISchemaSiriUISize);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FD84C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FD8E8(&qword_2800FA4B8, &protocol conformance descriptor for SISchemaSiriUISize);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FD8E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriUISize(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriUIState.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000021, 0x800000026749A340, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000010, 0x800000026749A370, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x800000026749A390, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x800000026749A3B0, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000015, 0x800000026749A3D0, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000013, 0x800000026749A3F0, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_2672FDC94(uint64_t a1)
{
  v2 = sub_2672FDD98(&qword_2800FA4C8, &protocol conformance descriptor for SISchemaSiriUIState);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FDCFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FDD98(&qword_2800FA4C8, &protocol conformance descriptor for SISchemaSiriUIState);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FDD98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriUIState(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriUnavailableReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026749A440, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026749A460, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x800000026749A490, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2672FDFF0(uint64_t a1)
{
  v2 = sub_2672FE0F4(&qword_2800FA4D8, &protocol conformance descriptor for SISchemaSiriUnavailableReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FE058(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FE0F4(&qword_2800FA4D8, &protocol conformance descriptor for SISchemaSiriUnavailableReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FE0F4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSiriUnavailableReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSiriVoiceTriggerSettings.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v24 = "riVoiceTriggerSettings";
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
  sub_266EC637C(v8, 0xD00000000000001DLL, v24 | 0x8000000000000000);
  v15(v27, 0);
  v24 = "isHeySiriTriggerPhraseEnabled";
  v16 = v9;
  v17 = v25;
  v11(v5, v16, v25);
  v27[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v24 | 0x8000000000000000);
  v18(v27, 0);
  v21(v5, v22, v17);
  v27[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026749A540);
  return v19(v27, 0);
}

uint64_t sub_2672FE54C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672FE5B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2672FE614()
{
  result = qword_2800FA0C0;
  if (!qword_2800FA0C0)
  {
    sub_2672FE66C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA0C0);
  }

  return result;
}

unint64_t sub_2672FE66C()
{
  result = qword_2800FA0B8;
  if (!qword_2800FA0B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA0B8);
  }

  return result;
}

uint64_t static SISchemaSpeechResultCandidateSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(1, 0x535F544C55534552, 0xEF44455443454C45, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x800000026749A5A0, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_2672FE858(uint64_t a1)
{
  v2 = sub_2672FE95C(&qword_2800FA4E8, &protocol conformance descriptor for SISchemaSpeechResultCandidateSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FE8C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FE95C(&qword_2800FA4E8, &protocol conformance descriptor for SISchemaSpeechResultCandidateSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FE95C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSpeechResultCandidateSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSpeechResultSelected.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674206D0);
  v10(v13, 0);
  type metadata accessor for SISchemaSpeechResultCandidateSource(0);
  sub_2672FEDCC(&qword_2800FA4E0, type metadata accessor for SISchemaSpeechResultCandidateSource, &protocol conformance descriptor for SISchemaSpeechResultCandidateSource);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x656372756F73, 0xE600000000000000);
  return v11(v13, 0);
}

uint64_t sub_2672FECC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672FED24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672FEDCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672FEE14()
{
  result = qword_2800FA3D8;
  if (!qword_2800FA3D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA3D8);
  }

  return result;
}

uint64_t static SISchemaSpeechTranscription.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0x4449656361, 0xE500000000000000);
  v10(v13, 0);
  type metadata accessor for SISchemaSpeechTranscriptionType(0);
  sub_2672FF28C(&qword_2800FA4F0, type metadata accessor for SISchemaSpeechTranscriptionType, &protocol conformance descriptor for SISchemaSpeechTranscriptionType);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, 0x800000026749A620);
  return v11(v13, 0);
}

uint64_t sub_2672FF180(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2672FF1E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2672FF28C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2672FF2D4()
{
  result = qword_2800F9B38;
  if (!qword_2800F9B38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9B38);
  }

  return result;
}

uint64_t static SISchemaSpeechTranscriptionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000039, 0x800000026749A670, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001FLL, 0x800000026749A6B0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x800000026749A6D0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x800000026749A6F0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_2672FF5A4(uint64_t a1)
{
  v2 = sub_2672FF6A8(&qword_2800FA4F8, &protocol conformance descriptor for SISchemaSpeechTranscriptionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FF60C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FF6A8(&qword_2800FA4F8, &protocol conformance descriptor for SISchemaSpeechTranscriptionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FF6A8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSpeechTranscriptionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSpokenNotificationsWhitelistSetting.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 1162760014, 0xE400000000000000, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0x53544341544E4F43, 0xE800000000000000, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0x53544E45434552, 0xE700000000000000, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0x454E4F5952455645, 0xE800000000000000, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0x455449524F564146, 0xE800000000000000, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_2672FF9C4(uint64_t a1)
{
  v2 = sub_2672FFAC8(&qword_2800FA500, &protocol conformance descriptor for SISchemaSpokenNotificationsWhitelistSetting);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2672FFA2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2672FFAC8(&qword_2800FA500, &protocol conformance descriptor for SISchemaSpokenNotificationsWhitelistSetting);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2672FFAC8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSpokenNotificationsWhitelistSetting(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaSubRequestType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v64 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000016, 0x800000026749A7A0, isUniquelyReferenced_nonNull_native);
  *v3 = v64;

  v1(v78, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v65 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x800000026749A7C0, v8);
  *v7 = v65;

  v5(v78, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v66 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000016, 0x800000026749A7E0, v12);
  *v11 = v66;

  v9(v78, 0);
  v13 = sub_266ECB128(&unk_287892790);
  v15 = v14;
  v16 = sub_2673810FC();
  v18 = v17;
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v67 = *v18;
  *v18 = 0x8000000000000000;
  sub_266ECD4CC(v13, v15, 2, v19);
  *v18 = v67;
  v16(v78, 0);
  v20 = sub_26738111C();
  v22 = v21;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *v22;
  *v22 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x800000026749A800, v23);
  *v22 = v68;

  v20(v78, 0);
  v24 = sub_266ECB128(&unk_2878927B8);
  v26 = v25;
  v27 = sub_2673810FC();
  v29 = v28;
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v29;
  *v29 = 0x8000000000000000;
  sub_266ECD4CC(v24, v26, 3, v30);
  *v29 = v69;
  v27(v78, 0);
  v31 = sub_26738111C();
  v33 = v32;
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v70 = *v33;
  *v33 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x800000026749A820, v34);
  *v33 = v70;

  v31(v78, 0);
  v35 = sub_26738111C();
  v37 = v36;
  v38 = swift_isUniquelyReferenced_nonNull_native();
  v71 = *v37;
  *v37 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001DLL, 0x800000026749A850, v38);
  *v37 = v71;

  v35(v78, 0);
  v39 = sub_26738111C();
  v41 = v40;
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *v41;
  *v41 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ELL, 0x800000026749A870, v42);
  *v41 = v72;

  v39(v78, 0);
  v43 = sub_26738111C();
  v45 = v44;
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v73 = *v45;
  *v45 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000020, 0x800000026749A890, v46);
  *v45 = v73;

  v43(v78, 0);
  v47 = sub_26738111C();
  v49 = v48;
  v50 = swift_isUniquelyReferenced_nonNull_native();
  v74 = *v49;
  *v49 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000020, 0x800000026749A8C0, v50);
  *v49 = v74;

  v47(v78, 0);
  v51 = sub_26738111C();
  v53 = v52;
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v75 = *v53;
  *v53 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000001DLL, 0x800000026749A8F0, v54);
  *v53 = v75;

  v51(v78, 0);
  v55 = sub_26738111C();
  v57 = v56;
  v58 = swift_isUniquelyReferenced_nonNull_native();
  v76 = *v57;
  *v57 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000024, 0x800000026749A910, v58);
  *v57 = v76;

  v55(v78, 0);
  v59 = sub_26738111C();
  v61 = v60;
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v77 = *v61;
  *v61 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000021, 0x800000026749A940, v62);
  *v61 = v77;

  return v59(v78, 0);
}

uint64_t sub_2673001FC(uint64_t a1)
{
  v2 = sub_267300300(&qword_2800FA508, &protocol conformance descriptor for SISchemaSubRequestType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267300264(uint64_t a1, uint64_t a2)
{
  v4 = sub_267300300(&qword_2800FA508, &protocol conformance descriptor for SISchemaSubRequestType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267300300(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaSubRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaTapToEditInvocationContext.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000012, 0x800000026749A9B0);
  return v8(v10, 0);
}

uint64_t sub_267300594(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673005F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730065C()
{
  result = qword_2800FA208;
  if (!qword_2800FA208)
  {
    sub_2673006B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA208);
  }

  return result;
}

unint64_t sub_2673006B4()
{
  result = qword_2800FA200;
  if (!qword_2800FA200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA200);
  }

  return result;
}

uint64_t static SISchemaTemperatureScale.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x800000026749AA00, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x800000026749AA20, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026749AA40, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267300918(uint64_t a1)
{
  v2 = sub_267300A1C(&qword_2800FA510, &protocol conformance descriptor for SISchemaTemperatureScale);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267300980(uint64_t a1, uint64_t a2)
{
  v4 = sub_267300A1C(&qword_2800FA510, &protocol conformance descriptor for SISchemaTemperatureScale);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267300A1C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaTemperatureScale(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaTextToSpeechBegin.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v22 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v3 + 104))(v5, *MEMORY[0x277D3E530], v2);
  v24[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x4449656361, 0xE500000000000000);
  v12(v24, 0);
  type metadata accessor for SISchemaAudioOutputRoute(0);
  sub_267301024();
  v22[1] = a1;
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x800000026749AA90);
  v13(v24, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v23, 0xD000000000000010, 0x800000026749AA90);
  v22[0] = *(v10 + 48);
  if (!(v22[0])(v16, 1, v9))
  {
    sub_266ECB128(&unk_2878927E0);
    sub_26738115C();
  }

  (v15)(v23, 0);
  v14(v24, 0);
  sub_266ECB294(0, &qword_2800F9950, 0x277D5A8D8);
  sub_266ECAF2C(&qword_2800F9958, &qword_2800F9950, 0x277D5A8D8, &protocol conformance descriptor for SISchemaHardwareInterfaceIdentifier);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x800000026748EED0);
  v17(v24, 0);
  v18 = sub_2673811AC();
  v19 = sub_266ECB6CC(v23, 0xD000000000000019, 0x800000026748EED0);
  if (!(v22[0])(v20, 1, v9))
  {
    sub_266ECB128(&unk_287892808);
    sub_26738115C();
  }

  (v19)(v23, 0);
  return v18(v24, 0);
}

uint64_t sub_267300F60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267300FC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267301024()
{
  result = qword_2800F9978;
  if (!qword_2800F9978)
  {
    type metadata accessor for SISchemaAudioOutputRoute(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9978);
  }

  return result;
}

uint64_t static SISchemaTextToSpeechEnd.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x4449656361, 0xE500000000000000);
  return v8(v10, 0);
}

uint64_t sub_267301308(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730136C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673013D0()
{
  result = qword_2800F9B60;
  if (!qword_2800F9B60)
  {
    sub_267301428();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9B60);
  }

  return result;
}

unint64_t sub_267301428()
{
  result = qword_2800F9B58;
  if (!qword_2800F9B58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9B58);
  }

  return result;
}

uint64_t static SISchemaTranscriptEventType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x800000026749AB10, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x800000026749AB30, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x800000026749AB60, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000033, 0x800000026749AB90, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000022, 0x800000026749ABD0, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000029, 0x800000026749AC00, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002FLL, 0x800000026749AC30, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x800000026749AC60, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000027, 0x800000026749AC90, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_26730192C(uint64_t a1)
{
  v2 = sub_267301A30(&qword_2800FA518, &protocol conformance descriptor for SISchemaTranscriptEventType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267301994(uint64_t a1, uint64_t a2)
{
  v4 = sub_267301A30(&qword_2800FA518, &protocol conformance descriptor for SISchemaTranscriptEventType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267301A30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaTranscriptEventType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaTranscriptShownReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x800000026749ACF0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x800000026749AD10, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000036, 0x800000026749AD40, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267301C88(uint64_t a1)
{
  v2 = sub_267301D8C(&qword_2800FA528, &protocol conformance descriptor for SISchemaTranscriptShownReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267301CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267301D8C(&qword_2800FA528, &protocol conformance descriptor for SISchemaTranscriptShownReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267301D8C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaTranscriptShownReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaTriggerPhrase.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x800000026749ADB0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x800000026749ADD0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000012, 0x800000026749ADF0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267301FE4(uint64_t a1)
{
  v2 = sub_2673020E8(&qword_2800FA530, &protocol conformance descriptor for SISchemaTriggerPhrase);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26730204C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673020E8(&qword_2800FA530, &protocol conformance descriptor for SISchemaTriggerPhrase);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673020E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaTriggerPhrase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaTRPRequestLink.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449707274, 0xE500000000000000);
  v6(v10, 0);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x4974736575716572, 0xE900000000000064);
  v7(v10, 0);
  type metadata accessor for SISchemaTRPRequestLinkSource(0);
  sub_26730263C();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x656372756F73, 0xE600000000000000);
  v8(v10, 0);
  sub_266ECB128(&unk_287892830);
  return sub_2673811CC();
}

uint64_t sub_267302414(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_2673024AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267302578(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673025DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730263C()
{
  result = qword_2800FA538;
  if (!qword_2800FA538)
  {
    type metadata accessor for SISchemaTRPRequestLinkSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA538);
  }

  return result;
}

uint64_t sub_267302694(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800FA540, &qword_2800FA548, 0x277D5AA40, &protocol conformance descriptor for SISchemaTRPRequestLink);
  a1[2] = sub_266ECAF2C(&qword_2800FA550, &qword_2800FA548, 0x277D5AA40, &protocol conformance descriptor for SISchemaTRPRequestLink);
  result = sub_266ECAF2C(&qword_2800FA558, &qword_2800FA548, 0x277D5AA40, &protocol conformance descriptor for SISchemaTRPRequestLink);
  a1[3] = result;
  return result;
}

uint64_t static SISchemaTRPRequestLinkSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001CLL, 0x800000026749AE70, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026749AE90, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x800000026749AEC0, v12);
  *v11 = v16;

  v9(v17, 0);
  sub_266ECB128(&unk_287892860);
  return sub_26738112C();
}

uint64_t sub_2673029BC(uint64_t a1)
{
  v2 = sub_267302AC0(&qword_2800FA568, &protocol conformance descriptor for SISchemaTRPRequestLinkSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267302A24(uint64_t a1, uint64_t a2)
{
  v4 = sub_267302AC0(&qword_2800FA568, &protocol conformance descriptor for SISchemaTRPRequestLinkSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267302AC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaTRPRequestLinkSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaTurnInteraction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7463617265746E69, 0xED000064496E6F69);
  return v8(v10, 0);
}

uint64_t sub_267302D5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267302DC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267302E24()
{
  result = qword_2800FA3D0;
  if (!qword_2800FA3D0)
  {
    sub_267302E7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA3D0);
  }

  return result;
}

unint64_t sub_267302E7C()
{
  result = qword_2800FA3C8;
  if (!qword_2800FA3C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA3C8);
  }

  return result;
}

uint64_t static SISchemaTurnMTERequest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x657571655265746DLL, 0xEC00000064497473);
  return v5(v7, 0);
}

uint64_t sub_2673030A4(uint64_t a1)
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
  sub_266EC637C(v3, 0x657571655265746DLL, 0xEC00000064497473);
  return v5(v7, 0);
}

uint64_t sub_267303248(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673032AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaTVRemoteInvocationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaTVRemoteType(0);
  sub_2673037AC(&qword_2800FA570, type metadata accessor for SISchemaTVRemoteType, &protocol conformance descriptor for SISchemaTVRemoteType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x795465746F6D6572, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_267303514(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaTVRemoteType(0);
  sub_2673037AC(&qword_2800FA570, type metadata accessor for SISchemaTVRemoteType, &protocol conformance descriptor for SISchemaTVRemoteType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x795465746F6D6572, 0xEA00000000006570);
  return v5(v7, 0);
}

uint64_t sub_2673036A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267303704(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2673037AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2673037F4()
{
  result = qword_2800FA1F0;
  if (!qword_2800FA1F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA1F0);
  }

  return result;
}

uint64_t static SISchemaTVRemoteType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000014, 0x800000026749AFC0, isUniquelyReferenced_nonNull_native);
  *v3 = v41;

  v1(v50, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001BLL, 0x800000026749AFE0, v8);
  *v7 = v42;

  v5(v50, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026749B000, v12);
  *v11 = v43;

  v9(v50, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x800000026749B020, v16);
  *v15 = v44;

  v13(v50, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x800000026749B040, v20);
  *v19 = v45;

  v17(v50, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ALL, 0x800000026749B060, v24);
  *v23 = v46;

  v21(v50, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001DLL, 0x800000026749B080, v28);
  *v27 = v47;

  v25(v50, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000001FLL, 0x800000026749B0A0, v32);
  *v31 = v48;

  v29(v50, 0);
  v33 = sub_266ECB128(&unk_287892890);
  v35 = v34;
  v36 = sub_2673810FC();
  v38 = v37;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v38;
  *v38 = 0x8000000000000000;
  sub_266ECD4CC(v33, v35, 7, v39);
  *v38 = v49;
  return v36(v50, 0);
}

uint64_t sub_267303CFC(uint64_t a1)
{
  v2 = sub_267303E00(&qword_2800FA578, &protocol conformance descriptor for SISchemaTVRemoteType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267303D64(uint64_t a1, uint64_t a2)
{
  v4 = sub_267303E00(&qword_2800FA578, &protocol conformance descriptor for SISchemaTVRemoteType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267303E00(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaTVRemoteType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaTypingRequestTrace.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4F8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001FLL, 0x800000026749B0F0);
  return v8(v10, 0);
}

uint64_t sub_267304094(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673040F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730415C()
{
  result = qword_2800F9EA0;
  if (!qword_2800F9EA0)
  {
    sub_2673041B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9EA0);
  }

  return result;
}

unint64_t sub_2673041B4()
{
  result = qword_2800F9E98;
  if (!qword_2800F9E98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9E98);
  }

  return result;
}

uint64_t static SISchemaUEIDictationAlternativeConfusionPairsSelected.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v33 = v1;
  v34 = v2;
  MEMORY[0x28223BE20](v1);
  v32 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF350, 0x277D56868);
  sub_266ECAF2C(&qword_2800EF348, &qword_2800EF350, 0x277D56868, &protocol conformance descriptor for ASRSchemaASRConfusionPairToken);
  sub_26738122C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v31 = *(v8 + 56);
  v27 = v8 + 56;
  v31(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x800000026749B160);
  v9(v36, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v35, 0xD000000000000015, 0x800000026749B160);
  v30 = *(v8 + 48);
  if (!v30(v12, 1, v7))
  {
    sub_266ECB128(&unk_2878928C0);
    sub_26738115C();
  }

  (v11)(v35, 0);
  v10(v36, 0);
  v13 = *(v34 + 104);
  v29 = *MEMORY[0x277D3E508];
  v34 += 104;
  v28 = v13;
  v13(v32);
  v36[0] = 1;
  sub_26738114C();
  v31(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x74656C65446D756ELL, 0xEC000000736E6F69);
  v14(v36, 0);
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v35, 0x74656C65446D756ELL, 0xEC000000736E6F69);
  if (!v30(v17, 1, v7))
  {
    sub_266ECB128(&unk_2878928E8);
    sub_26738115C();
  }

  (v16)(v35, 0);
  v15(v36, 0);
  v28(v32, v29, v33);
  v36[0] = 1;
  sub_26738114C();
  v31(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x7265736E496D756ELL, 0xED0000736E6F6974);
  v18(v36, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v35, 0x7265736E496D756ELL, 0xED0000736E6F6974);
  if (!v30(v21, 1, v7))
  {
    sub_266ECB128(&unk_287892910);
    sub_26738115C();
  }

  (v20)(v35, 0);
  v19(v36, 0);
  v28(v32, v29, v33);
  v36[0] = 1;
  sub_26738114C();
  v31(v6, 0, 1, v7);
  v22 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x80000002674212E0);
  v22(v36, 0);
  v23 = sub_2673811AC();
  v24 = sub_266ECB6CC(v35, 0xD000000000000010, 0x80000002674212E0);
  if (!v30(v25, 1, v7))
  {
    sub_266ECB128(&unk_287892938);
    sub_26738115C();
  }

  (v24)(v35, 0);
  v23(v36, 0);
  sub_266ECB128(&unk_287892960);
  return sub_2673811CC();
}

uint64_t sub_26730495C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673049C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIDictationAlternativeTextPairsSelected.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF350, 0x277D56868);
  sub_266ECAF2C(&qword_2800EF348, &qword_2800EF350, 0x277D56868, &protocol conformance descriptor for ASRSchemaASRConfusionPairToken);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026749B160);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0xD000000000000015, 0x800000026749B160);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287892990);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_267304D04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267304D68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIDictationContentEditedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F99C8, 0x277D5A7C0);
  sub_266ECAF2C(&qword_2800F99C0, &qword_2800F99C8, 0x277D5A7C0, &protocol conformance descriptor for SISchemaAutoPunctuationEdit);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x8000000267491C30);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0xD000000000000014, 0x8000000267491C30);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878929B8);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2673050AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267305110(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIDictationDiscoveryToolTip.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x800000026749B250, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000028, 0x800000026749B280, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002FLL, 0x800000026749B2B0, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000025, 0x800000026749B2E0, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000026, 0x800000026749B310, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000021, 0x800000026749B340, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000021, 0x800000026749B370, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000023, 0x800000026749B3A0, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000022, 0x800000026749B3D0, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_26730566C(uint64_t a1)
{
  v2 = sub_267305770(&qword_2800FA588, &protocol conformance descriptor for SISchemaUEIDictationDiscoveryToolTip);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673056D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267305770(&qword_2800FA588, &protocol conformance descriptor for SISchemaUEIDictationDiscoveryToolTip);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267305770(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIDictationDiscoveryToolTip(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEIDictationDiscoveryToolTipDismissalReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000033, 0x800000026749B450, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003ALL, 0x800000026749B490, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003ALL, 0x800000026749B4D0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2673059CC(uint64_t a1)
{
  v2 = sub_267305AD0(&qword_2800FA598, &protocol conformance descriptor for SISchemaUEIDictationDiscoveryToolTipDismissalReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267305A34(uint64_t a1, uint64_t a2)
{
  v4 = sub_267305AD0(&qword_2800FA598, &protocol conformance descriptor for SISchemaUEIDictationDiscoveryToolTipDismissalReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267305AD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIDictationDiscoveryToolTipDismissalReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEIDictationDiscoveryToolTipDismissed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaUEIDictationDiscoveryToolTipDismissalReason(0);
  sub_267305F80(&qword_2800FA590, type metadata accessor for SISchemaUEIDictationDiscoveryToolTipDismissalReason, &protocol conformance descriptor for SISchemaUEIDictationDiscoveryToolTipDismissalReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x617373696D736964, 0xEF6E6F736165526CLL);
  return v5(v7, 0);
}

uint64_t sub_267305CE0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaUEIDictationDiscoveryToolTipDismissalReason(0);
  sub_267305F80(&qword_2800FA590, type metadata accessor for SISchemaUEIDictationDiscoveryToolTipDismissalReason, &protocol conformance descriptor for SISchemaUEIDictationDiscoveryToolTipDismissalReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x617373696D736964, 0xEF6E6F736165526CLL);
  return v5(v7, 0);
}

uint64_t sub_267305E74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267305ED8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267305F80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267305FC8()
{
  result = qword_2800FA5A8;
  if (!qword_2800FA5A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA5A8);
  }

  return result;
}

uint64_t static SISchemaUEIDictationDiscoveryToolTipDisplayContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800FA5B0, 0x277D5AAB8);
  sub_266ECAF2C(&qword_2800FA5B8, &qword_2800FA5B0, 0x277D5AAB8, &protocol conformance descriptor for SISchemaUEIDictationDiscoveryToolTipShown);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FA5A8, 0x277D5AAA8);
  sub_266ECAF2C(&qword_2800FA5A0, &qword_2800FA5A8, 0x277D5AAA8, &protocol conformance descriptor for SISchemaUEIDictationDiscoveryToolTipDismissed);
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

uint64_t sub_26730652C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267306590(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIDictationDiscoveryToolTipShown.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for SISchemaUEIDictationDiscoveryToolTip(0);
  sub_267306A70(&qword_2800FA580, type metadata accessor for SISchemaUEIDictationDiscoveryToolTip, &protocol conformance descriptor for SISchemaUEIDictationDiscoveryToolTip);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x537069546C6F6F74, 0xEC0000006E776F68);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x696A6F6D45736168, 0xE800000000000000);
  return v10(v14, 0);
}

uint64_t sub_267306964(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673069C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267306A70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267306AB8()
{
  result = qword_2800FA5B0;
  if (!qword_2800FA5B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA5B0);
  }

  return result;
}

uint64_t static SISchemaUEIDictationEnablementPromptShown.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v18 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v18[1] = a1;
  sub_26738119C();
  v20 = "iri.odd.ODDDictationProperties";
  v9 = *MEMORY[0x277D3E4E8];
  v21 = *(v3 + 104);
  v22 = v3 + 104;
  v21(v5, v9, v2);
  v23[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v19 = v10;
  v11(v8, 0, 1, v10);
  v12 = v11;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v20 | 0x8000000000000000);
  v13(v23, 0);
  v20 = "tionEnablementPromptShown";
  v14 = v21;
  v21(v5, v9, v2);
  v23[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, v20 | 0x8000000000000000);
  v15(v23, 0);
  v14(v5, *MEMORY[0x277D3E510], v2);
  v23[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v19);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, 0x800000026749B640);
  return v16(v23, 0);
}

uint64_t sub_267306F10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267306F74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267306FD8()
{
  result = qword_2800F9DE0;
  if (!qword_2800F9DE0)
  {
    sub_267307030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9DE0);
  }

  return result;
}

unint64_t sub_267307030()
{
  result = qword_2800F9DD8;
  if (!qword_2800F9DD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9DD8);
  }

  return result;
}

uint64_t static SISchemaUEIDictationEuclidAlternativesEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for SISchemaDictationEuclidAlternativesEventType(0);
  sub_2673074CC(&qword_2800FA050, type metadata accessor for SISchemaDictationEuclidAlternativesEventType, &protocol conformance descriptor for SISchemaDictationEuclidAlternativesEventType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x707954746E657665, 0xE900000000000065);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E510], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001FLL, 0x800000026749B6A0);
  v10(v14, 0);
  sub_266ECB128(&unk_2878929E0);
  return sub_2673811CC();
}

uint64_t sub_2673073C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267307424(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2673074CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267307514()
{
  result = qword_2800F9E58;
  if (!qword_2800F9E58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9E58);
  }

  return result;
}

uint64_t static SISchemaUEIDictationEuclidAlternativesEventTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA100, 0x277D5A8B8);
  sub_266ECAF2C(&qword_2800FA0F8, &qword_2800FA100, 0x277D5A8B8, &protocol conformance descriptor for SISchemaEuclidConfusionPair);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F697375666E6F63, 0xED0000726961506ELL);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6F697375666E6F63, 0xED0000726961506ELL);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287892A08);
    sub_26738115C();
  }

  (v8)(v11, 0);
  v7(v12, 0);
  sub_266ECB128(&unk_287892A30);
  return sub_2673811CC();
}

uint64_t sub_267307824(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267307888(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIDictationEuclidSpeechAlternativesSelected.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for SISchemaDictationEuclidSpeechAlternativesType(0);
  sub_267307D70(&qword_2800FA060, type metadata accessor for SISchemaDictationEuclidSpeechAlternativesType, &protocol conformance descriptor for SISchemaDictationEuclidSpeechAlternativesType);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000016, 0x800000026749B760);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E510], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001FLL, 0x800000026749B6A0);
  return v10(v14, 0);
}

uint64_t sub_267307C64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267307CC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267307D70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267307DB8()
{
  result = qword_2800F9E78;
  if (!qword_2800F9E78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9E78);
  }

  return result;
}

uint64_t static SISchemaUEIDictationEuclidSpeechAlternativesSelectedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA100, 0x277D5A8B8);
  sub_266ECAF2C(&qword_2800FA0F8, &qword_2800FA100, 0x277D5A8B8, &protocol conformance descriptor for SISchemaEuclidConfusionPair);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6F697375666E6F63, 0xED0000726961506ELL);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6F697375666E6F63, 0xED0000726961506ELL);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287892A58);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2673080B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730811C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIDictationInputModeSwitchContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800FA5C0, 0x277D5AAF8);
  sub_266ECAF2C(&qword_2800FA5C8, &qword_2800FA5C0, 0x277D5AAF8, &protocol conformance descriptor for SISchemaUEIDictationInputModeSwitchStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800FA5D0, 0x277D5AAF0);
  sub_266ECAF2C(&qword_2800FA5D8, &qword_2800FA5D0, 0x277D5AAF0, &protocol conformance descriptor for SISchemaUEIDictationInputModeSwitchEnded);
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

uint64_t sub_26730860C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267308670(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIDictationInputModeSwitchEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26730895C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673089C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267308A24()
{
  result = qword_2800FA5D8;
  if (!qword_2800FA5D8)
  {
    sub_267308A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA5D8);
  }

  return result;
}

unint64_t sub_267308A7C()
{
  result = qword_2800FA5D0;
  if (!qword_2800FA5D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA5D0);
  }

  return result;
}

uint64_t static SISchemaUEIDictationInputModeSwitchStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267308D10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267308D74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267308DD8()
{
  result = qword_2800FA5C8;
  if (!qword_2800FA5C8)
  {
    sub_267308E30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA5C8);
  }

  return result;
}

unint64_t sub_267308E30()
{
  result = qword_2800FA5C0;
  if (!qword_2800FA5C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA5C0);
  }

  return result;
}

uint64_t static SISchemaUEIDictationPartialResultUpdated.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2673090C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267309128(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730918C()
{
  result = qword_2800F9D30;
  if (!qword_2800F9D30)
  {
    sub_2673091E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9D30);
  }

  return result;
}

unint64_t sub_2673091E4()
{
  result = qword_2800F9D28;
  if (!qword_2800F9D28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9D28);
  }

  return result;
}

uint64_t static SISchemaUEIDictationTranscriptionTokenized.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x6E656B6F546D756ELL, 0xE900000000000073);
  return v8(v10, 0);
}

uint64_t sub_267309480(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673094E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267309548()
{
  result = qword_2800F9D90;
  if (!qword_2800F9D90)
  {
    sub_2673095A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9D90);
  }

  return result;
}

unint64_t sub_2673095A0()
{
  result = qword_2800F9D88;
  if (!qword_2800F9D88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9D88);
  }

  return result;
}

uint64_t static SISchemaUEIDictationVoiceCommandDisambiguationAction.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v24 = sub_26738113C();
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v22 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(v7, 0, 1, v8);
  v22[1] = v11;
  v23 = v10;
  v25 = a2;
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D6F436563696F76, 0xEE006449646E616DLL);
  v12(v27, 0);
  type metadata accessor for SISchemaUEIVoiceCommandDisambiguationType(0);
  sub_267309B70();
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x800000026749B960);
  v13(v27, 0);
  v22[0] = "disambiguationType";
  v14 = *MEMORY[0x277D3E538];
  v15 = *(v26 + 104);
  v26 += 104;
  v16 = v4;
  v17 = v24;
  v15(v4, v14, v24);
  v27[0] = 1;
  sub_26738114C();
  v18 = v23;
  v23(v7, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v22[0] | 0x8000000000000000);
  v19(v27, 0);
  v15(v16, v14, v17);
  v27[0] = 1;
  sub_26738114C();
  v18(v7, 0, 1, v8);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001FLL, 0x800000026749B9A0);
  return v20(v27, 0);
}

uint64_t sub_267309AAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267309B10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267309B70()
{
  result = qword_2800FA5E0;
  if (!qword_2800FA5E0)
  {
    type metadata accessor for SISchemaUEIVoiceCommandDisambiguationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA5E0);
  }

  return result;
}

uint64_t static SISchemaUEIDictationVoiceCommandExecuted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738113C();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v37 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v11 = v9 + 56;
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D6F436563696F76, 0xEE006449646E616DLL);
  v12(v47, 0);
  type metadata accessor for SISchemaUEIVoiceCommandExecutionStatus(0);
  sub_26730A5C0(&qword_2800FA5E8, type metadata accessor for SISchemaUEIVoiceCommandExecutionStatus, &protocol conformance descriptor for SISchemaUEIVoiceCommandExecutionStatus);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v41 = v11;
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x53646E616D6D6F63, 0xED00007375746174);
  v13(v47, 0);
  type metadata accessor for SISchemaUEIVoiceCommandType(0);
  sub_26730A5C0(&qword_2800FA5F0, type metadata accessor for SISchemaUEIVoiceCommandType, &protocol conformance descriptor for SISchemaUEIVoiceCommandType);
  sub_26738120C();
  v39 = v8;
  v10(v7, 0, 1, v8);
  v14 = v10;
  v44 = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x54646E616D6D6F63, 0xEB00000000657079);
  v15(v47, 0);
  v37 = "tionVoiceCommandExecuted";
  v40 = *MEMORY[0x277D3E540];
  v16 = v46;
  v17 = *(v45 + 104);
  v45 += 104;
  v18 = v43;
  v17(v43);
  v42 = v17;
  v47[0] = 1;
  v19 = v18;
  sub_26738114C();
  v14(v7, 0, 1, v8);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000016, v37 | 0x8000000000000000);
  v20(v47, 0);
  v37 = "commandTargetWordCount";
  v21 = v18;
  v22 = v40;
  (v17)(v21, v40, v16);
  v47[0] = 1;
  sub_26738114C();
  v23 = v39;
  v38 = v14;
  v14(v7, 0, 1, v39);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, v37 | 0x8000000000000000);
  v24(v47, 0);
  v37 = "commandPayloadWordCount";
  v25 = v22;
  v26 = v22;
  v27 = v46;
  v42(v19, v26, v46);
  v47[0] = 1;
  sub_26738114C();
  v14(v7, 0, 1, v23);
  v28 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, v37 | 0x8000000000000000);
  v28(v47, 0);
  v37 = "commandTargetCharacterCount";
  v29 = v42;
  v42(v19, v25, v27);
  v47[0] = 1;
  sub_26738114C();
  v30 = v38;
  v31 = v39;
  v38(v7, 0, 1, v39);
  v32 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001CLL, v37 | 0x8000000000000000);
  v32(v47, 0);
  v37 = "commandPayloadCharacterCount";
  v33 = v43;
  v29(v43, v25, v27);
  v47[0] = 1;
  sub_26738114C();
  v30(v7, 0, 1, v31);
  v34 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001DLL, v37 | 0x8000000000000000);
  v34(v47, 0);
  v29(v33, v40, v46);
  v47[0] = 1;
  sub_26738114C();
  v30(v7, 0, 1, v31);
  v35 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x800000026749BAA0);
  return v35(v47, 0);
}

uint64_t sub_26730A4FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730A560(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26730A5C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SISchemaUEIDictationVoiceCommandKeyboardAction.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  v34 = v3;
  v35 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v33 = v11 + 56;
  v30 = v10;
  v12(v9, 0, 1, v10);
  v28 = v12;
  v29 = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D6F436563696F76, 0xEE006449646E616DLL);
  v13(v36, 0);
  v14 = *MEMORY[0x277D3E538];
  v15 = v34;
  v16 = *(v35 + 104);
  v35 += 104;
  v16(v6, v14, v34);
  v32 = v16;
  v36[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F69747265736E69, 0xEA0000000000736ELL);
  v17(v36, 0);
  v27 = v6;
  v31 = v14;
  v16(v6, v14, v15);
  v36[0] = 1;
  sub_26738114C();
  v18 = v30;
  v19 = v28;
  v28(v9, 0, 1, v30);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x7574697473627573, 0xEB00000000646574);
  v20(v36, 0);
  v21 = v27;
  v22 = v32;
  v32(v27, v14, v15);
  v36[0] = 1;
  sub_26738114C();
  v19(v9, 0, 1, v18);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x646574656C6564, 0xE700000000000000);
  v23(v36, 0);
  v22(v21, v31, v34);
  v36[0] = 1;
  sub_26738114C();
  v19(v9, 0, 1, v18);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x687469726F676C61, 0xEF7375746174536DLL);
  return v24(v36, 0);
}

uint64_t sub_26730AC04(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730AC68(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIDictationVoiceCommandUndoTapAction.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v6, 0x6D6F436563696F76, 0xEE006449646E616DLL);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001DLL, 0x800000026749BB40);
  return v10(v14, 0);
}

uint64_t sub_26730B04C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730B0B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIHostingPlatformViewAppearContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800FA5F8, 0x277D5AB40);
  sub_266ECAF2C(&qword_2800FA600, &qword_2800FA5F8, 0x277D5AB40, &protocol conformance descriptor for SISchemaUEIHostingPlatformViewAppearStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800FA608, 0x277D5AB38);
  sub_266ECAF2C(&qword_2800FA610, &qword_2800FA608, 0x277D5AB38, &protocol conformance descriptor for SISchemaUEIHostingPlatformViewAppearEnded);
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

uint64_t sub_26730B5A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730B604(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIHostingPlatformViewAppearEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26730B8F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730B954(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730B9B8()
{
  result = qword_2800FA610;
  if (!qword_2800FA610)
  {
    sub_26730BA10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA610);
  }

  return result;
}

unint64_t sub_26730BA10()
{
  result = qword_2800FA608;
  if (!qword_2800FA608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA608);
  }

  return result;
}

uint64_t static SISchemaUEIHostingPlatformViewAppearStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26730BCA4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730BD08(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730BD6C()
{
  result = qword_2800FA600;
  if (!qword_2800FA600)
  {
    sub_26730BDC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA600);
  }

  return result;
}

unint64_t sub_26730BDC4()
{
  result = qword_2800FA5F8;
  if (!qword_2800FA5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA5F8);
  }

  return result;
}

uint64_t static SISchemaUEIHostingPlatformViewDisappearContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800FA618, 0x277D5AB58);
  sub_266ECAF2C(&qword_2800FA620, &qword_2800FA618, 0x277D5AB58, &protocol conformance descriptor for SISchemaUEIHostingPlatformViewDisappearStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800FA628, 0x277D5AB50);
  sub_266ECAF2C(&qword_2800FA630, &qword_2800FA628, 0x277D5AB50, &protocol conformance descriptor for SISchemaUEIHostingPlatformViewDisappearEnded);
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

uint64_t sub_26730C25C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730C2C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIHostingPlatformViewDisappearEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26730C5AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730C610(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730C674()
{
  result = qword_2800FA630;
  if (!qword_2800FA630)
  {
    sub_26730C6CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA630);
  }

  return result;
}

unint64_t sub_26730C6CC()
{
  result = qword_2800FA628;
  if (!qword_2800FA628)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA628);
  }

  return result;
}

uint64_t static SISchemaUEIHostingPlatformViewDisappearStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26730C960(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730C9C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730CA28()
{
  result = qword_2800FA620;
  if (!qword_2800FA620)
  {
    sub_26730CA80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA620);
  }

  return result;
}

unint64_t sub_26730CA80()
{
  result = qword_2800FA618;
  if (!qword_2800FA618)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA618);
  }

  return result;
}

uint64_t static SISchemaUEIInvocationTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496B6E696CLL, 0xE600000000000000);
  v10(v19, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v17);
  v19[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x7865546465707974, 0xE900000000000074);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0x7865546465707974, 0xE900000000000074);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_287892A80);
    sub_26738115C();
  }

  (v13)(v18, 0);
  return v12(v19, 0);
}

uint64_t sub_26730CEA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730CF0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEILaunchContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA638, 0x277D5AB78);
  sub_266ECAF2C(&qword_2800FA640, &qword_2800FA638, 0x277D5AB78, &protocol conformance descriptor for SISchemaUEILaunchStarted);
  v28 = a1;
  sub_26738121C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v10(v33, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v32, 0xD000000000000010, 0x800000026741EB30);
  v13 = *(v8 + 48);
  if (!v13(v14, 1, v7))
  {
    sub_266ECB128(&unk_287892AA8);
    sub_26738115C();
  }

  (v12)(v32, 0);
  v11(v33, 0);
  sub_266ECB294(0, &qword_2800FA648, 0x277D5AB70);
  sub_266ECAF2C(&qword_2800FA650, &qword_2800FA648, 0x277D5AB70, &protocol conformance descriptor for SISchemaUEILaunchEnded);
  sub_26738121C();
  v9(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v15(v33, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v32, 0x6465646E65, 0xE500000000000000);
  if (!v13(v18, 1, v7))
  {
    sub_266ECB128(&unk_287892AD8);
    sub_26738115C();
  }

  (v17)(v32, 0);
  v16(v33, 0);
  v19 = v29;
  sub_26738117C();
  v20 = sub_2673811BC();
  v22 = v21;
  v23 = *v21;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v22 = v23;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v23 = sub_266ECAD54(0, v23[2] + 1, 1, v23);
    *v22 = v23;
  }

  v26 = v23[2];
  v25 = v23[3];
  if (v26 >= v25 >> 1)
  {
    v23 = sub_266ECAD54((v25 > 1), v26 + 1, 1, v23);
    *v22 = v23;
  }

  v23[2] = v26 + 1;
  (*(v30 + 32))(v23 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, v19, v31);
  return v20(v33, 0);
}

uint64_t sub_26730D528(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730D58C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEILaunchEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26730D878(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730D8DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730D940()
{
  result = qword_2800FA650;
  if (!qword_2800FA650)
  {
    sub_26730D998();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA650);
  }

  return result;
}

unint64_t sub_26730D998()
{
  result = qword_2800FA648;
  if (!qword_2800FA648)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA648);
  }

  return result;
}

uint64_t static SISchemaUEILaunchStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26730DC2C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730DC90(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730DCF4()
{
  result = qword_2800FA640;
  if (!qword_2800FA640)
  {
    sub_26730DD4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA640);
  }

  return result;
}

unint64_t sub_26730DD4C()
{
  result = qword_2800FA638;
  if (!qword_2800FA638)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA638);
  }

  return result;
}

uint64_t static SISchemaUEIRequestCategorization.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaUEIRequestType(0);
  sub_26730E160(&qword_2800FA658, type metadata accessor for SISchemaUEIRequestType, &protocol conformance descriptor for SISchemaUEIRequestType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x5474736575716572, 0xEB00000000657079);
  v6(v9, 0);
  type metadata accessor for SISchemaUEIRequestStatus(0);
  sub_26730E160(&qword_2800FA660, type metadata accessor for SISchemaUEIRequestStatus, &protocol conformance descriptor for SISchemaUEIRequestStatus);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x5374736575716572, 0xED00007375746174);
  return v7(v9, 0);
}

uint64_t sub_26730E054(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730E0B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26730E160(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26730E1A8()
{
  result = qword_2800F9C58;
  if (!qword_2800F9C58)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9C58);
  }

  return result;
}

uint64_t static SISchemaUEIRequestStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002BLL, 0x800000026749BE10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x800000026749BE40, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x800000026749BE60, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x800000026749BE80, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26730E478(uint64_t a1)
{
  v2 = sub_26730E57C(&qword_2800FA668, &protocol conformance descriptor for SISchemaUEIRequestStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26730E4E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26730E57C(&qword_2800FA668, &protocol conformance descriptor for SISchemaUEIRequestStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26730E57C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIRequestStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEIRequestType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000023, 0x800000026749BED0, isUniquelyReferenced_nonNull_native);
  *v3 = v42;

  v1(v52, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x800000026749BF00, v8);
  *v7 = v43;

  v5(v52, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001BLL, 0x800000026749BF20, v12);
  *v11 = v44;

  v9(v52, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x800000026749BF40, v16);
  *v15 = v45;

  v13(v52, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000021, 0x800000026749BF60, v20);
  *v19 = v46;

  v17(v52, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x800000026749BF90, v24);
  *v23 = v47;

  v21(v52, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000020, 0x800000026749BFC0, v28);
  *v27 = v48;

  v25(v52, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000031, 0x800000026749BFF0, v32);
  *v31 = v49;

  v29(v52, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000028, 0x800000026749C030, v36);
  *v35 = v50;

  v33(v52, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000027, 0x800000026749C060, v40);
  *v39 = v51;

  return v37(v52, 0);
}

uint64_t sub_26730EAE4(uint64_t a1)
{
  v2 = sub_26730EBE8(&qword_2800FA670, &protocol conformance descriptor for SISchemaUEIRequestType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26730EB4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26730EBE8(&qword_2800FA670, &protocol conformance descriptor for SISchemaUEIRequestType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26730EBE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIRequestType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEISiriCarCommandCancelled.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x800000026749C0D0);
  return v8(v10, 0);
}

uint64_t sub_26730EE7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730EEE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730EF44()
{
  result = qword_2800FA678;
  if (!qword_2800FA678)
  {
    sub_26730EF9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA678);
  }

  return result;
}

unint64_t sub_26730EF9C()
{
  result = qword_2800FA680;
  if (!qword_2800FA680)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA680);
  }

  return result;
}

uint64_t static SISchemaUEISiriCarCommandContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800FA688, 0x277D5ABA8);
  sub_266ECAF2C(&qword_2800FA690, &qword_2800FA688, 0x277D5ABA8, &protocol conformance descriptor for SISchemaUEISiriCarCommandStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800FA698, 0x277D5AB98);
  sub_266ECAF2C(&qword_2800FA6A0, &qword_2800FA698, 0x277D5AB98, &protocol conformance descriptor for SISchemaUEISiriCarCommandEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800FA6A8, 0x277D5ABA0);
  sub_266ECAF2C(&qword_2800FA6B0, &qword_2800FA6A8, 0x277D5ABA0, &protocol conformance descriptor for SISchemaUEISiriCarCommandFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800FA680, 0x277D5AB88);
  sub_266ECAF2C(&qword_2800FA678, &qword_2800FA680, 0x277D5AB88, &protocol conformance descriptor for SISchemaUEISiriCarCommandCancelled);
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

uint64_t sub_26730F5CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730F630(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEISiriCarCommandEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x800000026749C0D0);
  return v8(v10, 0);
}

uint64_t sub_26730F924(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730F988(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730F9EC()
{
  result = qword_2800FA6A0;
  if (!qword_2800FA6A0)
  {
    sub_26730FA44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA6A0);
  }

  return result;
}

unint64_t sub_26730FA44()
{
  result = qword_2800FA698;
  if (!qword_2800FA698)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA698);
  }

  return result;
}

uint64_t static SISchemaUEISiriCarCommandFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x800000026749C0D0);
  return v8(v10, 0);
}

uint64_t sub_26730FCE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26730FD44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26730FDA8()
{
  result = qword_2800FA6B0;
  if (!qword_2800FA6B0)
  {
    sub_26730FE00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA6B0);
  }

  return result;
}

unint64_t sub_26730FE00()
{
  result = qword_2800FA6A8;
  if (!qword_2800FA6A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA6A8);
  }

  return result;
}

uint64_t static SISchemaUEISiriCarCommandStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for SISchemaCarPlayConnection(0);
  sub_267310360(&qword_2800F5EC8, type metadata accessor for SISchemaCarPlayConnection, &protocol conformance descriptor for SISchemaCarPlayConnection);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v18 = v9;
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267469310);
  v10(v21, 0);
  v17 = "arCommandStarted";
  v11 = *MEMORY[0x277D3E4E8];
  v12 = v19;
  v13 = *(v20 + 104);
  v20 += 104;
  v13(v4, v11, v19);
  v21[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, v17 | 0x8000000000000000);
  v14(v21, 0);
  v13(v4, v11, v12);
  v21[0] = 1;
  sub_26738114C();
  v18(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000015, 0x800000026749C1F0);
  return v15(v21, 0);
}

uint64_t sub_267310254(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673102B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267310360(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2673103A8()
{
  result = qword_2800FA688;
  if (!qword_2800FA688)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA688);
  }

  return result;
}

uint64_t static SISchemaUEISiriWasUnavailable.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaProduct(0);
  sub_267310860(&qword_2800F64E8, type metadata accessor for SISchemaProduct, &protocol conformance descriptor for SISchemaProduct);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x746375646F7270, 0xE700000000000000);
  v6(v10, 0);
  type metadata accessor for SISchemaSiriUnavailableReason(0);
  sub_267310860(&qword_2800FA4D0, type metadata accessor for SISchemaSiriUnavailableReason, &protocol conformance descriptor for SISchemaSiriUnavailableReason);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  v7(v10, 0);
  type metadata accessor for ORCHSchemaORCHAssetType(0);
  sub_267310860(&qword_2800F6370, type metadata accessor for ORCHSchemaORCHAssetType, &protocol conformance descriptor for ORCHSchemaORCHAssetType);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x7079547465737361, 0xE900000000000065);
  return v8(v10, 0);
}

uint64_t sub_267310754(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673107B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267310860(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2673108A8()
{
  result = qword_2800F9E08;
  if (!qword_2800F9E08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9E08);
  }

  return result;
}

uint64_t static SISchemaUEIStopRecordingReasonMajor.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000035, 0x800000026749C280, isUniquelyReferenced_nonNull_native);
  *v3 = v38;

  v1(v47, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x800000026749C2C0, v8);
  *v7 = v39;

  v5(v47, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000035, 0x800000026749C2F0, v12);
  *v11 = v40;

  v9(v47, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000034, 0x800000026749C330, v16);
  *v15 = v41;

  v13(v47, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v42 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002ELL, 0x800000026749C370, v20);
  *v19 = v42;

  v17(v47, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000028, 0x800000026749C3A0, v24);
  *v23 = v43;

  v21(v47, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v44 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002CLL, 0x800000026749C3D0, v28);
  *v27 = v44;

  v25(v47, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x800000026749C400, v32);
  *v31 = v45;

  v29(v47, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000031, 0x800000026749C430, v36);
  *v35 = v46;

  return v33(v47, 0);
}

uint64_t sub_267310DAC(uint64_t a1)
{
  v2 = sub_267310EB0(&qword_2800FA6B8, &protocol conformance descriptor for SISchemaUEIStopRecordingReasonMajor);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267310E14(uint64_t a1, uint64_t a2)
{
  v4 = sub_267310EB0(&qword_2800FA6B8, &protocol conformance descriptor for SISchemaUEIStopRecordingReasonMajor);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267310EB0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIStopRecordingReasonMajor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEIStopRecordingReasonMinor.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000035, 0x800000026749C4B0, isUniquelyReferenced_nonNull_native);
  *v3 = v50;

  v1(v62, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x800000026749C4F0, v8);
  *v7 = v51;

  v5(v62, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x800000026749C520, v12);
  *v11 = v52;

  v9(v62, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000026, 0x800000026749C550, v16);
  *v15 = v53;

  v13(v62, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000030, 0x800000026749C580, v20);
  *v19 = v54;

  v17(v62, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ALL, 0x800000026749C5C0, v24);
  *v23 = v55;

  v21(v62, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002ALL, 0x800000026749C5F0, v28);
  *v27 = v56;

  v25(v62, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000002FLL, 0x800000026749C620, v32);
  *v31 = v57;

  v29(v62, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000021, 0x800000026749C650, v36);
  *v35 = v58;

  v33(v62, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000023, 0x800000026749C680, v40);
  *v39 = v59;

  v37(v62, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000025, 0x800000026749C6B0, v44);
  *v43 = v60;

  v41(v62, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000031, 0x800000026749C6E0, v48);
  *v47 = v61;

  return v45(v62, 0);
}

uint64_t sub_267311500(uint64_t a1)
{
  v2 = sub_267311604(&qword_2800FA6C0, &protocol conformance descriptor for SISchemaUEIStopRecordingReasonMinor);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267311568(uint64_t a1, uint64_t a2)
{
  v4 = sub_267311604(&qword_2800FA6C0, &protocol conformance descriptor for SISchemaUEIStopRecordingReasonMinor);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267311604(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIStopRecordingReasonMinor(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEITranscriptShown.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaTranscriptShownReason(0);
  sub_267311938(&qword_2800FA520, type metadata accessor for SISchemaTranscriptShownReason, &protocol conformance descriptor for SISchemaTranscriptShownReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026749C750);
  return v5(v7, 0);
}

uint64_t sub_26731182C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267311890(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267311938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267311980()
{
  result = qword_2800F9EB8;
  if (!qword_2800F9EB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9EB8);
  }

  return result;
}

uint64_t static SISchemaUEITranscriptTapped.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267311C14(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267311C78(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267311CDC()
{
  result = qword_2800F9ED0;
  if (!qword_2800F9ED0)
  {
    sub_267311D34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9ED0);
  }

  return result;
}

unint64_t sub_267311D34()
{
  result = qword_2800F9EC8;
  if (!qword_2800F9EC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9EC8);
  }

  return result;
}

uint64_t static SISchemaUEIUIRenderingContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800FA6C8, 0x277D5ABD8);
  sub_266ECAF2C(&qword_2800FA6D0, &qword_2800FA6C8, 0x277D5ABD8, &protocol conformance descriptor for SISchemaUEIUIRenderingStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800FA6D8, 0x277D5ABD0);
  sub_266ECAF2C(&qword_2800FA6E0, &qword_2800FA6D8, 0x277D5ABD0, &protocol conformance descriptor for SISchemaUEIUIRenderingEnded);
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

uint64_t sub_2673121CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267312230(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIUIRenderingEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26731251C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267312580(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673125E4()
{
  result = qword_2800FA6E0;
  if (!qword_2800FA6E0)
  {
    sub_26731263C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA6E0);
  }

  return result;
}

unint64_t sub_26731263C()
{
  result = qword_2800FA6D8;
  if (!qword_2800FA6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA6D8);
  }

  return result;
}

uint64_t static SISchemaUEIUIRenderingStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2673128D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267312934(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267312998()
{
  result = qword_2800FA6D0;
  if (!qword_2800FA6D0)
  {
    sub_2673129F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA6D0);
  }

  return result;
}

unint64_t sub_2673129F0()
{
  result = qword_2800FA6C8;
  if (!qword_2800FA6C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA6C8);
  }

  return result;
}

uint64_t static SISchemaUEIUserBargeInDetected.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267312C84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267312CE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267312D4C()
{
  result = qword_2800F9DD0;
  if (!qword_2800F9DD0)
  {
    sub_267312DA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9DD0);
  }

  return result;
}

unint64_t sub_267312DA4()
{
  result = qword_2800F9DC8;
  if (!qword_2800F9DC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9DC8);
  }

  return result;
}

uint64_t static SISchemaUEIUserSpeakingContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v27 = a1;
  v1 = sub_26738118C();
  v25 = *(v1 - 8);
  v26 = v1;
  MEMORY[0x28223BE20](v1);
  v24 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v24 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA6E8, 0x277D5AC00);
  sub_266ECAF2C(&qword_2800FA6F0, &qword_2800FA6E8, 0x277D5AC00, &protocol conformance descriptor for SISchemaUEIUserSpeakingStarted);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v29, 0);
  sub_266ECB294(0, &qword_2800FA6F8, 0x277D5ABF8);
  sub_266ECAF2C(&qword_2800FA700, &qword_2800FA6F8, 0x277D5ABF8, &protocol conformance descriptor for SISchemaUEIUserSpeakingEnded);
  sub_26738121C();
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v29, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v28, 0x6465646E65, 0xE500000000000000);
  if (!(*(v7 + 48))(v13, 1, v6))
  {
    sub_266ECB128(&unk_287892B08);
    sub_26738115C();
  }

  (v12)(v28, 0);
  v11(v29, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0x6449707274, 0xE500000000000000);
  v14(v29, 0);
  v15 = v24;
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
  (*(v25 + 32))(v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, v15, v26);
  return v16(v29, 0);
}

uint64_t sub_2673133A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267313408(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUEIUserSpeakingEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2673136F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267313758(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2673137BC()
{
  result = qword_2800FA700;
  if (!qword_2800FA700)
  {
    sub_267313814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA700);
  }

  return result;
}

unint64_t sub_267313814()
{
  result = qword_2800FA6F8;
  if (!qword_2800FA6F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA6F8);
  }

  return result;
}

uint64_t static SISchemaUEIUserSpeakingStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267313AA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267313B0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267313B70()
{
  result = qword_2800FA6F0;
  if (!qword_2800FA6F0)
  {
    sub_267313BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA6F0);
  }

  return result;
}

unint64_t sub_267313BC8()
{
  result = qword_2800FA6E8;
  if (!qword_2800FA6E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA6E8);
  }

  return result;
}

uint64_t static SISchemaUEIUUFRReady.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v42 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v35[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E4E8];
  v38 = *(v2 + 104);
  v39 = v1;
  v37 = v2 + 104;
  v38(v4, v8, v1);
  v46[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v43 = *(v10 + 56);
  v44 = v10 + 56;
  v43(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v11(v46, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v45, 0x737473697865, 0xE600000000000000);
  v40 = *(v10 + 48);
  v41 = v10 + 48;
  if (!v40(v14, 1, v9))
  {
    sub_266ECB128(&unk_287892B38);
    sub_26738115C();
  }

  (v13)(v45, 0);
  v12(v46, 0);
  v15 = *MEMORY[0x277D3E530];
  v38(v4, v15, v39);
  v46[0] = 1;
  sub_26738114C();
  v16 = v43;
  v43(v7, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x616D6D6F43656361, 0xEF7373616C43646ELL);
  v17(v46, 0);
  v36 = v15;
  v38(v4, v15, v39);
  v46[0] = 1;
  sub_26738114C();
  v16(v7, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x4977656956656361, 0xE900000000000064);
  v18(v46, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v45, 0x4977656956656361, 0xE900000000000064);
  if (!v40(v21, 1, v9))
  {
    sub_266ECB128(&unk_287892B60);
    sub_26738115C();
  }

  (v20)(v45, 0);
  v19(v46, 0);
  type metadata accessor for SISchemaUUFRReadySource(0);
  sub_2673146D8(&qword_2800FA708, type metadata accessor for SISchemaUUFRReadySource, &protocol conformance descriptor for SISchemaUUFRReadySource);
  sub_26738120C();
  v22 = v43;
  v43(v7, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0x6461655272667575, 0xEF656372756F5379);
  v23(v46, 0);
  type metadata accessor for SISchemaUEIUUFRReadyDialogPhase(0);
  sub_2673146D8(&qword_2800FA710, type metadata accessor for SISchemaUEIUUFRReadyDialogPhase, &protocol conformance descriptor for SISchemaUEIUUFRReadyDialogPhase);
  sub_26738120C();
  v22(v7, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x6850676F6C616964, 0xEB00000000657361);
  v24(v46, 0);
  v38(v4, v36, v39);
  v46[0] = 1;
  sub_26738114C();
  v22(v7, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x800000026749C920);
  v25(v46, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v45, 0xD000000000000011, 0x800000026749C920);
  if (!v40(v28, 1, v9))
  {
    sub_266ECB128(&unk_287892B88);
    sub_26738115C();
  }

  (v27)(v45, 0);
  v26(v46, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v43(v7, 0, 1, v9);
  v29 = sub_2673811AC();
  sub_266EC637C(v7, 0x6575716552627573, 0xEC00000064497473);
  v29(v46, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v45, 0x6575716552627573, 0xEC00000064497473);
  if (!v40(v32, 1, v9))
  {
    sub_266ECB128(&unk_287892BB8);
    sub_26738115C();
  }

  (v31)(v45, 0);
  v30(v46, 0);
  sub_26738120C();
  v43(v7, 0, 1, v9);
  v33 = sub_2673811AC();
  sub_266EC637C(v7, 0x616D6D6F43656361, 0xEC0000006449646ELL);
  return v33(v46, 0);
}

uint64_t sub_267314614(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267314678(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2673146D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SISchemaUEIUUFRReadyDialogPhase.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001FLL, 0x800000026749C970, isUniquelyReferenced_nonNull_native);
  *v3 = v50;

  v1(v62, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026749C990, v8);
  *v7 = v51;

  v5(v62, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x800000026749C9C0, v12);
  *v11 = v52;

  v9(v62, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ELL, 0x800000026749C9F0, v16);
  *v15 = v53;

  v13(v62, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000025, 0x800000026749CA10, v20);
  *v19 = v54;

  v17(v62, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001FLL, 0x800000026749CA40, v24);
  *v23 = v55;

  v21(v62, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000024, 0x800000026749CA60, v28);
  *v27 = v56;

  v25(v62, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v57 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000022, 0x800000026749CA90, v32);
  *v31 = v57;

  v29(v62, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v58 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001DLL, 0x800000026749CAC0, v36);
  *v35 = v58;

  v33(v62, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v59 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000021, 0x800000026749CAE0, v40);
  *v39 = v59;

  v37(v62, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000021, 0x800000026749CB10, v44);
  *v43 = v60;

  v41(v62, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v61 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000024, 0x800000026749CB40, v48);
  *v47 = v61;

  return v45(v62, 0);
}

uint64_t sub_267314D6C(uint64_t a1)
{
  v2 = sub_267314E70(&qword_2800FA718, &protocol conformance descriptor for SISchemaUEIUUFRReadyDialogPhase);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267314DD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267314E70(&qword_2800FA718, &protocol conformance descriptor for SISchemaUEIUUFRReadyDialogPhase);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267314E70(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIUUFRReadyDialogPhase(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEIVisionSnippetDismissed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v17 = a1;
  v18 = sub_26738113C();
  v1 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaUEIVisionSnippetStartLocation(0);
  sub_267315454(&qword_2800FA720, type metadata accessor for SISchemaUEIVisionSnippetStartLocation, &protocol conformance descriptor for SISchemaUEIVisionSnippetStartLocation);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x636F4C7472617473, 0xED00006E6F697461);
  v10(v20, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v18);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465766F4D736177, 0xE800000000000000);
  v11(v20, 0);
  type metadata accessor for SISchemaDismissalReason(0);
  sub_267315454(&qword_2800FA080, type metadata accessor for SISchemaDismissalReason, &protocol conformance descriptor for SISchemaDismissalReason);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E6F73616572, 0xE600000000000000);
  v12(v20, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v19, 0x6E6F73616572, 0xE600000000000000);
  if (!(*(v8 + 48))(v15, 1, v7))
  {
    sub_266ECB128(&unk_287892BE0);
    sub_26738115C();
  }

  (v14)(v19, 0);
  return v13(v20, 0);
}

uint64_t sub_267315348(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673153AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267315454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26731549C()
{
  result = qword_2800F9DF8;
  if (!qword_2800F9DF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9DF8);
  }

  return result;
}

uint64_t static SISchemaUEIVisionSnippetStartLocation.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x800000026749CBF0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x800000026749CC20, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003ALL, 0x800000026749CC50, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_2673156FC(uint64_t a1)
{
  v2 = sub_267315800(&qword_2800FA728, &protocol conformance descriptor for SISchemaUEIVisionSnippetStartLocation);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267315764(uint64_t a1, uint64_t a2)
{
  v4 = sub_267315800(&qword_2800FA728, &protocol conformance descriptor for SISchemaUEIVisionSnippetStartLocation);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267315800(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIVisionSnippetStartLocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEIVoiceCommandDisambiguationType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000029, 0x800000026749CCD0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x800000026749CD00, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x800000026749CD30, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267315A58(uint64_t a1)
{
  v2 = sub_267315B5C(&qword_2800FA730, &protocol conformance descriptor for SISchemaUEIVoiceCommandDisambiguationType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267315AC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_267315B5C(&qword_2800FA730, &protocol conformance descriptor for SISchemaUEIVoiceCommandDisambiguationType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267315B5C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIVoiceCommandDisambiguationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEIVoiceCommandExecutionStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000026, 0x800000026749CDA0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000026, 0x800000026749CDD0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000034, 0x800000026749CE00, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002FLL, 0x800000026749CE40, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267315E2C(uint64_t a1)
{
  v2 = sub_267315F30(&qword_2800FA738, &protocol conformance descriptor for SISchemaUEIVoiceCommandExecutionStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267315E94(uint64_t a1, uint64_t a2)
{
  v4 = sub_267315F30(&qword_2800FA738, &protocol conformance descriptor for SISchemaUEIVoiceCommandExecutionStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267315F30(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIVoiceCommandExecutionStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUEIVoiceCommandType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD00000000000001BLL, 0x800000026749CEA0, isUniquelyReferenced_nonNull_native);
  *v3 = v158;

  v1(v197, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ALL, 0x800000026749CEC0, v8);
  *v7 = v159;

  v5(v197, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x800000026749CEE0, v12);
  *v11 = v160;

  v9(v197, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x800000026749CF10, v16);
  *v15 = v161;

  v13(v197, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x800000026749CF40, v20);
  *v19 = v162;

  v17(v197, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ALL, 0x800000026749CF60, v24);
  *v23 = v163;

  v21(v197, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000001ELL, 0x800000026749CF80, v28);
  *v27 = v164;

  v25(v197, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000018, 0x800000026749CFA0, v32);
  *v31 = v165;

  v29(v197, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000001ALL, 0x800000026749CFC0, v36);
  *v35 = v166;

  v33(v197, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000018, 0x800000026749CFE0, v40);
  *v39 = v167;

  v37(v197, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001ALL, 0x800000026749D000, v44);
  *v43 = v168;

  v41(v197, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001DLL, 0x800000026749D020, v48);
  *v47 = v169;

  v45(v197, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000018, 0x800000026749D040, v52);
  *v51 = v170;

  v49(v197, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000019, 0x800000026749D060, v56);
  *v55 = v171;

  v53(v197, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000024, 0x800000026749D080, v60);
  *v59 = v172;

  v57(v197, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000025, 0x800000026749D0B0, v64);
  *v63 = v173;

  v61(v197, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD00000000000001ELL, 0x800000026749D0E0, v68);
  *v67 = v174;

  v65(v197, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000018, 0x800000026749D100, v72);
  *v71 = v175;

  v69(v197, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000017, 0x800000026749D120, v76);
  *v75 = v176;

  v73(v197, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000021, 0x800000026749D140, v80);
  *v79 = v177;

  v77(v197, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000001BLL, 0x800000026749D170, v84);
  *v83 = v178;

  v81(v197, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000018, 0x800000026749D190, v88);
  *v87 = v179;

  v85(v197, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000022, 0x800000026749D1B0, v92);
  *v91 = v180;

  v89(v197, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001CLL, 0x800000026749D1E0, v96);
  *v95 = v181;

  v93(v197, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000019, 0x800000026749D200, v100);
  *v99 = v182;

  v97(v197, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001ELL, 0x800000026749D220, v104);
  *v103 = v183;

  v101(v197, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000022, 0x800000026749D240, v108);
  *v107 = v184;

  v105(v197, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000028, 0x800000026749D270, v112);
  *v111 = v185;

  v109(v197, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v186 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000001DLL, 0x800000026749D2A0, v116);
  *v115 = v186;

  v113(v197, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000027, 0x800000026749D2C0, v120);
  *v119 = v187;

  v117(v197, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000026, 0x800000026749D2F0, v124);
  *v123 = v188;

  v121(v197, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000025, 0x800000026749D320, v128);
  *v127 = v189;

  v125(v197, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000022, 0x800000026749D350, v132);
  *v131 = v190;

  v129(v197, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v191 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000029, 0x800000026749D380, v136);
  *v135 = v191;

  v133(v197, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v192 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000023, 0x800000026749D3B0, v140);
  *v139 = v192;

  v137(v197, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0xD00000000000001DLL, 0x800000026749D3E0, v144);
  *v143 = v193;

  v141(v197, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0xD00000000000001DLL, 0x800000026749D400, v148);
  *v147 = v194;

  v145(v197, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000027, 0x800000026749D420, v152);
  *v151 = v195;

  v149(v197, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000022, 0x800000026749D450, v156);
  *v155 = v196;

  return v153(v197, 0);
}

uint64_t sub_267317164(uint64_t a1)
{
  v2 = sub_267317268(&qword_2800FA740, &protocol conformance descriptor for SISchemaUEIVoiceCommandType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2673171CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_267317268(&qword_2800FA740, &protocol conformance descriptor for SISchemaUEIVoiceCommandType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267317268(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUEIVoiceCommandType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUIStateDismissed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDismissalReason(0);
  sub_267317718(&qword_2800FA080, type metadata accessor for SISchemaDismissalReason, &protocol conformance descriptor for SISchemaDismissalReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x617373696D736964, 0xEF6E6F736165526CLL);
  return v5(v7, 0);
}

uint64_t sub_267317478(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaDismissalReason(0);
  sub_267317718(&qword_2800FA080, type metadata accessor for SISchemaDismissalReason, &protocol conformance descriptor for SISchemaDismissalReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x617373696D736964, 0xEF6E6F736165526CLL);
  return v5(v7, 0);
}

uint64_t sub_26731760C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267317670(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267317718(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267317760()
{
  result = qword_2800FA750;
  if (!qword_2800FA750)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA750);
  }

  return result;
}

uint64_t static SISchemaUIStatePresenting.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaSiriPresentationType(0);
  sub_267317A9C(&qword_2800FA460, type metadata accessor for SISchemaSiriPresentationType, &protocol conformance descriptor for SISchemaSiriPresentationType);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267499F90);
  return v5(v7, 0);
}

uint64_t sub_267317990(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673179F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267317A9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267317AE4()
{
  result = qword_2800FA760;
  if (!qword_2800FA760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA760);
  }

  return result;
}

uint64_t static SISchemaUIStateTransition.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaSiriUIState(0);
  sub_267318474(&qword_2800FA4C0, type metadata accessor for SISchemaSiriUIState, &protocol conformance descriptor for SISchemaSiriUIState);
  sub_26738120C();
  v9 = sub_26738116C();
  v36 = *(v9 - 8);
  v10 = v36 + 56;
  v11 = *(v36 + 56);
  v11(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x53746E6572727563, 0xEC00000065746174);
  v12(v45, 0);
  sub_26738120C();
  v11(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x73756F6976657270, 0xED00006574617453);
  v13(v45, 0);
  type metadata accessor for SISchemaSiriPresentationType(0);
  sub_267318474(&qword_2800FA460, type metadata accessor for SISchemaSiriPresentationType, &protocol conformance descriptor for SISchemaSiriPresentationType);
  v42 = a1;
  sub_26738120C();
  v40 = v10;
  v41 = v11;
  v11(v8, 0, 1, v9);
  v14 = v36;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026749D510);
  v15(v45, 0);
  v43 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v44, 0xD000000000000014, 0x800000026749D510);
  v18 = *(v14 + 48);
  if (!v18(v19, 1, v9))
  {
    sub_266ECB128(&unk_287892C08);
    sub_26738115C();
  }

  (v17)(v44, 0);
  v16(v45, 0);
  type metadata accessor for SISchemaDismissalReason(0);
  sub_267318474(&qword_2800FA080, type metadata accessor for SISchemaDismissalReason, &protocol conformance descriptor for SISchemaDismissalReason);
  sub_26738120C();
  v41(v8, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x617373696D736964, 0xEF6E6F736165526CLL);
  v20(v45, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v44, 0x617373696D736964, 0xEF6E6F736165526CLL);
  if (!v18(v23, 1, v9))
  {
    sub_266ECB128(&unk_287892C30);
    sub_26738115C();
  }

  (v22)(v44, 0);
  v21(v45, 0);
  sub_266ECB294(0, &qword_2800FA760, 0x277D5AC18);
  sub_266ECAF2C(&qword_2800FA758, &qword_2800FA760, 0x277D5AC18, &protocol conformance descriptor for SISchemaUIStatePresenting);
  sub_26738121C();
  v24 = v41;
  v41(v8, 0, 1, v9);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0x69746E6573657270, 0xEA0000000000676ELL);
  v25(v45, 0);
  sub_266ECB294(0, &qword_2800FA750, 0x277D5AC10);
  sub_266ECAF2C(&qword_2800FA748, &qword_2800FA750, 0x277D5AC10, &protocol conformance descriptor for SISchemaUIStateDismissed);
  sub_26738121C();
  v24(v8, 0, 1, v9);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x657373696D736964, 0xE900000000000064);
  v26(v45, 0);
  v27 = v37;
  sub_26738117C();
  v28 = sub_2673811BC();
  v30 = v29;
  v31 = *v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v30 = v31;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v31 = sub_266ECAD54(0, v31[2] + 1, 1, v31);
    *v30 = v31;
  }

  v34 = v31[2];
  v33 = v31[3];
  if (v34 >= v33 >> 1)
  {
    v31 = sub_266ECAD54((v33 > 1), v34 + 1, 1, v31);
    *v30 = v31;
  }

  v31[2] = v34 + 1;
  (*(v38 + 32))(v31 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v34, v27, v39);
  return v28(v45, 0);
}

uint64_t sub_2673183B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267318414(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267318474(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SISchemaUserDataContainer.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4F8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 99, 0xE100000000000000);
  return v8(v10, 0);
}

uint64_t sub_267318740(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2673187A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267318808()
{
  result = qword_2800FA768;
  if (!qword_2800FA768)
  {
    sub_267318860();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA768);
  }

  return result;
}

unint64_t sub_267318860()
{
  result = qword_2800FA770;
  if (!qword_2800FA770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA770);
  }

  return result;
}

uint64_t static SISchemaUserSpeechDuration.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v9(v5, *MEMORY[0x277D3E510], v2);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6F697461727564, 0xEA0000000000734DLL);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E530], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x80000002674206D0);
  return v13(v16, 0);
}

uint64_t sub_267318BD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267318C38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267318C9C()
{
  result = qword_2800FA3C0;
  if (!qword_2800FA3C0)
  {
    sub_267318CF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA3C0);
  }

  return result;
}

unint64_t sub_267318CF4()
{
  result = qword_2800FA3B8;
  if (!qword_2800FA3B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA3B8);
  }

  return result;
}

uint64_t static SISchemaUserViewInteraction.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000027, 0x800000026749D5E0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x800000026749D610, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001DLL, 0x800000026749D630, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001CLL, 0x800000026749D650, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_267318FC8(uint64_t a1)
{
  v2 = sub_2673190CC(&qword_2800FA780, &protocol conformance descriptor for SISchemaUserViewInteraction);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267319030(uint64_t a1, uint64_t a2)
{
  v4 = sub_2673190CC(&qword_2800FA780, &protocol conformance descriptor for SISchemaUserViewInteraction);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2673190CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUserViewInteraction(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUserViewRegionInteraction.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaViewRegionDesignation(0);
  sub_2673194D0(&qword_2800FA788, type metadata accessor for SISchemaViewRegionDesignation, &protocol conformance descriptor for SISchemaViewRegionDesignation);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000015, 0x800000026749D6B0);
  v6(v9, 0);
  type metadata accessor for SISchemaUserViewInteraction(0);
  sub_2673194D0(&qword_2800FA778, type metadata accessor for SISchemaUserViewInteraction, &protocol conformance descriptor for SISchemaUserViewInteraction);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x800000026749D6D0);
  return v7(v9, 0);
}

uint64_t sub_2673193C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267319428(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_2673194D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267319518()
{
  result = qword_2800F9C38;
  if (!qword_2800F9C38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F9C38);
  }

  return result;
}

uint64_t static SISchemaUTCOffset.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v158 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000011, 0x800000026749D710, isUniquelyReferenced_nonNull_native);
  *v3 = v158;

  v1(v197, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000017, 0x800000026749D730, v8);
  *v7 = v159;

  v5(v197, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x800000026749D750, v12);
  *v11 = v160;

  v9(v197, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000017, 0x800000026749D770, v16);
  *v15 = v161;

  v13(v197, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001ELL, 0x800000026749D790, v20);
  *v19 = v162;

  v17(v197, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000017, 0x800000026749D7B0, v24);
  *v23 = v163;

  v21(v197, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000017, 0x800000026749D7D0, v28);
  *v27 = v164;

  v25(v197, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000017, 0x800000026749D7F0, v32);
  *v31 = v165;

  v29(v197, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000017, 0x800000026749D810, v36);
  *v35 = v166;

  v33(v197, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000017, 0x800000026749D830, v40);
  *v39 = v167;

  v37(v197, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000017, 0x800000026749D850, v44);
  *v43 = v168;

  v41(v197, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD00000000000001ELL, 0x800000026749D870, v48);
  *v47 = v169;

  v45(v197, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000017, 0x800000026749D890, v52);
  *v51 = v170;

  v49(v197, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000017, 0x800000026749D8B0, v56);
  *v55 = v171;

  v53(v197, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD000000000000017, 0x800000026749D8D0, v60);
  *v59 = v172;

  v57(v197, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000011, 0x800000026749D8F0, v64);
  *v63 = v173;

  v61(v197, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000016, 0x800000026749D910, v68);
  *v67 = v174;

  v65(v197, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000016, 0x800000026749D930, v72);
  *v71 = v175;

  v69(v197, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000016, 0x800000026749D950, v76);
  *v75 = v176;

  v73(v197, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD00000000000001DLL, 0x800000026749D970, v80);
  *v79 = v177;

  v77(v197, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000016, 0x800000026749D990, v84);
  *v83 = v178;

  v81(v197, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD00000000000001DLL, 0x800000026749D9B0, v88);
  *v87 = v179;

  v85(v197, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000016, 0x800000026749D9D0, v92);
  *v91 = v180;

  v89(v197, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000001DLL, 0x800000026749D9F0, v96);
  *v95 = v181;

  v93(v197, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000001BLL, 0x800000026749DA10, v100);
  *v99 = v182;

  v97(v197, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD000000000000016, 0x800000026749DA30, v104);
  *v103 = v183;

  v101(v197, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000001DLL, 0x800000026749DA50, v108);
  *v107 = v184;

  v105(v197, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000016, 0x800000026749DA70, v112);
  *v111 = v185;

  v109(v197, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v186 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000016, 0x800000026749DA90, v116);
  *v115 = v186;

  v113(v197, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000001BLL, 0x800000026749DAB0, v120);
  *v119 = v187;

  v117(v197, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000016, 0x800000026749DAD0, v124);
  *v123 = v188;

  v121(v197, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000001DLL, 0x800000026749DAF0, v128);
  *v127 = v189;

  v125(v197, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000016, 0x800000026749DB10, v132);
  *v131 = v190;

  v129(v197, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v191 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0xD00000000000001DLL, 0x800000026749DB30, v136);
  *v135 = v191;

  v133(v197, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v192 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000016, 0x800000026749DB50, v140);
  *v139 = v192;

  v137(v197, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000016, 0x800000026749DB70, v144);
  *v143 = v193;

  v141(v197, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0xD00000000000001BLL, 0x800000026749DB90, v148);
  *v147 = v194;

  v145(v197, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(37, 0xD00000000000001DLL, 0x800000026749DBB0, v152);
  *v151 = v195;

  v149(v197, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(38, 0xD00000000000001DLL, 0x800000026749DBD0, v156);
  *v155 = v196;

  return v153(v197, 0);
}

uint64_t sub_26731A770(uint64_t a1)
{
  v2 = sub_26731A874(&qword_2800FA790, &protocol conformance descriptor for SISchemaUTCOffset);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26731A7D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_26731A874(&qword_2800FA790, &protocol conformance descriptor for SISchemaUTCOffset);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26731A874(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUTCOffset(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUUFRCasinoCardSelected.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7463655364726163, 0xED000064496E6F69);
  v10(v20, 0);
  v16 = "iri.uei.UUFRCasinoCardSelected";
  v11 = v0;
  v12 = v18;
  v18(v3, *MEMORY[0x277D3E508], v11);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, v16 | 0x8000000000000000);
  v13(v20, 0);
  v12(v3, v19, v17);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x4174657070696E73, 0xEC00000064496563);
  return v14(v20, 0);
}

uint64_t sub_26731ACB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731AD1C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26731AD80()
{
  result = qword_2800FA798;
  if (!qword_2800FA798)
  {
    sub_26731ADD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA798);
  }

  return result;
}

unint64_t sub_26731ADD8()
{
  result = qword_2800FA7A0;
  if (!qword_2800FA7A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA7A0);
  }

  return result;
}

uint64_t static SISchemaUUFRCompletion.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v14[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v14 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaCompletionStatus(0);
  sub_26731B310();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v6(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x800000026749DC70);
  v7(v16, 0);
  sub_266ECB294(0, &qword_2800FA178, 0x277D5A8E0);
  sub_266ECAF2C(&qword_2800FA170, &qword_2800FA178, 0x277D5A8E0, &protocol conformance descriptor for SISchemaHomeKitAccessoryResponse);
  sub_26738122C();
  v6(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x800000026749DC90);
  v8(v16, 0);
  v9 = sub_2673811AC();
  v10 = sub_266ECB6CC(v15, 0xD000000000000018, 0x800000026749DC90);
  if (!(*(v5 + 48))(v11, 1, v4))
  {
    sub_266ECB128(&unk_287892C58);
    sub_26738115C();
  }

  (v10)(v15, 0);
  v9(v16, 0);
  sub_266ECB294(0, &qword_2800FA490, 0x277D5AA18);
  sub_266ECAF2C(&qword_2800FA488, &qword_2800FA490, 0x277D5AA18, &protocol conformance descriptor for SISchemaSiriResponseContext);
  sub_26738120C();
  v6(v3, 0, 1, v4);
  v12 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x800000026749DCB0);
  v12(v16, 0);
  sub_266ECB128(&unk_287892C80);
  return sub_2673811CC();
}

uint64_t sub_26731B24C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731B2B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26731B310()
{
  result = qword_2800F9F10;
  if (!qword_2800F9F10)
  {
    type metadata accessor for SISchemaCompletionStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F9F10);
  }

  return result;
}

uint64_t static SISchemaUUFRFatalError.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v15[1] = a1;
  v1 = sub_26738113C();
  v15[0] = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *(v2 + 104);
  v8(v4, *MEMORY[0x277D3E530], v1);
  v16[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D6F44726F727265, 0xEB000000006E6961);
  v11(v16, 0);
  v8(v4, *MEMORY[0x277D3E508], v15[0]);
  v16[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F43726F727265, 0xE900000000000065);
  v12(v16, 0);
  sub_266ECB294(0, &qword_2800FA490, 0x277D5AA18);
  sub_266ECAF2C(&qword_2800FA488, &qword_2800FA490, 0x277D5AA18, &protocol conformance descriptor for SISchemaSiriResponseContext);
  sub_26738120C();
  v10(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x800000026749DCB0);
  return v13(v16, 0);
}

uint64_t sub_26731B7AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731B810(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUUFRPresented.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  v17 = v1;
  v18 = v2;
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800FA1D0, 0x277D5ACB0);
  sub_266ECAF2C(&qword_2800FA1D8, &qword_2800FA1D0, 0x277D5ACB0, &protocol conformance descriptor for SISchemaViewContainer);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E6F4377656976, 0xED000072656E6961);
  v10(v19, 0);
  v11 = *MEMORY[0x277D3E530];
  v12 = v17;
  v13 = *(v18 + 104);
  v18 += 104;
  v13(v4, v11, v17);
  v19[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x6D6F44726F727265, 0xEB000000006E6961);
  v14(v19, 0);
  v13(v4, *MEMORY[0x277D3E508], v12);
  v19[0] = 1;
  sub_26738114C();
  v9(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x646F43726F727265, 0xE900000000000065);
  return v15(v19, 0);
}

uint64_t sub_26731BCC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731BD24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUUFRReadySource.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000017, 0x800000026749DD60, isUniquelyReferenced_nonNull_native);
  *v3 = v29;

  v1(v35, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000027, 0x800000026749DD80, v8);
  *v7 = v30;

  v5(v35, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000021, 0x800000026749DDB0, v12);
  *v11 = v31;

  v9(v35, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001ALL, 0x800000026749DDE0, v16);
  *v15 = v32;

  v13(v35, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000016, 0x800000026749DE00, v20);
  *v19 = v33;

  v17(v35, 0);
  v21 = sub_266ECB128(&unk_287892CA8);
  v23 = v22;
  v24 = sub_2673810FC();
  v26 = v25;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v26;
  *v26 = 0x8000000000000000;
  sub_266ECD4CC(v21, v23, 4, v27);
  *v26 = v34;
  return v24(v35, 0);
}

uint64_t sub_26731C12C(uint64_t a1)
{
  v2 = sub_26731C230(&qword_2800FA7A8, &protocol conformance descriptor for SISchemaUUFRReadySource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26731C194(uint64_t a1, uint64_t a2)
{
  v4 = sub_26731C230(&qword_2800FA7A8, &protocol conformance descriptor for SISchemaUUFRReadySource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26731C230(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SISchemaUUFRReadySource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static SISchemaUUFRSaid.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *(v4 + 104);
  v36 = *MEMORY[0x277D3E530];
  v37 = v4 + 104;
  v38 = v3;
  v35 = v10;
  (v10)(v6);
  v45[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v42 = *(v12 + 56);
  v42(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x800000026749DE50);
  v13(v45, 0);
  v41 = a2;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v44, 0xD000000000000010, 0x800000026749DE50);
  v39 = *(v12 + 48);
  v40 = v12 + 48;
  if (!v39(v16, 1, v11))
  {
    sub_266ECB128(&unk_287892CD0);
    sub_26738115C();
  }

  (v15)(v44, 0);
  v14(v45, 0);
  sub_266ECB294(0, &qword_2800FA490, 0x277D5AA18);
  sub_266ECAF2C(&qword_2800FA488, &qword_2800FA490, 0x277D5AA18, &protocol conformance descriptor for SISchemaSiriResponseContext);
  sub_26738120C();
  v17 = v11;
  v18 = v11;
  v34 = v11;
  v19 = v42;
  v42(v9, 0, 1, v18);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x800000026749DCB0);
  v20(v45, 0);
  v21 = v36;
  v22 = v38;
  v23 = v35;
  v35(v6, v36, v38);
  v45[0] = 1;
  sub_26738114C();
  v19(v9, 0, 1, v17);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x4977656956656361, 0xE900000000000044);
  v24(v45, 0);
  v23(v6, v21, v22);
  v45[0] = 1;
  sub_26738114C();
  v25 = v34;
  v26 = v42;
  v42(v9, 0, 1, v34);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x4377656956656361, 0xEC0000007373616CLL);
  v27(v45, 0);
  type metadata accessor for SISchemaResponseCategory(0);
  sub_26731CAC4();
  sub_26738120C();
  v26(v9, 0, 1, v25);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674694E0);
  v28(v45, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v26(v9, 0, 1, v25);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 0x6575716552627573, 0xEC00000064497473);
  v29(v45, 0);
  v30 = sub_2673811AC();
  v31 = sub_266ECB6CC(v44, 0x6575716552627573, 0xEC00000064497473);
  if (!v39(v32, 1, v25))
  {
    sub_266ECB128(&unk_287892D00);
    sub_26738115C();
  }

  (v31)(v44, 0);
  return v30(v45, 0);
}

uint64_t sub_26731CA00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731CA64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26731CAC4()
{
  result = qword_2800F5F78;
  if (!qword_2800F5F78)
  {
    type metadata accessor for SISchemaResponseCategory(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F5F78);
  }

  return result;
}

uint64_t static SISchemaUUFRSelected.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800FA7A0, 0x277D5AC28);
  sub_266ECAF2C(&qword_2800FA798, &qword_2800FA7A0, 0x277D5AC28, &protocol conformance descriptor for SISchemaUUFRCasinoCardSelected);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x800000026749DEA0);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800FA7B0, 0x277D5AC68);
  sub_266ECAF2C(&qword_2800FA7B8, &qword_2800FA7B0, 0x277D5AC68, &protocol conformance descriptor for SISchemaUUFRSnippetViewSelected);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v20;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x800000026749DEC0);
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

uint64_t sub_26731CFB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731D01C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUUFRShown.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v3 = sub_26738118C();
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v56 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26738113C();
  v63 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v56 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v12 = *MEMORY[0x277D3E530];
  v13 = *(v6 + 104);
  v13(v8, v12, v5);
  v70[0] = 1;
  sub_26738114C();
  v14 = sub_26738116C();
  v16 = (*(v14 - 8) + 56);
  v15 = *v16;
  v66 = *(v14 - 8);
  v67 = v15;
  v15(v11, 0, 1, v14);
  v17 = sub_2673811AC();
  sub_266EC637C(v11, 0x444977656976, 0xE600000000000000);
  v17(v70, 0);
  v60 = v12;
  v61 = v6 + 104;
  v59 = v13;
  v13(v8, v12, v63);
  v70[0] = 1;
  sub_26738114C();
  v18 = v67;
  v67(v11, 0, 1, v14);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0x4374657070696E73, 0xEC0000007373616CLL);
  v19(v70, 0);
  type metadata accessor for SISchemaSiriUILocation(0);
  sub_26731DFDC(&qword_2800FA4A0, type metadata accessor for SISchemaSiriUILocation, &protocol conformance descriptor for SISchemaSiriUILocation);
  sub_26738120C();
  v64 = v16;
  v18(v11, 0, 1, v14);
  v20 = sub_2673811AC();
  sub_266EC637C(v11, 0x6F4C495569726973, 0xEE006E6F69746163);
  v20(v70, 0);
  v68 = a2;
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v69, 0x6F4C495569726973, 0xEE006E6F69746163);
  v23 = *(v66 + 48);
  v66 += 48;
  v62 = v23;
  if (!v23(v24, 1, v14))
  {
    sub_266ECB128(&unk_287892D28);
    sub_26738115C();
  }

  (v22)(v69, 0);
  v21(v70, 0);
  v59(v8, v60, v63);
  v70[0] = 1;
  sub_26738114C();
  v67(v11, 0, 1, v14);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x800000026749DE50);
  v25(v70, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v69, 0xD000000000000010, 0x800000026749DE50);
  if (!v62(v28, 1, v14))
  {
    sub_266ECB128(&unk_287892D50);
    sub_26738115C();
  }

  (v27)(v69, 0);
  v26(v70, 0);
  sub_266ECB294(0, &qword_2800FA490, 0x277D5AA18);
  sub_266ECAF2C(&qword_2800FA488, &qword_2800FA490, 0x277D5AA18, &protocol conformance descriptor for SISchemaSiriResponseContext);
  sub_26738120C();
  v29 = v14;
  v67(v11, 0, 1, v14);
  v30 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000013, 0x800000026749DCB0);
  v30(v70, 0);
  v31 = v8;
  v32 = v8;
  v33 = v60;
  v34 = v63;
  v35 = v59;
  v59(v32, v60, v63);
  v70[0] = 1;
  sub_26738114C();
  v67(v11, 0, 1, v29);
  v36 = sub_2673811AC();
  sub_266EC637C(v11, 0x4977656956656361, 0xE900000000000044);
  v36(v70, 0);
  v35(v31, v33, v34);
  v70[0] = 1;
  sub_26738114C();
  v37 = v67;
  v67(v11, 0, 1, v29);
  v38 = sub_2673811AC();
  sub_266EC637C(v11, 0x4377656956656361, 0xEC0000007373616CLL);
  v38(v70, 0);
  type metadata accessor for SISchemaViewRegionDesignation(0);
  sub_26731DFDC(&qword_2800FA788, type metadata accessor for SISchemaViewRegionDesignation, &protocol conformance descriptor for SISchemaViewRegionDesignation);
  sub_26738120C();
  v37(v11, 0, 1, v29);
  v39 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000015, 0x800000026749D6B0);
  v39(v70, 0);
  sub_266ECB294(0, &qword_2800FA150, 0x277D5A8C8);
  sub_266ECAF2C(&qword_2800FA148, &qword_2800FA150, 0x277D5A8C8, &protocol conformance descriptor for SISchemaGridCardSection);
  sub_26738121C();
  v37(v11, 0, 1, v29);
  v40 = sub_2673811AC();
  sub_266EC637C(v11, 0x6472614364697267, 0xEF6E6F6974636553);
  v40(v70, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v63 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v37(v11, 0, 1, v29);
  v41 = sub_2673811AC();
  sub_266EC637C(v11, 0x64496B6E696CLL, 0xE600000000000000);
  v41(v70, 0);
  type metadata accessor for SISchemaResponseCategory(0);
  sub_26731DFDC(&qword_2800F5F78, type metadata accessor for SISchemaResponseCategory, &protocol conformance descriptor for SISchemaResponseCategory);
  sub_26738120C();
  v37(v11, 0, 1, v29);
  v42 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000010, 0x80000002674694E0);
  v42(v70, 0);
  sub_26738120C();
  v37(v11, 0, 1, v29);
  v43 = sub_2673811AC();
  sub_266EC637C(v11, 0x6575716552627573, 0xEC00000064497473);
  v43(v70, 0);
  v44 = sub_2673811AC();
  v45 = sub_266ECB6CC(v69, 0x6575716552627573, 0xEC00000064497473);
  if (!v62(v46, 1, v29))
  {
    sub_266ECB128(&unk_287892D80);
    sub_26738115C();
  }

  (v45)(v69, 0);
  v44(v70, 0);
  v47 = v56;
  sub_26738117C();
  v48 = sub_2673811BC();
  v50 = v49;
  v51 = *v49;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v50 = v51;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v51 = sub_266ECAD54(0, v51[2] + 1, 1, v51);
    *v50 = v51;
  }

  v54 = v51[2];
  v53 = v51[3];
  if (v54 >= v53 >> 1)
  {
    v51 = sub_266ECAD54((v53 > 1), v54 + 1, 1, v51);
    *v50 = v51;
  }

  v51[2] = v54 + 1;
  (*(v57 + 32))(v51 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v54, v47, v58);
  return v48(v70, 0);
}

uint64_t sub_26731DF18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731DF7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26731DFDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static SISchemaUUFRShownTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496B6E696CLL, 0xE600000000000000);
  v10(v19, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v17);
  v19[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000019, 0x800000026749DF40);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0xD000000000000019, 0x800000026749DF40);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_287892DA8);
    sub_26738115C();
  }

  (v13)(v18, 0);
  return v12(v19, 0);
}

uint64_t sub_26731E440(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731E4A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static SISchemaUUFRSnippetViewSelected.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x4174657070696E73, 0xEC00000064496563);
  return v8(v10, 0);
}

uint64_t sub_26731E79C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731E800(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26731E864()
{
  result = qword_2800FA7B8;
  if (!qword_2800FA7B8)
  {
    sub_26731E8BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800FA7B8);
  }

  return result;
}

unint64_t sub_26731E8BC()
{
  result = qword_2800FA7B0;
  if (!qword_2800FA7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800FA7B0);
  }

  return result;
}

uint64_t static SISchemaUUID.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4F8], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x65756C6176, 0xE500000000000000);
  v8(v10, 0);
  sub_266ECB128(&unk_287892DD0);
  return sub_2673811CC();
}

uint64_t sub_26731EB68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26731EBCC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26731EC30()
{
  result = qword_2800EEDA8;
  if (!qword_2800EEDA8)
  {
    sub_26731EC88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EEDA8);
  }

  return result;
}

unint64_t sub_26731EC88()
{
  result = qword_2800EEDA0;
  if (!qword_2800EEDA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EEDA0);
  }

  return result;
}

uint64_t static SISchemaVersion.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = sub_26738113C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = *MEMORY[0x277D3E538];
  v22 = *(v1 + 104);
  v23 = v1 + 104;
  v8 = v7;
  v21 = v7;
  v20 = v0;
  v22(v3);
  v25[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v24 = v10 + 56;
  v11(v6, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x726F6A616DLL, 0xE500000000000000);
  v12(v25, 0);
  v13 = v22;
  (v22)(v3, v8, v0);
  v25[0] = 1;
  sub_26738114C();
  v11(v6, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x726F6E696DLL, 0xE500000000000000);
  v14(v25, 0);
  v15 = v20;
  (v13)(v3, v21, v20);
  v25[0] = 1;
  sub_26738114C();
  v11(v6, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0x6863746170, 0xE500000000000000);
  v16(v25, 0);
  (v13)(v3, *MEMORY[0x277D3E530], v15);
  v25[0] = 1;
  sub_26738114C();
  v11(v6, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x61656C6572657270, 0xEA00000000006573);
  v17(v25, 0);
  sub_266ECB128(&unk_287892E00);
  return sub_2673811CC();
}