uint64_t sub_266F1C380(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1C3E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPCDMReplaySampleEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v13[1] = a1;
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v13 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  (*(v2 + 104))(v4, *MEMORY[0x277D3E4E8], v1);
  v14[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000012, 0x80000002674262F0);
  v10(v14, 0);
  sub_266ECB294(0, &qword_2800EFBC0, 0x277D56DF8);
  sub_266ECAF2C(&qword_2800EFBC8, &qword_2800EFBC0, 0x277D56DF8, &protocol conformance descriptor for CLPInstSchemaServiceNodeComparatorResult);
  sub_26738122C();
  v9(v7, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x8000000267426310);
  return v11(v14, 0);
}

uint64_t sub_266F1C7C4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1C828(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPCDMReplaySampleFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CLPInstSchemaCLPError(0);
  sub_266F1CD18(&qword_2800EFBD0, type metadata accessor for CLPInstSchemaCLPError, &protocol conformance descriptor for CLPInstSchemaCLPError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F1CA88(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CLPInstSchemaCLPError(0);
  sub_266F1CD18(&qword_2800EFBD0, type metadata accessor for CLPInstSchemaCLPError, &protocol conformance descriptor for CLPInstSchemaCLPError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F1CC0C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1CC70(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F1CD18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F1CD60()
{
  result = qword_2800EFBA0;
  if (!qword_2800EFBA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFBA0);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPCDMReplaySampleStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v31 = a1;
  v33 = sub_26738113C();
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v29 = v7;
  v30 = v8;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v28 = *(v10 + 56);
  v32 = v10 + 56;
  v26 = v9;
  v28(v6, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674263B0);
  v11(v34, 0);
  v12 = *MEMORY[0x277D3E530];
  v27 = *(v1 + 104);
  v13 = v33;
  v27(v3, v12, v33);
  v34[0] = 1;
  sub_26738114C();
  v14 = v9;
  v15 = v28;
  v28(v6, 0, 1, v14);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674206D0);
  v16(v34, 0);
  v25 = "originalRequestId";
  v17 = v13;
  v18 = v27;
  v27(v3, *MEMORY[0x277D3E538], v17);
  v34[0] = 1;
  sub_26738114C();
  v19 = v26;
  v15(v6, 0, 1, v26);
  v20 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000022, v25 | 0x8000000000000000);
  v20(v34, 0);
  v18(v3, *MEMORY[0x277D3E4E8], v33);
  v34[0] = 1;
  sub_26738114C();
  v15(v6, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000021, 0x8000000267426400);
  v21(v34, 0);
  sub_26738120C();
  v15(v6, 0, 1, v19);
  v22 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449707274, 0xE500000000000000);
  return v22(v34, 0);
}

uint64_t sub_266F1D324(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1D388(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPCDMReplayTaskContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EFBD8, 0x277D56D68);
  sub_266ECAF2C(&qword_2800EFBE0, &qword_2800EFBD8, 0x277D56D68, &protocol conformance descriptor for CLPInstSchemaCLPCDMReplayTaskStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800EFBE8, 0x277D56D60);
  sub_266ECAF2C(&qword_2800EFBF0, &qword_2800EFBE8, 0x277D56D60, &protocol conformance descriptor for CLPInstSchemaCLPCDMReplayTaskEnded);
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

uint64_t sub_266F1D878(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1D8DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPCDMReplayTaskEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0xD000000000000013, 0x8000000267426490);
  return v8(v10, 0);
}

uint64_t sub_266F1DBD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1DC34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F1DC98()
{
  result = qword_2800EFBF0;
  if (!qword_2800EFBF0)
  {
    sub_266F1DCF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFBF0);
  }

  return result;
}

unint64_t sub_266F1DCF0()
{
  result = qword_2800EFBE8;
  if (!qword_2800EFBE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFBE8);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPCDMReplayTaskStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798, &protocol conformance descriptor for SISchemaAsset);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x61546E6967756C70, 0xEF74657373416B73);
  v6(v11, 0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000013, 0x80000002674264E0);
  v7(v11, 0);
  type metadata accessor for CLPInstSchemaCLPReplayType(0);
  sub_266F1E1F8();
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v8 = sub_2673811AC();
  sub_266EC637C(v3, 0x795479616C706572, 0xEA00000000006570);
  v8(v11, 0);
  sub_266ECB294(0, &qword_2800EFC10, 0x277D56DF0);
  sub_266ECAF2C(&qword_2800EFC18, &qword_2800EFC10, 0x277D56DF0, &protocol conformance descriptor for CLPInstSchemaHabitualUsageByCalendarWeekInformation);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v9 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C61757469626168, 0xED00006567617355);
  return v9(v11, 0);
}

uint64_t sub_266F1E134(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1E198(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F1E1F8()
{
  result = qword_2800EFC08;
  if (!qword_2800EFC08)
  {
    type metadata accessor for CLPInstSchemaCLPReplayType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFC08);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EFC20, 0x277D56D78);
  sub_266ECAF2C(&qword_2800EFC28, &qword_2800EFC20, 0x277D56D78, &protocol conformance descriptor for CLPInstSchemaCLPClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v28, 0);
  sub_266ECB294(0, &qword_2800EFC30, 0x277D56DB8);
  sub_266ECAF2C(&qword_2800EFC38, &qword_2800EFC30, 0x277D56DB8, &protocol conformance descriptor for CLPInstSchemaCLPNLv4SampleEvaluationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001BLL, 0x8000000267426530);
  v9(v28, 0);
  sub_266ECB294(0, &qword_2800EFC40, 0x277D56DD8);
  sub_266ECAF2C(&qword_2800EFC48, &qword_2800EFC40, 0x277D56DD8, &protocol conformance descriptor for CLPInstSchemaCLPNLv4TaskEvaluationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000019, 0x8000000267426550);
  v10(v28, 0);
  sub_266ECB294(0, &qword_2800EFC50, 0x277D56D80);
  sub_266ECAF2C(&qword_2800EFC58, &qword_2800EFC50, 0x277D56D80, &protocol conformance descriptor for CLPInstSchemaCLPCurareAppIntentSampleClassificationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v11 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000002ALL, 0x8000000267426570);
  v11(v28, 0);
  sub_266ECB294(0, &qword_2800EFC60, 0x277D56DA0);
  sub_266ECAF2C(&qword_2800EFC68, &qword_2800EFC60, 0x277D56DA0, &protocol conformance descriptor for CLPInstSchemaCLPCurareAppIntentTaskClassificationContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v12 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000028, 0x80000002674265A0);
  v12(v28, 0);
  sub_266ECB294(0, &qword_2800EFBB8, 0x277D56D38);
  sub_266ECAF2C(&qword_2800EFBB0, &qword_2800EFBB8, 0x277D56D38, &protocol conformance descriptor for CLPInstSchemaCLPCDMReplaySampleContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000016, 0x80000002674265D0);
  v13(v28, 0);
  sub_266ECB294(0, &qword_2800EFC00, 0x277D56D58);
  sub_266ECAF2C(&qword_2800EFBF8, &qword_2800EFC00, 0x277D56D58, &protocol conformance descriptor for CLPInstSchemaCLPCDMReplayTaskContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v14 = v25;
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000014, 0x80000002674265F0);
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
  sub_266ECB128(&unk_287884828);
  return sub_2673811CC();
}

uint64_t sub_266F1EAFC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F1EB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F1EC60(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1ECC4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F1ED24(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800EFC70, &qword_2800EFC78, 0x277D56D70, &protocol conformance descriptor for CLPInstSchemaCLPClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800EFC80, &qword_2800EFC78, 0x277D56D70, &protocol conformance descriptor for CLPInstSchemaCLPClientEvent);
  result = sub_266ECAF2C(&qword_2800EFC88, &qword_2800EFC78, 0x277D56D70, &protocol conformance descriptor for CLPInstSchemaCLPClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static CLPInstSchemaCLPClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0x6449706C63, 0xE500000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 0x6449706C63, 0xE500000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_287884858);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266F1F0BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1F120(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPComparatorName.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267426670, isUniquelyReferenced_nonNull_native);
  *v3 = v30;

  v1(v37, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x8000000267426690, v8);
  *v7 = v31;

  v5(v37, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v32 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x80000002674266B0, v12);
  *v11 = v32;

  v9(v37, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v33 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000002ALL, 0x80000002674266E0, v16);
  *v15 = v33;

  v13(v37, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v34 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000002BLL, 0x8000000267426710, v20);
  *v19 = v34;

  v17(v37, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000002ALL, 0x8000000267426740, v24);
  *v23 = v35;

  v21(v37, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002BLL, 0x8000000267426770, v28);
  *v27 = v36;

  return v25(v37, 0);
}

uint64_t sub_266F1F59C(uint64_t a1)
{
  v2 = sub_266F1F6A0(&qword_2800EFCA0, &protocol conformance descriptor for CLPInstSchemaCLPComparatorName);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F1F604(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F1F6A0(&qword_2800EFCA0, &protocol conformance descriptor for CLPInstSchemaCLPComparatorName);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F1F6A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPInstSchemaCLPComparatorName(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPCurareAppIntentSampleClassificationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EFCA8, 0x277D56D98);
  sub_266ECAF2C(&qword_2800EFCB0, &qword_2800EFCA8, 0x277D56D98, &protocol conformance descriptor for CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800EFCB8, 0x277D56D88);
  sub_266ECAF2C(&qword_2800EFCC0, &qword_2800EFCB8, 0x277D56D88, &protocol conformance descriptor for CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800EFCC8, 0x277D56D90);
  sub_266ECAF2C(&qword_2800EFCD0, &qword_2800EFCC8, 0x277D56D90, &protocol conformance descriptor for CLPInstSchemaCLPCurareAppIntentSampleClassificationFailed);
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

uint64_t sub_266F1FCC0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F1FD24(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPCurareAppIntentSampleClassificationEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x6C696261626F7270, 0xEB00000000797469);
  return v8(v10, 0);
}

uint64_t sub_266F2001C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F20080(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F200E4()
{
  result = qword_2800EFCC0;
  if (!qword_2800EFCC0)
  {
    sub_266F2013C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFCC0);
  }

  return result;
}

unint64_t sub_266F2013C()
{
  result = qword_2800EFCB8;
  if (!qword_2800EFCB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFCB8);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPCurareAppIntentSampleClassificationFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v8(v10, 0);
}

uint64_t sub_266F203D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2043C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F204A0()
{
  result = qword_2800EFCD0;
  if (!qword_2800EFCD0)
  {
    sub_266F204F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFCD0);
  }

  return result;
}

unint64_t sub_266F204F8()
{
  result = qword_2800EFCC8;
  if (!qword_2800EFCC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFCC8);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPCurareAppIntentSampleClassificationStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0xD000000000000011, 0x80000002674263B0);
  return v5(v7, 0);
}

uint64_t sub_266F2073C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F207A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPCurareAppIntentTaskClassificationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EFCD8, 0x277D56DB0);
  sub_266ECAF2C(&qword_2800EFCE0, &qword_2800EFCD8, 0x277D56DB0, &protocol conformance descriptor for CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800EFCE8, 0x277D56DA8);
  sub_266ECAF2C(&qword_2800EFCF0, &qword_2800EFCE8, 0x277D56DA8, &protocol conformance descriptor for CLPInstSchemaCLPCurareAppIntentTaskClassificationEnded);
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

uint64_t sub_266F20C90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F20CF4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPCurareAppIntentTaskClassificationEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v24 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E538];
  v10 = *(v3 + 104);
  v26 = v3 + 104;
  v23 = v9;
  v10(v5, v9, v2);
  v11 = v10;
  v22 = v10;
  v27[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v8, 0, 1, v12);
  v14 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6F43656C706D6173, 0xEB00000000746E75);
  v15(v27, 0);
  v21 = "assificationEnded";
  v16 = v9;
  v17 = v25;
  v11(v5, v16, v25);
  v27[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v21 | 0x8000000000000000);
  v18(v27, 0);
  v22(v5, v23, v17);
  v27[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x6576697469736F70, 0xED0000746E756F43);
  return v19(v27, 0);
}

uint64_t sub_266F211A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2120C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F21270()
{
  result = qword_2800EFCF0;
  if (!qword_2800EFCF0)
  {
    sub_266F212C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFCF0);
  }

  return result;
}

unint64_t sub_266F212C8()
{
  result = qword_2800EFCE8;
  if (!qword_2800EFCE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFCE8);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPCurareAppIntentTaskClassificationStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CLPInstSchemaCLPAppIntentClassifierModelType(0);
  sub_266F21790();
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v14[0] = a2;
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000013, 0x80000002674269F0);
  v9(v15, 0);
  sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798, &protocol conformance descriptor for SISchemaAsset);
  v14[1] = a1;
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x8000000267426A10);
  v10(v15, 0);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x8000000267426A30);
  v11(v15, 0);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000018, 0x8000000267426A50);
  return v12(v15, 0);
}

uint64_t sub_266F216CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F21730(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F21790()
{
  result = qword_2800EFB70;
  if (!qword_2800EFB70)
  {
    type metadata accessor for CLPInstSchemaCLPAppIntentClassifierModelType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFB70);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPError.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000010, 0x8000000267426AA0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267426AC0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267426AE0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000021, 0x8000000267426B00, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266F21AB4(uint64_t a1)
{
  v2 = sub_266F21BB8(&qword_2800EFCF8, &protocol conformance descriptor for CLPInstSchemaCLPError);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F21B1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F21BB8(&qword_2800EFCF8, &protocol conformance descriptor for CLPInstSchemaCLPError);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F21BB8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPInstSchemaCLPError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPEvaluationEnvironment.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000020, 0x8000000267426B70, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000020, 0x8000000267426BA0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267426BD0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x8000000267426BF0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266F21E84(uint64_t a1)
{
  v2 = sub_266F21F88(&qword_2800EFD08, &protocol conformance descriptor for CLPInstSchemaCLPEvaluationEnvironment);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F21EEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F21F88(&qword_2800EFD08, &protocol conformance descriptor for CLPInstSchemaCLPEvaluationEnvironment);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F21F88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPInstSchemaCLPEvaluationEnvironment(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPEvaluationType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267426C40, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000016, 0x8000000267426C60, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_266F22170(uint64_t a1)
{
  v2 = sub_266F22274(&qword_2800EFD18, &protocol conformance descriptor for CLPInstSchemaCLPEvaluationType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F221D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F22274(&qword_2800EFD18, &protocol conformance descriptor for CLPInstSchemaCLPEvaluationType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F22274(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPInstSchemaCLPEvaluationType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPExperimentType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000019, 0x8000000267426CB0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267426CD0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000023, 0x8000000267426CF0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000018, 0x8000000267426D20, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266F22540(uint64_t a1)
{
  v2 = sub_266F22644(&qword_2800EFD28, &protocol conformance descriptor for CLPInstSchemaCLPExperimentType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F225A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F22644(&qword_2800EFD28, &protocol conformance descriptor for CLPInstSchemaCLPExperimentType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F22644(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPInstSchemaCLPExperimentType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPNLv4SampleEvaluationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EFD30, 0x277D56DD0);
  sub_266ECAF2C(&qword_2800EFD38, &qword_2800EFD30, 0x277D56DD0, &protocol conformance descriptor for CLPInstSchemaCLPNLv4SampleEvaluationStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800EFD40, 0x277D56DC0);
  sub_266ECAF2C(&qword_2800EFD48, &qword_2800EFD40, 0x277D56DC0, &protocol conformance descriptor for CLPInstSchemaCLPNLv4SampleEvaluationEnded);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0x6465646E65, 0xE500000000000000);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800EFD50, 0x277D56DC8);
  sub_266ECAF2C(&qword_2800EFD58, &qword_2800EFD50, 0x277D56DC8, &protocol conformance descriptor for CLPInstSchemaCLPNLv4SampleEvaluationFailed);
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

uint64_t sub_266F22C64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F22CC8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPNLv4SampleEvaluationEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26738113C();
  v41 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  v37 = a1;
  sub_26738119C();
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v38 = v10;
  v39 = v3 + 104;
  v42[0] = 1;
  sub_26738114C();
  v40 = sub_26738116C();
  v11 = *(v40 - 8);
  v35 = *(v11 + 56);
  v12 = v11 + 56;
  v35(v8, 0, 1, v40);
  v36 = v12;
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x657461756C617665, 0xE900000000000064);
  v13(v42, 0);
  v33 = "ampleEvaluationEnded";
  v14 = v9;
  v15 = v9;
  v34 = v9;
  v16 = v41;
  v10(v5, v14, v41);
  v42[0] = 1;
  sub_26738114C();
  v17 = v40;
  v18 = v35;
  v35(v8, 0, 1, v40);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, v33 | 0x8000000000000000);
  v19(v42, 0);
  v20 = v16;
  v21 = v38;
  v38(v5, v15, v20);
  v42[0] = 1;
  sub_26738114C();
  v18(v8, 0, 1, v17);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x8000000267426DF0);
  v22(v42, 0);
  v23 = v41;
  v21(v5, *MEMORY[0x277D3E508], v41);
  v42[0] = 1;
  sub_26738114C();
  v24 = v40;
  v25 = v35;
  v35(v8, 0, 1, v40);
  v26 = sub_2673811AC();
  sub_266EC637C(v8, 0x496465686374616DLL, 0xEC0000007865646ELL);
  v26(v42, 0);
  v33 = "TheFirstUserParse";
  v27 = v34;
  v28 = v38;
  v38(v5, v34, v23);
  v42[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v24);
  v29 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, v33 | 0x8000000000000000);
  v29(v42, 0);
  v28(v5, v27, v41);
  v42[0] = 1;
  sub_26738114C();
  v25(v8, 0, 1, v40);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267426E40);
  return v30(v42, 0);
}

uint64_t sub_266F233DC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F23440(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F234A4()
{
  result = qword_2800EFD48;
  if (!qword_2800EFD48)
  {
    sub_266F234FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFD48);
  }

  return result;
}

unint64_t sub_266F234FC()
{
  result = qword_2800EFD40;
  if (!qword_2800EFD40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFD40);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPNLv4SampleEvaluationFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v21 = a1;
  sub_26738119C();
  v24 = "ampleEvaluationFailed";
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v26 = v3 + 104;
  v23 = v9;
  v10(v5, v9, v2);
  v11 = v10;
  v22 = v10;
  v27[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v8, 0, 1, v12);
  v14 = v13;
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, v24 | 0x8000000000000000);
  v15(v27, 0);
  v24 = "userProfileSandboxFailure";
  v16 = v9;
  v17 = v25;
  v11(v5, v16, v25);
  v27[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v12);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, v24 | 0x8000000000000000);
  v18(v27, 0);
  v22(v5, v23, v17);
  v27[0] = 1;
  sub_26738114C();
  v14(v8, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267426EE0);
  return v19(v27, 0);
}

uint64_t sub_266F2395C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F239C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F23A24()
{
  result = qword_2800EFD58;
  if (!qword_2800EFD58)
  {
    sub_266F23A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFD58);
  }

  return result;
}

unint64_t sub_266F23A7C()
{
  result = qword_2800EFD50;
  if (!qword_2800EFD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFD50);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPNLv4SampleEvaluationStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  v10 = *MEMORY[0x277D3E538];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  v21[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6D754E6863746162, 0xEE00736B6E756843);
  v14(v21, 0);
  v11(v6, v10, v19);
  v21[0] = 1;
  sub_26738114C();
  v13(v9, 0, 1, v12);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x7568436863746162, 0xEC00000064496B6ELL);
  v15(v21, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v16 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000012, 0x8000000267426F40);
  return v16(v21, 0);
}

