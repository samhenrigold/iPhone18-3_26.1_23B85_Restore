uint64_t sub_26701FB84(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701FBE8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTFile.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26701FED4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26701FF38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26701FF9C()
{
  result = qword_2800F2EF0;
  if (!qword_2800F2EF0)
  {
    sub_26701FFF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2EF0);
  }

  return result;
}

unint64_t sub_26701FFF4()
{
  result = qword_2800F2EF8;
  if (!qword_2800F2EF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2EF8);
  }

  return result;
}

uint64_t static IFTSchemaIFTFollowUpAction.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2F00, 0x277D57E48);
  sub_266ECAF2C(&qword_2800F2F08, &qword_2800F2F00, 0x277D57E48, &protocol conformance descriptor for IFTSchemaIFTFollowUpActionExecutableAction);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F69746361, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_267020210(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2F00, 0x277D57E48);
  sub_266ECAF2C(&qword_2800F2F08, &qword_2800F2F00, 0x277D57E48, &protocol conformance descriptor for IFTSchemaIFTFollowUpActionExecutableAction);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F69746361, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_2670203A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702040C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTFollowUpActionExecutableAction.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F2F10, 0x277D57E50);
  sub_266ECAF2C(&qword_2800F2F18, &qword_2800F2F10, 0x277D57E50, &protocol conformance descriptor for IFTSchemaIFTFollowUpActionExecutableActionLinkAction);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0x697463416B6E696CLL, 0xEA00000000006E6FLL);
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

uint64_t sub_267020820(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267020884(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTFollowUpActionExecutableActionLinkAction.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v8, 0x6449656C646E7562, 0xE800000000000000);
  v13(v26, 0);
  v24 = a1;
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v25, 0x6449656C646E7562, 0xE800000000000000);
  if (!(*(v12 + 48))(v16, 1, v11))
  {
    sub_266ECB128(&unk_287887470);
    sub_26738115C();
  }

  (v15)(v25, 0);
  v14(v26, 0);
  v21(v5, *MEMORY[0x277D3E540], v23);
  v26[0] = 1;
  sub_26738114C();
  v20(v8, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267446350);
  return v17(v26, 0);
}

uint64_t sub_267020D00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267020D64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267020DC8()
{
  result = qword_2800F2F18;
  if (!qword_2800F2F18)
  {
    sub_267020E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2F18);
  }

  return result;
}

unint64_t sub_267020E20()
{
  result = qword_2800F2F10;
  if (!qword_2800F2F10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2F10);
  }

  return result;
}

uint64_t static IFTSchemaIFTFormatExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEC00000073644974);
  return v5(v7, 0);
}

uint64_t sub_267021048(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEC00000073644974);
  return v5(v7, 0);
}

uint64_t sub_2670211EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267021250(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTGetMentionedAppsExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26702153C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670215A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267021604()
{
  result = qword_2800F2E98;
  if (!qword_2800F2E98)
  {
    sub_26702165C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2E98);
  }

  return result;
}

unint64_t sub_26702165C()
{
  result = qword_2800F2E90;
  if (!qword_2800F2E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2E90);
  }

  return result;
}

uint64_t static IFTSchemaIFTIndexExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v18 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E4E8], v1);
  v23[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v20 = *(v9 + 56);
  v20(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v10(v23, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v22, 0x737473697865, 0xE600000000000000);
  if (!(*(v9 + 48))(v13, 1, v8))
  {
    sub_266ECB128(&unk_2878874A0);
    sub_26738115C();
  }

  (v12)(v22, 0);
  v11(v23, 0);
  v19 = "iri.ift.IFTIndexExpression";
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v14 = v20;
  v20(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v19 | 0x8000000000000000);
  v15(v23, 0);
  sub_26738120C();
  v14(v7, 0, 1, v8);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D6574617473, 0xEB00000000644974);
  return v16(v23, 0);
}

uint64_t sub_267021B24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267021B88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTInfixExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267021E74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267021ED8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267021F3C()
{
  result = qword_2800F2DE8;
  if (!qword_2800F2DE8)
  {
    sub_267021F94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2DE8);
  }

  return result;
}

unint64_t sub_267021F94()
{
  result = qword_2800F2DE0;
  if (!qword_2800F2DE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2DE0);
  }

  return result;
}

uint64_t static IFTSchemaIFTInitiatedSpans.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for SISchemaIFParticipant(0);
  sub_267022418(&qword_2800F2CA8, type metadata accessor for SISchemaIFParticipant, &protocol conformance descriptor for SISchemaIFParticipant);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x7069636974726170, 0xEB00000000746E61);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E540], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x64496E617073, 0xE600000000000000);
  return v10(v14, 0);
}

uint64_t sub_26702230C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267022370(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267022418(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267022460()
{
  result = qword_2800F2CB0;
  if (!qword_2800F2CB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2CB0);
  }

  return result;
}

uint64_t static IFTSchemaIFTIntelligenceFlowError.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  sub_266EC637C(v8, 0x6E69616D6F64, 0xE600000000000000);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E510], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 1701080931, 0xE400000000000000);
  return v13(v16, 0);
}

uint64_t sub_2670227C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267022824(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267022888()
{
  result = qword_2800F26F0;
  if (!qword_2800F26F0)
  {
    sub_2670228E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F26F0);
  }

  return result;
}

unint64_t sub_2670228E0()
{
  result = qword_2800F26E8;
  if (!qword_2800F26E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F26E8);
  }

  return result;
}

uint64_t static IFTSchemaIFTInterpretedStatementResult.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v32 = a2;
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2F20, 0x277D58080);
  sub_266ECAF2C(&qword_2800F2F28, &qword_2800F2F20, 0x277D58080, &protocol conformance descriptor for IFTSchemaIFTStatementOutcome);
  sub_26738120C();
  v9 = sub_26738116C();
  v26 = *(v9 - 8);
  v11 = v26 + 56;
  v10 = *(v26 + 56);
  v10(v8, 0, 1, v9);
  v33 = v10;
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D6F6374756FLL, 0xE700000000000000);
  v12(v35, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  v13 = sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  v14 = a1;
  sub_26738120C();
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267446510);
  v15(v35, 0);
  v30 = v13;
  v31 = v14;
  sub_26738120C();
  v16 = v33;
  v33(v8, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267446530);
  v17(v35, 0);
  (*(v28 + 104))(v27, *MEMORY[0x277D3E530], v29);
  v35[0] = 1;
  sub_26738114C();
  v29 = v11;
  v16(v8, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496C6F6F74, 0xE600000000000000);
  v18(v35, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v34, 0x64496C6F6F74, 0xE600000000000000);
  if (!(*(v26 + 48))(v21, 1, v9))
  {
    sub_266ECB128(&unk_2878874C8);
    sub_26738115C();
  }

  (v20)(v34, 0);
  v19(v35, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v22 = v33;
  v33(v8, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x76456E6F69746361, 0xED00006449746E65);
  v23(v35, 0);
  sub_26738120C();
  v22(v8, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267446550);
  return v24(v35, 0);
}

uint64_t sub_267022FEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267023050(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTMeasurement.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26702333C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670233A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267023404()
{
  result = qword_2800F2F40;
  if (!qword_2800F2F40)
  {
    sub_26702345C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2F40);
  }

  return result;
}

unint64_t sub_26702345C()
{
  result = qword_2800F2F48;
  if (!qword_2800F2F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2F48);
  }

  return result;
}

uint64_t static IFTSchemaIFTNoMatchingToolExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670236F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267023754(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670237B8()
{
  result = qword_2800F2E88;
  if (!qword_2800F2E88)
  {
    sub_267023810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2E88);
  }

  return result;
}

unint64_t sub_267023810()
{
  result = qword_2800F2E80;
  if (!qword_2800F2E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2E80);
  }

  return result;
}

uint64_t static IFTSchemaIFTOpenExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_267023A38(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_267023BDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267023C40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTParameter.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  sub_266EC637C(v9, 7955819, 0xE300000000000000);
  v13(v18, 0);
  v10(v6, *MEMORY[0x277D3E510], v3);
  v18[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x697463656C6C6F63, 0xEF7865646E496E6FLL);
  v14(v18, 0);
  sub_266ECB294(0, &qword_2800F2AC0, 0x277D57D68);
  sub_266ECAF2C(&qword_2800F2AB8, &qword_2800F2AC0, 0x277D57D68, &protocol conformance descriptor for IFTSchemaIFTCandidate);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x74616469646E6163, 0xE900000000000065);
  return v15(v18, 0);
}

uint64_t sub_2670240DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267024140(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTParameterCandidatesNotFound.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v10(v6, *MEMORY[0x277D3E4E8], v3);
  v18[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v9, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v13(v18, 0);
  v10(v6, *MEMORY[0x277D3E530], v3);
  v18[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6574656D61726170, 0xEB00000000644972);
  v14(v18, 0);
  sub_266ECB294(0, &qword_2800F2A20, 0x277D58138);
  sub_266ECAF2C(&qword_2800F2A28, &qword_2800F2A20, 0x277D58138, &protocol conformance descriptor for IFTSchemaIFTTypedValue);
  sub_26738120C();
  v12(v9, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x65756C6176, 0xE500000000000000);
  return v15(v18, 0);
}

uint64_t sub_2670245D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267024638(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTParameterConfirmation.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E4E8];
  v9 = *(v2 + 104);
  v20 = v1;
  v21 = v9;
  v9(v4, v8, v1);
  v23[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v12(v23, 0);
  v13 = v1;
  v14 = v21;
  v21(v4, *MEMORY[0x277D3E530], v13);
  v23[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6574656D61726170, 0xEB00000000644972);
  v15(v23, 0);
  v14(v4, *MEMORY[0x277D3E510], v20);
  v23[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x6574656D61726170, 0xEE007865646E4972);
  v16(v23, 0);
  sub_266ECB294(0, &qword_2800F2A20, 0x277D58138);
  sub_266ECAF2C(&qword_2800F2A28, &qword_2800F2A20, 0x277D58138, &protocol conformance descriptor for IFTSchemaIFTTypedValue);
  sub_26738120C();
  v11(v7, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 1835365481, 0xE400000000000000);
  return v17(v23, 0);
}

uint64_t sub_267024B9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267024C00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTParameterDisambiguation.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E4E8];
  v9 = *(v2 + 104);
  v20 = v1;
  v21 = v9;
  v9(v4, v8, v1);
  v23[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v12(v23, 0);
  v13 = v1;
  v14 = v21;
  v21(v4, *MEMORY[0x277D3E530], v13);
  v23[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6574656D61726170, 0xEB00000000644972);
  v15(v23, 0);
  v14(v4, *MEMORY[0x277D3E510], v20);
  v23[0] = 1;
  sub_26738114C();
  v11(v7, 0, 1, v10);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x6574656D61726170, 0xEE007865646E4972);
  v16(v23, 0);
  sub_266ECB294(0, &qword_2800F2A20, 0x277D58138);
  sub_266ECAF2C(&qword_2800F2A28, &qword_2800F2A20, 0x277D58138, &protocol conformance descriptor for IFTSchemaIFTTypedValue);
  sub_26738122C();
  v11(v7, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x736D657469, 0xE500000000000000);
  return v17(v23, 0);
}

uint64_t sub_267025168(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670251CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTParameterNeedsValue.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v9(v5, *MEMORY[0x277D3E530], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6574656D61726170, 0xEB00000000644972);
  return v13(v16, 0);
}

uint64_t sub_267025594(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670255F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26702565C()
{
  result = qword_2800F2F90;
  if (!qword_2800F2F90)
  {
    sub_2670256B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2F90);
  }

  return result;
}

unint64_t sub_2670256B4()
{
  result = qword_2800F2F98;
  if (!qword_2800F2F98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2F98);
  }

  return result;
}

uint64_t static IFTSchemaIFTParameterNotAllowed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v26 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E4E8];
  v9 = *(v2 + 104);
  v23 = v2 + 104;
  v24 = v1;
  v22 = v9;
  v9(v4, v8, v1);
  v28[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v25 = *(v11 + 56);
  v25(v7, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v12(v28, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v27, 0x737473697865, 0xE600000000000000);
  if (!(*(v11 + 48))(v15, 1, v10))
  {
    sub_266ECB128(&unk_2878874F8);
    sub_26738115C();
  }

  (v14)(v27, 0);
  v13(v28, 0);
  v22(v4, *MEMORY[0x277D3E530], v24);
  v28[0] = 1;
  sub_26738114C();
  v16 = v25;
  v25(v7, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x6574656D61726170, 0xEB00000000644972);
  v17(v28, 0);
  sub_266ECB294(0, &qword_2800F2A20, 0x277D58138);
  sub_266ECAF2C(&qword_2800F2A28, &qword_2800F2A20, 0x277D58138, &protocol conformance descriptor for IFTSchemaIFTTypedValue);
  sub_26738120C();
  v16(v7, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x65756C6176, 0xE500000000000000);
  v18(v28, 0);
  type metadata accessor for IFTSchemaIFTParameterNotAllowedReason(0);
  sub_267025CE8();
  sub_26738120C();
  v16(v7, 0, 1, v10);
  v19 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E6F73616572, 0xE600000000000000);
  return v19(v28, 0);
}

uint64_t sub_267025C24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267025C88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267025CE8()
{
  result = qword_2800F2FA0;
  if (!qword_2800F2FA0)
  {
    type metadata accessor for IFTSchemaIFTParameterNotAllowedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2FA0);
  }

  return result;
}

uint64_t static IFTSchemaIFTParameterNotAllowedReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x80000002674467A0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000003ALL, 0x80000002674467D0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003BLL, 0x8000000267446810, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267025F98(uint64_t a1)
{
  v2 = sub_26702609C(&qword_2800F2FB8, &protocol conformance descriptor for IFTSchemaIFTParameterNotAllowedReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267026000(uint64_t a1, uint64_t a2)
{
  v4 = sub_26702609C(&qword_2800F2FB8, &protocol conformance descriptor for IFTSchemaIFTParameterNotAllowedReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26702609C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTParameterNotAllowedReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTParameterQuery.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v11 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F29B8, 0x277D57D18);
  sub_266ECAF2C(&qword_2800F29B0, &qword_2800F29B8, 0x277D57D18, &protocol conformance descriptor for IFTSchemaIFTActionParameterContext);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(v4 - 8);
  (*(v5 + 56))(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x747865746E6F63, 0xE700000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x747865746E6F63, 0xE700000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287887520);
    sub_26738115C();
  }

  (v8)(v11, 0);
  v7(v12, 0);
  sub_266ECB128(&unk_287887548);
  return sub_2673811CC();
}

uint64_t sub_267026394(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670263F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTParameterSet.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2F58, 0x277D57EA8);
  sub_266ECAF2C(&qword_2800F2F50, &qword_2800F2F58, 0x277D57EA8, &protocol conformance descriptor for IFTSchemaIFTParameter);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xEA00000000007372);
  return v5(v7, 0);
}

uint64_t sub_267026674(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2F58, 0x277D57EA8);
  sub_266ECAF2C(&qword_2800F2F50, &qword_2800F2F58, 0x277D57EA8, &protocol conformance descriptor for IFTSchemaIFTParameter);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6574656D61726170, 0xEA00000000007372);
  return v5(v7, 0);
}

uint64_t sub_267026814(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267026878(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTPayloadExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEC00000073644974);
  return v5(v7, 0);
}

uint64_t sub_267026AF8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEC00000073644974);
  return v5(v7, 0);
}

uint64_t sub_267026C9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267026D00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTPaymentMethod.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267026FEC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267027050(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670270B4()
{
  result = qword_2800F2FD0;
  if (!qword_2800F2FD0)
  {
    sub_26702710C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2FD0);
  }

  return result;
}

unint64_t sub_26702710C()
{
  result = qword_2800F2FD8;
  if (!qword_2800F2FD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2FD8);
  }

  return result;
}

uint64_t static IFTSchemaIFTPermissionRequirement.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738118C();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_26738113C();
  v4 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v62 = *MEMORY[0x277D3E4E8];
  v10 = *(v4 + 104);
  v10(v6);
  v59 = v4 + 104;
  v57 = v10;
  v64[0] = 0;
  sub_26738114C();
  v60 = sub_26738116C();
  v11 = *(v60 - 8);
  v12 = *(v11 + 56);
  v63 = v11 + 56;
  v12(v9, 0, 1, v60);
  v13 = v12;
  v58 = a1;
  v14 = sub_2673811AC();
  v51 = 0xD000000000000016;
  sub_266EC637C(v9, 0xD000000000000016, 0x8000000267446950);
  v14(v64, 0);
  v52 = "siriPermissionRequired";
  v15 = v62;
  v16 = v61;
  (v10)(v6, v62, v61);
  v64[0] = 0;
  sub_26738114C();
  v17 = v60;
  v12(v9, 0, 1, v60);
  v56 = v12;
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v52 | 0x8000000000000000);
  v18(v64, 0);
  v52 = "shortcutsPermissionRequired";
  v19 = v16;
  v20 = v16;
  v21 = v57;
  (v57)(v6, v15, v20);
  v64[0] = 0;
  sub_26738114C();
  v13(v9, 0, 1, v17);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, v52 | 0x8000000000000000);
  v22(v64, 0);
  v50 = "ermissionRequired";
  v23 = v6;
  v24 = v62;
  v21(v6, v62, v19);
  v25 = v21;
  v64[0] = 0;
  sub_26738114C();
  v26 = v60;
  v27 = v56;
  v56(v9, 0, 1, v60);
  v28 = sub_2673811AC();
  v52 = 0xD00000000000001ALL;
  sub_266EC637C(v9, 0xD00000000000001ALL, v50 | 0x8000000000000000);
  v28(v64, 0);
  v50 = "locationPermissionRequired";
  v29 = v23;
  v30 = v23;
  v31 = v61;
  v25(v30, v24, v61);
  v64[0] = 0;
  sub_26738114C();
  v27(v9, 0, 1, v26);
  v32 = sub_2673811AC();
  sub_266EC637C(v9, v51, v50 | 0x8000000000000000);
  v32(v64, 0);
  v51 = "wifiPermissionRequired";
  v33 = v24;
  v34 = v31;
  v35 = v57;
  (v57)(v29, v24, v34);
  v64[0] = 0;
  sub_26738114C();
  v36 = v56;
  v56(v9, 0, 1, v26);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, v51 | 0x8000000000000000);
  v37(v64, 0);
  v51 = "bluetoothPermissionRequired";
  v38 = v61;
  v35(v29, v33, v61);
  v64[0] = 0;
  sub_26738114C();
  v36(v9, 0, 1, v26);
  v39 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, v51 | 0x8000000000000000);
  v39(v64, 0);
  v35(v29, v62, v38);
  v64[0] = 0;
  sub_26738114C();
  v36(v9, 0, 1, v60);
  v40 = v53;
  v41 = sub_2673811AC();
  sub_266EC637C(v9, v52, 0x8000000267446A40);
  v41(v64, 0);
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
  (*(v54 + 32))(v45 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v48, v40, v55);
  return v42(v64, 0);
}