uint64_t sub_266F23ED0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F23F34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPNLv4TaskEvaluationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EFD60, 0x277D56DE8);
  sub_266ECAF2C(&qword_2800EFD68, &qword_2800EFD60, 0x277D56DE8, &protocol conformance descriptor for CLPInstSchemaCLPNLv4TaskEvaluationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800EFD70, 0x277D56DE0);
  sub_266ECAF2C(&qword_2800EFD78, &qword_2800EFD70, 0x277D56DE0, &protocol conformance descriptor for CLPInstSchemaCLPNLv4TaskEvaluationEnded);
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

uint64_t sub_266F24424(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F24488(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CLPInstSchemaCLPNLv4TaskEvaluationEnded.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v20 = "askEvaluationEnded";
  v9 = *MEMORY[0x277D3E518];
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
  sub_266EC637C(v8, 0xD000000000000020, v20 | 0x8000000000000000);
  v13(v23, 0);
  v20 = "stUserParseCount";
  v14 = v21;
  v21(v5, v9, v2);
  v23[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, v20 | 0x8000000000000000);
  v15(v23, 0);
  v14(v5, *MEMORY[0x277D3E538], v2);
  v23[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v19);
  v16 = sub_2673811AC();
  sub_266EC637C(v8, 0x697461756C617665, 0xEF746E756F436E6FLL);
  return v16(v23, 0);
}

uint64_t sub_266F2493C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F249A0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F24A04()
{
  result = qword_2800EFD78;
  if (!qword_2800EFD78)
  {
    sub_266F24A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFD78);
  }

  return result;
}

unint64_t sub_266F24A5C()
{
  result = qword_2800EFD70;
  if (!qword_2800EFD70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFD70);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPNLv4TaskEvaluationStarted.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738113C();
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  MEMORY[0x28223BE20](v4);
  v29 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v28 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CLPInstSchemaCLPEvaluationType(0);
  sub_266F253D0(&qword_2800EFD10, type metadata accessor for CLPInstSchemaCLPEvaluationType, &protocol conformance descriptor for CLPInstSchemaCLPEvaluationType);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v9, 0x697461756C617665, 0xEE00657079546E6FLL);
  v12(v32, 0);
  type metadata accessor for CLPInstSchemaCLPEvaluationEnvironment(0);
  sub_266F253D0(&qword_2800EFD00, type metadata accessor for CLPInstSchemaCLPEvaluationEnvironment, &protocol conformance descriptor for CLPInstSchemaCLPEvaluationEnvironment);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x8000000267427070);
  v13(v32, 0);
  type metadata accessor for CLPInstSchemaCLPExperimentType(0);
  sub_266F253D0(&qword_2800EFD20, type metadata accessor for CLPInstSchemaCLPExperimentType, &protocol conformance descriptor for CLPInstSchemaCLPExperimentType);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x656D697265707865, 0xEE0065707954746ELL);
  v14(v32, 0);
  type metadata accessor for CLPInstSchemaCLPRecipeType(0);
  sub_266F253D0(&qword_2800EFD80, type metadata accessor for CLPInstSchemaCLPRecipeType, &protocol conformance descriptor for CLPInstSchemaCLPRecipeType);
  v28[4] = a1;
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v28[1] = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x7954657069636572, 0xEA00000000006570);
  v15(v32, 0);
  v16 = sub_266ECB294(0, &qword_2800EF7C0, 0x277D5A798);
  v17 = sub_266ECAF2C(&qword_2800EF7C8, &qword_2800EF7C0, 0x277D5A798, &protocol conformance descriptor for SISchemaAsset);
  v28[2] = v16;
  v28[3] = v17;
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v18 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000010, 0x8000000267426A30);
  v18(v32, 0);
  v19 = *MEMORY[0x277D3E538];
  v20 = v30;
  v21 = *(v31 + 104);
  v31 += 104;
  v22 = v29;
  v21(v29, v19, v30);
  v32[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v23 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F43656C706D6173, 0xEB00000000746E75);
  v23(v32, 0);
  v21(v22, *MEMORY[0x277D3E4E8], v20);
  v32[0] = 1;
  sub_26738114C();
  v11(v9, 0, 1, v10);
  v24 = sub_2673811AC();
  sub_266EC637C(v9, 0x5467756265447369, 0xEB000000006B7361);
  v24(v32, 0);
  v31 = "evaluationEnvironment";
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v31 | 0x8000000000000000);
  v25(v32, 0);
  sub_26738120C();
  v11(v9, 0, 1, v10);
  v26 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000018, 0x8000000267426A50);
  return v26(v32, 0);
}

uint64_t sub_266F2530C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F25370(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F253D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static CLPInstSchemaCLPRecipeType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x80000002674270E0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000019, 0x8000000267427100, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ALL, 0x8000000267427120, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266F25670(uint64_t a1)
{
  v2 = sub_266F25774(&qword_2800EFD88, &protocol conformance descriptor for CLPInstSchemaCLPRecipeType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F256D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F25774(&qword_2800EFD88, &protocol conformance descriptor for CLPInstSchemaCLPRecipeType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F25774(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPInstSchemaCLPRecipeType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CLPInstSchemaCLPReplayType.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000015, 0x8000000267427170, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000014, 0x8000000267427190, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000015, 0x80000002674271B0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000001DLL, 0x80000002674271D0, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266F25A40(uint64_t a1)
{
  v2 = sub_266F25B44(&qword_2800EFD90, &protocol conformance descriptor for CLPInstSchemaCLPReplayType);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F25AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F25B44(&qword_2800EFD90, &protocol conformance descriptor for CLPInstSchemaCLPReplayType);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F25B44(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLPInstSchemaCLPReplayType(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CLPInstSchemaHabitualUsageByCalendarWeekInformation.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v16 = "UsageByCalendarWeekInformation";
  v9 = *(v3 + 104);
  v9(v5, *MEMORY[0x277D3E538], v2);
  v17[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, v16 | 0x8000000000000000);
  v12(v17, 0);
  v9(v5, *MEMORY[0x277D3E4E8], v2);
  v17[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000021, 0x8000000267426400);
  return v13(v17, 0);
}

uint64_t sub_266F25EBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F25F20(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F25F84()
{
  result = qword_2800EFC18;
  if (!qword_2800EFC18)
  {
    sub_266F25FDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFC18);
  }

  return result;
}

unint64_t sub_266F25FDC()
{
  result = qword_2800EFC10;
  if (!qword_2800EFC10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFC10);
  }

  return result;
}

uint64_t static CLPInstSchemaServiceNodeComparatorResult.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v23 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CLPInstSchemaCLPComparatorName(0);
  sub_266F266EC(&qword_2800EFC98, type metadata accessor for CLPInstSchemaCLPComparatorName, &protocol conformance descriptor for CLPInstSchemaCLPComparatorName);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v28 = *(v9 + 56);
  v10 = v9 + 56;
  v26 = v8;
  v28(v7, 0, 1, v8);
  v29 = v10;
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x74617261706D6F63, 0xEE00656D614E726FLL);
  v11(v31, 0);
  v23 = "odeComparatorResult";
  v12 = *MEMORY[0x277D3E4E8];
  v27 = *(v2 + 104);
  v30 = v2 + 104;
  v25 = v12;
  v24 = v1;
  v27(v4, v12, v1);
  v31[0] = 1;
  sub_26738114C();
  v13 = v28;
  v28(v7, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v23 | 0x8000000000000000);
  v14(v31, 0);
  v23 = "isValidOriginalItem";
  v15 = v27;
  v27(v4, v12, v1);
  v31[0] = 1;
  sub_26738114C();
  v16 = v26;
  v17 = v13;
  v13(v7, 0, 1, v26);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v23 | 0x8000000000000000);
  v18(v31, 0);
  v19 = v24;
  v15(v4, v25, v24);
  v31[0] = 1;
  sub_26738114C();
  v13(v7, 0, 1, v16);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0x65686374614D7369, 0xE900000000000064);
  v20(v31, 0);
  v15(v4, *MEMORY[0x277D3E540], v19);
  v31[0] = 1;
  sub_26738114C();
  v17(v7, 0, 1, v16);
  v21 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000010, 0x80000002674272D0);
  return v21(v31, 0);
}

uint64_t sub_266F265E0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F26644(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F266EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F26734()
{
  result = qword_2800EFBC0;
  if (!qword_2800EFBC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFBC0);
  }

  return result;
}

uint64_t static CMSchemaCMClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EFD98, 0x277D56E08);
  sub_266ECAF2C(&qword_2800EFDA0, &qword_2800EFD98, 0x277D56E08, &protocol conformance descriptor for CMSchemaCMClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800EFDA8, 0x277D56E30);
  sub_266ECAF2C(&qword_2800EFDB0, &qword_2800EFDA8, 0x277D56E30, &protocol conformance descriptor for CMSchemaCMSearchContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x6F43686372616573, 0xED0000747865746ELL);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800EFDB8, 0x277D56E10);
  sub_266ECAF2C(&qword_2800EFDC0, &qword_2800EFDB8, 0x277D56E10, &protocol conformance descriptor for CMSchemaCMInsertContext);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  v11 = v21;
  sub_266EC637C(v5, 0x6F43747265736E69, 0xED0000747865746ELL);
  v10(v24, 0);
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
  (*(v22 + 32))(v15 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, v11, v23);
  v12(v24, 0);
  sub_266ECB128(&unk_287884888);
  return sub_2673811CC();
}

uint64_t sub_266F26C8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F26D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F26DF0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F26E54(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F26EB4(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800EFDC8, &qword_2800EFDD0, 0x277D56E00, &protocol conformance descriptor for CMSchemaCMClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800EFDD8, &qword_2800EFDD0, 0x277D56E00, &protocol conformance descriptor for CMSchemaCMClientEvent);
  result = sub_266ECAF2C(&qword_2800EFDE0, &qword_2800EFDD0, 0x277D56E00, &protocol conformance descriptor for CMSchemaCMClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static CMSchemaCMClientEventMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 1682533731, 0xE400000000000000);
  v6(v12, 0);
  v7 = sub_2673811AC();
  v8 = sub_266ECB6CC(v11, 1682533731, 0xE400000000000000);
  if (!(*(v5 + 48))(v9, 1, v4))
  {
    sub_266ECB128(&unk_2878848C0);
    sub_26738115C();
  }

  (v8)(v11, 0);
  return v7(v12, 0);
}

uint64_t sub_266F27248(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F272AC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CMSchemaCMError.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0x5F524F5252454D43, 0xEF4E574F4E4B4E55, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000012, 0x8000000267427370, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000018, 0x8000000267427390, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266F27570(uint64_t a1)
{
  v2 = sub_266F27674(&qword_2800EFDF8, &protocol conformance descriptor for CMSchemaCMError);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F275D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F27674(&qword_2800EFDF8, &protocol conformance descriptor for CMSchemaCMError);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F27674(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CMSchemaCMError(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CMSchemaCMInsertContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EFE00, 0x277D56E28);
  sub_266ECAF2C(&qword_2800EFE08, &qword_2800EFE00, 0x277D56E28, &protocol conformance descriptor for CMSchemaCMInsertStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800EFE10, 0x277D56E18);
  sub_266ECAF2C(&qword_2800EFE18, &qword_2800EFE10, 0x277D56E18, &protocol conformance descriptor for CMSchemaCMInsertEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800EFE20, 0x277D56E20);
  sub_266ECAF2C(&qword_2800EFE28, &qword_2800EFE20, 0x277D56E20, &protocol conformance descriptor for CMSchemaCMInsertFailed);
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

uint64_t sub_266F27BD0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F27C34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CMSchemaCMInsertEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F27F20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F27F84(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F27FE8()
{
  result = qword_2800EFE18;
  if (!qword_2800EFE18)
  {
    sub_266F28040();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFE18);
  }

  return result;
}

unint64_t sub_266F28040()
{
  result = qword_2800EFE10;
  if (!qword_2800EFE10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFE10);
  }

  return result;
}

uint64_t static CMSchemaCMInsertFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CMSchemaCMError(0);
  sub_266F284D8(&qword_2800EFDF0, type metadata accessor for CMSchemaCMError, &protocol conformance descriptor for CMSchemaCMError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F28248(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CMSchemaCMError(0);
  sub_266F284D8(&qword_2800EFDF0, type metadata accessor for CMSchemaCMError, &protocol conformance descriptor for CMSchemaCMError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F283CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F28430(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F284D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F28520()
{
  result = qword_2800EFE20;
  if (!qword_2800EFE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFE20);
  }

  return result;
}

uint64_t static CMSchemaCMInsertStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F287B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F28818(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F2887C()
{
  result = qword_2800EFE08;
  if (!qword_2800EFE08)
  {
    sub_266F288D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFE08);
  }

  return result;
}

unint64_t sub_266F288D4()
{
  result = qword_2800EFE00;
  if (!qword_2800EFE00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFE00);
  }

  return result;
}

uint64_t static CMSchemaCMSearchContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800EFE30, 0x277D56E48);
  sub_266ECAF2C(&qword_2800EFE38, &qword_2800EFE30, 0x277D56E48, &protocol conformance descriptor for CMSchemaCMSearchStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800EFE40, 0x277D56E38);
  sub_266ECAF2C(&qword_2800EFE48, &qword_2800EFE40, 0x277D56E38, &protocol conformance descriptor for CMSchemaCMSearchEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800EFE50, 0x277D56E40);
  sub_266ECAF2C(&qword_2800EFE58, &qword_2800EFE50, 0x277D56E40, &protocol conformance descriptor for CMSchemaCMSearchFailed);
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

uint64_t sub_266F28E38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F28E9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CMSchemaCMSearchEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v21 = sub_26738113C();
  v1 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v19 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CMSchemaCMSearchStrategy(0);
  sub_266F29520(&qword_2800EFE60, type metadata accessor for CMSchemaCMSearchStrategy, &protocol conformance descriptor for CMSchemaCMSearchStrategy);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x7453686372616573, 0xEE00796765746172);
  v8(v22, 0);
  v9 = *MEMORY[0x277D3E508];
  v10 = *(v1 + 104);
  v20 = v1 + 104;
  v11 = v19;
  v12 = v21;
  v10(v19, v9, v21);
  v22[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v13 = sub_2673811AC();
  sub_266EC637C(v5, 0x6F43746C75736572, 0xEB00000000746E75);
  v13(v22, 0);
  v18 = "iri.cm.CMSearchEnded";
  v14 = *MEMORY[0x277D3E518];
  v10(v11, v14, v12);
  v22[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v15 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000011, v18 | 0x8000000000000000);
  v15(v22, 0);
  v10(v11, v14, v21);
  v22[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v16 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x80000002674274F0);
  return v16(v22, 0);
}

uint64_t sub_266F29414(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F29478(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F29520(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F29568()
{
  result = qword_2800EFE40;
  if (!qword_2800EFE40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFE40);
  }

  return result;
}

uint64_t static CMSchemaCMSearchFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CMSchemaCMError(0);
  sub_266F29A00(&qword_2800EFDF0, type metadata accessor for CMSchemaCMError, &protocol conformance descriptor for CMSchemaCMError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F29770(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CMSchemaCMError(0);
  sub_266F29A00(&qword_2800EFDF0, type metadata accessor for CMSchemaCMError, &protocol conformance descriptor for CMSchemaCMError);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F298F4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F29958(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F29A00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F29A48()
{
  result = qword_2800EFE50;
  if (!qword_2800EFE50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFE50);
  }

  return result;
}

uint64_t static CMSchemaCMSearchStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F29CDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F29D40(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F29DA4()
{
  result = qword_2800EFE38;
  if (!qword_2800EFE38)
  {
    sub_266F29DFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFE38);
  }

  return result;
}

unint64_t sub_266F29DFC()
{
  result = qword_2800EFE30;
  if (!qword_2800EFE30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFE30);
  }

  return result;
}

uint64_t static CMSchemaCMSearchStrategy.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000018, 0x80000002674275A0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001CLL, 0x80000002674275C0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000022, 0x80000002674275E0, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266F2A05C(uint64_t a1)
{
  v2 = sub_266F2A160(&qword_2800EFE68, &protocol conformance descriptor for CMSchemaCMSearchStrategy);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F2A0C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F2A160(&qword_2800EFE68, &protocol conformance descriptor for CMSchemaCMSearchStrategy);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F2A160(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CMSchemaCMSearchStrategy(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVActionCandidate.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26738113C();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v31 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v9 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v10 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v35 = v9;
  v36 = v10;
  v34 = a1;
  sub_26738120C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x8000000267423200);
  v13(v43, 0);
  type metadata accessor for CNVSchemaCNVPlugin(0);
  sub_266F2A9C0();
  sub_26738120C();
  v33 = v11;
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0x6E6967756C70, 0xE600000000000000);
  v14(v43, 0);
  v32 = "iri.cnv.CNVActionCandidate";
  sub_26738121C();
  v12(v8, 0, 1, v11);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, v32 | 0x8000000000000000);
  v15(v43, 0);
  sub_26738121C();
  v16 = v33;
  v17 = v12;
  v12(v8, 0, 1, v33);
  v18 = sub_2673811AC();
  sub_266EC637C(v8, 0x644973656D6D6F70, 0xE800000000000000);
  v18(v43, 0);
  (*(v38 + 104))(v37, *MEMORY[0x277D3E538], v39);
  v43[0] = 1;
  sub_26738114C();
  v17(v8, 0, 1, v16);
  v19 = sub_2673811AC();
  sub_266EC637C(v8, 0x7974696E69666661, 0xED000065726F6353);
  v19(v43, 0);
  sub_266ECB294(0, &qword_2800EFE78, 0x277D56FB8);
  sub_266ECAF2C(&qword_2800EFE80, &qword_2800EFE78, 0x277D56FB8, &protocol conformance descriptor for CNVSchemaCNVLinkMetadata);
  sub_26738120C();
  v17(v8, 0, 1, v16);
  v20 = sub_2673811AC();
  v21 = v8;
  v22 = v40;
  sub_266EC637C(v21, 0x6174654D6B6E696CLL, 0xEC00000061746164);
  v20(v43, 0);
  sub_26738117C();
  v23 = sub_2673811BC();
  v25 = v24;
  v26 = *v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v26;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = sub_266ECAD54(0, v26[2] + 1, 1, v26);
    *v25 = v26;
  }

  v29 = v26[2];
  v28 = v26[3];
  if (v29 >= v28 >> 1)
  {
    v26 = sub_266ECAD54((v28 > 1), v29 + 1, 1, v26);
    *v25 = v26;
  }

  v26[2] = v29 + 1;
  (*(v41 + 32))(v26 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v29, v22, v42);
  return v23(v43, 0);
}

uint64_t sub_266F2A8FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2A960(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F2A9C0()
{
  result = qword_2800EFE70;
  if (!qword_2800EFE70)
  {
    type metadata accessor for CNVSchemaCNVPlugin(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800EFE70);
  }

  return result;
}

uint64_t static CNVSchemaCNVActionCandidatesCollated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EFE98, 0x277D57000);
  sub_266ECAF2C(&qword_2800EFEA0, &qword_2800EFE98, 0x277D57000, &protocol conformance descriptor for CNVSchemaCollatedActionCandidate);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, 0x80000002674276A0);
  return v5(v7, 0);
}

uint64_t sub_266F2AC54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2ACB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVActionCandidatesGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EFE90, 0x277D56E50);
  sub_266ECAF2C(&qword_2800EFE88, &qword_2800EFE90, 0x277D56E50, &protocol conformance descriptor for CNVSchemaCNVActionCandidate);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000010, 0x8000000267427700);
  return v5(v7, 0);
}