uint64_t sub_267027ACC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267027B30(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267027B94()
{
  result = qword_2800F29D8;
  if (!qword_2800F29D8)
  {
    sub_267027BEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F29D8);
  }

  return result;
}

unint64_t sub_267027BEC()
{
  result = qword_2800F29D0;
  if (!qword_2800F29D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F29D0);
  }

  return result;
}

uint64_t static IFTSchemaIFTPerson.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267027E80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267027EE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267027F48()
{
  result = qword_2800F2FE0;
  if (!qword_2800F2FE0)
  {
    sub_267027FA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2FE0);
  }

  return result;
}

unint64_t sub_267027FA0()
{
  result = qword_2800F2FE8;
  if (!qword_2800F2FE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2FE8);
  }

  return result;
}

uint64_t static IFTSchemaIFTPickExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E656D6574617473, 0xEB00000000644974);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E510], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x7865646E69, 0xE500000000000000);
  return v10(v14, 0);
}

uint64_t sub_267028324(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267028388(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTPickOneExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_267028608(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_2670287AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267028810(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTPlacemark.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267028AFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267028B60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267028BC4()
{
  result = qword_2800F2FF0;
  if (!qword_2800F2FF0)
  {
    sub_267028C1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2FF0);
  }

  return result;
}

unint64_t sub_267028C1C()
{
  result = qword_2800F2FF8;
  if (!qword_2800F2FF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2FF8);
  }

  return result;
}

uint64_t static IFTSchemaIFTPlan.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v19 = a1;
  v1 = sub_26738113C();
  v18 = v1;
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E4E8];
  v17 = *(v2 + 104);
  v17(v4, v8, v1);
  v20[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v11(v20, 0);
  sub_266ECB294(0, &qword_2800F3000, 0x277D57F58);
  sub_266ECAF2C(&qword_2800F3008, &qword_2800F3000, 0x277D57F58, &protocol conformance descriptor for IFTSchemaIFTProgramStatement);
  sub_26738122C();
  v10(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D6574617473, 0xEA00000000007374);
  v12(v20, 0);
  v17(v4, *MEMORY[0x277D3E530], v18);
  v20[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x656469727265766FLL, 0xEA00000000006449);
  v13(v20, 0);
  type metadata accessor for IFTSchemaIFTPlanSource(0);
  sub_2670291B4();
  sub_26738120C();
  v10(v7, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0x72756F536E616C70, 0xEA00000000006563);
  return v14(v20, 0);
}

uint64_t sub_2670290F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267029154(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670291B4()
{
  result = qword_2800F3010;
  if (!qword_2800F3010)
  {
    type metadata accessor for IFTSchemaIFTPlanSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3010);
  }

  return result;
}

uint64_t static IFTSchemaIFTPlanGenerationError.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F3018, 0x277D57F30);
  sub_266ECAF2C(&qword_2800F3020, &qword_2800F3018, 0x277D57F30, &protocol conformance descriptor for IFTSchemaIFTPlanGenerationModelOutputError);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001ELL, 0x8000000267446B90);
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

uint64_t sub_2670295C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267029628(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTPlanGenerationModelOutputError.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80, &protocol conformance descriptor for IFTSchemaIFTIntelligenceFlowError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F727265, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_26702989C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80, &protocol conformance descriptor for IFTSchemaIFTIntelligenceFlowError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F727265, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_267029A34(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267029A98(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTPlannerError.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v24[1] = a1;
  v1 = sub_26738118C();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x28223BE20](v1);
  v26 = v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_26738113C();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  v24[0] = sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80, &protocol conformance descriptor for IFTSchemaIFTIntelligenceFlowError);
  sub_26738121C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x726568746FLL, 0xE500000000000000);
  v11(v29, 0);
  (*(v3 + 104))(v5, *MEMORY[0x277D3E4E8], v25);
  v29[0] = 0;
  sub_26738114C();
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F5464656C696166, 0xEC0000006E616C50);
  v12(v29, 0);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  v14 = v8;
  v15 = v26;
  sub_266EC637C(v14, 0x456B726F7774656ELL, 0xEC000000726F7272);
  v13(v29, 0);
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
  (*(v27 + 32))(v19 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22, v15, v28);
  return v16(v29, 0);
}

uint64_t sub_26702A070(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702A0D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTPlanSource.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267446C90, isUniquelyReferenced_nonNull_native);
  *v3 = v26;

  v1(v32, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267446CB0, v8);
  *v7 = v27;

  v5(v32, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000027, 0x8000000267446CD0, v12);
  *v11 = v28;

  v9(v32, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001BLL, 0x8000000267446D00, v16);
  *v15 = v29;

  v13(v32, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000001BLL, 0x8000000267446D20, v20);
  *v19 = v30;

  v17(v32, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000001ALL, 0x8000000267446D40, v24);
  *v23 = v31;

  return v21(v32, 0);
}

uint64_t sub_26702A4E0(uint64_t a1)
{
  v2 = sub_26702A5E4(&qword_2800F3048, &protocol conformance descriptor for IFTSchemaIFTPlanSource);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26702A548(uint64_t a1, uint64_t a2)
{
  v4 = sub_26702A5E4(&qword_2800F3048, &protocol conformance descriptor for IFTSchemaIFTPlanSource);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26702A5E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTPlanSource(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTPrefixExpression.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26702A870(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702A8D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26702A938()
{
  result = qword_2800F2DD8;
  if (!qword_2800F2DD8)
  {
    sub_26702A990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2DD8);
  }

  return result;
}

unint64_t sub_26702A990()
{
  result = qword_2800F2DD0;
  if (!qword_2800F2DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2DD0);
  }

  return result;
}

uint64_t static IFTSchemaIFTPrimitive.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
    sub_266ECB128(&unk_287887570);
    sub_26738115C();
  }

  (v13)(v18, 0);
  v12(v19, 0);
  type metadata accessor for IFTSchemaIFTPrimitiveType(0);
  sub_26702AEB8(&qword_2800F3050, type metadata accessor for IFTSchemaIFTPrimitiveType, &protocol conformance descriptor for IFTSchemaIFTPrimitiveType);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x766974696D697270, 0xED00006570795465);
  return v15(v19, 0);
}

uint64_t sub_26702ADAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702AE10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26702AEB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26702AF00()
{
  result = qword_2800F3060;
  if (!qword_2800F3060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3060);
  }

  return result;
}

uint64_t static IFTSchemaIFTPrimitiveType.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v82 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000018, 0x8000000267446DF0, isUniquelyReferenced_nonNull_native);
  *v3 = v82;

  v1(v102, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v83 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000015, 0x8000000267446E10, v8);
  *v7 = v83;

  v5(v102, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v84 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x8000000267446E30, v12);
  *v11 = v84;

  v9(v102, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v85 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000014, 0x8000000267446E50, v16);
  *v15 = v85;

  v13(v102, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v86 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000017, 0x8000000267446E70, v20);
  *v19 = v86;

  v17(v102, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v87 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000018, 0x8000000267446E90, v24);
  *v23 = v87;

  v21(v102, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000017, 0x8000000267446EB0, v28);
  *v27 = v88;

  v25(v102, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000015, 0x8000000267446ED0, v32);
  *v31 = v89;

  v29(v102, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v90 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000020, 0x8000000267446EF0, v36);
  *v35 = v90;

  v33(v102, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v91 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000014, 0x8000000267446F20, v40);
  *v39 = v91;

  v37(v102, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v92 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD00000000000001BLL, 0x8000000267446F40, v44);
  *v43 = v92;

  v41(v102, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v93 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000022, 0x8000000267446F60, v48);
  *v47 = v93;

  v45(v102, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v94 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000001CLL, 0x8000000267446F90, v52);
  *v51 = v94;

  v49(v102, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v95 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000020, 0x8000000267446FB0, v56);
  *v55 = v95;

  v53(v102, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v96 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001FLL, 0x8000000267446FE0, v60);
  *v59 = v96;

  v57(v102, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v97 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD00000000000001ALL, 0x8000000267447000, v64);
  *v63 = v97;

  v61(v102, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v98 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000017, 0x8000000267447020, v68);
  *v67 = v98;

  v65(v102, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v99 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000015, 0x8000000267447040, v72);
  *v71 = v99;

  v69(v102, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v100 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000014, 0x8000000267447060, v76);
  *v75 = v100;

  v73(v102, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v101 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000020, 0x8000000267447080, v80);
  *v79 = v101;

  return v77(v102, 0);
}

uint64_t sub_26702B8EC(uint64_t a1)
{
  v2 = sub_26702B9F0(&qword_2800F3068, &protocol conformance descriptor for IFTSchemaIFTPrimitiveType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26702B954(uint64_t a1, uint64_t a2)
{
  v4 = sub_26702B9F0(&qword_2800F3068, &protocol conformance descriptor for IFTSchemaIFTPrimitiveType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26702B9F0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTPrimitiveType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTPrimitiveValue.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v41 = a1;
  v1 = sub_26738118C();
  v43 = *(v1 - 8);
  v44 = v1;
  MEMORY[0x28223BE20](v1);
  v42 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v41 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E4E8];
  v46 = *(v4 + 104);
  v47 = v3;
  v48 = v4 + 104;
  v46(v6, v10, v3);
  v49[0] = 0;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v45 = v12 + 56;
  v13(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x766974696D697270, 0xED00006C6C754E65);
  v14(v49, 0);
  v15 = v3;
  v16 = v46;
  v46(v6, v10, v15);
  v49[0] = 0;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0x766974696D697270, 0xED00006C6F6F4265);
  v17(v49, 0);
  v16(v6, *MEMORY[0x277D3E510], v47);
  v49[0] = 0;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0x766974696D697270, 0xEC000000746E4965);
  v18(v49, 0);
  v20 = v46;
  v19 = v47;
  v46(v6, *MEMORY[0x277D3E518], v47);
  v49[0] = 0;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x766974696D697270, 0xEF656C62756F4465);
  v21(v49, 0);
  v20(v6, *MEMORY[0x277D3E530], v19);
  v49[0] = 0;
  sub_26738114C();
  v13(v9, 0, 1, v11);
  v22 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x80000002674470E0);
  v22(v49, 0);
  sub_266ECB294(0, &qword_2800F2D38, 0x277D57DD8);
  sub_266ECAF2C(&qword_2800F2D30, &qword_2800F2D38, 0x277D57DD8, &protocol conformance descriptor for IFTSchemaIFTDateComponents);
  sub_26738121C();
  v13(v9, 0, 1, v11);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, 0x8000000267447100);
  v23(v49, 0);
  sub_266ECB294(0, &qword_2800F2F48, 0x277D57E90);
  sub_266ECAF2C(&qword_2800F2F40, &qword_2800F2F48, 0x277D57E90, &protocol conformance descriptor for IFTSchemaIFTMeasurement);
  sub_26738121C();
  v13(v9, 0, 1, v11);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D6572757361656DLL, 0xEB00000000746E65);
  v24(v49, 0);
  sub_266ECB294(0, &qword_2800F2D18, 0x277D57DC8);
  sub_266ECAF2C(&qword_2800F2D10, &qword_2800F2D18, 0x277D57DC8, &protocol conformance descriptor for IFTSchemaIFTCurrencyAmount);
  sub_26738121C();
  v13(v9, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x79636E6572727563, 0xEE00746E756F6D41);
  v25(v49, 0);
  sub_266ECB294(0, &qword_2800F2FD8, 0x277D57EF0);
  sub_266ECAF2C(&qword_2800F2FD0, &qword_2800F2FD8, 0x277D57EF0, &protocol conformance descriptor for IFTSchemaIFTPaymentMethod);
  sub_26738121C();
  v13(v9, 0, 1, v11);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0x4D746E656D796170, 0xED0000646F687465);
  v26(v49, 0);
  sub_266ECB294(0, &qword_2800F2FF8, 0x277D57F18);
  sub_266ECAF2C(&qword_2800F2FF0, &qword_2800F2FF8, 0x277D57F18, &protocol conformance descriptor for IFTSchemaIFTPlacemark);
  sub_26738121C();
  v13(v9, 0, 1, v11);
  v27 = sub_2673811AC();
  sub_266EC637C(v9, 0x72616D6563616C70, 0xE90000000000006BLL);
  v27(v49, 0);
  sub_266ECB294(0, &qword_2800F2FE8, 0x277D57F00);
  sub_266ECAF2C(&qword_2800F2FE0, &qword_2800F2FE8, 0x277D57F00, &protocol conformance descriptor for IFTSchemaIFTPerson);
  sub_26738121C();
  v13(v9, 0, 1, v11);
  v28 = sub_2673811AC();
  sub_266EC637C(v9, 0x6E6F73726570, 0xE600000000000000);
  v28(v49, 0);
  sub_266ECB294(0, &qword_2800F2EF8, 0x277D57E38);
  sub_266ECAF2C(&qword_2800F2EF0, &qword_2800F2EF8, 0x277D57E38, &protocol conformance descriptor for IFTSchemaIFTFile);
  sub_26738121C();
  v13(v9, 0, 1, v11);
  v29 = sub_2673811AC();
  sub_266EC637C(v9, 1701603686, 0xE400000000000000);
  v29(v49, 0);
  sub_266ECB294(0, &qword_2800F2A58, 0x277D57D40);
  sub_266ECAF2C(&qword_2800F2A50, &qword_2800F2A58, 0x277D57D40, &protocol conformance descriptor for IFTSchemaIFTApp);
  sub_26738121C();
  v13(v9, 0, 1, v11);
  v30 = sub_2673811AC();
  v31 = v9;
  v32 = v42;
  sub_266EC637C(v31, 7368801, 0xE300000000000000);
  v30(v49, 0);
  sub_26738117C();
  v33 = sub_2673811BC();
  v35 = v34;
  v36 = *v34;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v35 = v36;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v36 = sub_266ECAD54(0, v36[2] + 1, 1, v36);
    *v35 = v36;
  }

  v39 = v36[2];
  v38 = v36[3];
  if (v39 >= v38 >> 1)
  {
    v36 = sub_266ECAD54((v38 > 1), v39 + 1, 1, v36);
    *v35 = v36;
  }

  v36[2] = v39 + 1;
  (*(v43 + 32))(v36 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v39, v32, v44);
  return v33(v49, 0);
}

uint64_t sub_26702C7CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702C830(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTProgramStatement.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v20 = *(v2 - 8);
  v21 = v2;
  MEMORY[0x28223BE20](v2);
  v19 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E656D6574617473, 0xEB00000000644974);
  v10(v23, 0);
  sub_266ECB294(0, &qword_2800F2A68, 0x277D57CD0);
  sub_266ECAF2C(&qword_2800F2A60, &qword_2800F2A68, 0x277D57CD0, &protocol conformance descriptor for IFTSchemaIFTASTFlatExpr);
  v18 = a1;
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6973736572707865, 0xEA00000000006E6FLL);
  v11(v23, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v22, 0x6973736572707865, 0xEA00000000006E6FLL);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_287887598);
    sub_26738115C();
  }

  (v13)(v22, 0);
  v12(v23, 0);
  sub_266ECB294(0, &qword_2800F2EE8, 0x277D57E30);
  sub_266ECAF2C(&qword_2800F2EE0, &qword_2800F2EE8, 0x277D57E30, &protocol conformance descriptor for IFTSchemaIFTExpression);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x6973736572707865, 0xEE00656D614E6E6FLL);
  v15(v23, 0);
  (*(v20 + 104))(v19, *MEMORY[0x277D3E4E8], v21);
  v23[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0x746F6F527369, 0xE600000000000000);
  return v16(v23, 0);
}

uint64_t sub_26702CE60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702CEC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTQuery.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for IFTSchemaIFTSortOrder(0);
  sub_26702D3C4(&qword_2800F3080, type metadata accessor for IFTSchemaIFTSortOrder, &protocol conformance descriptor for IFTSchemaIFTSortOrder);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6564724F74726F73, 0xE900000000000072);
  return v5(v7, 0);
}

uint64_t sub_26702D12C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for IFTSchemaIFTSortOrder(0);
  sub_26702D3C4(&qword_2800F3080, type metadata accessor for IFTSchemaIFTSortOrder, &protocol conformance descriptor for IFTSchemaIFTSortOrder);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6564724F74726F73, 0xE900000000000072);
  return v5(v7, 0);
}

uint64_t sub_26702D2B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702D31C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26702D3C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26702D40C()
{
  result = qword_2800F3090;
  if (!qword_2800F3090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3090);
  }

  return result;
}

uint64_t static IFTSchemaIFTQueryDecorationPrePlannerResult.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26702D6A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702D704(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26702D768()
{
  result = qword_2800F2BA8;
  if (!qword_2800F2BA8)
  {
    sub_26702D7C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2BA8);
  }

  return result;
}

unint64_t sub_26702D7C0()
{
  result = qword_2800F2BA0;
  if (!qword_2800F2BA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2BA0);
  }

  return result;
}

uint64_t static IFTSchemaIFTQueryDecorationResult.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26702DA54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702DAB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26702DB1C()
{
  result = qword_2800F2B98;
  if (!qword_2800F2B98)
  {
    sub_26702DB74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2B98);
  }

  return result;
}

unint64_t sub_26702DB74()
{
  result = qword_2800F2B90;
  if (!qword_2800F2B90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2B90);
  }

  return result;
}

uint64_t static IFTSchemaIFTQueryPayloadType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267447250, isUniquelyReferenced_nonNull_native);
  *v3 = v22;

  v1(v27, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v23 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267447270, v8);
  *v7 = v23;

  v5(v27, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000020, 0x80000002674472A0, v12);
  *v11 = v24;

  v9(v27, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v25 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x80000002674472D0, v16);
  *v15 = v25;

  v13(v27, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000023, 0x8000000267447300, v20);
  *v19 = v26;

  return v17(v27, 0);
}

uint64_t sub_26702DEBC(uint64_t a1)
{
  v2 = sub_26702DFC0(&qword_2800F30A0, &protocol conformance descriptor for IFTSchemaIFTQueryPayloadType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26702DF24(uint64_t a1, uint64_t a2)
{
  v4 = sub_26702DFC0(&qword_2800F30A0, &protocol conformance descriptor for IFTSchemaIFTQueryPayloadType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26702DFC0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTQueryPayloadType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTQueryResults.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2AC0, 0x277D57D68);
  sub_266ECAF2C(&qword_2800F2AB8, &qword_2800F2AC0, 0x277D57D68, &protocol conformance descriptor for IFTSchemaIFTCandidate);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74616469646E6163, 0xEA00000000007365);
  return v5(v7, 0);
}

uint64_t sub_26702E1DC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2AC0, 0x277D57D68);
  sub_266ECAF2C(&qword_2800F2AB8, &qword_2800F2AC0, 0x277D57D68, &protocol conformance descriptor for IFTSchemaIFTCandidate);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74616469646E6163, 0xEA00000000007365);
  return v5(v7, 0);
}

uint64_t sub_26702E37C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702E3E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTQueryStep.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v20[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v20 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E4E8], v1);
  v22[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v11(v22, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D6574617473, 0xEB00000000644974);
  v12(v22, 0);
  sub_266ECB294(0, &qword_2800F2FC8, 0x277D57ED8);
  sub_266ECAF2C(&qword_2800F2FC0, &qword_2800F2FC8, 0x277D57ED8, &protocol conformance descriptor for IFTSchemaIFTParameterQuery);
  sub_26738122C();
  v10(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x73656972657571, 0xE700000000000000);
  v13(v22, 0);
  v14 = sub_2673811AC();
  v15 = sub_266ECB6CC(v21, 0x73656972657571, 0xE700000000000000);
  if (!(*(v9 + 48))(v16, 1, v8))
  {
    sub_266ECB128(&unk_2878875C0);
    sub_26738115C();
  }

  (v15)(v21, 0);
  v14(v22, 0);
  sub_266ECB294(0, &qword_2800F29B8, 0x277D57D18);
  sub_266ECAF2C(&qword_2800F29B0, &qword_2800F29B8, 0x277D57D18, &protocol conformance descriptor for IFTSchemaIFTActionParameterContext);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x747865746E6F63, 0xE700000000000000);
  v17(v22, 0);
  type metadata accessor for IFTSchemaIFTQueryPayloadType(0);
  sub_26702EB54();
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x5464616F6C796170, 0xEB00000000657079);
  return v18(v22, 0);
}

uint64_t sub_26702EA90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702EAF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26702EB54()
{
  result = qword_2800F3098;
  if (!qword_2800F3098)
  {
    type metadata accessor for IFTSchemaIFTQueryPayloadType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3098);
  }

  return result;
}

uint64_t static IFTSchemaIFTQueryStepResults.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v4, *MEMORY[0x277D3E4E8], v1);
  v14[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x8000000267446530);
  v11(v14, 0);
  sub_266ECB294(0, &qword_2800F30B0, 0x277D57F78);
  sub_266ECAF2C(&qword_2800F30A8, &qword_2800F30B0, 0x277D57F78, &protocol conformance descriptor for IFTSchemaIFTQueryResults);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x7365527972657571, 0xEC00000073746C75);
  return v12(v14, 0);
}

uint64_t sub_26702EFF8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702F05C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTQueryValue.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2CC0, 0x277D58128);
  sub_266ECAF2C(&qword_2800F2CC8, &qword_2800F2CC0, 0x277D58128, &protocol conformance descriptor for IFTSchemaIFTTypeIdentifier);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E65644965707974, 0xEE00726569666974);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F3090, 0x277D57F60);
  sub_266ECAF2C(&qword_2800F3088, &qword_2800F3090, 0x277D57F60, &protocol conformance descriptor for IFTSchemaIFTQuery);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x7972657571, 0xE500000000000000);
  return v7(v9, 0);
}

uint64_t sub_26702F3D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702F434(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRecoverableError.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F3030, 0x277D57F28);
  sub_266ECAF2C(&qword_2800F3028, &qword_2800F3030, 0x277D57F28, &protocol conformance descriptor for IFTSchemaIFTPlanGenerationError);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, 0x8000000267447420);
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

uint64_t sub_26702F84C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702F8B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRejectExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_26702FB30(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_26702FCD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26702FD38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRequest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v25 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *(v2 + 104);
  v21 = *MEMORY[0x277D3E4E8];
  v23 = v2 + 104;
  v24 = v1;
  v20 = v8;
  v8(v4);
  v27[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v22 = *(v10 + 56);
  v22(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v11(v27, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v26, 0x737473697865, 0xE600000000000000);
  if (!(*(v10 + 48))(v14, 1, v9))
  {
    sub_266ECB128(&unk_2878875E8);
    sub_26738115C();
  }

  (v13)(v26, 0);
  v12(v27, 0);
  sub_266ECB294(0, &qword_2800F30C8, 0x277D57FB0);
  sub_266ECAF2C(&qword_2800F30D0, &qword_2800F30C8, 0x277D57FB0, &protocol conformance descriptor for IFTSchemaIFTRequestContent);
  sub_26738120C();
  v15 = v22;
  v22(v7, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x746E65746E6F63, 0xE700000000000000);
  v16(v27, 0);
  v20(v4, v21, v24);
  v27[0] = 1;
  sub_26738114C();
  v15(v7, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0x7974656661537369, 0xEC00000065646F4DLL);
  v17(v27, 0);
  sub_266ECB294(0, &qword_2800F30D8, 0x277D57FE8);
  sub_266ECAF2C(&qword_2800F30E0, &qword_2800F30D8, 0x277D57FE8, &protocol conformance descriptor for IFTSchemaIFTRequestPrescribedPlan);
  sub_26738120C();
  v15(v7, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x6269726373657270, 0xEE006E616C506465);
  return v18(v27, 0);
}

uint64_t sub_267030350(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670303B4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRequestContent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F30E8, 0x277D57FD0);
  sub_266ECAF2C(&qword_2800F30F0, &qword_2800F30E8, 0x277D57FD0, &protocol conformance descriptor for IFTSchemaIFTRequestContentTextContent);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 1954047348, 0xE400000000000000);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F30F8, 0x277D57FC0);
  sub_266ECAF2C(&qword_2800F3100, &qword_2800F30F8, 0x277D57FC0, &protocol conformance descriptor for IFTSchemaIFTRequestContentSpeechContent);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x686365657073, 0xE600000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F3108, 0x277D580B0);
  sub_266ECAF2C(&qword_2800F3110, &qword_2800F3108, 0x277D580B0, &protocol conformance descriptor for IFTSchemaIFTSystemPromptResolution);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x80000002674474F0);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F3118, 0x277D57FC8);
  sub_266ECAF2C(&qword_2800F3120, &qword_2800F3118, 0x277D57FC8, &protocol conformance descriptor for IFTSchemaIFTRequestContentStopContent);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 1886352499, 0xE400000000000000);
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

uint64_t sub_267030A30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267030A94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRequestContentHeadGestureContent.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267030D80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267030DE4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267030E48()
{
  result = qword_2800F3128;
  if (!qword_2800F3128)
  {
    sub_267030EA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3128);
  }

  return result;
}

unint64_t sub_267030EA0()
{
  result = qword_2800F3130;
  if (!qword_2800F3130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3130);
  }

  return result;
}

uint64_t static IFTSchemaIFTRequestContentSpeechContent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3138, 0x277D58070);
  sub_266ECAF2C(&qword_2800F3140, &qword_2800F3138, 0x277D58070, &protocol conformance descriptor for IFTSchemaIFTSpeechRequestCandidate);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74616469646E6163, 0xEA00000000007365);
  return v5(v7, 0);
}

uint64_t sub_2670310C4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3138, 0x277D58070);
  sub_266ECAF2C(&qword_2800F3140, &qword_2800F3138, 0x277D58070, &protocol conformance descriptor for IFTSchemaIFTSpeechRequestCandidate);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x74616469646E6163, 0xEA00000000007365);
  return v5(v7, 0);
}

uint64_t sub_267031264(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670312C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRequestContentStopContent.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_2670315B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267031618(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26703167C()
{
  result = qword_2800F3120;
  if (!qword_2800F3120)
  {
    sub_2670316D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3120);
  }

  return result;
}

unint64_t sub_2670316D4()
{
  result = qword_2800F3118;
  if (!qword_2800F3118)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3118);
  }

  return result;
}

uint64_t static IFTSchemaIFTRequestContentTextContent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x64496B6E696CLL, 0xE600000000000000);
  return v7(v9, 0);
}

uint64_t sub_2670319EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267031A50(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRequestContentTextContentTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v6, 0x7265755174786574, 0xE900000000000079);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0x7265755174786574, 0xE900000000000079);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_287887610);
    sub_26738115C();
  }

  (v13)(v18, 0);
  return v12(v19, 0);
}

uint64_t sub_267031ED0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267031F34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRequestContentTouchContent.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267032220(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267032284(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670322E8()
{
  result = qword_2800F3148;
  if (!qword_2800F3148)
  {
    sub_267032340();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3148);
  }

  return result;
}

unint64_t sub_267032340()
{
  result = qword_2800F3150;
  if (!qword_2800F3150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3150);
  }

  return result;
}

uint64_t static IFTSchemaIFTRequestPrescribedPlan.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
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
  sub_266ECB294(0, &qword_2800F3158, 0x277D58010);
  sub_266ECAF2C(&qword_2800F3160, &qword_2800F3158, 0x277D58010, &protocol conformance descriptor for IFTSchemaIFTRequestPrescribedPlanSearchTool);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x6F54686372616573, 0xEA00000000006C6FLL);
  v8(v27, 0);
  sub_266ECB294(0, &qword_2800F3168, 0x277D58018);
  sub_266ECAF2C(&qword_2800F3170, &qword_2800F3168, 0x277D58018, &protocol conformance descriptor for IFTSchemaIFTRequestPrescribedPlanTextTool);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6C6F6F5474786574, 0xE800000000000000);
  v9(v27, 0);
  sub_266ECB294(0, &qword_2800F3178, 0x277D57FF0);
  sub_266ECAF2C(&qword_2800F3180, &qword_2800F3178, 0x277D57FF0, &protocol conformance descriptor for IFTSchemaIFTRequestPrescribedPlanConvertTool);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x54747265766E6F63, 0xEB000000006C6F6FLL);
  v10(v27, 0);
  sub_266ECB294(0, &qword_2800F3188, 0x277D57FF8);
  sub_266ECAF2C(&qword_2800F3190, &qword_2800F3188, 0x277D57FF8, &protocol conformance descriptor for IFTSchemaIFTRequestPrescribedPlanKnowledgeTool);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0x6764656C776F6E6BLL, 0xED00006C6F6F5465);
  v11(v27, 0);
  sub_266ECB294(0, &qword_2800F3198, 0x277D58008);
  sub_266ECAF2C(&qword_2800F31A0, &qword_2800F3198, 0x277D58008, &protocol conformance descriptor for IFTSchemaIFTRequestPrescribedPlanOpenTool);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x6C6F6F546E65706FLL, 0xE800000000000000);
  v12(v27, 0);
  sub_266ECB294(0, &qword_2800F31A8, 0x277D58000);
  sub_266ECAF2C(&qword_2800F31B0, &qword_2800F31A8, 0x277D58000, &protocol conformance descriptor for IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = v24;
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000025, 0x80000002674476F0);
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
  (*(v25 + 32))(v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, v13, v26);
  return v15(v27, 0);
}

uint64_t sub_267032B24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267032B88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRequestPrescribedPlanConvertTool.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x63696C7078457369, 0xEA00000000007469);
  return v8(v10, 0);
}

uint64_t sub_267032E7C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267032EE0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267032F44()
{
  result = qword_2800F3180;
  if (!qword_2800F3180)
  {
    sub_267032F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3180);
  }

  return result;
}

unint64_t sub_267032F9C()
{
  result = qword_2800F3178;
  if (!qword_2800F3178)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3178);
  }

  return result;
}

uint64_t static IFTSchemaIFTRequestPrescribedPlanKnowledgeTool.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x63696C7078457369, 0xEA00000000007469);
  return v8(v10, 0);
}

uint64_t sub_267033238(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703329C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267033300()
{
  result = qword_2800F3190;
  if (!qword_2800F3190)
  {
    sub_267033358();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3190);
  }

  return result;
}

unint64_t sub_267033358()
{
  result = qword_2800F3188;
  if (!qword_2800F3188)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3188);
  }

  return result;
}

uint64_t static IFTSchemaIFTRequestPrescribedPlanOpenSuccessValueFromLatestRequestTool.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v3, *MEMORY[0x277D3E510], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0x41746E656D656C65, 0xEE007865646E4974);
  return v8(v10, 0);
}

uint64_t sub_2670335FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267033660(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670336C4()
{
  result = qword_2800F31B0;
  if (!qword_2800F31B0)
  {
    sub_26703371C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F31B0);
  }

  return result;
}

unint64_t sub_26703371C()
{
  result = qword_2800F31A8;
  if (!qword_2800F31A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F31A8);
  }

  return result;
}

uint64_t static IFTSchemaIFTRequestPrescribedPlanOpenTool.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267446510);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E510], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x41746E656D656C65, 0xEE007865646E4974);
  return v10(v14, 0);
}

uint64_t sub_267033AAC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267033B10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTRequestPrescribedPlanSearchTool.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267033DFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267033E60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267033EC4()
{
  result = qword_2800F3160;
  if (!qword_2800F3160)
  {
    sub_267033F1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3160);
  }

  return result;
}

unint64_t sub_267033F1C()
{
  result = qword_2800F3158;
  if (!qword_2800F3158)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3158);
  }

  return result;
}

uint64_t static IFTSchemaIFTRequestPrescribedPlanTextTool.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x63696C7078457369, 0xEA00000000007469);
  return v8(v10, 0);
}

uint64_t sub_2670341B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703421C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267034280()
{
  result = qword_2800F3170;
  if (!qword_2800F3170)
  {
    sub_2670342D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3170);
  }

  return result;
}

unint64_t sub_2670342D8()
{
  result = qword_2800F3168;
  if (!qword_2800F3168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3168);
  }

  return result;
}

uint64_t static IFTSchemaIFTResolveToolExpression.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7364496C6F6F74, 0xE700000000000000);
  v9(v15, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v14, 0x7364496C6F6F74, 0xE700000000000000);
  if (!(*(v8 + 48))(v12, 1, v7))
  {
    sub_266ECB128(&unk_287887638);
    sub_26738115C();
  }

  (v11)(v14, 0);
  return v10(v15, 0);
}

uint64_t sub_267034624(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267034688(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670346EC()
{
  result = qword_2800F2E58;
  if (!qword_2800F2E58)
  {
    sub_267034744();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2E58);
  }

  return result;
}

unint64_t sub_267034744()
{
  result = qword_2800F2E50;
  if (!qword_2800F2E50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2E50);
  }

  return result;
}

uint64_t static IFTSchemaIFTResponseGenerationRequest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738122C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x8000000267447960);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F2C40, 0x277D58088);
  sub_266ECAF2C(&qword_2800F2C48, &qword_2800F2C40, 0x277D58088, &protocol conformance descriptor for IFTSchemaIFTStatementResult);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267447980);
  return v7(v9, 0);
}

uint64_t sub_267034A68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267034ACC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTResponseManifest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F31B8, 0x277D58038);
  sub_266ECAF2C(&qword_2800F31C0, &qword_2800F31B8, 0x277D58038, &protocol conformance descriptor for IFTSchemaIFTResponseParameter);
  sub_26738122C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6574656D61726170, 0xEA00000000007372);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E4E8], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x80000002674479D0);
  return v10(v14, 0);
}

uint64_t sub_267034EA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267034F0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTResponseParameter.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v17 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v16 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v18[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x74696E61666F7270, 0xEF7265746C694679);
  v13(v18, 0);
  v10(v5, v9, v17);
  v18[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x7269757165527369, 0xEA00000000006465);
  return v14(v18, 0);
}

uint64_t sub_2670352E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267035344(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_2670353A8()
{
  result = qword_2800F31C0;
  if (!qword_2800F31C0)
  {
    sub_267035400();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F31C0);
  }

  return result;
}

unint64_t sub_267035400()
{
  result = qword_2800F31B8;
  if (!qword_2800F31B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F31B8);
  }

  return result;
}

uint64_t static IFTSchemaIFTSayExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEC00000073644974);
  return v5(v7, 0);
}

uint64_t sub_267035628(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEC00000073644974);
  return v5(v7, 0);
}

uint64_t sub_2670357CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267035830(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTSearchExpression.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x656E4F6B636970, 0xE700000000000000);
  return v8(v10, 0);
}

uint64_t sub_267035B20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267035B84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267035BE8()
{
  result = qword_2800F2E38;
  if (!qword_2800F2E38)
  {
    sub_267035C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2E38);
  }

  return result;
}

unint64_t sub_267035C40()
{
  result = qword_2800F2E30;
  if (!qword_2800F2E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2E30);
  }

  return result;
}

uint64_t static IFTSchemaIFTSessionCoordinatorError.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x28223BE20](v2);
  v23 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v22 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  v7 = sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80, &protocol conformance descriptor for IFTSchemaIFTIntelligenceFlowError);
  v22[1] = a1;
  v22[2] = v7;
  sub_26738121C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x726568746FLL, 0xE500000000000000);
  v10(v26, 0);
  sub_26738121C();
  v9(v6, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000017, 0x8000000267447AC0);
  v11(v26, 0);
  sub_26738121C();
  v9(v6, 0, 1, v8);
  v12 = v23;
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0xD00000000000001ALL, 0x8000000267447AE0);
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
  return v14(v26, 0);
}