uint64_t sub_266F2AF54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2AFB8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVActionCandidatesGeneratedTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EFEC8, 0x277D56FC0);
  sub_266ECAF2C(&qword_2800EFED0, &qword_2800EFEC8, 0x277D56FC0, &protocol conformance descriptor for CNVSchemaCNVLinkMetadataTier1);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x617461646174656DLL, 0xED00003172656954);
  return v5(v7, 0);
}

uint64_t sub_266F2B23C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EFEC8, 0x277D56FC0);
  sub_266ECAF2C(&qword_2800EFED0, &qword_2800EFEC8, 0x277D56FC0, &protocol conformance descriptor for CNVSchemaCNVLinkMetadataTier1);
  sub_26738122C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x617461646174656DLL, 0xED00003172656954);
  return v5(v7, 0);
}

uint64_t sub_266F2B3E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2B448(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVBypassReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267427790, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001ELL, 0x80000002674277B0, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_266F2B690(uint64_t a1)
{
  v2 = sub_266F2B794(&qword_2800EFEF0, &protocol conformance descriptor for CNVSchemaCNVBypassReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F2B6F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F2B794(&qword_2800EFEF0, &protocol conformance descriptor for CNVSchemaCNVBypassReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F2B794(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNVSchemaCNVBypassReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVCancellationReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267427800, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000024, 0x8000000267427820, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000001ELL, 0x8000000267427850, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000022, 0x8000000267427870, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266F2BA5C(uint64_t a1)
{
  v2 = sub_266F2BB60(&qword_2800EFF00, &protocol conformance descriptor for CNVSchemaCNVCancellationReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F2BAC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F2BB60(&qword_2800EFF00, &protocol conformance descriptor for CNVSchemaCNVCancellationReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F2BB60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNVSchemaCNVCancellationReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v48 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EFF08, 0x277D56E78);
  sub_266ECAF2C(&qword_2800EFF10, &qword_2800EFF08, 0x277D56E78, &protocol conformance descriptor for CNVSchemaCNVClientEventMetadata);
  sub_26738120C();
  v9 = sub_26738116C();
  v49 = *(v9 - 8);
  v11 = v49 + 56;
  v10 = *(v49 + 56);
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x74654D746E657665, 0xED00006174616461);
  v12(v59, 0);
  sub_266ECB294(0, &qword_2800EFF18, 0x277D56F98);
  sub_266ECAF2C(&qword_2800EFF20, &qword_2800EFF18, 0x277D56F98, &protocol conformance descriptor for CNVSchemaCNVIntentReformationContext);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x80000002674278D0);
  v13(v59, 0);
  sub_266ECB294(0, &qword_2800EFF28, 0x277D56FF8);
  sub_266ECAF2C(&qword_2800EFF30, &qword_2800EFF28, 0x277D56FF8, &protocol conformance descriptor for CNVSchemaCNVUsoGraphTier1);
  v57 = a1;
  sub_26738121C();
  v50 = v10;
  v55 = v11;
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000010, 0x80000002674278F0);
  v14(v59, 0);
  v56 = a2;
  v15 = sub_2673811AC();
  v16 = sub_266ECB6CC(v58, 0xD000000000000010, 0x80000002674278F0);
  if (!(*(v49 + 48))(v17, 1, v9))
  {
    sub_266ECB128(&unk_2878848F0);
    sub_26738115C();
  }

  (v16)(v58, 0);
  v15(v59, 0);
  sub_266ECB294(0, &qword_2800EFF38, 0x277D56F50);
  sub_266ECAF2C(&qword_2800EFF40, &qword_2800EFF38, 0x277D56F50, &protocol conformance descriptor for CNVSchemaCNVIntentEagerExecutionContext);
  sub_26738121C();
  v18 = v9;
  v19 = v9;
  v20 = v50;
  v50(v8, 0, 1, v19);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267427910);
  v21(v59, 0);
  sub_266ECB294(0, &qword_2800EFF48, 0x277D56F78);
  sub_266ECAF2C(&qword_2800EFF50, &qword_2800EFF48, 0x277D56F78, &protocol conformance descriptor for CNVSchemaCNVIntentFinalExecutionContext);
  sub_26738121C();
  v20(v8, 0, 1, v18);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x8000000267427930);
  v22(v59, 0);
  sub_266ECB294(0, &qword_2800EFEC0, 0x277D56E60);
  sub_266ECAF2C(&qword_2800EFEB8, &qword_2800EFEC0, 0x277D56E60, &protocol conformance descriptor for CNVSchemaCNVActionCandidatesGenerated);
  sub_26738121C();
  v20(v8, 0, 1, v18);
  v23 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000019, 0x8000000267427950);
  v23(v59, 0);
  sub_266ECB294(0, &qword_2800EFEE0, 0x277D56E68);
  sub_266ECAF2C(&qword_2800EFED8, &qword_2800EFEE0, 0x277D56E68, &protocol conformance descriptor for CNVSchemaCNVActionCandidatesGeneratedTier1);
  sub_26738121C();
  v54 = v18;
  v20(v8, 0, 1, v18);
  v24 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x8000000267427970);
  v24(v59, 0);
  sub_266ECB294(0, &qword_2800EFEB0, 0x277D56E58);
  sub_266ECAF2C(&qword_2800EFEA8, &qword_2800EFEB0, 0x277D56E58, &protocol conformance descriptor for CNVSchemaCNVActionCandidatesCollated);
  sub_26738121C();
  v20(v8, 0, 1, v18);
  v25 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000018, 0x8000000267427990);
  v25(v59, 0);
  sub_266ECB294(0, &qword_2800EFF58, 0x277D56E88);
  sub_266ECAF2C(&qword_2800EFF60, &qword_2800EFF58, 0x277D56E88, &protocol conformance descriptor for CNVSchemaCNVDisambiguationContext);
  sub_26738121C();
  v26 = v54;
  v20(v8, 0, 1, v54);
  v27 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x80000002674279B0);
  v27(v59, 0);
  sub_266ECB294(0, &qword_2800EFF68, 0x277D56EC0);
  sub_266ECAF2C(&qword_2800EFF70, &qword_2800EFF68, 0x277D56EC0, &protocol conformance descriptor for CNVSchemaCNVExecutionOverridesEvaluated);
  sub_26738121C();
  v20(v8, 0, 1, v26);
  v28 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001BLL, 0x80000002674279D0);
  v28(v59, 0);
  sub_266ECB294(0, &qword_2800EFF78, 0x277D56EC8);
  sub_266ECAF2C(&qword_2800EFF80, &qword_2800EFF78, 0x277D56EC8, &protocol conformance descriptor for CNVSchemaCNVExecutionPrepareContext);
  sub_26738121C();
  v29 = v54;
  v20(v8, 0, 1, v54);
  v30 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000017, 0x80000002674279F0);
  v30(v59, 0);
  sub_266ECB294(0, &qword_2800EFF88, 0x277D56F28);
  sub_266ECAF2C(&qword_2800EFF90, &qword_2800EFF88, 0x277D56F28, &protocol conformance descriptor for CNVSchemaCNVFlowPluginLoadContext);
  sub_26738121C();
  v20(v8, 0, 1, v29);
  v31 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267427A10);
  v31(v59, 0);
  sub_266ECB294(0, &qword_2800EFF98, 0x277D56EE0);
  sub_266ECAF2C(&qword_2800EFFA0, &qword_2800EFF98, 0x277D56EE0, &protocol conformance descriptor for CNVSchemaCNVFindFlowContext);
  sub_26738121C();
  v20(v8, 0, 1, v29);
  v32 = sub_2673811AC();
  sub_266EC637C(v8, 0x776F6C46646E6966, 0xEF747865746E6F43);
  v32(v59, 0);
  sub_266ECB294(0, &qword_2800EFFA8, 0x277D56F10);
  sub_266ECAF2C(&qword_2800EFFB0, &qword_2800EFFA8, 0x277D56F10, &protocol conformance descriptor for CNVSchemaCNVFlowPluginInputContext);
  sub_26738121C();
  v20(v8, 0, 1, v29);
  v33 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267427A30);
  v33(v59, 0);
  sub_266ECB294(0, &qword_2800EFFB8, 0x277D56EF8);
  sub_266ECAF2C(&qword_2800EFFC0, &qword_2800EFFB8, 0x277D56EF8, &protocol conformance descriptor for CNVSchemaCNVFlowPluginExecutionContext);
  sub_26738121C();
  v20(v8, 0, 1, v29);
  v34 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ALL, 0x8000000267427A50);
  v34(v59, 0);
  sub_266ECB294(0, &qword_2800EFFC8, 0x277D56FE0);
  sub_266ECAF2C(&qword_2800EFFD0, &qword_2800EFFC8, 0x277D56FE0, &protocol conformance descriptor for CNVSchemaCNVPreFlowPrepareContext);
  sub_26738121C();
  v20(v8, 0, 1, v29);
  v35 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x8000000267427A70);
  v35(v59, 0);
  sub_266ECB294(0, &qword_2800EFFD8, 0x277D56FC8);
  sub_266ECAF2C(&qword_2800EFFE0, &qword_2800EFFD8, 0x277D56FC8, &protocol conformance descriptor for CNVSchemaCNVPostFlowPrepareContext);
  sub_26738121C();
  v20(v8, 0, 1, v29);
  v36 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267427A90);
  v36(v59, 0);
  sub_266ECB294(0, &qword_2800EFFE8, 0x277D56EA8);
  sub_266ECAF2C(&qword_2800EFFF0, &qword_2800EFFE8, 0x277D56EA8, &protocol conformance descriptor for CNVSchemaCNVExecutionCommitContext);
  sub_26738121C();
  v20(v8, 0, 1, v29);
  v37 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x8000000267427AB0);
  v37(v59, 0);
  sub_266ECB294(0, &qword_2800EFFF8, 0x277D56E80);
  sub_266ECAF2C(&qword_2800F0000, &qword_2800EFFF8, 0x277D56E80, &protocol conformance descriptor for CNVSchemaCNVDecisionEngineResponseReported);
  sub_26738121C();
  v20(v8, 0, 1, v29);
  v38 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001ELL, 0x8000000267427AD0);
  v38(v59, 0);
  v39 = v51;
  sub_26738117C();
  v40 = sub_2673811BC();
  v42 = v41;
  v43 = *v41;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v42 = v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v43 = sub_266ECAD54(0, v43[2] + 1, 1, v43);
    *v42 = v43;
  }

  v46 = v43[2];
  v45 = v43[3];
  if (v46 >= v45 >> 1)
  {
    v43 = sub_266ECAD54((v45 > 1), v46 + 1, 1, v43);
    *v42 = v43;
  }

  v43[2] = v46 + 1;
  (*(v52 + 32))(v43 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v46, v39, v53);
  v40(v59, 0);
  sub_266ECB128(&unk_287884918);
  return sub_2673811CC();
}

uint64_t sub_266F2CF28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F2CFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F2D08C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2D0F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F2D150(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F0008, &qword_2800F0010, 0x277D56E70, &protocol conformance descriptor for CNVSchemaCNVClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F0018, &qword_2800F0010, 0x277D56E70, &protocol conformance descriptor for CNVSchemaCNVClientEvent);
  result = sub_266ECAF2C(&qword_2800F0020, &qword_2800F0010, 0x277D56E70, &protocol conformance descriptor for CNVSchemaCNVClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static CNVSchemaCNVClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = sub_26738113C();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v29 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v38 = a1;
  v35 = v8;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v34 = *(v10 + 56);
  v34(v7, 0, 1, v9);
  v11 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449766E63, 0xE500000000000000);
  v11(v40, 0);
  v36 = a2;
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v39, 0x6449766E63, 0xE500000000000000);
  v14 = *(v10 + 48);
  v37 = v10 + 48;
  v33 = v14;
  if (!v14(v15, 1, v9))
  {
    sub_266ECB128(&unk_287884950);
    sub_26738115C();
  }

  (v13)(v39, 0);
  v12(v40, 0);
  (*(v30 + 104))(v31, *MEMORY[0x277D3E530], v32);
  v40[0] = 1;
  sub_26738114C();
  v16 = v34;
  v34(v7, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, 0x80000002674206D0);
  v17(v40, 0);
  sub_26738120C();
  v16(v7, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v7, 0x4974736575716572, 0xE900000000000064);
  v18(v40, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v39, 0x4974736575716572, 0xE900000000000064);
  if (!v33(v21, 1, v9))
  {
    sub_266ECB128(&unk_287884980);
    sub_26738115C();
  }

  (v20)(v39, 0);
  v19(v40, 0);
  sub_26738120C();
  v22 = v34;
  v34(v7, 0, 1, v9);
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0x6449707274, 0xE500000000000000);
  v23(v40, 0);
  sub_26738120C();
  v22(v7, 0, 1, v9);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0x6575716552627573, 0xEC00000064497473);
  v24(v40, 0);
  v25 = sub_2673811AC();
  v26 = sub_266ECB6CC(v39, 0x6575716552627573, 0xEC00000064497473);
  if (!v33(v27, 1, v9))
  {
    sub_266ECB128(&unk_2878849B0);
    sub_26738115C();
  }

  (v26)(v39, 0);
  return v25(v40, 0);
}

uint64_t sub_266F2D914(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2D978(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVDecisionEngineResponseReported.makeTypeManifestAndEnsureFields(in:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v3 = sub_26738113C();
  v25 = v3;
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = *MEMORY[0x277D3E530];
  v11 = *(v4 + 104);
  v26 = v4 + 104;
  v27 = v11;
  v11(v6, v10, v3);
  v30[0] = 1;
  sub_26738114C();
  v12 = sub_26738116C();
  v13 = *(*(v12 - 8) + 56);
  v13(v9, 0, 1, v12);
  v29 = v13;
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x646E6148776F6C66, 0xED0000644972656CLL);
  v14(v30, 0);
  v23 = "iri.cnv.CNVActionCandidate";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v13(v9, 0, 1, v12);
  v24 = a2;
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000011, v23 | 0x8000000000000000);
  v15(v30, 0);
  v28 = "ionEngineResponseReported";
  v16 = *MEMORY[0x277D3E4E8];
  v17 = v25;
  v18 = v27;
  v27(v6, v16, v25);
  v30[0] = 1;
  sub_26738114C();
  v29(v9, 0, 1, v12);
  v19 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000016, v28 | 0x8000000000000000);
  v19(v30, 0);
  v18(v6, v16, v17);
  v30[0] = 1;
  sub_26738114C();
  v29(v9, 0, 1, v12);
  v20 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000021, 0x8000000267423500);
  return v20(v30, 0);
}

uint64_t sub_266F2DF18(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2DF7C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVDisambiguationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F0030, 0x277D56E90);
  sub_266ECAF2C(&qword_2800F0038, &qword_2800F0030, 0x277D56E90, &protocol conformance descriptor for CNVSchemaCNVDisambiguationDialogGenerated);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F0040, 0x277D56EA0);
  sub_266ECAF2C(&qword_2800F0048, &qword_2800F0040, 0x277D56EA0, &protocol conformance descriptor for CNVSchemaCNVDisambiguationFollowupHandled);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0050, 0x277D56E98);
  sub_266ECAF2C(&qword_2800F0058, &qword_2800F0050, 0x277D56E98, &protocol conformance descriptor for CNVSchemaCNVDisambiguationFailed);
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

uint64_t sub_266F2E538(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2E59C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVDisambiguationDialogGenerated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_26738122C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000012, 0x8000000267424350);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x7954676F6C616964, 0xEA00000000006570);
  return v10(v14, 0);
}

uint64_t sub_266F2E97C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2E9E0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVDisambiguationFailed.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x646F43726F727265, 0xE900000000000065);
  return v8(v10, 0);
}

uint64_t sub_266F2ECD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2ED38(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F2ED9C()
{
  result = qword_2800F0058;
  if (!qword_2800F0058)
  {
    sub_266F2EDF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0058);
  }

  return result;
}

unint64_t sub_266F2EDF4()
{
  result = qword_2800F0050;
  if (!qword_2800F0050)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0050);
  }

  return result;
}

uint64_t static CNVSchemaCNVDisambiguationFollowupHandled.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v3, 0xD000000000000011, 0x8000000267423200);
  return v5(v7, 0);
}

uint64_t sub_266F2F038(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2F09C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVEagerStatus.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267427CA0, isUniquelyReferenced_nonNull_native);
  *v3 = v18;

  v1(v22, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000018, 0x8000000267427CC0, v8);
  *v7 = v19;

  v5(v22, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000014, 0x8000000267427CE0, v12);
  *v11 = v20;

  v9(v22, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000020, 0x8000000267427D00, v16);
  *v15 = v21;

  return v13(v22, 0);
}

uint64_t sub_266F2F3C4(uint64_t a1)
{
  v2 = sub_266F2F4C8(&qword_2800F0068, &protocol conformance descriptor for CNVSchemaCNVEagerStatus);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F2F42C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F2F4C8(&qword_2800F0068, &protocol conformance descriptor for CNVSchemaCNVEagerStatus);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F2F4C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNVSchemaCNVEagerStatus(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVExecutionCommitContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v28[1] = v7;
  v28[2] = a1;
  v28[0] = v8;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v6, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x49747865746E6F63, 0xE900000000000064);
  v12(v33, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v32, 0x49747865746E6F63, 0xE900000000000064);
  if (!(*(v10 + 48))(v15, 1, v9))
  {
    sub_266ECB128(&unk_2878849E0);
    sub_26738115C();
  }

  (v14)(v32, 0);
  v13(v33, 0);
  sub_266ECB294(0, &qword_2800F0070, 0x277D56EB8);
  sub_266ECAF2C(&qword_2800F0078, &qword_2800F0070, 0x277D56EB8, &protocol conformance descriptor for CNVSchemaCNVExecutionCommitStarted);
  sub_26738121C();
  v11(v6, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v16(v33, 0);
  sub_266ECB294(0, &qword_2800F0080, 0x277D56EB0);
  sub_266ECAF2C(&qword_2800F0088, &qword_2800F0080, 0x277D56EB0, &protocol conformance descriptor for CNVSchemaCNVExecutionCommitEnded);
  sub_26738121C();
  v11(v6, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v17(v33, 0);
  sub_26738120C();
  v11(v6, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x736568746F707968, 0xEC00000064497369);
  v18(v33, 0);
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

uint64_t sub_266F2FB58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2FBBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVExecutionCommitEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F2FEA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F2FF0C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F2FF70()
{
  result = qword_2800F0088;
  if (!qword_2800F0088)
  {
    sub_266F2FFC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0088);
  }

  return result;
}

unint64_t sub_266F2FFC8()
{
  result = qword_2800F0080;
  if (!qword_2800F0080)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0080);
  }

  return result;
}