uint64_t sub_267036118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703617C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTSessionError.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F26E8, 0x277D57E80);
  sub_266ECAF2C(&qword_2800F26F0, &qword_2800F26E8, 0x277D57E80, &protocol conformance descriptor for IFTSchemaIFTIntelligenceFlowError);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x726568746FLL, 0xE500000000000000);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F31E0, 0x277D58050);
  sub_266ECAF2C(&qword_2800F31D8, &qword_2800F31E0, 0x277D58050, &protocol conformance descriptor for IFTSchemaIFTSessionCoordinatorError);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, 0x8000000267447B50);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F3040, 0x277D57F38);
  sub_266ECAF2C(&qword_2800F3038, &qword_2800F3040, 0x277D57F38, &protocol conformance descriptor for IFTSchemaIFTPlannerError);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x4572656E6E616C70, 0xEC000000726F7272);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F2DA8, 0x277D57E20);
  sub_266ECAF2C(&qword_2800F2DA0, &qword_2800F2DA8, 0x277D57E20, &protocol conformance descriptor for IFTSchemaIFTExecutorError);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = v22;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x726F747563657865, 0xED0000726F727245);
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

uint64_t sub_267036818(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703687C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTSessionStart.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000019, 0x8000000267447BC0);
  return v8(v10, 0);
}

uint64_t sub_267036B70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267036BD4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267036C38()
{
  result = qword_2800F2B38;
  if (!qword_2800F2B38)
  {
    sub_267036C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2B38);
  }

  return result;
}

unint64_t sub_267036C90()
{
  result = qword_2800F2B30;
  if (!qword_2800F2B30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2B30);
  }

  return result;
}

uint64_t static IFTSchemaIFTSkipStatement.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_267036EB8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_26703705C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670370C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTSortOrder.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000014, 0x8000000267447C40, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267447C60, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x8000000267447C80, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267037378(uint64_t a1)
{
  v2 = sub_26703747C(&qword_2800F31E8, &protocol conformance descriptor for IFTSchemaIFTSortOrder);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670373E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26703747C(&qword_2800F31E8, &protocol conformance descriptor for IFTSchemaIFTSortOrder);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26703747C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTSortOrder(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTSpeechRequestCandidate.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_26703769C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_267037840(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670378A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTStatementId.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x7865646E69, 0xE500000000000000);
  return v8(v10, 0);
}

uint64_t sub_267037B90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267037BF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267037C58()
{
  result = qword_2800F28C8;
  if (!qword_2800F28C8)
  {
    sub_267037CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F28C8);
  }

  return result;
}

unint64_t sub_267037CB0()
{
  result = qword_2800F28C0;
  if (!qword_2800F28C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F28C0);
  }

  return result;
}

uint64_t static IFTSchemaIFTStatementOutcome.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738118C();
  v30 = *(v1 - 8);
  v31 = v1;
  MEMORY[0x28223BE20](v1);
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v28 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2A48, 0x277D57D38);
  sub_266ECAF2C(&qword_2800F2A40, &qword_2800F2A48, 0x277D57D38, &protocol conformance descriptor for IFTSchemaIFTActionSuccess);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x73736563637573, 0xE700000000000000);
  v8(v32, 0);
  sub_266ECB294(0, &qword_2800F2958, 0x277D57CE8);
  sub_266ECAF2C(&qword_2800F2950, &qword_2800F2958, 0x277D57CE8, &protocol conformance descriptor for IFTSchemaIFTActionConfirmation);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  v28 = 0xD000000000000012;
  sub_266EC637C(v5, 0xD000000000000012, 0x8000000267447D40);
  v9(v32, 0);
  sub_266ECB294(0, &qword_2800F2F98, 0x277D57EC8);
  sub_266ECAF2C(&qword_2800F2F90, &qword_2800F2F98, 0x277D57EC8, &protocol conformance descriptor for IFTSchemaIFTParameterNeedsValue);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x8000000267447D60);
  v10(v32, 0);
  sub_266ECB294(0, &qword_2800F2F78, 0x277D57EB8);
  sub_266ECAF2C(&qword_2800F2F70, &qword_2800F2F78, 0x277D57EB8, &protocol conformance descriptor for IFTSchemaIFTParameterConfirmation);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000015, 0x8000000267447D80);
  v11(v32, 0);
  sub_266ECB294(0, &qword_2800F2F88, 0x277D57EC0);
  sub_266ECAF2C(&qword_2800F2F80, &qword_2800F2F88, 0x277D57EC0, &protocol conformance descriptor for IFTSchemaIFTParameterDisambiguation);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, 0x8000000267447DA0);
  v12(v32, 0);
  sub_266ECB294(0, &qword_2800F2FB0, 0x277D57ED0);
  sub_266ECAF2C(&qword_2800F2FA8, &qword_2800F2FB0, 0x277D57ED0, &protocol conformance descriptor for IFTSchemaIFTParameterNotAllowed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x8000000267447DC0);
  v13(v32, 0);
  sub_266ECB294(0, &qword_2800F2F68, 0x277D57EB0);
  sub_266ECAF2C(&qword_2800F2F60, &qword_2800F2F68, 0x277D57EB0, &protocol conformance descriptor for IFTSchemaIFTParameterCandidatesNotFound);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v14 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001CLL, 0x8000000267447DE0);
  v14(v32, 0);
  sub_266ECB294(0, &qword_2800F29F8, 0x277D57D28);
  sub_266ECAF2C(&qword_2800F29F0, &qword_2800F29F8, 0x277D57D28, &protocol conformance descriptor for IFTSchemaIFTActionRequirement);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, 0x8000000267447E00);
  v15(v32, 0);
  sub_266ECB294(0, &qword_2800F31F0, 0x277D58110);
  sub_266ECAF2C(&qword_2800F31F8, &qword_2800F31F0, 0x277D58110, &protocol conformance descriptor for IFTSchemaIFTToolDisambiguation);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v16 = sub_2673811AC();
  sub_266EC637C(v5, v28, 0x800000026742E6C0);
  v16(v32, 0);
  sub_266ECB294(0, &qword_2800F2998, 0x277D57D00);
  sub_266ECAF2C(&qword_2800F2990, &qword_2800F2998, 0x277D57D00, &protocol conformance descriptor for IFTSchemaIFTActionFailure);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v17 = sub_2673811AC();
  sub_266EC637C(v5, 0x6572756C696166, 0xE700000000000000);
  v17(v32, 0);
  sub_266ECB294(0, &qword_2800F3200, 0x277D58160);
  sub_266ECAF2C(&qword_2800F3208, &qword_2800F3200, 0x277D58160, &protocol conformance descriptor for IFTSchemaIFTValueDisambiguation);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v18 = v29;
  v19 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000013, 0x8000000267447E20);
  v19(v32, 0);
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
  (*(v30 + 32))(v23 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, v18, v31);
  return v20(v32, 0);
}

uint64_t sub_2670388C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703892C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTStatementResult.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v34 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v5 + 104);
  v33 = v5 + 104;
  v35 = v12;
  v30 = v7;
  v12(v7, v11, v4);
  v38[0] = 1;
  sub_26738114C();
  v13 = sub_26738116C();
  v31 = *(v13 - 8);
  v15 = v31 + 56;
  v14 = *(v31 + 56);
  v14(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0x737473697865, 0xE600000000000000);
  v16(v38, 0);
  v32 = "pretedStatementResult";
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  v17 = sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  v36 = a1;
  sub_26738120C();
  v14(v10, 0, 1, v13);
  v18 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, v32 | 0x8000000000000000);
  v18(v38, 0);
  v32 = v17;
  sub_26738120C();
  v14(v10, 0, 1, v13);
  v19 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x8000000267446530);
  v19(v38, 0);
  sub_266ECB294(0, &qword_2800F3210, 0x277D58090);
  sub_266ECAF2C(&qword_2800F3218, &qword_2800F3210, 0x277D58090, &protocol conformance descriptor for IFTSchemaIFTStatementResultPayload);
  sub_26738120C();
  v14(v10, 0, 1, v13);
  v20 = sub_2673811AC();
  sub_266EC637C(v10, 0x64616F6C796170, 0xE700000000000000);
  v20(v38, 0);
  v35(v30, *MEMORY[0x277D3E530], v34);
  v38[0] = 1;
  sub_26738114C();
  v34 = v15;
  v35 = v14;
  v14(v10, 0, 1, v13);
  v21 = sub_2673811AC();
  sub_266EC637C(v10, 0x64496C6F6F74, 0xE600000000000000);
  v21(v38, 0);
  v33 = a2;
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v37, 0x64496C6F6F74, 0xE600000000000000);
  if (!(*(v31 + 48))(v24, 1, v13))
  {
    sub_266ECB128(&unk_287887668);
    sub_26738115C();
  }

  (v23)(v37, 0);
  v22(v38, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v25 = v35;
  (v35)(v10, 0, 1, v13);
  v26 = sub_2673811AC();
  sub_266EC637C(v10, 0x76456E6F69746361, 0xED00006449746E65);
  v26(v38, 0);
  sub_26738120C();
  v25(v10, 0, 1, v13);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000015, 0x8000000267446550);
  return v27(v38, 0);
}

uint64_t sub_267039158(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670391BC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTStatementResultPayload.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F2F20, 0x277D58080);
  sub_266ECAF2C(&qword_2800F2F28, &qword_2800F2F20, 0x277D58080, &protocol conformance descriptor for IFTSchemaIFTStatementOutcome);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x656D6F6374756FLL, 0xE700000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F31D0, 0x277D58030);
  sub_266ECAF2C(&qword_2800F31C8, &qword_2800F31D0, 0x277D58030, &protocol conformance descriptor for IFTSchemaIFTResponseManifest);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x65736E6F70736572, 0xE800000000000000);
  return v7(v9, 0);
}

uint64_t sub_267039528(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703958C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTStructuredSearchExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15[-v6];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E4E8], v1);
  v15[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0x646E617078457369, 0xEA00000000006465);
  v10(v15, 0);
  sub_266ECB294(0, &qword_2800F3220, 0x277D580A8);
  sub_266ECAF2C(&qword_2800F3228, &qword_2800F3220, 0x277D580A8, &protocol conformance descriptor for IFTSchemaIFTStructuredSearchProperty);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x69747265706F7270, 0xEA00000000007365);
  v11(v15, 0);
  sub_266ECB294(0, &qword_2800F3230, 0x277D58130);
  sub_266ECAF2C(&qword_2800F3238, &qword_2800F3230, 0x277D58130, &protocol conformance descriptor for IFTSchemaIFTTypeInstance);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0x79546E7275746572, 0xEA00000000006570);
  v12(v15, 0);
  sub_266ECB294(0, &qword_2800F3240, 0x277D580A0);
  sub_266ECAF2C(&qword_2800F3248, &qword_2800F3240, 0x277D580A0, &protocol conformance descriptor for IFTSchemaIFTStructuredSearchExpressionParameters);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6574656D61726170, 0xEA00000000007372);
  return v13(v15, 0);
}

uint64_t sub_267039B18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267039B7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTStructuredSearchExpressionParameters.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v7, 0xD00000000000001DLL, 0x8000000267447F50);
  v10(v13, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D6574617473, 0xEB00000000644974);
  return v11(v13, 0);
}

uint64_t sub_267039F5C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267039FC0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTStructuredSearchProperty.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
    sub_266ECB128(&unk_287887698);
    sub_26738115C();
  }

  (v13)(v18, 0);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000022, 0x8000000267447FB0);
  return v15(v19, 0);
}

uint64_t sub_26703A43C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703A4A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTSystemPromptResolution.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v20 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E656D6574617473, 0xEB00000000644974);
  v10(v22, 0);
  sub_266ECB294(0, &qword_2800F3250, 0x277D580D0);
  sub_266ECAF2C(&qword_2800F3258, &qword_2800F3250, 0x277D580D0, &protocol conformance descriptor for IFTSchemaIFTSystemPromptResolutionUserAction);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x6974634172657375, 0xEA00000000006E6FLL);
  v11(v22, 0);
  type metadata accessor for IFTSchemaIFTSystemPromptResolutionInputModality(0);
  sub_26703AC58();
  v20[1] = a1;
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x646F4D7475706E69, 0xED00007974696C61);
  v12(v22, 0);
  v20[0] = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v21, 0x646F4D7475706E69, 0xED00007974696C61);
  if (!(*(v8 + 48))(v15, 1, v7))
  {
    sub_266ECB128(&unk_2878876C0);
    sub_26738115C();
  }

  (v14)(v21, 0);
  v13(v22, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0x76456E6F69746361, 0xED00006449746E65);
  v16(v22, 0);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000015, 0x8000000267448020);
  v17(v22, 0);
  sub_266ECB294(0, &qword_2800F3268, 0x277D580C0);
  sub_266ECAF2C(&qword_2800F3270, &qword_2800F3268, 0x277D580C0, &protocol conformance descriptor for IFTSchemaIFTSystemPromptResolutionInput);
  sub_26738120C();
  v9(v6, 0, 1, v7);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x7475706E69, 0xE500000000000000);
  return v18(v22, 0);
}

uint64_t sub_26703AB94(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703ABF8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26703AC58()
{
  result = qword_2800F3260;
  if (!qword_2800F3260)
  {
    type metadata accessor for IFTSchemaIFTSystemPromptResolutionInputModality(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3260);
  }

  return result;
}

uint64_t static IFTSchemaIFTSystemPromptResolutionActionCancellation.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26703AF3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703AFA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26703B004()
{
  result = qword_2800F3278;
  if (!qword_2800F3278)
  {
    sub_26703B05C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3278);
  }

  return result;
}

unint64_t sub_26703B05C()
{
  result = qword_2800F3280;
  if (!qword_2800F3280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3280);
  }

  return result;
}

uint64_t static IFTSchemaIFTSystemPromptResolutionInput.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v1 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3150, 0x277D57FE0);
  sub_266ECAF2C(&qword_2800F3148, &qword_2800F3150, 0x277D57FE0, &protocol conformance descriptor for IFTSchemaIFTRequestContentTouchContent);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x6863756F74, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F3130, 0x277D57FB8);
  sub_266ECAF2C(&qword_2800F3128, &qword_2800F3130, 0x277D57FB8, &protocol conformance descriptor for IFTSchemaIFTRequestContentHeadGestureContent);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x7473654764616568, 0xEB00000000657275);
  v9(v23, 0);
  sub_266ECB294(0, &qword_2800F30E8, 0x277D57FD0);
  sub_266ECAF2C(&qword_2800F30F0, &qword_2800F30E8, 0x277D57FD0, &protocol conformance descriptor for IFTSchemaIFTRequestContentTextContent);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 1954047348, 0xE400000000000000);
  v10(v23, 0);
  sub_266ECB294(0, &qword_2800F30F8, 0x277D57FC0);
  sub_266ECAF2C(&qword_2800F3100, &qword_2800F30F8, 0x277D57FC0, &protocol conformance descriptor for IFTSchemaIFTRequestContentSpeechContent);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = v21;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x686365657073, 0xE600000000000000);
  v12(v23, 0);
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
  (*(v1 + 32))(v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19, v11, v22);
  return v13(v23, 0);
}

uint64_t sub_26703B688(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703B6EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTSystemPromptResolutionInputModality.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000002ELL, 0x8000000267448140, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002CLL, 0x8000000267448170, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000033, 0x80000002674481A0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26703B9A4(uint64_t a1)
{
  v2 = sub_26703BAA8(&qword_2800F3288, &protocol conformance descriptor for IFTSchemaIFTSystemPromptResolutionInputModality);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26703BA0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26703BAA8(&qword_2800F3288, &protocol conformance descriptor for IFTSchemaIFTSystemPromptResolutionInputModality);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26703BAA8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTSystemPromptResolutionInputModality(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTSystemPromptResolutionRequirementResolution.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000016, 0x8000000267448230);
  return v8(v10, 0);
}

uint64_t sub_26703BD3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703BDA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26703BE04()
{
  result = qword_2800F3290;
  if (!qword_2800F3290)
  {
    sub_26703BE5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3290);
  }

  return result;
}

unint64_t sub_26703BE5C()
{
  result = qword_2800F3298;
  if (!qword_2800F3298)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3298);
  }

  return result;
}

uint64_t static IFTSchemaIFTSystemPromptResolutionUserAction.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a1;
  v3 = sub_26738118C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26738113C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v34 = a2;
  sub_26738119C();
  v37 = "mPromptResolutionUserAction";
  v12 = *MEMORY[0x277D3E4E8];
  v38 = *(v6 + 104);
  v36 = v5;
  v38(v8, v12, v5);
  v44[0] = 0;
  sub_26738114C();
  v13 = sub_26738116C();
  v43 = *(*(v13 - 8) + 56);
  v35 = v13;
  v43(v11, 0, 1, v13);
  v14 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000011, v37 | 0x8000000000000000);
  v14(v44, 0);
  v15 = v5;
  v16 = v38;
  v38(v8, v12, v15);
  v44[0] = 0;
  sub_26738114C();
  v17 = v13;
  v18 = v43;
  v43(v11, 0, 1, v17);
  v19 = sub_2673811AC();
  sub_266EC637C(v11, 0xD000000000000014, 0x80000002674482B0);
  v19(v44, 0);
  v16(v8, *MEMORY[0x277D3E510], v36);
  v44[0] = 0;
  sub_26738114C();
  v20 = v35;
  v18(v11, 0, 1, v35);
  v21 = sub_2673811AC();
  sub_266EC637C(v11, 0xD00000000000001BLL, 0x80000002674482D0);
  v21(v44, 0);
  sub_266ECB294(0, &qword_2800F3298, 0x277D580C8);
  sub_266ECAF2C(&qword_2800F3290, &qword_2800F3298, 0x277D580C8, &protocol conformance descriptor for IFTSchemaIFTSystemPromptResolutionRequirementResolution);
  sub_26738121C();
  v22 = v43;
  v43(v11, 0, 1, v20);
  v23 = sub_2673811AC();
  v24 = v39;
  sub_266EC637C(v11, 0xD000000000000014, 0x80000002674482F0);
  v23(v44, 0);
  sub_266ECB294(0, &qword_2800F3280, 0x277D580B8);
  sub_266ECAF2C(&qword_2800F3278, &qword_2800F3280, 0x277D580B8, &protocol conformance descriptor for IFTSchemaIFTSystemPromptResolutionActionCancellation);
  sub_26738121C();
  v22(v11, 0, 1, v20);
  v25 = sub_2673811AC();
  sub_266EC637C(v11, 0x61436E6F69746361, 0xEE0064656C65636ELL);
  v25(v44, 0);
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
  (*(v41 + 32))(v29 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v32, v24, v42);
  return v26(v44, 0);
}