uint64_t static CNVSchemaCNVExecutionCommitStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F3025C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F302C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F30324()
{
  result = qword_2800F0078;
  if (!qword_2800F0078)
  {
    sub_266F3037C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0078);
  }

  return result;
}

unint64_t sub_266F3037C()
{
  result = qword_2800F0070;
  if (!qword_2800F0070)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0070);
  }

  return result;
}

uint64_t static CNVSchemaCNVExecutionFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001BLL, 0x8000000267427E20, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267427E40, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000024, 0x8000000267427E70, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266F305DC(uint64_t a1)
{
  v2 = sub_266F306E0(&qword_2800F0098, &protocol conformance descriptor for CNVSchemaCNVExecutionFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F30644(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F306E0(&qword_2800F0098, &protocol conformance descriptor for CNVSchemaCNVExecutionFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F306E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNVSchemaCNVExecutionFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVExecutionOverrideDecision.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000024, 0x8000000267427EE0, isUniquelyReferenced_nonNull_native);
  *v3 = v34;

  v1(v42, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v35 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000044, 0x8000000267427F10, v8);
  *v7 = v35;

  v5(v42, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000025, 0x8000000267427F60, v12);
  *v11 = v36;

  v9(v42, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v37 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000035, 0x8000000267427F90, v16);
  *v15 = v37;

  v13(v42, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000004CLL, 0x8000000267427FD0, v20);
  *v19 = v38;

  v17(v42, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000043, 0x8000000267428020, v24);
  *v23 = v39;

  v21(v42, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v40 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000002FLL, 0x8000000267428070, v28);
  *v27 = v40;

  v25(v42, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v41 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000004BLL, 0x80000002674280A0, v32);
  *v31 = v41;

  return v29(v42, 0);
}

uint64_t sub_266F30B70(uint64_t a1)
{
  v2 = sub_266F30C74(&qword_2800F00A8, &protocol conformance descriptor for CNVSchemaCNVExecutionOverrideDecision);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F30BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F30C74(&qword_2800F00A8, &protocol conformance descriptor for CNVSchemaCNVExecutionOverrideDecision);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F30C74(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNVSchemaCNVExecutionOverrideDecision(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVExecutionOverridesEvaluated.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVExecutionOverrideDecision(0);
  sub_266F30FA8(&qword_2800F00A0, type metadata accessor for CNVSchemaCNVExecutionOverrideDecision, &protocol conformance descriptor for CNVSchemaCNVExecutionOverrideDecision);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000019, 0x8000000267428130);
  return v5(v7, 0);
}

uint64_t sub_266F30E9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F30F00(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F30FA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F30FF0()
{
  result = qword_2800EFF68;
  if (!qword_2800EFF68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800EFF68);
  }

  return result;
}

uint64_t static CNVSchemaCNVExecutionPrepareContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x28223BE20](v2);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v25 = a1;
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 56);
  v9(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x49747865746E6F63, 0xE900000000000064);
  v10(v30, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v29, 0x49747865746E6F63, 0xE900000000000064);
  if (!(*(v8 + 48))(v13, 1, v7))
  {
    sub_266ECB128(&unk_287884A08);
    sub_26738115C();
  }

  (v12)(v29, 0);
  v11(v30, 0);
  sub_266ECB294(0, &qword_2800F00B0, 0x277D56ED8);
  sub_266ECAF2C(&qword_2800F00B8, &qword_2800F00B0, 0x277D56ED8, &protocol conformance descriptor for CNVSchemaCNVExecutionPrepareStarted);
  sub_26738121C();
  v9(v6, 0, 1, v7);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v14(v30, 0);
  sub_266ECB294(0, &qword_2800F00C0, 0x277D56ED0);
  sub_266ECAF2C(&qword_2800F00C8, &qword_2800F00C0, 0x277D56ED0, &protocol conformance descriptor for CNVSchemaCNVExecutionPrepareEnded);
  sub_26738121C();
  v9(v6, 0, 1, v7);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v15(v30, 0);
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

uint64_t sub_266F31604(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F31668(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVExecutionPrepareEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F31954(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F319B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F31A1C()
{
  result = qword_2800F00C8;
  if (!qword_2800F00C8)
  {
    sub_266F31A74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F00C8);
  }

  return result;
}

unint64_t sub_266F31A74()
{
  result = qword_2800F00C0;
  if (!qword_2800F00C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F00C0);
  }

  return result;
}

uint64_t static CNVSchemaCNVExecutionPrepareStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F31D08(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F31D6C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F31DD0()
{
  result = qword_2800F00B8;
  if (!qword_2800F00B8)
  {
    sub_266F31E28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F00B8);
  }

  return result;
}

unint64_t sub_266F31E28()
{
  result = qword_2800F00B0;
  if (!qword_2800F00B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F00B0);
  }

  return result;
}

uint64_t static CNVSchemaCNVFindFlowContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v28[1] = v7;
  v28[2] = a1;
  v28[0] = v8;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v6, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x49747865746E6F63, 0xE900000000000064);
  v12(v33, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v32, 0x49747865746E6F63, 0xE900000000000064);
  if (!(*(v10 + 48))(v15, 1, v9))
  {
    sub_266ECB128(&unk_287884A30);
    sub_26738115C();
  }

  (v14)(v32, 0);
  v13(v33, 0);
  sub_266ECB294(0, &qword_2800F00D0, 0x277D56EF0);
  sub_266ECAF2C(&qword_2800F00D8, &qword_2800F00D0, 0x277D56EF0, &protocol conformance descriptor for CNVSchemaCNVFindFlowStarted);
  sub_26738121C();
  v11(v6, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v16(v33, 0);
  sub_266ECB294(0, &qword_2800F00E0, 0x277D56EE8);
  sub_266ECAF2C(&qword_2800F00E8, &qword_2800F00E0, 0x277D56EE8, &protocol conformance descriptor for CNVSchemaCNVFindFlowEnded);
  sub_26738121C();
  v11(v6, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v17(v33, 0);
  sub_26738120C();
  v11(v6, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x736568746F707968, 0xEC00000064497369);
  v18(v33, 0);
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

uint64_t sub_266F324C0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F32524(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVFindFlowEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F32810(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F32874(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F328D8()
{
  result = qword_2800F00E8;
  if (!qword_2800F00E8)
  {
    sub_266F32930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F00E8);
  }

  return result;
}

unint64_t sub_266F32930()
{
  result = qword_2800F00E0;
  if (!qword_2800F00E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F00E0);
  }

  return result;
}

uint64_t static CNVSchemaCNVFindFlowStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F32BC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F32C28(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F32C8C()
{
  result = qword_2800F00D8;
  if (!qword_2800F00D8)
  {
    sub_266F32CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F00D8);
  }

  return result;
}

unint64_t sub_266F32CE4()
{
  result = qword_2800F00D0;
  if (!qword_2800F00D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F00D0);
  }

  return result;
}

uint64_t static CNVSchemaCNVFlowPluginExecutionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F00F0, 0x277D56F08);
  sub_266ECAF2C(&qword_2800F00F8, &qword_2800F00F0, 0x277D56F08, &protocol conformance descriptor for CNVSchemaCNVFlowPluginExecutionStarted);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0xD000000000000010, 0x800000026741EB30);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F0100, 0x277D56F00);
  sub_266ECAF2C(&qword_2800F0108, &qword_2800F0100, 0x277D56F00, &protocol conformance descriptor for CNVSchemaCNVFlowPluginExecutionEnded);
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
  v12(v24, 0);
  sub_266ECB128(&unk_287884A58);
  return sub_2673811CC();
}

uint64_t sub_266F3325C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F332C0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVFlowPluginExecutionEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F335AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F33610(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F33674()
{
  result = qword_2800F0108;
  if (!qword_2800F0108)
  {
    sub_266F336CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0108);
  }

  return result;
}

unint64_t sub_266F336CC()
{
  result = qword_2800F0100;
  if (!qword_2800F0100)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0100);
  }

  return result;
}

uint64_t static CNVSchemaCNVFlowPluginExecutionStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F33960(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F339C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F33A28()
{
  result = qword_2800F00F8;
  if (!qword_2800F00F8)
  {
    sub_266F33A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F00F8);
  }

  return result;
}

unint64_t sub_266F33A80()
{
  result = qword_2800F00F0;
  if (!qword_2800F00F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F00F0);
  }

  return result;
}

uint64_t static CNVSchemaCNVFlowPluginInputContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v28 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v28[1] = v7;
  v28[2] = a1;
  v28[0] = v8;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v6, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x49747865746E6F63, 0xE900000000000064);
  v12(v33, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v32, 0x49747865746E6F63, 0xE900000000000064);
  if (!(*(v10 + 48))(v15, 1, v9))
  {
    sub_266ECB128(&unk_287884A80);
    sub_26738115C();
  }

  (v14)(v32, 0);
  v13(v33, 0);
  sub_266ECB294(0, &qword_2800F0110, 0x277D56F20);
  sub_266ECAF2C(&qword_2800F0118, &qword_2800F0110, 0x277D56F20, &protocol conformance descriptor for CNVSchemaCNVFlowPluginInputStarted);
  sub_26738121C();
  v11(v6, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v16(v33, 0);
  sub_266ECB294(0, &qword_2800F0120, 0x277D56F18);
  sub_266ECAF2C(&qword_2800F0128, &qword_2800F0120, 0x277D56F18, &protocol conformance descriptor for CNVSchemaCNVFlowPluginInputEnded);
  sub_26738121C();
  v11(v6, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v17(v33, 0);
  sub_26738120C();
  v11(v6, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x736568746F707968, 0xEC00000064497369);
  v18(v33, 0);
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

uint64_t sub_266F34118(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3417C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVFlowPluginInputEnded.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266EC637C(v6, 0x6369706F54736168, 0xEF6465676E616843);
  return v8(v10, 0);
}

uint64_t sub_266F34478(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F344DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F34540()
{
  result = qword_2800F0128;
  if (!qword_2800F0128)
  {
    sub_266F34598();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0128);
  }

  return result;
}

unint64_t sub_266F34598()
{
  result = qword_2800F0120;
  if (!qword_2800F0120)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0120);
  }

  return result;
}

uint64_t static CNVSchemaCNVFlowPluginInputStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F3482C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F34890(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F348F4()
{
  result = qword_2800F0118;
  if (!qword_2800F0118)
  {
    sub_266F3494C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0118);
  }

  return result;
}

unint64_t sub_266F3494C()
{
  result = qword_2800F0110;
  if (!qword_2800F0110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0110);
  }

  return result;
}

uint64_t static CNVSchemaCNVFlowPluginLoadContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v2 = sub_26738118C();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2);
  v30 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v29 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v7 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v8 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v29[1] = v7;
  v29[2] = a1;
  v29[0] = v8;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v6, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x49747865746E6F63, 0xE900000000000064);
  v12(v34, 0);
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v33, 0x49747865746E6F63, 0xE900000000000064);
  if (!(*(v10 + 48))(v15, 1, v9))
  {
    sub_266ECB128(&unk_287884AA8);
    sub_26738115C();
  }

  (v14)(v33, 0);
  v13(v34, 0);
  sub_266ECB294(0, &qword_2800F0130, 0x277D56F40);
  sub_266ECAF2C(&qword_2800F0138, &qword_2800F0130, 0x277D56F40, &protocol conformance descriptor for CNVSchemaCNVFlowPluginLoadContextStarted);
  sub_26738121C();
  v11(v6, 0, 1, v9);
  v16 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000010, 0x800000026741EB30);
  v16(v34, 0);
  sub_266ECB294(0, &qword_2800F0140, 0x277D56F30);
  sub_266ECAF2C(&qword_2800F0148, &qword_2800F0140, 0x277D56F30, &protocol conformance descriptor for CNVSchemaCNVFlowPluginLoadContextEnded);
  sub_26738121C();
  v11(v6, 0, 1, v9);
  v17 = sub_2673811AC();
  sub_266EC637C(v6, 0x6465646E65, 0xE500000000000000);
  v17(v34, 0);
  sub_266ECB294(0, &qword_2800F0150, 0x277D56F38);
  sub_266ECAF2C(&qword_2800F0158, &qword_2800F0150, 0x277D56F38, &protocol conformance descriptor for CNVSchemaCNVFlowPluginLoadContextFailed);
  sub_26738121C();
  v11(v6, 0, 1, v9);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x64656C696166, 0xE600000000000000);
  v18(v34, 0);
  sub_26738120C();
  v11(v6, 0, 1, v9);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0x736568746F707968, 0xEC00000064497369);
  v19(v34, 0);
  v20 = v30;
  sub_26738117C();
  v21 = sub_2673811BC();
  v23 = v22;
  v24 = *v22;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v23 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_266ECAD54(0, v24[2] + 1, 1, v24);
    *v23 = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_266ECAD54((v26 > 1), v27 + 1, 1, v24);
    *v23 = v24;
  }

  v24[2] = v27 + 1;
  (*(v31 + 32))(v24 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v27, v20, v32);
  return v21(v34, 0);
}

uint64_t sub_266F350AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F35110(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVFlowPluginLoadContextEnded.makeTypeManifestAndEnsureFields(in:)()
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
  v7 = *(v1 + 104);
  v19 = *MEMORY[0x277D3E4E8];
  v20 = v1 + 104;
  v21 = v0;
  v18 = v7;
  v7(v3);
  v23[0] = 1;
  sub_26738114C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v17 = *(v9 + 56);
  v17(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x737473697865, 0xE600000000000000);
  v10(v23, 0);
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v22, 0x737473697865, 0xE600000000000000);
  if (!(*(v9 + 48))(v13, 1, v8))
  {
    sub_266ECB128(&unk_287884AD0);
    sub_26738115C();
  }

  (v12)(v22, 0);
  v11(v23, 0);
  v18(v3, v19, v21);
  v23[0] = 1;
  sub_26738114C();
  v17(v6, 0, 1, v8);
  v14 = sub_2673811AC();
  sub_266EC637C(v6, 0x6967756C50736168, 0xEF6465686361436ELL);
  return v14(v23, 0);
}

uint64_t sub_266F35588(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F355EC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F35650()
{
  result = qword_2800F0148;
  if (!qword_2800F0148)
  {
    sub_266F356A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0148);
  }

  return result;
}

unint64_t sub_266F356A8()
{
  result = qword_2800F0140;
  if (!qword_2800F0140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0140);
  }

  return result;
}

uint64_t static CNVSchemaCNVFlowPluginLoadContextFailed.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v9(v5, *MEMORY[0x277D3E538], v2);
  v16[0] = 1;
  sub_26738114C();
  v10 = sub_26738116C();
  v11 = *(*(v10 - 8) + 56);
  v11(v8, 0, 1, v10);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0x646F43726F727265, 0xE900000000000065);
  v12(v16, 0);
  v9(v5, *MEMORY[0x277D3E4E8], v2);
  v16[0] = 1;
  sub_26738114C();
  v11(v8, 0, 1, v10);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0x6967756C50736168, 0xEF6465686361436ELL);
  return v13(v16, 0);
}

uint64_t sub_266F35A24(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F35A88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F35AEC()
{
  result = qword_2800F0158;
  if (!qword_2800F0158)
  {
    sub_266F35B44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0158);
  }

  return result;
}

unint64_t sub_266F35B44()
{
  result = qword_2800F0150;
  if (!qword_2800F0150)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0150);
  }

  return result;
}

uint64_t static CNVSchemaCNVFlowPluginLoadContextStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVPlugin(0);
  sub_266F35FDC(&qword_2800EFE70, type metadata accessor for CNVSchemaCNVPlugin, &protocol conformance descriptor for CNVSchemaCNVPlugin);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6967756C70, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F35D4C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVPlugin(0);
  sub_266F35FDC(&qword_2800EFE70, type metadata accessor for CNVSchemaCNVPlugin, &protocol conformance descriptor for CNVSchemaCNVPlugin);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6967756C70, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F35ED0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F35F34(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F35FDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F36024()
{
  result = qword_2800F0130;
  if (!qword_2800F0130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0130);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentEagerExecutionCancelled.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVCancellationReason(0);
  sub_266F36360(&qword_2800EFEF8, type metadata accessor for CNVSchemaCNVCancellationReason, &protocol conformance descriptor for CNVSchemaCNVCancellationReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267428550);
  return v5(v7, 0);
}

uint64_t sub_266F36254(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F362B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F36360(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F363A8()
{
  result = qword_2800F0168;
  if (!qword_2800F0168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0168);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentEagerExecutionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F0170, 0x277D56F68);
  sub_266ECAF2C(&qword_2800F0178, &qword_2800F0170, 0x277D56F68, &protocol conformance descriptor for CNVSchemaCNVIntentEagerExecutionStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v24, 0);
  sub_266ECB294(0, &qword_2800F0180, 0x277D56F58);
  sub_266ECAF2C(&qword_2800F0188, &qword_2800F0180, 0x277D56F58, &protocol conformance descriptor for CNVSchemaCNVIntentEagerExecutionEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v24, 0);
  sub_266ECB294(0, &qword_2800F0190, 0x277D56F60);
  sub_266ECAF2C(&qword_2800F0198, &qword_2800F0190, 0x277D56F60, &protocol conformance descriptor for CNVSchemaCNVIntentEagerExecutionFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v24, 0);
  sub_266ECB294(0, &qword_2800F0168, 0x277D56F48);
  sub_266ECAF2C(&qword_2800F0160, &qword_2800F0168, 0x277D56F48, &protocol conformance descriptor for CNVSchemaCNVIntentEagerExecutionCancelled);
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

uint64_t sub_266F369D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F36A3C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVIntentEagerExecutionEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F36D28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F36D8C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F36DF0()
{
  result = qword_2800F0188;
  if (!qword_2800F0188)
  {
    sub_266F36E48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0188);
  }

  return result;
}

unint64_t sub_266F36E48()
{
  result = qword_2800F0180;
  if (!qword_2800F0180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0180);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentEagerExecutionFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVExecutionFailureReason(0);
  sub_266F372E0(&qword_2800F0090, type metadata accessor for CNVSchemaCNVExecutionFailureReason, &protocol conformance descriptor for CNVSchemaCNVExecutionFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F37050(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVExecutionFailureReason(0);
  sub_266F372E0(&qword_2800F0090, type metadata accessor for CNVSchemaCNVExecutionFailureReason, &protocol conformance descriptor for CNVSchemaCNVExecutionFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F371D4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F37238(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F372E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F37328()
{
  result = qword_2800F0190;
  if (!qword_2800F0190)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0190);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentEagerExecutionStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVPlugin(0);
  sub_266F377C0(&qword_2800EFE70, type metadata accessor for CNVSchemaCNVPlugin, &protocol conformance descriptor for CNVSchemaCNVPlugin);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6967756C70, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F37530(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVPlugin(0);
  sub_266F377C0(&qword_2800EFE70, type metadata accessor for CNVSchemaCNVPlugin, &protocol conformance descriptor for CNVSchemaCNVPlugin);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6967756C70, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F376B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F37718(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F377C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F37808()
{
  result = qword_2800F0170;
  if (!qword_2800F0170)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0170);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentFinalExecutionCancelled.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVCancellationReason(0);
  sub_266F37B44(&qword_2800EFEF8, type metadata accessor for CNVSchemaCNVCancellationReason, &protocol conformance descriptor for CNVSchemaCNVCancellationReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000012, 0x8000000267428550);
  return v5(v7, 0);
}

uint64_t sub_266F37A38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F37A9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F37B44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F37B8C()
{
  result = qword_2800F01A8;
  if (!qword_2800F01A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F01A8);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentFinalExecutionContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F01B0, 0x277D56F90);
  sub_266ECAF2C(&qword_2800F01B8, &qword_2800F01B0, 0x277D56F90, &protocol conformance descriptor for CNVSchemaCNVIntentFinalExecutionStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v25, 0);
  sub_266ECB294(0, &qword_2800F01C0, 0x277D56F80);
  sub_266ECAF2C(&qword_2800F01C8, &qword_2800F01C0, 0x277D56F80, &protocol conformance descriptor for CNVSchemaCNVIntentFinalExecutionEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v25, 0);
  sub_266ECB294(0, &qword_2800F01D0, 0x277D56F88);
  sub_266ECAF2C(&qword_2800F01D8, &qword_2800F01D0, 0x277D56F88, &protocol conformance descriptor for CNVSchemaCNVIntentFinalExecutionFailed);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v9 = sub_2673811AC();
  sub_266EC637C(v4, 0x64656C696166, 0xE600000000000000);
  v9(v25, 0);
  sub_266ECB294(0, &qword_2800F01A8, 0x277D56F70);
  sub_266ECAF2C(&qword_2800F01A0, &qword_2800F01A8, 0x277D56F70, &protocol conformance descriptor for CNVSchemaCNVIntentFinalExecutionCancelled);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v10 = sub_2673811AC();
  sub_266EC637C(v4, 0x656C6C65636E6163, 0xE900000000000064);
  v10(v25, 0);
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6(v4, 0, 1, v5);
  v11 = v23;
  v12 = sub_2673811AC();
  sub_266EC637C(v4, 0x736568746F707968, 0xEC00000064497369);
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

uint64_t sub_266F3828C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F382F0(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVIntentFinalExecutionEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for CNVSchemaCNVEagerStatus(0);
  sub_266F38884(&qword_2800F0060, type metadata accessor for CNVSchemaCNVEagerStatus, &protocol conformance descriptor for CNVSchemaCNVEagerStatus);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6174537265676165, 0xEB00000000737574);
  v9(v15, 0);
  type metadata accessor for CNVSchemaCNVBypassReason(0);
  sub_266F38884(&qword_2800EFEE8, type metadata accessor for CNVSchemaCNVBypassReason, &protocol conformance descriptor for CNVSchemaCNVBypassReason);
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6552737361707962, 0xEC0000006E6F7361);
  v10(v15, 0);
  (*(v13 + 104))(v3, *MEMORY[0x277D3E540], v14);
  v15[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x73735278616DLL, 0xE600000000000000);
  return v11(v15, 0);
}

uint64_t sub_266F38778(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F387DC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F38884(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F388CC()
{
  result = qword_2800F01C0;
  if (!qword_2800F01C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F01C0);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentFinalExecutionFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVExecutionFailureReason(0);
  sub_266F38D64(&qword_2800F0090, type metadata accessor for CNVSchemaCNVExecutionFailureReason, &protocol conformance descriptor for CNVSchemaCNVExecutionFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F38AD4(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVExecutionFailureReason(0);
  sub_266F38D64(&qword_2800F0090, type metadata accessor for CNVSchemaCNVExecutionFailureReason, &protocol conformance descriptor for CNVSchemaCNVExecutionFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F38C58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F38CBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F38D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F38DAC()
{
  result = qword_2800F01D0;
  if (!qword_2800F01D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F01D0);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentFinalExecutionStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for CNVSchemaCNVPlugin(0);
  sub_266F3922C(&qword_2800EFE70, type metadata accessor for CNVSchemaCNVPlugin, &protocol conformance descriptor for CNVSchemaCNVPlugin);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E6967756C70, 0xE600000000000000);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E538], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x7065446B63617473, 0xEA00000000006874);
  return v10(v14, 0);
}

uint64_t sub_266F39120(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F39184(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F3922C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F39274()
{
  result = qword_2800F01B0;
  if (!qword_2800F01B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F01B0);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentReformationContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F01E0, 0x277D56FB0);
  sub_266ECAF2C(&qword_2800F01E8, &qword_2800F01E0, 0x277D56FB0, &protocol conformance descriptor for CNVSchemaCNVIntentReformationStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v23, 0);
  sub_266ECB294(0, &qword_2800F01F0, 0x277D56FA0);
  sub_266ECAF2C(&qword_2800F01F8, &qword_2800F01F0, 0x277D56FA0, &protocol conformance descriptor for CNVSchemaCNVIntentReformationEnded);
  sub_26738121C();
  v6(v4, 0, 1, v5);
  v8 = sub_2673811AC();
  sub_266EC637C(v4, 0x6465646E65, 0xE500000000000000);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0200, 0x277D56FA8);
  sub_266ECAF2C(&qword_2800F0208, &qword_2800F0200, 0x277D56FA8, &protocol conformance descriptor for CNVSchemaCNVIntentReformationFailed);
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

uint64_t sub_266F397D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3983C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVIntentReformationEnded.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260, &protocol conformance descriptor for USOSchemaUSOGraph);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x64656D726F666572, 0xEE00746E65746E49);
  return v5(v7, 0);
}

uint64_t sub_266F39AC0(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0210, 0x277D5B260);
  sub_266ECAF2C(&qword_2800F0218, &qword_2800F0210, 0x277D5B260, &protocol conformance descriptor for USOSchemaUSOGraph);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x64656D726F666572, 0xEE00746E65746E49);
  return v5(v7, 0);
}

uint64_t sub_266F39C68(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F39CCC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVIntentReformationFailed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVReformationFailureReason(0);
  sub_266F3A1BC(&qword_2800F0220, type metadata accessor for CNVSchemaCNVReformationFailureReason, &protocol conformance descriptor for CNVSchemaCNVReformationFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F39F2C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVReformationFailureReason(0);
  sub_266F3A1BC(&qword_2800F0220, type metadata accessor for CNVSchemaCNVReformationFailureReason, &protocol conformance descriptor for CNVSchemaCNVReformationFailureReason);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x6E6F73616572, 0xE600000000000000);
  return v5(v7, 0);
}

uint64_t sub_266F3A0B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3A114(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F3A1BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F3A204()
{
  result = qword_2800F0200;
  if (!qword_2800F0200)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0200);
  }

  return result;
}

uint64_t static CNVSchemaCNVIntentReformationStarted.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for CNVSchemaCNVTransformer(0);
  sub_266F3A614(&qword_2800F0228, type metadata accessor for CNVSchemaCNVTransformer, &protocol conformance descriptor for CNVSchemaCNVTransformer);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x726F66736E617274, 0xEB0000000072656DLL);
  v6(v9, 0);
  type metadata accessor for CNVSchemaCNVPlugin(0);
  sub_266F3A614(&qword_2800EFE70, type metadata accessor for CNVSchemaCNVPlugin, &protocol conformance descriptor for CNVSchemaCNVPlugin);
  sub_26738120C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x6C50746567726174, 0xEC0000006E696775);
  return v7(v9, 0);
}

uint64_t sub_266F3A508(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3A56C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F3A614(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F3A65C()
{
  result = qword_2800F01E0;
  if (!qword_2800F01E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F01E0);
  }

  return result;
}

uint64_t static CNVSchemaCNVLinkMetadata.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v14);
  v15[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x697463416B6E696CLL, 0xEC00000064496E6FLL);
  v10(v15, 0);
  type metadata accessor for LINKSchemaLINKSystemActionProtocol(0);
  sub_266F3AB3C();
  sub_26738120C();
  v8(v6, 0, 1, v7);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 0x72506D6574737973, 0xEE006C6F636F746FLL);
  return v11(v15, 0);
}

uint64_t sub_266F3AA78(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3AADC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F3AB3C()
{
  result = qword_2800F0230;
  if (!qword_2800F0230)
  {
    type metadata accessor for LINKSchemaLINKSystemActionProtocol(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0230);
  }

  return result;
}

uint64_t static CNVSchemaCNVLinkMetadataTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266EC637C(v6, 0x6C646E7542707061, 0xEB00000000644965);
  v11(v19, 0);
  v12 = sub_2673811AC();
  v13 = sub_266ECB6CC(v18, 0x6C646E7542707061, 0xEB00000000644965);
  if (!(*(v8 + 48))(v14, 1, v7))
  {
    sub_266ECB128(&unk_287884AF8);
    sub_26738115C();
  }

  (v13)(v18, 0);
  return v12(v19, 0);
}

uint64_t sub_266F3AFB8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3B01C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVPlugin.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000011, 0x8000000267428940, isUniquelyReferenced_nonNull_native);
  *v3 = v158;

  v1(v197, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0x4947554C50564E43, 0xEF4D52414C415F4ELL, v8);
  *v7 = v159;

  v5(v197, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000013, 0x8000000267428960, v12);
  *v11 = v160;

  v9(v197, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0x4947554C50564E43, 0xEF4F494455415F4ELL, v16);
  *v15 = v161;

  v13(v197, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD000000000000011, 0x8000000267428980, v20);
  *v19 = v162;

  v17(v197, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000016, 0x80000002674289A0, v24);
  *v23 = v163;

  v21(v197, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD000000000000012, 0x80000002674289C0, v28);
  *v27 = v164;

  v25(v197, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000012, 0x80000002674289E0, v32);
  *v31 = v165;

  v29(v197, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000017, 0x8000000267428A00, v36);
  *v35 = v166;

  v33(v197, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000015, 0x8000000267428A20, v40);
  *v39 = v167;

  v37(v197, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000010, 0x8000000267428A40, v44);
  *v43 = v168;

  v41(v197, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0x4947554C50564E43, 0xED00004F45475F4ELL, v48);
  *v47 = v169;

  v45(v197, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000010, 0x8000000267428A60, v52);
  *v51 = v170;

  v49(v197, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000018, 0x8000000267428A80, v56);
  *v55 = v171;

  v53(v197, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000001BLL, 0x8000000267428AA0, v60);
  *v59 = v172;

  v57(v197, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000012, 0x8000000267428AC0, v64);
  *v63 = v173;

  v61(v197, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000012, 0x8000000267428AE0, v68);
  *v67 = v174;

  v65(v197, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000012, 0x8000000267428B00, v72);
  *v71 = v175;

  v69(v197, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000017, 0x8000000267428B20, v76);
  *v75 = v176;

  v73(v197, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000013, 0x8000000267428B40, v80);
  *v79 = v177;

  v77(v197, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000012, 0x8000000267428B60, v84);
  *v83 = v178;

  v81(v197, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0x4947554C50564E43, 0xEF52454D49545F4ELL, v88);
  *v87 = v179;

  v85(v197, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0x4947554C50564E43, 0xEF4F454449565F4ELL, v92);
  *v91 = v180;

  v89(v197, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000017, 0x8000000267428B80, v96);
  *v95 = v181;

  v93(v197, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000012, 0x8000000267428BA0, v100);
  *v99 = v182;

  v97(v197, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000001CLL, 0x8000000267428BC0, v104);
  *v103 = v183;

  v101(v197, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000015, 0x8000000267428BE0, v108);
  *v107 = v184;

  v105(v197, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0x4947554C50564E43, 0xEE004B4E494C5F4ELL, v112);
  *v111 = v185;

  v109(v197, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v186 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000015, 0x8000000267428C00, v116);
  *v115 = v186;

  v113(v197, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0x4947554C50564E43, 0xEF4B434F4C435F4ELL, v120);
  *v119 = v187;

  v117(v197, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000012, 0x8000000267428C20, v124);
  *v123 = v188;

  v121(v197, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000019, 0x8000000267428C40, v128);
  *v127 = v189;

  v125(v197, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000015, 0x8000000267428C60, v132);
  *v131 = v190;

  v129(v197, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v191 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0x4947554C50564E43, 0xEE004C49414D5F4ELL, v136);
  *v135 = v191;

  v133(v197, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v192 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000012, 0x8000000267428C80, v140);
  *v139 = v192;

  v137(v197, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000015, 0x8000000267428CA0, v144);
  *v143 = v193;

  v141(v197, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000013, 0x8000000267428CC0, v148);
  *v147 = v194;

  v145(v197, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000010, 0x8000000267428CE0, v152);
  *v151 = v195;

  v149(v197, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000010, 0x8000000267428D00, v156);
  *v155 = v196;

  return v153(v197, 0);
}

uint64_t sub_266F3C304(uint64_t a1)
{
  v2 = sub_266F3C408(&qword_2800F0238, &protocol conformance descriptor for CNVSchemaCNVPlugin);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F3C36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F3C408(&qword_2800F0238, &protocol conformance descriptor for CNVSchemaCNVPlugin);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F3C408(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNVSchemaCNVPlugin(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVPostFlowPrepareContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F0240, 0x277D56FD8);
  sub_266ECAF2C(&qword_2800F0248, &qword_2800F0240, 0x277D56FD8, &protocol conformance descriptor for CNVSchemaCNVPostFlowPrepareStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F0250, 0x277D56FD0);
  sub_266ECAF2C(&qword_2800F0258, &qword_2800F0250, 0x277D56FD0, &protocol conformance descriptor for CNVSchemaCNVPostFlowPrepareEnded);
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

uint64_t sub_266F3C898(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3C8FC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVPostFlowPrepareEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F3CBE8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3CC4C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F3CCB0()
{
  result = qword_2800F0258;
  if (!qword_2800F0258)
  {
    sub_266F3CD08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0258);
  }

  return result;
}

unint64_t sub_266F3CD08()
{
  result = qword_2800F0250;
  if (!qword_2800F0250)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0250);
  }

  return result;
}

uint64_t static CNVSchemaCNVPostFlowPrepareStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F3CF9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3D000(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F3D064()
{
  result = qword_2800F0248;
  if (!qword_2800F0248)
  {
    sub_266F3D0BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0248);
  }

  return result;
}

unint64_t sub_266F3D0BC()
{
  result = qword_2800F0240;
  if (!qword_2800F0240)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0240);
  }

  return result;
}

uint64_t static CNVSchemaCNVPreFlowPrepareContext.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F0260, 0x277D56FF0);
  sub_266ECAF2C(&qword_2800F0268, &qword_2800F0260, 0x277D56FF0, &protocol conformance descriptor for CNVSchemaCNVPreFlowPrepareStarted);
  sub_26738121C();
  v5 = sub_26738116C();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 0, 1, v5);
  v7 = sub_2673811AC();
  sub_266EC637C(v4, 0xD000000000000010, 0x800000026741EB30);
  v7(v22, 0);
  sub_266ECB294(0, &qword_2800F0270, 0x277D56FE8);
  sub_266ECAF2C(&qword_2800F0278, &qword_2800F0270, 0x277D56FE8, &protocol conformance descriptor for CNVSchemaCNVPreFlowPrepareEnded);
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

uint64_t sub_266F3D554(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3D5B8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCNVPreFlowPrepareEnded.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F3D8A4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3D908(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F3D96C()
{
  result = qword_2800F0278;
  if (!qword_2800F0278)
  {
    sub_266F3D9C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0278);
  }

  return result;
}

unint64_t sub_266F3D9C4()
{
  result = qword_2800F0270;
  if (!qword_2800F0270)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0270);
  }

  return result;
}

uint64_t static CNVSchemaCNVPreFlowPrepareStarted.makeTypeManifestAndEnsureFields(in:)()
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

uint64_t sub_266F3DC58(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3DCBC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F3DD20()
{
  result = qword_2800F0268;
  if (!qword_2800F0268)
  {
    sub_266F3DD78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0268);
  }

  return result;
}

unint64_t sub_266F3DD78()
{
  result = qword_2800F0260;
  if (!qword_2800F0260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0260);
  }

  return result;
}

uint64_t static CNVSchemaCNVReformationFailureReason.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD00000000000001DLL, 0x8000000267428EC0, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000022, 0x8000000267428EE0, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000026, 0x8000000267428F10, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266F3DFD8(uint64_t a1)
{
  v2 = sub_266F3E0DC(&qword_2800F0280, &protocol conformance descriptor for CNVSchemaCNVReformationFailureReason);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F3E040(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F3E0DC(&qword_2800F0280, &protocol conformance descriptor for CNVSchemaCNVReformationFailureReason);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F3E0DC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNVSchemaCNVReformationFailureReason(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVTransformer.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000016, 0x8000000267428F70, isUniquelyReferenced_nonNull_native);
  *v3 = v10;

  v1(v12, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000001DLL, 0x8000000267428F90, v8);
  *v7 = v11;

  return v5(v12, 0);
}

uint64_t sub_266F3E2C4(uint64_t a1)
{
  v2 = sub_266F3E3C8(&qword_2800F0288, &protocol conformance descriptor for CNVSchemaCNVTransformer);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F3E32C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F3E3C8(&qword_2800F0288, &protocol conformance descriptor for CNVSchemaCNVTransformer);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F3E3C8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CNVSchemaCNVTransformer(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static CNVSchemaCNVUsoGraphTier1.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0290, 0x277D5B270);
  sub_266ECAF2C(&qword_2800F0298, &qword_2800F0290, 0x277D5B270, &protocol conformance descriptor for USOSchemaUSOGraphTier1);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x68706172476F7375, 0xED00003172656954);
  return v5(v7, 0);
}

uint64_t sub_266F3E5EC(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v7[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0290, 0x277D5B270);
  sub_266ECAF2C(&qword_2800F0298, &qword_2800F0290, 0x277D5B270, &protocol conformance descriptor for USOSchemaUSOGraphTier1);
  sub_26738120C();
  v4 = sub_26738116C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = sub_2673811AC();
  sub_266EC637C(v3, 0x68706172476F7375, 0xED00003172656954);
  return v5(v7, 0);
}

uint64_t sub_266F3E794(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3E7F8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static CNVSchemaCollatedActionCandidate.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v10 = "iri.cnv.CollatedActionCandidate";
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0xD000000000000018, v10 | 0x8000000000000000);
  v6(v11, 0);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0xD00000000000001DLL, 0x8000000267429030);
  return v7(v11, 0);
}