uint64_t sub_26703C5E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703C648(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTSystemRequirement.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a1;
  v58 = a2;
  v2 = sub_26738118C();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  v51 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26738113C();
  v57 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v44 - v9;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v56 = "iri.ift.IFTSystemRequirement";
  v11 = *MEMORY[0x277D3E4E8];
  v12 = *(v5 + 104);
  v12(v7, v11, v4);
  v60[0] = 0;
  sub_26738114C();
  v13 = sub_26738116C();
  v47 = *(v13 - 8);
  v15 = v47 + 56;
  v14 = *(v47 + 56);
  (v14)(v10, 0, 1, v13);
  v16 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000014, v56 | 0x8000000000000000);
  v16(v60, 0);
  v45 = "deviceUnlockRequired";
  v54 = v11;
  v48 = v12;
  v49 = v5 + 104;
  v12(v7, v11, v57);
  v60[0] = 0;
  v17 = v7;
  sub_26738114C();
  v55 = v15;
  v56 = v14;
  (v14)(v10, 0, 1, v13);
  v18 = sub_2673811AC();
  v19 = v45;
  sub_266EC637C(v10, 0xD000000000000016, v45 | 0x8000000000000000);
  v18(v60, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v59, 0xD000000000000016, v19 | 0x8000000000000000);
  v22 = v13;
  if (!(*(v47 + 48))(v23, 1, v13))
  {
    sub_266ECB128(&unk_2878876E8);
    sub_26738115C();
  }

  (v21)(v59, 0);
  v20(v60, 0);
  v24 = v54;
  v25 = v57;
  v26 = v48;
  v48(v17, v54, v57);
  v60[0] = 0;
  sub_26738114C();
  v46 = v22;
  (v56)(v10, 0, 1, v22);
  v27 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000011, 0x80000002674483B0);
  v27(v60, 0);
  v26(v17, v24, v25);
  v60[0] = 0;
  sub_26738114C();
  v28 = v56;
  (v56)(v10, 0, 1, v22);
  v29 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000013, 0x80000002674483D0);
  v29(v60, 0);
  v26(v17, v54, v57);
  v60[0] = 0;
  sub_26738114C();
  v30 = v46;
  v28(v10, 0, 1, v46);
  v31 = sub_2673811AC();
  sub_266EC637C(v10, 0xD000000000000018, 0x80000002674483F0);
  v31(v60, 0);
  sub_266ECB294(0, &qword_2800F32A0, 0x277D580E8);
  sub_266ECAF2C(&qword_2800F32A8, &qword_2800F32A0, 0x277D580E8, &protocol conformance descriptor for IFTSchemaIFTSystemRequirementProtectedAppRequest);
  sub_26738121C();
  v28(v10, 0, 1, v30);
  v32 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001CLL, 0x8000000267448410);
  v32(v60, 0);
  sub_266ECB294(0, &qword_2800F32B0, 0x277D580E0);
  sub_266ECAF2C(&qword_2800F32B8, &qword_2800F32B0, 0x277D580E0, &protocol conformance descriptor for IFTSchemaIFTSystemRequirementAuthenticationRequest);
  sub_26738121C();
  v28(v10, 0, 1, v30);
  v33 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001ALL, 0x8000000267448430);
  v33(v60, 0);
  sub_266ECB294(0, &qword_2800F32C0, 0x277D580F0);
  sub_266ECAF2C(&qword_2800F32C8, &qword_2800F32C0, 0x277D580F0, &protocol conformance descriptor for IFTSchemaIFTSystemRequirementUserLocationForSystemRequest);
  sub_26738121C();
  v28(v10, 0, 1, v30);
  v34 = sub_2673811AC();
  sub_266EC637C(v10, 0xD00000000000001DLL, 0x8000000267448450);
  v34(v60, 0);
  v35 = v51;
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
  (*(v52 + 32))(v39 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v42, v35, v53);
  return v36(v60, 0);
}

uint64_t sub_26703D124(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703D188(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTSystemRequirementAuthenticationRequest.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for IFTSchemaIFTSystemRequirementAuthenticationRequestAuthenticationLevel(0);
  sub_26703D51C(&qword_2800F32D0, type metadata accessor for IFTSchemaIFTSystemRequirementAuthenticationRequestAuthenticationLevel, &protocol conformance descriptor for IFTSchemaIFTSystemRequirementAuthenticationRequestAuthenticationLevel);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x80000002674484E0);
  return v5(v7, 0);
}

uint64_t sub_26703D410(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703D474(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26703D51C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26703D564()
{
  result = qword_2800F32B0;
  if (!qword_2800F32B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F32B0);
  }

  return result;
}

uint64_t static IFTSchemaIFTSystemRequirementAuthenticationRequestAuthenticationLevel.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000044, 0x8000000267448560, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000061, 0x80000002674485B0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000062, 0x8000000267448620, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_26703D7C4(uint64_t a1)
{
  v2 = sub_26703D8C8(&qword_2800F32D8, &protocol conformance descriptor for IFTSchemaIFTSystemRequirementAuthenticationRequestAuthenticationLevel);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26703D82C(uint64_t a1, uint64_t a2)
{
  v4 = sub_26703D8C8(&qword_2800F32D8, &protocol conformance descriptor for IFTSchemaIFTSystemRequirementAuthenticationRequestAuthenticationLevel);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_26703D8C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTSystemRequirementAuthenticationRequestAuthenticationLevel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTSystemRequirementProtectedAppRequest.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x6449656C646E7562, 0xE800000000000000);
  v9(v15, 0);
  v10 = sub_2673811AC();
  v11 = sub_266ECB6CC(v14, 0x6449656C646E7562, 0xE800000000000000);
  if (!(*(v8 + 48))(v12, 1, v7))
  {
    sub_266ECB128(&unk_287887710);
    sub_26738115C();
  }

  (v11)(v14, 0);
  return v10(v15, 0);
}

uint64_t sub_26703DC0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703DC70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26703DCD4()
{
  result = qword_2800F32A8;
  if (!qword_2800F32A8)
  {
    sub_26703DD2C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F32A8);
  }

  return result;
}

unint64_t sub_26703DD2C()
{
  result = qword_2800F32A0;
  if (!qword_2800F32A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F32A0);
  }

  return result;
}

uint64_t static IFTSchemaIFTSystemRequirementUserLocationForSystemRequest.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v15 = a1;
  sub_26738119C();
  v16 = "LocationForSystemRequest";
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E4E8], v2);
  v17[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v16 | 0x8000000000000000);
  v12(v17, 0);
  v9(v5, *MEMORY[0x277D3E510], v2);
  v17[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x8000000267448740);
  return v13(v17, 0);
}

uint64_t sub_26703E0AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703E110(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26703E174()
{
  result = qword_2800F32C8;
  if (!qword_2800F32C8)
  {
    sub_26703E1CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F32C8);
  }

  return result;
}

unint64_t sub_26703E1CC()
{
  result = qword_2800F32C0;
  if (!qword_2800F32C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F32C0);
  }

  return result;
}

uint64_t static IFTSchemaIFTSystemResponse.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738113C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v35 = v2;
  v32 = v10;
  v33 = v3 + 104;
  v10(v5, v9, v2);
  v40[0] = 1;
  v34 = v5;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x737473697865, 0xE600000000000000);
  v14(v40, 0);
  sub_266ECB294(0, &qword_2800F2F20, 0x277D58080);
  sub_266ECAF2C(&qword_2800F2F28, &qword_2800F2F20, 0x277D58080, &protocol conformance descriptor for IFTSchemaIFTStatementOutcome);
  v36 = a1;
  sub_26738120C();
  v37 = v13;
  v38 = v12 + 56;
  v13(v8, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x656D6F6374756FLL, 0xE700000000000000);
  v15(v40, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v39, 0x656D6F6374756FLL, 0xE700000000000000);
  v18 = *(v12 + 48);
  if (!v18(v19, 1, v11))
  {
    sub_266ECB128(&unk_287887740);
    sub_26738115C();
  }

  (v17)(v39, 0);
  v16(v40, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v37(v8, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E656D6574617473, 0xEB00000000644974);
  v20(v40, 0);
  v21 = sub_2673811AC();
  v22 = sub_266ECB6CC(v39, 0x6E656D6574617473, 0xEB00000000644974);
  v24 = v18;
  if (!v18(v23, 1, v11))
  {
    sub_266ECB128(&unk_287887768);
    sub_26738115C();
  }

  (v22)(v39, 0);
  v21(v40, 0);
  v32(v34, *MEMORY[0x277D3E530], v35);
  v40[0] = 1;
  sub_26738114C();
  v37(v8, 0, 1, v11);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0x64496C6F6F74, 0xE600000000000000);
  v25(v40, 0);
  v26 = sub_2673811AC();
  v27 = sub_266ECB6CC(v39, 0x64496C6F6F74, 0xE600000000000000);
  if (!v24(v28, 1, v11))
  {
    sub_266ECB128(&unk_287887790);
    sub_26738115C();
  }

  (v27)(v39, 0);
  v26(v40, 0);
  sub_266ECB294(0, &qword_2800F2F38, 0x277D57E88);
  sub_266ECAF2C(&qword_2800F2F30, &qword_2800F2F38, 0x277D57E88, &protocol conformance descriptor for IFTSchemaIFTInterpretedStatementResult);
  sub_26738122C();
  v37(v8, 0, 1, v11);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267448790);
  return v29(v40, 0);
}

uint64_t sub_26703E988(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703E9EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTTerminate.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_26703ECD8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703ED3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26703EDA0()
{
  result = qword_2800F2B28;
  if (!qword_2800F2B28)
  {
    sub_26703EDF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2B28);
  }

  return result;
}

unint64_t sub_26703EDF8()
{
  result = qword_2800F2B20;
  if (!qword_2800F2B20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2B20);
  }

  return result;
}

uint64_t static IFTSchemaIFTToolDefinition.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v2 + 104))(v4, *MEMORY[0x277D3E530], v1);
  v19[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496C6F6F74, 0xE600000000000000);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0x64496C6F6F74, 0xE600000000000000);
  if (!(*(v9 + 48))(v14, 1, v8))
  {
    sub_266ECB128(&unk_2878877B8);
    sub_26738115C();
  }

  (v13)(v18, 0);
  v12(v19, 0);
  type metadata accessor for IFTSchemaIFTToolType(0);
  sub_26703F314(&qword_2800F32E0, type metadata accessor for IFTSchemaIFTToolType, &protocol conformance descriptor for IFTSchemaIFTToolType);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x657079546C6F6F74, 0xE800000000000000);
  return v15(v19, 0);
}

uint64_t sub_26703F208(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703F26C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26703F314(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26703F35C()
{
  result = qword_2800F32F0;
  if (!qword_2800F32F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F32F0);
  }

  return result;
}

uint64_t static IFTSchemaIFTToolDisambiguation.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a1;
  v3 = sub_26738113C();
  v23 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v22 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v22[1] = a2;
  sub_26738119C();
  v10 = *(v4 + 104);
  v10(v6, *MEMORY[0x277D3E4E8], v3);
  v26[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 56);
  v13(v9, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x737473697865, 0xE600000000000000);
  v14(v26, 0);
  v10(v6, *MEMORY[0x277D3E530], v23);
  v26[0] = 1;
  sub_26738114C();
  v23 = v12 + 56;
  v13(v9, 0, 1, v11);
  v15 = v13;
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x8000000267448840);
  v16(v26, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v25, 0xD000000000000013, 0x8000000267448840);
  if (!(*(v12 + 48))(v19, 1, v11))
  {
    sub_266ECB128(&unk_2878877E8);
    sub_26738115C();
  }

  (v18)(v25, 0);
  v17(v26, 0);
  sub_266ECB294(0, &qword_2800F32F0, 0x277D58108);
  sub_266ECAF2C(&qword_2800F32E8, &qword_2800F32F0, 0x277D58108, &protocol conformance descriptor for IFTSchemaIFTToolDefinition);
  sub_26738122C();
  v15(v9, 0, 1, v11);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x736C6F6F74, 0xE500000000000000);
  return v20(v26, 0);
}

uint64_t sub_26703F84C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703F8B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTToolResolution.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v27 = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = *MEMORY[0x277D3E4E8];
  v25 = *(v2 + 104);
  v26 = v1;
  v25(v4, v8, v1);
  v31[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v28 = *(v10 + 56);
  v29 = v10 + 56;
  v28(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x737473697865, 0xE600000000000000);
  v11(v31, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v30, 0x737473697865, 0xE600000000000000);
  v14 = *(v10 + 48);
  if (!v14(v15, 1, v9))
  {
    sub_266ECB128(&unk_287887818);
    sub_26738115C();
  }

  (v13)(v30, 0);
  v12(v31, 0);
  v25(v4, *MEMORY[0x277D3E530], v26);
  v31[0] = 1;
  sub_26738114C();
  v28(v7, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v7, 0x64496C6F6F74, 0xE600000000000000);
  v16(v31, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v30, 0x64496C6F6F74, 0xE600000000000000);
  if (!v14(v19, 1, v9))
  {
    sub_266ECB128(&unk_287887840);
    sub_26738115C();
  }

  (v18)(v30, 0);
  v17(v31, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v20 = v28;
  v28(v7, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D6574617473, 0xEB00000000644974);
  v21(v31, 0);
  sub_26738120C();
  v20(v7, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000018, 0x8000000267446530);
  return v22(v31, 0);
}

uint64_t sub_26703FF10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26703FF74(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTToolRetrievalResponse.makeTypeManifestAndEnsureFields(in:)()
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
  v8(v10, 0);
  sub_266ECB128(&unk_287887870);
  return sub_2673811CC();
}

uint64_t sub_267040278(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670402DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267040340()
{
  result = qword_2800F2B88;
  if (!qword_2800F2B88)
  {
    sub_267040398();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F2B88);
  }

  return result;
}

unint64_t sub_267040398()
{
  result = qword_2800F2B80;
  if (!qword_2800F2B80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F2B80);
  }

  return result;
}

uint64_t static IFTSchemaIFTToolType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000013, 0x8000000267448900, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x8000000267448920, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000017, 0x8000000267448940, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000012, 0x8000000267448960, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_26704066C(uint64_t a1)
{
  v2 = sub_267040770(&qword_2800F32F8, &protocol conformance descriptor for IFTSchemaIFTToolType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_2670406D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_267040770(&qword_2800F32F8, &protocol conformance descriptor for IFTSchemaIFTToolType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267040770(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IFTSchemaIFTToolType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static IFTSchemaIFTTypedValue.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F2CD0, 0x277D58158);
  sub_266ECAF2C(&qword_2800F2CD8, &qword_2800F2CD0, 0x277D58158, &protocol conformance descriptor for IFTSchemaIFTValue);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x65756C6176, 0xE500000000000000);
  v8(v21, 0);
  sub_266ECB294(0, &qword_2800F2CE8, 0x277D57D90);
  sub_266ECAF2C(&qword_2800F2CE0, &qword_2800F2CE8, 0x277D57D90, &protocol conformance descriptor for IFTSchemaIFTCollectionValue);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v19;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x697463656C6C6F63, 0xEA00000000006E6FLL);
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

uint64_t sub_267040BFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267040C60(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTTypeIdentifier.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F3060, 0x277D57F48);
  sub_266ECAF2C(&qword_2800F3058, &qword_2800F3060, 0x277D57F48, &protocol conformance descriptor for IFTSchemaIFTPrimitive);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x766974696D697270, 0xE900000000000065);
  v8(v21, 0);
  sub_266ECB294(0, &qword_2800F2D28, 0x277D57DD0);
  sub_266ECAF2C(&qword_2800F2D20, &qword_2800F2D28, 0x277D57DD0, &protocol conformance descriptor for IFTSchemaIFTCustom);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v19;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6D6F74737563, 0xE600000000000000);
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

uint64_t sub_26704114C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670411B0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTTypeInstance.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F2CC0, 0x277D58128);
  sub_266ECAF2C(&qword_2800F2CC8, &qword_2800F2CC0, 0x277D58128, &protocol conformance descriptor for IFTSchemaIFTTypeIdentifier);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x6E65644965707974, 0xEE00726569666974);
  v8(v21, 0);
  sub_266ECB294(0, &qword_2800F2CE8, 0x277D57D90);
  sub_266ECAF2C(&qword_2800F2CE0, &qword_2800F2CE8, 0x277D57D90, &protocol conformance descriptor for IFTSchemaIFTCollectionValue);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = v19;
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x697463656C6C6F63, 0xEA00000000006E6FLL);
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

uint64_t sub_2670416A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26704170C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTUndoExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_26704198C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_267041B30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267041B94(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTUpdateParameter.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a1;
  v3 = sub_26738113C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v4 + 104);
  v29 = v4 + 104;
  v30 = v3;
  v26 = v11;
  v11(v6, v10, v3);
  v32[0] = 1;
  v28 = v6;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(v12 - 8);
  v24 = *(v13 + 56);
  v24(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6574656D61726170, 0xEB00000000644972);
  v14(v32, 0);
  v25 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v31, 0x6574656D61726170, 0xEB00000000644972);
  if (!(*(v13 + 48))(v17, 1, v12))
  {
    sub_266ECB128(&unk_287887898);
    sub_26738115C();
  }

  (v16)(v31, 0);
  v15(v32, 0);
  type metadata accessor for IFTSchemaASTUpdateKind(0);
  sub_267009E18();
  sub_26738120C();
  v18 = v24;
  v24(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 1684957547, 0xE400000000000000);
  v19(v32, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v18(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0x65756C6176, 0xE500000000000000);
  v20(v32, 0);
  v26(v28, *MEMORY[0x277D3E510], v30);
  v32[0] = 1;
  sub_26738114C();
  v18(v9, 0, 1, v12);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x6574656D61726170, 0xEE007865646E4972);
  return v21(v32, 0);
}

uint64_t sub_267042180(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670421E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTUpdateParametersExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x746174536C6C6163, 0xEF6449746E656D65);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F3308, 0x277D58148);
  sub_266ECAF2C(&qword_2800F3300, &qword_2800F3308, 0x277D58148, &protocol conformance descriptor for IFTSchemaIFTUpdateParameter);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x73657461647075, 0xE700000000000000);
  return v7(v9, 0);
}