uint64_t sub_266F3EB38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3EB9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DHTSchemaDHTDeleteTrigger.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v32 = sub_26738113C();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v7 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v10(v6, 0, 1, v8);
  v11 = sub_2673811AC();
  sub_266EC637C(v6, 25705, 0xE200000000000000);
  v11(v38, 0);
  v29 = v7;
  sub_26738120C();
  v34 = v10;
  v10(v6, 0, 1, v8);
  v12 = sub_2673811AC();
  sub_266EC637C(v6, 0x6449686365657073, 0xE800000000000000);
  v12(v38, 0);
  v35 = a2;
  v13 = sub_2673811AC();
  v14 = sub_266ECB6CC(v37, 0x6449686365657073, 0xE800000000000000);
  v15 = *(v9 + 48);
  v33 = v8;
  v28 = v15;
  if (!v15(v16, 1, v8))
  {
    sub_266ECB128(&unk_287884B28);
    sub_26738115C();
  }

  (v14)(v37, 0);
  v13(v38, 0);
  sub_26738120C();
  v17 = v33;
  v34(v6, 0, 1, v33);
  v18 = sub_2673811AC();
  sub_266EC637C(v6, 0x6976654469726973, 0xEC00000064496563);
  v18(v38, 0);
  v19 = sub_2673811AC();
  v20 = sub_266ECB6CC(v37, 0x6976654469726973, 0xEC00000064496563);
  if (!v28(v21, 1, v17))
  {
    sub_266ECB128(&unk_287884B50);
    sub_26738115C();
  }

  (v20)(v37, 0);
  v19(v38, 0);
  (*(v30 + 104))(v31, *MEMORY[0x277D3E540], v32);
  v38[0] = 1;
  sub_26738114C();
  v22 = v33;
  v23 = v34;
  v34(v6, 0, 1, v33);
  v24 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x8000000267429080);
  v24(v38, 0);
  type metadata accessor for DHTSchemaDHTTriggerEvent(0);
  sub_266F3F354();
  sub_26738120C();
  v23(v6, 0, 1, v22);
  v25 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000014, 0x80000002674290A0);
  v25(v38, 0);
  sub_266ECB128(&unk_287884B78);
  return sub_2673811CC();
}

uint64_t sub_266F3F290(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3F2F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F3F354()
{
  result = qword_2800F02A0;
  if (!qword_2800F02A0)
  {
    type metadata accessor for DHTSchemaDHTTriggerEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F02A0);
  }

  return result;
}

uint64_t static DHTSchemaDHTServerEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F02B0, 0x277D57028);
  sub_266ECAF2C(&qword_2800F02A8, &qword_2800F02B0, 0x277D57028, &protocol conformance descriptor for DHTSchemaDHTDeleteTrigger);
  sub_26738121C();
  v8 = sub_26738116C();
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = sub_2673811AC();
  sub_266EC637C(v7, 0x72546574656C6564, 0xED00007265676769);
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
  sub_266ECB128(&unk_287884BA8);
  return sub_2673811CC();
}

uint64_t sub_266F3F748(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F3F7E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F3F8AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F3F910(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F3F970(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F02B8, &qword_2800F02C0, 0x277D57030, &protocol conformance descriptor for DHTSchemaDHTServerEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F02C8, &qword_2800F02C0, 0x277D57030, &protocol conformance descriptor for DHTSchemaDHTServerEvent);
  result = sub_266ECAF2C(&qword_2800F02D0, &qword_2800F02C0, 0x277D57030, &protocol conformance descriptor for DHTSchemaDHTServerEvent);
  a1[3] = result;
  return result;
}

uint64_t static DHTSchemaDHTTriggerEvent.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000017, 0x8000000267429120, isUniquelyReferenced_nonNull_native);
  *v3 = v14;

  v1(v17, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000021, 0x8000000267429140, v8);
  *v7 = v15;

  v5(v17, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD000000000000028, 0x8000000267429170, v12);
  *v11 = v16;

  return v9(v17, 0);
}

uint64_t sub_266F3FC84(uint64_t a1)
{
  v2 = sub_266F3FD88(&qword_2800F02E0, &protocol conformance descriptor for DHTSchemaDHTTriggerEvent);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F3FCEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F3FD88(&qword_2800F02E0, &protocol conformance descriptor for DHTSchemaDHTTriggerEvent);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F3FD88(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DHTSchemaDHTTriggerEvent(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DialogEngineSchemaDialogEngineNamedEntity.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  type metadata accessor for DialogEngineSchemaDialogEngineNamedEntityParameter(0);
  sub_266F40208(&qword_2800F02E8, type metadata accessor for DialogEngineSchemaDialogEngineNamedEntityParameter, &protocol conformance descriptor for DialogEngineSchemaDialogEngineNamedEntityParameter);
  sub_26738120C();
  v7 = sub_26738116C();
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 0, 1, v7);
  v9 = sub_2673811AC();
  sub_266EC637C(v6, 0x6D61726150746163, 0xEC00000072657465);
  v9(v14, 0);
  (*(v1 + 104))(v3, *MEMORY[0x277D3E530], v13);
  v14[0] = 1;
  sub_26738114C();
  v8(v6, 0, 1, v7);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0xD000000000000011, 0x80000002674291E0);
  return v10(v14, 0);
}

uint64_t sub_266F400FC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F40160(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F40208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_266F40250()
{
  result = qword_2800F02F8;
  if (!qword_2800F02F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F02F8);
  }

  return result;
}