uint64_t sub_26704255C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670425C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTValue.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v22 = sub_26738118C();
  v1 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v21 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3078, 0x277D57F50);
  sub_266ECAF2C(&qword_2800F3070, &qword_2800F3078, 0x277D57F50, &protocol conformance descriptor for IFTSchemaIFTPrimitiveValue);
  sub_26738121C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x766974696D697270, 0xE900000000000065);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F2D88, 0x277D57E08);
  sub_266ECAF2C(&qword_2800F2D80, &qword_2800F2D88, 0x277D57E08, &protocol conformance descriptor for IFTSchemaIFTEnumerationValue);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x746172656D756E65, 0xEB000000006E6F69);
  v9(v23, 0);
  sub_266ECB294(0, &qword_2800F2D78, 0x277D57E00);
  sub_266ECAF2C(&qword_2800F2D70, &qword_2800F2D78, 0x277D57E00, &protocol conformance descriptor for IFTSchemaIFTEntityValue);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x797469746E65, 0xE600000000000000);
  v10(v23, 0);
  sub_266ECB294(0, &qword_2800F30C0, 0x277D57F90);
  sub_266ECAF2C(&qword_2800F30B8, &qword_2800F30C0, 0x277D57F90, &protocol conformance descriptor for IFTSchemaIFTQueryValue);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = v21;
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0x7972657571, 0xE500000000000000);
  v12(v23, 0);
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
  (*(v1 + 32))(v16 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19, v11, v22);
  return v13(v23, 0);
}

uint64_t sub_267042C54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267042CB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTValueDisambiguation.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F2A20, 0x277D58138);
  sub_266ECAF2C(&qword_2800F2A28, &qword_2800F2A20, 0x277D58138, &protocol conformance descriptor for IFTSchemaIFTTypedValue);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x736D657469, 0xE500000000000000);
  return v11(v13, 0);
}

uint64_t sub_267043084(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670430E8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTValueExpression.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
    sub_266ECB128(&unk_2878878C8);
    sub_26738115C();
  }

  (v13)(v18, 0);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F3310, 0x277D58170);
  sub_266ECAF2C(&qword_2800F3318, &qword_2800F3310, 0x277D58170, &protocol conformance descriptor for IFTSchemaIFTValueExpressionArrayVariant);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x7961727261, 0xE500000000000000);
  return v15(v19, 0);
}

uint64_t sub_26704355C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670435C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTValueExpressionArrayVariant.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_267043840(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E656D6574617473, 0xEB00000000644974);
  return v5(v7, 0);
}

uint64_t sub_2670439E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267043A48(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IFTSchemaIFTVariableStep.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
    sub_266ECB128(&unk_2878878F0);
    sub_26738115C();
  }

  (v13)(v18, 0);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F28C0, 0x277D58078);
  sub_266ECAF2C(&qword_2800F28C8, &qword_2800F28C0, 0x277D58078, &protocol conformance descriptor for IFTSchemaIFTStatementId);
  sub_26738120C();
  v10(v7, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0x6E656D6574617473, 0xEB00000000644974);
  return v15(v19, 0);
}

uint64_t sub_267043EC8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267043F2C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IHSchemaIHClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F3320, 0x277D58188);
  sub_266ECAF2C(&qword_2800F3328, &qword_2800F3320, 0x277D58188, &protocol conformance descriptor for IHSchemaIHClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F3330, 0x277D58190);
  sub_266ECAF2C(&qword_2800F3338, &qword_2800F3330, 0x277D58190, &protocol conformance descriptor for IHSchemaIHModelEvaluationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  v10 = v20;
  sub_266EC637C(v5, 0xD000000000000016, 0x8000000267448C20);
  v9(v23, 0);
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
  (*(v21 + 32))(v14 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v17, v10, v22);
  v11(v23, 0);
  sub_266ECB128(&unk_287887918);
  return sub_2673811CC();
}

uint64_t sub_267044400(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_267044498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_267044564(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670445C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267044628(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F3340, &qword_2800F1E90, 0x277D58180, &protocol conformance descriptor for IHSchemaIHClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F3348, &qword_2800F1E90, 0x277D58180, &protocol conformance descriptor for IHSchemaIHClientEvent);
  result = sub_266ECAF2C(&qword_2800F3350, &qword_2800F1E90, 0x277D58180, &protocol conformance descriptor for IHSchemaIHClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static IHSchemaIHClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 1682532457, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682532457, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287887958);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_2670449BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267044A20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IHSchemaIHModelEvaluationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F3358, 0x277D581A8);
  sub_266ECAF2C(&qword_2800F3360, &qword_2800F3358, 0x277D581A8, &protocol conformance descriptor for IHSchemaIHModelEvaluationStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F3368, 0x277D58198);
  sub_266ECAF2C(&qword_2800F3370, &qword_2800F3368, 0x277D58198, &protocol conformance descriptor for IHSchemaIHModelEvaluationEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800F3378, 0x277D581A0);
  sub_266ECAF2C(&qword_2800F3380, &qword_2800F3378, 0x277D581A0, &protocol conformance descriptor for IHSchemaIHModelEvaluationFailed);
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

uint64_t sub_2670450A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267045104(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IHSchemaIHModelEvaluationEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3388, 0x277D581B0);
  sub_266ECAF2C(&qword_2800F3390, &qword_2800F3388, 0x277D581B0, &protocol conformance descriptor for IHSchemaIHScore);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x65726F6373, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_267045378(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3388, 0x277D581B0);
  sub_266ECAF2C(&qword_2800F3390, &qword_2800F3388, 0x277D581B0, &protocol conformance descriptor for IHSchemaIHScore);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x65726F6373, 0xE500000000000000);
  return v5(v7, 0);
}

uint64_t sub_267045510(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267045574(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static IHSchemaIHModelEvaluationFailed.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_267045868(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670458CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267045930()
{
  result = qword_2800F3380;
  if (!qword_2800F3380)
  {
    sub_267045988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3380);
  }

  return result;
}

unint64_t sub_267045988()
{
  result = qword_2800F3378;
  if (!qword_2800F3378)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3378);
  }

  return result;
}

uint64_t static IHSchemaIHModelEvaluationStarted.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x64496C65646F6DLL, 0xE700000000000000);
  return v8(v10, 0);
}

uint64_t sub_267045C20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267045C84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267045CE8()
{
  result = qword_2800F3360;
  if (!qword_2800F3360)
  {
    sub_267045D40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3360);
  }

  return result;
}

unint64_t sub_267045D40()
{
  result = qword_2800F3358;
  if (!qword_2800F3358)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3358);
  }

  return result;
}

uint64_t static IHSchemaIHScore.makeTypeManifestAndEnsureFields(in:)()
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
  v7 = *MEMORY[0x277D3E500];
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
  sub_266EC637C(v6, 0x65726F6373, 0xE500000000000000);
  v10(v20, 0);
  v11 = v0;
  v12 = v18;
  v18(v3, v7, v11);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v19);
  v13 = sub_2673811AC();
  sub_266EC637C(v6, 0x756F427265707075, 0xED0000797261646ELL);
  v13(v20, 0);
  v12(v3, v7, v17);
  v20[0] = 1;
  sub_26738114C();
  v9(v6, 0, 1, v19);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x756F427265776F6CLL, 0xED0000797261646ELL);
  return v14(v20, 0);
}

uint64_t sub_267046174(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670461D8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26704623C()
{
  result = qword_2800F3390;
  if (!qword_2800F3390)
  {
    sub_267046294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3390);
  }

  return result;
}

unint64_t sub_267046294()
{
  result = qword_2800F3388;
  if (!qword_2800F3388)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3388);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEABModelEvaluated.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v37 = sub_26738113C();
  v3 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v35 = a2;
  sub_26738119C();
  type metadata accessor for INFERENCESchemaINFERENCEProjectIntent(0);
  sub_267046B48(&qword_2800F3398, type metadata accessor for INFERENCESchemaINFERENCEProjectIntent, &protocol conformance descriptor for INFERENCESchemaINFERENCEProjectIntent);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v8, 0, 1, v9);
  v30 = v11;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x497463656A6F7270, 0xED0000746E65746ELL);
  v13(v38, 0);
  v31 = "FERENCEABModelEvaluated";
  v14 = *MEMORY[0x277D3E508];
  v15 = *(v3 + 104);
  v34 = v3 + 104;
  v36 = v15;
  (v15)(v5, v14, v37);
  v38[0] = 1;
  sub_26738114C();
  v29 = v9;
  v11(v8, 0, 1, v9);
  v33 = v12;
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v31 | 0x8000000000000000);
  v16(v38, 0);
  LODWORD(v31) = *MEMORY[0x277D3E4E8];
  v17 = v36;
  v36(v5);
  v38[0] = 1;
  sub_26738114C();
  v18 = v30;
  v30(v8, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267448DB0);
  v19(v38, 0);
  v20 = v37;
  v17(v5, *MEMORY[0x277D3E538], v37);
  v38[0] = 1;
  sub_26738114C();
  v21 = v29;
  v18(v8, 0, 1, v29);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0x7265566C65646F6DLL, 0xEC0000006E6F6973);
  v22(v38, 0);
  v28 = "isDecisionCorrect";
  v23 = v31;
  v17(v5, v31, v20);
  v38[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v28 | 0x8000000000000000);
  v24(v38, 0);
  (v36)(v5, v23, v37);
  v38[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v21);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x8000000267448DF0);
  v25(v38, 0);
  type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona(0);
  sub_267046B48(&qword_2800F1410, type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona, &protocol conformance descriptor for INFERENCESchemaINFERENCEAppSelectionUserPersona);
  sub_26738120C();
  v18(v8, 0, 1, v21);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x7372655072657375, 0xEB00000000616E6FLL);
  return v26(v38, 0);
}

uint64_t sub_267046A3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267046AA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267046B48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267046B90()
{
  result = qword_2800F33A8;
  if (!qword_2800F33A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F33A8);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEABModelResultTriggered.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType(0);
  sub_267046FA8(&qword_2800F33B0, type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType, &protocol conformance descriptor for INFERENCESchemaINFERENCEAppResolutionType);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x5272656767697274, 0xED00006E6F736165);
  v6(v9, 0);
  type metadata accessor for INFERENCESchemaINFERENCEProjectIntent(0);
  sub_267046FA8(&qword_2800F3398, type metadata accessor for INFERENCESchemaINFERENCEProjectIntent, &protocol conformance descriptor for INFERENCESchemaINFERENCEProjectIntent);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x497463656A6F7270, 0xED0000746E65746ELL);
  return v7(v9, 0);
}

uint64_t sub_267046E9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267046F00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267046FA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_267046FF0()
{
  result = qword_2800F33C0;
  if (!qword_2800F33C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F33C0);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEAppResolutionType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000022, 0x8000000267448E90, isUniquelyReferenced_nonNull_native);
  *v3 = v46;

  v1(v57, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v47 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000025, 0x8000000267448EC0, v8);
  *v7 = v47;

  v5(v57, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000039, 0x8000000267448EF0, v12);
  *v11 = v48;

  v9(v57, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v49 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000036, 0x8000000267448F30, v16);
  *v15 = v49;

  v13(v57, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v50 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002DLL, 0x8000000267448F70, v20);
  *v19 = v50;

  v17(v57, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v51 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000024, 0x8000000267448FA0, v24);
  *v23 = v51;

  v21(v57, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v52 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000038, 0x8000000267448FD0, v28);
  *v27 = v52;

  v25(v57, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v53 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000035, 0x8000000267449010, v32);
  *v31 = v53;

  v29(v57, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000002CLL, 0x8000000267449050, v36);
  *v35 = v54;

  v33(v57, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000002CLL, 0x8000000267449080, v40);
  *v39 = v55;

  v37(v57, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v56 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000026, 0x80000002674490B0, v44);
  *v43 = v56;

  return v41(v57, 0);
}

uint64_t sub_2670475D4(uint64_t a1)
{
  v2 = sub_2670476D8(&qword_2800F33C8, &protocol conformance descriptor for INFERENCESchemaINFERENCEAppResolutionType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26704763C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2670476D8(&qword_2800F33C8, &protocol conformance descriptor for INFERENCESchemaINFERENCEAppResolutionType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_2670476D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEAppResolutionType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEAppSelectionUserPersona.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000028, 0x8000000267449120, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000002DLL, 0x8000000267449150, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000002DLL, 0x8000000267449180, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002DLL, 0x80000002674491B0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002FLL, 0x80000002674491E0, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002FLL, 0x8000000267449210, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002CLL, 0x8000000267449240, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_267047AF8(uint64_t a1)
{
  v2 = sub_267047BFC(&qword_2800F33D0, &protocol conformance descriptor for INFERENCESchemaINFERENCEAppSelectionUserPersona);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_267047B60(uint64_t a1, uint64_t a2)
{
  v4 = sub_267047BFC(&qword_2800F33D0, &protocol conformance descriptor for INFERENCESchemaINFERENCEAppSelectionUserPersona);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267047BFC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCEAppSelectionUserPersona(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEAsrEuclidEmbedding.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F33D8, 0x277D582C0);
  sub_266ECAF2C(&qword_2800F33E0, &qword_2800F33D8, 0x277D582C0, &protocol conformance descriptor for INFERENCESchemaINFERENCEEuclidServiceMetrics);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000014, 0x80000002674492B0);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F33E8, 0x277D582B0);
  sub_266ECAF2C(&qword_2800F33F0, &qword_2800F33E8, 0x277D582B0, &protocol conformance descriptor for INFERENCESchemaINFERENCEEuclidDebugMetrics);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x80000002674492D0);
  return v7(v9, 0);
}

uint64_t sub_267047F18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267047F7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet.makeTypeManifestAndEnsureFields(in:)()
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
  (*(v1 + 104))(v3, *MEMORY[0x277D3E500], v0);
  v10[0] = 1;
  sub_26738114C();
  v7 = sub_26738116C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x8000000267449340);
  return v8(v10, 0);
}

uint64_t sub_267048270(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_2670482D4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_267048338()
{
  result = qword_2800F3408;
  if (!qword_2800F3408)
  {
    sub_267048390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3408);
  }

  return result;
}

unint64_t sub_267048390()
{
  result = qword_2800F3410;
  if (!qword_2800F3410)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3410);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEBackgroundContactSignalSet.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  v16 = "dContactSignalSet";
  v8 = *(v2 + 104);
  v8(v4, *MEMORY[0x277D3E4E8], v1);
  v19[0] = 1;
  sub_26738114C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000017, v16 | 0x8000000000000000);
  v11(v19, 0);
  v8(v4, *MEMORY[0x277D3E500], v17);
  v19[0] = 1;
  sub_26738114C();
  v10(v7, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, 0x80000002674493D0);
  v12(v19, 0);
  sub_266ECB294(0, &qword_2800F3410, 0x277D581D0);
  sub_266ECAF2C(&qword_2800F3408, &qword_2800F3410, 0x277D581D0, &protocol conformance descriptor for INFERENCESchemaINFERENCEBackgroundContactHandleSignalSet);
  sub_26738122C();
  v10(v7, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0xD00000000000001BLL, 0x8000000267449400);
  return v13(v19, 0);
}

uint64_t sub_2670487E8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26704884C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCECandidateInfo.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v3 = sub_26738113C();
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v30 = a2;
  sub_26738119C();
  type metadata accessor for INFERENCESchemaINFERENCESearchProvider(0);
  sub_267049058(&qword_2800F3428, type metadata accessor for INFERENCESchemaINFERENCESearchProvider, &protocol conformance descriptor for INFERENCESchemaINFERENCESearchProvider);
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 0, 1, v9);
  v29 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v8, 0x7250686372616573, 0xEE0072656469766FLL);
  v11(v34, 0);
  v12 = *MEMORY[0x277D3E538];
  v13 = v33;
  v32 = *(v32 + 104);
  (v32)(v5, v12, v33);
  v34[0] = 1;
  sub_26738114C();
  v14 = v9;
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 1802396018, 0xE400000000000000);
  v15(v34, 0);
  v16 = *MEMORY[0x277D3E500];
  v28 = v5;
  v17 = v5;
  v18 = v13;
  v19 = v32;
  (v32)(v17, v16, v13);
  v34[0] = 1;
  sub_26738114C();
  v20 = v29;
  v29(v8, 0, 1, v14);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0x65726F6373, 0xE500000000000000);
  v21(v34, 0);
  v22 = v28;
  v19(v28, *MEMORY[0x277D3E4E8], v18);
  v34[0] = 1;
  sub_26738114C();
  v20(v8, 0, 1, v14);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0x546E776F68537369, 0xED0000726573556FLL);
  v23(v34, 0);
  (v32)(v22, *MEMORY[0x277D3E530], v33);
  v34[0] = 1;
  sub_26738114C();
  v24 = v14;
  v20(v8, 0, 1, v14);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267449460);
  v25(v34, 0);
  type metadata accessor for INFERENCESchemaINFERENCECandidateType(0);
  sub_267049058(&qword_2800F3430, type metadata accessor for INFERENCESchemaINFERENCECandidateType, &protocol conformance descriptor for INFERENCESchemaINFERENCECandidateType);
  sub_26738120C();
  v20(v8, 0, 1, v24);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x74616469646E6163, 0xED00006570795465);
  return v26(v34, 0);
}

uint64_t sub_267048F4C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_267048FB0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_267049058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2670490A0()
{
  result = qword_2800F3440;
  if (!qword_2800F3440)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3440);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECandidateType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001ELL, 0x80000002674494C0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x80000002674494E0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x8000000267449500, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_267049304(uint64_t a1)
{
  v2 = sub_267049408(&qword_2800F3448, &protocol conformance descriptor for INFERENCESchemaINFERENCECandidateType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_26704936C(uint64_t a1, uint64_t a2)
{
  v4 = sub_267049408(&qword_2800F3448, &protocol conformance descriptor for INFERENCESchemaINFERENCECandidateType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_267049408(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for INFERENCESchemaINFERENCECandidateType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCEClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v96 = a1;
  v1 = sub_26738118C();
  v89 = *(v1 - 8);
  v90 = v1;
  MEMORY[0x28223BE20](v1);
  v88 = &v87 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v87 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F3450, 0x277D581F8);
  sub_266ECAF2C(&qword_2800F3458, &qword_2800F3450, 0x277D581F8, &protocol conformance descriptor for INFERENCESchemaINFERENCEClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v9(v98, 0);
  sub_266ECB294(0, &qword_2800F3460, 0x277D582D8);
  sub_266ECAF2C(&qword_2800F3468, &qword_2800F3460, 0x277D582D8, &protocol conformance descriptor for INFERENCESchemaINFERENCEMusicAppSelectionGroundTruthGenerated);
  sub_26738121C();
  v93 = v8;
  v94 = v7 + 56;
  v8(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000025, 0x8000000267449570);
  v10(v98, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v97, 0xD000000000000025, 0x8000000267449570);
  v13 = *(v7 + 48);
  v95 = v6;
  v91 = v13;
  v92 = v7 + 48;
  if (!v13(v14, 1, v6))
  {
    sub_266ECB128(&unk_287887988);
    sub_26738115C();
  }

  (v12)(v97, 0);
  v11(v98, 0);
  sub_266ECB294(0, &qword_2800F3470, 0x277D583A8);
  sub_266ECAF2C(&qword_2800F3478, &qword_2800F3470, 0x277D583A8, &protocol conformance descriptor for INFERENCESchemaINFERENCEVideoPlayOnThirdPartyAppGroundTruthGenerated);
  sub_26738121C();
  v15 = v95;
  v93(v5, 0, 1, v95);
  v16 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000002CLL, 0x80000002674495A0);
  v16(v98, 0);
  v17 = sub_2673811AC();
  v18 = sub_266ECB6CC(v97, 0xD00000000000002CLL, 0x80000002674495A0);
  if (!v91(v19, 1, v15))
  {
    sub_266ECB128(&unk_2878879B0);
    sub_26738115C();
  }

  (v18)(v97, 0);
  v17(v98, 0);
  sub_266ECB294(0, &qword_2800F3480, 0x277D583C8);
  sub_266ECAF2C(&qword_2800F3488, &qword_2800F3480, 0x277D583C8, &protocol conformance descriptor for INFERENCESchemaINFERENCEVideoSmartAppSelectionDisambiguationSignalsGenerated);
  sub_26738121C();
  v20 = v95;
  v93(v5, 0, 1, v95);
  v21 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000024, 0x80000002674495D0);
  v21(v98, 0);
  v22 = sub_2673811AC();
  v23 = sub_266ECB6CC(v97, 0xD000000000000024, 0x80000002674495D0);
  if (!v91(v24, 1, v20))
  {
    sub_266ECB128(&unk_2878879D8);
    sub_26738115C();
  }

  (v23)(v97, 0);
  v22(v98, 0);
  sub_266ECB294(0, &qword_2800F3490, 0x277D58350);
  sub_266ECAF2C(&qword_2800F3498, &qword_2800F3490, 0x277D58350, &protocol conformance descriptor for INFERENCESchemaINFERENCEResolutionRequestContext);
  sub_26738121C();
  v25 = v95;
  v26 = v93;
  v93(v5, 0, 1, v95);
  v27 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000018, 0x8000000267449600);
  v27(v98, 0);
  sub_266ECB294(0, &qword_2800F34A0, 0x277D58378);
  sub_266ECAF2C(&qword_2800F34A8, &qword_2800F34A0, 0x277D58378, &protocol conformance descriptor for INFERENCESchemaINFERENCESimpleTaskInfoGenerated);
  sub_26738121C();
  v26(v5, 0, 1, v25);
  v28 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000017, 0x8000000267449620);
  v28(v98, 0);
  v29 = sub_2673811AC();
  v30 = sub_266ECB6CC(v97, 0xD000000000000017, 0x8000000267449620);
  if (!v91(v31, 1, v25))
  {
    sub_266ECB128(&unk_287887A00);
    sub_26738115C();
  }

  (v30)(v97, 0);
  v29(v98, 0);
  sub_266ECB294(0, &qword_2800F34B0, 0x277D58348);
  sub_266ECAF2C(&qword_2800F34B8, &qword_2800F34B0, 0x277D58348, &protocol conformance descriptor for INFERENCESchemaINFERENCEResolutionQueryInfoGenerated);
  sub_26738121C();
  v32 = v95;
  v93(v5, 0, 1, v95);
  v33 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001CLL, 0x8000000267449640);
  v33(v98, 0);
  v34 = sub_2673811AC();
  v35 = sub_266ECB6CC(v97, 0xD00000000000001CLL, 0x8000000267449640);
  if (!v91(v36, 1, v32))
  {
    sub_266ECB128(&unk_287887A28);
    sub_26738115C();
  }

  (v35)(v97, 0);
  v34(v98, 0);
  sub_266ECB294(0, &qword_2800F34C0, 0x277D58338);
  sub_266ECAF2C(&qword_2800F34C8, &qword_2800F34C0, 0x277D58338, &protocol conformance descriptor for INFERENCESchemaINFERENCEQueryUserPromptSelectedInfoGenerated);
  sub_26738121C();
  v37 = v95;
  v93(v5, 0, 1, v95);
  v38 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001FLL, 0x8000000267449660);
  v38(v98, 0);
  v39 = sub_2673811AC();
  v40 = sub_266ECB6CC(v97, 0xD00000000000001FLL, 0x8000000267449660);
  if (!v91(v41, 1, v37))
  {
    sub_266ECB128(&unk_287887A50);
    sub_26738115C();
  }

  (v40)(v97, 0);
  v39(v98, 0);
  sub_266ECB294(0, &qword_2800F34D0, 0x277D58270);
  sub_266ECAF2C(&qword_2800F34D8, &qword_2800F34D0, 0x277D58270, &protocol conformance descriptor for INFERENCESchemaINFERENCEContactCandidatesInfoGenerated);
  sub_26738121C();
  v42 = v95;
  v93(v5, 0, 1, v95);
  v43 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001ELL, 0x8000000267449680);
  v43(v98, 0);
  v44 = sub_2673811AC();
  v45 = sub_266ECB6CC(v97, 0xD00000000000001ELL, 0x8000000267449680);
  if (!v91(v46, 1, v42))
  {
    sub_266ECB128(&unk_287887A78);
    sub_26738115C();
  }

  (v45)(v97, 0);
  v44(v98, 0);
  sub_266ECB294(0, &qword_2800F34E0, 0x277D581E0);
  sub_266ECAF2C(&qword_2800F34E8, &qword_2800F34E0, 0x277D581E0, &protocol conformance descriptor for INFERENCESchemaINFERENCECRRTrainingSampleCollected);
  sub_26738121C();
  v47 = v95;
  v93(v5, 0, 1, v95);
  v48 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001ALL, 0x80000002674496A0);
  v48(v98, 0);
  v49 = sub_2673811AC();
  v50 = sub_266ECB6CC(v97, 0xD00000000000001ALL, 0x80000002674496A0);
  if (!v91(v51, 1, v47))
  {
    sub_266ECB128(&unk_287887AA0);
    sub_26738115C();
  }

  (v50)(v97, 0);
  v49(v98, 0);
  sub_266ECB294(0, &qword_2800F33A8, 0x277D581B8);
  sub_266ECAF2C(&qword_2800F33A0, &qword_2800F33A8, 0x277D581B8, &protocol conformance descriptor for INFERENCESchemaINFERENCEABModelEvaluated);
  sub_26738121C();
  v52 = v95;
  v53 = v93;
  v93(v5, 0, 1, v95);
  v54 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x80000002674496C0);
  v54(v98, 0);
  sub_266ECB294(0, &qword_2800F33C0, 0x277D581C0);
  sub_266ECAF2C(&qword_2800F33B8, &qword_2800F33C0, 0x277D581C0, &protocol conformance descriptor for INFERENCESchemaINFERENCEABModelResultTriggered);
  sub_26738121C();
  v53(v5, 0, 1, v52);
  v55 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x80000002674496E0);
  v55(v98, 0);
  sub_266ECB294(0, &qword_2800F34F0, 0x277D583D0);
  sub_266ECAF2C(&qword_2800F34F8, &qword_2800F34F0, 0x277D583D0, &protocol conformance descriptor for INFERENCESchemaINFERENCEWorkoutsAppSelectionGroundTruthGenerated);
  sub_26738121C();
  v53(v5, 0, 1, v52);
  v56 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000028, 0x8000000267449700);
  v56(v98, 0);
  v57 = sub_2673811AC();
  v58 = sub_266ECB6CC(v97, 0xD000000000000028, 0x8000000267449700);
  if (!v91(v59, 1, v52))
  {
    sub_266ECB128(&unk_287887AC8);
    sub_26738115C();
  }

  (v58)(v97, 0);
  v57(v98, 0);
  sub_266ECB294(0, &qword_2800F3500, 0x277D582F0);
  sub_266ECAF2C(&qword_2800F3508, &qword_2800F3500, 0x277D582F0, &protocol conformance descriptor for INFERENCESchemaINFERENCENotebookAppSelectionGroundTruthGenerated);
  sub_26738121C();
  v60 = v95;
  v93(v5, 0, 1, v95);
  v61 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000028, 0x8000000267449730);
  v61(v98, 0);
  v62 = sub_2673811AC();
  v63 = sub_266ECB6CC(v97, 0xD000000000000028, 0x8000000267449730);
  if (!v91(v64, 1, v60))
  {
    sub_266ECB128(&unk_287887AF0);
    sub_26738115C();
  }

  (v63)(v97, 0);
  v62(v98, 0);
  sub_266ECB294(0, &qword_2800F3510, 0x277D58220);
  sub_266ECAF2C(&qword_2800F3518, &qword_2800F3510, 0x277D58220, &protocol conformance descriptor for INFERENCESchemaINFERENCECommsAppSelectionGroundTruthGenerated);
  sub_26738121C();
  v65 = v95;
  v93(v5, 0, 1, v95);
  v66 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000025, 0x8000000267449760);
  v66(v98, 0);
  v67 = sub_2673811AC();
  v68 = sub_266ECB6CC(v97, 0xD000000000000025, 0x8000000267449760);
  if (!v91(v69, 1, v65))
  {
    sub_266ECB128(&unk_287887B18);
    sub_26738115C();
  }

  (v68)(v97, 0);
  v67(v98, 0);
  sub_266ECB294(0, &qword_2800F3520, 0x277D58318);
  sub_266ECAF2C(&qword_2800F3528, &qword_2800F3520, 0x277D58318, &protocol conformance descriptor for INFERENCESchemaINFERENCEPervasiveEntityResolutionGroundTruthGenerated);
  sub_26738121C();
  v70 = v95;
  v93(v5, 0, 1, v95);
  v71 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000002DLL, 0x8000000267449790);
  v71(v98, 0);
  v72 = sub_2673811AC();
  v73 = sub_266ECB6CC(v97, 0xD00000000000002DLL, 0x8000000267449790);
  if (!v91(v74, 1, v70))
  {
    sub_266ECB128(&unk_287887B40);
    sub_26738115C();
  }

  (v73)(v97, 0);
  v72(v98, 0);
  sub_266ECB294(0, &qword_2800F3530, 0x277D58380);
  sub_266ECAF2C(&qword_2800F3538, &qword_2800F3530, 0x277D58380, &protocol conformance descriptor for INFERENCESchemaINFERENCESmartEnoughAppSelectionExecutionPathReported);
  sub_26738121C();
  v75 = v93;
  v93(v5, 0, 1, v95);
  v76 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000019, 0x80000002674497C0);
  v76(v98, 0);
  sub_266ECB294(0, &qword_2800F3400, 0x277D581C8);
  sub_266ECAF2C(&qword_2800F33F8, &qword_2800F3400, 0x277D581C8, &protocol conformance descriptor for INFERENCESchemaINFERENCEAsrEuclidEmbedding);
  sub_26738121C();
  v75(v5, 0, 1, v95);
  v77 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000012, 0x80000002674497E0);
  v77(v98, 0);
  v78 = v88;
  sub_26738117C();
  v79 = sub_2673811BC();
  v81 = v80;
  v82 = *v80;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v81 = v82;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v82 = sub_266ECAD54(0, v82[2] + 1, 1, v82);
    *v81 = v82;
  }

  v85 = v82[2];
  v84 = v82[3];
  if (v85 >= v84 >> 1)
  {
    v82 = sub_266ECAD54((v84 > 1), v85 + 1, 1, v82);
    *v81 = v82;
  }

  v82[2] = v85 + 1;
  (*(v89 + 32))(v82 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v85, v78, v90);
  v79(v98, 0);
  sub_266ECB128(&unk_287887B68);
  return sub_2673811CC();
}