uint64_t static DialogEngineSchemaDialogEngineNamedEntityCatId.makeTypeManifestAndEnsureFields(in:)()
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
  sub_266ECD368(0, 0xD000000000000025, 0x8000000267429240, isUniquelyReferenced_nonNull_native);
  *v3 = v158;

  v1(v197, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v159 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD000000000000040, 0x8000000267429270, v8);
  *v7 = v159;

  v5(v197, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v160 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000003CLL, 0x80000002674292C0, v12);
  *v11 = v160;

  v9(v197, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v161 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD00000000000003FLL, 0x8000000267429300, v16);
  *v15 = v161;

  v13(v197, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v162 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000005DLL, 0x8000000267429340, v20);
  *v19 = v162;

  v17(v197, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v163 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD000000000000043, 0x80000002674293A0, v24);
  *v23 = v163;

  v21(v197, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v164 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000003CLL, 0x80000002674293F0, v28);
  *v27 = v164;

  v25(v197, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v165 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD00000000000003ALL, 0x8000000267429430, v32);
  *v31 = v165;

  v29(v197, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v166 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD00000000000004ALL, 0x8000000267429470, v36);
  *v35 = v166;

  v33(v197, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v167 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD00000000000004DLL, 0x80000002674294C0, v40);
  *v39 = v167;

  v37(v197, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v168 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000047, 0x8000000267429510, v44);
  *v43 = v168;

  v41(v197, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v169 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000030, 0x8000000267429560, v48);
  *v47 = v169;

  v45(v197, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v170 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD000000000000034, 0x80000002674295A0, v52);
  *v51 = v170;

  v49(v197, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v171 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000038, 0x80000002674295E0, v56);
  *v55 = v171;

  v53(v197, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v172 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000002ELL, 0x8000000267429620, v60);
  *v59 = v172;

  v57(v197, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v173 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000044, 0x8000000267429650, v64);
  *v63 = v173;

  v61(v197, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v174 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000033, 0x80000002674296A0, v68);
  *v67 = v174;

  v65(v197, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v175 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000044, 0x80000002674296E0, v72);
  *v71 = v175;

  v69(v197, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v176 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD000000000000043, 0x8000000267429730, v76);
  *v75 = v176;

  v73(v197, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v177 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000051, 0x8000000267429780, v80);
  *v79 = v177;

  v77(v197, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v178 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD000000000000044, 0x80000002674297E0, v84);
  *v83 = v178;

  v81(v197, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v179 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000042, 0x8000000267429830, v88);
  *v87 = v179;

  v85(v197, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v180 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD000000000000043, 0x8000000267429880, v92);
  *v91 = v180;

  v89(v197, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v181 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD000000000000042, 0x80000002674298D0, v96);
  *v95 = v181;

  v93(v197, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v182 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD00000000000003ELL, 0x8000000267429920, v100);
  *v99 = v182;

  v97(v197, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v183 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000004DLL, 0x8000000267429960, v104);
  *v103 = v183;

  v101(v197, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v184 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD00000000000003ALL, 0x80000002674299B0, v108);
  *v107 = v184;

  v105(v197, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v185 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD000000000000043, 0x80000002674299F0, v112);
  *v111 = v185;

  v109(v197, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v186 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD00000000000003FLL, 0x8000000267429A40, v116);
  *v115 = v186;

  v113(v197, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v187 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD000000000000050, 0x8000000267429A80, v120);
  *v119 = v187;

  v117(v197, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v188 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD000000000000048, 0x8000000267429AE0, v124);
  *v123 = v188;

  v121(v197, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v189 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD000000000000055, 0x8000000267429B30, v128);
  *v127 = v189;

  v125(v197, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v190 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0xD00000000000003BLL, 0x8000000267429B90, v132);
  *v131 = v190;

  v129(v197, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v191 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0xD00000000000004ELL, 0x8000000267429BD0, v136);
  *v135 = v191;

  v133(v197, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v192 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0xD000000000000030, 0x8000000267429C20, v140);
  *v139 = v192;

  v137(v197, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v193 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0xD000000000000039, 0x8000000267429C60, v144);
  *v143 = v193;

  v141(v197, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v194 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000030, 0x8000000267429CA0, v148);
  *v147 = v194;

  v145(v197, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v195 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(37, 0xD000000000000038, 0x8000000267429CE0, v152);
  *v151 = v195;

  v149(v197, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v196 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(38, 0xD00000000000003BLL, 0x8000000267429D20, v156);
  *v155 = v196;

  return v153(v197, 0);
}

uint64_t sub_266F414D4(uint64_t a1)
{
  v2 = sub_266F415D8(&qword_2800F0308, &protocol conformance descriptor for DialogEngineSchemaDialogEngineNamedEntityCatId);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F4153C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F415D8(&qword_2800F0308, &protocol conformance descriptor for DialogEngineSchemaDialogEngineNamedEntityCatId);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F415D8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogEngineSchemaDialogEngineNamedEntityCatId(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DialogEngineSchemaDialogEngineNamedEntityParameter.makeTypeManifestAndEnsureFields(in:)()
{
  v0 = MEMORY[0x277D84F90];
  sub_266ECA394(MEMORY[0x277D84F90]);
  sub_266ECDCE4(v0);
  sub_26738110C();
  v1 = sub_26738111C();
  v3 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v282 = *v3;
  *v3 = 0x8000000000000000;
  sub_266ECD368(0, 0xD000000000000029, 0x8000000267429DA0, isUniquelyReferenced_nonNull_native);
  *v3 = v282;

  v1(v352, 0);
  v5 = sub_26738111C();
  v7 = v6;
  v8 = swift_isUniquelyReferenced_nonNull_native();
  v283 = *v7;
  *v7 = 0x8000000000000000;
  sub_266ECD368(1, 0xD00000000000004CLL, 0x8000000267429DD0, v8);
  *v7 = v283;

  v5(v352, 0);
  v9 = sub_26738111C();
  v11 = v10;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v284 = *v11;
  *v11 = 0x8000000000000000;
  sub_266ECD368(2, 0xD00000000000004BLL, 0x8000000267429E20, v12);
  *v11 = v284;

  v9(v352, 0);
  v13 = sub_26738111C();
  v15 = v14;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v285 = *v15;
  *v15 = 0x8000000000000000;
  sub_266ECD368(3, 0xD000000000000049, 0x8000000267429E70, v16);
  *v15 = v285;

  v13(v352, 0);
  v17 = sub_26738111C();
  v19 = v18;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v286 = *v19;
  *v19 = 0x8000000000000000;
  sub_266ECD368(4, 0xD00000000000004BLL, 0x8000000267429EC0, v20);
  *v19 = v286;

  v17(v352, 0);
  v21 = sub_26738111C();
  v23 = v22;
  v24 = swift_isUniquelyReferenced_nonNull_native();
  v287 = *v23;
  *v23 = 0x8000000000000000;
  sub_266ECD368(5, 0xD00000000000004ALL, 0x8000000267429F10, v24);
  *v23 = v287;

  v21(v352, 0);
  v25 = sub_26738111C();
  v27 = v26;
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v288 = *v27;
  *v27 = 0x8000000000000000;
  sub_266ECD368(6, 0xD00000000000006FLL, 0x8000000267429F60, v28);
  *v27 = v288;

  v25(v352, 0);
  v29 = sub_26738111C();
  v31 = v30;
  v32 = swift_isUniquelyReferenced_nonNull_native();
  v289 = *v31;
  *v31 = 0x8000000000000000;
  sub_266ECD368(7, 0xD000000000000050, 0x8000000267429FD0, v32);
  *v31 = v289;

  v29(v352, 0);
  v33 = sub_26738111C();
  v35 = v34;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v290 = *v35;
  *v35 = 0x8000000000000000;
  sub_266ECD368(8, 0xD000000000000049, 0x800000026742A030, v36);
  *v35 = v290;

  v33(v352, 0);
  v37 = sub_26738111C();
  v39 = v38;
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v291 = *v39;
  *v39 = 0x8000000000000000;
  sub_266ECD368(9, 0xD000000000000047, 0x800000026742A080, v40);
  *v39 = v291;

  v37(v352, 0);
  v41 = sub_26738111C();
  v43 = v42;
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v292 = *v43;
  *v43 = 0x8000000000000000;
  sub_266ECD368(10, 0xD000000000000055, 0x800000026742A0D0, v44);
  *v43 = v292;

  v41(v352, 0);
  v45 = sub_26738111C();
  v47 = v46;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v293 = *v47;
  *v47 = 0x8000000000000000;
  sub_266ECD368(11, 0xD000000000000058, 0x800000026742A130, v48);
  *v47 = v293;

  v45(v352, 0);
  v49 = sub_26738111C();
  v51 = v50;
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v294 = *v51;
  *v51 = 0x8000000000000000;
  sub_266ECD368(12, 0xD00000000000005ELL, 0x800000026742A190, v52);
  *v51 = v294;

  v49(v352, 0);
  v53 = sub_26738111C();
  v55 = v54;
  v56 = swift_isUniquelyReferenced_nonNull_native();
  v295 = *v55;
  *v55 = 0x8000000000000000;
  sub_266ECD368(13, 0xD000000000000058, 0x800000026742A1F0, v56);
  *v55 = v295;

  v53(v352, 0);
  v57 = sub_26738111C();
  v59 = v58;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v296 = *v59;
  *v59 = 0x8000000000000000;
  sub_266ECD368(14, 0xD00000000000005ELL, 0x800000026742A250, v60);
  *v59 = v296;

  v57(v352, 0);
  v61 = sub_26738111C();
  v63 = v62;
  v64 = swift_isUniquelyReferenced_nonNull_native();
  v297 = *v63;
  *v63 = 0x8000000000000000;
  sub_266ECD368(15, 0xD000000000000052, 0x800000026742A2B0, v64);
  *v63 = v297;

  v61(v352, 0);
  v65 = sub_26738111C();
  v67 = v66;
  v68 = swift_isUniquelyReferenced_nonNull_native();
  v298 = *v67;
  *v67 = 0x8000000000000000;
  sub_266ECD368(16, 0xD000000000000058, 0x800000026742A310, v68);
  *v67 = v298;

  v65(v352, 0);
  v69 = sub_26738111C();
  v71 = v70;
  v72 = swift_isUniquelyReferenced_nonNull_native();
  v299 = *v71;
  *v71 = 0x8000000000000000;
  sub_266ECD368(17, 0xD000000000000044, 0x800000026742A370, v72);
  *v71 = v299;

  v69(v352, 0);
  v73 = sub_26738111C();
  v75 = v74;
  v76 = swift_isUniquelyReferenced_nonNull_native();
  v300 = *v75;
  *v75 = 0x8000000000000000;
  sub_266ECD368(18, 0xD00000000000003DLL, 0x800000026742A3C0, v76);
  *v75 = v300;

  v73(v352, 0);
  v77 = sub_26738111C();
  v79 = v78;
  v80 = swift_isUniquelyReferenced_nonNull_native();
  v301 = *v79;
  *v79 = 0x8000000000000000;
  sub_266ECD368(19, 0xD000000000000046, 0x800000026742A400, v80);
  *v79 = v301;

  v77(v352, 0);
  v81 = sub_26738111C();
  v83 = v82;
  v84 = swift_isUniquelyReferenced_nonNull_native();
  v302 = *v83;
  *v83 = 0x8000000000000000;
  sub_266ECD368(20, 0xD00000000000004ELL, 0x800000026742A450, v84);
  *v83 = v302;

  v81(v352, 0);
  v85 = sub_26738111C();
  v87 = v86;
  v88 = swift_isUniquelyReferenced_nonNull_native();
  v303 = *v87;
  *v87 = 0x8000000000000000;
  sub_266ECD368(21, 0xD000000000000047, 0x800000026742A4A0, v88);
  *v87 = v303;

  v85(v352, 0);
  v89 = sub_26738111C();
  v91 = v90;
  v92 = swift_isUniquelyReferenced_nonNull_native();
  v304 = *v91;
  *v91 = 0x8000000000000000;
  sub_266ECD368(22, 0xD00000000000004CLL, 0x800000026742A4F0, v92);
  *v91 = v304;

  v89(v352, 0);
  v93 = sub_26738111C();
  v95 = v94;
  v96 = swift_isUniquelyReferenced_nonNull_native();
  v305 = *v95;
  *v95 = 0x8000000000000000;
  sub_266ECD368(23, 0xD00000000000004DLL, 0x800000026742A540, v96);
  *v95 = v305;

  v93(v352, 0);
  v97 = sub_26738111C();
  v99 = v98;
  v100 = swift_isUniquelyReferenced_nonNull_native();
  v306 = *v99;
  *v99 = 0x8000000000000000;
  sub_266ECD368(24, 0xD000000000000045, 0x800000026742A590, v100);
  *v99 = v306;

  v97(v352, 0);
  v101 = sub_26738111C();
  v103 = v102;
  v104 = swift_isUniquelyReferenced_nonNull_native();
  v307 = *v103;
  *v103 = 0x8000000000000000;
  sub_266ECD368(25, 0xD00000000000003BLL, 0x800000026742A5E0, v104);
  *v103 = v307;

  v101(v352, 0);
  v105 = sub_26738111C();
  v107 = v106;
  v108 = swift_isUniquelyReferenced_nonNull_native();
  v308 = *v107;
  *v107 = 0x8000000000000000;
  sub_266ECD368(26, 0xD000000000000042, 0x800000026742A620, v108);
  *v107 = v308;

  v105(v352, 0);
  v109 = sub_26738111C();
  v111 = v110;
  v112 = swift_isUniquelyReferenced_nonNull_native();
  v309 = *v111;
  *v111 = 0x8000000000000000;
  sub_266ECD368(27, 0xD00000000000003BLL, 0x800000026742A670, v112);
  *v111 = v309;

  v109(v352, 0);
  v113 = sub_26738111C();
  v115 = v114;
  v116 = swift_isUniquelyReferenced_nonNull_native();
  v310 = *v115;
  *v115 = 0x8000000000000000;
  sub_266ECD368(28, 0xD000000000000050, 0x800000026742A6B0, v116);
  *v115 = v310;

  v113(v352, 0);
  v117 = sub_26738111C();
  v119 = v118;
  v120 = swift_isUniquelyReferenced_nonNull_native();
  v311 = *v119;
  *v119 = 0x8000000000000000;
  sub_266ECD368(29, 0xD00000000000004FLL, 0x800000026742A710, v120);
  *v119 = v311;

  v117(v352, 0);
  v121 = sub_26738111C();
  v123 = v122;
  v124 = swift_isUniquelyReferenced_nonNull_native();
  v312 = *v123;
  *v123 = 0x8000000000000000;
  sub_266ECD368(30, 0xD00000000000003FLL, 0x800000026742A760, v124);
  *v123 = v312;

  v121(v352, 0);
  v125 = sub_26738111C();
  v127 = v126;
  v128 = swift_isUniquelyReferenced_nonNull_native();
  v313 = *v127;
  *v127 = 0x8000000000000000;
  sub_266ECD368(31, 0xD00000000000003ELL, 0x800000026742A7A0, v128);
  *v127 = v313;

  v125(v352, 0);
  v129 = sub_26738111C();
  v131 = v130;
  v132 = swift_isUniquelyReferenced_nonNull_native();
  v314 = *v131;
  *v131 = 0x8000000000000000;
  sub_266ECD368(32, 0xD000000000000050, 0x800000026742A7E0, v132);
  *v131 = v314;

  v129(v352, 0);
  v133 = sub_26738111C();
  v135 = v134;
  v136 = swift_isUniquelyReferenced_nonNull_native();
  v315 = *v135;
  *v135 = 0x8000000000000000;
  sub_266ECD368(33, 0xD000000000000059, 0x800000026742A840, v136);
  *v135 = v315;

  v133(v352, 0);
  v137 = sub_26738111C();
  v139 = v138;
  v140 = swift_isUniquelyReferenced_nonNull_native();
  v316 = *v139;
  *v139 = 0x8000000000000000;
  sub_266ECD368(34, 0xD00000000000004FLL, 0x800000026742A8A0, v140);
  *v139 = v316;

  v137(v352, 0);
  v141 = sub_26738111C();
  v143 = v142;
  v144 = swift_isUniquelyReferenced_nonNull_native();
  v317 = *v143;
  *v143 = 0x8000000000000000;
  sub_266ECD368(35, 0xD00000000000004FLL, 0x800000026742A8F0, v144);
  *v143 = v317;

  v141(v352, 0);
  v145 = sub_26738111C();
  v147 = v146;
  v148 = swift_isUniquelyReferenced_nonNull_native();
  v318 = *v147;
  *v147 = 0x8000000000000000;
  sub_266ECD368(36, 0xD000000000000058, 0x800000026742A940, v148);
  *v147 = v318;

  v145(v352, 0);
  v149 = sub_26738111C();
  v151 = v150;
  v152 = swift_isUniquelyReferenced_nonNull_native();
  v319 = *v151;
  *v151 = 0x8000000000000000;
  sub_266ECD368(37, 0xD00000000000004ELL, 0x800000026742A9A0, v152);
  *v151 = v319;

  v149(v352, 0);
  v153 = sub_26738111C();
  v155 = v154;
  v156 = swift_isUniquelyReferenced_nonNull_native();
  v320 = *v155;
  *v155 = 0x8000000000000000;
  sub_266ECD368(38, 0xD000000000000063, 0x800000026742A9F0, v156);
  *v155 = v320;

  v153(v352, 0);
  v157 = sub_26738111C();
  v159 = v158;
  v160 = swift_isUniquelyReferenced_nonNull_native();
  v321 = *v159;
  *v159 = 0x8000000000000000;
  sub_266ECD368(39, 0xD00000000000006DLL, 0x800000026742AA60, v160);
  *v159 = v321;

  v157(v352, 0);
  v161 = sub_26738111C();
  v163 = v162;
  v164 = swift_isUniquelyReferenced_nonNull_native();
  v322 = *v163;
  *v163 = 0x8000000000000000;
  sub_266ECD368(40, 0xD000000000000050, 0x800000026742AAD0, v164);
  *v163 = v322;

  v161(v352, 0);
  v165 = sub_26738111C();
  v167 = v166;
  v168 = swift_isUniquelyReferenced_nonNull_native();
  v323 = *v167;
  *v167 = 0x8000000000000000;
  sub_266ECD368(41, 0xD000000000000059, 0x800000026742AB30, v168);
  *v167 = v323;

  v165(v352, 0);
  v169 = sub_26738111C();
  v171 = v170;
  v172 = swift_isUniquelyReferenced_nonNull_native();
  v324 = *v171;
  *v171 = 0x8000000000000000;
  sub_266ECD368(42, 0xD00000000000004FLL, 0x800000026742AB90, v172);
  *v171 = v324;

  v169(v352, 0);
  v173 = sub_26738111C();
  v175 = v174;
  v176 = swift_isUniquelyReferenced_nonNull_native();
  v325 = *v175;
  *v175 = 0x8000000000000000;
  sub_266ECD368(43, 0xD00000000000004ELL, 0x800000026742ABE0, v176);
  *v175 = v325;

  v173(v352, 0);
  v177 = sub_26738111C();
  v179 = v178;
  v180 = swift_isUniquelyReferenced_nonNull_native();
  v326 = *v179;
  *v179 = 0x8000000000000000;
  sub_266ECD368(44, 0xD00000000000004DLL, 0x800000026742AC30, v180);
  *v179 = v326;

  v177(v352, 0);
  v181 = sub_26738111C();
  v183 = v182;
  v184 = swift_isUniquelyReferenced_nonNull_native();
  v327 = *v183;
  *v183 = 0x8000000000000000;
  sub_266ECD368(45, 0xD00000000000004ELL, 0x800000026742AC80, v184);
  *v183 = v327;

  v181(v352, 0);
  v185 = sub_26738111C();
  v187 = v186;
  v188 = swift_isUniquelyReferenced_nonNull_native();
  v328 = *v187;
  *v187 = 0x8000000000000000;
  sub_266ECD368(46, 0xD00000000000004ELL, 0x800000026742ACD0, v188);
  *v187 = v328;

  v185(v352, 0);
  v189 = sub_26738111C();
  v191 = v190;
  v192 = swift_isUniquelyReferenced_nonNull_native();
  v329 = *v191;
  *v191 = 0x8000000000000000;
  sub_266ECD368(47, 0xD00000000000004CLL, 0x800000026742AD20, v192);
  *v191 = v329;

  v189(v352, 0);
  v193 = sub_26738111C();
  v195 = v194;
  v196 = swift_isUniquelyReferenced_nonNull_native();
  v330 = *v195;
  *v195 = 0x8000000000000000;
  sub_266ECD368(48, 0xD000000000000049, 0x800000026742AD70, v196);
  *v195 = v330;

  v193(v352, 0);
  v197 = sub_26738111C();
  v199 = v198;
  v200 = swift_isUniquelyReferenced_nonNull_native();
  v331 = *v199;
  *v199 = 0x8000000000000000;
  sub_266ECD368(49, 0xD00000000000005FLL, 0x800000026742ADC0, v200);
  *v199 = v331;

  v197(v352, 0);
  v201 = sub_26738111C();
  v203 = v202;
  v204 = swift_isUniquelyReferenced_nonNull_native();
  v332 = *v203;
  *v203 = 0x8000000000000000;
  sub_266ECD368(50, 0xD000000000000063, 0x800000026742AE20, v204);
  *v203 = v332;

  v201(v352, 0);
  v205 = sub_26738111C();
  v207 = v206;
  v208 = swift_isUniquelyReferenced_nonNull_native();
  v333 = *v207;
  *v207 = 0x8000000000000000;
  sub_266ECD368(51, 0xD000000000000069, 0x800000026742AE90, v208);
  *v207 = v333;

  v205(v352, 0);
  v209 = sub_26738111C();
  v211 = v210;
  v212 = swift_isUniquelyReferenced_nonNull_native();
  v334 = *v211;
  *v211 = 0x8000000000000000;
  sub_266ECD368(52, 0xD00000000000004CLL, 0x800000026742AF00, v212);
  *v211 = v334;

  v209(v352, 0);
  v213 = sub_26738111C();
  v215 = v214;
  v216 = swift_isUniquelyReferenced_nonNull_native();
  v335 = *v215;
  *v215 = 0x8000000000000000;
  sub_266ECD368(53, 0xD000000000000045, 0x800000026742AF50, v216);
  *v215 = v335;

  v213(v352, 0);
  v217 = sub_26738111C();
  v219 = v218;
  v220 = swift_isUniquelyReferenced_nonNull_native();
  v336 = *v219;
  *v219 = 0x8000000000000000;
  sub_266ECD368(54, 0xD00000000000004FLL, 0x800000026742AFA0, v220);
  *v219 = v336;

  v217(v352, 0);
  v221 = sub_26738111C();
  v223 = v222;
  v224 = swift_isUniquelyReferenced_nonNull_native();
  v337 = *v223;
  *v223 = 0x8000000000000000;
  sub_266ECD368(55, 0xD00000000000004ELL, 0x800000026742AFF0, v224);
  *v223 = v337;

  v221(v352, 0);
  v225 = sub_26738111C();
  v227 = v226;
  v228 = swift_isUniquelyReferenced_nonNull_native();
  v338 = *v227;
  *v227 = 0x8000000000000000;
  sub_266ECD368(56, 0xD00000000000004ALL, 0x800000026742B040, v228);
  *v227 = v338;

  v225(v352, 0);
  v229 = sub_26738111C();
  v231 = v230;
  v232 = swift_isUniquelyReferenced_nonNull_native();
  v339 = *v231;
  *v231 = 0x8000000000000000;
  sub_266ECD368(57, 0xD00000000000005BLL, 0x800000026742B090, v232);
  *v231 = v339;

  v229(v352, 0);
  v233 = sub_26738111C();
  v235 = v234;
  v236 = swift_isUniquelyReferenced_nonNull_native();
  v340 = *v235;
  *v235 = 0x8000000000000000;
  sub_266ECD368(58, 0xD000000000000054, 0x800000026742B0F0, v236);
  *v235 = v340;

  v233(v352, 0);
  v237 = sub_26738111C();
  v239 = v238;
  v240 = swift_isUniquelyReferenced_nonNull_native();
  v341 = *v239;
  *v239 = 0x8000000000000000;
  sub_266ECD368(59, 0xD000000000000053, 0x800000026742B150, v240);
  *v239 = v341;

  v237(v352, 0);
  v241 = sub_26738111C();
  v243 = v242;
  v244 = swift_isUniquelyReferenced_nonNull_native();
  v342 = *v243;
  *v243 = 0x8000000000000000;
  sub_266ECD368(60, 0xD000000000000060, 0x800000026742B1B0, v244);
  *v243 = v342;

  v241(v352, 0);
  v245 = sub_26738111C();
  v247 = v246;
  v248 = swift_isUniquelyReferenced_nonNull_native();
  v343 = *v247;
  *v247 = 0x8000000000000000;
  sub_266ECD368(61, 0xD000000000000048, 0x800000026742B220, v248);
  *v247 = v343;

  v245(v352, 0);
  v249 = sub_26738111C();
  v251 = v250;
  v252 = swift_isUniquelyReferenced_nonNull_native();
  v344 = *v251;
  *v251 = 0x8000000000000000;
  sub_266ECD368(62, 0xD000000000000047, 0x800000026742B270, v252);
  *v251 = v344;

  v249(v352, 0);
  v253 = sub_26738111C();
  v255 = v254;
  v256 = swift_isUniquelyReferenced_nonNull_native();
  v345 = *v255;
  *v255 = 0x8000000000000000;
  sub_266ECD368(63, 0xD000000000000059, 0x800000026742B2C0, v256);
  *v255 = v345;

  v253(v352, 0);
  v257 = sub_26738111C();
  v259 = v258;
  v260 = swift_isUniquelyReferenced_nonNull_native();
  v346 = *v259;
  *v259 = 0x8000000000000000;
  sub_266ECD368(64, 0xD00000000000003BLL, 0x800000026742B320, v260);
  *v259 = v346;

  v257(v352, 0);
  v261 = sub_26738111C();
  v263 = v262;
  v264 = swift_isUniquelyReferenced_nonNull_native();
  v347 = *v263;
  *v263 = 0x8000000000000000;
  sub_266ECD368(65, 0xD000000000000046, 0x800000026742B360, v264);
  *v263 = v347;

  v261(v352, 0);
  v265 = sub_26738111C();
  v267 = v266;
  v268 = swift_isUniquelyReferenced_nonNull_native();
  v348 = *v267;
  *v267 = 0x8000000000000000;
  sub_266ECD368(66, 0xD00000000000003DLL, 0x800000026742B3B0, v268);
  *v267 = v348;

  v265(v352, 0);
  v269 = sub_26738111C();
  v271 = v270;
  v272 = swift_isUniquelyReferenced_nonNull_native();
  v349 = *v271;
  *v271 = 0x8000000000000000;
  sub_266ECD368(67, 0xD000000000000042, 0x800000026742B3F0, v272);
  *v271 = v349;

  v269(v352, 0);
  v273 = sub_26738111C();
  v275 = v274;
  v276 = swift_isUniquelyReferenced_nonNull_native();
  v350 = *v275;
  *v275 = 0x8000000000000000;
  sub_266ECD368(68, 0xD00000000000004ALL, 0x800000026742B440, v276);
  *v275 = v350;

  v273(v352, 0);
  v277 = sub_26738111C();
  v279 = v278;
  v280 = swift_isUniquelyReferenced_nonNull_native();
  v351 = *v279;
  *v279 = 0x8000000000000000;
  sub_266ECD368(69, 0xD000000000000049, 0x800000026742B490, v280);
  *v279 = v351;

  return v277(v352, 0);
}

uint64_t sub_266F43624(uint64_t a1)
{
  v2 = sub_266F43728(&qword_2800F0310, &protocol conformance descriptor for DialogEngineSchemaDialogEngineNamedEntityParameter);

  return MEMORY[0x28219ED78](a1, v2);
}

uint64_t sub_266F4368C(uint64_t a1, uint64_t a2)
{
  v4 = sub_266F43728(&qword_2800F0310, &protocol conformance descriptor for DialogEngineSchemaDialogEngineNamedEntityParameter);

  return MEMORY[0x28219ED80](a1, a2, v4);
}

uint64_t sub_266F43728(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DialogEngineSchemaDialogEngineNamedEntityParameter(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t static DialogEngineSchemaDLGENGClientEvent.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
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
  sub_266ECB294(0, &qword_2800F0318, 0x277D571F8);
  sub_266ECAF2C(&qword_2800F0320, &qword_2800F0318, 0x277D571F8, &protocol conformance descriptor for DialogEngineSchemaDLGENGClientEventMetadata);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x74654D746E657665, 0xED00006174616461);
  v8(v23, 0);
  sub_266ECB294(0, &qword_2800F0328, 0x277D57200);
  sub_266ECAF2C(&qword_2800F0330, &qword_2800F0328, 0x277D57200, &protocol conformance descriptor for DialogEngineSchemaDLGENGNamedEntitiesUsed);
  sub_26738121C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  v10 = v20;
  sub_266EC637C(v5, 0xD000000000000017, 0x800000026742B510);
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
  sub_266ECB128(&unk_287884BE0);
  return sub_2673811CC();
}

uint64_t sub_266F43B9C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F43C34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F43D00(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F43D64(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F43DC4(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F0338, &qword_2800F0340, 0x277D571F0, &protocol conformance descriptor for DialogEngineSchemaDLGENGClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F0348, &qword_2800F0340, 0x277D571F0, &protocol conformance descriptor for DialogEngineSchemaDLGENGClientEvent);
  result = sub_266ECAF2C(&qword_2800F0350, &qword_2800F0340, 0x277D571F0, &protocol conformance descriptor for DialogEngineSchemaDLGENGClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static DialogEngineSchemaDLGENGClientEventMetadata.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v7 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v29 = a1;
  v26 = v7;
  sub_26738120C();
  v8 = sub_26738116C();
  v9 = *(v8 - 8);
  v25 = *(v9 + 56);
  v25(v6, 0, 1, v8);
  v10 = sub_2673811AC();
  sub_266EC637C(v6, 0x6E45676F6C616964, 0xEE006449656E6967);
  v10(v31, 0);
  v27 = a2;
  v11 = sub_2673811AC();
  v12 = sub_266ECB6CC(v30, 0x6E45676F6C616964, 0xEE006449656E6967);
  v13 = *(v9 + 48);
  v28 = v9 + 48;
  if (!v13(v14, 1, v8))
  {
    sub_266ECB128(&unk_287884C18);
    sub_26738115C();
  }

  (v12)(v30, 0);
  v11(v31, 0);
  sub_26738120C();
  v25(v6, 0, 1, v8);
  v15 = sub_2673811AC();
  sub_266EC637C(v6, 0x4974736575716572, 0xE900000000000064);
  v15(v31, 0);
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v30, 0x4974736575716572, 0xE900000000000064);
  if (!v13(v18, 1, v8))
  {
    sub_266ECB128(&unk_287884C48);
    sub_26738115C();
  }

  (v17)(v30, 0);
  v16(v31, 0);
  sub_26738120C();
  v25(v6, 0, 1, v8);
  v19 = sub_2673811AC();
  sub_266EC637C(v6, 0x6575716552627573, 0xEC00000064497473);
  v19(v31, 0);
  v20 = sub_2673811AC();
  v21 = sub_266ECB6CC(v30, 0x6575716552627573, 0xEC00000064497473);
  if (!v13(v22, 1, v8))
  {
    sub_266ECB128(&unk_287884C78);
    sub_26738115C();
  }

  (v21)(v30, 0);
  return v20(v31, 0);
}

uint64_t sub_266F443CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F44430(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DialogEngineSchemaDLGENGNamedEntitiesUsed.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for DialogEngineSchemaDialogEngineNamedEntityCatId(0);
  sub_266F44828();
  sub_26738120C();
  v4 = sub_26738116C();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 0, 1, v4);
  v6 = sub_2673811AC();
  sub_266EC637C(v3, 0x6449746163, 0xE500000000000000);
  v6(v9, 0);
  sub_266ECB294(0, &qword_2800F02F8, 0x277D57208);
  sub_266ECAF2C(&qword_2800F02F0, &qword_2800F02F8, 0x277D57208, &protocol conformance descriptor for DialogEngineSchemaDialogEngineNamedEntity);
  sub_26738122C();
  v5(v3, 0, 1, v4);
  v7 = sub_2673811AC();
  sub_266EC637C(v3, 0x746E4564656D616ELL, 0xED00007365697469);
  return v7(v9, 0);
}

uint64_t sub_266F44764(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F447C8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F44828()
{
  result = qword_2800F0300;
  if (!qword_2800F0300)
  {
    type metadata accessor for DialogEngineSchemaDialogEngineNamedEntityCatId(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F0300);
  }

  return result;
}

uint64_t static DIMSchemaDIMClientEvent.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v32 - v7;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800F0360, 0x277D57048);
  sub_266ECAF2C(&qword_2800F0368, &qword_2800F0360, 0x277D57048, &protocol conformance descriptor for DIMSchemaDIMDeviceFixedContext);
  sub_26738121C();
  v9 = sub_26738116C();
  v33 = *(v9 - 8);
  v11 = v33 + 56;
  v10 = *(v33 + 56);
  v10(v8, 0, 1, v9);
  v12 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000012, 0x800000026742B5E0);
  v12(v41, 0);
  sub_266ECB294(0, &qword_2800F0370, 0x277D57080);
  sub_266ECAF2C(&qword_2800F0378, &qword_2800F0370, 0x277D57080, &protocol conformance descriptor for DIMSchemaDIMSiriAccountInformation);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000016, 0x800000026742B600);
  v13(v41, 0);
  sub_266ECB294(0, &qword_2800F0380, 0x277D57070);
  sub_266ECAF2C(&qword_2800F0388, &qword_2800F0380, 0x277D57070, &protocol conformance descriptor for DIMSchemaDIMLocaleNotRecognized);
  sub_26738121C();
  v10(v8, 0, 1, v9);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000013, 0x800000026742B620);
  v14(v41, 0);
  sub_266ECB294(0, &qword_2800F0390, 0x277D57078);
  sub_266ECAF2C(&qword_2800F0398, &qword_2800F0390, 0x277D57078, &protocol conformance descriptor for DIMSchemaDIMOnDeviceDigest);
  v35 = a1;
  sub_26738121C();
  v34 = v10;
  v10(v8, 0, 1, v9);
  v15 = sub_2673811AC();
  sub_266EC637C(v8, 0x6563697665446E6FLL, 0xEE00747365676944);
  v15(v41, 0);
  v39 = a2;
  v16 = sub_2673811AC();
  v17 = sub_266ECB6CC(v40, 0x6563697665446E6FLL, 0xEE00747365676944);
  if (!(*(v33 + 48))(v18, 1, v9))
  {
    sub_266ECB128(&unk_287884CA8);
    sub_26738115C();
  }

  (v17)(v40, 0);
  v16(v41, 0);
  sub_266ECB294(0, &qword_2800F03A0, 0x277D57050);
  sub_266ECAF2C(&qword_2800F03A8, &qword_2800F03A0, 0x277D57050, &protocol conformance descriptor for DIMSchemaDIMEphemeralIdentifiers);
  sub_26738121C();
  v19 = v34;
  v34(v8, 0, 1, v9);
  v32 = v11;
  v20 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000014, 0x800000026742B640);
  v20(v41, 0);
  sub_266ECB294(0, &qword_2800F03B0, 0x277D57058);
  sub_266ECAF2C(&qword_2800F03B8, &qword_2800F03B0, 0x277D57058, &protocol conformance descriptor for DIMSchemaDIMEphemeralToAggregationIdentifierMap);
  sub_26738121C();
  v19(v8, 0, 1, v9);
  v21 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000023, 0x800000026742B660);
  v21(v41, 0);
  sub_266ECB294(0, &qword_2800F03C0, 0x277D57060);
  sub_266ECAF2C(&qword_2800F03C8, &qword_2800F03C0, 0x277D57060, &protocol conformance descriptor for DIMSchemaDIMExperimentContext);
  sub_26738121C();
  v19(v8, 0, 1, v9);
  v22 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000011, 0x800000026742B690);
  v22(v41, 0);
  v23 = v36;
  sub_26738117C();
  v24 = sub_2673811BC();
  v26 = v25;
  v27 = *v25;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v26 = v27;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v27 = sub_266ECAD54(0, v27[2] + 1, 1, v27);
    *v26 = v27;
  }

  v30 = v27[2];
  v29 = v27[3];
  if (v30 >= v29 >> 1)
  {
    v27 = sub_266ECAD54((v29 > 1), v30 + 1, 1, v27);
    *v26 = v27;
  }

  v27[2] = v30 + 1;
  (*(v37 + 32))(v27 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v30, v23, v38);
  v24(v41, 0);
  sub_266ECB128(&unk_287884CD0);
  return sub_2673811CC();
}