uint64_t sub_26704ACD8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_26704AD70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_26704AE3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26704AEA0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_26704AF00(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F3540, &qword_2800F1FB0, 0x277D581F0, &protocol conformance descriptor for INFERENCESchemaINFERENCEClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F3548, &qword_2800F1FB0, 0x277D581F0, &protocol conformance descriptor for INFERENCESchemaINFERENCEClientEvent);
  result = sub_266ECAF2C(&qword_2800F3550, &qword_2800F1FB0, 0x277D581F0, &protocol conformance descriptor for INFERENCESchemaINFERENCEClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static INFERENCESchemaINFERENCEClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x636E657265666E69, 0xEB00000000644965);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x636E657265666E69, 0xEB00000000644965);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287887BA0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_26704B2B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26704B314(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static INFERENCESchemaINFERENCECommonAppDependentEntityFrequencyAndRecencySignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v128 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v122 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v132 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E508];
  v10 = *(v3 + 104);
  v130 = v3 + 104;
  v10(v5, v9, v2);
  v136[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v129 = *(v12 + 56);
  v13 = v12 + 56;
  v135 = v11;
  v129(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  v124 = 0xD00000000000001ALL;
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x80000002674498A0);
  v14(v136, 0);
  v126 = "appUsageCountForEntity2Min";
  v134 = v9;
  v15 = v128;
  v133 = v10;
  v10(v5, v9, v128);
  v136[0] = 1;
  sub_26738114C();
  v16 = v11;
  v17 = v13;
  v18 = v129;
  v129(v8, 0, 1, v16);
  v19 = sub_2673811AC();
  v125 = 0xD00000000000001BLL;
  sub_266EC637C(v8, 0xD00000000000001BLL, v126 | 0x8000000000000000);
  v19(v136, 0);
  v123 = "appUsageCountForEntity10Min";
  v10(v5, v9, v15);
  v136[0] = 1;
  sub_26738114C();
  v20 = v135;
  v18(v8, 0, 1, v135);
  v131 = v17;
  v21 = sub_2673811AC();
  v126 = 0xD000000000000019;
  sub_266EC637C(v8, 0xD000000000000019, v123 | 0x8000000000000000);
  v21(v136, 0);
  v123 = "appUsageCountForEntity1Hr";
  v127 = v5;
  v22 = v128;
  v23 = v133;
  v133(v5, v134, v128);
  v136[0] = 1;
  sub_26738114C();
  v24 = v129;
  v129(v8, 0, 1, v20);
  v25 = sub_2673811AC();
  v26 = v124;
  sub_266EC637C(v8, v124, v123 | 0x8000000000000000);
  v25(v136, 0);
  v123 = "appUsageCountForEntity6Hrs";
  v27 = v127;
  v23(v127, v134, v22);
  v136[0] = 1;
  sub_26738114C();
  v24(v8, 0, 1, v20);
  v28 = v24;
  v29 = sub_2673811AC();
  sub_266EC637C(v8, v26, v123 | 0x8000000000000000);
  v29(v136, 0);
  v30 = v134;
  v133(v27, v134, v22);
  v136[0] = 1;
  sub_26738114C();
  v31 = v135;
  v28(v8, 0, 1, v135);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, v125, 0x8000000267449940);
  v32(v136, 0);
  v124 = "appUsageCountForEntity7Days";
  v33 = v30;
  v34 = v128;
  v35 = v133;
  v133(v27, v30, v128);
  v136[0] = 1;
  v36 = v27;
  sub_26738114C();
  v37 = v31;
  v38 = v129;
  v129(v8, 0, 1, v37);
  v39 = sub_2673811AC();
  v125 = 0xD00000000000001CLL;
  sub_266EC637C(v8, 0xD00000000000001CLL, v124 | 0x8000000000000000);
  v39(v136, 0);
  v124 = "appUsageCountForEntity14Days";
  v35(v27, v33, v34);
  v136[0] = 1;
  sub_26738114C();
  v40 = v135;
  v38(v8, 0, 1, v135);
  v41 = sub_2673811AC();
  sub_266EC637C(v8, v125, v124 | 0x8000000000000000);
  v41(v136, 0);
  v125 = "appUsageCountForEntity28Days";
  v42 = v134;
  v43 = v34;
  v44 = v34;
  v45 = v133;
  v133(v36, v134, v44);
  v136[0] = 1;
  sub_26738114C();
  v129(v8, 0, 1, v40);
  v46 = sub_2673811AC();
  sub_266EC637C(v8, v126, v125 | 0x8000000000000000);
  v46(v136, 0);
  v126 = "appUsageCountForEntityInf";
  v45(v36, v42, v43);
  v136[0] = 1;
  sub_26738114C();
  v47 = v135;
  v48 = v129;
  v129(v8, 0, 1, v135);
  v49 = sub_2673811AC();
  v125 = 0xD00000000000001ELL;
  sub_266EC637C(v8, 0xD00000000000001ELL, v126 | 0x8000000000000000);
  v49(v136, 0);
  v124 = "recencyOrderOfAppUsedForEntity";
  LODWORD(v126) = *MEMORY[0x277D3E510];
  v50 = v133;
  (v133)(v36);
  v136[0] = 1;
  sub_26738114C();
  v48(v8, 0, 1, v47);
  v51 = sub_2673811AC();
  sub_266EC637C(v8, v125, v124 | 0x8000000000000000);
  v51(v136, 0);
  v125 = "timeSinceAppUsedForEntityInSec";
  v52 = v134;
  v53 = v128;
  v50(v36, v134, v128);
  v136[0] = 1;
  sub_26738114C();
  v54 = v135;
  v48(v8, 0, 1, v135);
  v55 = sub_2673811AC();
  v123 = 0xD000000000000022;
  sub_266EC637C(v8, 0xD000000000000022, v125 | 0x8000000000000000);
  v55(v136, 0);
  v125 = "EntityFromSiri2Min";
  v56 = v52;
  v57 = v53;
  v58 = v133;
  v133(v36, v52, v53);
  v136[0] = 1;
  sub_26738114C();
  v59 = v129;
  v129(v8, 0, 1, v54);
  v60 = sub_2673811AC();
  v124 = 0xD000000000000023;
  sub_266EC637C(v8, 0xD000000000000023, v125 | 0x8000000000000000);
  v60(v136, 0);
  v122 = "EntityFromSiri10Min";
  v58(v36, v56, v57);
  v136[0] = 1;
  sub_26738114C();
  v61 = v135;
  v59(v8, 0, 1, v135);
  v62 = sub_2673811AC();
  v125 = 0xD000000000000021;
  sub_266EC637C(v8, 0xD000000000000021, v122 | 0x8000000000000000);
  v62(v136, 0);
  v122 = "EntityFromSiri1Hr";
  v63 = v134;
  v64 = v128;
  v133(v36, v134, v128);
  v136[0] = 1;
  sub_26738114C();
  v65 = v129;
  v129(v8, 0, 1, v61);
  v66 = sub_2673811AC();
  v67 = v123;
  sub_266EC637C(v8, v123, v122 | 0x8000000000000000);
  v66(v136, 0);
  v122 = "EntityFromSiri6Hrs";
  v68 = v127;
  v69 = v133;
  v133(v127, v63, v64);
  v136[0] = 1;
  sub_26738114C();
  v70 = v135;
  v65(v8, 0, 1, v135);
  v71 = sub_2673811AC();
  sub_266EC637C(v8, v67, v122 | 0x8000000000000000);
  v71(v136, 0);
  v123 = "EntityFromSiri1Day";
  v72 = v68;
  v73 = v134;
  v69(v72, v134, v64);
  v136[0] = 1;
  sub_26738114C();
  v65(v8, 0, 1, v70);
  v74 = sub_2673811AC();
  sub_266EC637C(v8, v124, v123 | 0x8000000000000000);
  v74(v136, 0);
  v123 = "EntityFromSiri7Days";
  v75 = v127;
  v69(v127, v73, v64);
  v136[0] = 1;
  sub_26738114C();
  v76 = v70;
  v77 = v65;
  v65(v8, 0, 1, v76);
  v78 = sub_2673811AC();
  v124 = 0xD000000000000024;
  sub_266EC637C(v8, 0xD000000000000024, v123 | 0x8000000000000000);
  v78(v136, 0);
  v123 = "EntityFromSiri14Days";
  v79 = v134;
  v80 = v128;
  v81 = v133;
  v133(v75, v134, v128);
  v136[0] = 1;
  sub_26738114C();
  v77(v8, 0, 1, v135);
  v82 = sub_2673811AC();
  sub_266EC637C(v8, v124, v123 | 0x8000000000000000);
  v82(v136, 0);
  v124 = "EntityFromSiri28Days";
  v83 = v127;
  v81(v127, v79, v80);
  v136[0] = 1;
  sub_26738114C();
  v84 = v135;
  v77(v8, 0, 1, v135);
  v85 = sub_2673811AC();
  sub_266EC637C(v8, v125, v124 | 0x8000000000000000);
  v85(v136, 0);
  v125 = "EntityFromSiriInf";
  v86 = v133;
  v133(v83, v79, v80);
  v136[0] = 1;
  sub_26738114C();
  v87 = v84;
  v88 = v129;
  v129(v8, 0, 1, v87);
  v89 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000027, v125 | 0x8000000000000000);
  v89(v136, 0);
  v125 = "pUsageForEntityFromSiri";
  v90 = v80;
  v86(v83, v126, v80);
  v91 = v86;
  v136[0] = 1;
  sub_26738114C();
  v92 = v135;
  v88(v8, 0, 1, v135);
  v93 = sub_2673811AC();
  v126 = 0xD000000000000026;
  sub_266EC637C(v8, 0xD000000000000026, v125 | 0x8000000000000000);
  v93(v136, 0);
  v125 = "ForEntityFromSiriInSec";
  v94 = v134;
  v91(v83, v134, v90);
  v136[0] = 1;
  sub_26738114C();
  v88(v8, 0, 1, v92);
  v95 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000027, v125 | 0x8000000000000000);
  v95(v136, 0);
  v125 = "ForEntityInUsingApp2Min";
  v96 = v133;
  v133(v83, v94, v90);
  v136[0] = 1;
  sub_26738114C();
  v97 = v92;
  v98 = v129;
  v129(v8, 0, 1, v97);
  v99 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000028, v125 | 0x8000000000000000);
  v99(v136, 0);
  v125 = "ForEntityInUsingApp10Min";
  v100 = v128;
  v96(v83, v94, v128);
  v136[0] = 1;
  sub_26738114C();
  v101 = v135;
  v98(v8, 0, 1, v135);
  v102 = sub_2673811AC();
  sub_266EC637C(v8, v126, v125 | 0x8000000000000000);
  v102(v136, 0);
  v125 = "ForEntityInUsingApp1Hr";
  v103 = v127;
  v104 = v133;
  v133(v127, v94, v100);
  v136[0] = 1;
  sub_26738114C();
  v98(v8, 0, 1, v101);
  v105 = v98;
  v106 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000027, v125 | 0x8000000000000000);
  v106(v136, 0);
  v125 = "ForEntityInUsingApp6Hrs";
  v107 = v134;
  v108 = v128;
  v104(v103, v134, v128);
  v136[0] = 1;
  sub_26738114C();
  v109 = v135;
  v105(v8, 0, 1, v135);
  v110 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000027, v125 | 0x8000000000000000);
  v110(v136, 0);
  v125 = "ForEntityInUsingApp1Day";
  v111 = v127;
  v104(v127, v107, v108);
  v136[0] = 1;
  sub_26738114C();
  v112 = v109;
  v113 = v129;
  v129(v8, 0, 1, v112);
  v114 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000028, v125 | 0x8000000000000000);
  v114(v136, 0);
  v125 = "ForEntityInUsingApp7Days";
  v115 = v134;
  v116 = v128;
  v104(v111, v134, v128);
  v136[0] = 1;
  sub_26738114C();
  v113(v8, 0, 1, v135);
  v117 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000029, v125 | 0x8000000000000000);
  v117(v136, 0);
  v125 = "ForEntityInUsingApp14Days";
  v104(v111, v115, v116);
  v136[0] = 1;
  sub_26738114C();
  v118 = v135;
  v113(v8, 0, 1, v135);
  v119 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000029, v125 | 0x8000000000000000);
  v119(v136, 0);
  v104(v111, v134, v128);
  v136[0] = 1;
  sub_26738114C();
  v113(v8, 0, 1, v118);
  v120 = sub_2673811AC();
  sub_266EC637C(v8, v126, 0x8000000267449D90);
  return v120(v136, 0);
}

uint64_t sub_26704CE6C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_26704CED0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_26704CF34()
{
  result = qword_2800F3558;
  if (!qword_2800F3558)
  {
    sub_26704CF8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F3558);
  }

  return result;
}

unint64_t sub_26704CF8C()
{
  result = qword_2800F3560;
  if (!qword_2800F3560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F3560);
  }

  return result;
}

uint64_t static INFERENCESchemaINFERENCECommonAppDependentFrequencyAndRecencySignals.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v128 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v122 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v132 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E508];
  v10 = *(v3 + 104);
  v130 = v3 + 104;
  v10(v5, v9, v2);
  v136[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(v11 - 8);
  v129 = *(v12 + 56);
  v13 = v12 + 56;
  v135 = v11;
  v129(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  v124 = 0xD000000000000011;
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267449E20);
  v14(v136, 0);
  v126 = "appUsageCount2Min";
  v134 = v9;
  v15 = v128;
  v133 = v10;
  v10(v5, v9, v128);
  v136[0] = 1;
  sub_26738114C();
  v16 = v11;
  v17 = v13;
  v18 = v129;
  v129(v8, 0, 1, v16);
  v19 = sub_2673811AC();
  v125 = 0xD000000000000012;
  sub_266EC637C(v8, 0xD000000000000012, v126 | 0x8000000000000000);
  v19(v136, 0);
  v123 = "appUsageCount10Min";
  v10(v5, v9, v15);
  v136[0] = 1;
  sub_26738114C();
  v20 = v135;
  v18(v8, 0, 1, v135);
  v131 = v17;
  v21 = sub_2673811AC();
  v126 = 0xD000000000000010;
  sub_266EC637C(v8, 0xD000000000000010, v123 | 0x8000000000000000);
  v21(v136, 0);
  v123 = "appUsageCount1Hr";
  v127 = v5;
  v22 = v128;
  v23 = v133;
  v133(v5, v134, v128);
  v136[0] = 1;
  sub_26738114C();
  v24 = v129;
  v129(v8, 0, 1, v20);
  v25 = sub_2673811AC();
  v26 = v124;
  sub_266EC637C(v8, v124, v123 | 0x8000000000000000);
  v25(v136, 0);
  v123 = "appUsageCount6Hrs";
  v27 = v127;
  v23(v127, v134, v22);
  v136[0] = 1;
  sub_26738114C();
  v24(v8, 0, 1, v20);
  v28 = v24;
  v29 = sub_2673811AC();
  sub_266EC637C(v8, v26, v123 | 0x8000000000000000);
  v29(v136, 0);
  v30 = v134;
  v133(v27, v134, v22);
  v136[0] = 1;
  sub_26738114C();
  v31 = v135;
  v28(v8, 0, 1, v135);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, v125, 0x8000000267449EC0);
  v32(v136, 0);
  v124 = "appUsageCount7Days";
  v33 = v30;
  v34 = v128;
  v35 = v133;
  v133(v27, v30, v128);
  v136[0] = 1;
  v36 = v27;
  sub_26738114C();
  v37 = v31;
  v38 = v129;
  v129(v8, 0, 1, v37);
  v39 = sub_2673811AC();
  v125 = 0xD000000000000013;
  sub_266EC637C(v8, 0xD000000000000013, v124 | 0x8000000000000000);
  v39(v136, 0);
  v124 = "appUsageCount14Days";
  v35(v27, v33, v34);
  v136[0] = 1;
  sub_26738114C();
  v40 = v135;
  v38(v8, 0, 1, v135);
  v41 = sub_2673811AC();
  sub_266EC637C(v8, v125, v124 | 0x8000000000000000);
  v41(v136, 0);
  v125 = "appUsageCount28Days";
  v42 = v134;
  v43 = v34;
  v44 = v34;
  v45 = v133;
  v133(v36, v134, v44);
  v136[0] = 1;
  sub_26738114C();
  v129(v8, 0, 1, v40);
  v46 = sub_2673811AC();
  sub_266EC637C(v8, v126, v125 | 0x8000000000000000);
  v46(v136, 0);
  v126 = "appUsageCountInf";
  v45(v36, v42, v43);
  v136[0] = 1;
  sub_26738114C();
  v47 = v135;
  v48 = v129;
  v129(v8, 0, 1, v135);
  v49 = sub_2673811AC();
  v125 = 0xD000000000000015;
  sub_266EC637C(v8, 0xD000000000000015, v126 | 0x8000000000000000);
  v49(v136, 0);
  v124 = "recencyOrderOfAppUsed";
  LODWORD(v126) = *MEMORY[0x277D3E510];
  v50 = v133;
  (v133)(v36);
  v136[0] = 1;
  sub_26738114C();
  v48(v8, 0, 1, v47);
  v51 = sub_2673811AC();
  sub_266EC637C(v8, v125, v124 | 0x8000000000000000);
  v51(v136, 0);
  v125 = "timeSinceAppUsedInSec";
  v52 = v134;
  v53 = v128;
  v50(v36, v134, v128);
  v136[0] = 1;
  sub_26738114C();
  v54 = v135;
  v48(v8, 0, 1, v135);
  v55 = sub_2673811AC();
  v123 = 0xD000000000000019;
  sub_266EC637C(v8, 0xD000000000000019, v125 | 0x8000000000000000);
  v55(v136, 0);
  v125 = "appUsageCountFromSiri2Min";
  v56 = v52;
  v57 = v53;
  v58 = v133;
  v133(v36, v52, v53);
  v136[0] = 1;
  sub_26738114C();
  v59 = v129;
  v129(v8, 0, 1, v54);
  v60 = sub_2673811AC();
  v124 = 0xD00000000000001ALL;
  sub_266EC637C(v8, 0xD00000000000001ALL, v125 | 0x8000000000000000);
  v60(v136, 0);
  v122 = "appUsageCountFromSiri10Min";
  v58(v36, v56, v57);
  v136[0] = 1;
  sub_26738114C();
  v61 = v135;
  v59(v8, 0, 1, v135);
  v62 = sub_2673811AC();
  v125 = 0xD000000000000018;
  sub_266EC637C(v8, 0xD000000000000018, v122 | 0x8000000000000000);
  v62(v136, 0);
  v122 = "appUsageCountFromSiri1Hr";
  v63 = v134;
  v64 = v128;
  v133(v36, v134, v128);
  v136[0] = 1;
  sub_26738114C();
  v65 = v129;
  v129(v8, 0, 1, v61);
  v66 = sub_2673811AC();
  v67 = v123;
  sub_266EC637C(v8, v123, v122 | 0x8000000000000000);
  v66(v136, 0);
  v122 = "appUsageCountFromSiri6Hrs";
  v68 = v127;
  v69 = v133;
  v133(v127, v63, v64);
  v136[0] = 1;
  sub_26738114C();
  v70 = v135;
  v65(v8, 0, 1, v135);
  v71 = sub_2673811AC();
  sub_266EC637C(v8, v67, v122 | 0x8000000000000000);
  v71(v136, 0);
  v123 = "appUsageCountFromSiri1Day";
  v72 = v68;
  v73 = v134;
  v69(v72, v134, v64);
  v136[0] = 1;
  sub_26738114C();
  v65(v8, 0, 1, v70);
  v74 = sub_2673811AC();
  sub_266EC637C(v8, v124, v123 | 0x8000000000000000);
  v74(v136, 0);
  v123 = "appUsageCountFromSiri7Days";
  v75 = v127;
  v69(v127, v73, v64);
  v136[0] = 1;
  sub_26738114C();
  v76 = v70;
  v77 = v65;
  v65(v8, 0, 1, v76);
  v78 = sub_2673811AC();
  v124 = 0xD00000000000001BLL;
  sub_266EC637C(v8, 0xD00000000000001BLL, v123 | 0x8000000000000000);
  v78(v136, 0);
  v123 = "appUsageCountFromSiri14Days";
  v79 = v134;
  v80 = v128;
  v81 = v133;
  v133(v75, v134, v128);
  v136[0] = 1;
  sub_26738114C();
  v77(v8, 0, 1, v135);
  v82 = sub_2673811AC();
  sub_266EC637C(v8, v124, v123 | 0x8000000000000000);
  v82(v136, 0);
  v124 = "appUsageCountFromSiri28Days";
  v83 = v127;
  v81(v127, v79, v80);
  v136[0] = 1;
  sub_26738114C();
  v84 = v135;
  v77(v8, 0, 1, v135);
  v85 = sub_2673811AC();
  sub_266EC637C(v8, v125, v124 | 0x8000000000000000);
  v85(v136, 0);
  v125 = "appUsageCountFromSiriInf";
  v86 = v133;
  v133(v83, v79, v80);
  v136[0] = 1;
  sub_26738114C();
  v87 = v84;
  v88 = v129;
  v129(v8, 0, 1, v87);
  v89 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v125 | 0x8000000000000000);
  v89(v136, 0);
  v125 = "recencyOrderOfAppUsageFromSiri";
  v90 = v80;
  v86(v83, v126, v80);
  v91 = v86;
  v136[0] = 1;
  sub_26738114C();
  v92 = v135;
  v88(v8, 0, 1, v135);
  v93 = sub_2673811AC();
  v126 = 0xD00000000000001DLL;
  sub_266EC637C(v8, 0xD00000000000001DLL, v125 | 0x8000000000000000);
  v93(v136, 0);
  v125 = "timeSinceAppUsedFromSiriInSec";
  v94 = v134;
  v91(v83, v134, v90);
  v136[0] = 1;
  sub_26738114C();
  v88(v8, 0, 1, v92);
  v95 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v125 | 0x8000000000000000);
  v95(v136, 0);
  v125 = "taskAbandonCountInUsingApp2Min";
  v96 = v133;
  v133(v83, v94, v90);
  v136[0] = 1;
  sub_26738114C();
  v97 = v92;
  v98 = v129;
  v129(v8, 0, 1, v97);
  v99 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, v125 | 0x8000000000000000);
  v99(v136, 0);
  v125 = "taskAbandonCountInUsingApp10Min";
  v100 = v128;
  v96(v83, v94, v128);
  v136[0] = 1;
  sub_26738114C();
  v101 = v135;
  v98(v8, 0, 1, v135);
  v102 = sub_2673811AC();
  sub_266EC637C(v8, v126, v125 | 0x8000000000000000);
  v102(v136, 0);
  v125 = "taskAbandonCountInUsingApp1Hr";
  v103 = v127;
  v104 = v133;
  v133(v127, v94, v100);
  v136[0] = 1;
  sub_26738114C();
  v98(v8, 0, 1, v101);
  v105 = v98;
  v106 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v125 | 0x8000000000000000);
  v106(v136, 0);
  v125 = "taskAbandonCountInUsingApp6Hrs";
  v107 = v134;
  v108 = v128;
  v104(v103, v134, v128);
  v136[0] = 1;
  sub_26738114C();
  v109 = v135;
  v105(v8, 0, 1, v135);
  v110 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, v125 | 0x8000000000000000);
  v110(v136, 0);
  v125 = "taskAbandonCountInUsingApp1Day";
  v111 = v127;
  v104(v127, v107, v108);
  v136[0] = 1;
  sub_26738114C();
  v112 = v109;
  v113 = v129;
  v129(v8, 0, 1, v112);
  v114 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001FLL, v125 | 0x8000000000000000);
  v114(v136, 0);
  v125 = "taskAbandonCountInUsingApp7Days";
  v115 = v134;
  v116 = v128;
  v104(v111, v134, v128);
  v136[0] = 1;
  sub_26738114C();
  v113(v8, 0, 1, v135);
  v117 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, v125 | 0x8000000000000000);
  v117(v136, 0);
  v125 = "InUsingApp14Days";
  v104(v111, v115, v116);
  v136[0] = 1;
  sub_26738114C();
  v118 = v135;
  v113(v8, 0, 1, v135);
  v119 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000020, v125 | 0x8000000000000000);
  v119(v136, 0);
  v104(v111, v134, v128);
  v136[0] = 1;
  sub_26738114C();
  v113(v8, 0, 1, v118);
  v120 = sub_2673811AC();
  sub_266EC637C(v8, v126, 0x800000026744A200);
  return v120(v136, 0);
}