uint64_t sub_266F45204(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = swift_getWitnessTable();

  return MEMORY[0x28219EF78](a1, WitnessTable, v5, a2);
}

uint64_t sub_266F4529C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_26738123C();
}

uint64_t sub_266F45368(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F453CC(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F4542C(void *a1)
{
  a1[1] = sub_266ECAF2C(&qword_2800F03D0, &qword_2800F03D8, 0x277D57038, &protocol conformance descriptor for DIMSchemaDIMClientEvent);
  a1[2] = sub_266ECAF2C(&qword_2800F03E0, &qword_2800F03D8, 0x277D57038, &protocol conformance descriptor for DIMSchemaDIMClientEvent);
  result = sub_266ECAF2C(&qword_2800F03E8, &qword_2800F03D8, 0x277D57038, &protocol conformance descriptor for DIMSchemaDIMClientEvent);
  a1[3] = result;
  return result;
}

uint64_t static DIMSchemaDIMDataSharingSettings.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X8>)
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
  v17 = "iri.dim.DIMDataSharingSettings";
  v9 = *MEMORY[0x277D3E4E8];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  v19[0] = 1;
  sub_26738114C();
  v11 = sub_26738116C();
  v12 = *(*(v11 - 8) + 56);
  v12(v8, 0, 1, v11);
  v13 = sub_2673811AC();
  sub_266EC637C(v8, 0xD00000000000001CLL, v17 | 0x8000000000000000);
  v13(v19, 0);
  v10(v5, v9, v18);
  v19[0] = 1;
  sub_26738114C();
  v12(v8, 0, 1, v11);
  v14 = sub_2673811AC();
  sub_266EC637C(v8, 0xD000000000000015, 0x800000026742B700);
  return v14(v19, 0);
}

uint64_t sub_266F45860(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F458C4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

unint64_t sub_266F45928()
{
  result = qword_2800F03F8;
  if (!qword_2800F03F8)
  {
    sub_266F45980();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800F03F8);
  }

  return result;
}

unint64_t sub_266F45980()
{
  result = qword_2800F0400;
  if (!qword_2800F0400)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800F0400);
  }

  return result;
}

uint64_t static DIMSchemaDIMDeviceFixedContext.makeTypeManifestAndEnsureFields(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_26738118C();
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x28223BE20](v4);
  v78 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_26738113C();
  v88 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v89 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v75 - v8;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  type metadata accessor for SISchemaLocale(0);
  sub_266F46FA4(&qword_2800EEFA8, type metadata accessor for SISchemaLocale, &protocol conformance descriptor for SISchemaLocale);
  sub_26738120C();
  v10 = sub_26738116C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = v11 + 56;
  v12(v9, 0, 1, v10);
  v14 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F4C6D6574737973, 0xEC000000656C6163);
  v14(v90, 0);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v15 = sub_2673811AC();
  sub_266EC637C(v9, 0x75706E4969726973, 0xEF656C61636F4C74);
  v15(v90, 0);
  sub_266ECB294(0, &qword_2800F0408, 0x277D5ACB8);
  sub_266ECAF2C(&qword_2800F0410, &qword_2800F0408, 0x277D5ACB8, &protocol conformance descriptor for SISchemaVoiceSettings);
  v87 = a1;
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v16 = sub_2673811AC();
  v77 = 0xD000000000000011;
  sub_266EC637C(v9, 0xD000000000000011, 0x800000026742B750);
  v16(v90, 0);
  type metadata accessor for SISchemaDataSharingOptInState(0);
  sub_266F46FA4(&qword_2800F0418, type metadata accessor for SISchemaDataSharingOptInState, &protocol conformance descriptor for SISchemaDataSharingOptInState);
  sub_26738120C();
  v12(v9, 0, 1, v10);
  v17 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026742B770);
  v17(v90, 0);
  LODWORD(v83) = *MEMORY[0x277D3E530];
  v18 = v89;
  v19 = *(v88 + 104);
  v88 += 104;
  v84 = v19;
  v20 = v85;
  (v19)(v89);
  v90[0] = 1;
  sub_26738114C();
  v86 = v10;
  v12(v9, 0, 1, v10);
  v21 = sub_2673811AC();
  sub_266EC637C(v9, 0x656E6F7A656D6974, 0xEE0074657366664FLL);
  v21(v90, 0);
  type metadata accessor for SISchemaCountryCode(0);
  sub_266F46FA4(&qword_2800F0420, type metadata accessor for SISchemaCountryCode, &protocol conformance descriptor for SISchemaCountryCode);
  sub_26738120C();
  v22 = v10;
  v23 = v12;
  v12(v9, 0, 1, v22);
  v75 = v13;
  v24 = a2;
  v25 = sub_2673811AC();
  sub_266EC637C(v9, 0x437972746E756F63, 0xEB0000000065646FLL);
  v25(v90, 0);
  v26 = v18;
  v27 = v83;
  v28 = v20;
  v29 = v20;
  v30 = v84;
  v84(v26, v83, v29);
  v90[0] = 1;
  sub_26738114C();
  v12(v9, 0, 1, v86);
  v31 = sub_2673811AC();
  sub_266EC637C(v9, 0x7954656369766564, 0xEA00000000006570);
  v31(v90, 0);
  v30(v89, v27, v28);
  v90[0] = 1;
  sub_26738114C();
  v32 = v86;
  v12(v9, 0, 1, v86);
  v33 = sub_2673811AC();
  sub_266EC637C(v9, 0x75426D6574737973, 0xEB00000000646C69);
  v33(v90, 0);
  LODWORD(v76) = *MEMORY[0x277D3E4E8];
  v34 = v89;
  (v30)(v89);
  v90[0] = 1;
  sub_26738114C();
  v23(v9, 0, 1, v32);
  v35 = sub_2673811AC();
  sub_266EC637C(v9, 0x4465726F74537369, 0xEF65646F4D6F6D65);
  v35(v90, 0);
  v30(v34, *MEMORY[0x277D3E518], v28);
  v90[0] = 1;
  sub_26738114C();
  v36 = v86;
  v23(v9, 0, 1, v86);
  v37 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026742B790);
  v37(v90, 0);
  sub_266ECB294(0, &qword_2800F0428, 0x277D57088);
  sub_266ECAF2C(&qword_2800F0430, &qword_2800F0428, 0x277D57088, &protocol conformance descriptor for DIMSchemaDIMWatchDeviceAttributes);
  sub_26738121C();
  v23(v9, 0, 1, v36);
  v38 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026742B7B0);
  v38(v90, 0);
  v84(v89, v76, v85);
  v90[0] = 1;
  sub_26738114C();
  v23(v9, 0, 1, v36);
  v39 = v23;
  v81 = v23;
  v40 = v24;
  v41 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000015, 0x800000026742B7D0);
  v41(v90, 0);
  sub_266ECB294(0, &qword_2800F0438, 0x277D5A900);
  sub_266ECAF2C(&qword_2800F0440, &qword_2800F0438, 0x277D5A900, &protocol conformance descriptor for SISchemaISOLocale);
  sub_26738120C();
  v42 = v86;
  v39(v9, 0, 1, v86);
  v43 = sub_2673811AC();
  sub_266EC637C(v9, 0x6F4C6D6574737973, 0xEE003256656C6163);
  v43(v90, 0);
  sub_26738120C();
  v44 = v42;
  v45 = v42;
  v46 = v81;
  v81(v9, 0, 1, v45);
  v47 = sub_2673811AC();
  sub_266EC637C(v9, v77, 0x800000026742B7F0);
  v47(v90, 0);
  type metadata accessor for SISchemaProgramCode(0);
  sub_266F46FA4(&qword_2800F0448, type metadata accessor for SISchemaProgramCode, &protocol conformance descriptor for SISchemaProgramCode);
  sub_26738120C();
  v46(v9, 0, 1, v44);
  v82 = v40;
  v48 = sub_2673811AC();
  sub_266EC637C(v9, 0x436D6172676F7270, 0xEB0000000065646FLL);
  v48(v90, 0);
  v76 = "siriInputLocaleV2";
  v49 = v83;
  v51 = v84;
  v50 = v85;
  v84(v89, v83, v85);
  v90[0] = 1;
  sub_26738114C();
  v46(v9, 0, 1, v44);
  v52 = sub_2673811AC();
  v77 = 0xD000000000000010;
  sub_266EC637C(v9, 0xD000000000000010, v76 | 0x8000000000000000);
  v52(v90, 0);
  v76 = "dataCollectionId";
  v53 = v50;
  v51(v89, v49, v50);
  v90[0] = 1;
  sub_26738114C();
  v54 = v86;
  v55 = v81;
  v81(v9, 0, 1, v86);
  v56 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000017, v76 | 0x8000000000000000);
  v56(v90, 0);
  v51(v89, v83, v53);
  v90[0] = 1;
  sub_26738114C();
  v55(v9, 0, 1, v54);
  v57 = v55;
  v58 = sub_2673811AC();
  v83 = 0xD000000000000012;
  sub_266EC637C(v9, 0xD000000000000012, 0x800000026742B850);
  v58(v90, 0);
  type metadata accessor for SISchemaHomeKitConfiguration(0);
  sub_266F46FA4(&qword_2800F0450, type metadata accessor for SISchemaHomeKitConfiguration, &protocol conformance descriptor for SISchemaHomeKitConfiguration);
  sub_26738120C();
  v59 = v86;
  v57(v9, 0, 1, v86);
  v60 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000014, 0x800000026742B870);
  v60(v90, 0);
  sub_266ECB294(0, &qword_2800F0458, 0x277D57090);
  sub_266ECAF2C(&qword_2800F0460, &qword_2800F0458, 0x277D57090, &protocol conformance descriptor for DIMSchemaEntitySyncSettings);
  sub_26738120C();
  v57(v9, 0, 1, v59);
  v61 = sub_2673811AC();
  sub_266EC637C(v9, v83, 0x800000026742B890);
  v61(v90, 0);
  sub_266ECB294(0, &qword_2800F0400, 0x277D57040);
  sub_266ECAF2C(&qword_2800F03F8, &qword_2800F0400, 0x277D57040, &protocol conformance descriptor for DIMSchemaDIMDataSharingSettings);
  sub_26738120C();
  v57(v9, 0, 1, v59);
  v62 = sub_2673811AC();
  sub_266EC637C(v9, 0xD000000000000013, 0x800000026742B8B0);
  v62(v90, 0);
  v84(v89, *MEMORY[0x277D3E538], v85);
  v90[0] = 1;
  sub_26738114C();
  v57(v9, 0, 1, v59);
  v63 = sub_2673811AC();
  sub_266EC637C(v9, 0xD00000000000001BLL, 0x800000026742B8D0);
  v63(v90, 0);
  type metadata accessor for DIMSchemaDIMSearchDataOptOutState(0);
  sub_266F46FA4(&qword_2800F0468, type metadata accessor for DIMSchemaDIMSearchDataOptOutState, &protocol conformance descriptor for DIMSchemaDIMSearchDataOptOutState);
  sub_26738120C();
  v57(v9, 0, 1, v59);
  v64 = sub_2673811AC();
  v65 = v9;
  v66 = v78;
  sub_266EC637C(v65, 0xD000000000000015, 0x800000026742B8F0);
  v64(v90, 0);
  sub_26738117C();
  v67 = sub_2673811BC();
  v69 = v68;
  v70 = *v68;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v69 = v70;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v70 = sub_266ECAD54(0, v70[2] + 1, 1, v70);
    *v69 = v70;
  }

  v73 = v70[2];
  v72 = v70[3];
  if (v73 >= v72 >> 1)
  {
    v70 = sub_266ECAD54((v72 > 1), v73 + 1, 1, v70);
    *v69 = v70;
  }

  v70[2] = v73 + 1;
  (*(v79 + 32))(v70 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v73, v66, v80);
  return v67(v90, 0);
}

uint64_t sub_266F46EE0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F46F44(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t sub_266F46FA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static DIMSchemaDIMEphemeralIdentifiers.makeTypeManifestAndEnsureFields(in:)(uint64_t a1)
{
  v1 = sub_26738113C();
  v14 = *(v1 - 8);
  v15 = v1;
  MEMORY[0x28223BE20](v1);
  v13 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  sub_26738120C();
  v6 = sub_26738116C();
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 0, 1, v6);
  v8 = sub_2673811AC();
  sub_266EC637C(v5, 0x6568704572657375, 0xEF64496C6172656DLL);
  v8(v16, 0);
  sub_26738120C();
  v7(v5, 0, 1, v6);
  v9 = sub_2673811AC();
  sub_266EC637C(v5, 0x65687045656D6F68, 0xEF64496C6172656DLL);
  v9(v16, 0);
  (*(v14 + 104))(v13, *MEMORY[0x277D3E540], v15);
  v16[0] = 1;
  sub_26738114C();
  v7(v5, 0, 1, v6);
  v10 = sub_2673811AC();
  sub_266EC637C(v5, 0xD00000000000001FLL, 0x800000026742B960);
  return v10(v16, 0);
}

uint64_t sub_266F47408(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB0](a1, WitnessTable);
}

uint64_t sub_266F4746C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28219EDB8](a1, a2, WitnessTable);
}

uint64_t static DIMSchemaDIMEphemeralToAggregationIdentifierMap.makeTypeManifestAndEnsureFields(in:)@<X0>(const char *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = sub_26738113C();
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v45 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800ED640, qword_267381870);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  sub_266EC679C(MEMORY[0x277D84F90]);
  sub_26738119C();
  v8 = sub_266ECB294(0, &qword_2800EEDA0, 0x277D5AC78);
  v40 = sub_266ECAF2C(&qword_2800EEDA8, &qword_2800EEDA0, 0x277D5AC78, &protocol conformance descriptor for SISchemaUUID);
  v41 = a1;
  sub_26738120C();
  v9 = sub_26738116C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v12 = v10 + 56;
  v11(v7, 0, 1, v9);
  v47 = v12;
  v43 = a2;
  v13 = sub_2673811AC();
  sub_266EC637C(v7, 0x6568704572657375, 0xEF64496C6172656DLL);
  v13(v48, 0);
  v38 = "eralToAggregationIdentifierMap";
  v39 = v8;
  sub_26738120C();
  v11(v7, 0, 1, v9);
  v14 = v11;
  v15 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000011, v38 | 0x8000000000000000);
  v15(v48, 0);
  v35 = "userAggregationId";
  v18 = v46 + 104;
  v17 = *(v46 + 104);
  v37 = *MEMORY[0x277D3E540];
  v16 = v37;
  v19 = v44;
  (v17)(v45, v37, v44);
  v38 = v17;
  v46 = v18;
  v48[0] = 1;
  sub_26738114C();
  v14(v7, 0, 1, v9);
  v20 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000024, v35 | 0x8000000000000000);
  v20(v48, 0);
  v35 = "dRotationTimestampMs";
  (v17)(v45, v16, v19);
  v48[0] = 1;
  sub_26738114C();
  v21 = v9;
  v42 = v9;
  v14(v7, 0, 1, v9);
  v22 = v14;
  v23 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000026, v35 | 0x8000000000000000);
  v23(v48, 0);
  v35 = "dExpirationTimestampMs";
  sub_26738120C();
  v14(v7, 0, 1, v21);
  v24 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000013, v35 | 0x8000000000000000);
  v24(v48, 0);
  sub_26738120C();
  v25 = v42;
  v36 = v14;
  v14(v7, 0, 1, v42);
  v26 = sub_2673811AC();
  sub_266EC637C(v7, 0x706D615372657375, 0xEE006449676E696CLL);
  v26(v48, 0);
  v41 = "deviceAggregationId";
  v28 = v44;
  v27 = v45;
  v29 = v37;
  v30 = v38;
  (v38)(v45, v37, v44);
  v48[0] = 1;
  sub_26738114C();
  v22(v7, 0, 1, v25);
  v31 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000021, v41 | 0x8000000000000000);
  v31(v48, 0);
  v30(v27, v29, v28);
  v48[0] = 1;
  sub_26738114C();
  v36(v7, 0, 1, v42);
  v32 = sub_2673811AC();
  sub_266EC637C(v7, 0xD000000000000023, 0x800000026742BA90);
  v32(v48, 0);
  sub_266ECB128(&unk_287884D08);
  return sub_2673811CC();
}